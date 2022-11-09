function [odd] = deleteEvenValues(vec)    
odd = []
for i = 1:length(vec)
    if mod(vec(i),2) == 1
      odd = [odd, vec(i)]
    end
end
end

%str = 'abe';
%for x = length(str):-1:1
    %switch str(x)
        %case {'a','e','i','o','u'}
           % str(x) = []
   % end
%end 