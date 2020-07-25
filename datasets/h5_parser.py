import h5py
import numpy as np

h5_name = "/media/liweijie/代码和数据/datasets/motionRetargeting/mocap_data_YuMi_affine_exexute.h5"

class h5Parser:
    def __init__(self,h5_name):
        self.f =  h5py.File(h5_name, "r") 

    def parse(self,group_name):
        # @return:x        np.ndarray with shape of T x (4 x 7)
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

        x = np.concatenate([l_elbow,r_elbow,l_wrist,r_wrist],-1)
        Q = np.concatenate([l_joint_angle,r_joint_angle,l_glove_angle,r_glove_angle],-1)

        return x, Q