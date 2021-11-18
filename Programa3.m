t = [0:.05:2]' 	% generate a time vector
q = jtraj(qz, qr, t); % generate joint coordinate trajectory
p560.plot(q);
p560_2 = SerialLink(p560, 'name', 'another Puma', 'base', transl(-0.5, 0.5, 0) )
p560.teach()