Pz = sum(sum(signal2.^2));
Pr = sum(sum(signal1.^2));
SNRy1 = 10*log10(W()*Pr/0.0104^2/Pz);
SNRy2 = 10*log10(0.0041^2*Pr/0.0022^2/Pz);