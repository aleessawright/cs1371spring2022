function [strongEnough] = passwordChecker(password)
    capitals = password >= 'A' & password <= 'Z';
    numCaps = sum(capitals);

    nums = password >= '0' & password <= '9';
    numNums = sum(nums);

    %specs = password < '0' | password > '9' & password < 'A' | password >= '{' & password <= '~'
    specs = ~capitals & ~nums;
    numsSpecs = sum(specs);
    
    strongEnough = numCaps ~= 0 & numNums ~= 0 & numsSpecs ~= 0;
end