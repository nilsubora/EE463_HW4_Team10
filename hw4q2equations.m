clc
close all
Vd = 5:1:12
fs= 300000; %300kHz
Vo = 16; %V
Po = 16; %W
%Ilb =( Vo .* (1-D).*D )/(2*L*fs);
%Iob =( Vo * (1-D).*(1-D).*D )/(2*L*fs);

d = 1 - Vd./Vo

Ro = 16; %ohm
Iob = 1; %A


L =( Vo * (1-d).*(1-d).*d )/(2.*Iob.*fs);
max(L)
hold on
plot(d,L);
ylabel("inductance(L)")
xlabel("Duty Cycle")
grid minor
hold off

%% b
%Vripple = (d.*Vo)/(fs*Ro*C);
Vripple = 0.02*Vo
C = (d.*Vo)/(fs*Ro*Vripple);
figure
hold on
plot (d,C)
xlabel("Duty Cycle")
ylabel("Output Capacitance (F)")
grid minor

