%% Aufgabe 2d
clc 
clear all
close all
[xn, found, iter] = stdnewton(0.5,'f1_f2','dxf1_f2',200,0.001);

x = linspace(0,pi,1000);
y1 = feval('f1',x);
y2 = feval('f2',x);

ySchnitt = feval('f1',xn);

figure(1)
plot(x,y1,'-g');
hold on
plot(x,y2,'-r');
plot(xn,ySchnitt,'*b');