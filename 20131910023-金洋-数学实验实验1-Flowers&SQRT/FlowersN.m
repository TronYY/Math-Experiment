function x=FlowerN(n)%n代表n位数，x存储水仙花数
num=0;%num表示水仙花数的个数
for i=10^(n-1):9^n*n%
    y=i;
    s=0;
    %提取每一位数，并求n次幂
    for j=1:n
        sigle=mod(y,10);%提取出末位
        y=floor(y/10);%将末位剔除
        s=s+sigle^n;%累加
        %一旦当前累加值大于i，则不再继续累加
        if (s>i) 
            break 
        end
    end
    %满足条件，则添加
    if s==i
        num=num+1;
        x(num)=s;
    end
end