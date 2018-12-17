%—-------------------------------------------------------------
%This program solves two problems; The first gives the 
%determinant of any nxn matrix (as seen in Lesson 18 notes). 
%The second solves for the inverse of the nxn matrix (as seen 
%in Lesson 19 notes).
%Written by Peter Pham, Viren Velacheri, Jasper Lin

%The determinant is calculated using cofactors from the inputted 
%matrix, and the inverse is calculated using the C^t/det A method.
%—-------------------------------------------------------------


matr = input('Input an nxn matrix with the syntax [a,b,c...d;f,g,h,i;...etc]: ');
d = pdet(matr);
c = inverse(matr);
disp('The determinant of ')
disp(matr)
disp('is: ')
disp(d)
if d ~= 0
    disp('The inverse matrix is ')
    disp(c)
else
    disp('The inverse matrix does not exist.')
end


%{
This function, called slice, creates a matrix will n-1 dimension from the input matrix and removes the row x and column y. For example,

       a b c
slice( d e f ,2,1) returns the matrix b c .
       g h i                          h i

%}
function sliced_matrix = slice(A, x, y)
    [r, c] = size(A)
    sliced_matrix = zeros(r-1,c-1)
    i = 1
    j = 1
    for indr = 1:r  
        for indc = 1:c
            if indr ~= x & indc ~= y 
                sliced_matrix(i,j) = A(indr,indc);
                j = j+1
                if j == c
                   j = 1
                   i = i+1
                end
            end
        end
    end
end


%{
This recursive function finds the determinant of the given matrix, using cofactors. It uses the previous function slice.
%}
function determinant = pdet(A)
    [rr,cc] = size(A)
    s = 0;
    if rr == 1
        s = A(1)
    else
        for j = 1:cc
            newMat = slice(A,1,j);
            s = s+A(1,j)*(-1)^(1+j)*pdet(newMat);
        end
    end
    determinant = s;
end



%{
This function returns the given matrix, transposed.
%}
function transposed_matrix = transpose(matrix)
[ro, co] = size(matrix)
transposed_matrix = [];
    for r = 1:ro
        for c = 1:co
            transposed_matrix(r,c) = matrix(c,r)
        end
    end
end



%{
This function returns the cofactor matrix from the given matrix. It uses the previous functions slice and pdet.
%}
function cofactor_matrix = cofactormat(A)
    [rr,cc] = size(A);
    s = zeros(rr,cc);
    for r = 1:rr
        for c = 1:cc
            newMat = slice(A,r,c)
            s(r,c) = (-1)^(r+c)*pdet(newMat)
        end
    end
    cofactor_matrix = s;
end



%{
This function uses all previous functions to determine the inverse matrix of the given matrix.
%}
function inverse_matrix = inverse(A)
    cf = cofactormat(A)
    transcf = transpose(cf)
    transcf = symbolize(transcf)
    inverse_matrix = rdivide(transcf,sym(pdet(A)))
end


%{
Converts the values in the matrix to symbolic values
%}
function syms_matrix = symbolize(A)
    [r,c] = size(A);
    mat = [];
    for rr = 1:r
        for cc = 1:c
            s = sym(A(rr,cc))
            mat(rr,cc) = s;
        end
    end
    syms_matrix = mat;
end
