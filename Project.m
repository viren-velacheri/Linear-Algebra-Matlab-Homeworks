matr = input('Input an nxn matrix with the syntax [a,b,c...d;f,g,h,i;...etc]: ');
d = pdet(matr);
c = cofactormat(matr);
disp('The determinant of ')
disp(matr)
disp('is: ')
disp(d)
disp(' ')
disp(c)
inverse_matrix = transpose(c)/d;
disp(inverse_matrix)

%transp = transpose(matr)
%disp(transp)

%{
This function, called slice, creates the matrix will n-1 dimension from the input matrix and removes the row x and column y. For example,

       a b c
slice( d e f ,2,1) returns the matrix b c .
       g h i                          h i

%}



function mat = slice(A, x, y)
    [r, c] = size(A)
    mat = zeros(r-1,c-1)
    i = 1
    j = 1
    for indr = 1:r  
        for indc = 1:c
            if indr ~= x & indc ~= y 
                mat(i,j) = A(indr,indc);
                j = j+1
                if j == c
                   j = 1
                   i = i+1
                end
            end
        end
    end
end

function cf = pdet(A)
    [rr,cc] = size(A)
    s = 0;
    if rr == 1
        s = A(1)
    else
        neg = 1;
        for j = 1:cc
            newMat = slice(A,1,j);
            s = s+A(1,j)*neg*pdet(newMat);
            neg = -1*neg;
        end
    end
    cf = s;
end

function transposed_matrix = transpose(matrix)
[rows, cols] = size(matrix)
transposed_matrix = [];
 if rows == cols
  for r= 1:rows
    for c = 1:cols
        transposed_matrix(r,c) = matrix(c,r)
    end
  end
 end
end


function cofactor_matrix = cofactormat(A)
    [rr,cc] = size(A)
    s = zeros(rr,cc);
    neg = 1;
    for r = 1:rr
        for c = 1:cc
            newMat = slice(A,r,c)
            s(r,c) = neg*pdet(newMat)
            neg = neg*-1;
        end
    end
    cofactor_matrix = s;
end

    



