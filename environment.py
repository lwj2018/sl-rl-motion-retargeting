#encoding=utf-8
import sys
sys.path.append("devel/lib/python2.7/dist-packages")
import copy
import numpy as np
import rospy
import time
import h5py
import yumi_collision_checking
from datasets.h5_parser import h5Parser
from cfg import YUMI_LOWER_LIMITS,YUMI_UPPER_LIMITS,ROBOTHAND_LB,ROBOTHAND_UB
from yumi_collision_checking.srv import yumi_execute
from  yumi_collision_checking.srv import yumi_executeRequest 
from  yumi_collision_checking.srv import yumi_executeResponse

Plb = np.concatenate(YUMI_LOWER_LIMITS,ROBOTHAND_LB,ROBOTHAND_LB)
Pub = np.concatenate(YUMI_UPPER_LIMITS,ROBOTHAND_UB,ROBOTHAND_UB)

h5_name = "/media/liweijie/代码和数据/datasets/motionRetargeting/mocap_data_YuMi_affine_exexute2.h5"
weightVector = np.ones([28])
weightVector[:14] = 0.2     # elbow is less important

class Environment:
    def __init__(self):
        rospy.wait_for_service('/yumi_api_server/apis')
        print("Service yumi_api_server/apis is created")
        self.serviceProxy = rospy.ServiceProxy("/yumi_api_server/apis",yumi_execute)
        self.h5parser = h5Parser(h5_name)
        self.Q_state = list(np.zeros([38]))
        self.t = 0

    def seed(self,seed):
        np.random.seed(seed)

    def response2state(self,resp):
        xt_hat = resp.xt_hat
        Qt_hat = resp.Qt_hat
        x_next = resp.x_next
        Q_next = resp.Q_next
        # dim = 28 + 28 + 38 + 38 = 132
        state = xt_hat + x_next + Qt_hat + Q_next
        state = np.array(state)
        return state

    def calculateReward(self,resp):
        xt_hat = np.array(resp.xt_hat)
        Qt_hat =np.array(resp.Qt_hat)
        xt = np.array(resp.xt)
        e = xt_hat - xt
        Rsim = np.exp(-np.sum(e*e*weightVector))
        Robs = 0
        if resp.if_collide == 1.0:
            Robs = -50
        Rcstr = np.exp(-(np.clip(Qt_hat-Pub,0,None)*np.clip(Qt_hat-Pub,0,None)+np.clip(Plb-Qt_hat,0,None)*np.clip(Plb-Qt_hat,0,None)))
        reward = Rsim + Robs + Rcstr
        return {'reward':reward,'Rsim':Rsim,'Robs':Robs,'Rcstr':Rcstr}

    def determineIfDone(self,resp):
        done = False
        x, Q = self.h5parser.parse(group_name)
        max_time = len(Q)
        if resp.if_collide: done = True
        elif self.t >=  max_time: done = True
        return done

    def reset(self,group_name):
        # Reset the robots to the initial state
        # & return the initial state
        # Construct the request
        command = "reset"
        Qtt_hat = list(np.zeros([38]))
        Vt_hat = list(np.zeros([38]))
        t = 0
        req = yumi_executeRequest(command,Qtt_hat,Vt_hat,group_name,t)
        # Send request
        resp = self.serviceProxy(req)
        # Reset joint state & t
        self.Q_state = resp.Qt_hat
        self.t = 0
        # Parse response
        initial_state = self.response2state(resp)
        return initial_state

    def step(self,Vt_hat, group_name):
        Vt_hat = list(Vt_hat)
        # Construct the request
        command = "move"
        req = yumi_executeRequest(command,self.Q_state,Vt_hat,group_name,self.t)
        # Send request
        resp = self.serviceProxy(req)
        # Set joint state & increase t
        self.Q_state = resp.Qt_hat
        self.t = self.t + 1
        # Parse response
        next_state = self.response2state(resp)
        # Calculate rewards
        rewards = self.calculateReward(resp)
        # Determine if done
        done = self.determineIfDone(resp)
        return next_state, rewards, done

    def sample(self,group_name):
        t = self.t
        if t==0: t=1
        # Random sample an action
        x, Q = self.h5parser.parse(group_name)
        xtt, Qtt = x[t-1], Q[t-1]
        xt, Qt = x[t], Q[t]
        Vt_ref = Qt - Qtt
        scale = np.random.rand(Vt_ref.shape) + 0.5  # scale is in 0.5~1.5
        Vt_hat = scale * Vt_ref
        return Vt_hat