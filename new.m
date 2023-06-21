f = @(x) sin(x(1) + x(2)) + (x(1) - x(2))^2 - 1.5 * x(1) + 2.5 * x(2) + 1;

gradf = @(x) [cos(x(1) + x(2)) + 2 * (x(1) - x(2)) - 1.5;
              cos(x(1) + x(2)) + 2 * (x(2) - x(1)) + 2.5];

hessianf = @(x) [-sin(x(1) + x(2)) + 2, -sin(x(1) + x(2));
                 -sin(x(1) + x(2)), -sin(x(1) + x(2)) + 2];

x = [-1; -2];
for i = 1:20
  fx = gradf(x);
  H = hessianf(x);
  d = -H \ fx;
  x = x + 0.1 * d;
end

fprintf('The minimizer is at (%f, %f).\n', x(1), x(2));

