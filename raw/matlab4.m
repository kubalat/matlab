A = randn(5)
A(A<0) = 0


B = randi([1,20],10)
B(B>18) = 0
for i=1:10
   for j=1:10
       if B(i,j) > 18
           B(i,j) = 18
       end
   end
end

sum(B)

C = sum(sum(B(1:5,1:5)))
D = sum(sum(B(1:5,6:10)))
E = sum(sum(B(6:10,1:5)))
F = sum(sum(B(6:10,6:10)))
C + D + E + F

%priemer
avgValue = mean(mean(B)) / 2
B(B < avgValue) = 0

for i=1:10
    for j=1:10
        if B(i,j) == 0
            B(i,j) = randi(5,1)*-1
        end
    end
end

for i=1:10
    for j=1:10
        if B(i,j) > 0
            B(i,j) = B(i,j)/2
        end
    end
end

for i=1:10
    for j=1:10
        if B(i,j) < 0
            B(i,j) = B(i,j)*-1
        end
    end
end


%B(B == 0) = randi(5,1)*-1

C = randi([5,20], 4, 10)

%spojenie dvoch matic vertikalne ---> horizontalne D=[B C]
D = [B;C]


%zistenie poctu riadkov a stlpcov do premennych
[rowcount, colcount] = size(D)

E = linspace(1,colcount,10)

F = reshape(D, [1,14*10])

PP = reshape(F, [2, 70])

G(:, 25:45) = 0

G((G>=5 & G<=6) | (G>14 & G<=20)) = -5

%vymaze riadky a stlpce z intervalu
G(:, 25:45) = []

G(:, 1:15) = randi([5,20],2, 15)

H = linspace(0, 2*pi,300)

y1 = sin(H)
y2 = cos(H)
plot(H, y1, "--g", H, y2, ":ro")
xlabel("this is x label")
ylabel("this is y label")
title("this is title")

y3=sin(4*H)
y4=cos(4*H)
subplot(2,2,1)
plot(H, y1, "--g*")
subplot(2,2,2)
plot(H, y2, ":ro")
subplot(2,2,3)
plot(H, y3, "x")
subplot(2,2,4)
plot(H, y4, "x")

plot([-1, 6.28], [0,0])
grid on
hold on
plot([0,0], [-1,1])
plot(H, y1, "--b", H, y2, "--g")

PP = randn(5)
