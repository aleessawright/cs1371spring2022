function long2text(ca,file)
fhw= fopen(file,'w')
for i = 1:length(ca)
    if length(ca{i})>= 6
        fprintf(fhw, [ca{i} '\n'])
    end
end
fclose(fhw)
end

% %% Question 2 - long2text
% 
% function [ ] = long2text(ca, filename)
%     fhw = fopen(filename, 'w')
%     for x = 1:length(ca)
%         if length(ca{x}) >= 6
%             fprintf(fhw, [ca{x} '\n'])
%         end
%     end
%     fclose(fhw)
% end