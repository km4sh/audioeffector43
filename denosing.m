function denoisingfilename = denosing(in)
[wav,fs] = audioread(in);
wavL = wav(1:length(wav));
wavR = wav(length(wav)+1:2*length(wav));
out = wavL-wavR;
audiowrite(['denoising_',in],out,fs);
denoisingfilename = ['denoising_',in];
