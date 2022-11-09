function [log] = sumOrProd (x,y)
sum = x + y;
prod = x .* y;
log = sum > prod; 
end