#!/bin/bash

source ./scripts/common.sh
header_warn "run_make.sh start @ $(date '+%Y-%m-%d %H:%M:%S.%N')"

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
header_warn "run_make.sh end @ $(date '+%Y-%m-%d %H:%M:%S.%N')"

