function [odd] = deleteEvenInds(vec)    
odd = []
i = 0
while i <= length(vec)
    i = i + 1
    if mod(i,2) == 1
      odd = [odd, vec(i)]
    end
end
end

