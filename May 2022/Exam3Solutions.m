%% Exam 3 Solutions

%% Question 1 - tracing

% Let me know if you want me to go over this with you

%% Question 2 - long2text

function [ ] = long2text(ca, filename)
    fhw = fopen(filename, 'w')
    for x = 1:length(ca)
        if length(ca{x}) >= 6
            fprintf(fhw, [ca{x} '\n'])
        end
    end
    fclose(fhw)
end

% OR get a new ca of the things to want to print, then print in another
% loop - just depends on what makes you more comfortable

function [ ] = long2text(ca, filename)
    newCa = [ ]
    for x = 1:length(ca)
        if length(ca{x}) >= 6
            newCa = [newCa ca{x}]
        end
    end
    fhw = fopen(filename, 'w')
    for x = 1:length(newCa)
        fprintf(fhw, [newCa{x} '\n'])
    fclose(fhw)
    end
end

%% Question 3 - textMin

function [minn] = textMin(filename)
    fh = fopen(filename)
    line = fgetl(fh)
    vec = [ ]
    while ischar(line)
        vec = [vec str2num(line)]
        line = fgetl(fh)
    end
    fclose(fh)
    minn = min(vec)
end

% OR - can determine the min in the loop

function [minn] = textMin(filename)
    fh = fopen(filename)
    line = fgetl(fh)
    minn = str2num(line)
    while ischar(line)
        if str2num(line) > minn
            minn = str2num(line)
        end
        line = fgetl(fh)
    end
    fclose(fh)
end

%% Question 4 - overWarhol

function [ ] = overWarhol(filename)
    img = imread(filename)
    tL = img(1:end/2, 1:end/2, :)
    tR = img(1:end/2, end/2+1:end, :)
    bL = img(end/2+1:end, 1:end/2, :)
    bR = img(end/2+1:end, end/2+1:end, :)
    
    gray = mean(double(tR), 3)
    gray3D = cat(3, gray, gray, gray)
    newTR = uint8(gray3D)
    
    newBL = 255 - bL
    newBR = bR(:, end:-1:1, :)
    
    newImg = [tL, newTR; newBL, newBR]
    newFilename = 'warhol_update.png'
    imwrite(newImg, newFilename) 
end


%% Question 5 - cerealCount

% If you assume there are not a set amount of indices in the structure
% array, do it this way (this is how the problem was intended)

function [ca] = cerealCount(filename, st)
    img = imread(filename)
    r = img(:, :, 1)
    g = img(:, :, 2)
    b = img(:, :, 3)
    ca = [ ]
    for x = 1:length(st)
        color = st(x).color
        mask = r == color(1) & g == color(2) & b == color(3)
        numPix = sum(sum(mask))
        boxSize = st(x).size
        numBox = round(numPix / boxSize)
        boxName = st(x).name
        newCol = [{boxName}; {numBox}]
        ca = [ca newCol]
    end
end

% Since the problem said there would be 4 headers, you can "hardcode" for
% only 4 structures in the array

function [ca] = cerealCount(filename, st)
    img = imread(filename)
    r = img(:, :, 1)
    g = img(:, :, 2)
    b = img(:, :, 3)

    colorF = st(1).color
    maskF = r == colorF(1) & g == colorF(2) & b == colorF(3)
    numPixF = sum(sum(maskF))
    boxSizeF = st(1).size
    numBoxF = round(numPixF / boxSizeF)
    
    colorR = st(2).color
    maskR = r == colorR(1) & g == colorR(2) & b == colorR(3)
    numPixR = sum(sum(maskR))
    boxSizeR = st(2).size
    numBoxR = round(numPixR / boxSizeR)

    colorM = st(3).color
    maskM = r == colorM(1) & g == colorM(2) & b == colorM(3)
    numPixM = sum(sum(maskM))
    boxSizeM = st(3).size
    numBoxM = round(numPixM / boxSizeM)
    
    colorS = st(4).color
    maskS = r == colorS(1) & g == colorS(2) & b == colorS(3)
    numPixS = sum(sum(maskS))
    boxSizeS = st(4).size
    numBoxS = round(numPixS / boxSizeS)
    
    numBoxes = [numBoxF numBoxR numBoxM numBoxS]
    names = {st.name}
    ca = [names; cell2mat(numBoxes)]
    
end

    