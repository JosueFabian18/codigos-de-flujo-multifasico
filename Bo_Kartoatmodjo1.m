%Factor volumetrico del aceite por Kartamodjo (1994)
%Calculamos primero Yg100
Yo = input ('Ingrese la yo: ');
Yg = input ('Ingrese la yg: ');
Tsep = input('Ingrese la temperatura del separador en Farenheit: ');
Psep = input('Ingrese la presión en el separador en psi: ');
T = input('Ingrese la temperatura en Farenheit: ');
Rs = input('Ingrese la Rs en ft^3/bl: ');

%Calculamoa los °API a partir de la yo
API=(141.55/Yo)-131.5;

if Psep ~= 100 %psig
    Psep=Psep+14.7; %lo convierte de psig a psia
    Yg100=Yg*(1+(5.91210*10^-5)*API*T*log(Psep/114.7));
end
if Psep==100 %psig
    Yg100=Yg;
end

if Rs>0 && Rs<2890
else
    fprintf('Ingrese un valor dentro del rango de Rs');
end

if Yg<1709 && Yg>0.379
else
    fprintf('Ingrese un valor dentro del rango de Yg');
end

if Yo>0 && Yo<400
else
    fprintf('Ingrese un valor dentro del rango de Yo');
end

if T>75 && T<320
else
    fprintf('Ingrese un valor dentro del rango de T');
end

%Calculamos B0

Bo = 0.98496 + 0.0001 * (Rs^0.755 * Yg100^0.25 * Yo^-1.5 + 0.45 * T)^1.5;

%Mostrar el Resultado de Bo
fprintf('El factor volumétrico (Bo) calculado es: % RB/STB\n', Bo)

