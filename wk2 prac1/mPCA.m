function [Z,vecs,vals] = mPCA(X,K)
[N D] = size(X);
if K > D,
error('PCA: you are trying to *increase* the dimension!');
end;
mu = mean(X);
X = X - repmat(mu,N,1); % center the data (i.e. subtract othe mean)
C = cov(X); % compute the covariance matrix of the centered data
% eigenvalue decomposition of C
[vecs,vals] = eigs(C, K); % choose the top K eigenvalues and vectors
vals = diag(vals); % vals are the eigenvalues associated with the dimensions
Z = X*vecs; % Z is the projected data