%izy gejm
odpoved=randi(100);
pokus=0;
hadam=-1;

while hadam ~= odpoved
   hadam = input("Zadaj cislo\n");
   pokus = pokus + 1;
   if (hadam < odpoved)
       fprintf("Hladane cislo je vacsie\n")
   elseif (hadam > odpoved)
       fprintf("Hladane cislo je mensie\n")
   else
       fprintf("BINGO\n")
   end
end


%zaujimave grafy

a = 2
f = 6
t = 0:0.01:1
y = a*sin(2*pi*f*t)
[m,n] = size(t)
r = rand(m,n)
y1 = y + r %pre zjemnenie sumu
y2 = zeros(m,n)
for i=2:(n-1)
    y2(i) = (y1(i-1)+y1(i)+y1(i+1))/3
end

subplot(4,1,1)
plot(t, y)
subplot(4,1,2)
plot(t,r)
subplot(4,1,3)
plot(t,y1)
subplot(4,1,4)
plot(t, y2)

%definovanie struktury --- musia byt apostrofs
A = struct('Meno', 'Xaverus', 'Priezvisko', 'Zakus', 'Vek', 24)

B.name = 'Xaverus'
B.surname = 'Zakus'
B.age = 24


%funkcia number_writter
number_writter


%vykresli kruznicu
A = linspace(0,2*pi,300)
T = 0:0.01:2*pi
R = 7
X = R*cos(A)
Y = R*sin(A)
plot(X,Y,0,0,'+')
axis equal %daj do stredu


%progressbar --- waitbar function ---oh god why
pb = waitbar(0, "Im something missing")
for i=100:-1:0
    waitbar(i/100, pb)
    pause(0.01)
end
pb.delete

%funkcia filtruj
filtruj



%nacitanie nahravky a pridavanie sumu a zjemnovanie? asi ....
[y, Fs] = audioread('Track1.mp3')
m = 5;
n = 1;
subplot(m,n,1)
plot(y)
z = y(1:24000, :) %: je akoze pre vsetky riadky, aj ked tam je len jeden
subplot(m,n,2)
plot(z)
z = z*2
z(z > 1) = 1
z(z < -1) = 1
subplot(m,n,3)
plot(z(1:200))
sumf=rand(size(z))*0.3*-0.15
zs = sumf + z
subplot(m,n,4)
plot(zs)
subplot(m,n,5)
zsf = filtruj(zs,3)
plot(zsf(1:10))


%otvorenie suboru
H = fopen('sm_prct_1.dat') %toto je nejaky datovy subor ... u mna neexistuje, na hodine bol k dispozicii
data = fread(A, 'single')
figure;
plot(data)

%otvorenie videa
video_file = VideoReader('xylophone.mp4');
get(video_file);
frame = rgb2gray(readFrame(video_file));

while hasFrame(video_file)
   video = readFrame(video_file);
   imshow(video)
end

%otvorenie videa rgb2gray
video_file = VideoReader('xylophone.mp4');
get(video_file);
frame = rgb2gray(readFrame(video_file));

while hasFrame(video_file)
   frame2 = rgb2gray(readFrame(video_file));
   frame3 = frame-frame2;
   pause(0.001);
   imshow(frame3);
   frame = frame2;
   abs(frame);
end