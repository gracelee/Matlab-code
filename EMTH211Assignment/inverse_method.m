function [eig_val_now,x, i]=inverse_method(A,tol)
%Power method for computing eigenvalues
%% Obtain starting matrix (y)
%row_col = size(A); % Returns 1 x 2 matrix with dimensions of A
%n = row_col(1);
%x = ones(n,1); % Create n x 1 starting matrix

%% Find 0th eigen-value
%eig_val_now = norm(A*y, Inf); % Infinity norm of (A*y)
%eig_vect_now = y;
% Hence, 0th eigen-value (eig_val) and eigen-vector (eig_vect) obtained

row_col = size(A);
eig_val_now = 0;
shift = 0;

N = row_col(1);
I = eye(N);
x = ones(N,1);
x(1) = 0;
x(N) = 0;
conv = 10000;
eig_val_before= 0;
i = 0;

 % compute shifted inverse matrix
B = inv(A - shift*I);

while (conv > tol)
   i = i + 1;
   y = B*x;
   x = y / norm(y,2);
   eig_val_now = x'*A*x;
   conv = abs(eig_val_now-eig_val_before) / abs(eig_val_now);
   eig_val_before = eig_val_now;
end

