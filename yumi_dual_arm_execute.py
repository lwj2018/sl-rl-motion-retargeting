#encoding=utf-8
import sys
sys.path.append("..")
import copy
import rospy
import math
import time
import numpy as np
import numpy.matlib
import random
import h5py
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import trajectory_msgs.msg
from math import pi
from std_msgs.msg import String
ROBOTHAND_LB = np.array([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.4, 0.0, 0.0])
ROBOTHAND_UB = np.array([-1.6, -1.7, -1.6, -1.7, -1.6, -1.7, -1.6, -1.7, -1.0, 0.0, -0.4, -1.0])

def lerp(pos1,pos2,p):
    return p*pos2+(1-p)*pos1

def linear_interpolate(positions,tgt_len):
    #@param:positions        np.ndarray
    #@return:result                np.ndarray
    src_len = positions.shape[0]
    src_points = np.linspace(0,1,src_len)
    tgt_points = np.linspace(0,1,tgt_len)
    result = np.zeros([tgt_len]+list(positions.shape[1:]))
    for i,tgt_point in enumerate(tgt_points):
        down_val = np.max(src_points[src_points<=tgt_point])
        up_val = np.min(src_points[src_points>=tgt_point]) 
        p = (tgt_point - down_val)/float(up_val-down_val) if up_val>down_val else 0.0
        pos1 = positions[src_points==down_val,...]
        pos2 = positions[src_points==up_val,...]
        result[i] = np.array(lerp(pos1,pos2,p))
    return result

class h5Parser:
    def __init__(self,h5_name):
        self.f =  h5py.File(h5_name, "r") 

    def parse(self,group_name):
        # @return:l_cartesian_path        np.ndarray with shape of T x 7
        # @return:r_cartesian_path        np.ndarray with shape of T x 7
        # @return:glove_angle     np.ndarray with shape of T x 2 x 14
        ## Read needed data from mocap file

        l_elbow_pos = self.f[group_name + '/l_fr_pos'][:]
        l_elbow_quat = self.f[group_name + '/l_fr_quat'][:] # quaternion is (x,y,z,w), refer to quat_to_ndarray()
        l_wrist_pos = self.f[group_name + '/l_hd_pos'][:]
        l_wrist_quat = self.f[group_name + '/l_hd_quat'][:] # quaternion is (x,y,z,w), refer to quat_to_ndarray()

        r_elbow_pos = self.f[group_name + '/r_fr_pos'][:]
        r_elbow_quat = self.f[group_name + '/r_fr_quat'][:] # quaternion is (x,y,z,w), refer to quat_to_ndarray()
        r_wrist_pos = self.f[group_name + '/r_hd_pos'][:]
        r_wrist_quat = self.f[group_name + '/r_hd_quat'][:]

        l_glove_angle = self.f[group_name + '/l_glove_angle'][:]
        r_glove_angle = self.f[group_name + '/r_glove_angle'][:]

        time = self.f[group_name + '/time'][:] # remember to store the timestamps information

        l_elbow_path =  np.concatenate([l_elbow_pos,l_elbow_quat],-1)
        l_cartesian_path =  np.concatenate([l_wrist_pos,l_wrist_quat],-1)
        r_elbow_path =  np.concatenate([r_elbow_pos,r_elbow_quat],-1)
        r_cartesian_path =  np.concatenate([r_wrist_pos,r_wrist_quat],-1)
        glove_angle = np.stack([l_glove_angle,r_glove_angle],1)

        return l_elbow_path,l_cartesian_path,r_elbow_path,r_cartesian_path,glove_angle

class h5Writer:
    def __init__(self,h5_name):
        self.f = h5py.File(h5_name, "a") 

    def write(self,group_name,l_elbow,r_elbow,l_wrist,r_wrist,
            l_joint_angle,r_joint_angle,l_glove_angle,r_glove_angle):
        """
            @param:group_name             string
            @param:l_elbow                       np.ndarray with shape of T x 7
            @param:r_elbow                       np.ndarray with shape of T x 7
            @param:l_wrist                       np.ndarray with shape of T x 7
            @param:r_wrist                       np.ndarray with shape of T x 7
            @param:l_joint_angle               np.ndarray with shape of T x 7(7 joints)              
            @param:r_joint_angle               np.ndarray with shape of T x 7(7 joints)              
            @param:l_glove_angle             np.ndarray with shape of T x 12
            @param:r_glove_angle             np.ndarray with shape of T x 12
        """
        
        if group_name in self.f.keys():
            # the group already exists
            del self.f[group_name]
        group = self.f.create_group(group_name)
        group.create_dataset("l_elbow", data=l_elbow, dtype=float)
        group.create_dataset("r_elbow", data=r_elbow, dtype=float)
        group.create_dataset("l_wrist", data=l_wrist, dtype=float)
        group.create_dataset("r_wrist", data=r_wrist, dtype=float)
        group.create_dataset("l_joint_angle", data=l_joint_angle, dtype=float)
        group.create_dataset("r_joint_angle", data=r_joint_angle, dtype=float)
        group.create_dataset("l_glove_angle", data=l_glove_angle, dtype=float)
        group.create_dataset("r_glove_angle", data=r_glove_angle, dtype=float)


