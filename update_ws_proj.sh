#!/bin/bash
if [ ! -d ~/ros_ws ]; then
mkdir ~/ros_ws
fi
 
cd ~/ros_ws
rm -rf *
source ~/.bashrc
rospack profile
cd ~/ros_ws
mkdir src && cd src && catkin_init_workspace
cd ../
catkin_make
cd ~/ros_ws/src
wstool init .
wstool merge https://raw.githubusercontent.com/cmsc421/cmsc421/master/cmsc421.rosinstall
wstool update
cd ~/ros_ws
catkin_make
source ~/.bashrc
sleep 5
rospack profile
