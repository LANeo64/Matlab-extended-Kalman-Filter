function [  ] = PlotCompass( path, len ,color)
%PlotCompass Summary of this function goes here
%   Detailed explanation goes here

plot(path(1,:),path(2,:),'k o');
for i = 2:length(path(3,:))
    x1 = path(1,i-1);
    y1 = path(2,i-1);
    x2 = path(1,i);
    y2 = path(2,i);
    [x,y] = GetXYStub(x2-x1,y2-y1,len);
    text(x2+0.5,y2,['[',num2str(i),'] ',num2str(round(path(3,i)))]);
    line('XData', [x2 x2+x], 'YData', [y2 y2+y], 'LineStyle', '-', 'LineWidth', 2, 'Color',color)
end
end

