function [name] = getName(ca,group)
header = ca(1,:);
names = ca(2:end, 1);
ages = ca(2:end,2);
groups = ca(2:end,3);

groupMask = strcmpi(groups, group)%true in the row that contains the target group
names = names(groupMask)
%ca(~groupMask, :) = []
name = cell2mat(names)
end