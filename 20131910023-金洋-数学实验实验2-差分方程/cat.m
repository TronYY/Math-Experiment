function x=cat(x0,n,r)%������Ϊcat�ĺ���M�ļ���x0,n,r�ֱ�����ʼɽè��������ݡ���ƽ��������
a=1+r;
x=x0;
for k=1:n
    x(k+1)=a*x(k)-1;
end