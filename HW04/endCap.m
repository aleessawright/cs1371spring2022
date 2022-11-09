function [n,s] = endCap(str1)
n = length(str1)
str1(end) = upper(str1(end))
s = str1
end