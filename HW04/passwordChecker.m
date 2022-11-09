function [strongEnough] = passwordChecker(password)
    capital = strfind(password, password >= 'A') & strfind(password, password <= 'Z')
    numCap = length(capital) ~= double(0)
    number = strfind(password >= '0' & password <= '9');
    numNum = length(number) ~= double(0);
    special = strfind(password < 'a' | password >'z' | password < 'A' | password > 'Z');
    numSpecial = length(special) ~= double(0);
    strongEnough = numCap & numNum & numSpecial;
    end