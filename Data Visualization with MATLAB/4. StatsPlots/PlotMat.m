clear
close all
clc

%% Data Loading
load fisheriris

%% Plotting
[h,ax,bigax] = gplotmatrix(meas, [], species);

title(bigax, 'Gplot')

h(1, 1, 1).DisplayStyle = "bar";
h(1, 1, 1).FaceColor = 'k';

h(1, 1, 2).DisplayStyle = "bar";
h(1, 1, 2).FaceColor = 'g';

h(1, 1, 3).DisplayStyle = "bar";
h(1, 1, 3).FaceColor = 'm';
