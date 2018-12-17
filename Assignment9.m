E = [5 8; 8 13]
inMes = [12 9 14 5 1 18 0 1 12 7 5 2 18 1]
M = reshape(inMes, 2,7)
A = E*M
C = mod(A, 27)
disp('XXBOEHQVHYNLQV')
enMes1 = [25 16 23 2 21 13 2 15 0 15 14 17]
M1 = reshape(enMes1, 2, 6)
A1 = inv(E)*M1
D = mod(A1, 27)
disp('HETEROGENEOUS-')
E = [1 1; 5 6]
enMes2 = [12 11 19 19 19 15 12 6 7 23 6 24 2 19 2 24]
M2 = reshape(enMes2, 2, 8)
A2 = inv(E)*M2
E = mod(A2, 27)
disp('CORRECT-SOLUTION')
E = [5 4 2; 8 8 9; 4 3 1]
enMes3 =[12 9 14 5 1 18 0 1 12 7 5 2 18 1 0]
M3 = reshape(enMes3, 3, 5)
A3 = E*M3
F = mod(A3, 27)
disp('PXHKUWJQFEFRMQU')
enMes3 = F
M4 = reshape(enMes3, 3, 5)
A4 = inv(E)*M4
G = mod(A4, 27)
disp('Quadratic-algebra-')
E = [1 0 0 1; 0 1 1 0; 0 1 0 0; 1 0 0 0]
enMes4 = [12 17 25 19 20 13 13 5 23 5 0 6 3 21 1 21 15 6 14 15]
M5 = reshape(enMes4, 4, 5)
A5 = inv(E)*M5
H = mod(A5, 27)
disp('SYSTEM-OF-EQUATIONS')
E = [1 2; 1 1]
enMes5 = [6 18 18 2 22 17 3 25 26 13 20 1 10 1 16 2]
M6 = reshape(enMes5, 2, 8)
A6 = inv(E)*M6
J = mod(A6, 27)
disp('MISSION-IMPOSSIBLE')
E =[0 1; 1 0]
enMes6 = [13 1 20 18 9 24]
M8 = reshape(enMes6, 2, 3)
A7 = E*M8
U = mod(A7, 27)
disp('AMRTXI') 
disp('you cant have negatives in the encoding matrix')

