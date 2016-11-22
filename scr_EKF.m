%% EKF setup
W=[pi/10 0 0 0;0 pi/10 0 0;0 0 10 0; 0 0 0 10];

V = [100 0 0;0 100 0;0 0 pi/25];
H = [0,0,1;0,0,1;1,0,0;0,1,0];
P = [20 0 0;0 20 0;0 0 40];

x = [0;0;start]; % x, y, uhel = start
%u = [0;0]; % translace, rotace
%ym = [0;0;0;0]; % data ze senzorù uhel1, uhel2, x, y

