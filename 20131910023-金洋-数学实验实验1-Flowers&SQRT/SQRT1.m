function answer=SQRT1(a)
%迭代公式 X(n+1)=(X(n)+a/X(n))/2;
%使用for 循环，迭代10次；一旦循环中相邻两个迭代值的绝对值小于10^-5时结束迭代
%本函数只用两个存储变量X,Y；Y存储上一次迭代结果，X存储当前迭代结果；
Y=2;%初始值，相当于公式中的x(0)
for i=1:10
    X=1/2*(Y+a/Y);
    %若没有此break判断语句，则在迭代10次之后结束迭代运算，得到结果；
    %if (abs(X-Y)<10^-5) break;
    %end 
    %X赋给Y，进入下一次迭代
    Y=X;
end;
answer=X;