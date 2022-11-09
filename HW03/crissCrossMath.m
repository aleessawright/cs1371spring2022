function [out] = crissCrossMath (vec1,vec2)
out = vec1(1) .* vec2(end) + vec1(end-1) .* vec2(2);
end