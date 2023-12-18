function novPop = calculerFuncObj (pop , m , n)

novPop = pop ;
%one la function 2*x+1
for i=1:m

    numberInBin = "";
    for j=1:n
        numberInBin = numberInBin + pop(i,j);
    end    
    %convert bin value of chro to dicimal
    numberInDec = bin2dec(numberInBin);
    %we calculate the function number
    func = 2 * numberInDec + 1;
    %save it in the last place of matrix 
    novPop(i,n+1) = func ;

end    











