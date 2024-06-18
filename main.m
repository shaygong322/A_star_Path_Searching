% Used for Motion Planning for Mobile Robots
% Thanks to HKUST ELEC 5660 
close all; clear all; clc;

% Environment map in 2D space 
xStart = 1.0;
yStart = 1.0;
xTarget = 49.0;
yTarget = 49.0;
MAX_X = 50;
MAX_Y = 50;
map = obstacle_map(xStart, yStart, xTarget, yTarget, MAX_X, MAX_Y);

% Waypoint Generator Using the A* 
[path, OPEN] = A_star_search(map, MAX_X, MAX_Y);

% visualize the 2D grid map
visualize_map(map, path,OPEN);
