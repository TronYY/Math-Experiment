function Go(BankNow,step,Boat,M)
[row,~]=size(BankNow);
for i=1:4
    %״̬ת�ƣ�ʹ��������㣬���ɵñ���״̬���ɴ����̺�õ���״̬
    Across=xor(BankNow(step,:),Boat(i,:));
    %����ﵽĿ��״̬����õ�һ�⣬�˳�
    if (Across==[0 0 0 0])
        PrintWay(step,Boat(i,:));%�����ǰ���Ӿ���
        fprintf('Successful!\n\n');%����
        break;
    elseif (Safe(Across,M))%��ǰ�����Ƿ���а�ȫ
        PrintWay(step,Boat(i,:));
        if Different([BankNow;Across])%��״̬�Ƿ��Ѿ�����
            Go([BankNow;Across],step+1,Boat,M)%������һ�ζɺ�
        else
            fprintf('This plan is not available!\n\n')%�����У����������ɺӷ�ʽ
        end
    end
end
end

