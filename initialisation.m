function mat = initialisation(m , n)
 
mat = randi([0,1] , [m , n+1]);
%we create matrix m*n+1 , we add a place to save fitness value of each
%chomosome