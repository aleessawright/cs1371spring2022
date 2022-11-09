function [totalCost] = calculateCostWithTax(cost, tax)
    taxRate = 1 + (tax./ 100);
    totalCost = cost .* taxRate;
end