% newtonMethod.m

% Define the function
f = @(x) 7 * x - log(x);

% Define the derivative of the function
df = @(x) 7 - 1 ./ x;

% Define the second derivative of the function
d2f = @(x) 1 ./ x.^2;

% Set the initial guess
x0 = 0.01;

% Set the tolerance for convergence
tol = 1e-8;

% Perform Newton's method
x = x0;
while true
    % Compute the update step
    delta_x = -df(x) / d2f(x);

    % Update the value of x
    x = x + delta_x;

    % Check for convergence
    if abs(delta_x) < tol
        break;
    end
end

% Display the minimum value of the function
minimum_value = f(x);
disp(['Minimum value of f(x): ' num2str(minimum_value)]);

% Display the value of x at the minimum
disp(['Value of x at the minimum: ' num2str(x)]);

