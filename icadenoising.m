function file = icadenoising(filename)
[s,fs] = audioread(filename);
s=s';

MixedS = s; 
MixedS_mean = zeros(2,1);
for i = 1:2
    MixedS_mean(i) = mean(MixedS(i,:));
end
for i = 1:2
   for j = 1:size(MixedS,2)
      MixedS(i,j) = MixedS(i,j)-MixedS_mean(i);
   end
end

MixedS_cov = cov(MixedS');
[E,D] = eig(MixedS_cov);
Q = sqrt(D)\E';
MixedS_white = Q*MixedS;

%FastICA
X = MixedS_white;
[VariableNum,SampleNum] = size(X);
numofIC = VariableNum;
W = zeros(numofIC,VariableNum);
for r = 1:numofIC
   i = 1;
   maxIterationsNum = 1e2;
   w = rand(numofIC,1)-.5;
   w = w/norm(w);
   while i <= maxIterationsNum+1
      if i == maxIterationsNum
          break;
      end
      bOld = w;
      a2 = 1;
      u = 1;
      t = X'*w;
      g = t.*exp(-a2*t.^2/2);
      dg = (1-a2*t.^2).*exp(-a2*t.^2/2);
      w = ((1-u)*t'*g*w+u*X*g)/SampleNum-mean(dg)*w;
      w = w-W*W'*w;
      w = w/norm(w);
      if abs(abs(w'*bOld)-1) < 1e-9
          W(:,r) = w;
          break;
      end
      i = i+1;
   end
W(:,r) = w;
end

W = W';
ICAedS = W*MixedS_white;
signal = ICAedS(1,:);
audiowrite(['icadenoised_',filename],signal,fs);
file = ['icadenoised_',filename];
