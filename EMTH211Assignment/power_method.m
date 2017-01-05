function [final_eig_val, final_eig_vect] = power_method(A, tol)
%
% This function performs the Power Method until two successive iterations
% have a difference of less than the tolerance
%
% Function declaration: [final_eig_val, final_eig_vect] = power_method(A, tol)
%
% Inputs:
% A = n x n matrix
% tol = tolerance value
%
% Outputs:
% final_eig_val = eigen-value
% final_eig_vect = corresponding eigen-vector
%
% Authors: Danny, Grace


%% Obtain starting matrix (y)
row_col = size(A); % Returns 1 x 2 matrix with dimensions of A
n = row_col(1);
y = ones(n,1) % Create n x 1 starting matrix

y_scaled = norm(y,2);
y = y./y_scaled;
%% Find 0th eigen-value
% Hence, 0th eigen-value (eig_val) and eigen-vector (eig_vect) obtained


first_eigen_value = dot((A * y), y) / dot(y, y);

y = A*y;
y_scaled = norm(y,2);
y = y./y_scaled;

second_eigen_value = dot((A * y), y) / dot(y, y);

%% Initialise diff to 0 (to be used to compare with tol)
diff = abs(first_eigen_value - second_eigen_value);

%% Iterate
while diff >= tol
    
    first_eigen_value = second_eigen_value;
    y = A*y;
    y_scaled = norm(y,2);
    y = y./y_scaled;
    second_eigen_value = dot((A * y), y) / dot(y, y);
    % Find difference
    diff = abs(first_eigen_value - second_eigen_value);
      
end

final_eig_val = second_eigen_value;
final_eig_vect = y;

end