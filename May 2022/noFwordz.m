function [new] = noFwordz(sent)
new = [];
[word, rest] = strtok(sent, ' ')
while ~isempty(word)
    if ~strcmpi(word(1), 'f') %starting with f
        new = [new, word, ' ']
    end 
    [word, rest] = strtok(rest)
end
new(end) = []
end