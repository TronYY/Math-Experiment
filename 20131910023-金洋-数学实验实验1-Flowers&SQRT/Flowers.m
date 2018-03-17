clear;
clc;
k=0;
for i=100:999
    % function IsFlower(i) 用来返回i的每一位上数字的立方和；
    if (i==IsFlower(i)) 
        k=k+1;% k为水仙花数个数
        x(k)=i;% 一维向量x存储了所有出现的水仙花数
    end
end
%展示所有三位数的水仙花数
x
