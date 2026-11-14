x = linspace(0, 3, 301); % list of 301 distances
y = zeros(size(x)); % empty list to modify

% define what is inside and outside of the shpere
inside = x <= 1;
outside = x > 1;

% define the normalized field for inside and outside of the shpere
y(inside) = x(inside);
% for each i in y(outside) and j in x(outside), i = 1/j^2
y(outside) = 1 ./ x(outside).^2;

plot(x, y, 'LineWidth', 2)
xline(1, '--', 'shpere surface')
xlabel('r/R')
ylabel('E/E(R)')
grid on