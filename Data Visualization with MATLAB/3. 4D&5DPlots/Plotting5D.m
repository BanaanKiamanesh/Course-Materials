clear
close all
clc

%% Data Creation

X = linspace(-4, 4, 100);
Y = X;
Z = X;
T = X;

[X, Y, Z] = meshgrid(X, Y, Z);
R = abs(cos(X) + cos(Y) + cos(Z));

%% Plotting

for i = 1:numel(T)

    R = abs(cos(X) + cos(Y) + cos(Z) + cos(T(i)));

    slice(X, Y, Z, R, 0, 0, 0)
    colormap jet
    colorbar

    view(3)
    xlim([-2, 2])
    ylim([-2, 2])
    zlim([-2, 2])
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
    shading interp

    drawnow
end
