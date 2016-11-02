% exercise2 script
h1 = 0.2;
h2 = 0.1;
h3 = 0.05;

lim = 1;

t = linspace(0,1);
t1 = 0:h1:lim;
t2 = 0:h2:lim;
t3 = 0:h3:lim;

y0 = 1;

inputFun = @(t,c) 1./(t + c);

y =  1./(t + 1);
y1 = expl_euler(inputFun, t1, y0);
y2 = expl_euler(inputFun, t2, y0);
y3 = expl_euler(inputFun, t3, y0);

figure(1)
plot(t1,y1,'*-')
hold on
plot(t2,y2,'*-')
plot(t3,y3,'*-')
plot(t,y)
hold off
