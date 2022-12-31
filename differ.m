clc;
Fun=@(x) x.*sin(3*x);
dFun=@(x) 3*x.*cos(3*x)+sin(3*x);
x=linspace(0,4,101);
F=Fun(x);
h=x(2)-x(1);
xForward=x(1:end-1);
dFForward=(F(2:end)-F(1:end-1))/h;
plot(x,dFun(x));
hold on
plot(xForward,dForward,'k');
legend('Analytic','Forward')