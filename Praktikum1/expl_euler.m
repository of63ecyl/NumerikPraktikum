% exercise 2
function y = expl_euler(inputFun, t, y0)

y = zeros(1,length(t)-1);
y(1) = y0;

h = diff(t(1:2));

tmp = zeros(1,length(t)-1);

for n = 1:length(t)-1
    tmp(n) = feval(inputFun,t(n),1/y0);
    y(n+1) = y(n) + h * tmp(n);
end
  
end