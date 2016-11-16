% Praktikum 2 Aufgabe 2c
clc 
clear all
close all
[xn1, found1, iter1] = stdnewton(9,'f1','f1dx',200,0.001);
%%
clc 
clear all
close all
[xn2, found2, iter2] = stdnewton(2,'f2','f2dx',200,0.001);
%%
clc 
clear all
close all
[xn3, found3, iter3] = stdnewton(0,'f3','f3dx',200,0.001);
%%
clc 
clear all
close all
[xn4, found4, iter4] = stdnewton(0.5,'f4','f4dx',200,0.001);