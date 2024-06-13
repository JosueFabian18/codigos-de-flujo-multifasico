% Parámetros de entrada
P = input('Ingrese la presión (psi): ');
T = input('Ingrese la temperatura (°F): ');
Rs = input('Ingrese la Relacion de solubilidad (ft^3/bl): ');
mu_od = input ("Ingrese la viscosidad del aceite muerto (cp): ");


% Convertir temperatura a Rankine
T_Rankine = T + 460;

% Parámetros de la correlación de Dindoruj y Chrismatman
B=exp(2.191172*10^(-5)*Rs)-((1.660981*10^-2)*(Rs^0.4233179)*exp((2.273945*10^-4)*Rs));
A=exp((-4.740729*10^-4)*Rs)-((1.023451*10^-2)*(Rs^0.6600358)*exp((-1.07508*10^-3)*Rs));

% Calculamos la viscosidad
mu_oils=A*(mu_od^B);

X=['La viscosidad del aceite saturado es: ',num2str(mu_oils),' cp'];
disp(X)