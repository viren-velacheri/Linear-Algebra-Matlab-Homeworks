A = [-11 0 -1 13; 12 1 1 -13; 10 0 4 -10; -5 0 -1 7]
eig(A)
eig(A^2)
disp("The eigenvalues for A^2 are the eigenvalues of A squared")
eig(A^3)
disp("The eigenvalues for A^3 are the eigenvalues of A cubed. If one of eigenvalues for A was negative, then for A^3 it will also be negative.")
eig(A^4)
eig(A^5)
disp("My conjectures are right")
B = rand(3,3)
eig(B)
eig(B^2)
eig(B^3)
eig(B^4)
eig(B^5)
disp("The eigenvalues of A^k are simply the eigenvalues of A to the power of k")
C = [8 0 11; 5.5 1.8 10.3; -5.5 0 -8.5]
eig(C)
eig(C + 3 * eye(3))
eig(C - eye(3))
eig(C + 2 * eye(3))
disp('The eigenvalues for any matrix A + kI is simply the eigenvalues of A plus the 1 times k')
[P,D] = eig(A);
C = P * (diag(diag(D).^4)) * inv(P)
[Q,E] = eig(A^4);
J = Q * (diag(diag(E).^4)) * inv(Q)
[R,F] = eig(A^5);
K = R * (diag(diag(F).^4)) * inv(R)
