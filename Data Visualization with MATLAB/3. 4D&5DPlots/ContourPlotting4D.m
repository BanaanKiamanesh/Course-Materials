clear
close all
clc

%% Data Creation

X = linspace(-4, 4, 100);
Y = X;
Z = X;

[X, Y, Z] = meshgrid(X, Y, Z);
R = abs(cos(X) + cos(Y) + cos(Z));


%% Moving Slice

Res = 0.1;
Step = -2:Res:2;

figure
for i = 1:numel(Step)

    contourslice(X, Y, Z, R, Step(i), [], [], 'linear');
    hold on
    view(3)
    xlim([-2, 2])
    ylim([-2, 2])
    zlim([-2, 2])
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
    shading interp

    colormap jet
    colorbar

    drawnow
end
