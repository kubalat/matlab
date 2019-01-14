function zobrazAprehraj(fileName, startSec, endSec)
    [y, Fs] = audioread(fileName);
    startFs = Fs*startSec + 1;
    endFs = Fs*endSec;
    newY = y(startFs:endFs, :);
    sound(newY, Fs);
    plot(newY);
end

