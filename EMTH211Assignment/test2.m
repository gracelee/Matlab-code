clear all
clc

A = [-3.9 0.1 0.5 0.6; 0.1 7.2 0.1 -0.5; 0.5 0.1 1.1 0.3;0.6 -0.5 0.3 -10];

tol = 0.001;

[final_eig_val, final_eig_vect] = power_method(A, tol)
