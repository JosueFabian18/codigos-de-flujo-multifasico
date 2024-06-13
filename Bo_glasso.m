%Factor volumetrico del aceite por Glaso (1980)
%Calculamos primero B*ob
Rs = input('Ingrese la Rs en ft^3/bbl: ');
yg = input ('Ingrese la yg: ');
yo = input ('Ingrese la yo: ');
T = input('Ingrese la temperatura en Farenheit: ');

if Rs>90 && Rs<2637
else
    fprintf('Ingrese un valor dentro del rango de Rs');
end

if yg<1.276 && yg>0.650
else
    fprintf('Ingrese un valor dentro del rango de °Yg');
end

if yo>0 && yo<100
else
    fprintf('Ingrese un valor dentro del rango de Yo');
end

%Calculamos B*ob
Bob = (Rs * ((yg/yo)^0.526))+(0.968 * T);

%Calculamos Bo
Bo = 1+10^(-6.58511+2.91329*(log10(Bob))-0.27683 * (log10(Bob))^2);


%Mostrar el Resultado de Bo
fprintf('El factor volumétrico (Bo) calculado es: %f RB/STB\n', Bo);
