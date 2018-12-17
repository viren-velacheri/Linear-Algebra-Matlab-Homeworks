disp('The populations stay the same')
disp('The populations changes')
A1 = [0.599 0.6 0.1; 0.7 0 0; 0 0.3 0]
A2 = [0.21 0.64 0.12; 0.69 0 0; 0 0.36 0]
A3 = [0.868 0.4 0.2; 0.3 0 0; 0 0.2 0]
EigA1 = eig(A1)
EigA2 = eig(A2)
EigA3 = eig(A3)
r1 = {max(EigA1)}
disp('It is unstable as largest eigenvalue is greater than 1')
r2 = {max(EigA2)}
disp('It is stable as largest eigenvalue is less than 1')
r3 = {max(EigA3)}
disp('It is neutrally stable as largest eigenvalue is equal to 1')
B = [0.5 0.44 0.06; 1 0 0; 0 1 0]
x = [14; 20; 11]
EigB = eig(B)
[V, D] = eig(B)
x1 = V(:,1)
I = [1 0 0; 0 1 0; 0 0 1]
r = {max(x1)}
B1 = B-I
x1 = null(B1)
B2 = B-(-0.3)*I
x2 = null(B2)
B3 = B-(-0.2)*I
x3 = null(B3)
P = [x1 x2 x3]
P1 = inv(P)
x = [14 ; 20 ; 11]
D = diag(eig(B))
D1 = [1 0 0; 0 0 0;0 0 0]
E = P*D1
F = E*P1
G = F*x
disp('u is the product of a matrix whose first column is the eigenvector corresponding with the eigenvalue of 1 and a matrix that is inverse of the eigenvector marix P, multiplied by x, the initial population')
disp('M1 is not as sum of entries in column 2 are not equal to 1. Same with M4')
disp('M2 is not as sum of entries in column 3 are not equal to 1.')
disp('M3 is a markov matrix')
M3 = [0.5 0.1 0.6 0.4; 0.2 0.5 0.2 0.1; 0.1 0.3 0 0.1; 0.2 0.1 0.2 0.4]
EigM3 = eig(M3)
r = {max(EigM3)}
disp('Markov matrices are neutrally stable as their largest eigenvalue is 1')
M4 = [0.5 0.2 0.1 0.2; 0.6 0.3 0.05 0.05; 0.3 0.4 0.2 0.1; 0.2 0.3 0.4 0.1]
r = {max(eig(M4))}
[V D] = eig(M3)
disp(' none of the entries in column are 0')
A = [0.559 0.6 0.1; 0.7 0 0; 0 0.3 0]
eig(A)
A1 = A-I
v1 = null(A1)
v2 = -null(A1)
syms n
eqn = n*v2(1,1) + n*v2(2,1) + n*v2(3,1) == 1
soln = solve(eqn,n)
v3 = v2*soln
double(100/191)
double(70/191)
double(21/191)
disp('52.36% will eventually be age 0')
disp('36.65% will eventually be age 1')
disp('10.99% will eventually be age 2')
