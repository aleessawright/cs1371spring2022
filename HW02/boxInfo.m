function [Af,As,At,V] = boxInfo (l,w,h)
Af = l .* h;
% area of the front of the box

As = h .* w;
%area of one of the sides of the box

At = l .* w;
%area of the top of the box

V = l .* w .* h;
%volume of box

end