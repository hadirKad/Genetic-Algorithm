function novPop = croisement(pop  , m  , n , pCr  )

novPop = pop;
x = n/2;

for i=1:m/4
  index01 = i;
  index02 = m/4+i;
  tab1 = novPop(index01 ,:);
  tab2 = novPop(index02 ,:);

  if randi(1) > pCr
      parTab1 = tab1(1 : floor(x));
      parTab2 = tab2(1 : floor(x));
      filTab1 = tab1(floor(x+1) : n);
      filTab2 = tab2(floor(x+1) : n);
      tab1 = [parTab1 filTab2 novPop(index01 ,n+1)];
      tab2 = [parTab2 filTab1 novPop(index02 ,n+1)];
  end    

  novPop(index01 , :) = tab1;
  novPop(index02 ,:) = tab2;

end