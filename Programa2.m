clear
mdl_puma560 % load puma560 model
p = [-0.8 0.1 0.2]; % target position in task space ([x y z])
T = transl(p) * troty(pi/2); % transformation matrix
qr(1) = -pi/2; % initial position in joint space
qqr = p560.ikine6s(T, 'ru'); % target position in joint space
qrt = jtraj(qr, qqr, 10); % compute the joint space trajectory
ae = [138 8] % view angle
p560.plot3d(qrt, 'view', ae);