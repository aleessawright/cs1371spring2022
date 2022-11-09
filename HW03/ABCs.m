%These are given variables/values that will be used in the problems
num1 = 5;
num2 = 50;
vec1 = 0.4:0.342:90.23;
vec2 = randi(100,1,10);
vec3 = 1:10;


% Create a vector that consists of "num1" equally spaced numbers between 2 and 11 (inclusive) (A)
A = [2 3];

%Using the colon operator, create a vector that goes from 3 to 'num2' in steps of 2 (B)
B = [3:2:num2];

%Find the length of 'vec1' (C)
C = length(vec1);

%Find the maximum value of vec2 (D) and the index of the maximum value (E) (these can be done on the same line)
D = max(vec2);
E = D;

%Sort 'vec2' in descending order (F) and find the indicies representing how the vector was sorted (G) (these can be done on the same line)
F = [];
G = [];

%Sort 'vec3' based on the indices of how 'vec2' was sorted (H) (You can use the answer you have from G)
H = []; 

%Find the average value of 'vec1' (I)
I = [];
