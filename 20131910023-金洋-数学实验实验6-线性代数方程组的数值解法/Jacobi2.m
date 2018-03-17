function x=Jacobi(A,b)
diagA=diag(A);%ȡA�ĶԽ���Ԫ��
%����Ax=b�ķ����飬�����������Ϊ���Ϊδ֪�����Ҳ�Ϊ����δ֪������ı��ʽ
AJ=triu(A,1)+tril(A,-1);
for i=1:length(diagA)
    AJ(i,:)=AJ(i,:)./(-diagA(i));
end
newB=b./diagA;

x1=[0 0 0]';%��ֵ��������
x2=AJ*x1+newB;
n=100;%�涨�ĵ�������
precision=0.0001;%�涨�����Ϊ0.0001
step=0;
%���С�ڹ涨ֵ���������ﵽ�涨ֵ���ɽ�������
while ~((norm(x2-x1)<=precision) ||(step>=n))
   x1=x2;
   x2=AJ*x1+newB;
   step=step+1;
end
x=x2;
