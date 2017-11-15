clear
close all
home

% this is a file created to understand the theory of signals
% created by Oleksandra Baga 15.11.2017

%= PLOT SETTINGS ==
t_start = -5;
dt = 0.001;
t_end = 5;
t = t_start : dt : t_end;
t2 = 2*t_start : dt : 2*t_end;
%= END

% variables to play with:
T1 = 2;
T2 = 7;

%s1 = (3*t)/4;
s1 = 2*(sigma_(t)-sigma_(t-T1));
s2 = 1/2 * sigma_(t).*exp(-t/2);
y_t = dt*conv(s1, s2);


plot(t, s1, 'Linewidth', 2);
hold on
plot(t, s2, 'Linewidth', 2);
hold on
plot(t2, y_t, 'Linewidth', 2);
hold off
xlabel('Amplitude'), ylabel('Time'), title('Signal'), grid on
axis([t_start t_end -10 10])