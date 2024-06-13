% Parámetros de entrada
P = input('Ingrese la presión (psi): ');
T = input('Ingrese la temperatura (°F): ');
Rs = input('Ingrese la Relacion de solubilidad (ft^3/bl): ');
mu_od = input ("Ingrese la viscosidad del aceite muerto (cp): ");

% Convertir temperatura a Rankine
T_Rankine = T + 460;

% Parámetros de la correlaciónn Chew y Connally
A=exp(2.2*10^-7*Rs^2-7.4*10^-4*Rs);
B=(0.68/10^(8.62*10^-5*Rs))+(0.25/10^(1.1*10^-3*Rs))+(0.062/10^(3.74*10^-3*Rs));

% Calcular la viscosidad del aceite saturado
mu_oils= A*mu_od^B;

X=['La viscosidad del aceite saturado es: ',num2str(mu_oils),' cp'];
disp(X)