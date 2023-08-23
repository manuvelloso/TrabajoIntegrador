%% Trabajo práctico integrador 2022

%% ej #5b

k1 = 10e3; % N/m
k2 = k1;
k3 = k2;

k4 = 5e3;
k5 = k4;

p1 = 100;
p2 = p1;
p3 = p2;

A = [(k1 + k2 + k3 + k5) -k3 -k5; -k3 (k3 + k4) -k4; -k5 -k4 (k4 + k5)];
B = [p1 p2 p3]';

X = Triang_Gauss(A, B);

disp('Ejercicio 5b:')
for i = 1:3
   disp(strcat('Posición de la masa', num2str(i),':', num2str(X(i))))
end

%% Ej #5c

k2 = 20e3;
k3 = k1;

k4 = k3;
k5 = k2;

p2 = 50;

A = [(k1 + k2 + k3 + k5) -k3 -k5; -k3 (k3 + k4) -k4; -k5 -k4 (k4 + k5)];
B = [p1 p2 p3]';

X = Triang_Gauss(A, B);

disp('Ejercicio 5c:')
for i = 1:3
   disp(strcat('Posición de la masa', num2str(i),':', num2str(X(i))))
end
