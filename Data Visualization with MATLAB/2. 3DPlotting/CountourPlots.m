clear
close all
clc

%% Data Load

subplot(1, 2, 1)
[X, Y, Z] = peaks;

%% Plotting

% contour(X, Y, Z, 15, 'ShowText', 'on', 'LabelFormat', '%0.1f m')
[C, h] = contour(X, Y, Z, 10);
clabel(C, h, 'FontSize', 12, 'FontName', 'Times')
colorbar
colormap jet

subplot(1, 2, 2)
surf(X, Y, Z)
view(0, 90)
shading interp
colorbar
colormap jet
