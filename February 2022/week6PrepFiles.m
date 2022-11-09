%%Week 6 Recitation

%Numerical Indexing and Logical indexing for vectors

vec = [5 4 3 53 3 2 5]
vec(3)

mask = vec > 3
vec(mask)

sum(vec)
mean(vec)
max(vec)


%What are arrays
arr= [1 3; 3 4]

vec = [5 6 7]
vec2 = [7 8 9]
longVec = [vec1 vec2] % or [vec1, vec2]
arr = [vec; vec2] % note use a semicolon instead of a comma or just a space

arr2 = [1:3; 4:6]

%You can't do this
%arr = [2 4; 3]

%Different creation methods
ones(1, 3) %[1 1 1]

ones(2,4) % [1 1 1 1; 1 1 1 1]
zeros(2, 3)
rand(3, 5)
true(r,c)
false(r,c)

%You can't linspace or the colon operator (by itself)

%Don't use length for array - use size

arrExp = [3 4 5; 5 5 5]

length(arrExp) %gives us back the length of the vector

[rows, cols] = size(arrExp)

sz = size(arrExp) %outputs a 1x2 vector

%LHS = RHS
%Where <- What

arr = [1 2 3 4; 
    5 6 7 8; 
    9 10 11 12;
    13 14 15 16]

val = arr(end,end) % 16
val2 = arr(1, end) % 4

val3 = arr([1 3], [2 4]) %[2 4; 10 12

val4 = arr(1, 1:end) % [1 2 3 4]
val5 = arr(1, :) % : colon is telling as that we want the whole row or column
%val4 and val5 do the same thing

val6 = arr(:, 3)

%Slicing a vector

firstHalfColumns = arr(:, 1:end/2)
bottomHalf = arr((end/2)+1:end, :)
firstQuadrant = arr(1:end/2, 1:end/2)
secondQuadrant = arr(end/2 + 1:end, 1:end/2)

%% LHS Indexing

%Single value
vec(3,2) = 30 % --> assigns 30 to that index

%Multiple values
arr(end/2+1:end,1:end) = [7 10; 11 16]

%Deleting values
    %Can not delete just one value - have to get rid of the whole col or
    %row
    arr(:,4) = [ ]
    arr(1:end,4) = [ ] % --> no - bad because it goes step-by-step when 
        % running and then it errors

%Linearization
linear = arr(:)
arr(7) % 10

%Transposing an Array
trans = arr(7)

%Reshaping an Array
%reshape(arr, r,c)

newArr = reshape(arr, 2, 8)

% Functions



%% Numerical Indexing
arr = [1 2 3; 4 5 6; 7 8 9]

%% arr(r, c) R.C. Car
arr(2, 3)
arr(2, end)

%Colon operator: means the whole row/colum in that array
arr(1,:)
arr(:,1)

%multiple indicies
arr([1 3], [2 3])

%linear indexing


%% Sorting an Array

skaters = [1 2 3 4 5 6 7 8]
pts1 = [9.7 8.6 7.9 7.5 9.8 7.3 6.9 7.0]
pts2 = [8.9 8.4 9.3 9.2 8.9 7.9 9.0 9.8]
pts3 = [8.5 9.9 7.5 8.2 9.4 7.4 8.1 7.1]
arr = [skaters; pts1; pts2; pts3]

points = arr(2:end,:)
avg = mean(points)
newArr = [arr; avg]

[sortedAvg, inds] = sort(avg, 'd')
orderedSkaters = newArr(:, inds)







