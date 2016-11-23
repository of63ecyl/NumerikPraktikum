function [ y ] = impl_euler(RHSfun,DerRHSfun, t, y0 ,maxIter,tol)
% Implementation of the implicit euler method using newton iteration
% Input: RHSfun function handle for the right hand side function (fun)
%        DerRHSfun derivation of the right hand side function (fun’)
%        t Vector with all the time evaluation points
%        y0 initial value
%        maxIter maximal number of iterations for fsolve
%        tol tolerance to find the root of the
%           function for fsolve
%
% Output: y approximate solution at each time step

y = zeros(1,length(t)-1);
y(1) = y0;

h = diff(t);
for n = 1:length(t)-1
    f_handle = @(x) y(n) - x + h(n)*feval(RHSfun,x);
    fdx_handle = @(x) h(n) * feval(DerRHSfun,x);
    [ y(n+1),found,iter] = stdnewton( y0, f_handle, fdx_handle, maxIter, tol );
end

if found == 1
    disp('converged to a root.');
end

if iter == maxIter
    disp('Too many function evaluations or iterations.');
end




end