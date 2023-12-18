function result = calculerBest(pop , m , n  , best)
   
   result = best ;
   for i=1:m
     if pop(i,n+1) > result 
        result = pop(i,n+1);
     end    
   end    

