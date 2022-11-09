function [newy,exty] = Inter_Extra2(data,extx)
mask = data(:,2) == -9999
newy = interp1(x(~mask),y(~mask),x(mask), 'spline')
data(mask) = newy
exty = interp1(x,data(:,2),extx,'extrap')
end