function [ noised ] = NoiseGNSS( path, offset, amount )
%NoiseGNSS Creates noised XY path for GNSS
%   Detailed explanation goes here
noised = zeros(2,length(path(1,:)));
%noised(1:2,1) = 0;
for i = 1:length(path(1,:))
    noised(1:2,i) = [
        path(1,i)+normrnd(offset(1),amount,1,1),
        path(2,i)+normrnd(offset(2),amount,1,1)
        ];
end
end

