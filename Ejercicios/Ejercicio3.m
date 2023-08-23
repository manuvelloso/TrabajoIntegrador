%% Trabajo práctico integrador 2022

% ej# 3

% Variables del circuito T
c = 10e-6;
R1 = 100;
R2 = 10e3;

% Setup
t0 = 0;
tf = 1.5;
Dt = 0.001; % 1 ms
M = (tf - t0)/Dt;

% Condiciones iniciales --> PREGUNTAR
V0_init = [0 0];

% Llamado a función RK para sistemas
[t, V0] = Ec_Dif_Runge_Kutta_O4_Sistemas('EDIF_3', t0, tf, V0_init, M);

% Constantes para componentes de la matriz C
b2 = 1;
b1 = 2/(c*R2);
a1 = (2*R1 + R2)/(c*R1*R2);

% Matrices C y D
C = [0 (b1-b2*a1)];
D = 1;

% Obtención de tensión de salida v0
vi = 50*sin(100*t' + pi); 
v0 = C*V0' + D*vi;

% Gráfico de v0 en función del tiempo
subplot(1,2,1);
plot(t,vi);
grid
ylabel('v_i(t) [V]');
xlabel('t [s]');
title('Tensión de entrada')

subplot(1,2,2);
plot(t,v0);
ylabel('v_0(t) [V]');
xlabel('t [s]');
grid
title('Respuesta')


