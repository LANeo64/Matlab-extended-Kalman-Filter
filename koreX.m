function [ y,x,S,K,P ] = koreX( H,P,W,x,ym )
%koreX Korekce kalmanova filtru
%   Detailed explanation goes here
y = ym-H*x;
S = H*P*H'+W;
K = P*H'*(S^-1);
x = x+K*y;
P = P-K*H*P;
end

