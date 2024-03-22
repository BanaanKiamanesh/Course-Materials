clear
close all
clc

%% Data Load

load fisheriris

X = meas;
Y = species;

figure
h1 = histogram(X(:, 1), 15, 'Normalization', 'probability', 'DisplayName', 'Sepal Length');
hold on
h1.EdgeColor = 'w';

h2 = histogram(X(:, 2), 15, 'Normalization', 'probability', 'FaceAlpha', 0.4, 'EdgeAlpha', 1, 'DisplayName', 'Sepal Width');
h2.EdgeColor = 'w';

h3 = histogram(X(:, 3), 15, 'Normalization', 'probability', 'FaceAlpha', 0.4, 'EdgeAlpha', 1, 'DisplayName', 'Petal Length');
h3.EdgeColor = 'w';

h4 = histogram(X(:, 4), 15, 'Normalization', 'probability', 'FaceAlpha', 0.4, 'EdgeAlpha', 1, 'DisplayName', 'Petal Width');
h4.EdgeColor = 'w';

legend('FontSize', 20)


figure
h5 = histogram2(X(:, 1), X(:, 2), 'Normalization', 'count', 'FaceAlpha', 0.6);
hold on
h6 = histogram2(X(:, 1), X(:, 4), 'Normalization', 'count', 'FaceAlpha', 0.6);
