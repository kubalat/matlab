A = zeros(64);
counter = 1;

for i=8:8:64
    for j=8:8:64
        A((i-7):i,(j-7):j) = counter;
        counter = counter + 1;
    end
end