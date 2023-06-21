function fval = f(x, y)
    fval = sin(x + y) + (x - y)^2 - 1.5 * x + 2.5 * y + 1;
endfunction

function grad = gradient(x, y)
    grad = [cos(x + y) + 2 * (x - y) - 1.5; cos(x + y) - 2 * (x - y) + 2.5];
endfunction

function hess = hessian(x, y)
    hess = [-sin(x + y) + 2, -sin(x + y) - 2;
            -sin(x + y) + 2, -sin(x + y) - 2];
endfunction

function final_point = newton_search(start_point, num_searches)
    point = start_point;
    for i = 1:num_searches
        grad = gradient(point(1), point(2));
        hess_inv = inv(hessian(point(1), point(2)));
        direction = hess_inv * grad;
        point -= 0.1 * direction;
    endfor
    final_point = point;
endfunction

initial_point = [-1; -2];
num_searches = 20;

final_point = newton_search(initial_point, num_searches);
disp("Final point:");
disp(final_point);

