/*******************************************************
 * Copyright (C) 2019, Aerial Robotics Group, Hong Kong University of Science and Technology
 * 
 * This file is part of VINS.
 * 
 * Licensed under the GNU General Public License v3.0;
 * you may not use this file except in compliance with the License.
 *******************************************************/

#pragma once

#include <eigen3/Eigen/Dense>
#include <ceres/ceres.h>
#include "../utility/utility.h"

class PoseLocalParameterization : public ceres::LocalParameterization
{
    virtual bool Plus(const double *x, const double *delta, double *x_plus_delta) const;  //! 计算增量 - 迭代优化用
    virtual bool ComputeJacobian(const double *x, double *jacobian) const;  //! 此次默认返回的是 7x6 的单位阵
    virtual int GlobalSize() const { return 7; };
    virtual int LocalSize() const { return 6; };
};
