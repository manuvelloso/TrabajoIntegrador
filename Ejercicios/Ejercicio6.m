%% Trabajo práctico integrador 2022

% ej #6

% Setup
h = 0.01;
i = [-2 -1 -0.5 0.5 1 2];
v = [-637 -96.5 -20.5 20.5 96.5 637];

% Vector de abscisas para posteriormente hacer los gráficos
i_eval = i(1):h:i(length(i)); 

%% a) Interpolación de Lagrange
[A,L] = Interp_Lagrange(i,v);
v_eval_poli_lagrange = Eval_Polinomio(i_eval,A);

%% b) Interpolación de Newton
[B,D] = Interp_Newton(i,v);
v_eval_poli_newton = Eval_Polinomio(i_eval,B);

%% c) Interpolación por Spline Cubica
C = 100;
 MC = Spline_Cubica(i',v');
 N = size(MC, 1);
 X = zeros(N, C + 1);
 
 for k = 1:N
     d = (i(k + 1) - i(k))/C;
     X(k,:) = i(k):d:i(k + 1);
 end
 
%% d) Gráficos

% Subplot para gráfico de Lagrange
subplot(1,3,1)
plot(i,v,'r*', i_eval,v_eval_poli_lagrange,'b');
grid
title('Lagrange');

% Subplot para gráfico de Newton
subplot(1,3,2)
plot(i,v,'r*', i_eval,v_eval_poli_newton,'b');
grid
title('Newton');

% Subplot para gráfico de Spline Cubica
subplot(1,3,3)
scatter(i,v);
grid
title('Spline Cubica');
hold on
Poli_Int = zeros(N,length(X));
 
for k = 1:N
 Poli_Int(k,:) = Eval_Polinomio2(X(k,:),MC(k,:),i(k));
 plot(X(k,:),Poli_Int(k,:));
 
end

hold off
%% e) Caída de potencial

% v en i = 0.1
v1_lagrange = Eval_Polinomio(0.1,A)
v1_newton = Eval_Polinomio(0.1,B)
v1_spline = Eval_Polinomio2(0.1, MC(3,:), i(3))

% v en i = 2.5
v2_lagrange = Eval_Polinomio(2.5,A)
v2_newton = Eval_Polinomio(2.5,B)
v2_spline = Eval_Polinomio2(5.5, MC(5,:), i(6))


