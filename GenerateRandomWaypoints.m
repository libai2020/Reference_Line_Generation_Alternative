function waypoints = GenerateRandomWaypoints(distance, unit_gap)
Nw = round(distance / unit_gap);
delete('Nw');
fid = fopen('Nw', 'w');
fprintf(fid,'%g', Nw);
fclose(fid);

waypoints = cell(1,Nw);
theta = rand * 2 * pi;
wx = 0;
wy = 0;
point.x = wx; point.y = wy;
waypoints{1} = point;

for ii = 2 : Nw
    theta = theta + randn * 0.3;
    wx = wx + unit_gap * cos(theta);
    wy = wy + unit_gap * sin(theta);
    point.x = wx; point.y = wy;
    waypoints{ii} = point;
end
end