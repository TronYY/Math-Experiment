function answer= IsFlower( k )
  %求百位数字
  hundred=floor(k/100);
  %求十位数字；此处用到求余运算mod(n,m),例mod(9,7)=2;
  ten=floor(mod(k,100)/10);
  %求个位数字
  sigle=mod(k,10);
  answer=hundred^3+ten^3+sigle^3;
end