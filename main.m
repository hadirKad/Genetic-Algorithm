clc;

%etap 01 all paramater that we need 
%crossover index
CI= 0.01;
%mutation index
MI= 0.07;
%the number of iteration
itr = 20;
%the number of  chromosomes
m = 4 ;
%the number of bites needs to code the max value of x
%x[0 , 31] 
n=5;
%the value of x that give in as the best result 
best = 0;
%we use a table to save each best x value we get so we can draw it in figure
bestTab = zeros(1,itr);


%initialisation
pop = initialisation(m , n );

%evaluation step
%calculer Func Obj
pop = calculerFuncObj(pop , m , n );
%calculate the best value of x 
best = calculerBest(pop , m , n , best);



for i=1:itr
    selectionPop = selection(pop , m , n);
    croisementPop = croisement(selectionPop , m , n , CI);
    novPop = [selectionPop ; croisementPop];
    pop = mutation(novPop , m , n , MI);
    pop = calculerFuncObj(pop , m , n );
    best = calculerBest(pop , m , n , best);
    bestTab(i) = best;
end

disp("the best is : ");
disp(best);
disp("x = ");
disp(sqrt(best));
plot(bestTab);




