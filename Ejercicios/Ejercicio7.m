%% Trabajo práctico integrador 2022

% ej #7

%% Ejercicio 7c

% Setup
a = 0;
b = 0.4;
h = 0.01;
M = (b - a)/h;

%% Regla trapezoidal compuesta
discr1 = 2*Regla_Trapezoidal_Compuesta('Funcion7',a,b,M);

v1 = sqrt(discr1)

%% Regla de Simpson compuesta
discr2 = 2*Regla_Simpson_Compuesta('Funcion7',a,b,M);

v2 = sqrt(discr2)