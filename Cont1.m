xSpace = linspace(-5,5);
ySpace = linspace(-3,3);

[X,Y] = meshgrid(xSpace,ySpace);

Z = X.*X + Y.*Y - 0.5 *X.*Y;
%contour(X,Y,Z);

%contour(X,Y,Z,20);
%contourf(X,Y,Z);
%contourf(X,Y,Z,20);
%plot3(X,Y,Z,20);
%mesh(X,Y,Z);


contour(X,Y,Z,20);
hold on;

lineX = [-2 -1.5 0 0];
lineY = [-3 -2 -1 0];

p = plot(lineX,lineY,'b');
print -djpg plot123.jpg


colorbar();
