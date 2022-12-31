clc;
clear all;
f = @(x)sin(x)+log(x)-x^3;
a = input('Enter lower limit a: ');
b = input('Enter upper limit b: ');
n = input('Enter the number of sub-intervals n: ');
h = (b-a)/n;
if rem(n,2)==1
    fprintf('\n Enter valid n!!!');
    n = input('\n Enter n as even number ');
end
for k=1:1:n
    x(k) = a+k*h;
    y(k)=f(x(k));
end
so=0;se=0;
for k=1:1:n-1
    if rem(k,2)==1
        so=so+y(k);
    else
        se=se+y(k);
    end
end
answer=h/3*(f(a)+f(b)+4*so+2*se);
fprintf('\n The value of integration is %f',answer);