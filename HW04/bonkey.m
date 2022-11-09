function [correctOrder, subCount] = bonkey(order,subs)
    regularChar = (lower(order) >= 'a' & lower(order) <= 'z' & lower(order) == ' ')
    upperCase = subs >= 'A' & subs <= 'Z'
    subCount =sum(upperCase)
    % length() would give you the length of trues and falses in subs
    onlyCapitals = subs(upperCase)
    order(~regularChar) = onlyCapitals
    correctOrder = upperOrder
end