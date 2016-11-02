% exercise 2
function y = expl_euler(inputFun, t, y0)

y = zeros(1,length(t));
y(1) = y0;

h = diff(t(1:2));


for n = 1:length(t)
    tmp = feval(inputFun,t(n),1/y0);
    y(n+1) = y(n) + h * tmp;
end
  
end