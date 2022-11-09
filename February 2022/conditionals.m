            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %                  Conditionals!                 %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
            
%% What is a conditional?
% A conditional is a structure that allows lines of code to only be
% executed under certain conditions. 


%% Why do we like conditionals?
% 1) Humans naturally think conditionally, so it let's us transfer our own
% form of thinking to programming 
% 2) Allows us to write more complex programs where not all lines of code
% are run. Gives our programs dimensions and more paths of execution which
% can cover more cases. 

%% Why do we have to be careful when using conditionals?
% Since you now have the ability to not run lines of code, you need to make
% sure that future lines of code don't have any previous variable
% dependencies. 

%% If statements 

%% Basic syntax

if logical statement
    DO STUFF
end


%If the logical statement is true, then the stuff inside is executed. Then
%the program continues. 

%Example:
a = 1;
if a == 1 %true
    b = a - 1; % b --> 0
    a = a + 1; % a --> 2
end
c = a + b; % error bc b is outside of scope



% 'a' is given the value of 1. The if statement checks to see if the value of
% 'a' is 1. It is, so therefore, the lines of code are executed. 'b' is given
% the value of 0, and 'a' is overwritten to be 2. The code in the if
% statement is finished executing, so it exits and executes the rest of the
% code. 'c' is given the value 2. 

%Example:
a = 0;
if a == 1 %false
    b = a - 1;
    a = a + 1;
end
c = a + b; %errors --> b doesn't exist


% 'a' is given the value of 0. The if statement checks to see if the value
% of 'a' is 1. It is NOT, so none of the code is executed. When the
% remainder of the code is executed, this produces an ERROR becuase the
% variable 'b' was never created!


%% Elseif 
% Sometimes you want to have even more paths your program can take. If
% statements can also have elseif blocks. You can have as many elseif
% statements as you want in an if statement. 

% ONCE YOUR PROGRAM FINDS A LOGICAL STATEMENT THAT IS TRUE, IT EXECUTES THE
% CODE IN THAT BLOCK AND THEN EXITS OUT OF THE IF STATEMENT. EVEN IF OTHER
% LOGICAL STATMENTS ARE TRUE, ONLY THE FIRST ONE IS CONSIDERED!!!!!


if logical statement
    DO STUFF
elseif logical statement
    DO STUFF
elseif logical statement
    DO STUFF
%as many else if's as you want
end


%Example: 

a = 1; 
if a == 1 %true
    b = 'uno';
elseif mod(a,2) == 1 %since if was true, this part is not run
    b = 'dos';
end
c = b; 

%Alhough both of the logical statements are true, only the FIRST one is
%executed. So, at the end of this code, 'b' is 'uno'



%Is using multiple ifs the same thing as using an elseif?

%{
if logical statement 1
    DO STUFF
end

if logical statement 2
    DO STUFF
end

%----------------------------
if logical statement 1
    DO STUFF
elseif logical statement 2
    DO STUFF
end

%}

%% Example: 
a = 1;
b = 0;
if a == 1 
    b = b + 1; 
end
if mod(a,2) == 1
    b = b + 1; 
end
%----------------
a = 1;
b = 0;
if a == 1 
    b = b + 1; 
elseif mod(a,2) == 1
    b = b + 1;
end

%

%These not the same. In the first both if's are evaluated. b first becomes
%1 from the first if, but then becomes 2 from the second. 

%in the second example, only the first logical statement is evaluated, so b
%is 1 after the code is run. 

%% Else
% Making an elseif for every possible condition might not be possible.
% Sometimes you want to have certain lines of code for some conditions and
% then for everything else, you want to do something different


%{ 
if logical statement
    DO STUFF
else (do not write a condition after else)
    DO STUFF
end
%}

a = 1; 
if a > 3 
    b = 2;
else
    b = 3; 
end



%what if i had this
a = 1; 
if a > 3
    b = 2;
elseif a < 3
    b = 3; %this line is run so b is assigned the value of 3
end
c = b

%in this case, if a is 3 then b will never be defined which could cause
%DISASTER later on

%I could have done
a = 3; 
if a > 3
    b = 2;
elseif a <= 3
    b = 3;
else
    c = b
end


%Example: 

%WHAT DOES 'a' HAVE TO BE IN ORDER FOR 'b' TO BE:
% 1)'hello' a has to be 1
% 2)'goodbye' a has to be any even number
% 3)'howdy' a has to be any odd number not 1 (or a decimal number)


a = ?;
if a == 1
    b = 'hello';
elseif mod(a,2) == 0 %even number
    b = 'goodbye';
else %odd and not 1 (or a decimal)
    b = 'howdy';
