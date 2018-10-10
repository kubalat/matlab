in = input("Zadaj cislo")
switch in
    case 1
        disp("Zadal som 1")

    case 2
        disp("Zadal som 2")
    otherwise
        disp("Nic moc")
end

r = 5;
s = 5;
A = zeros(r, s);

for i = 1:1:5
    A(i,i) = 2
end

,i) = 2
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


x = linspace(0,2*pi, 25)
y = sin(x)
z = cos(2*x)
plot(x, y, ':ro', x, z, '--g*')
% title("This is title")
% ylabel("This is y label")
% xlabel("This is x label")
%
% subplot(2,2,1)
% plot(x,y, ":r")
% title("This is title")
% ylabel("This is y label")
% xlabel("This is x label")
%
% subplot(2,2,2)
% plot(x,y, "*g")
% title("This is title")
% ylabel("This is y label")
% xlabel("This is x label")
%
% subplot(2,2,3)
% plot(x,y, "*y")
% title("This is title")
% ylabel("This is y label")
% xlabel("This is x label")
%
% subplot(2,2,4)
% plot(x,y, ":b")
% title("This is title")
% ylabel("This is y label")
% xlabel("This is x label")

