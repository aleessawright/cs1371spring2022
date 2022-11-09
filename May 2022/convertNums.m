function [fixed] = convertNums(vec)
fixed = [];
    for x = 1:length(vec)
        if mod(vec(x), 3) == 0 & mod(vec(x),5) == 0
            fixed = [fixed,vec(x)];
        elseif mod(vec(x), 3) == 0
            fixed = [fixed,100];
        elseif mod(vec(x), 5) == 0
            fixed = [fixed,-100];
        else
            fixed = [fixed,vec(x)];
        end
    end
end