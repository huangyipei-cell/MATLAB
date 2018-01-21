%-----------------------------------------------------------------------
% Musterl�sung �bung Systemtheorie
% � Prof. Dr. Volker Sommer, Beuth Hochschule f�r Technik Berlin
%-----------------------------------------------------------------------

clear
home
close all

T = 1;                          % Abtastzeit wird von Matlab bei zeitdiskreten Systemen ben�tigt
z = tf('z',T);
Gz = 0.5/(z-1);                 % zeitiskretes LTI-Modell (z-�bertragungsfunktion)
k = 0:5;                        % Simulationsbereich

% a)
figure(1)
u = ones(1, length(k));         % Einheitssprung als Eingangssignal
h = lsim(Gz, u, k);             % Sprungantwort
stem(k,h,'b', 'linewidth', 2);
grid

% b)
figure(2)
u = sin(k*pi/2);                % Einheitssprung als Eingangssignal
y = lsim(Gz, u, k);             % Sprungantwort
stem(k,y,'b', 'linewidth', 2);
grid
