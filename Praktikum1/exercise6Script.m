% exercise6 script

% schrittweiten
h1 = 0.1;
h2 = 0.5;
h3 = 1;
h4 = 2;
h5 = 3;

% zeitvektoren
lim = 20;
t = linspace(0,lim);
t1 = 0:h1:lim;
t2 = 0:h2:lim;
t3 = 0:h3:lim;
t4 = 0:h4:lim;
t5 = 0:h5:lim;

% anfangswert
y0 = 4;

% berechnung der ergebnisse
y =  -exp(-t) +5 ;
y1 = expl_euler('bspFun2', t1, y0);
y2 = expl_euler('bspFun2', t2, y0);
y3 = expl_euler('bspFun2', t3, y0);
y4 = expl_euler('bspFun2', t4, y0);
y5 = expl_euler('bspFun2', t5, y0);

% plots
figure(1)
plot(t,y)
hold on
plot(t1,y1,'*-')
plot(t2,y2,'*-')
plot(t3,y3,'*-')
plot(t4,y4,'*-')
plot(t5,y5,'*-')
hold off