[x,nM]=Annuity(50000,0.004,1000,20);
x=round(x);%��ÿ�½����������ȡ��
%��ӡ��ÿ��ĩӵ�е����
for i=1:floor(nM/12)
    fprintf('%d��ĩ�����%dԪ\n',60+i,x(12*i+1));
end
k=0:floor(nM/12);
plot(k,x(12*k+1),'r*',k,x(12*k+1),'b-');
grid on;
title('ÿ��ĩ�������ϻ���');
xlabel('���');
ylabel('��Ԫ��');
gtext('x0=50000,r=0.4%,c=1000');hold on


[x,nM]=Annuity(100000,0.004,1000,20);
x=round(x);%��ÿ�½����������ȡ��
%��ӡ��ÿ��ĩӵ�е����
for i=1:floor(nM/12)
    fprintf('%d��ĩ�����%dԪ\n',60+i,x(12*i+1));
end
k=0:floor(nM/12);
plot(k,x(12*k+1),'r*',k,x(12*k+1),'b-');
grid on;
title('ÿ��ĩ�������ϻ���');
xlabel('���');
ylabel('��Ԫ��');
gtext('x0=100000,r=0.4%,c=1000');

[x,nM]=Annuity(200000,0.004,1000,20);
x=round(x);%��ÿ�½����������ȡ��
%��ӡ��ÿ��ĩӵ�е����
for i=1:floor(nM/12)
    fprintf('%d��ĩ�����%dԪ\n',60+i,x(12*i+1));
end
k=0:floor(nM/12);
plot(k,x(12*k+1),'r*',k,x(12*k+1),'b-');
grid on;
title('ÿ��ĩ�������ϻ���');
xlabel('���');
ylabel('��Ԫ��');
gtext('x0=200000,r=0.4%,c=1000');

[x,nM]=Annuity(300000,0.004,1000,20);
x=round(x);%��ÿ�½����������ȡ��
%��ӡ��ÿ��ĩӵ�е����
for i=1:floor(nM/12)
    fprintf('%d��ĩ�����%dԪ\n',60+i,x(12*i+1));
end
k=0:floor(nM/12);
plot(k,x(12*k+1),'r*',k,x(12*k+1),'b-');
grid on;
title('ÿ��ĩ�������ϻ���');
xlabel('���');
ylabel('��Ԫ��');
gtext('x0=300000,r=0.4%,c=1000');
%{
%��ӡ���һ��ÿ�µ����
fprintf('\n');
fprintf('%d��ÿ����ĩ���Ͻ����',60+i+1);
for i=1:nM-(floor(nM/12)*12+1)
    fprintf('%d��ĩ�����%dԪ\n',i,x(floor(nM/12)*12+1+i));
end;
%}


