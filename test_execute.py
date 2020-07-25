#encoding=utf-8
import sys
# sys.path.append("..")
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

def pose_to_np_array(pose):
    return np.array([pose.position.x,pose.position.y,pose.position.z,\
        pose.orientation.x,pose.orientation.y,pose.orientation.z,pose.orientation.w])

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
        # @return:x        np.ndarray with shape of T x J x 7
        # @return:Q        np.ndarray with shape of T x (7+12+7+12)
        ## Read needed data from mocap file

        l_elbow = self.f[group_name + '/l_elbow'][:]
        r_elbow = self.f[group_name + '/r_elbow'][:]

        l_wrist = self.f[group_name + '/l_wrist'][:] 
        r_wrist = self.f[group_name + '/r_wrist'][:]

        l_joint_angle = self.f[group_name + '/l_joint_angle'][:]
        r_joint_angle = self.f[group_name + '/r_joint_angle'][:]
        l_glove_angle = self.f[group_name + '/l_glove_angle'][:]
        r_glove_angle = self.f[group_name + '/r_glove_angle'][:]

        x = np.concatenate([l_elbow,r_elbow,l_wrist,r_wrist],1)
        Q = np.concatenate([l_joint_angle,l_glove_angle,r_joint_angle,r_glove_angle],-1)

        return x, Q


rospy.init_node('yumi_dual_arm_execute.py', anonymous=True)
h5_name = "/media/liweijie/代码和数据/datasets/motionRetargeting/mocap_data_YuMi_affine_execute.h5"
h5parser = h5Parser(h5_name)
group_name = "fengren.bag"
x, Q = h5parser.parse(group_name)

group = moveit_commander.MoveGroupCommander("dual_arms_with_hands")
joint_goal = list(Q[0])
group.allow_replanning(True)
group.go(joint_goal, wait=True)
group.stop()
