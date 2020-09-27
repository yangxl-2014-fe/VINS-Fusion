#!/bin/bash

source ./scripts/common.sh
header_warn "run.sh start @ $(date '+%Y-%m-%d %H:%M:%S.%N')"

local_home=$PWD

cd ~/catkin_ws

header_debug "source ~/catkin_ws/devel/setup.bash"
source ~/catkin_ws/devel/setup.bash

cd ${local_home}
(bash ./scripts/process.sh) &
(sleep 2; gnome-terminal -e "bash ./scripts/data.sh") &

wait
header_warn "run.sh end @ $(date '+%Y-%m-%d %H:%M:%S.%N')"

