clear
close all
clc

%% Init

% Pendulum Length
L = 1;

figure('Units', 'normalized', 'OuterPosition', [0, 0, 0.5, 0.5])
bar = plot([0, 0], [0, -L]);
hold on
p = plot(0, -L, 'Marker', 'o', 'MarkerFaceColor', 'r', 'MarkerSize', 15);


axis equal
xlim([-L, L]*1.1)
ylim([-L, 0.1]*1.1)
grid on
grid minor

T = 0;
dt = 0.1;
SimTime = 45;

Vid = VideoWriter('Pendulum.mp4', 'MPEG-4');
Vid.Quality = 100;
Vid.FrameRate = round(1/dt);

open(Vid);


%% Vis

while true
    T = T + dt;
    if T > SimTime
        break;
    end

    Theta = sin(T) * exp(-T/10);

    X = L * sin(Theta);
    Y = L * cos(Theta);

    bar.XData = [0,  X];
    bar.YData = [0, -Y];

    p.XData = X;
    p.YData = -Y;


    drawnow update
    pause(0.01)

    img = getframe(gcf);
    writeVideo(Vid, img);
end

close(Vid)
