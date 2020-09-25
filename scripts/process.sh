#!/bin/bash

source ./common.sh

header_warn "roslaunch vins stereo_imu_euroc.launch"
roslaunch vins stereo_imu_euroc.launch

