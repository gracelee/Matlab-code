clear all
clc

x = linspace(0,5,6);
x2 = linspace(0,5,300);
y = sin(10*x) + x;
y_sin = sin(10*x2) + x2;
y_linear = -0.0695 + 1.0187*x2
%y_qua = -0.1417 + 1.1270*x2 -0.0217*x2.^2
%y_cub = -0.0658 + 0.7804*x2 + 0.1681*x2.^2 -0.0253*x2.^3
%y_4th = -0.1021 + 1.3851*x2 -0.4819*x2.^2 + 0.1863*x2.^3 -0.0212*x2.^4
y_5th = -10.5621*x2 + 20.0566*x2.^2 -11.4819*x2.^3 + 2.6578*x2.^4 -0.2143*x2.^5

figure
scatter(x,y);
hold on
plot(x2,y_sin)
plot(x2,y_linear)
%plot(x2,y_qua)
%plot(x2,y_cub)
%plot(x2,y_4th)
plot(x2,y_5th)