function X_b = R(input)
theta = input(1:3);
X_i = input(4:6);
% rotation about z axis
R1 = [cos(theta(1)) sin(theta(1)) 0;...
    -sin(theta(1)) cos(theta(1)) 0;...
    0             0             1 ];

% rotation about y axis
R2 = [cos(theta(2)) 0 -sin(theta(2));...
    0             1  0            ;...
    sin(theta(2)) 0  cos(theta(2)) ];

% rotation about x axis
R3 = [1  0             0            ;...
    0  cos(theta(3)) sin(theta(3));...
    0 -sin(theta(3)) cos(theta(3)) ];

R_mat = R3 * R2 * R1;
X_b = R_mat * X_i;
end