%make a matrix of the points where we want to put a line
[x, y] = meshgrid(-5:0.5:5, -5:0.5:5);

%calculate the slope for each point (this is simply the function that
%dy/dx equals
m = 1/3 * cos(x-3*y);

%change is x = 1, so make u a matrix filled with 1's in the size of m
%change in y = the slope at that point
u = ones(size(m));
v = m;

%calculate the length of the line for normalizing purposes
r = sqrt(x.^2 + y.^2);

%normalize each line
u_norm = u./r;
v_norm = v./r;

% Plot each point
quiver(x,y,u,v)

axis equal