function X = Triang_Gauss(A, B)
% A: matriz no singular
% B: vector independiente
% X: vetor solución de AX = B

N = size(A, 1);      % Tamaño del sistema de ecuaciones
X = zeros(N, 1);     % Vector Resultado
AB = [A B];          % Matriz aumentada 

for p = 1:N - 1      % p: iterador

    % Pivote
    [~, j] = max(abs(AB(p:N, p))); 
        % ~: valor del máximo (lo desecho)
        % j: fila donde está el máximo

    % Intercambio
    aux = AB(p,:);                % Toda la fila p
    AB(p,:) = AB(j + p - 1,:);    % Desde la fila p
    AB(j + p - 1,:) = aux;

    if AB(p, p) == 0
        disp('AX = B, A matriz singular');
        return;
    end

    % Eliminación de columna p debajo de la diag.
    for r = p + 1:N
       m = AB(r, p)/AB(p, p);
       AB(r, p:N + 1) = AB(r, p:N + 1) - m*AB(p, p:N + 1);
    end

end

% Sustitución hacia atrás
A_new = AB(:, 1:N);
B_new = AB(:, N + 1);
X = Back_S(A_new, B_new);