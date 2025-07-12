% Gegebene Werte
f0 = 1600; % Resonanzfrequenz in Hz
omega_0 = 2 * pi * f0; % Eigenkreisfrequenz in rad/s
Q = 0.707; % Güte
K = 5; % Verstärkungsfaktor (Beispielwert)

% Koeffizienten der Übertragungsfunktion
b0 = K * omega_0^2;
a0 = 1;
a1 = omega_0 / Q;
a2 = omega_0^2;

% Frequenzbereich für das Bode-Diagramm
frequencies = logspace(2, 4, 1000); % Frequenzen von 10^2 bis 10^4 Hz
s = 1i * 2 * pi * frequencies; % Laplace-Variable s = jω

% Berechnung der Übertragungsfunktion H(s)
H_s = b0 ./ (a0 * s.^2 + a1 * s + a2);

% Bode-Diagramm
figure;
subplot(2,1,1);
semilogx(frequencies, 20*log10(abs(H_s))); % Betrag in dB
grid on;
title('Bode-Diagramm der Übertragungsfunktion');
xlabel('Frequenz (Hz)');
ylabel('Amplitude (dB)');

subplot(2,1,2);
semilogx(frequencies, angle(H_s) * (180/pi)); % Phase in Grad
grid on;
xlabel('Frequenz (Hz)');
ylabel('Phase (Grad)');

% Pol-Nullstellen-Diagramm
poles = roots([a0 a1 a2]);
zeros = roots([b0]);

figure;
plot(real(poles), imag(poles), 'rx', 'MarkerSize', 10, 'LineWidth', 2);
hold on;
plot(real(zeros), imag(zeros), 'go', 'MarkerSize', 10, 'LineWidth', 2);
grid on;
title('Pol-Nullstellen-Diagramm');
xlabel('Realteil');
ylabel('Imaginärteil');
legend('Pole', 'Nullstellen');
axis equal;

% Anzeigen der Polstellen
disp('Polstellen:');
disp(poles);

% Anzeigen der Nullstellen
disp('Nullstellen:');
disp(zeros);
