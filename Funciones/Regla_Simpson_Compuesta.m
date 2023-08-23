%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 7 TP#6 M�todos Num�ricos
%%%
%%% Aproximaci�n central de tercer orden (error cuarta potencia en h) de una
%%% integral definida ente a y b
%%%
%%% function Int = Regla_Simpson_Compuesta(f,a,b,M)
%%%
%%% Par�metros de Entrada:
%%%
%%%       f = Nombre de la funci�n a integrar (almacenada en un .m)
%%%       a = l�mite inferior de integraci�n
%%%       b = l�mite superior de integraci�n
%%%       M = cantidad de puntos a dividir en el intervalo de integraci�n
%%%
%%% Par�metros de Salida:
%%%
%%%      S = Integral definida aproximada
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function S = Regla_Simpson_Compuesta(f,a,b,M)

if nargin<4
    disp('Debe ingresar el nombre de la funci�n, los l�mites de integraci�n y la cantidad de intervalos (mismo M que Trapezoidal, luego se duplica');
    return;
end

h = (b-a)/(2*M);
x = a:h:b;
Sum = 0;
for k=1:M
    Sum = Sum + feval(f,x(2*k-1)) + 4*feval(f,x(2*k)) + feval(f,x(2*k+1));
end
S = Sum*h/3;
