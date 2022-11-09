function [log] = multInverse (M,N)
log = (M .* N == 1);
end
% takes in 2 numbers and outputs true fi they are multiplicative inverses
% of one another

%a multiplicative inverse (M) of the number (N) is one that causes M*N to
%equal 1