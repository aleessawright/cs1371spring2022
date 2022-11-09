function [out] = isOneCaptital (str1,str2,str3)
    log1 = (double(str1) > 64) & double(str1) < 91;
    log2 = (double(str2) > 64) & double(str2) < 91;
    log3 = (double(str3) > 64) & double(str3) < 91;
    out = (log1 | log2 | log3) == true;
end