function [pos, neg] = roundedQuad(a, b, c)
% quadratic formula
    out1 = (-b + sqrt(b .^ 2 - 4 .* a .* c)) / (2 .* a);
    out2 = (-b - sqrt(b .^ 2 - 4 .* a .* c)) / (2 .* a);
    pos = round(out1);
    neg = round(out2);
end