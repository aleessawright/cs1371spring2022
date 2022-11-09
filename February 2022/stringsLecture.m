           %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %                   Strings!                     %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            

% char (great debate over how to pronounce it....) 
% We denote chars with single quotes
% ex: 
letter = 'a';

                        %% How does MATLAB see chars?
% Computers are run off of binary numbers (ones and zeros). So therefore,
% in memory you can't really store an actual symbol or letter. Instead,
% everything has to be converted into a number which then can ultimately be
% converted into binary. 

% So, to Matlab, all chars are actually just numbers. The conversion is
% through what we call ASCII Values.
% ASCII --> American Standard Code for Information Interchange

% By looking up the ASCII table, we can see that when we type something
% like a lowercase 'a', to the computer this is actually the value 97.

            
                        %% What is a String? 
% A string is A VECTOR OF CHARs. Everything we
% talked about with vectors is applicable here. 

                        %% Creating Strings
                        
% Direct Entry 
word1 = ['h','e','l','l','o']
word1b = 'hello';
strNum = '1';
word2 = 'bye';

%apostrophes aren't the same as concatenation!
word3 = 'word1 word2' % 'word1 word2' literally
word4 = [word1 word2] % 'hellobye'
word4WithSpace = [word1 ' ' word2]

%https://www.instagram.com/solarespaquito/

caption = 'Aspire to inspire before you expire.'
hashtag = ' #bars'

newCaption = [caption hashtag]


                        %% Casting
% "Casting" is just a term that means changing a value from one data type
% another. 


% char (changes ASCII value into character symbol)
let = char(65); %produces A

% double (changes character symbol into ASCII value)
ascii = double('H');% produces 72 ('H' ascii value);

% num2str (changes a number (double) into a char version of that number)
num = 123; %length is 1
str = num2str(123) ;  %'123' length is  3

% str2num (changes a char version of a number into a double version)
str2 = '1234'; %length 4
num2 = str2num('1234'); %num2 is 1234 length 1

%%Question:
%Note: the ASCII value for 'A' is 65
%What is the value of 'log' after this code is run?
thing1 = char(65); % 'A'
thing2 = num2str(65); %'65'
log = thing1 == thing2 % [false false]



                            %% Math and Strings
% Anytime you do math to a string, you get back an double (ASCII) value.
% Often times you'll need to cast it back to a char

%Produce the next letter from the given variable
let = 'b';
nextLet = char(let+1) %'c'



%% Creating a vector of a a desired character


%What if I wanted to create 1000 question marks?
%https://www.instagram.com/itz.just.q/

wtfCaption = 'She diggin me and I''m cuffin her friend'


% Using ones/zeros
quests = char(ones(1,1000) .* '?')

confusion = [quests wtfCaption quests]


% Using repelem
quests2 = repelem('?',10)

wtfCaption2 = repelem(wtfCaption,2)


%% Capitalization %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%You can either use the upper/lower functions, or do math to the strings.
%However, be mindful of 

upperStr = upper(str);
lowerStr = lower(str);

%three ways to capitalize with math
capLet = char(str - 32);
capLet2 = char(str - ('a' - 'A'));
capLet3 = char(str - ' '); %the ASCII value of space just so happens to be 32

%three ways to lowercase with math
lowLet = char(str + 32);
lowLet2 = char(str + ('a' - 'A'));
lowLet3 = char(str + ' ');


% Capitalize an entire string

%https://www.instagram.com/bbennett.elizabeth/

LIES = 'enjoy my singular contribution to my instagram feed for the next couple years';
capLIES = upper(LIES)
capLIES2 = char(LIES - 32)


%this is actually not correct because it is subtracting 32 from the spaces
%too! Also, what if a letter is already capitalized, subtracting 32 from
%that will cause problems! We will talk about how to deal with this later. 
                      
             
                            
                            %% Indexing Strings

%%All of the indexing we did with vectors of numbers still applies with
%%strings. 
                                                   
%%Reverse 
%https://www.instagram.com/aaronf213/

cap = 'Oops is always better than what if'
revCap = cap(end:-1:1)

%% strfind function
%ind = strfind(str,substring)
%strfind takes in a string and a pattern of characters we often call a
%"substring". All a substring is is just a part of the overall string.
%strfind then produces a vector of the starting indicies of where that
%substring is in the entire string. 

%Examples: 
ind = strfind('Kantwon','won') % ind --> 5 ('won' starts at the 5th index of 'Kantwon')
%this is looking for 'won' inside of 'Kantwon'. Seeing it does appear, it
%produces back the index in the first string where the substring starts.

ind = strfind('Yellow Jackets','e') % ind --> [2,12]
%The character e shows up multiple times in the string. So strfind produces
%back a vector of all of the indicies. Keep in mind that the *space* does
%occupy an index!

