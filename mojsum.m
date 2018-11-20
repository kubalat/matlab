function [Ys, u] = mojsum(amp,y)
    A = rand(size(y));
    A = (A/max(A))*amp
    B = y+A;
    
    Ys = B
    u = A
end

