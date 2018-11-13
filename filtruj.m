function [fv] = filtruj(v,w)
    v = [1 5 2 3 12 10 4 7 8 9 11 14]
    w = 3
    for i=1:1:length(v)-w+1
        fv(i) = mean(v(i:i+w-1))
    end
end

