%%
% One variable
%%
x = 10 % assignment of a value (with printing)
x = 10; % assignment of a value (semicolon used to suppress printing)
y = exp(x);
z = x + y;
%%
% Define matrix
%%
X = [5 3 7 1]; % elements separated by space or comma: creates a 1x4 matrix
size(X)
X = [5;3;7;1]; % elements separated by semicolon: creates a 4x1 matrix
X = [1 2 3; 4 5 6; 7 8 9]; % creates a 3x3 matrix
Z = X'; % Z is the transpose matrix of X
%% linspace, ones, zeros, magic, randn, eye, rand
%%
%%create matrix with concatenation 
A = [ 1 2 3 ; 4 5 6; 7 8 9];
B = [A zeros(3,2); ones(2,3) eye(2)]
%%
%%save and load data
save('myMat.mat','B')
load('myMat.mat')
%% working with matrix elements
B(3,2)
B(4,:)
B(:,4)
B(1,end)
B(5,end)
%select specific part of matrix
B(2:4,1:5)
%%
%%important operations on matrices
% dot produst
X = [1 2 3];
Y = [ 1 2 3];
dotP = X*Y' %exactly equals to the squared norm of a matrix 
norm(X)
%Euclidean Distance
norm(X - Y)
%%
%%important built in functions
max(max(B))
sum(sum(B))
C = B(find(B>2))
C = repmat(B,2,1)
%if else , for loop, while and etc
%plot Data
x = linspace(0,10);
y1 = sin(x);
y2 = sin(5*x);

figure
subplot(2,1,1);
plot(x,y1)

subplot(2,1,2);
plot(x,y2)
%-------------------------------------------------------------------
%%Data representation in Machine Learning
%------------------------------------------------------------------
% assume X is data
X = rand(10,2) %trainig samples
Y = [1 1 -1 1 1 -1 1 1 -1  -1]%trainig labels
%%-----------------------------------------------------------------
%%% NN classifier
l = nnclassification(X,Y,[0.6 0.5])
%-------------------------------------------------------------------
%%PCA
 [Z, vec, val] = mPCA(X,1)
%%KMEANS
 [IDX, C] = kmeans(X,2)









