function a = Funcion7(x)

b = 0.4; 
m = 0.8; 
mu = 0.3; 
k = 40;
g = 9.81;

a = mu*g+(k/m)*(mu*b - x)*(1 - (2*b/sqrt(b^2 + x^2)));
end