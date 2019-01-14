function prehraj(fileName,speed)
    [y, Fs] = audioread(fileName);
    fasterFs = Fs*speed;
    sound(y, fasterFs);
end

