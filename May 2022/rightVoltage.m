function [low] = rightVoltage(volt)
mask = volt > 5 & volt <= 12
[low, inds] = min(volt(mask))
end