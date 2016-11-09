% exercise5 script
clear all
close all
clc

% schrittweiten
h1 = 0.2;
h2 = 0.05;

% zeitvektoren
lim = 1;
t = linspace(0,1);
t1 = 0:h1:lim;
t2 = 0:h2:lim;

% anfangswert
y0 = -2;

% berechnung der ergebnisse
y =  1./(t - 0.5);
y1 = expl_euler('bspFun', t1, y0);
y2 = expl_euler('bspFun', t2, y0);

% plots
figure(1)
%plot(t1,y1,'*-')
hold on
%plot(t2,y2,'*-')
plot(t,y)
grid on
hold off