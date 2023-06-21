

#Objective Function max f(x) = -2x1+x2-3x3
#Constraint1 x1+x2+x3<=1
#Constraint2 2x2-3x3>=-12



C = [-2,1,-3]; #Co-efficinets of the Objective Function
A = [1 1 1; 0 2 -3]; #Co-efficinets of the Constraints
b = [10,-12]; #Column Array of the Constraints
lb = [];
ub = [];
cType = "UL"; #Constraints Type
varType = "CCC";
sense = -1;

#Execute Function
[xmax,fmax,status,extra] = glpk(C,A,b,lb,ub,cType,varType,sense);
xmax

#x1=0, x2=10, x3=0
disp(fmax)
#fmin = 10

