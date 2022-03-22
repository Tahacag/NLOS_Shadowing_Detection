function [I,rc] = line_plane_intersection(u, N, n, M)
% Plane offset parameter
d = -dot(n,M);
% Specific cases treatment
if ~dot(n,u) % n & u perpendicular vectors
    if dot(n,N) + d == 0 % N in P => line belongs to the plane
        
        I = M;
        rc = 2;
    else % line // to the plane
     
        I = [];
        rc = 0;
    end
else
    
    % Parametric line parameter t
    t = - (d + dot(n,N)) / dot(n,u);
    
    % Intersection coordinates
    I = N + u*t;
    
    rc = 1;
    
end
end % line_plane_intersection


