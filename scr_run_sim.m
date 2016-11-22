%% setup the sim
run('scr_generator');
run('scr_EKF');

%% run the sim
run('scr_EKF_step');

%% plot the sim
run('scr_plot');