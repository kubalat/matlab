function [] = vzorkovac(inputArg1,inputArg2)
    % x = linspace(-10, 10, 1000); %ukazka sincu
    % y = sinc(x); %ukazka sincu
    % plot(x, y, 'b-', [x(1), x(end)], [0, 0], 'k:'); %ukazka sincu
    % grid on; %ukazka sincu
    
    % Vzorkovacia frekvencia Hz
    Fs = 1000.0;
    
    % Cas. okamih pociatku pozorovania signalu (sec.)
    t1 = 0.0;
    % Cas. okamih konca pozorovania signalu (sec.)
    t2 = 1.0;
    
    %Cas. okamih pociatku zobrazovania signalov (sec.)
    tt1 = 0.0;
    %Cas. okamih konca zobrazovania signalov (sec.)
    tt2 = 0.15;
    
    % Dlzka pozorovania signalu (s)
    T = t2 - t1;
    %Pocet hodnot signalu na dlzku pozorovania T sec.
    N = floor(T * Fs);
    
    %Vektor diskretnych cas.(vzorkovacich) okamihov signalu x(t)
    tx = (0:(N-1)) / Fs;
    
    % Uprava na stlpcovy vektor
    tx = tx(:); % alebo aj tx'
    
    % Vektor hodnot diskretneho signalu x[n], ktory vznikol idealnym
    % vzorkovanim signalu x(t)
    x = 1.0 * cos(2*pi*50.0*tx-pi/4) + ...
        0.2 * cos(2*pi*450.0*tx-pi/3);
    
    figure(1)
    stem(tx,x)
    
end

