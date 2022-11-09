function [newVec] = concatFlipped(vec)
    flipped = vec(end:-1:1)
    newVec = [vec, flipped]
end