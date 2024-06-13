% Parámetros de entrada
P = input('Ingrese la presión (psi): ');
T = input('Ingrese la temperatura (°F): ');
Rs = input('Ingrese la Relacion de solubilidad (ft^3/bl): ');
mu_od = input ("Ingrese la viscosidad del aceite muerto (cp): ");

% Convertir temperatura a Rankine
T_Rankine = T + 460;

% Parámetros de la correlaciónn Beggs y Robinson
b=5.44*(Rs+150)^-0.338;

% Calcular la viscosidad del aceite saturado
mu_oils=(10.715*(Rs+100)^-0.515)*mu_od^b;

X=['La viscosidad del aceite saturado es: ',num2str(mu_oils),' cp'];
disp(X)