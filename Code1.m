
C = [11,16,2,8,25,4,10,10,40,3]; #Co-efficinets of the Objective Function
A = [
    110, 205, 160, 160, 420, 260, 58, 500, 143, 323;
    4, 32, 13, 8, 4, 14, 10, 10, 26, 2;
    2, 12, 54, 285, 22, 80, 110, 28, 6, 12;
    26, 1, 10, 0, 9, 31, 11, 2501, 29, 28;
    0, 2, 0, 0, 1, 1, 0, 9, 0, 19;
    6, 1, 1, 11, 2, 1, 0, 9, 1, 1]; #Co-efficinets of the Constraints
b = [2000,50,1000,400,90,18]; #Column Array of the Constraints
lb = [0;0;0;0;0;0;0;0;0;0];
ub = [];
cType = "LLLLLL"; #Constraints Type
varType = "CCCCCCCCCC"; #Variable Type
sense = 1; # 1 means minimization problem

#Execute Function
[xmin,fmin,status,extra] = glpk(C,A,b,lb,ub,cType,varType,sense);



disp(fmin)
