function dudt = myODESystem(t, u)
    % Define the system of differential equations
    dudt = zeros(2, 1);
    dudt(1) = 3.5 * u(1) - u(1) * u(2);
    dudt(2) = u(2) + 0.2 * u(1) * u(2) - u(2)^2;
end
