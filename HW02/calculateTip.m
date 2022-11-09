function [tip] = calculateTip(cost, percentage)
    realPer = percentage ./ 100;
    tip = cost .* realPer;
end