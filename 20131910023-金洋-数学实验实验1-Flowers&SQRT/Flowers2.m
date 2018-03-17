clear;
clc;
num=0;
for i=1:9%百位数字1-9
    for j=0:9%十位数字
        for k=0:9%个位数字
            t=i*100+j*10+k;
             %通过三重循环列举三位数的每一位上的数字，再来判断是否满足水仙花数条件
            if (t==i^3+j^3+k^3 )
                num=num+1;
                x(num)=t;
            end
        end
    end
end
x