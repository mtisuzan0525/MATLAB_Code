clc
clear
a = input('a=');
for k=1:1:15
    t(k)=k;
    x(k)=a;
    f1(k)=3*a-cos(a)-1;
    f2(k)=3+sin(a);
    c(k)=x(k)-(f1(k)/f2(k));
    f3(k)=3*c(k)-cos(c(k))-1;
    a=c(k);
    if (k>1)
        l(k)=((c(k)-c(k-1))/c(k))*100;
        m(k)=abs(l(k));
        if(m(k)<=0.001)
            break;
        end
    end
end
result=[t' x' c' f3' m'];
disp('______________________________________________________')
disp('   iteration    x(n)     x(n+1)      f3     error');
disp('______________________________________________________')
disp(result)
disp('Root=')
disp(c(k));
root=c(k);