function [sum, prod, mean] = allMath(num1, num2, num3)
    sum = (num1 + num2 + num3);
    prod = (num1 * num2 * num3);
    mean = (sum/3);
    mean = floor(mean);
end