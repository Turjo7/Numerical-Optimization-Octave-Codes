




C = [2,6,10]; #Co-efficinets of the Objective Function
A = [1 1 -3; 1 -3 2; 3 -1 6]; #Co-efficinets of the Constraints
b = [4,-1,8]; #Column Array of the Constraints
lb = [];
ub = [];
cType = "SLU"; #Constraints Type
varType = "III";
sense = 1;

#Execute Function
[xmin,fmin,status,extra] = glpk(C,A,b,lb,ub,cType,varType,sense);
xmin

#x1=3, x2=1, x3=0
disp(fmin)
#fmin = 12

