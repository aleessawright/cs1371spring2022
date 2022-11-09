function [farthest] = apart(str)
dIFF = diff(str)
[mAXX, inds] = max(dIFF)
farthest = [str(inds) str(inds+1)]
end