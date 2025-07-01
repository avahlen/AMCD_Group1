% Load OTA AC simulation data from local file
data = load('tb_ota_AC_UGbuffer.txt');

% Extract columns: frequency [Hz], magnitude [dB], phase [°]
frequency = data(:, 1);
magnitude = data(:, 2);
phase = data(:, 3);

% Create figure
figure;
yyaxis left;
semilogx(frequency, magnitude, 'b', 'LineWidth', 1.5);
ylabel('Magnitude [dB]');
xlabel('Frequency [Hz]');
grid on;
title('OTA + UG Buffer — AC Response');

yyaxis right;
semilogx(frequency, phase, 'r--', 'LineWidth', 1.5);
ylabel('Phase [°]');

legend('Magnitude', 'Phase', 'Location', 'southwest');