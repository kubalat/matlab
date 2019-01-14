%frekvencie
fr = [1 2 3 4]

%amplituda
A = 2

%cas --> hranice v podstate
%tg je definovany od -pi/2 do pi/2
t1 = 0:0.05:2*pi
t2 = -pi/2+0.01:0.05:pi/2-0.01 %0.01 sluzi na oddelenie hranic, aby to bolo lepsie viditelne
t3 = -pi/2+0.01:0.001:0-0.01 %0.01 sluzi na oddelenie hranic, aby to bolo lepsie viditelne
t4 = 0+0.01:0.001:pi/2-0-0.01 %0.01 sluzi na oddelenie hranic, aby to bolo lepsie viditelne

%sinusovka
y = A*sin(pi*fr(1)*t1) % --> takto sa zapisuje sin funkcia .... pouzili sme len PI lebo chceli vykreslit vrchnu cast sinusovky

subplot(2,2,1)
%vykreslenie
stem(t1, y, "Fill")

y = A*cos(pi*fr(2)*t1) % --> takto sa zapisuje cos funkcia
subplot(2,2,2)
stem(t1, y, "Fill")

y = A*tan(t2) %pre tg sa nemoze dat pi*fr() -- ono to je stale rovnake v podstate
subplot(2,2,3)
plot(t2, y)


y1 = A*cot(t3) %pre tg sa nemoze dat pi*fr() -- ono to je stale rovnake v podstate
y2 = A*cot(t4) %pre tg sa nemoze dat pi*fr() -- ono to je stale rovnake v podstate
subplot(2,2,4)
plot(t3, y1, t4, y2)
grid on

%-------
%Kronekerov impulz - vykreslenie zakladneho impulzu - jednotkovy impulz -
%strasne rychly impulz

xx = -10:1:10
%nulovy vektor ktory bude mat 21 hodnot
z = zeros(size(xx))
z(find(xx==0)) = 1
subplot(1,1,1)
stem(xx, z)




