%1
% h = linspace(0,10*pi,500);
% r = 4;
% s = 1;
% Y = sin(h);
% subplot(r,s,1);
% plot(Y)
% title 'GREETINGS, IM TITLE';
% [Ys, u] = mojsum(Y, 0.3)
% subplot(r,s,2);
% u = randn(size(Y));
% u = (u/max(u));
% plot(u);
% title 'GREETINGS, IM SUM';
% subplot(r,s,3);
% Ys = (Y+u);
% plot(Ys);
% title 'GREETINGS, IM ZASUMEMNY SIGNAL';
% 
% subplot(r,s,4);
% Yf = mojafiltracia(Ys,50);
% plot(Yf);
% title 'GREETINGS, IM VYFILTROVANY SIGNAL';



%2
r = 4;
s = 2;
subplot(r,s,1);
obr = imread('obr.png');
imshow(obr);

subplot(r,s,2);
obr2 = rgb2gray(obr);
imshow(obr2);

subplot(r,s,3);
obr3 = edge(obr2, 'canny', 0.4);
imshow(obr3);

subplot(r,s,4);
imshowpair(obr3, obr2, 'montage');

subplot(r,s,5);
obr4 = obr3*255;
obr4 = uint8(obr4);
obr4 = obr4 + obr2
imshow(obr4)

subplot(r,s,6);
obr5 = flipdim(obr,2);
imshow(obr5);

subplot(r,s,7);
obr6 = obr3*255;
obr6 = uint8(obr6);
obr6 = obr6 + obr;
imshow(obr6);