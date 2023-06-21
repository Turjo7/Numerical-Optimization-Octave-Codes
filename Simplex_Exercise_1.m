




C = [4,-3,-2,-1]; #Co-efficinets of the Objective Function
A = [1 1 1 1; 0 2 -2 -1]; #Co-efficinets of the Constraints
b = [20,-10]; #Column Array of the Constraints
lb = [];
ub = [];
cType = "UL"; #Constraints Type
varType = "CCCC";
sense = -1;

#Execute Function
[xmax,fmax,status,extra] = glpk(C,A,b,lb,ub,cType,varType,sense);
xmax

#x1=20, x2=0, x3=0,x4=0
disp(fmax)
#fmax = 80

