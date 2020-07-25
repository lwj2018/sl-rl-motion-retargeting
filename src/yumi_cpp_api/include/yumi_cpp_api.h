#include <ros/ros.h>

#include <vector>
#include <string>
#include <fstream>
#include <algorithm>
#include <chrono>

// MoveIt!
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/rdf_loader/rdf_loader.h>
#include <moveit/planning_scene/planning_scene.h>

// MoveIt msg and srv for using planning_scene_diff
#include <moveit_msgs/PlanningScene.h>
#include <moveit_msgs/ApplyPlanningScene.h>

// For collision checking, distance computation
#include <moveit/collision_detection_fcl/collision_robot_fcl.h>
#include <moveit/collision_detection_fcl/collision_world_fcl.h>
#include <moveit/collision_detection/collision_robot.h>

// For PlanningSceneInterface
#include <moveit/planning_scene_interface/planning_scene_interface.h>

// For PlanningSceneMonitor
#include <moveit/planning_scene_monitor/planning_scene_monitor.h>

// Eigen
#include <Eigen/Eigen>

// For collision objects
#include "geometric_shapes/shapes.h"

class YuMiCppApi
{
    public:
        YuMiCppApi();
        YuMiCppApi(std::string urdf_string, std::string srdf_string);
        ~YuMiCppApi(){};

        // API
        void set_joint_values_yumi(const std::vector<double> q_in);
    
    private:
        //ros::AsyncSpinner spinner_;
        ros::NodeHandle node_handle_;
        robot_model_loader::RobotModelLoader::Options options_;
        robot_model_loader::RobotModelLoader robot_model_loader_;
        robot_model::RobotModelPtr kinematic_model_ = robot_model_loader_.getModel();

        // Set up a local PlanningScene (must make sure the one loaded in robot_description is in consistent with the one loaded by URDF and SRDF)
        planning_scene::PlanningScene local_planning_scene_;
        robot_state::RobotState &current_state_ = local_planning_scene_.getCurrentStateNonConst();

        const robot_model::JointModelGroup *left_arm_group_ = current_state_.getJointModelGroup("left_arm");
        const robot_model::JointModelGroup *right_arm_group_ = current_state_.getJointModelGroup("right_arm");
        const robot_model::JointModelGroup *left_hand_group_ = current_state_.getJointModelGroup("left_hand");
        const robot_model::JointModelGroup *right_hand_group_ = current_state_.getJointModelGroup("right_hand");
};
