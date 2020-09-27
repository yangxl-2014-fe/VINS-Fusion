#!/bin/bash

echo "PWD: ${PWD}"
echo "exec ./scripts/data.sh"

source ./scripts/common.sh

header_warn "load_bag_euroc.launch start @ $(date '+%Y-%m-%d %H:%M:%S.%N')"

header_warn "roslaunch vins load_bag_euroc.launch"
roslaunch vins load_bag_euroc.launch

wait
header_warn "load_bag_euroc.launch end @ $(date '+%Y-%m-%d %H:%M:%S.%N')"

