g=9.81;
x=0;
y=0;
z=input('Enter the heigh (in m):');
v0=input('Enter the speed(in m/s):');
alpha_deg=input('Enter the vertical angle (in degree):');
beta_deg=input('Enter the horizontal angle (in degree):');

alpha=deg2rad(alpha_deg);
beta=deg2rad(beta_deg);

vx=v0*cos(alpha)*sin(beta);
vy=v0*cos(alpha)*cos(beta);
vz=v0*sin(alpha);

T = (vz + sqrt(vz^2 + 2 * g * z)) / g;

dt=0.1;
t=0:dt:T;

X=vx*t;
Y=vy*t;
Z=z+vz*t-(1/2)*g*t.^(2);
plot3(X(1), Y(1), Z(1), 'ro');
hold on;
plot3(X, Y, Z, 'b-','LineWidth',2);

grid on;
title('3D Mermi Yörüngesi');
xlabel('X (metre)');
ylabel('Y (metre)');
zlabel('Z (metre)');
axis equal;
hold off


