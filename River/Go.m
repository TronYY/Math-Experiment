function Go(BankNow,step,Boat,M)
[row,~]=size(BankNow);
for i=1:4
    %状态转移，使用异或运算，即可得本案状态经渡船过程后得到的状态
    Across=xor(BankNow(step,:),Boat(i,:));
    %如果达到目的状态，则得到一解，退出
    if (Across==[0 0 0 0])
        PrintWay(step,Boat(i,:));%输出当前过河决策
        fprintf('Successful!\n\n');%可行
        break;
    elseif (Safe(Across,M))%当前方案是否可行安全
        PrintWay(step,Boat(i,:));
        if Different([BankNow;Across])%该状态是否已经出现
            Go([BankNow;Across],step+1,Boat,M)%进入下一次渡河
        else
            fprintf('This plan is not available!\n\n')%不可行，继续搜索渡河方式
        end
    end
end
end

