%Factor volumetrico del aceite por Vazquez y Beggs (1980)
%Calculamos primero Yg100
yg = input ('Ingrese la yg: ');
yo = input ('Ingrese la yo: ');
Psep = input('Ingrese la presión del separador en psi: ');
Tsep = input('Ingrese la temperatura del separador en Farenheit: ');
T = input('Ingrese la temperatura en Farenheit: ');
Rs = input('Ingrese la Rs: ');

if Psep ~= 100 %psig
    Psep=Psep+14.7; %lo convierte de psig a psia
    Yg100=yg*(1+(5.91210*10^-5)*API*T*log(Psep/114.7));
end
if Psep==100 %psig
    Yg100=yg;
end
%Calculamos los °API
API = (141.5/yo)-131.5;

% Coeficientes de la correlación de Vazquez y Beggs
if API <= 30 
    C1 = 4.677*10^-4;

elseif  API > 30
    C1 =  4.677*10^-4;
end

if API <= 30 
    C2 = 1.751*10^-5;

elseif API > 30
    C2 = 1.1*10^-5;
end

if API <= 30 
    C3 = 1.8106*10^-8; 

elseif API > 30
    C3 = 1.337*10^-9;
end

%Parametros

if Rs>20 && Rs<5250
else
    fprintf('Ingrese un valor dentro del rango de Rs');
end

if API>16 && API<50
else
    fprintf('Ingrese un valor dentro del rango de Yo');
end

if yg<1.18 && yg>0.56
else
    fprintf('Ingrese un valor dentro del rango de °Yg');
end

if T<295 && T>70
else
    fprintf('Ingrese un valor dentro del rango de Temperatura');
end

%Calculamos el factor volumétrico con la correlación Vazquez y Beggs
Bo = 1 + C1 * Rs + C2 * (T - 60) * (API/Yg100) + C3 *Rs * (T - 60) * (API/Yg100);

fprintf('El factor volumétrico (Bo) calculado es: % RB/STB\n', Bo);
