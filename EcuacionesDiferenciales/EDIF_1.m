%% Ecuación diferencial ej#1 TP integrador 2022

function V0p = EDIF_1(T,V0)

% Variables del circuito T
c = 10e-6;
R1 = 100;
R2 = 10e3;

% Componentes de la matriz A
a0 = 1/(c^2*R1*R2);
a1 = (2*R1 + R2)/(c*R1*R2);

% Matrices A y B
A = [0 1; -a0 -a1];
B = [0 1]';

% Tensión de entrada (escalón vi = 50*u(t))
vi = 50;

% Sistema de ecuaciones diferenciales
V0p = A*V0' + B*vi;
V0p = V0p';

end