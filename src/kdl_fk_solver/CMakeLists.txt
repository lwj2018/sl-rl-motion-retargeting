cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(kdl_fk_solver)

SET(CMAKE_BUILD_TYPE "Debug")

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++14)#(-std=c++11)#


## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages

# Eigen 3
find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIRS})

#link_directories(${G2O_LIBRARY_DIRS})
#message(">>>> G2O-libraries: " ${G2O_LIBRARIES})
#message(">>>> G2O-Inclu-dirs: " ${G2O_INCLUDE_DIRS})
# remember to sudo apt-get install ros-kinetic-libg2o	

## Specify additional locations for library files
#link_directories(
#  /usr/local/lib # Location when using 'make system_install'
#  /usr/lib       # More usual location (e.g. when installing using a package)
#)


find_package(catkin REQUIRED COMPONENTS
#  roscpp
  kdl_parser
  #moveit_ros_planning_interface
  #moveit_core
  #moveit_ros_planning
  #geometric_shapes
)


include_directories(${catkin_INCLUDE_DIRS})

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES arm_hand_retargeting
#  CATKIN_DEPENDS other_catkin_pkg
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
# ${catkin_INCLUDE_DIRS}
)


### Test modules
#add_executable(TEST_collision_checking src/TEST_collision_checking.cpp)
#target_link_libraries(TEST_collision_checking ${catkin_LIBRARIES} collision_checking)

#add_executable(TEST_collision_checking_yumi src/collision_checking_yumi.cpp)
#target_link_libraries(TEST_collision_checking_yumi ${catkin_LIBRARIES} collision_checking_yumi)

#add_executable(TEST_generate_trajectory_from_viewpoints src/generate_trajectory_from_viewpoints.cpp)
#target_link_libraries(TEST_generate_trajectory_from_viewpoints ${EIGEN3_LIBRARIES} ${HDF5_CXX_LIBRARIES})

#add_executable(TEST_generate_trajectory_using_DMP src/generate_trajectory_using_DMP.cpp)
#target_link_libraries(TEST_generate_trajectory_using_DMP ${EIGEN3_LIBRARIES} ${HDF5_CXX_LIBRARIES})

#add_executable(distance_computation src/distance_computation.cpp)
#target_link_libraries(distance_computation ${catkin_LIBRARIES} ${Boost_LIBRARIES})

#add_executable(TEST_similarity_network_pytorch src/TEST_similarity_network_pytorch.cpp)
#target_link_libraries(TEST_similarity_network_pytorch ${EIGEN3_LIBRARIES} similarity_network_pytorch)

add_executable(TEST_KDL_FK_Solver src/KDL_FK_Solver.cpp)
target_link_libraries(TEST_KDL_FK_Solver ${catkin_LIBRARIES} ${EIGEN3_LIBRARIES})#

