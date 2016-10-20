[y,Fs] = audioread('e43.wav');
[W,S] = ICA(y',2);
y1 = audioplayer(S(1,:),Fs);
y2 = audioplayer(S(2,:),Fs);
play(y2)
% yL = y(1:length(y));
% yR = y(length(y)+1:2*length(y));
% yd = yL+yR;
% fftyd = fft(yd);
% fftyd2 = abs(fftyd/length(y));
% fftyd1 = fftyd2(1:length(y)/2+1);
% fftyd1(2:end-1) = 2*fftyd1(2:end-1);
% f = Fs*(0:(length(y)/2))/length(y);
% plot(f,fftyd1);
