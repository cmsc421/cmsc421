#!/bin/bash
cd ~/ros_ws/src
wstool merge https://raw.githubusercontent.com/cmsc421/cmsc421/master/cmsc421.rosinstall
wstool update
cd ~/ros_ws
catkin_make
cp -r ~/ros_ws/src/baxter_htn/models/* ~/.gazebo/models
source ~/.bashrc
sleep 5
rospack profile
