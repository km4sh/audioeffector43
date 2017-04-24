%% april 17, 2017. shanghai university. mattma9209@gmail.com
function [filename,sosout] = compensating(filein,sosin,order,freq)

[sigin,fs] = audioread(filein);

g = grpdelay(sosin,10001);
g1 = max(g) - g;
f = 0:0.0001:1;
R = 0.99;

h = fdesign.arbgrpdelay('N,F,Gd',order,f,g1);
comp = design(h,'MaxPoleRadius',R,'SystemObject',true);
sosout = comp;
% $$$ [b,a] = iirgrpdelay(order,f,[0 1],g1');
% $$$ sosout = tf2sos(b,a);
ori = dsp.BiquadFilter('SOSMatrix',sosin);
% $$$ comp = dsp.BiquadFilter('SOSMatrix',sosout);

sigmid = ori(sigin);
sigout = comp(sigmid);
filename = ['compensated_',filein];
audiowrite(filename,sigout,fs);
