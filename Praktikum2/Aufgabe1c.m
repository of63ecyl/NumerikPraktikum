% Praktikum 2, exercise1c script
clc
clear all
close all
%%
% schrittweiten
h = 0.1;
h1 = h/2;
h2 = h/4;
h3 = h/8;
h4 = h/16;
h5 = h/32;
h6 = h/64;
%hVec = [h,h1,h2,h3,h4];

% zeitvektoren
lim = 1;
t = 0:h:lim;
t1 = 0:h1:lim;
t2 = 0:h2:lim;
t3 = 0:h3:lim;
t4 = 0:h4:lim;
t5 = 0:h5:lim;
t6 = 0:h6:lim;

% anfangswert
y0 = 2;
c = 1/y0;

% berechnung der ergebnisse
y = expl_euler('bspFun', t, y0);
y1 = expl_euler('bspFun', t1, y0);
y2 = expl_euler('bspFun', t2, y0);
y3 = expl_euler('bspFun', t3, y0);
y4 = expl_euler('bspFun', t4, y0);
y5 = expl_euler('bspFun', t5, y0);
y6 = expl_euler('bspFun', t6, y0);

[eoc, err] = eocComputation(h,h1,y(end),y1(end),y2(end));
[eoc1, err1] = eocComputation(h1,h2,y1(end),y2(end),y3(end));
[eoc2, err2] = eocComputation(h2,h3,y2(end),y3(end),y4(end));
[eoc3, err3] = eocComputation(h3,h4,y3(end),y4(end),y5(end));
[eoc4, err4] = eocComputation(h4,h5,y4(end),y5(end),y6(end));

% eocVec = [eoc,eoc1,eoc2,eoc3,eoc4];
% errVec = [err,err1,err2,err3,err4];
% 
% figure(1)
% loglog(hVec,eocVec,'--r');
% hold on
% loglog(hVec,errVec,'-b');
% xlim([hVec(end),hVec(1)]);
% ylim([errVec(end),eocVec(1)]);
% hold off