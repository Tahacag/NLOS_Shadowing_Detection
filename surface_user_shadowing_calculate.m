
%% DETECTION
function result = surface_user_shadowing_calculate(points,intersection_point,check)  
% For this code , you have to use line_plane_intersection function to
% take intersection_point.
%
% Points format = [xdimension ydimension zdimension]
% intersection_point = [xdimension ydimension zdimension]
%
% Output : 1 ->Shadowing TRUE
% Output : 0 ->Shadowing FALSE

cross1 = sqrt((points(1,1)-points(3,1))^2+(points(1,2)-points(3,2))^2); 
cross2 = sqrt((points(2,1)-points(4,1))^2+(points(2,2)-points(4,2))^2);
 
 crossA = sqrt((points(1,1)-intersection_point(1,1))^2+(points(1,2)-intersection_point(1,2))^2);
 crossB = sqrt((points(2,1)-intersection_point(1,1))^2+(points(2,2)-intersection_point(1,2))^2);
 crossC = sqrt((points(3,1)-intersection_point(1,1))^2+(points(3,2)-intersection_point(1,2))^2);
 crossD = sqrt((points(4,1)-intersection_point(1,1))^2+(points(4,2)-intersection_point(1,2))^2);
F=crossA^2+crossC^2;
E=crossB^2+crossD^2;
G=cross1^2;
T=cross2^2;

   if F+E>=G+T  % It come from logic .
    result = 0;
   else
    result = 1;
   end
end

















