%La función representa la correlación se Standing dinde los paránetros 
%de entrada son la Presión, temperatura, grados api y la gravedad
%específica del gas.
function[Rs,Bo]=standing(P,T,API,gama_g)
Rs=gama_g*((P/18)*10^(0.0125*API-0.00091*T))^(1/0.83);
gama_o=141.5/131.5+API; %es una variable local
F=Rssqrt(gama_g/gama_o)+ 1.25*T;
Bo=0.972+0.000147*(F)^(1.175);
end