function [out] = lastLower(sent)
spaces = strfind(sent, ' ')
last = lower(sent(spaces-1))
last2 = lower(sent(end))
out = [last last2]
end

% function [fixed] = lastLowerCase(str)
%     spaces = strfind(str, ' ')
%     lastLets = [spaces-1 length(str)]
%     lowered = lower(str(lastLets))
%     str(lastLets) = lowered
%     fixed = str
% end