rospy.init_node('yumi_dual_arm_execute.py', anonymous=True)
h5_name = "/media/liweijie/代码和数据/datasets/motionRetargeting/mocap_data_YuMi_affine.h5"
out_h5_name = "/media/liweijie/代码和数据/datasets/motionRetargeting/mocap_data_YuMi_affine_execute.h5"
h5parser = h5Parser(h5_name)
h5writer = h5Writer(out_h5_name)
group_name = "fengren.bag"
l_elbow_path,l_cartesian_path,r_elbow_path,r_cartesian_path, glove_angle = h5parser.parse(group_name)
## 3 - IK
# LEFT ARM
l_group = moveit_commander.MoveGroupCommander("left_arm")
r_group = moveit_commander.MoveGroupCommander("right_arm")

print("Left Arm: Go to start pose before planning...")
pose_target = l_group.get_current_pose("yumi_link_7_l") # get current eef's pose
pose_target.pose.position.x = l_cartesian_path[0, 0]
pose_target.pose.position.y = l_cartesian_path[0, 1]
pose_target.pose.position.z = l_cartesian_path[0, 2]
pose_target.pose.orientation.x = l_cartesian_path[0, 3]
pose_target.pose.orientation.y = l_cartesian_path[0, 4] 
pose_target.pose.orientation.z = l_cartesian_path[0, 5]
pose_target.pose.orientation.w = l_cartesian_path[0, 6] # set the start pos
l_group.set_pose_target(pose_target, 'yumi_link_7_l') # set pose target
l_group.go(wait=True) # plan and go
l_group.stop() # stop
l_group.clear_pose_targets() # clear targets

print("Right Arm: Go to start pose before planning...")
pose_target = r_group.get_current_pose("yumi_link_7_r") # get current eef's pose
pose_target.pose.position.x = r_cartesian_path[0, 0]
pose_target.pose.position.y = r_cartesian_path[0, 1]
pose_target.pose.position.z = r_cartesian_path[0, 2]
pose_target.pose.orientation.x = r_cartesian_path[0, 3]
pose_target.pose.orientation.y = r_cartesian_path[0, 4] 
pose_target.pose.orientation.z = r_cartesian_path[0, 5]
pose_target.pose.orientation.w = r_cartesian_path[0, 6] # set the start pos
r_group.set_pose_target(pose_target, 'yumi_link_7_r') # set pose target
r_group.go(wait=True) # plan and go
r_group.stop() # stop
r_group.clear_pose_targets() # clear targets
print("========== Perform IK for left arm's path...")
# set Pose trajectories(should go to first pose before planning!!!)
print("-- Plan for left arm...")
waypoints = []
wpose = geometry_msgs.msg.Pose()
for n in range(1, l_cartesian_path.shape[0]):
    wpose.position.x = l_cartesian_path[n, 0]
    wpose.position.y = l_cartesian_path[n, 1]
    wpose.position.z = l_cartesian_path[n, 2]

    wpose.orientation.x = l_cartesian_path[n, 3]
    wpose.orientation.y = l_cartesian_path[n, 4]
    wpose.orientation.z = l_cartesian_path[n, 5]
    wpose.orientation.w = l_cartesian_path[n, 6]
    waypoints.append(copy.deepcopy(wpose))
tt0 = time.time()
(l_joint_path_plan, fraction) = l_group.compute_cartesian_path(
                                    waypoints,   # waypoints to follow
                                    0.01, #0.01,        # eef_step # set to 0.001 for collecting the data
                                    0.0,     # jump_threshold
                                    avoid_collisions=True)    
tt1 = time.time()
print(">>> Time used for compute_cartesian_path only(left): " + str(tt1-tt0) + " s")    

# store the generated joint plans
#l_joint_path_plan = copy.deepcopy(plan) # stored as moveit_msgs/RobotTrajectory

# RIGHT ARM
# set Pose trajectories(should go to first pose before planning!!!)
print("-- Plan for right arm...")
waypoints = []
wpose = geometry_msgs.msg.Pose()
for n in range(1, r_cartesian_path.shape[0]):
    wpose.position.x = r_cartesian_path[n, 0]
    wpose.position.y = r_cartesian_path[n, 1]
    wpose.position.z = r_cartesian_path[n, 2]

    wpose.orientation.x = r_cartesian_path[n, 3]
    wpose.orientation.y = r_cartesian_path[n, 4]
    wpose.orientation.z = r_cartesian_path[n, 5]
    wpose.orientation.w = r_cartesian_path[n, 6]
    waypoints.append(copy.deepcopy(wpose))

