function index = calculerMax(TabPi , m )
 
max = TabPi(1);
index = 1;

for i=2:m
    if max<TabPi(i)
      max = TabPi(i);
      index = i ;
    end
end

