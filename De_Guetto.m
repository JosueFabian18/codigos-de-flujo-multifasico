% Parámetros de entrada
P = input('Ingrese la presión (psi): ');
T = input('Ingrese la temperatura (°F): ');
Rs = input('Ingrese la Relacion de solubilidad (ft^3/bl): ');
API = input('Ingrese los grados API: ');
mu_od = input ("Ingrese la viscosidad del aceite muerto (cp): ");

% Convertir temperatura a Rankine
T_Rankine = T + 460;

if API>10 && API<=22.3
    B=0.4731+(0.5158*10^(-0.00081*Rs));
    A=0.2478+(0.6114*10^(-0.000845*Rs))*mu_od^B;
    mu_oils=-0.6311+(1.078*A)-(0.003653*A^2);
end
if API>22.3 && API<=31.1
    B=0.3855+(0.56664*10^-0.00081*Rs);
    A=(0.2038+(0.8591*10^-0.000845*Rs))*mu_od^B;
    mu_oils=-0.0132+(0.9281*A)-(0.005215*A^2);
end
if API>31.1
    A=2.7516*((Rs+150)^-0.2135);
    mu_oils=(25.1921*((Rs+100)^0.6487))*mu_od^A;
end

X=['La viscosidad del aceite saturado es: ',num2str(mu_oils),' cp'];
disp(X)




