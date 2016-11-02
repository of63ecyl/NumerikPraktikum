% exercise 2
function y = expl_euler(inputFun, t, y0)

y = zeros(1,length(t)-1);
y(1) = y0;

h = diff(t);

tmp = zeros(1,length(t)-1);

for n = 1:length(t)-1
    tmp = feval(inputFun,y(n));
    y(n+1) = y(n) + h(n) * tmp;
end
  
end