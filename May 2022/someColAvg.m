function [ave] = someColAvg(arr)
mask = arr(1,:)>=0
ave = mean(arr(:,mask),1)
end