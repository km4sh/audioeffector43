function file = offsetdenoising(filename)
[wav,fs] = audioread(filename);
wavL = wav(1:length(wav));
wavR = wav(length(wav)+1:2*length(wav));
out = wavL-wavR;
audiowrite(['offsetdenoised_',filename],out,fs);
file = ['offsetdenoised_',filename];
