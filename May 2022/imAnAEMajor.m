function [vel,acc] = imAnAEMajor(t)
pos = -.5.*(t-12).^2+30
vel = diff(pos)./diff(t)
acc = diff(vel)./diff(t(2:end))
end