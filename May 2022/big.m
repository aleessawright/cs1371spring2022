function [vol,modelFound,ave] = big(models,areas,height)
vol = areas.*height;
ave = round(mean(vol),2)
mask = vol>ave
[vol,ind] = sort(vol(mask))
correct=models(mask)
modelFound = correct(ind)
end

%% Question 6 - bigBoxesA

% function [volList, modelList, volAvg] = bigBoxesA(modelTypes, topAs, h)
%     vols = topAs .* h %get the volumes
%     % Get the average
%     avg = mean(vols)
%     volAvg = round(avg, 2)
%     % Use the average to get out right volumes, then sort them
%     mask = vols > volAvg
%     bigVols = vols(mask)
%     [volList, inds] = sort(bigVols)
%     % Use the mask to get out the corresponding models, then sort them in
%     % same order as volumes
%     rightModels = modelTypes(mask)
%     modelList = rightModels(inds)
% end
