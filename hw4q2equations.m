clc

Vd = [ 5 6 7 8 9 10 11 12];

fs= 300000;
Vo = 16;

%Ilb =( Vo .* (1-D).*D )/(2*L*fs);

%Iob =( Vo * (1-D).*(1-D).*D )/(2*L*fs);

d = 1 - Vd./Vo


Ro = 16;
Iob = 1;


L =( Vo * (1-d).*(1-d).*d )/(2.*Iob.*fs)




l = (0.074*Vo)/(8*fs)
x = (0.074*Vo)/(8*fs*l)

Iob =( Vo * (1-d).*(1-d).*d)/(2*0.493*(10^-6)*fs)
%d = 0.333;
%Iob =( Vo * (1-d).*(1-d).*d)/(2*0.493*(10^-6)*fs)


%%b
%Vripple = (d.*Vo)/(fs*Ro*C);
Vripple = 0.02;
C = (d.*Vo)/(fs*Ro*Vripple)


