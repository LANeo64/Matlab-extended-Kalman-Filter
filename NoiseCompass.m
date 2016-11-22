function [ noised ] = NoiseCompass( path, start, offset, amount )
%NoiseCompass Creates noised direction on given path
%   Detailed explanation goes here
noised = zeros(3,length(path(1,:)));
noised(1:2,:) = path;
noised(3,1) = start;
for i = 2:length(path(1,:))
    [~, phase] = GetPolar(path(1,i)-path(1,i-1), path(2,i)-path(2,i-1));
    noised(3,i) = phase + normrnd(offset, amount,1,1);
end
end

