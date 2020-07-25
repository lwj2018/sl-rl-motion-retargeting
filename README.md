# test forward kinematics
source devel/setup.bash
rosrun kdl_fk_solver TEST_KDL_FK_Solver 

# test trajectory execute
roslaunch yumi_sign_language_robot_moveit_config demo.launch
rosrun yumi_sign_language_robot_control yumi_sign_robot_execute_joint_path.py -f /home/liweijie/tmp_ws/mocap_ik_results_YuMi_g2o_similarity.h5 -g fengren_1 -t arm_traj_1
rosrun yumi_sign_language_robot_control yumi_sign_robot_execute_joint_path.py -f /home/liweijie/robot_trajectory.h5 -g fengren.bag -t arm_traj_1
