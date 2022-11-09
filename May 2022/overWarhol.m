function overWarhol(image)
img = imread(image)

topLeft = img(1:end/2,1:end/2,:)
topRight = img(1:end/2, end/2+1:end,:)
botLeft = img(end/2+1:end,1:end/2,:)
botRight = img(end/2+1:end, end/2+1:end,:)

r = topRight(:,:,1)
g = topRight(:,:,2)
b = topRight(:,:,3)

gray = mean(double(topRight),3)
tR = cat(3, uint8(gray),uint8(gray),uint8(gray))

bL = 255-bottomLeft

bR = botRight(:,end:-1:1,:)

img2 = [topLeft, tR;bL,bR]
[name, ext] = strtok(image, '.')
imwrite(img2, [name, '_update', ext])
end

%% Question 4 - overWarhol

% function [ ] = overWarhol(filename)
%     img = imread(filename)
%     tL = img(1:end/2, 1:end/2, :)
%     tR = img(1:end/2, end/2+1:end, :)
%     bL = img(end/2+1:end, 1:end/2, :)
%     bR = img(end/2+1:end, end/2+1:end, :)
%     
%     gray = mean(double(tR), 3)
%     gray3D = cat(3, gray, gray, gray)
%     newTR = uint8(gray3D)
%     
%     newBL = 255 - bL
%     newBR = bR(:, end:-1:1, :)
%     
%     newImg = [tL, newTR; newBL, newBR]
%     newFilename = 'warhol_update.png'
%     imwrite(newImg, newFilename) 
% end

