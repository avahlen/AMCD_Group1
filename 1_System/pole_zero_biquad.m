% Given values
f = 1e3;
w = 2 * pi * f;
R = 1e3;
C = 1/(w*R);
Q = 10;
H0 = 1;

% Calculate w0
w0 = 1 / (R * C);

% Define transfer function coefficients for s^2, s, and constant terms
a2 = 1 / w0^2;
a1 = 1 / (w0 * Q);
a0 = 1;

% Lowpass transfer function H_lowpass
num_LP = H0;
den_LP = [a2, a1, a0];
H_lowpass = tf(num_LP, den_LP);

% Highpass transfer function H_highpass
num_HP = [H0 / w0^2, 0, 0];
den_HP = [a2, a1, a0];
H_highpass = tf(num_HP, den_HP);

% Bandpass transfer function H_BP
num_BP = [-H0 / w0, 0];
den_BP = [a2, a1, a0];
H_BP = tf(num_BP, den_BP);

% Bandstop transfer function H_BS
num_BS = [H0 / w0^2, 0, H0];
den_BS = [a2, a1, a0];
H_BS = tf(num_BS, den_BS);

% Plot the pole-zero maps
figure;
subplot(2,2,1);
pzmap(H_lowpass);
title('Lowpass Filter');
axis([-2e4 2e4 -2e4 2e4]); % Adjust axis limits to view the whole circle

subplot(2,2,2);
pzmap(H_highpass);
title('Highpass Filter');
axis([-2e4 2e4 -2e4 2e4]); % Adjust axis limits to view the whole circle

subplot(2,2,3);
pzmap(H_BP);
title('Bandpass Filter');
axis([-2e4 2e4 -2e4 2e4]); % Adjust axis limits to view the whole circle

subplot(2,2,4);
pzmap(H_BS);
title('Bandstop Filter');
axis([-2e4 2e4 -2e4 2e4]); % Adjust axis limits to view the whole circle
