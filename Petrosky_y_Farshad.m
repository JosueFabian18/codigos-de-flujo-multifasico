%Factor volumetrico del aceite por Petrosky y Farshad (1993)
%Datos de entrada
Rs = input('Ingrese la Rs en ft^3/bl: ');
Yo = input ('Ingrese la Yo: ');
Yg = input ('Ingrese la Yg: ');
T = input('Ingrese la temperatura en Farenheit: ');

%Parametros
if Rs>217 && Rs<1406
else
    fprintf('Ingrese un valor dentro del rango de Rs');
end

if T<288 && T>114
else
    fprintf('Ingrese un valor dentro del rango de Temperatura');
end

% Calcular el factor volumétrico con la correlación de Petrosky y Farshad
Bo = 1.0113 + 7.2046*10^-5 * ((Rs^0.3738 )*(Yg^0.2914/Yo^0.6265) + 0.24626 * T^0.5371)^3.0936;
%Mostrar el Resultado de Bo
fprintf('El factor volumétrico (Bo) calculado es: % RB/STB\n', Bo);
