function WriteWaypointsInFile(waypoints)
delete('Waypoints');
fid = fopen('Waypoints', 'w');

for ii = 1 : length(waypoints)
    fprintf(fid,'%g 1 %f \r\n', ii, waypoints{ii}.x);
    fprintf(fid,'%g 2 %f \r\n', ii, waypoints{ii}.y);
end
fclose(fid);
end