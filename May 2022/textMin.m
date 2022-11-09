function [minN] = textMin(file)
fh = fopen(file)
line = fgetl(fh)
vec = []
while ischar(line)
    vec = [vec, str2num(line)]
    line = fgetl(line)
end
[minN, inds] = min(vec)
fclose(fh)
end