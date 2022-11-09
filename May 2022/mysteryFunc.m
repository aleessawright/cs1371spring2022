%question 4
%part 1, Purpose = B
%part 2
function out = mysteryFunc(vec)
out = 0
x = 1
while x < length(vec)
    y = 1
    while y < length(vec)
        if mod(vec(x)*vec(y),2) ==0
            out = out + 1;
        end
        y = y+1
    end
    x = x+1
end