function IllustrateSolution()
global waypoints
figure (1)
load x.txt
load y.txt
plot(x,y,'k');
axis equal;
hold on
for ii = 1 : length(waypoints)
    plot(waypoints{ii}.x, waypoints{ii}.y, 'r.');
end
xlabel('x axis [m]');
ylabel('y axis [m]');
axis tight
box on;
grid on;
end