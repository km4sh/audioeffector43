function [W,S] = ICA(X,C)
%----------centering
[N,M] = size(X); 				%to get the number of rows(signals) and columns(samples) of X    
average= mean(X')';  				%to get the average value of each rows(X has been transposed)
for i=1:N
    X(i,:)=X(i,:)-average(i)*ones(1,M); 
end
%---------whitening
Cx = cov(X',1);    				%to calculate the cov of X
[eigvector,eigvalue] = eig(Cx); 		%to get the eigenvector and eigenvalue of Cx
Whit = eigvector*eigvalue^(-1/2)*eigvector';  	
X = Whit*X;   					%orthogonal matrix
%----------components extraction
syms u;
Maxcount=1e4;
Critical=1e-4.*ones(N,1);			%the value of convergement
W = rand(N,C);					%initialize the un-mixing mitrix
ONE = ones(M,1);
f(u) = -exp(-u^2/2);				%general purposes nonquadratic nonlinearity
g(u) = u*exp(-u^2/2);
h(u) = (1-u^2)*exp(-u^2/2);
for p = 1:C
	Prev = W(:,p)+1;
	count = 0;
	while abs(W(:,p)-Prev) > Critical
		count = count+1;
		Prev = W(:,p);
		W(:,p) = (1/M).*(X*g(W(:,p)'*X)')-(1/M).*(h(W(:,p)'*X))*ONE*W(:,p);
		Wj = zeros(N,1);
		for j = 1:p-1
			Wj = Wj+W(:,p)'*W(:,j)*W(:,j);
		end
		W(:,p) = W(:,p)-Wj;
		W(:,p) = W(:,p)/norm(W(:,p));
		if count >= Maxcount
			fprintf('No useful components was found.');
			return;
		end
	end
end
S = W'*X;
