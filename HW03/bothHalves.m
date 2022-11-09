function [halfOne, halfTwo] = bothHalves(vec)
    halfOne = vec(1:end/2);
    halfTwo = vec(end/2 + 1:end);
end