function [newCA] = deleteCol(ca, col)
headers = ca(1,:);
target = strcmp(headers, col);
[r,c] = size(ca);
newCA =[];
for i = 1:r
    newCA = ca(:,~target);
end
end