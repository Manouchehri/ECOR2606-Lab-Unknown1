% ECOR2606 - David Manouchehri - Part II
% Purpose:
%           This program will create two graphs comparing the cross 
%           sectional area against a mach number for a given range, and 
%           find the mach number for a given cross sectional area.

range = [0.1 1];
A = 0.015; % m^2
G = 1.45;

% Part I of problem II

plotter = @(x) area(x, A, G);

figure(1);
fplot(plotter, range);
xlabel('Mach number');
ylabel('Cross sectional area');

figure(2);
spacing = linspace(0.1, 1);
mach = plotter(spacing);
plot(spacing, mach);
xlabel('Mach number');
ylabel('Cross sectional area');

% Part II of problem II

answer = @(x) area(x, A, G) - 0.035;
solution = fzero(answer, range);

% Numbers are only given to two decimal points, so keep the solution in the
% same format.
fprintf('Problem II, Part II: %.2f\n', solution);
