function [K] = mojafiltracia(y,w)
    A = mean(zeros(size(y)));
    
    for i = 1:size(y,2)
        A(1,i) = mean(y(1, i:i-w+1))
    end
    K = A
end
