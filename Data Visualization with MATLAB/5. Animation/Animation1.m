clear
close all
clc

%% Init
Line = animatedline(0, 0, 0, ...
    'LineWidth', 3, ...
    'Color', 'r', ...
    'Marker', '+', ...
    'MaximumNumPoints', 10);

T = 0;
dt = 0.1;

%% Plotting

while true
    T = T + dt;
    if T > 10
        break;
    end

    X = cos(T);
    Y = sin(T);
    Z = T;

    addpoints(Line, X, Y, Z)

    axis equal
    xlim([-1.1 1.1])
    ylim([-1.1 1.1])
    zlim([0, 10])
    view(3)
    grid on

    drawnow
    pause(0.05)
end
