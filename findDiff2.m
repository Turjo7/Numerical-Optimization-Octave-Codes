function difference = findDiff2 (A)
  B = A*A;
  p = det(A);
  q = det (B);
  difference = p - q;
endfunction
