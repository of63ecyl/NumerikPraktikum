function [ y ] = impl_euler_fsolve( RHSfun, t, y0 ,maxIter,tol )
% Implementation of the implicit euler method using fsolve

% Input: 
% RHSfun function handle for the right hand side function (fun)
% t Vector with all the time evaluation points
% y0 initial value
% maxIter maximal number of iterations for fsolve
% tol tolerance to find the root of the
% function for fsolve 

% Output: 
% y approximate solution at each time step

y = zeros(1,length(t)-1);
y(1) = y0;

h = diff(t);
for n = 1:length(t)-1
    f_handle = @(x) y(n) - x + h(n)*feval(RHSfun,x);
    [y(n+1),~,exitflag] = fsolve(f_handle,y(n));%,optimoptions('fsolve','iter',maxIter,'OptimalityTolerance',tol));
end

if exitflag == 1
    disp('fsolve converged to a root.');
end

if exitflag == 0
    disp('Too many function evaluations or iterations.');
end