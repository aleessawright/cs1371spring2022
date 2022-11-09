function [vec2] = deleteEvenIndices(vec1)
vec1(2:2:end) = [ ];
vec2 = vec1;
end