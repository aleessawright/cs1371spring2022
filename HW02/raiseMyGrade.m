function [t4,log1] = raiseMyGrade (t1,t2,t3)
t4 = (4 .* 90) - (t1 + t2 + t3);
log1 = t4 <= 100;
end