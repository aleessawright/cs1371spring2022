%% Week 4 Recitation

%% Vector Review

vec = [9 5 4 2 9 6 4 2 7 9]
firstHalf = vec(1:end/2)
oddIndices = vec(1:2:end)

vec(2:2:end) = 0

%% Vectors of Chars (Strings)

str = ['h' 'e' 'l' 'l' 'o']
str = ['hello']
str = 'hello'

str2 = 'hello, '
apos = 'I''m going home.'

num = '37.2'
doubleForm = str2num(num)

num2 = 25
strForm = num2str(num2)

num3 = char(65)
str3 = double('37.2')

vec = 'banana'
%I want 'aaa'
vec(2:2:end)

what = 5==5
'matlab' == 'matlab'
%'buzz' == 'bee'

%strcmp
x = 'UGA'
strcmp(x, 'awesome')

y = 'pizza'
strcmp(y, 'pizza')
strcmp(y, y)
strcmp('pizza', 'pizza')

strcmp(x,y)

strcmp(y, 'Pizza')

%strcmpi
strcmpi('Georgia Tech', 'georgia tech')

%strfind()
sentence = 'I really like superman!';
strfind(sentence, 'like')
strfind(sentence, ' ')
sen2 = 'I really like superman! He is super!'
inds = strfind(sen2, 'super')
inds = strfind(sen2, 'super!')

%strrep
newSentence = strrep(sentence, 'like', 'love')
newSentence = strrep(sentence, 'superman', 'ironman')

%strtok()
example = 'wow.super.cool'
[word, rest] = strtok(example, '.')
[word2, rest] = strtok(rest, '.')
[word3, rest] = strtok(rest, '.')

example2 = ' This is cool'
[word, rest] = strtok(example2)


%sprintf()
%d  -> doubles
%s -> characters
%0.2f -> floating point numbers and rounding

outputString = sprintf('Yo that is %s, I wish were there!', 'crazy')
multipleWords = sprintf('I ate %s, %s, and %s!', 'chicken wings', 'fries', 'drank a soda')

numString = sprintf('I ate %d chicken wings', 5)

wordsAndNums = sprintf('I ate %d %s and %s', 6, 'word', 'word')

%% Logical Indexing

vec1 = [8 0 4 6 8];
vec2 = [8 3 0 6 7];
logVec = vec1 == vec2
logVec2 = vec1 ~= vec2

%all() [&], any() [|]
ex = [true true false]
all(ex)
any(ex)

name = 'Megan'
vowels = name == 'a'
name2 = 'Gabe'
aAndE = name2 == 'a' | name2 == 'e'

crazy = 'jFjRiOe'
capitals = crazy >= 'A' &crazy <= 'Z'

vec6 = [7 5 4 8 3 0]
% remainder = mod(num, denom)
evens = mod(vec6,2)
whereEvens = evens == 0
evensAgain = mod(vec6, 2) == 0

whatAreThey = vec6(evensAgain)




