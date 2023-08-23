%% Ecuación diferencial ej#4a TP integrador 2022

function V0p = EDIF_4a(T,V0)

% Variables del circuito T
c = 10e-6;
R1 = 100;
R2 = 10e3;

% Componentes de la matriz A = [a00 a01; a10 a11]
a00 = -(R1+R2)/(c*R1*R2);
a11 = -1/(c*R2);
a01 = 1/(c*R2);
a10 = a01;

%Componentes de la matriz B
b0 = 1/(c*R1);
b1 = 0;

% Matrices A y B
A = [a00 a01; a10 a11];
B = [b0 b1]';

% Tensión de entrada
vi = 50;

% Sistema de ecuaciones diferenciales
V0p = A*V0' + B*vi;
V0p = V0p';

end