




C = [4,-6,-5,3]; #Co-efficinets of the Objective Function
A = [-2 5 -3 1; 5 0 2 3]; #Co-efficinets of the Constraints
b = [20,10]; #Column Array of the Constraints
lb = [];
ub = [];
cType = "US"; #Constraints Type
varType = "CCCC";
sense = 1;

#Execute Function
[xmin,fmin,status,extra] = glpk(C,A,b,lb,ub,cType,varType,sense);
xmin

#x1=0, x2=7, x3=5, x4=0
disp(fmin)
#fmin = -67

