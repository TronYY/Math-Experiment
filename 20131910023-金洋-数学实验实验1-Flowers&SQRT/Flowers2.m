clear;
clc;
num=0;
for i=1:9%��λ����1-9
    for j=0:9%ʮλ����
        for k=0:9%��λ����
            t=i*100+j*10+k;
             %ͨ������ѭ���о���λ����ÿһλ�ϵ����֣������ж��Ƿ�����ˮ�ɻ�������
            if (t==i^3+j^3+k^3 )
                num=num+1;
                x(num)=t;
            end
        end
    end
end
x