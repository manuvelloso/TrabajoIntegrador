%% Trabajo práctico integrador 2022

% ej# 4

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
Names = ['EDIF_4a'; 'EDIF_4b'; 'EDIF_4c'];

% Matrices C y D
C = [-1 1]; % Después lo llevo al ejercicio
D = 1;

% Vector de tiempos
t = t0:Dt:tf;

for i = 1:3
    [t, V0] = Ec_Dif_Runge_Kutta_O4_Sistemas(Names(i,:), t0, tf, V0_init, M);
    
    if i == 1
        vi = 50;
    elseif i == 2
        vi = 50*sin(100*t' + pi);
    else 
        vi = 1;
    end
    
    v0 = C*V0' + D*vi;
    
    % Gráfico de v0 en función del tiempo
    subplot(1,3,i);
    plot(t,v0);
    ylabel('v_0(t) [V]');
    xlabel('t [s]');
    grid;
    
end

%   PERO ESTOY ENOJADA PORQUE NO ANDA ESTO (NO GRAFICA BIEN)
%   v0 = C*V0' + D*Vi(i, :);
%   YA SÉ PQ!!!  Vi = [50 ; algo; algo; algo ...]
%   Es un vector columna larguisimo que tiene como primer valor 50 y
%   después los de vi = 50*(100*t' + pi)
    
    
