function [stdev] = myStdev (x1,x2,x3,x4,x5)
mean = (x1 + x2 + x3 + x4 + x5)/5;
stdev = sqrt(((x1 -mean)^2 + (x2 - mean)^2 + (x3 - mean)^2 + (x4 - mean)^2 + (x5 - mean)^2)/5);
end