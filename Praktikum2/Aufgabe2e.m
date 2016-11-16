% Aufgabe 2e
%%
clc 
clear all
close all
%%
x01 = 0.1;
tic
[xn1, found1, iter1] = stdnewton(x01,'f4','f4dx',400,1e-6);
timeNewton1 = toc;
%%
tic
x02 = 1.4;
[xn2, found2, iter2] = stdnewton(x02,'f4','f4dx',400,1e-6);
timeNewton2 = toc;
%%
tic
xnSolve1 = fsolve(@f4,x01);
timeSolver1 = toc;
%%
tic
xnSolve2 = fsolve(@f4,x02);
timeSolver2 = toc;
%%
x = linspace(-2,2,1000);
y4 = feval('f4',x);

figure(1)
plot(x,y4,'-g');
grid on