end



%using elses are good because it allows you to have a 'catch-all' statement
%that can account for outliers. 

%% Is this elseif statement necessary?
%a is a positive integer
if mod(a,2) == 0
    out = 'even';
elseif mod(a,2) == 1
    out = 'odd';
end




 %could just write with an else because a number is only even or odd
if mod(a,2) == 0
    out = 'even';
else
    out = 'odd';
end



%% Nested if statements
% 'Nesting' just means putting something inside of something else. So, a
% nested if statement is just an if statement inside of another if
% statement. 


if mod(a,2) == 0 %first check this, if it is true then look at the if inside  
    %I could do some code that changes a somehow 
    if a > 2 
        b = 2; %For this to happen mod(a,2) == 0 must be true AND a > 2 must be true
    else
        b = 3; %For this to happen mod(a,2) == 0 must be true AND a > 2 must be false
    end
end


%You can also have compound logical statements using & and |
%The code above is the same thing as using a compound conditional like: 

if mod(a,2) == 0 & a > 2
    b = 2;
elseif mod(a,2) == 0 & a <= 2
    b = 3;
end




%Do 1) and 2) implement the same logic? If not, give examples of 'a' that
%prove this. 

%1)
if mod(a,2) == 0 & a > 2 %even and greater than 2
    b = 2; 
else
    b = 3;
end
c = b
%2)
if mod(a,2) == 0 %even
    if a > 2
        b = 2;
    else
        b = 3;
    end 
end
c = b




%they are not the same. a counterexample could be a being any odd value


%% What value of 'a' would cause this code to error?
a = ?; %a is an odd number that isn't 1
if a == 1 
    if a > 5
        b = 1;
    else
        b = 2;
    end
else
    if mod(a,2) == 0 %even
        b = 3;
    end
end
c = b;

%% all/any
% Both of these functions take in a vector of logicals. 

%For "all" it produces back a single true if all of the values in the 
%logical vector are true; it produces false if there is 1 or more false 
%values. 

%For "any" it produces back a single true if any of the values in the
%logical vector are true; it produces false if there are no true values in
%the vector 

vec = [2 3 4 5];
log = all(vec == 2); %false
log2 = any(vec == 2); %true

%% If with vectors
%When a logical statement for an if is a vector of logicals, there is a
%built in 'all' applied. So the condition is only true if ALL of the values
%in the vector are true

name = 'Kantwon';
if name == 'Kantwon' %all([t t t t t t t]) --> true
    out = 'cool';
else
    out = 'not cool';
end


%out would be 'cool'


name = 'kantwon';
if name == 'Kantwon' %all([f t t t t t t]) --> false
    out = 'cool';
else
    out = 'not cool';
end

%out would be 'not cool'


name = 'Dr. Kantwon'; %errors because different vector lengths
if name == 'Kantwon' 
    out = 'cool';
else
    out = 'not cool';
end



%The code above is bad because what if the value in 'name' is a different
%length? 


