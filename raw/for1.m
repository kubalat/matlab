r = 5;
s = 5;
A = zeros(r, s);

for i = 1:1:5
    A(i,i) = 2
end

for i = 1:r
    for z = 1:s
        if i==z
           A(i,z) = 2
        end
    end
end

for i = 1:r
    for z = 1:s
        if abs(i-z) == 1
            A(i,z) = -100
        end
    end
end

for i = 1:r
    for z = 1:s
        if abs(i-z) == 4
            A(i,z) = -200
        end
    end
end

C = zeros(7,9)

for i = 1:9
    C(:, i) = 1:1:7
    %alternative C(:, i) = linspace(1, 7, 7)  
end

for i = 2:2:9
   C(i, :) = -1
end


