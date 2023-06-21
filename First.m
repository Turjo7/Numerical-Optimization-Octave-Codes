% a simple program written by little Snoppy
A = [1 2 ; 3 4];
B = A*A;
p = det(A); % find determinant of A
q = det(B); % find determinant of AXA
difference = q-p
