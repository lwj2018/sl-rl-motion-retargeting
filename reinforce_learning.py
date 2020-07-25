import torch
import torch.nn as nn
import torch.nn.functional as F
import rospy
import numpy as np
from models import DDPG
from environment import Environment
from replayBuffer import ReplayBuffer
from utils.ioUtils import resume_model

# Runs policy for X episodes and returns average reward
# A fixed seed is used for the eval environment
def eval_policy(policy, env, seed, group_name, eval_episodes=5):
    eval_env = env
    eval_env.seed(seed + 100)

    avg_reward = 0.
    for i in range(eval_episodes):
        print(f"Eval episode {i} / {eval_episodes}")
        start = time.time()
        state, done = eval_env.reset(group_name), False
        while not done:
            action = policy.select_action(state)
            state, reward, done = eval_env.step(action,group_name)
            avg_reward += reward
        end = time.time()

    avg_reward /= eval_episodes

    print("---------------------------------------")
    print(f"Env {group_name}, Evaluation over {eval_episodes} episodes: {avg_reward:.3f}")
    print("---------------------------------------")
    return avg_reward


if __name__ == "__main__":
    
    parser = argparse.ArgumentParser()
    parser.add_argument("--policy", default="DDPG")                  # Policy name (TD3, DDPG or OurDDPG)
    parser.add_argument("--env", default="YuMi")                   # Our implementation of YuMi robot enironment
    parser.add_argument("--seed", default=0, type=int)              # Sets Gym, PyTorch and Numpy seeds
    parser.add_argument("--start_timesteps", default=2e3, type=int) # Time steps initial random policy is used, default 25e3
    parser.add_argument("--eval_freq", default=5e3, type=int)       # How often (time steps) we evaluate
    parser.add_argument("--max_timesteps", default=1e6, type=int)   # Max time steps to run environment
    parser.add_argument("--expl_noise", default=1e-3)                # Std of Gaussian exploration noise, default 0.1
    parser.add_argument("--batch_size", default=8, type=int)      # Batch size for both actor and critic
    parser.add_argument("--discount", default=0.99)                 # Discount factor
    parser.add_argument("--tau", default=0.005)                     # Target network update rate
    parser.add_argument("--policy_noise", default=0.2)              # Noise added to target policy during critic update
    parser.add_argument("--noise_clip", default=0.5)                # Range to clip target policy noise
    parser.add_argument("--policy_freq", default=2, type=int)       # Frequency of delayed policy updates
    parser.add_argument("--save_model", default=1,type=int)        # Save model and optimizer parameters
    parser.add_argument("--load_model", default="")                 # Model load file name, "" doesn't load, "default" uses file_name
    parser.add_argument("--num_envs",default=18000,type=int)
    args = parser.parse_args()
    # Options
    state_dim =28*2+38*2
    action_dim = 38  #(7*2+12*2) 
    group_name = 'fengren.bag'
    device_list = '0'
    checkpoint = None

    file_name = f"{args.policy}_{args.env}_{args.seed}"
    print("---------------------------------------")
    print(f"Policy: {args.policy}, Env: {args.env}, Seed: {args.seed}")
    print("---------------------------------------")

    if not os.path.exists("./results"):
        os.makedirs("./results")

    if args.save_model and not os.path.exists("./checkpoint"):
        os.makedirs("./checkpoint")

    # Use specific gpus
    os.environ["CUDA_VISIBLE_DEVICES"]=device_list
    # Device setting
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    # init base network
    model = lstm(input_size=num_joints*2).to(device)
    if checkpoint != None:
        resume_model(model,checkpoint)

    env = Environment()

    # Set seeds
    env.seed(args.seed)
    torch.manual_seed(args.seed)
    np.random.seed(args.seed)

    kwargs = {
        "state_dim": state_dim,
        "action_dim": action_dim,
        "discount": args.discount,
        "tau": args.tau,
    }

    # Initialize policy
    if args.policy == "TD3":
        # Target policy smoothing is scaled wrt the action scale
        kwargs["policy_noise"] = args.policy_noise
        kwargs["noise_clip"] = args.noise_clip
        kwargs["policy_freq"] = args.policy_freq
        policy = TD3.TD3(**kwargs)
    elif args.policy == "DDPG":
        policy = DDPG.DDPG(**kwargs)

    if args.load_model != "":
        policy_file = file_name if args.load_model == "default" else args.load_model
        policy.load(f"./checkpoint/{policy_file}")

    replay_buffer = ReplayBuffer(state_dim,action_dim,length)
    
    # Evaluate untrained policy
    evaluations = []
    # evaluations = [eval_policy(policy, env, args.seed, group_name)]

    state, done = env.reset(group_name), False
    episode_reward = 0
    episode_Rsim = 0
    episode_Robs  = 0
    episode_Rcstr = 0
    episode_timesteps = 0
    episode_num = 0

    for group_name in [group_name]:
        state = env.reset(group_name)
        for t in range(int(args.max_timesteps)):
            
            episode_timesteps += 1

            # Select action randomly or according to policy
            if t < args.start_timesteps:
                action = env.sample(group_name)
            else:
                action = (
                    policy.select_action(state)
                    + np.random.normal(0, 1 * args.expl_noise, size=(length,action_dim))
                )

            # Perform action
            next_state, rewards, done = env.step(action,group_name)
            reward = rewards['reward']
            Rsim = rewards['Rsim']
            Robs = rewards['Robs']
            Rcstr = rewards['Rcstr']

            # Store data in replay buffer
            replay_buffer.add(state, action, next_state, reward, float(done))
            state = next_state
            episode_reward += reward
            episode_Rsim += Rsim
            episode_Robs += Robs
            episode_Rcstr += Rcstr

            # Train agent after collecting sufficient data
            if t >= args.start_timesteps:
                policy.train(replay_buffer, args.batch_size)

            if done: 
                # +1 to account for 0 indexing. +0 on ep_timesteps since it will increment +1 even if done=True
                print(f"Total T: {t+1} Episode Num: {episode_num+1} \
                        Episode T: {episode_timesteps} Reward: {episode_reward:.3f} \
                        Rsim: {episode_Rsim:.3f} Robs: {episode_Robs:.3f} Rcstr: {episode_Rcstr:.3f} \
                        Env: {group_name}")
                # Reset environment
                state, done = env.reset(group_name), False
                episode_reward = 0
                episode_timesteps = 0
                episode_num += 1 

            # Evaluate episode
            if (t + 1) % args.eval_freq == 0:
                evaluations.append(eval_policy(policy, env, args.seed, group_name))
                np.save(f"./results/{file_name}", evaluations)
                if args.save_model: policy.save(f"./checkpoint/{file_name}")
