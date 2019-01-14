%App settings
delayEcho = 3; % in seconds
strengthEcho = 0.9; % 50 percents
fileName = "mysong.m4a";
repeats = 2;

% Read file
[y1, Fs] = audioread(fileName)

% Check channels
[m,n] = size(y1)

if n == 1 
    y1 = [y1 y1];
end

% Create echo
delayFs = delayEcho * Fs
y2 = zeros(size(y1))

%Creating new sound
y2 = y1;

for i=1:repeats
    actualDelayFs = i * delayFs;
    
    for j=actualDelayFs + 1:m 
        y2(j, :) = y2(j, :) + strengthEcho*y1(j-actualDelayFs, :);  
    end 
end

