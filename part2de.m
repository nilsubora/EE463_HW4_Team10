close all
clear all
clc
Vo = 16; %V
Po = 16; %W
Ro = (Vo^2)/Po; %ohm
Vin = 5:0.1:12;
fs= 300000; %300kHz
%%
%V_L = D*Vin + (1-D)*(Vin - Vo);
D = 1 - Vin./Vo;
%%
VoltageGain = Vo - Vin;
Efficiency = Vo./Vin;
%%
figure
hold on
plot(D,VoltageGain)
grid minor
ylabel("Voltage Gain (V)")
xlabel("Duty Cycle")
title("Voltage Gain vs Duty Cycle Without ESR of the Inductor")
hold off

%%
figure
hold on
plot(D,Efficiency)
grid minor
ylabel("Efficiency")
xlabel("Duty Cycle")
title("Efficiency vs Duty Cycle Without ESR of the Inductor")
hold off

%%

IL = Vo./((1-D)*Ro); %inductor current

%with ESR = 30mohm
ESR = 0.03; %ohm
%V_L = D*(Vin - IL*ESR) + (1-D)*(Vin - Vo - IL*ESR);
% Vin = (1-D)Vo + IL*ESR
%using found inductor current IL
%Vin = (1-D)Vo + (Vo./((1-D)*Ro))*ESR
Vin = Vo* ((1-D) + (1./((1-D)*Ro))*ESR);
VoltageGainwithESR = Vo - Vin;
EfficiencywithESR = Vo./Vin;
%%
figure
hold on
plot(D,VoltageGainwithESR)
grid minor
ylabel("Voltage Gain (V)")
xlabel("Duty Cycle")
title("Voltage Gain vs Duty Cycle With ESR of the Inductor")
hold off

%%
figure
hold on
plot(D,EfficiencywithESR)
grid minor
ylabel("Efficiency")
xlabel("Duty Cycle")
title("Efficiency vs Duty Cycle With ESR of the Inductor")
hold off

