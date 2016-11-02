% exercise3 script
clc
clear all
close all


% schrittweiten
h = 1/3;

% zeitvektoren
lim = 1;
t = linspace(0,1);
t1 = 0:h:lim;
t2 = 1/3:h:lim;
t3 = 2/3:h:lim;

% anfangswert
y0_1 = 1;

% berechnung der ergebnisse
y =  1./(t + 1);
y1 = expl_euler('bspFun', t1, y0_1);

y0_2 = y1(2);
y2 = 1./(t2 + (1/y0_2)-1/3);

y0_3 = y1(3);
y3 = 1./(t3 + (1/y0_3)-2/3);

% plots
figure(1)
plot(t1,y1,'*-')
hold on
plot(t2,y2,'k--')
plot(t3,y3,'k--')
plot(t,y)
hold off