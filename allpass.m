%% april 17, 2017. shanghai university. mattma9209@gmail.com
function [sigout,objout] = allpass(sigin,objin)
[wav,fs] = audioread(sigin);
g = grpdelay(objin,'whole');
g1 = max(g) - g;
Spec = fdesign.arbgrpdelay('N,B,F,Gd',8,objin.NumEQBands,wncomp,g1);
objout = design(Spec,'iirlpnorm','SystemObject', ...
                     true);
sigmid = objin(sigin);
sigout = objout(sigmid);
audiowrite(['compensated_',sigin],sigout,fs);
denoisingfilename = ['denoising_',in];
