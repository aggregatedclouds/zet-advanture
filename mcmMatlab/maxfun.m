function [j1,j2,j3] = maxfun( x1,x2,x3 )
y1 = length(x1);
y2 = length(x2);
y3 = length(x3);
y = max(y1,max(y2,y3));
j1 = [x1',zeros(1,y-y1)]';
j2 = [x2',zeros(1,y-y2)]';
j3 = [x3',zeros(1,y-y3)]';
end

