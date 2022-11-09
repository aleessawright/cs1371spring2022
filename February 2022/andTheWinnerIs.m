function [ winner, amount] = andTheWinnerIs(teams, first, second, third, fourth)
team1 = teams(1:1:3);
team2 = teams(8:1:end);
%teams(4:1:7) = [];
score = first + second + third + fourth;
[amount, position] = max(score);
%winner = teams((1.*(position)): 1 : ((end/2).* position));
mask = score(1) > score(2);
winner = team1 .* mask;
end