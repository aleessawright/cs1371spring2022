function [E] = youngsModulus (F,A,dL,L)
stress = F/A
strain = dL/L
E = stress/strain;
end
% F = force
% A = Area
% dL = change in length
% L = original length
% E = Young's Modulus