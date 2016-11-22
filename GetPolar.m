function [ modus, phase ] = GetPolar( x,y )
%GetPolar Summary of this function goes here
%   Detailed explanation goes here
modus = sqrt(x^2+y^2);
if x <= 0 && y > 0 || x < 0 && y <= 0
    phase = atand(y/x)+180;
else
    phase = atand(y/x);
end
end

