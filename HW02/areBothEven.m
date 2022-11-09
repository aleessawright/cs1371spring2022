function [even] = areBothEven(first, second)
    even = mod(first,2) == 0 & mod(second, 2) == 0;
end
