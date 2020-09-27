#!/bin/bash

echo "PWD: ${PWD}"
echo "exec ./scripts/process.sh"

source ./scripts/common.sh

header_warn "stereo_imu_euroc.launch start @ $(date '+%Y-%m-%d %H:%M:%S.%N')"

header_warn "roslaunch vins stereo_imu_euroc.launch"
roslaunch vins stereo_imu_euroc.launch

wait
header_warn "stereo_imu_euroc.launch end @ $(date '+%Y-%m-%d %H:%M:%S.%N')"

