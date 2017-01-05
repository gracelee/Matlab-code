
clear all
clc

A = [-3.9 0.1 0.5 0.6; 0.1 7.2 0.1 -0.5; 0.5 0.1 1.1 0.3;0.6 -0.5 0.3 -10];

tol = 0.001;
evalue = -3.9;
evalue2 = 1.1;
evalue3 = 7.2;

%[final_eig_val, final_eig_vect] = power_method_infinity_norm (A, tol)
%gershdisc(A)


A_shift =  A - evalue* eye(size(A));
[lambda2,x, i]=inverse_method(A_shift,tol);
lambda2 = lambda2 + evalue;

A_shift2 = A - evalue2*eye(size(A));
[lambda3,x, i]=inverse_method(A_shift2,tol);
lambda3 = lambda3 + evalue2;

A_shift3 = A - evalue3*eye(size(A));
[lambda4,x, i]=inverse_method(A_shift3,tol);
lambda4 = lambda4 + evalue3;
%return
lambda2
lambda3
lambda4