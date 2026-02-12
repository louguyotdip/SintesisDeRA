close all; clear all; clc

pkg load control;
pkg load symbolic;
graphics_toolkit("gnuplot");

% Crear variable simbólica s
s = tf('s');

% Parámetros
k   = 0.1;
kpA = 0;
kpB = 1;
kpC = 10;
kpD = 2.6;   % Ganador

% Polos del amplificador operacional abierto (Ao)
pole1 = 2 * pi * 10;
pole2 = 2 * pi * 5060000;

Ao = 100000 / ( (1 + s/pole1) * (1 + s/pole2) );

% Términos de realimentación
T1   = -k * Ao^2;
T2A  = -kpA * Ao;
T2B  = -kpB * Ao;
T2C  = -kpC * Ao;
T2D  = -kpD * Ao;   % Ganador

TA = T1 + T2A;
TB = T1 + T2B;
TC = T1 + T2C;
TD = T1 + T2D;      % Ganador

% Modelos simplificados / aproximados
P  = Ao / (1 + Ao/25);           % intento de compensar ignorando polos altos

Ts = -k * Ao;                    % realimentación simplificada sin compensar
Gs = Ao / (1 - Ts);              % modelo simplificado sin compensar

% Modelo "exacto" considerando compensación
Gt = Ao^2 / (1 - TD);            % considerando todo

figure('Position', [100 100 900 600]);
step(Gs, Gt);
grid on;

% Personalizar gráfico


disp('Terminado')
