#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed May  7 08:59:00 2025

@author: raraidos
"""

#Behauviorial Analysis Biquad Filter

import numpy as np
import matplotlib.pyplot as plt

# Initial values
f0 = 1e3 # Resonance frequency in Hz
w0 = 2 * np.pi * f0 # Angular frequency in rad/s
Q = 10 # quality factor
H0 = 1 #play around with this later

#Logarithmic frequency axis
frequencies = np.logspace(2, 4, 1000) # Frequency from 10^2 to 10^4 Hz
s = 1j * 2 * np.pi * frequencies; # Laplace-Variable s = jω


#values for Low Pass Filter
b0 = H0 * w0**2;

#values for High Pass Filter



# Denuminator
a0 = 1;
a1 = w0 / Q;
a2 = w0**2;

den = a0 + s/a1 + s**2/a2


# Calculation of the transfer function H(s)
Hs = b0 / (a0 * s**2 + a1 * s + a2)

# Bode Diagram
fig, axs = plt.subplots(2)
fig.suptitle("Bode-Diagram of the TF")

axs[0].semilogx(frequencies, 20*np.log10(np.abs(Hs)))
# axs[0].set_title("Bode-Diagram of the TF22")
axs[0].set_xlabel("Frequencies in Hz")
axs[0].set_ylabel("Amplitude in dB")
axs[0].grid()

axs[1].semilogx(frequencies, np.angle(Hs) * (180/np.pi))
axs[1].set_xlabel("Frequencies in Hz")
axs[1].set_ylabel("Phase in degree")
axs[1].grid()

plt.tight_layout()
plt.show()

# Pol-Zero Diagram
poles = np.roots([a0, a1, a2])
zeros = np.roots([b0])

plt.figure()
plt.plot(np.real(poles), np.imag(poles), "rx", label="Poles")
plt.plot(np.real(zeros), np.imag(zeros), "go", label="Zeros")
plt.grid()
plt.title("Pole-Zero Diagram")
plt.xlabel("Real Part")
plt.ylabel("Imaginary Part")
plt.legend()
plt.axis("equal")

print("Poles")
print(poles)

print("Zeros")
print(zeros)
