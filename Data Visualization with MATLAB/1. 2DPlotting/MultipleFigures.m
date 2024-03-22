clear
close all
clc

%% Data Creation

% time Vector
t = linspace(0, 4*pi, 100);

% Signal Creation
Y1 = sin(t);
Y2 = cos(t);

%% Plotting

Fig1 = figure('Name', 'Sine Plot', 'Units', 'Normalized', 'OuterPosition', [0, 0, 1, 1]);
plot(t, Y1, '-.sk', 'LineWidth', 3)


Fig2 = figure('Name', 'Cosine Plot');
plot(t, Y2, '-.ob', 'LineWidth', 3)


% Activate Figure1
figure(Fig1)
hold on
plot(t, Y2, '-.ob', 'LineWidth', 3)

pause(2)
Fig1.Name = 'Sine + Cos Plot';
Fig1.OuterPosition = [0, 0, .5 .5];
