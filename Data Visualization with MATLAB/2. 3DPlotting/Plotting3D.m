clear
close all
clc

%% Data Creation

% Time Vector
T = linspace(0, 4*pi, 20);

% Data 1
R1 = 2;
X1 = R1 * cos(T);
Y1 = R1 * sin(T);
Z1 = T;

% Data 2
R2 = 4;
X2 = R2 * cos(T);
Y2 = R2 * sin(T);
Z2 = sin(T);

%% Plotting
plot3(X1, Y1, Z1, 'LineWidth', 3)
text(X1, Y1, Z1, string(T))
xlabel('X')
ylabel('Y')
zlabel('Z')

hold on
plot3(X2, Y2, Z2, 'LineWidth', 3)
text(X2, Y2, Z2, string(T))
grid on
grid minor
