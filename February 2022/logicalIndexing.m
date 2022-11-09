            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %                  Logical Indexing!             %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
           
 %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % LOGICAL INDEXING IS THE MOST IMPORTANT CONCEPT IN CS 1371!!!!
 % LOGICAL INDEXING IS THE MOST IMPORTANT CONCEPT IN CS 1371!!!!
 % LOGICAL INDEXING IS THE MOST IMPORTANT CONCEPT IN CS 1371!!!!
 % LOGICAL INDEXING IS THE MOST IMPORTANT CONCEPT IN CS 1371!!!!
 % LOGICAL INDEXING IS THE MOST IMPORTANT CONCEPT IN CS 1371!!!!
 % LOGICAL INDEXING IS THE MOST IMPORTANT CONCEPT IN CS 1371!!!!
 % LOGICAL INDEXING IS THE MOST IMPORTANT CONCEPT IN CS 1371!!!!
 % LOGICAL INDEXING IS THE MOST IMPORTANT CONCEPT IN CS 1371!!!!
 % LOGICAL INDEXING IS THE MOST IMPORTANT CONCEPT IN CS 1371!!!!
 
 
                            %% What is logical indexing?
 % Just like the name says, logical indexing is using logical values
 % (true/false) in order to index things. 
 
                            %% Review Logicals 
 % We can create logicals in 2 ways: 
 
 %% Direct Entry:
 
    %single Logicals
    logVec = true;
 
    %vector of logicals
    logVec2 = [true false true];
 
 %% Using Logical Operators > < >= <= == ~ ~= & |
 
    %single Logicals 
    logVec = 2 == 2;%true
 
    %vector of logicals
    logVec2 = [5 8 2] < 6; %[true false true]
    
    %compound logicals
    %create "true" value where the vector is in between 2 and 6 
    %inclusive
    vec = [2 9 1 3] %[true false false true]

    mathy = 2<=vec<=6 %WRONG

    attempt1 = vec >=2 & <=6 %WRONG

    correct = vec >=2 & vec <= 6
           % [t t f t] & [t f t t]
           % [t f f t]
  
    %OMG BUT WHAT IF I USE AN OR?!
     vec = [2 9 1 3]
     thing = vec>=2 | vec<=6
     
     %[true true false true] | [true false true true]
     %[true true true true]

    
    %% Using logical vectors to Index VS. Using double vectors to Index

%% Regular Indexing
% Given a vector of indicies, the index tells you the position you are
% accessing, and the location of the index in the vector of indicies tells
% you the order in which to access a value. 

vec = [7 10 11 4];
A = vec([3 1 2]); % A will be [11 7 10]
% The index 3 is saying you want to access the 3rd element of vec. Since
% this is the first index in the vector of indicies, vec(3) (in this case
% 11) will be the first value that is accessed. 


%% Logical Indexing
% Given a vector of logicals, true values indicate that indexing will
% occur, and false values indicate that indexing will NOT occur. The
% location of the logical in the vector of logicals tells you the relative
% index that you are checking. 

vec2 = [7 10 11 4];
B = vec2([true false true false]); % B will be [7 11]

% The first true in the vector says that YES the first value of the vector
% will be indexed. The next false says that NO the 2nd value of the vector
% will NOT be indexed. etc. 

mask = vec2==7 | vec2 == 11
B = vec2(mask)

%% Examples!

%% 1) Create a variable 'A' that has all of the values in 'vec' that are
% greater than 8
vec = [5 10 14 20 7]

mask = vec > 8

A = vec(mask)

%or in one line
A = vec(vec>8)

%OMG KANTWON SO HOW IS A LOGICAL DIFFERENT FROM A DOUBLE?
vec = [5 10 14 20 7]
mask = [0 1 1 1 0] % doubles
A = vec(mask) %errors because you can not index the zero spot

%omg but what if....
B = vec([1 1 1 1 1]) % [5 5 5 5 5]
B2 = vec([true true true true true]) %[5 10 14 20 7]

%% delete all even numbers ------------

%delete that you dont want
vec = [5 10 14 20 7]
mask = mod(vec,2) == 0 %[f t t t f]

vec(mask) = []

%keep what you want
vec = vec(~mask) %not mask


%% delete all values at odd positions --------

%NO LOGICAL INDEXING!!!!!
%delete odd positions
vec = vec(1:2:end)

%or keep even positions
vec = vec(2:2:end)

%----------------------------------------
%% add 1 to all of the a's (lowercase) in str to make 
%% them all b's
%'matlab' --> 'mbtlbb'
str = 'matlab'
mask = str == 'a'

str(mask) = char(str(mask)+1)

%if we wanted to test to see if you knew what was going on 
mask = str == 'a'
A = str(mask) + 1 
B = class(A) 

%using strfind


%% capitalize a string without using the upper/lower functions
str = 'Matlab is bae!!!!' %--> 'MATLAB IS BAE!!!!'


%depending on matlab's internal conversions
str = 'Matlab is bae!!!!'
mask = str >='a' & str <= 'z'
str(mask) =  str(mask) - 32


%% Count the number of consonants in a string 
%(that doesn't contain punctuation/special chars but 
%does contain spaces)
str = 'Kan   twon    '

%Make the mask



%Counting consonants

%can I do this?




%% Delete all special characters, numbers and spaces 
%% from a string

str = 'This Is @ t3st_ sTR!ng!!' %--> 'ThisIststsTRng'

%% What are the indicies of the even numbers in vec

vec = [1 8 3 4 6 8] % --> [2 4 5 6]
mask = mod(vec,2)
index = 1:length(vec) 
indEvenVal = index(mask)

%% find function
% takes in a logical vector and produces the indices of the true

indEvenVal = find(mod(vec, 2)==0) %input is a logical vector

% delete all even numbers using find
indEvenVal = find(mod(vec,2)==0) %outputs indices of trues
vec(indEvenVal)= []

%logical indexing way
mask= mod(vec,2) == 0 %[f t t t f]
vec(mask) = []


%----------------------------------------
%% subtract the maximum number in the vector from 
%% all values between 5 and 10 (inclusive)
vec = [2 8 39 6 9 2]
%[2 8 39 6 9 2] --> [2, 8-39, 39, 6-39, 9-39, 2]


%Given a 1xN double vector of integers stored in nums, find the number 
%of even integers in the vector and store it in evens. 
%Then delete all values of nums that are not divisible by 
%the value stored in evens. (6 points)












 