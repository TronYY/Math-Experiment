function answer= IsFlower( k )
  %���λ����
  hundred=floor(k/100);
  %��ʮλ���֣��˴��õ���������mod(n,m),��mod(9,7)=2;
  ten=floor(mod(k,100)/10);
  %���λ����
  sigle=mod(k,10);
  answer=hundred^3+ten^3+sigle^3;
end