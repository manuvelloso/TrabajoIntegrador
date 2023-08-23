function X = Back_S(A, B) 
% A: matriz triangular superior
% B: vector independiente
% X: vetor solución de AX = B

N = size(A, 1);      % Tamañano del sist. de ec.
X = zeros(N, 1);     % Vector resultado
X(N) = B(N)/A(N, N); % Valor inicial del resultado

for k = N-1:-1:1
    X(k) = (B(k) - A(k, k + 1:N)*X(k + 1:N))/A(k, k); 
end