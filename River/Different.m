%该状态是否已经出现过
function dif=Different(A)
dif=1;
[row,col]=size(A);
for i=1:row-1
    for j=i+1:row
        if (A(j,:)-A(i,:)==[0 0 0 0])
            dif=0;
            return;
        end
    end
end
end

