function system_solver()
    % Set initial conditions and time span
    u0 = [1.8; 2.5];   % Initial conditions for u1 and u2
    tspan = [0 100];     % Time span

    % Solve the system of differential equations using ode45
    [t, u] = ode45(@myODESystem, tspan, u0);

    % Plot the solutions
    plot(t, u(:, 1), 'r', t, u(:, 2), 'b')
    legend('u1(t)', 'u2(t)')
    xlabel('Time')
    ylabel('u(t)')
    title('Solution of the System of Differential Equations')
    
    % Display the final values
    fprintf('Final values:\n');
    fprintf('u1(t) approaches %.1f\n', u(end, 1));
    fprintf('u2(t) approaches %.1f\n', u(end, 2));
end

