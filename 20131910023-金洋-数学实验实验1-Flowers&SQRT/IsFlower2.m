function answer= IsFlower2( k ) 
  hundred=floor(k/100);
  ten=floor(k/10)-floor(k/100)*10;
  sigle=k-hundred*100-ten*10;
  answer=hundred^3+ten^3+sigle^3; 
end
%调用此函数时将 Flowers M文件中的第四行改为 if (i==IsFlower2(i))