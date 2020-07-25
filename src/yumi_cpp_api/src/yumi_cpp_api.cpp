#include "yumi_cpp_api.h"
#include <fstream>

YuMiCppApi::YuMiCppApi(std::string urdf_string, std::string srdf_string):options_(urdf_string, srdf_string), robot_model_loader_(options_), local_planning_scene_(kinematic_model_)
{

}

void YuMiCppApi::set_joint_values_yumi(const std::vector<double> q_in)
{
    // Get the joint angles for each group
  //std::cout << "Update the robot state with the given joint angles" << std::endl;
  // Remember to change the joint value assignment here when switching to robots with different DOFs!!!
  std::vector<double> q_left_arm(q_in.begin(), q_in.begin()+7); //(7); 
  std::vector<double> q_right_arm(q_in.begin()+7, q_in.begin()+14); //(7);
  std::vector<double> q_left_finger(q_in.begin()+14, q_in.begin()+26); //(12); 
  std::vector<double> q_right_finger(q_in.begin()+26, q_in.begin()+38); //(12);

  // Set current state (joint positions)
  this->current_state_.setJointGroupPositions(this->left_arm_group_, q_left_arm);
  this->current_state_.setJointGroupPositions(this->right_arm_group_, q_right_arm);
  this->current_state_.setJointGroupPositions(this->left_hand_group_, q_left_finger);
  this->current_state_.setJointGroupPositions(this->right_hand_group_, q_right_finger);
  this->current_state_.update();
}

/* Testing the APIs */
int main(int argc, char **argv)
{
    // Initialize a ROS node (or creating NodeHandle later)
    ros::init(argc, argv, "TEST_collision_checking_yumi");

    double result;

    // Preparations (structure: left_arm, right_arm, left_hand, right_hand)
    std::vector<double> colliding_joint_values(38); // all 0's
    colliding_joint_values[0] = -0.91;
    colliding_joint_values[1] = 0.44;
    colliding_joint_values[2] = 0.03;
    colliding_joint_values[3] = 0.83; 

    std::vector<double> noncolliding_joint_values(38);
    noncolliding_joint_values[0] = 1.09; 
}