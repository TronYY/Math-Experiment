function answer=SQRT2(a)
% ��whileѭ����ֻ�ڵ�������������ֵ�ľ���ֵС��10^-5ʱ��������
Y=2;
X=1/2*(Y+a/Y);
while (abs(X-Y)>=10^-5)
    Y=X;
    X=1/2*(Y+a/Y);
end;
answer=X;