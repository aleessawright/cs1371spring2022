function [out] = sortByLast(arr)
    [~, indices] =  sort(arr(:, end), 'd') %~ means i don't care
    sarray = arr(inds, :)
end