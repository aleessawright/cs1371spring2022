function [A] = doorArea (w,h)
rect = w .* h;
scirc = (pi .* (w ./ 2).^ 2) ./ 2;
A = round(rect + scirc);
end