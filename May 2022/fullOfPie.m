function [num,day,newCA] = fullOfPie(ca)
headers = ca(1,:)%not in order
data = cell2mat(ca(2:end,:))
mask = data > 500
num = sum(sum(data))

[ave, inds] = max(mean(data))
day = headers{inds}

ave2 = mean(data,2)
col = [{'Average'}; num2cell(ave2)]
ca = [ca,col]

[sorted, inds2] = sort(ave2, 'd')
data = data(inds2)

end
% 
% function [numDays, day, newCa] = fullOfPie(ca)
%     header = ca(1,:)
%     data = cell2mat(ca(2:end,:))
%     % 1. Number of days exceeded 500
%     mask = data > 500
%     numDays = sum(sum(mask))
%     % 2. Day with highest average
%     avgs = mean(data)
%     [~, ind] = max(avgs)
%     day = header{ind}
%     % 3. New Column with Averages
%     rowAvgs = mean(data, 2)
%     data = [data num2cell(rowAvgs)]
%     header = [header {'Average'}]
%     % 4. Sort array based on row averages
%     [~, inds] = sort(rowAvgs, 'd')
%     data = data(inds,:)
%     newCa = [header; data]
% end