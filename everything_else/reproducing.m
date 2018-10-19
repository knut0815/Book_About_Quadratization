z=[1 0; 0 -1];
%% PTR-RBL, k=4, middle of LHZ
z1 = kron(z,eye(16));
z2 = kron(kron(eye(2),z),eye(8));
z3 = kron(kron(eye(4),z),eye(4));
z4 = kron(kron(eye(8),z),eye(2));
za = kron(eye(16),z);

LHS=z1*z2*z3*z4;
RHS=4*za*(z1+z2+z3+z4)+2*(z1*z2+z1*z3+z1*z4+z2*z3+z2*z4+z3*z4)+8;

[diag(LHS) diag(RHS)];

%% PTR-RBL, k=5, middle of LHZ (not stated to be true in paper, so testing it). 

z1 = kron(z,eye(32));
z2 = kron(kron(eye(2),z),eye(16));
z3 = kron(kron(eye(4),z),eye(8));
z4 = kron(kron(eye(8),z),eye(4));
z5 = kron(kron(eye(16),z),eye(2));
za = kron(eye(32),z);

LHS=z1*z2*z3*z4*z5;
RHS=4*za*(z1+z2+z3+z4+z5)+2*(z1*z2+z1*z3+z1*z4+z1*z5+z2*z3+z2*z4+z2*z5+z3*z4+z3*z5+z4*z5)+9;

[diag(LHS) diag(RHS)];

%% PTR-RBL, k=3, end of LHZ
z1 = kron(z,eye(8));
z2 = kron(kron(eye(2),z),eye(4));
z3 = kron(kron(eye(4),z),eye(2));
za = kron(eye(8),z);

LHS=z1*z2*z3;
RHS_theirs=4*za+2*(z1+z2+z3)+4*za*(z1+z2+z3)+2*(z1*z2+z1*z3+z2*z3)+8;
RHS=2*za+(z1+z2+z3)+2*za*(z1+z2+z3)+(z1*z2+z1*z3+z2*z3)+3;

[diag(LHS) diag(RHS)];

%% PTR-RBL, k=4, end of LHZ
z1 = kron(z,eye(16));
z2 = kron(kron(eye(2),z),eye(8));
z3 = kron(kron(eye(4),z),eye(4));
z4 = kron(kron(eye(8),z),eye(2));
za = kron(eye(16),z);

LHS=z1*z2*z3*z4;
RHS=4*za+2*(z1+z2+z3+z4)+4*za*(z1+z2+z3+z4)+2*(z1*z2+z1*z3+z1*z4+z2*z3+z2*z4+z3*z4)+9;

[diag(LHS) diag(RHS)];