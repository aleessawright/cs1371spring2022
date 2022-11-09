function [out] = toTheMoon(pos,ts)
    changeTime = (ts(3:end)-ts(1:end-2)) ./ 2
    acceleration = (pos(3:end)+pos(1:end-2)-2.*pos(2:end-1)) ./ (changeTime).^2
    gs = acceleration ./ 9.81
    out = abs(gs) >= 2
    %out = 1
end