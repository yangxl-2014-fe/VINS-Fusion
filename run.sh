#!/bin/bash

source ./scripts/common.sh

local_home=$PWD

cd ~/catkin_ws

header_debug "source ~/catkin_ws/devel/setup.bash"
source ~/catkin_ws/devel/setup.bash

cd ${local_home}
(bash ./scripts/process.sh) &
(sleep 2; gnome-terminal -e "bash ./scripts/data.sh") &

wait

