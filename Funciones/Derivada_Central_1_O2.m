%% Algoritmo derivada central error cuadrático

function v0p = Derivada_Central_1_O2(v0, Dt)

v0p = zeros(size(v0));
N = length(v0);

v0p(1) = (v0(2) - v0(1))/Dt;
v0p(N) = (v0(N) - v0(N - 1))/Dt;

for k = 2:(N - 1)
    v0p(k) = (v0(k + 1) - v0(k - 1))/(2*Dt);
end

end
