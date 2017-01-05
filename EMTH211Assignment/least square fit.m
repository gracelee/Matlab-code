% This program generates a scatter plot and graphs of different polynomial
% orders to compare least squares fit
%
% Authors: Grace, Danny

clear all
clc

%% Set up arrays
x = linspace(0,5,6);             % Create array for x = 0, 1, 2, 3, 4, 5
x2 = linspace(0,5,300);          % Create array for to generate other arrays for plotting

%% Given function
y = sin(10*x) + x;

%% Make arrays to plot function, linear least squares line, and orders from 2 to 5
y_sin = sin(10*x2) + x2;        
y_linear = -0.0695 + 1.0187*x2;               % Least squares
y_qua = -0.1417 + 1.1270*x2 -0.0217*x2.^2;
y_cub = -0.0658 + 0.7804*x2 + 0.1681*x2.^2 -0.0253*x2.^3; 
y_4th = -0.1021 + 1.3851*x2 -0.4819*x2.^2 + 0.1863*x2.^3 -0.0212*x2.^4;
y_5th = -10.5621*x2 + 20.0566*x2.^2 -11.4819*x2.^3 + 2.6578*x2.^4 -0.2143*x2.^5; 

%% Plot graphs
figure
scatter(x,y);
hold on
plot(x2,y_sin);
plot(x2,y_linear);
plot(x2,y_qua);
plot(x2,y_cub);
plot(x2,y_4th);
plot(x2,y_5th);
xlabel('x');
ylabel('y');
legend('Scatter of x and y', 'Order of 1', 'Least Sqaures', 'Order of 2', 'Order of 3', 'Order of 4', 'Order of 5');
title('Comparing Least Squares Fit');
grid;