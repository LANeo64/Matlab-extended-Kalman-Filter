function [ noised ] = NoiseEncoder( path, range_bal, angle_bal, s)
%NoiseEncoder Creates noised XY path for encoders
%   This function creates noised XY path based on given path,
%   where path is 2xN matrix with X and Y coordinates

noised = zeros(2,length(path(1,:)));
%noised(1:2,1) = 0;
for i = 2:length(path(1,:))
    [modus, phase] = GetPolar(path(1,i)-path(1,i-1), path(2,i)-path(2,i-1));
    %modus = sqrt(path(1,i)^2+path(2,i)^2) + normrnd(u,s,1,1);
    %phase = atand(path(2,i)/path(1,i)) + normrnd(u,s,1,1);
    modus = modus + normrnd(range_bal,modus/s,1,1);
    phase = phase + normrnd(angle_bal,10/s,1,1);
    [x,y] = GetXY(modus, phase);
    noised(1:2,i) = [x+noised(1,i-1),y+noised(2,i-1)];
    %noised(1:2,i) = [path(1,i) + normrnd(u,s,1,1), path(2,i) + normrnd(u,s,1,1)]
end
end

