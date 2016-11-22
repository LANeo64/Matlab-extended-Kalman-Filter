function [ path ] = GeneratePath( steps, length, turn, start)
%GeneratePath creates simple trail for the robot
%   Detailed explanation goes here
direction = start;
position = [0,0];
path(1:2,1) = 0;

for i = 2:steps
    phase = randi([-turn,turn],1,1);
    modus = randi([1,length],1,1);  
    direction = phase + direction;
    [x,y] = GetXY(modus,direction);
    %x = position(1) + cosd(direction + phase)*modus;
    %y = position(2) + sind(direction + phase)*modus;
    x = position(1) + x;
    y = position(2) + y;
    path(1:2,i) = [x;y];
    position = [x,y];    
end
end

