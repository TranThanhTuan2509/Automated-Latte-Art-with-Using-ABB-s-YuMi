% Define the figure window
f2 = figure('Name', 'ABB YuMi Workspace', 'Position', [620 100 1040 480]);

% Density of points
matDo = 8;

% Lengths of the links for both arms
a1 = 0.2; % Base to shoulder
a2 = 0.3; % Upper arm
a3 = 0.3; % Forearm

% Joint angles for left arm
theta1_L = linspace(-90, 90, matDo) * pi / 180;
theta2_L = linspace(-90, 90, matDo) * pi / 180;
theta3_L = linspace(-90, 90, matDo) * pi / 180;

% Joint angles for right arm
theta1_R = linspace(-90, 90, matDo) * pi / 180;
theta2_R = linspace(-90, 90, matDo) * pi / 180;
theta3_R = linspace(-90, 90, matDo) * pi / 180;

% Create 3D grids of joint angles
[THETA1_L, THETA2_L, THETA3_L] = ndgrid(theta1_L, theta2_L, theta3_L);
[THETA1_R, THETA2_R, THETA3_R] = ndgrid(theta1_R, theta2_R, theta3_R);

% Coordinates of the end-effector for the left arm
x_L = a1 + cos(THETA1_L) .* (a2 * cos(THETA2_L) + a3 * cos(THETA2_L + THETA3_L));
y_L = sin(THETA1_L) .* (a2 * cos(THETA2_L) + a3 * cos(THETA2_L + THETA3_L));
z_L = a2 * sin(THETA2_L) + a3 * sin(THETA2_L + THETA3_L);

% Coordinates of the end-effector for the right arm
x_R = -(a1 + cos(THETA1_R) .* (a2 * cos(THETA2_R) + a3 * cos(THETA2_R + THETA3_R)));
y_R = sin(THETA1_R) .* (a2 * cos(THETA2_R) + a3 * cos(THETA2_R + THETA3_R));
z_R = a2 * sin(THETA2_R) + a3 * sin(THETA2_R + THETA3_R);

% Plot the workspace for both arms
subplot(1, 2, 1);
plot3(x_L(:), y_L(:), z_L(:), '.');
title('Left Arm Workspace');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;

subplot(1, 2, 2);
plot3(x_R(:), y_R(:), z_R(:), '.');
title('Right Arm Workspace');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;

% Global plot adjustments
sgtitle('ABB YuMi Robot Workspace');
