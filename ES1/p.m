%-----------------------------------------------------
% Elektrische Systeme 1 
% Hilfsfunktion zur Parallelschaltung von Widerst�nden
%-----------------------------------------------------

function result = p(R1, R2)
result = 1/(1/R1 + 1/R2);
