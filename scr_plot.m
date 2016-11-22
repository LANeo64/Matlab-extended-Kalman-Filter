%% plot the sim
% top subplot
subplot(2,4,1:3);
plot(path(1,:),path(2,:),'-o',path_enc(1,:),path_enc(2,:),'r-o',path_gnss(1,:),path_gnss(2,:),'k-o',path_ekf(1,:),path_ekf(2,:),'g-o');
%hold on;
%fnplt(cscvn(path),'r',2); % aproximation of the ackermann path
%hold off;
title('Track, Encoders, GNSS, EKF');
grid on;
axis equal;
% compass
subplot(2,4,4);
PlotCompass(path_comp, 1, 'b');
hold on;
PlotCompass(path_ekf, 1, 'r');
hold off;
title('Compass noise + EKF');
% main track
subplot(2,4,5);
plot(path(1,:),path(2,:),'-o');
title('Track');
grid on;
axis equal;
% encoder
subplot(2,4,6);
plot(path_enc(1,:),path_enc(2,:),'r-o');
title('Encoder noise');
grid on;
axis equal;
% GNSS
subplot(2,4,7);
plot(path_gnss(1,:),path_gnss(2,:),'k-o');
title('GNSS noise');
grid on;
axis equal;
% EKF
subplot(2,4,8);
plot(path_ekf(1,:),path_ekf(2,:),'k-o');
title('EKF x & y');
grid on;
axis equal;