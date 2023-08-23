%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 5 TP#6 M�todos Num�ricos
%%%
%%% Aproximaci�n central de primer orden (error cuadr�tico en h) de una
%%% integral definida ente a y b
%%%
%%% function Int = Regla_Trapezoidal_Compuesta(f,a,b,M)
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function S = Regla_Trapezoidal_Compuesta(f,a,b,M)

if nargin<4
    disp('Debe ingresar el nombre de la funci�n, los l�mites de integraci�n y la cantidad de intervalos');
    return;
end

h = (b-a)/M;
Sum = 0;
x0 = a;
for k=1:(M-1)
    Sum = Sum + feval(f,x0+k*h);
end
S = h*(feval(f,a) + feval(f,b))/2 + h*Sum;



