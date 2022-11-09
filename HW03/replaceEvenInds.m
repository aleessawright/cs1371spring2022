function [new] = replaceEvenInds(vec)
    range = max(vec) - min(vec);
    vec(2:2:end) = range;
    new = vec;
end
% takes in a vector and replaces all of the values at the even indices with
% the range of values in the vector