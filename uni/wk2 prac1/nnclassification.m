function [label] = nnclassification(X,Y,T)
[N,D]=size(X);
Xdist=X-repmat(T,N,1);
Xdist2=sum(Xdist.^2,2);
[minX,nn]=min(Xdist2);
label = Y(nn);