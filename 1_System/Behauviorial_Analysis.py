#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed May  7 08:59:00 2025

@author: raraidos, OnnoDeKingKong
"""

# Behavioral Analysis Biquad Filter

import numpy as np
import matplotlib.pyplot as plt

# Initial values
f0 = 1000  # Resonance frequency in Hz
w0 = 2 * np.pi * f0  # Angular frequency in rad/s
Q = 10  # Quality factor
H0 = 1  # Play around with this later

# Logarithmic frequency axis
frequencies = np.logspace(0, 4, 1000)  # Frequency from 10^2 to 10^4 Hz
s = 1j * 2 * np.pi * frequencies  # Laplace-Variable s = jω

############################################
# Transfer functions of Active Filters
############################################


### Numerator
# Low Pass Filter
b_lp = H0

# High Pass Filter
b_hp = (H0 * (s**2 / w0**2))

# Band Pass Filter
b_bp = (-H0 * (s / w0))

# Band Stop Filter
b_bs = (1 + (s**2 / (w0**2))) * H0

# Denominator -> for all filters the same
a0 = 1
a1 = (s / (w0 * Q))
a2 = (s**2 / (w0**2))

den = a0 + a1 + a2

############################################
# Calculation of the transfer functions H(s)
############################################
Hs_lp = b_lp / den
Hs_hp = b_hp / den
Hs_bp = b_bp / den
Hs_bs = b_bs / den

# Bode Diagram
fig, axs = plt.subplots(2)
fig.suptitle("Bode-Diagram of the TF")

# Low Pass Filter
axs[0].semilogx(frequencies, 20 * np.log10(np.abs(Hs_lp)), label='Low Pass')
axs[1].semilogx(frequencies, np.angle(Hs_lp), label='Low Pass')  # Phase in radians

# High Pass Filter
axs[0].semilogx(frequencies, 20 * np.log10(np.abs(Hs_hp)), label='High Pass')
axs[1].semilogx(frequencies, np.angle(Hs_hp), label='High Pass')  # Phase in radians

# Band Pass Filter
axs[0].semilogx(frequencies, 20 * np.log10(np.abs(Hs_bp)), label='Band Pass')
axs[1].semilogx(frequencies, np.angle(Hs_bp), label='Band Pass')  # Phase in radians

# Band Stop Filter
axs[0].semilogx(frequencies, 20 * np.log10(np.abs(Hs_bs)), label='Band Stop')
axs[1].semilogx(frequencies, np.angle(Hs_bs), label='Band Stop')  # Phase in radians

"""
# Low Pass Filter
axs[0].semilogx(frequencies, 20 * np.log10(np.abs(Hs_lp)), label='Low Pass')
axs[1].semilogx(frequencies, np.angle(Hs_lp) * (180 / np.pi), label='Low Pass')

# High Pass Filter
axs[0].semilogx(frequencies, 20 * np.log10(np.abs(Hs_hp)), label='High Pass')
axs[1].semilogx(frequencies, np.angle(Hs_hp) * (180 / np.pi), label='High Pass')

# Band Pass Filter
axs[0].semilogx(frequencies, 20 * np.log10(np.abs(Hs_bp)), label='Band Pass')
axs[1].semilogx(frequencies, np.angle(Hs_bp) * (180 / np.pi), label='Band Pass')

# Band Stop Filter
axs[0].semilogx(frequencies, 20 * np.log10(np.abs(Hs_bs)), label='Band Stop')
axs[1].semilogx(frequencies, np.angle(Hs_bs) * (180 / np.pi), label='Band Stop')
"""
axs[0].set_xlabel("Frequencies in Hz")
axs[0].set_ylabel("Amplitude in dB")
axs[0].set_ylim(-50, 25)
axs[0].grid()
axs[0].legend()

axs[1].set_xlabel("Frequencies in Hz")
axs[1].set_ylabel("Phase in degree")

axs[1].grid()
axs[1].legend()

plt.tight_layout()
plt.show()

# Pol-Zero Diagram for Low Pass Filter
numerator_lp = [b_lp]
denominator_lp = [a0, a1[0], a2[0]]  # Use the first element for the polynomial coefficients
poles_lp = np.roots(denominator_lp)
zeros_lp = np.roots(numerator_lp)

plt.figure()
plt.plot(np.real(poles_lp), np.imag(poles_lp), "rx", label="Poles (Low Pass)")
plt.plot(np.real(zeros_lp), np.imag(zeros_lp), "go", label="Zeros (Low Pass)")
plt.grid()
plt.title("Pole-Zero Diagram (Low Pass)")
plt.xlabel("Real Part")
plt.ylabel("Imaginary Part")
plt.legend()
plt.axis("equal")

# Pol-Zero Diagram for High Pass Filter
numerator_hp = [0, 0, b_hp[0]]  # Coefficients for s^2 term
denominator_hp = [a0, a1[0], a2[0]]
poles_hp = np.roots(denominator_hp)
zeros_hp = np.roots(numerator_hp)

plt.figure()
plt.plot(np.real(poles_hp), np.imag(poles_hp), "rx", label="Poles (High Pass)")
plt.plot(np.real(zeros_hp), np.imag(zeros_hp), "go", label="Zeros (High Pass)")
plt.grid()
plt.title("Pole-Zero Diagram (High Pass)")
plt.xlabel("Real Part")
plt.ylabel("Imaginary Part")
plt.legend()
plt.axis("equal")

# Pol-Zero Diagram for Band Pass Filter
numerator_bp = [0, b_bp[0]]  # Coefficients for s term
denominator_bp = [a0, a1[0], a2[0]]
poles_bp = np.roots(denominator_bp)
zeros_bp = np.roots(numerator_bp)

plt.figure()
plt.plot(np.real(poles_bp), np.imag(poles_bp), "rx", label="Poles (Band Pass)")
plt.plot(np.real(zeros_bp), np.imag(zeros_bp), "go", label="Zeros (Band Pass)")
plt.grid()
plt.title("Pole-Zero Diagram (Band Pass)")
plt.xlabel("Real Part")
plt.ylabel("Imaginary Part")
plt.legend()
plt.axis("equal")

# Pol-Zero Diagram for Band Stop Filter
numerator_bs = [H0, 0, H0]  # Coefficients for s^2 and constant term
denominator_bs = [a0, a1[0], a2[0]]
poles_bs = np.roots(denominator_bs)
zeros_bs = np.roots(numerator_bs)

plt.figure()
plt.plot(np.real(poles_bs), np.imag(poles_bs), "rx", label="Poles (Band Stop)")
plt.plot(np.real(zeros_bs), np.imag(zeros_bs), "go", label="Zeros (Band Stop)")
plt.grid()
plt.title("Pole-Zero Diagram (Band Stop)")
plt.xlabel("Real Part")
plt.ylabel("Imaginary Part")
plt.legend()
plt.axis("equal")

print("Poles (Low Pass)")
print(poles_lp)

print("Zeros (Low Pass)")
print(zeros_lp)

print("Poles (High Pass)")
print(poles_hp)

print("Zeros (High Pass)")
print(zeros_hp)

print("Poles (Band Pass)")
print(poles_bp)

print("Zeros (Band Pass)")
print(zeros_bp)

print("Poles (Band Stop)")
print(poles_bs)

print("Zeros (Band Stop)")
print(zeros_bs)