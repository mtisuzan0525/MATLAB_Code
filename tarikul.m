clear all
clc
y = input('y=');
a = length(y);
t= a-1; d=NaN(2*a+1,a);
for i=1:a
    d(2*i,1) = y(i);
end
for j=1:t
    for i=1:t-(j-1)
        y(i) = y(i+1)-y(i);
        d(2*i+j,j+1) = y(i);
    end 
end
disp('     Forward differences');
disp(d);
