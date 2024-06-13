%Factor volumetrico del aceite por Al-Marhoun(1988)
%Calculamos primero F
Rs = input('Ingrese la Rs en ft{3/bl: ');
yg = input ('Ingrese la yg: ');
yo = input ('Ingrese la yo: ');
T = input('Ingrese la temperatura en Farenheit: ');
%Parametros
if Rs>26 && Rs<1602
else
    fprintf('Ingrese un valor dentro del rango de Rs');
end

if yo>0 && yo<100
else
    fprintf('Ingrese un valor dentro del rango de Yo');
end

if yg<1.36 && yg>0.752
else
    fprintf('Ingrese un valor dentro del rango de °Yg');
end

if T<700 && T>534
else
    fprintf('Ingrese un valor dentro del rango de Temperatura');
end

F = Rs^0.74239 * yg^0.323294 * yo^-1.20204;

%Calculamos Bo

Bo = 0.497069 + 0.862963*10^-3 * (T+460)+0.182594*10^-2 * F + 0.318099*10^-5 * F^2;

%Mostrar el Resultado de Bo
fprintf('El factor volumétrico (Bo) calculado es: %.4f RB/STB\n', Bo);

