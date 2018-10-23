function [YS] = zasum(y,amp)
    noise = ((rand(size(y))*amp-(amp/2)));
    YS = y + noise;
end