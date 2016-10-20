[a,Fsa] = audioread('a43.wav');
aL = a(1:length(a));
aR = a(length(a)+1:2*length(a));
ad = aL+aR;
[ad,A,W] = fastica(ad,'approach' ,'symm');

% adObj = audioplayer(ad,Fsa);
% play(adObj)