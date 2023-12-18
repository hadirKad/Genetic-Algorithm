function novPop = selection(pop  , m  , n )

novPop = randi([0,1] , [m/2 , n+1]);

TabPi = functionDeRoulette(pop , m , n);

for i=1:m/2
  index = calculerMax(TabPi , m );
  TabPi(index) = 0 ;
  novPop(i,:) = pop(index ,:);
end



