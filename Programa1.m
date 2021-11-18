R = rotx(pi/2);
det(R);
R = rotx(30) * roty(50) * rotz(10);
[theta,vec] = tr2angvec(R);
eul = tr2eul(R);
rpy = tr2rpy(R);
tripleangle('rpy','wait');