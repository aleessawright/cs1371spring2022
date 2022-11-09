function inscribeCircle(side)
x1 = [side,-side,-side,side,side];
y1 = [side,side,-side,-side,side];
plot(x1,y1);
%axis(-2*side, 2*side,-2*side, 2*side)
hold on
r = side./2;
th = linspace(0,2*pi);
y = r.* sin(th);
x = r.* cos(th);
plot(x,y)
axis square
end

% r = 5;
% th = linspace(0, 2*pi);
% x = r.*cos(th) + 2 % --> +/- center shift
% y = r.*sin(th) + 4
% plot(x,y)
% axis square

% x = [.5,-.5,-.5,.5,.5];
% y = [.5,.5,-.5,-.5,.5];
% plot(x,y,'r-')
% axis([-1,1,-1,1])
% axis square