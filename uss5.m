%toto spravi obldzniky v grafe
n= -10:20
%step = heaviside(n)
%step(n==0) = 1
%ekvivalent
% a = zeros(size(n))
% a(find(n>=2 & n <= 4)) = 1


%cez rectpuls
C = rectpuls(n,30) %generuje hodnoty okolo nuly .... ked pripocitavame/odpocitavame hodnoty k n, tak vieme posuvat miesto okolo ktoreho sa to ma generovat
% find(C==1)
%stem(n, C)

A = 2
fr = 2 %2kHz
T = 1/fr %perioda
t = 0:0.01:5*T %tmin --> 0   tmax --> 5T
y = A*sin(2*pi*fr*t)
stem(t, y, "Fill")