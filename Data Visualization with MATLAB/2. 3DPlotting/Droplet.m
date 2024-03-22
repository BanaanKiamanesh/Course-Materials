clear
close all
clc

%% Data Creation

X = linspace(-10, 10, 50);
Y = X;
[X, Y] = meshgrid(X, Y);

R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R) ./ R;

%% Plotting
subplot(6, 6, [6, 12])
surf(X, Y, Z)
view(90, 0)
xlabel('X')
ylabel('Y')
zlabel('Z')
title('X View')
colormap jet
colorbar

subplot(6, 6, [18, 24])
surf(X, Y, Z)
view(180, 0)
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Y View')
colormap jet
colorbar

subplot(6, 6, [30, 36])
surf(X, Y, Z)
view(0, 90)
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Z View')
colormap jet
colorbar

subplot(6, 6, [1:5, 7:11, 13:17])
surf(X, Y, Z)
xlabel('X')
ylabel('Y')
zlabel('Z')
title('3D View')
colormap jet
colorbar

subplot(6, 6, [1:5, 7:11, 13:17] + 18)
contour(X, Y, Z, 5, 'ShowText', true)
title('Contour Plot')
colormap jet
colorbar

sgtitle('Droplet Analysis!', 'FontSize', 25, 'FontWeight', 'bold')
