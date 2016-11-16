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
...
end