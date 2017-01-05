x = linspace(0,6,300);
y = sin(10*x) + x;
ax1 = subplot(2,1,1);
c = linspace(1,10,length(x));
y1 = polyval(p1,x);
y3 = -0.0695 + 1.0187*x
y5 = -10.5621*x + 20.0566*x.^2 -11.4819*x.^3 +2.5678*x.^4 -0.2143*x.^5

figure
scatter(x,y,[],c);
hold on
%plot(x,y1)
plot(x,y5)
plot(x, y3)
plot(x,y)

