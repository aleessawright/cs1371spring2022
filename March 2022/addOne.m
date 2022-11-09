function [modVec] = addOne(vec)
i = 1
while i <= length(vec)
    modVec(i) = vec(i) + 1
    i = i + 1
end
end