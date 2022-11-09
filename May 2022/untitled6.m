function [modified] lastLowerCase(vec)
modified = []
[word,rest] = strtok(vec)
while ~isempty(word)
    word(end) = lower(word(end));
    modified = [modified, word ' '];
    [word, rest] = strtok(rest);
end
modified = [];
end