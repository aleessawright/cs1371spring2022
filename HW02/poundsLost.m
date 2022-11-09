function [currentWeight] = poundsLost(previousWeight, weightLost)
    per = 1 - (weightLost ./ 100);
    currentWeight = previousWeight .* per;
end