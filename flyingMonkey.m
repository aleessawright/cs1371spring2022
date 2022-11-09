function [totalt, hordis] = flyingMonkey(file)
subplot(1,3,1)
subplot(1,3,2)
subplot(1,3,3)

x = cell2mat(data(1,:))
y = cell2mat(data(2,:))
maskx = find(x == -999)
x(maskx) = [];
y(maskx) = [];
pos = cumtrapz(x,y); %vector of cummulative positions
newys = interp1(x,y,maskx,"spline");
slow = newys(1) > newys(2)
end