function [ x,y ] = GetXY( modus, phase )
%GetXY Summary of this function goes here
%   Detailed explanation goes here
x = modus*cosd(phase);
y = modus*sind(phase);
end

