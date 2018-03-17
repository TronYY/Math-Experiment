t=-2:0.05:2;
x=t;
y=t;
n=length(t);
for i=1:n
    for j=1:n
        if(x(i)^2+y(j)^2<=1)
           plot3(x(i),y(j),5),hold on
        end
        
    end
end
