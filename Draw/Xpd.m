y=linspace(-10,10,100);
x1=log((1+sqrt(1+y.^2))./y)-sqrt(1-y.^2);
plot(x1,y);
hold on;
x2=log((1-sqrt(1+y.^2))./y)+sqrt(1-y.^2);
plot(x2,y);