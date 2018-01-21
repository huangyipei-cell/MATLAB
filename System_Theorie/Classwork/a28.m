%-----------------------------------------------------------------------
% Musterl�sung �bung Systemtheorie
% � Prof. Dr. Volker Sommer, Beuth Hochschule f�r Technik Berlin
%-----------------------------------------------------------------------

% verwendet die Simulink-Datei "SYT_A28_mod.mdl"

clear
home
close all

T = 0.1;                                % Abtastzeit
z = [0.7];
n = [1 -0.8 0.15];
Gz = tf(z,n,T)                          % z-�bertragungsfunktion berechnen
subplot(2,2,1)
pzmap(Gz)                               % Pol-/Nullstellenplan zeichnen
subplot(2,2,3)
td = 0:T:15*T;                          % Zeitvektor zum Zeichnen vorgeben
y= step(Gz,td)
stem(td,y)

% Vergleich mit dem Simulink-Modell:
SYT_A28_mod	                            % �ffnen des Simulink-Modells
[A,b,c,d]=dlinmod('SYT_A28_mod')	    % zeitdiskretes Zustandsmodell aus Simulink-Modell erzeugen
sys_d = ss(A,b,c,d,T);                  % Erzeugen eines zeitdiskreten LTI-Objektes
Gz1 = tf(sys_d)                         % Umwandlung in z-�bertragungsfunktion
subplot(2,2,2)
pzmap(sys_d)
subplot(2,2,4)
y1= step(sys_d,td)
stem(td,y1)

