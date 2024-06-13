% Parámetros de entrada
P = input('Ingrese la presión (psi): ');
T = input('Ingrese la temperatura (°F): ');
Rs = input('Ingrese la Relacion de solubilidad (ft^3/bl): ');
mu_od = input ("Ingrese la viscosidad del aceite muerto (cp): ");

% Convertir temperatura a Rankine
T_Rankine = T + 460;

% Parámetros de la correlación Petrosky y  Fashard
b=(-1.1831*10^-3)*Rs;
a=(-6.0866*10^-4)*Rs;
B=0.5131+(0.5109*10^b);
A=0.1651+(0.6165*10^a);
mu_oils=A*(mu_od^B);

X=['La viscosidad del aceite saturado es: ',num2str(mu_oils),' cp'];
disp(X)