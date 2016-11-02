% exercise2 script
h1 = 0.2;
h2 = 0.1;
h3 = 0.05;

lim = 1;

t1 = [0:h1:lim];
t2 = [0:h2:lim];
t3 = [0:h3:lim];

y0 = 1;

inputFun = @(t,c) 1./(t + c);

y1 = expl_euler(inputFun, t1, y0);
y2 = expl_euler(inputFun, t2, y0);
y3 = expl_euler(inputFun, t3, y0);
