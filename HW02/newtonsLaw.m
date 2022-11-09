function [a,F] = newtonsLaw (vi,vf,t,m)
a = (vf - vi) ./ t;
F = m .*a;
end