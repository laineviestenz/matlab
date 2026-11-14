t = linspace(0, 4*pi, 200);


%calculate sin and cos for every entry in t
x = cos(t);
y = sin(t);

x2 = 2*cos(t/2);
y2 = 2*sin(t/2);

% plot(x, y)
% axis equal
% grid on
% xlabel("x position")
% ylabel("y position")
% title("First Orbit")

for i = 1:200
    % k: black; --:dashed line
    plot(x,y, 'k--')
    hold on
    % y: yellow; o: circle marker
    plot(0,0, 'yo', 'MarkerFaceColor', 'y', 'MarkerSize', 18)
    % b: blue
    plot(x(i), y(i), 'bo', 'MarkerSize', 10)
    %%%%%%%%%%%
    % add second planet
    %%%%%%%%%%%
    plot(x2, y2, 'k--')
    plot(x2(i), y2(i), 'ro', 'MarkerSize', 10)
    hold off

    axis equal
    axis([-3 3 -3 3])
    drawnow
    pause(0.001)
end