clear
close all
clc

%% Data Loading
load fisheriris

x = meas(:, 1); % Sepal Length
y = meas(:, 2); % Sepal Width

%% ScatterHist Plot

scatterhist(x, y, ...
    'Group', species, ...
    'Direction', 'out', ...
    'Kernel', 'on', ...
    'LineWidth', [3, 4, 5], ...
    'LineStyle', [":", "-.", "--"], ...
    'Marker', '+so', ...
    'MarkerSize', [15, 15, 15], ...
    'Color', 'kbr', ...
    'Location', 'ne')