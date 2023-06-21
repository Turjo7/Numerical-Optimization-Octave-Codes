

x = 0:1:50;
y1 = (100 - 2*x) / 4;
y2 = (80 - 3*x) / 2;

plot(x, y1, 'b', 'LineWidth', 2); % Labor constraint
hold on;
plot(x, y2, 'r', 'LineWidth', 2); % Raw materials constraint
xlabel('Product A');
ylabel('Product B');
title('Feasible Region');
legend('2x + 4y ≤ 100', '3x + 2y ≤ 80');

fill([0, x, 0], [0, y1, 50], 'g', 'FaceAlpha', 0.2); % Fill feasible region with green color
hold on;
fill([0, x, 0], [0, y2, 0], 'g', 'FaceAlpha', 0.2);

plot(x, (100 - 2*x) / 4, 'g:', 'LineWidth', 1); % Boundaries of feasible region
plot(x, (80 - 3*x) / 2, 'g:', 'LineWidth', 1);

scatter(x(1), x(2), 'ko', 'LineWidth', 2); % Optimal solution
text(x(1), x(2), 'Optimal', '