ind = strfind('Georgia Tech','t') % ind --> []
%Case matters. And if the substring does not appear in the string, the
%function outputs an empty vector

%How can I make strfind case insensitive?
ind = strfind(lower('Georgia Tech'),'t') % ind --> 9


%% Indexing multiple spots %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%In the "mocking spongebob" type memes, you capitalize different
%parts of a sentence to make it look strange which then would signify a
%difference in tone when saying the words. 

%Example: 
%"wow you are so cool" --> "wOw YoU ARe sO cOoL"

%Although you could easily do this in Matlab by randomly selecting
%different indicies and capitalizing them, let's make a watered-down/fake
%version of this. So, let's always just capitalize the first and last
%letter of each word. 

wtfCaption = 'she diggin me and i''m cuffin her friend'

spaceInds = strfind(wtfCaption,' ');
firstLetInds = spaceInds + 1;
wtfCaption(firstLetInds) = upper(wtfCaption(firstLetInds));

lastLetInds = spaceInds - 1;
wtfCaption(lastLetInds) = upper(wtfCaption(lastLetInds));
wtfCaption([1,end]) = upper(wtfCaption([1,end]))



                            %% More functions

 %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                           
%% sprintf
%with sprintf i can use %s (strings),%d (doubles),%f(doubles and you can control decimal points)
%to create spots to fill in later
%str = sprintf(formattedStr,var1,var2,.....)
name = 'Kantwon';
age = 28;

str = sprintf('Hi my name is %s and I am %d years old',name,age)

%% strrep
%String Replace. Allows you to replace part of a string with another string
%newStr = strrep(oldString,oldPart,newPart)

% https://www.instagram.com/jamimilliken/

yikesCap = 'me + rich people''s gardens = :)'

appCap = strrep(yikesCap,':)','lawsuit')

%% strtok
%Strtok stands for string tokenization. Tokenizing something just means
%separating it into pieces. Strtok has 2 inputs, the first is the string
%you want to split, and the second is the character(s) that you want to
%split it by (we call these characters delimeters). If you don't include a
%second input, it assumes "space" is your delimeter. 

%At a basic level, strtok starts from the left side of the string and
%continues searching for a character that matches one of the inputted
%delimeters. When it finds one, everything before the delimeter is placed
%in the output, and the delimeter and everything after it are placed in the
%second output. 

%Example: 
str = 'hey there pal'
[word,rest] = strtok(str,' ') %Want to separate based on a space. It finds the first one at the 4th position 
%word --> 'hey'
%rest --> ' there pal' (the beginning of rest is a space!)

%Often times you might want to split a string multiple times. You can do
%this by calling strtok multiple times, but by changing the input to be the
%2nd output of what the previous strtok produced. This works because strtok
%has the property of ignoring all leading delimeters. This means that if
%you string starts with any delimeters, it essentially deletes and ignores
%them until it finds something that isn't a delimeter. 

%Example
str = 'hey there pal'
[word,rest] = strtok(str) %without the second input it assumes space as the delimeter
[word2,rest2] = strtok(rest)
%when the input is now ' there pal', this starts with a space. Since it is
%a leading delimeter, it ignores it and continues searching for something
%that isn't one of the delimeters. Once it finds, one, it then uses that to
%separate the string. 
%word2 --> 'there' (no space at the start)
%rest2 --> ' pal' (space at the start)

%In each of the examples above, there has only been 1 delimeter (a space). 
%However, you can put in a string as the second input that representes a
%list of delimeters. 

%Example: 
str = 'hey there pal'
[word,rest] = strtok(str,'hey')
%This is NOT separating by the entire word 'hey' instead it is separating
%by an 'h' or 'e' or 'y'. The notion of ignoring leading delimeters still
%remains. 

%word --> ' t' ('h', 'e', 'y' were all leading delimeters so there were
%ignored)
%rest --> 'here pal' (it found the 'h' so therefore it split based on that)

%% contains

% Given a string and a substring, this function produces back a singluar
% true if the substring is in the string. Case sensitive

log = contains('Kantwon','won') %true
log2 = contains('Kantwon','Won') %false
log3 = contains('The Office','funny') %false
 
%with strfind

inds = strfind('Kantwon','won');
log4 = length(inds)>0

%% strcmp/strcmpi

%To compare characters, you can use either the strcmp or strcmpi functions.
%Both functions take in 2 chars and output a single true or false on if
%they are the same. The difference between the two is that strcmp compares
%the chars and case matters, while strcmpi is case-insensitive 

%example

in1 = 'Apples'
in2 = 'aPPles'


log1 = strcmp(in1,in2) %this is false because case matters with strcmp
log2 = strcmpi(in1,in2) %this is true because strcmp is case insensitive

