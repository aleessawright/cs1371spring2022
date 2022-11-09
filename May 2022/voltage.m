function [low] =voltage(vec)
mask = vec > 5 & vec <= 12
[low, ind] = min(vec(mask))
end