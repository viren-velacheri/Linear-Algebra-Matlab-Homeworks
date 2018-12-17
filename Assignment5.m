A=[1;-1;1]
B=[1;0;1]
C=[1;1;2]
D = A/norm(A)
disp('The first basis is(-0.5774, -0.5744, 0.5774)')
E = D*(dot(D,B))
F=B-E
G=F/norm(F)
disp('Second basis is (0.4082, 0.8165, 0.4082)')
H = D*(dot(D,C))+G*(dot(G,C))
I=C-H
J=I/norm(I)
disp('Third basis is (-0.7071, 0, 0.7071)')
format rat
A = [1 ; -1 ; 1]
B = [1; 0; 1]
C = [1; 1; 2]
D = A/norm(A)
disp('First basis is (-0.5774, -0.5774, 0.5774)')
norm(D)
E = D*(dot(D,B))
F = B-E
G = F/norm(F)
disp('Second basis is (0.4082,0.8165,0.4082)')
norm(G)
H = D*(dot(D,C))+G*(dot(G,C))
I = C-H
J = I/norm(I)
disp('Third basis is (-0.7071, 0, 0.7071)')
norm(J)
dot(D,G)
dot(G,J)
dot(D,J)
c1 = [1 1 1 1 1]
c2 = [1 2 3 4 5]
c3 = [1 0 1 0 1]
c4 = [1 2 1 0 1]
u1 = c1/sqrt(5)
norm(u1)
p2 = u1*dot(u1, c2)
e2 = c2 - p2
u2 = e2/norm(e2)
p3 = u1*dot(u1, c3) + u2*dot(u2, c3)
e3 = c3-p3
u3 = e3/norm(e3)
p4 = u1*dot(u1, c4) + u2*dot(u2, c4) + u3*dot(u3, c4)
e4 = c4-p4
u4 = e4/norm(e4)
dot(u1, u2)
dot(u1, u3)
dot(u1, u4)
dot(u2, u3)
dot(u2, u4)
dot(u3, u4)
disp("Orthogonal basis vectors are:")
u1
u2 
u3
u4
