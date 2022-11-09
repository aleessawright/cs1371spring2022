function [num] = humid(per)
mask = per>.8
num = sum(mask)
end