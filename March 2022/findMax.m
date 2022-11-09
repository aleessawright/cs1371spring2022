function [maxx] = findMax(vec)
maxx = vec(1)
i = 1
    while i <= length(vec)
        if vec(i) > maxx
            maxx = vec(i)
        end
        i = i + 1
    end
end