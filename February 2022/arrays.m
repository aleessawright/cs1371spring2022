            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %                  Arrays!                       %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% What are Arrays?
% Arrays are just 2-dimensional vectors (meaning they have multiple rows
% and columns. They are also just matricies. 
% Just like vectors, they are homogenous


%% Creating Arrays 

    %% Direct Entry
    arr = [1 2 3; 4 5 6]
    % a semicolon will differentiate the rows    
 
    %% Concatenation 
    %horizontal
    vec1 = [1;2;3]
    vec2 = [8;3;1]
    arr2 = [vec1 vec2]
 
    %vertical
    vec3 = 1:4
    vec4 = 4:-1:1
    arr3 = [vec3;vec4]

    %BUT WHAT IF
    vec5 = [1 2]
    vec6 = [4 5 6]
    arr4 = [vec5;vec6]
    %this errors, needs to be the same lengths
    
    %what if I just horizontally concatenated these?
    arr5 = [vec5 vec6]

    %% Functions
    %ones,zeros
    onesArr = ones(6,19); %input rows and columns
    
    
    
    
    
%% Math/Logical Operators
%Work the same way with arrays as vectors. Element by element.

addOne = [1 2 3; 4 5 6] + 1
%adds one to every single element

mult = [1 2 3; 4 5 6] .* [1 2 3; 4 5 6]
%first.*first, second.*second, etc...

greaterThan = [1 2 3; 4 5 6] > 2
%array of logicals for each element compared to 2

%horizontal vector and array (applies the operation along the colum)
arr = [3 2 9 1; 4 8 2 1]

vec = [1 2 3 4]

addArr = arr + vec
logArr = arr>vec

%vertical vector and array
vec = [1 2]'

%% Functions with Arrays 

    %% size
    arr = [1 2 3; 4 5 6]
    [r,c] = size(arr) %tells you number of rows and columns --> r = 2, c = 3

    %number of elements in array 
    numElem = r * c
    
    
    %% length NEVER USE THIS WITH ARRAYS
    %Produces back the longest dimension
    arr = [1 2 3; 4 5 6];
    len = length(arr); %produces back 3 becuase there are 2 rows and 3 cols so it gives the bigger one 
    
     %% Reshape 
    
    %Takes in an array or vector and a new set of dimensions and reshapes
    %the array to be of those dimensions 
    %The new dimensions you add have to total the same number of elements
    %in the original array

    vec1 = 1:10
    arr1 = reshape(vec1,[2,5])

    arr2 = ['heypal';'howru?']
    arr3 = reshape(arr2,[4,3])

    %% transposing
    arr = [2 4 5; 6 2 9]
    transposedArr = arr'
    %use an apostrophe to make rows columns and vice versa

    
    
    %% sum/min/max etc
    arr = [2 4 5; 
           6 2 9];
    %sum down the cols
    ans =[8 6 14]
    sumCol = sum(arr)
    
    %sum across the rows
    %the '2' is the second dimensions means across the rows; adds the
    %values across a row
    arr = sum(arr,2)
    
    %horizontal vector
    sumRowsHorizon = sum(arr')
    sumRowsHorizon = [11 17]
    
    %vertical vector 
    sumRowsVert = sum(arr')'

    %the 2nd dimension is across the rows
    %this is a vertical vector
    sumRowsVert = sum(arr,2)

    %total sum
    totalSum = sum(sum(arr))
    


    %--DESMOS--
    
    %add a new col to arr that is the sum across the rows
      arr = [2 4 5;  %---> [2 4 5 11;
             6 2 9]; %--->  6 2 9 17]
         

         
    
%% Indexing Arrays 

    %% Numerical Indexing
    arr = [2 1 3;
           6 4 9];
    arr(2,3) = 1371
    %%Row-Column Indexing:  nameOfArray(row, column)
    
    %Access the 9 in 'arr' and place it inside of a variable
    nine = arr(2, 3)
    alsoNine = arr(end, end)
    
    %%Linear Indexing: nameOfArray(linearInd)
   
    %Access the 9 in 'arr' and place it inside of a variable
    alsoAlsoNine = arr(6)
    alsoAlsoAlsoNine = arr(end) %using end

    
    
    %How are these 3 lines of code different?
    arr = [2 1 3;
           6 4 9];
    
    thing1 = arr(1,3)  %this produces back the value that is at the 1st row 3rd column which is 3
    thing2 = arr([1,3])%this is accessing the 1st and 3rd LINEAR indicies which are [2;1] 
    thing3 = arr(1,[1,3]) %this is indexing the 1st row, and the 1st and 3rd columns which are [2,3]
         
    
    %Linearizing 
    linArr = arr(1:end) %this is as horizontal vector
    linArr2 = arr(:) %this is a vertical vector 
     
    %Indexing out the major diagonal
    arr = [3 8 8;
           4 9 2;
           0 2 1]

    %hardcode
    majorDiag = arr([1, 5, 9])
    majorDiag = arr(1:4:end)

    %general
    [r, c] = size(arr)
    majorDiag = arr(1:r+1:end)
    %-------------------------------
    %% Slicing
    % Slicing is just a term that means accessing large portions of an
    % array
    
    arr = [4 5 2 8 3;
           7 1 0 2 9;
           3 5 1 8 6;
           9 0 1 2 8];
    %Index the first row
    
    firstRow = arr(1,1:end)
   
    firstRow = arr(1,:)
    
    %last row
    lastRow = arr(end,:)

    %index the last column
    lastCol = arr(:,end)

    %index odd index rows
    oddRows = (1:2:end,:)

    
    %Flip an array across the vertical (same thing as saying flip
    %horizontally) %same thing as asking reverse my columns
    flipLRArray = arr(:,end:-1:1)
    
    %Flip an array across the horizontal (same thing as saying flip
    %vertically) %same thing as asking to reverse my rows
    flipUDArray = arr(end:-1:1,:)


    
    %Assuming even rows and cols: 
    
    %Index top half
    
    topHalf = arr(1:2, :)
    topHalf = arr(1:end/2, :)
    
    %Index bottom half
    
    botHalf = arr(end/2+1:end, :)

    
    %Index left 
    leftHalf = arr(:, 1:end/2)

    
    %Index right half
    rightHalf = arr(:, end/2+1:end)
    
    %Index top left quadrant
    topLeftQuad = arr(1:end/2, 1:end/2)
    
    %Index top right quadrant
    
    topRightQuad = arr(1:end/2, end/2+1:end)

    
    %Index bottom left quadrant
    botLeftQuad = arr(end/2+1:end, 1:end/2)

    
    %Index bottom right quadrant
    botRightQuad = arr(end/2+1:end, end/2+1:end)
    
    %--------------------
    %% Deleting in Arrays
    %You can't have jagged arrays or empty spots
    %If you delete a number in an array it turns the array into a vector.
    %(It'll be horizontal in this new version of matlab, but you don't need
    %to stress over that)
    
    arr = [1 2 3; 
           6 5 4;
           8 9 7];
    
    %can't just delete one number using row and column
    arr(1,2) = [] %THIS ERRORS
    
    %CAN just delete one number using linear indicies
    arr(2) = [];
    
    %CAN delete an entire row using row and column
    arr(1,:) = [];
    %delete last column
    arr(:,end) = [];
    
    
    
    
    %% Logical Indexing
    %Same as with vectors. When you index an array with logicals it
    %accesses them with linear indicies
    
    %add 1 to all the numbers greater than 5
    arr = [1 2 3; 
           6 5 4;
           8 9 7]
    mask = arr > 5   
    arr(mask) = arr(mask) + 1 
    
    arr = magic(4);
    sum(arr,2) %sum of rows all equal 34

    % Delete all of the even numbers in the array 
    mask = mod(arr,2) == 0
    arr(mask) = []

    
        
    %DESMOS
    % Add the largest number in the array to all of 
    %the numbers less than 5

    
    
    
    
    
    
    
    
    
    % Subtract 10 from all of the even 
    % numbers in the topHalf of the array
    
  
   
    %%logical indexing with rows and columns
    arr = magic(5)
  
    A = arr([true false true true false]  , : ) 
    %index the 1st, 3rd, and 4th rows & all the columns     
        
    %DESMOS
    %Given an array, delete the columns that have a 
    %sum less than 34
    arr = [2 5 67 8;
           3 9 2 1;
           0 3 2 9]
   colSum = sum(arr)  
   mask = colSum < 34
   arr(:, mask) = [] % or arr = arr(:, ~mask)
    
    

    
    %another way (keep what you want rather than delete what you dont want)

    
    
    
    
    
    
    %Given an arry, find the min of the array and assign it to the variable
    %num. Replace all even numbers in the array with the minimum

    

    %% Sorting an entire array based off one column or one row
   
    
%Lets first start with vectors 
    
% suppose the vectors 'ages' and 'heights' contain data about people.
% Each index corresponds to a certain person, meaning the first spot in both
% vectors corresponds to person 1.
% Sort the ages in descending order, then rearrange the heights to have
% them align with the newly sorted ages.

ages = [12 9 40 29 22];
heights = [120 100 170 155 180];

[sortedAges,inds] = sort(ages,'d');
%the first output of sort is the actual sorted vector. 
%the second output is a vector that represents how the original vector was
%rearranged. This ordering then can be applied to other vectors and they
%will be rearranged in the same way the sort function rearraged the
%original vector. 

%ages = [12 9 40 29 22]
%sortedAges will be [40 29 22 12 9]
%inds will be [3 4 5 1 2]

%if I wanted to sort the heights based on how I sorted the ages

%this isn't right because it loses the info of the positions of the ages
%sortedHeights = sort(heights,'d')


%this is right
sortedHeights = heights(inds);
    
   


%Now, apply this to an array:
    
%ex: Suppose I have an array of grades where each row is a student
%    and each column is a different assignment: 
%Sort the array based on the last column


  %sort array based off of last column
  lastCol = arr(:,end)
  [sortedCol,inds] = sort(lastCol)
  %although we sorted a column, we did so by rearranging rows. 
  %so, inds is referencing rows
  sortedArr = arr(inds,:)
  
  
  %sort array based off of last row
  lastRow = arr(end,:)
  [sortedCol,inds] = sort(lastCol)
  %although we sorted a row, we did so by rearranging columns. 
  %so, inds is referencing columns  
  sortedArr = arr(:,inds)

    %% Examples 
    
    % Determine if an array is a magic square or not
    % Refer to baeWatch.pdf and baeWatch_soln.m
    
    %Qualifications:
        %(1) Their age must be in bn 1/2(age + 7 and 2(age) - 7
        %(2) Average Matlab and cuddling abilities must be greater than 6
        %Your function should output a new array that only contains
        %qualified candidates. Additionally, a new column should be added
        %to the end that represents the average of their cuddling and
        %Matlab abilities. Lastly, the array should be arranged such that
        %the person with the highest average is in the first row and the
        %person with the lowest average is in the last row.

    %Function:
        %(1) First column:
        %(2) Second column
        %(3) Third column:
        %(4) Fourth column: Cuddling

        Candidates = [1, 17, 2, 8;
                      2, 24,7, 10; 
                      3, 21, 10, 2; 
                      4, 40, 10, 10;
                      5, 19, 7, 8]

function qualified = baeWatch(arr, age)
%find appropriate age range
low = .5*age +7;
high = 2*age - 7;

%Cancel out not appropriate base on age
mask = arr(:,2) >= low & arr(:,2) <= high
arr(~mask, :) = []
%or keep what you do want --> arr = arr(mask, :)

%figure out averages of matlab and cuddling abilities
avgScore = mean(arr(:, [3,4]), 2) %2 means averaging across the rows

%add averages column to array
arr = [arr avgScore]

%Cancel out not appropriate based on abilitiy
mask = avgScore > 6;
arr = arr(mask, :);

%sort based on averages
[~, inds] = sort(arr(:, end), 'd')
arr = arr(inds, :)

end

    % Refer to ugaHack.pdf and ugaHack_soln.m
    
    
   
    
    
    



