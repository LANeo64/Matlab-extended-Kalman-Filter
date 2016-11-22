function [ x,P ] = prediX( P,V,x,u )
%prediX One step of kalman filter prediction
%   Detailed explanation goes here
x = [
    fx(x(1),u(1),x(3));
    fy(x(2),u(1),x(3));
    fphi(u(2),x(3));
    ];
F = [
    1 0 fxdphi(x(3),u(1));
    0 1 fydphi(x(3),u(1));
    0 0 1;
    ];

P = F*P*F'+V;
end

