#!/bin/bash

source ./scripts/common.sh

local_home=$PWD

cd ~/catkin_ws

header_warn "catkin_make clean"
catkin_make clean

header_warn "catkin_make"
catkin_make


header_info "source ~/catkin_ws/devel/setup.bash"
source ~/catkin_ws/devel/setup.bash

cd ${local_home}
(bash ./scripts/process.sh) &
(sleep 2; gnome-terminal -e "bash ./scripts/data.sh") &

wait

