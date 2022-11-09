function [vec] = createVecLoop(num)
i = 1
while i <= length(num)
    vec = rand(num)
end
end