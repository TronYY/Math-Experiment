function x=FlowerN(n)%n����nλ����x�洢ˮ�ɻ���
num=0;%num��ʾˮ�ɻ����ĸ���
for i=10^(n-1):9^n*n%
    y=i;
    s=0;
    %��ȡÿһλ��������n����
    for j=1:n
        sigle=mod(y,10);%��ȡ��ĩλ
        y=floor(y/10);%��ĩλ�޳�
        s=s+sigle^n;%�ۼ�
        %һ����ǰ�ۼ�ֵ����i�����ټ����ۼ�
        if (s>i) 
            break 
        end
    end
    %���������������
    if s==i
        num=num+1;
        x(num)=s;
    end
end