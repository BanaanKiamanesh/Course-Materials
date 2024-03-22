clear
close all
clc

%% Data Loading
load fisheriris

x = meas(:, 1); % Sepal Length
y = meas(:, 2); % Sepal Width
z = meas(:, 3); % Petal Length

Cat = unique(species);
Colors = ["y", "r", "b"];

%% 2D Plotting

figure;
hold on
grid on
grid minor
legend
xlabel('Sepal Length (cm)')
ylabel('Sepal Width (cm)')
title('Scatter Plot FisherIris')

for i = 1:numel(Cat)
    ind = strcmp(species, Cat{i});
    scatter(x(ind), y(ind), [], Colors(i), 'filled', 'DisplayName', Cat{i})
end


%% 3D Plotting
figure;


for i = 1:numel(Cat)
    ind = strcmp(species, Cat{i});
    scatter3(x(ind), y(ind), z(ind), [], Colors(i), 'filled', 'DisplayName', Cat{i})
    hold on
end

grid on
grid minor
legend
xlabel('Sepal Length (cm)')
ylabel('Sepal Width (cm)')
zlabel('Petal Width (cm)')
title('Scatter Plot FisherIris')
