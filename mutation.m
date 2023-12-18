function pop = mutation (novPop , m , n , pMu)

pop = novPop;
 for i=1:m
     if randi(1) > pMu

         index = randi(n);
         tab = pop (i,:);

         if tab(index) == 0
             tab(index) = 1;
         else 
             tab(index) = 0;
         end    

         pop(i,:) = tab ;
     end  
     
 end    
