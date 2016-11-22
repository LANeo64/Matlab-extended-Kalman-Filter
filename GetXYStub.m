function [ x,y ] = GetXYStub( x,y,length )
%GetXYStub Summary of this function goes here
%   Detailed explanation goes here

[~,phase] = GetPolar(x,y);
[x,y] = GetXY(length,phase);
end

