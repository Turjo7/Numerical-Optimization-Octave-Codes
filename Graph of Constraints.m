% Step 1: Define the variables and constraints
% Constraint 1: x + y ≤ 5
% Constraint 2: 2x - y ≥ 1

% Step 2: Define the range of values for the variables
x = -10:0.1:10;
y = -10:0.1:10;

% Step 3: Create a grid of points for x and y
[X, Y] = meshgrid(x, y);

% Step 4: Evaluate the constraints at each point in the grid
lhs_constraint1 = X + Y;
lhs_constraint2 = 2*X - Y;

% Step 5: Plot the constraints
hold on;
plot(x, 5 - x, 'b-', 'LineWidth', 2);  % Constraint 1: x + y ≤ 5
plot(x, 2*x - 1, 'r--', 'LineWidth', 2);  % Constraint 2: 2x - y ≥ 1
xlabel('x');
ylabel('y');
title('Graph of Constraints');
legend('x + y ≤ 5', '2x - y ≥ 1');
grid on;
