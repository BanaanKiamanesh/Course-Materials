clear
close all
clc

%% Data Creation

X = linspace(-2, 2, 40);
Y = X;
Z = X;

[X, Y, Z] = meshgrid(X, Y, Z);
R = abs(cos(X) + cos(Y) + cos(Z));


%% Plotting

% Fig 1
figure
slice(X, Y, Z, R, 0, 0, 0)
xlabel('X')
ylabel('Y')
zlabel('Z')

colormap jet
colorbar

% Fig 2
figure
slice(X, Y, Z, R, -2:1:2, [], [])
xlabel('X')
ylabel('Y')
zlabel('Z')

colormap jet
colorbar

%% Moving Slice

Res = 0.1;
Step = -2:Res:2;

figure('Units', 'normalized', 'OuterPosition', [0, 0, 1, 1])
for i = 1:numel(Step)

    slice(X, Y, Z, R, Step(i), [], [], 'linear');
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

    pause(0.1)

end
