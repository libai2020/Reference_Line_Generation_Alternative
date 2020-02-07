%  MATLAB Source Codes for the book "Cooperative Decision and Planning for
%  Connected and Automated Vehicles" published by Mechanical Industry Press
%  in 2020.
% 《智能网联汽车协同决策与规划技术》书籍配套代码
%  Copyright (C) 2020 Bai Li
%  2020.02.07
% ==============================================================================
%  第四章 4.1.1小节.基于QP的指引线生成备选命题构建与求解
% ==============================================================================
%  备注：
%  1. 与前几章情况一样，AMPL需要按照书中介绍的方式激活.
%  2. 该方法几乎不会求解失败，且求解速度快.
%  3. 该方法不仅仅是一种生成指引线的方法，完全可以用于结构化道路上的轨迹规划或路径规划.
% ==============================================================================
clear all; close all; clc
warning off

distance = 12; % 当使用全功能AMPL时可以将该参数设置得更大，免费版AMPL有300变量限制
delta_s = 1.0;
global waypoints
waypoints = GenerateRandomWaypoints(distance, delta_s);
WriteWaypointsInFile(waypoints);

!ampl rr.run
IllustrateSolution();