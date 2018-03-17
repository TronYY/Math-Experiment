[x,nM]=Annuity(50000,0.004,1000,20);
x=round(x);%将每月金额四舍五入取整
%打印出每岁末拥有的余额
for i=1:floor(nM/12)
    fprintf('%d岁末，余额%d元\n',60+i,x(12*i+1));
end
k=0:floor(nM/12);
plot(k,x(12*k+1),'r*',k,x(12*k+1),'b-');
grid on;
title('每岁末尚有养老基金');
xlabel('年份');
ylabel('余额（元）');
gtext('x0=50000,r=0.4%,c=1000');hold on


[x,nM]=Annuity(100000,0.004,1000,20);
x=round(x);%将每月金额四舍五入取整
%打印出每岁末拥有的余额
for i=1:floor(nM/12)
    fprintf('%d岁末，余额%d元\n',60+i,x(12*i+1));
end
k=0:floor(nM/12);
plot(k,x(12*k+1),'r*',k,x(12*k+1),'b-');
grid on;
title('每岁末尚有养老基金');
xlabel('年份');
ylabel('余额（元）');
gtext('x0=100000,r=0.4%,c=1000');

[x,nM]=Annuity(200000,0.004,1000,20);
x=round(x);%将每月金额四舍五入取整
%打印出每岁末拥有的余额
for i=1:floor(nM/12)
    fprintf('%d岁末，余额%d元\n',60+i,x(12*i+1));
end
k=0:floor(nM/12);
plot(k,x(12*k+1),'r*',k,x(12*k+1),'b-');
grid on;
title('每岁末尚有养老基金');
xlabel('年份');
ylabel('余额（元）');
gtext('x0=200000,r=0.4%,c=1000');

[x,nM]=Annuity(300000,0.004,1000,20);
x=round(x);%将每月金额四舍五入取整
%打印出每岁末拥有的余额
for i=1:floor(nM/12)
    fprintf('%d岁末，余额%d元\n',60+i,x(12*i+1));
end
k=0:floor(nM/12);
plot(k,x(12*k+1),'r*',k,x(12*k+1),'b-');
grid on;
title('每岁末尚有养老基金');
xlabel('年份');
ylabel('余额（元）');
gtext('x0=300000,r=0.4%,c=1000');
%{
%打印最后一年每月的余额
fprintf('\n');
fprintf('%d岁每月月末养老金余额',60+i+1);
for i=1:nM-(floor(nM/12)*12+1)
    fprintf('%d月末，余额%d元\n',i,x(floor(nM/12)*12+1+i));
end;
%}


