function x=cat(x0,n,r)%建立名为cat的函数M文件，x0,n,r分别代表初始山猫数量、年份、年平均增长率
a=1+r;
x=x0;
for k=1:n
    x(k+1)=a*x(k)-1;
end