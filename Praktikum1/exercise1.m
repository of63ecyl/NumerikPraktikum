% Exercise 1c
t = linspace(0,10);
y0 = [1, 0.5, 0.25, 0.125];
c = 1./y0;

y1 = 1./(t + c(1));
y2 = 1./(t + c(2));
y3 = 1./(t + c(3));
y4 = 1./(t + c(4));

y = [y1', y2', y3', y4'];

figure(1)
plot(t,y1,'r-');
hold on
plot(t,y2,'g-');
plot(t,y3,'b-');
plot(t,y4,'k-');
hold off

figure(2)
plot(t,y)