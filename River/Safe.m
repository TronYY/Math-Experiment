%��ǰ�����Ƿ���а�ȫ
function [isSafe] = Safe( Across,M )
isSafe=0;
for i=1:10
    if (Across==M(i,:))
        isSafe=1;
        break;
    end
end

end

