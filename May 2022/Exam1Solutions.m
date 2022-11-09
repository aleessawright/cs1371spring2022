%% Exam 1 Answers

%% Question 1 - tracing, you got them all correct

%% Question 2 - lastLowerCase

function [fixed] = lastLowerCase(str)
    spaces = strfind(str, ' ')
    lastLets = [spaces-1 length(str)]
    lowered = lower(str(lastLets))
    str(lastLets) = lowered
    fixed = str
end

%% Question 3 - stickyWeather

function [humid] = stickyWeather(vec)
    mask = vec > 0.8
    humid = sum(mask)
    % or length(vec(mask))
end

%% Question 4 - rightVoltage

function [volt] = stickyWeather(vec)
    mask = vec > 5 & vec <= 12
    vec5_12 = vec(mask)
    volt = min(vec5_12)
end

%% Question 5 - farApart

function [pair] = farApart(lets)
    dif = diff(lets)
    [~, ind] = max(dif)
    pair = [lets(ind) lets(ind+1)]
end

%% Question 6 - bigBoxesA

function [volList, modelList, volAvg] = bigBoxesA(modelTypes, topAs, h)
    vols = topAs .* h %get the volumes
    % Get the average
    avg = mean(vols)
    volAvg = round(avg, 2)
    % Use the average to get out right volumes, then sort them
    mask = vols > volAvg
    bigVols = vols(mask)
    [volList, inds] = sort(bigVols)
    % Use the mask to get out the corresponding models, then sort them in
    % same order as volumes
    rightModels = modelTypes(mask)
    modelList = rightModels(inds)
end












