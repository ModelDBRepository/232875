clc
% Length of each segment
a1 = .4;
a2 = .35;
a3 = .25;

% First joint configuration

tetha1 = 0;
tetha2 = 0;
tetha3 = 0;

% Sampling period
dt = 1e-3; % 

% First locations of the end-effector and end of each segment
ax1_0 = a1*cos(tetha1);
ay1_0 = a1*sin(tetha1);

ax2_0 = a2*cos(tetha1+tetha2);
ay2_0 = a2*sin(tetha1+tetha2);

ax3_0 = a3*cos(tetha1+tetha2+tetha3);
ay3_0 = a3*sin(tetha1+tetha2+tetha3);


OP1_0 = [ax1_0 ay1_0 0];
P1P2_0 = [ax2_0 ay2_0 0];
OP2_0 = OP1_0 + P1P2_0;
P2P3_0 = [ax3_0 ay3_0 0];
OP3_0 = OP2_0 + P2P3_0;
ax_0 = OP3_0(1);
ay_0 = OP3_0(2);
zero_vector = [0 0 0];
theta1_0 = zero_vector;
theta2_0 = zero_vector;
theta3_0 = zero_vector;

% Target point for reaching movement
OT = [0.5 0.5 0];

% The first location for circular movement
OT_cercle = [0.6 0.55 0];


Vmax = 30; % Maximum value of velocity

g = 1; % gain to model PD Bradykinesia

tau = 0.001; % time constant to model PD Akinesia

% Amount of each segment cooperation

w1 = 3;
w2 = 2;
w3 = 1;
p1 = w2 + w3;
p2 = w1 + w3;
p3 = w2 + w1;

% Some other parameters
aTc = 0.05;
K = 1;
mTc = 0.01;
Kp = 2;