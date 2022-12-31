clc;
clear;
a=1;
b=8;
n=input('n=');
h=(b-a)/n;
sum=0;
x(1)=1;
f=log10(x(1));
for r=1:1:9
    x(1)=1;
    y(1)=log10(x(1));
    x(r+1)=x(r)+n;
    y(r+1)=log10(x(r+1));
end
result=h/2*((y(1)+y(9))+2*(y(2)+y(3)+y(4)+y(5)+y(6)+y(7)+y(8)));
fprintf('%f',result);