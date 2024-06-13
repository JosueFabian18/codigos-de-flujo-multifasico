%Factor volumetrico del aceite por Standing (1947)
%Datos de entrada
Rs = input('Ingrese la Rs en ft^3/bl: ');
yo = input ('Ingrese la yo: ');
ygd = input ('Ingrese la ygd: ');
T = input('Ingrese la temperatura en Farenheit: ');
P = input('Ingrese la presión de burbuja en psia: ');

%Parametros
if Rs>20 && Rs<1425
else
    fprintf('Ingrese un valor dentro del rango de Rs');
end

if yo>0 && yo<100
else
    fprintf('Ingrese un valor dentro del rango de Yo');
end

if ygd<0.95 && ygd>0.59
else
    fprintf('Ingrese un valor dentro del rango de °Yg');
end

if T<258 && T>100
else
    fprintf('Ingrese un valor dentro del rango de Temperatura');
end

% Calcular el factor volumétrico con la correlación de Standing
Bo = 0.9759 + 0.00012 * (Rs * (ygd/yo)^0.5 + 1.25 * T)^1.2;

%Mostrar el Resultado de Bo
fprintf('El factor volumétrico (Bo) calculado es: % RB/STB\n', Bo);
