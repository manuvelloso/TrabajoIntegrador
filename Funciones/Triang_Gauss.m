function X = Triang_Gauss(A, B)
% A: matriz no singular
% B: vector independiente
% X: vetor soluci�n de AX = B

N = size(A, 1);      % Tama�o del sistema de ecuaciones
X = zeros(N, 1);     % Vector Resultado
AB = [A B];          % Matriz aumentada 

for p = 1:N - 1      % p: iterador

    % Pivote
    [~, j] = max(abs(AB(p:N, p))); 
        % ~: valor del m�ximo (lo desecho)
        % j: fila donde est� el m�ximo

    % Intercambio
    aux = AB(p,:);                % Toda la fila p
    AB(p,:) = AB(j + p - 1,:);    % Desde la fila p
    AB(j + p - 1,:) = aux;

    if AB(p, p) == 0
        disp('AX = B, A matriz singular');
        return;
    end

    % Eliminaci�n de columna p debajo de la diag.
    for r = p + 1:N
       m = AB(r, p)/AB(p, p);
       AB(r, p:N + 1) = AB(r, p:N + 1) - m*AB(p, p:N + 1);
    end

end

% Sustituci�n hacia atr�s
A_new = AB(:, 1:N);
B_new = AB(:, N + 1);
X = Back_S(A_new, B_new);