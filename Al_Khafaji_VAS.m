% Parámetros de entrada
P = input('Ingrese la presión (psi): ');
T = input('Ingrese la temperatura (°F): ');
Rs = input('Ingrese la Relacion de solubilidad (ft^3/bl): ');
mu_od = input ("Ingrese la viscosidad del aceite muerto (cp): ");

% Convertir temperatura a Rankine
T_Rankine = T + 460;

% Parámetros de la correlación Al-Khafaji
PSI=log10(Rs);
A = 0.247 + (0.2824 * PSI) + (0.5657 * PSI^2) - (0.4065 * PSI^3) + (0.0631 * PSI^4);
B = 0.894 + (0.0546 * PSI) + (0.07667 * PSI^2) - (0.0736 * PSI^3) + (0.01008 * PSI^4);

% Calcular la viscosidad del aceite saturado
mu_oils= A*mu_od^B;

X=['La viscosidad del aceite saturado es: ',num2str(mu_oils),' cp'];
disp(X)