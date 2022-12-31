clc
clear
x1=input('x1=');
%e = input('e=');
for k=1:1:100
    t(k)=k;
    a(k)=x1;
    fx1(k)=x1^3-5*x1^2+7*x1-3;
    fx2(k)=3*x1^2-10*x1+7;
    fx3(k)=6*x1^2-10;
    c(k)=a(k)-((fx1(k)*fx2(k))/(fx2(k)^2-fx1(k)*fx3(k)));
    x1=c(k);
    if (k>1)
        m(k)=abs((c(k)-c(k-1))/c(k))*100;
        if(m(k)<=0.001)
            break
        end
    end
end
s=[t' a' fx1' fx2' fx3' c' m'];
disp('______________________________________________________')
disp('   iteration    x1     fx1    fx2      fx3     Root     error')
disp('______________________________________________________')
disp(s);
root=c(k)