t=-2:0.05:2;
x=t;
y=t;
n=length(t);
for i=1:n
    for j=1:n
        if(x(i)^2+y(j)^2<=1)
            subplot(2,2,1),plot (x(i),y(j),'.'),hold on
        end
        if((x(i)-0.5)^2+y(j)^2<=1)
            subplot(2,2,2),plot (x(i),y(j),'.'),hold on
        end
        if(x(i)^2+y(j)^2<=1)&&((x(i)-0.5)^2+y(j)^2<=1)
            subplot(2,2,3),plot (x(i),y(j),'.'),hold on
        end
        if(x(i)^2+y(j)^2<=1)||((x(i)-0.5)^2+y(j)^2<=1)
            subplot(2,2,4),plot (x(i),y(j),'.'),hold on
        end
    end
end
subplot(2,2,1),title('x^2+y^2<=1');
subplot(2,2,2),title('(x-0.5)^2+y^2<=1');
subplot(2,2,3),title('x^2+y^2<=1 ¡É (x-0.5)^2+y^2<=1');
subplot(2,2,4),title('x^2+y^2<=1 ¡È (x-0.5)^2+y^2<=1');