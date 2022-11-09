%% Week 3 Recitation

% ASCII Values

% Mod

% LHS vs RHS
    % RHS

%% Vector Basics

%Data Structures
    % Holds data
    % Vectors are a homogenous data type - can only hold th esame types of
    % data

% Creating vectors (3 ways)
    % 1. Concatenation
        % vecNum = [1, 2, 3,] OR [1 2 3] OR [1,2,3]
        % vecLog = [true, false]
        % vecChar = ['h', 'e', 'l', 'l', 'o'] OR 'hello'
    % 2. Colon Operator
        % vec = startNum:stepSize:endNum
        % vec = startNum:endNum --> matlabe assumes step size of 1
        % ***Note it might note include the stop number if the step size
        % skips over it
        % To get even/odds
            % Odds - 1:2:100
            % Evens - 2:2:100
       % To go backwards - 5:-1:1 --> [5 4 3 2 1]
    % 3. Functions
        % zeros(row, column) --> gives an array of zeros
        % ones(row, column) --> gives an array of ones
        % false(row, column) --> gives an array of logical zeros
        % true(row, column) --> gives an array of logical ones
        % linspace(firstValue, lastValue, increments)
            

%% Numerical Indexing (RHS-right hand side)

% Starts indexing at 1, not 0

% Indexing - accessing the locations of the values in the vector

% Indexing 1 location
vec = [4 10 30 1 5];
num1 = vec(3) % --> num1 = 30

% Indexing at multiple locations
y = vec([1 3 5]); % --> y = [4 30 5]
y2 = vec(1:2:5) % --> y2 = [4 30 5]

x = vec([4 2 3])

%Indexing with end
    % What if you want the last number but don't know how many elements are
    % in a vector --> use the key word end
    x3 = vec(end); % --> x3 =5
    % Can ONLY use end when indexing

% Reversing a vector
    % reversing a vector
    reversed = vec(end:-1:1) % --> reversed = [5 1 30 10 4]

% Getting all the odd/even indices

%% LHS Indexing

%% Vector Operations

% Element by element math - math by matching the indices

10 .* 20

vec1 = [2 3 4]
vec2 = [8 4 9]

added = vec1 + vec2

% Functions
    % sum()
    % prod()
    % mean()
    % max()/min()
    % sort()
    % newVec(index) = [ ] removes an index
    % length()