%for y''' + y' = 2-sinx
%break into first order ODEs using
% u1 = y ; u1' = u2
% u2 = y' ; u2' = u3
% u3 = y'' ; u3' = 2-sin(x)-u2


%"function that takes x,u as argument and returns vector with derivatives
f = @(x,u) [u(2); u(3); 2-sin(x) - u(2)];

x = 0;
u = [5;3;7];

f(x,u)