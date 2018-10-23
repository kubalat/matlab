a = 5;
b = 6;
% subor sa musi volat ako funkcia
c = pluss(a,b);
c;

x = linspace(0, -2*pi, 100)
y1 = sin(x)
y2 = cos(x)

% subplot(1,2,1)
% plot(x, y1, "--b")
% 
% subplot(1,2,2)
% plot(x, y2, "--g")
% 
% subplot(1,1,1)
% plot(x, y1, "--b", x, y2, "--g")

% ekvivalent pre vygenerovanie dvoch grafov do jedneho
% plot(x, y1, "--b")
% hold on
% plot(x, y2, "--g")

hold off
y11 = y1
y11(y11>0.8) = 0.8
y11(y11<-0.8) = -0.8

plot(x, y11, "--r")
axis([0 2*pi -1 1])

noise = (rand(1,100)/5)
%vykreslenie sumu
plot(y11 + noise)

for i = 1:9
    subplot(3,3,i)
    y(i,:) = sin(i*x)
    plot(y(i,:))
    %plot(x, sin(x*i))
end


A = sum(y(1:5, 1:50))
B = sum(y(6:9, 51:100))
C = sum(A+B)


A(A>2) = A(A>2)/2
B(B<0) = B(B<0)*-1

A = reshape(A, [2,25])
B = reshape(B, [5,10])
B(5, :) = []
B(B >= 0.03 & B < 0.5) = 0
B(B>=0.5) = 1
%prikazom round zaokruhlujeme
B = round(B)
M1 = B
[rowcount, colcount] = size(M1)

for i = 1:rowcount
   for j = 1:colcount
       if M1(i,j) == 0
           M1(i,j) = 1
       else
           M1(i,j) = 0
       end
   end
end
B
M1


for i = 0.1:0.1:0.9
    subplot(3,3,i*10)
    plot(zasum(y11, i))
end

while(true)
    num = randi([1,10],1)
    pause(0.5)
    if num == 10
        break;
    end
end


AA = randi([1,10],5)
BB = randi([1,5],5)
CC = randi(5,5)

for i=2:2:5
    CC(:, i) = AA(:,i)
end

for i=1:2:5
    CC(:, i) = BB(:,i)
end