%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 1 TP#5 M�todos Num�ricos
%%%
%%% Interpolaci�n Polinomial de Lagrange
%%%
%%% function [C,L] = Interp_Lagrange(X,Y)
%%%
%%% Par�metros de Entrada:
%%%
%%%       X = vector fila, conteniendo los valores de las abscisas de la 
%%%       f(x) a interpolar
%%%       Y = vector fila, conteniendo los valores de las ordenadas de la 
%%%       f(x) a interpolar
%%%
%%% Par�metros de Salida:
%%%
%%%      C = Vector que contiene los coeficientes del polinomio
%%%      interpolador de Lagrange, ordenado en potencias decrecientes de x
%%%      de izquierda a derecha
%%%      L = matriz que contiene los coeficientes de los N+1 polinomios
%%%      interpoladores de Lagrange, es decir LN,K(x), donde en la fila
%%%      j-esima se tienen los coeficientes de LN,j(x)
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [C,L] = Interp_Lagrange(X,Y)

N = length(X);    % Orden+1 del Polinomio a Interpolar
for k = 1:N
    V = 1;        % Coeficiente independiente (grado 0) a convolucionar (multiplicaci�n de polinomios)
    for j = 1:N
        if j ~= k
            V = conv(V,poly(X(j)))/(X(k)-X(j));
        end
    end
    L(k,:) = V;
end

C = Y*L;
%%%%%%% Otra forma mas complicada pero con el mismo resultado final
% C=sum((Y'*ones(1,N)).*L);

