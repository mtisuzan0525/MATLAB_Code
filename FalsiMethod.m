clc
clear
x1=input('x1=');
x2=input('x2=');
%e=input('e=');
for k=1:1:18
    t(k)=k;
    a(k)=x1;
    b(k)=x2;
    fx1(k)=3*x1-cos(x1)-1;
    fx2(k)=3*x2-cos(x2)-1;
    c(k)=(x1*fx2-x2*fx1)/(fx2-fx1);
    x3=c(k);
    fx3(k)=3*x3-cos(x3)-1;
    if k>1
        m(k)=abs((c(k)-c(k-1))/c(k))*100;
        if(m(k)<=0.001)
            break
        end
    end
    if fx1(k)*fx3(k)>0
        x2=x3;
    end
end
s=[t' a' b' fx1' fx2' c' fx3' m'];
disp('_________________________________________________________________________________________')
disp('   iteration     x1       x2        fx1       fx2      x3         fx3      error');
disp('_________________________________________________________________________________________')
disp(s)
disp('Root=');
disp(c(k));
root=x3;
         