(r_joint_path_plan, fraction) = r_group.compute_cartesian_path(
                                    waypoints,   # waypoints to follow
                                    0.01,        # eef_step # set to 0.01 for 1 cm resolution
                                    0.0,         # jump_threshold
                                    avoid_collisions=True)    
r_min_time = r_joint_path_plan.joint_trajectory.points[-1].time_from_start.to_sec()
l_min_time = l_joint_path_plan.joint_trajectory.points[-1].time_from_start.to_sec()
# timesteps are the same, so it should be ok to append directly
len_l = len(l_joint_path_plan.joint_trajectory.points) 
len_r = len(r_joint_path_plan.joint_trajectory.points)
l_positions = []
r_positions = []
max_len = max(len_l, len_r)
min_len = min(len_l, len_r)
for i in range(len_l):
    l_positions.append(l_joint_path_plan.joint_trajectory.points[i].positions)
l_positions = np.array(l_positions)
for i in range(len_r):
    r_positions.append(r_joint_path_plan.joint_trajectory.points[i].positions)
r_positions = np.array(r_positions)
l_positions = linear_interpolate(l_positions,max_len)
r_positions = linear_interpolate(r_positions,max_len)

glove_angle = linear_interpolate(glove_angle,max_len)
l_glove_angle = glove_angle[:,0,:]
r_glove_angle = glove_angle[:,1,:]
l_cartesian_path = linear_interpolate(l_cartesian_path,max_len)
r_cartesian_path = linear_interpolate(r_cartesian_path,max_len)
l_elbow_path = linear_interpolate(l_elbow_path,max_len)
r_elbow_path = linear_interpolate(r_elbow_path,max_len)
# Save the execute plan as h5py file
h5writer.write(group_name,l_elbow_path,r_elbow_path,l_cartesian_path,r_cartesian_path,\
    l_positions,r_positions,l_glove_angle,r_glove_angle)

# Splice & generate the new plan
new_plan_dual = moveit_msgs.msg.RobotTrajectory()
new_plan_dual.joint_trajectory.header.frame_id = '/world'
new_plan_dual.joint_trajectory.joint_names = \
    ['yumi_joint_1_l', 'yumi_joint_2_l', 'yumi_joint_7_l', 'yumi_joint_3_l', 'yumi_joint_4_l', 'yumi_joint_5_l', 'yumi_joint_6_l'] \
    + ['link1', 'link11', 'link2', 'link22', 'link3', 'link33', 'link4', 'link44', 'link5', 'link51', 'link52', 'link53']\
    + ['yumi_joint_1_r', 'yumi_joint_2_r', 'yumi_joint_7_r', 'yumi_joint_3_r', 'yumi_joint_4_r', 'yumi_joint_5_r', 'yumi_joint_6_r'] \
    + ['Link1', 'Link11', 'Link2', 'Link22', 'Link3', 'Link33', 'Link4', 'Link44', 'Link5', 'Link51', 'Link52', 'Link53']
traj_point = trajectory_msgs.msg.JointTrajectoryPoint()
# traj_point.positions = list(l_positions[0])+[0.0]*12+list(r_positions[0])+[0.0]*12
# new_plan_dual.joint_trajectory.points.append(copy.deepcopy(traj_point))
for m in range(max_len):
    traj_point.positions =  list(l_positions[m])+list(l_glove_angle[m])+list(r_positions[m])+list(r_glove_angle[m]) #+list(l_positions[m])+list(r_positions[m])
    if len_l>len_r:
        traj_point.time_from_start = l_joint_path_plan.joint_trajectory.points[m].time_from_start
    else:
        traj_point.time_from_start = r_joint_path_plan.joint_trajectory.points[m].time_from_start
    new_plan_dual.joint_trajectory.points.append(copy.deepcopy(traj_point))
# print(new_plan_dual.joint_trajectory.points)
group = moveit_commander.MoveGroupCommander("dual_arms_with_hands")
# go to start position  first
joint_goal = new_plan_dual.joint_trajectory.points[0].positions
# joint_goal = list(l_positions[0])+[0.0]*12+list(r_positions[0])+[0.0]*12
group.allow_replanning(True)
group.go(joint_goal, wait=True)
#rospy.sleep(5)
group.stop()
# execute the plan now
print("======== Execute the dual plan..")
group.execute(new_plan_dual, wait=True)
