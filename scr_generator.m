%% Setup parameters
steps = 10;             % number of steps(points) in paths
distance = 2;           % typical distance traveled
turn = 30;              % mean difference for turning angle
start = 90;             % starting direction (90 means facing north)
enc_bal_dist = 0;       % median of distance noise
enc_bal_angl = 0;       % median of angle noise
enc_noise_divider = 50; % mean differnece divider, sigma = val(i)-val(i-1)
gnss_offset = [2,0];    % X,Y gnss offset = [5,0]
gnss_noise_amount = 0.5;% gnss mean difference
comp_offset = 0;        % compass noise offset
comp_amount = 1;        % compass noise amount

%% Generating data
path = GeneratePath(steps,distance,turn,start);
%path = zeros(2,10);
%path(2,:) = 0:5:45;
path_enc = NoiseEncoder(path,enc_bal_dist,enc_bal_angl,enc_noise_divider);
path_gnss = NoiseGNSS(path,gnss_offset,gnss_noise_amount);
path_comp = NoiseCompass(path,start,comp_offset,comp_amount);
