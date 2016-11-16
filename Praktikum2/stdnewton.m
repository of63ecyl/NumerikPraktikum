function [ xn,found,iter] = stdnewton( x0, f, fdx, maxIter, tol )
% STDNEWTON Implementation of the standard newton method
% to solve f(x) = 0

% Input: 
% x0 initial value
% f function handle for function set to zero
% fdx function handle for the derivative of f
% maxIter maximal number of iterations
% tol tolerance

% Output: 
% xn Root of the function
% found 0 if no root is found 1 if root is found

xCur = x0;

for i = 1:maxIter
    f_xCur = feval(f,xCur);
    fPrime_xCur = feval(fdx,xCur);
    
    xNew = xCur - (f_xCur / fPrime_xCur);
    
    if(abs(xNew-xCur) <= tol)
        xn = xNew;
        found = 1;
        iter = i;
        return;
    end
    
    xCur = xNew;
end 

found = 0;
xn = xNew;
iter = maxIter;