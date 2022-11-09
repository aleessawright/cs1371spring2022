function [repeatedNum] = front3(vec, reps)
repeatedNum = []
    for i = 1:reps
        if length(vec) >= 3 
            for r = reps
            three = vec(1:3) %first 3 values in vec
            repeatedNum = [repeatedNum, three]
            end
        else
            for r = reps
                %first = vec(1:3)
            repeatedNum = [repeatedNum, vec]
            end
        end
    end
    %repeatedNum = [repeatedNum]
end