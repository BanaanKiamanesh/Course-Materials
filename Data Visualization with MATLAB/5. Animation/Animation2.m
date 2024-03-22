clear
close all
clc

%% Init
X = 0;
Y = 0;
Line = animatedline('Color', 'm');

X2 = 0;
Y2 = 0;
Line2 = animatedline('Color', 'c');

%% Visualization

Fig = gcf;
Fig.Color = 'k';

while true

    X = X + randi([-1, 1]);
    Y = Y + randi([-1, 1]);

    addpoints(Line, X, Y)

    X2 = X2 + randi([-1, 1]);
    Y2 = Y2 + randi([-1, 1]);

    addpoints(Line2, X2, Y2)

    axis off
    xlim([-150, 150])
    ylim([-150, 150])


    drawnow limitrate
end
