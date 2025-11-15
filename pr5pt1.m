% Parámetros del circuito
R = 5;          % Ohmios
L = 0.1;          % Henrios
C = 220e-6;         % Faradios
Kp = 10;
Ki = 1000;
Kd = 0.01;


Ti = 0.01;
Td = 0.001;
% Coeficientes del numerador y denominador
num = [1/(L*C)];
den = [1, R/L, 1/(L*C)];


% función de transferencia
Gs = tf(num, den);

% Mostrar la función de transferencia
disp('Función de transferencia del circuito RLC:')
Gs