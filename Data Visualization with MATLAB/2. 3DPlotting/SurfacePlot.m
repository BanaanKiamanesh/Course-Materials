clear
close all
clc

%% Data Creation

X = linspace(-5, 10, 100);
Y = X;

[X, Y] = meshgrid(X, Y);

Z = sin(X) .* sin(Y) .* exp(X / 5) .* exp(Y / 5);


% surf(X, Y, Z)
mesh(X, Y, Z)
xlabel('X')
ylabel('Y')
zlabel('Z')
colorbar
colormap jet
view(-10, 42)
