cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

SET(CMAKE_BUILD_TYPE "Debug")

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++14)#(-std=c++11)#
project(yumi_collision_checking)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages

# Eigen 3
find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIRS})

# Find HDF5
find_package(HDF5 REQUIRED COMPONENTS C CXX HL) # this works...
include_directories(${HDF5_INCLUDE_DIRS})


find_package(catkin REQUIRED COMPONENTS
  roscpp
  kdl_parser
  moveit_ros_planning_interface
  moveit_core
  moveit_ros_planning
  geometric_shapes
  message_generation
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  yumi_execute.srv
 )

 ## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
 )

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES yumi_collision_checking
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  src
  ${catkin_INCLUDE_DIRS}
)

### tool libraries
add_library(collision_checking_yumi src/collision_checking_yumi.cpp)
target_link_libraries(collision_checking_yumi ${catkin_LIBRARIES} ${Boost_LIBRARIES})

add_library(h5_io src/h5_io.cpp)
target_link_libraries(h5_io ${HDF5_CXX_LIBRARIES})

add_library(KDL_FK_Solver src/KDL_FK_Solver.cpp)
target_link_libraries(KDL_FK_Solver ${EIGEN3_LIBRARIES})

### Linking collision checking library
#add_executable(yumi_arm_retarget_g2o_similarity src/yumi_arm_retarget_g2o_similarity.cpp)
#target_link_libraries(yumi_arm_retarget_g2o_similarity ${catkin_LIBRARIES} ${EIGEN3_LIBRARIES} ${HDF5_CXX_LIBRARIES} ${G2O_LIBRARIES} collision_checking_yumi generate_trajectory_using_DMP)
#target_link_libraries(yumi_arm_retarget_g2o_similarity similarity_network_pytorch)


### Test modules
add_executable(TEST_collision_checking_yumi src/collision_checking_yumi.cpp)
target_link_libraries(TEST_collision_checking_yumi ${catkin_LIBRARIES} collision_checking_yumi)

add_executable(yumi_api_server src/yumi_api_server.cpp)
target_link_libraries(yumi_api_server ${catkin_LIBRARIES} collision_checking_yumi  h5_io  KDL_FK_Solver)
