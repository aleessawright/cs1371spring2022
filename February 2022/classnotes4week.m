%% Class Notes
%% strtok : string tokenation
%example:
str = 'hey there pal'
[word, rest] = strtok(str)
[word2, rest2] = strtok(rest)

%% contains
% Given a string and a substring, this function produces back a sinbll true
% if the substring

log = contains("Kantwon","won") %true
log2 = contains("Kantwon", "Won") %false

%% strcmp & strcmpi

in1 = 'Apples'
in2 = 'aPPles'

log1 = strcmp(in1, in2) % false bc case matters
log2 = strcmpi(in1, in2) % true bc case doesn't matter

%% Logical Indexing %%
% indexing using logicals rather than doubles

% Using Logical Operators > < >= <= ~=

% compound logicals
% create "true" value where the vector si in between 2 and 6 inclusive
vec = [2 9 1 3] %[true false false true]

mathy = 2<=vec<=6 %WRONG

correct = vec >= 2 & vec <= 6
       % [ t t f t] & [t f t t]
       % [t f f t]
%% Regular Indexing
% Given a vector of indicies, the index tells you the position you are
% accessing, and the location of the index in the vecotr of indices
