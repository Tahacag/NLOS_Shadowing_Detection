# NLOS_Shadowing_Detection
 This is a code to detect NLOS  for MATLAB

In this case ,  I tired to NLOS(shadowing) detection between a isotropic antenna and a user in a matlab simulation .

There are two main funtion to detect this .

line_plane_intersection: 
This functions detects intersection between line and plane . It returns a location in 3 dimension .
You have to put some paramaters to use this function.

function [I,rc] = line_plane_intersection(u, N, n, M)
n: normal of the plane 






surface_user_shadowing_detection:
 You can detection for NLOS as logic using this function taking intersection location from line_plane_intersection. It can return a logic output #logic 1 : shadowing TRUE 
 
logic 2 : shadowing FALSE
  



