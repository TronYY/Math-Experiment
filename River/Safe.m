%当前方案是否可行安全
function [isSafe] = Safe( Across,M )
isSafe=0;
for i=1:10
    if (Across==M(i,:))
        isSafe=1;
        break;
    end
end

end