%strcmp/strcmpi functions
%Both of these functions take in two strings and produce back a singular
%true or false when checking if they are the same. strcmpi is case
%INSENSITIVE (that's what the "i" stands for) 
%Unlike using the == both of the strings don't have to be the same length.
%If they are different lengths, then a false will be be output

%Examples:
%out1 = strcmp('hi','hi') --> true
%out2 = strcmp('hi','HI') --> false (case sensitive)
%out3 = strcmpi('hi','HI') --> true (case insensitive)
%out4 = strcmp('hi','hello') --> false



%How do we fix the above?
name = 'kantwon';
if strcmpi(name,'Kantwon') %if they are different lengths this will just produce false
    out = 'cool';
else
    out = 'not cool';
end



%This is slightly tacky
name = 'kantwon';
if strcmpi(name,'Kantwon') == true %if they are different lengths this will just produce false
    out = 'cool';
else
    out = 'not cool';
end





%% Difference between || and |, && and &

%using a && or || does what's called "short circuiting". Typically when you
%use just a & or | the left and right sides are evaluated and then the
%and/or comparision happens: 

%ex: 
%log = 1 >= 3 & mod(1,2) == 1 --> F & T --> T

%However, when thinking about and/or, for "and" if just one of them is
%false, the whole thing is false. For "or" if one of this is true, then the
%whole thing is true. So with short circuiting, in a && if the left check
%is false, it doesn't even evaluate the right. For || if the left check is
%true is doesn't evaluate the right. 


%Image a scenario where you wanted to check if the 3rd number of a vector
%is equal to 6. This depends on the vector having at least 3 elements. 

%if you did something like 
%vec = [2 3]
%log = length(vec) >= 3 & vec(3) == 6
%this would ERROR! because when it evaluates the left side it gets a false,
%then it tries to evaluate the right side. However, you can't index at the
%3rd position! So it errors. 

%This can be solved using short circuiting
%vec = [2 3]
%log = length(vec) >= 3 && vec(3) == 6

%now when it evaluates the left side and produces a false, it doesn't even
%check the right side! so log will just be false. 


%When constructing the logical statement in an if statement, Matlab
%internally converts everything into short circuiting (no matter if you
%used a single &/|

%Both if statements below implement short circuting. 

vec = [1 2]
if length(vec) >=3 & vec(3) == 6
    out = 'yay'
else
    out = 'awww'
end

%A fix to this not using && is using nested if statements
if length(vec) >=3
    if vec(3) == 6
        out = 'yay'
    else
        out = 'awww'
    end
else 
    out = 'awww'
end



if length(vec) >=3 && vec(3) == 6
    out = 'yay'
else
    out = 'awww'
end


%For the scope of this class, you can always just use single &/|. (so you
%can ignore the highlighting by matlab)
%There are some restrictions for when you can't use &&/||. 

%%Coding Example with if-statements

%Write a function called 'calcLetterGrade' that takes in a number value and
%outputs the appropriate letter grade in a sentence that says:
%"Your numerical grade is <insert numerical grade> which is the letter
%grade <insert letter grade>"


%% Switch Statements
% Switch statements are another type of conditional that is used for
% DISCRETE values. 

% Basic Syntax

switch var %this variable/value CAN'T be a vector of numbers. However, a string is ok. 
    case {thing1, thing2} %if you have multiple things you are checking you have to put them in {}
        DO STUFF
    case thing3 %if you only have one thing then the {} are optional
        DO STUFF
    %you can have as many 'case' as you want
end

%Example: 

a  = 1:2:6; %[1 3 5]
switch a(1) %1
    case {2, 3, 4, false}
        b = 2; 
    case {1, 'AJ'}
        b = 3;
    case {1,6}
        b = 4;
end

%'a' is first compared to see if the value is either 2,3, or 4. It isn't,
%so 'a' is then checked to see if it is 1. It is so b is given the value of
%3, and then the code exits the switch statement. Although a later case has
%a match, it finds the first case that matches. 

%Switch statements have a built in 'isequal' function.

%% Switch statement with Otherwise 
% Just like if statements have 'else' as a catch-all, switch statements
% have 'otherwise'


switch var 
    case thing1
        DO STUFF
    case {thing2, thing3}
        DO STUFF
    ..
    ..
    otherwise
        DO STUFF
end


%Example: 
name = 'Kantwon';
switch name
    case {'Kantwon','Cedric','Ricky'}
        out = 'lecturer';
    otherwise
        out = 'student';
end

%how to make this case insensitive 
name = 'Kantwon';
switch lower(name)
    case {'kantwon','cedric','ricky'}
        out = 'lecturer';
    otherwise
        out = 'student';
end

%% SWITCH vs IF.

%Use an if statement if you have a range of values that you are checking 
%Use a switch if you have a discrete number of values you are checking
%(also checking strings is often easier)

switch name 
    case {'Kantwon','Serena'}
        out = 'You may enter';
    case {'Deep', 'Maddie','Maria'}
        out = 'PLEASE CALL THE POLICE';
    otherwise 
        out = 'WHO ARE YOU?'
end        

%how would I do this with an if statement

if strcmp(name,'Kantwon') | strcmp(name,'Serena')
    out = 'You may enter'
elseif strcmp(name,'Deep') | strcmp(name,'Maddie') |strcmp(name,'Maria')
    out = 'PLEASE CALL THE POLICE'
else
    out = 'WHO ARE YOU?' 
% to make this into an if statement, it requires SOOOOOOO much typing

%Examples
%Rock-Paper-Scissors

p1 = 'rock'
p2 = 'paper'

switch p1
    case 'rock'
        switch p2
            case 'rock'
                out = 'Tie'
            case 'paper'
                out = 'Player 2 wins'
            case 'scissors'
                out = 'Player 1 wins'
        end
    case 'paper'
         switch p2
            case 'rock'
                out = 'Player 1 wins'
            case 'paper'
                out = 'Tie'
            case 'scissors'
                out = 'Player 2 wins'
        end
    case 'scissors'
         switch p2
            case 'rock'
                out = 'Player 2 wins'
            case 'paper'
                out = 'Player 1 wins'
            case 'scissors'
                out = 'Tie'
         end
end

%Calculate Grade











    
