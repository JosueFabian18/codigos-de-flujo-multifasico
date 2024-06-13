% Parámetros de entrada
P = input('Ingrese la presión (psi): ');
T = input('Ingrese la temperatura (°F): ');
Rs = input('Ingrese la Relacion de solubilidad (ft^3/bl): ');
mu_od = input ("Ingrese la viscosidad del aceite muerto (cp): ");

% Convertir temperatura a Rankine
T_Rankine = T + 460;

% Parámetros de la correlación Kartoadmodjo y Schmidt
B=0.43 + (0.5165*10^(-0.00081*Rs));
A=(0.2001 + (0.8428*10^(-0.000845*Rs)))*mu_od^B;

% Calcular la viscosidad del aceite saturado
mu_oils= -0.06821 + (0.9824*A) + (0.0004034*A^2);

X=['La viscosidad del aceite saturado es: ',num2str(mu_oils),' cp'];
disp(X)

