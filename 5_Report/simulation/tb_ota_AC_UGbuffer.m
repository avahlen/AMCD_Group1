% Use readmatrix instead of load
data = readmatrix('tb_ota_AC_UGbuffer.txt');

% Extract columns
frequency = data(:, 1);      % Frequency in Hz
magnitude = data(:, 2);      % Magnitude in dB
phase = data(:, 3);          % Phase in degrees

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