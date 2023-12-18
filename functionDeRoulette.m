function TabPi = functionDeRoulette(pop , m , n )

TabPi = zeros(1,m);
fiTotal = 0 ;

for i=1:m
    fiTotal = fiTotal + pop(i,n+1);
end    

for j=1:m
    TabPi(j) = pop(j,n+1)/fiTotal * 100;
end   
