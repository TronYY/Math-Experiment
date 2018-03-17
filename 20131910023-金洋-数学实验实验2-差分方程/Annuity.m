function [x,nM]=Annuity(x0,r,c,year)
a=1+r;
x=x0;
for k=1:year*12
    x(k+1)=x(k)*a-c;
    %下个月将钱用光时，跳出循环
    if (x(k+1)<=0) 
        break;
    end
end
nM=k+1;
    
