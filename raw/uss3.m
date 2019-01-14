% z = complex(3,2)
%plot(real(z), imag(z), "*")
%plot(z, "o")

% a = [complex(3,2) complex(-2, -1) complex(-2, 1) complex(-1,-2)]
% plot(a, "*")

% theta = linspace(0,2*pi, 300)
% is eq theta = 0:0.01:2*pi
% R = 7
% x = R*cos(theta)
% z = R*sin(theta);
% plot(x,z,0,0,"x");
% axis equal


% n = 0:100
% zz = exp(2*pi*i*n/100)
% f0 = 0
% omega0 = 2*pi*f0/100
% z0 = exp(i*omega0);
% f1 = 3.5
% omega1 = 2*pi*f1/100
% z1 = exp(i*omega1);
% f2 = 7
% omega2 = 2*pi*f2/100
% z2 = exp(i*omega2);
% figure;
% plot(real(zz), imag(zz), real(z0), imag(z0), "*", real(z1), imag(z1), "*", real(z2), imag(z2), "*")
% axis equal
% grid on

% 
% a = [complex(3,2) complex(-2, -1) complex(-2, 1) complex(-1,-2)]
% osx = 10
% hold on
% plot([-osx osx], [0 0])
% plot([0 0], [-osx osx])
% plot(a, "*")
% grid on
% theta = 0:0.01:2*pi
% R = 7
% x = R*cos(theta)
% y = R*sin(theta)
% plot(x, y)
% axis equal
% text(6, -0.4, "Realna cast")
% b = text(-0.4, 4, "Imaginarna cast")
% set(b, "Rotation", 90)
% text(3, 2, "\leftarrow 3+2i")
% x = real(a(1,1))
% y = imag(a(1,1))
% line("Xdata", [x x 0], "YData", [0 y y], "Color", [0 0.6 0], "LineStyle", "-.", "LineWidth", 3)

%%sinus
% f = 1
% t = 0:0.01:1
% theta = sin(2*pi*f*t)
% plot(t, theta)
% grid on
% axis equal

%%subplot
x = linspace(0,2*pi, 300)
y1 = sin(x)
y2 = sin(2*x)
y3 = sin(4*x)
y4 = sin(8*x)
subplot(2,2,1)
plot(x, y1)
subplot(2,2,2)
plot(x, y2)
subplot(2,2,3)
plot(x, y3)
subplot(2,2,4)
plot(x, y4)