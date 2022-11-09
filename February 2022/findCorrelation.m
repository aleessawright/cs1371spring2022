function [answer] = findCorrelation(r)
%positives
if r>0
    if r>0 & r <= .30
        c = r
        c3 =.30-r
        if c<c3
            answer = 'No linear relationship'        
        else
            answer = 'A weak uphill (positive) linear relationship'
        end

        elseif r>.30 & r<=.50
        c3 = r-.30
        c5 =.50-r
        if c3<c5
            answer = 'A weak uphill (positive) linear relationship'
        else
            answer = 'A moderate uphill (positive) linear relationship'
        end
        
        elseif r>.50 & r<=.70
        c5 = r-.50
        c7 =.70-r
        if c5<c7
            answer = 'A moderate uphill (positive) linear relationship'
        else
            answer = 'A strong uphill (positive) linear relationship'
        end
        
        elseif r>.70 & r<1
          c7 = r-.70
        c1 =1.0-r
        if c7<c1
            answer = 'A strong uphill (positive) linear relationship'
        else
            answer = 'A perfect uphill (positive) linear relationship'  
        end
    else
        answer = 'A perfect uphill (positive) linear relationship'
    end
    
%negatives        
elseif r<0
    r = abs(r)
    if r>0 & r <= .30
            c = r
            c3 =.30-r
            if c<c3
                answer = 'No linear relationship'        
            else
                answer = 'A weak downhill (positive) linear relationship'
            end

        elseif r>.30 & r<=.50
        c3 = r-.30
        c5 =.50-r
        if c3<c5
            answer = 'A weak downhill (negative) linear relationship'
        else
            answer = 'A moderate downhill (negative) linear relationship'
        end
        
        elseif r>.50 & r<=.70
        c5 = r-.50
        c7 =.70-r
        if c5<c7
            answer = 'A moderate downhill (negative) linear relationship'
        else
            answer = 'A strong downhill (negative) linear relationship'
        end
        
        elseif r>.70 & r<1
          c7 = r-.70
        c1 =1.0-r
        if c7<c1
            answer = 'A strong downhill (negative) linear relationship'
        else
            answer = 'A perfect downhill (negative) linear relationship'  
        end
    else
        answer = 'A perfect downphill (negative) linear relationship'
    end

%zero    
else
    answer = 'No linear relationship'
end
end