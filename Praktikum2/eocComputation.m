function [eoc, err1] = eocComputation(h1,h2,val1,val2,val3)
err1 = errorComputation(val1,val2);
err2 = errorComputation(val2,val3);
eoc = (log(err1/err2)/log(h1/h2));