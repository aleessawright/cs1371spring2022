function [count] = find2020(vec)
count = 0
for i = 1:length(vec)-3
    if vec(i) == 2
        if vec(i+1) == 0
            if vec(i+2) == 2
                if vec(i+3) == 0
                    count = count + 1
                end
            end
        end
    end
end
end