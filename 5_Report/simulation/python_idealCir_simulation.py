#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jul 10 07:45:00 2025

@author: raraidos
"""

import numpy as np
import matplotlib.pyplot as plt

import ltspy3

sd=ltspy3.SimData('biquad_univ.raw')

nvoutLPF = sd.variables.index(b'v(lpf)')
nvoutHPF = sd.variables.index(b'v(hpf)')
nvoutBPF = sd.variables.index(b'v(bpf)')
nvoutBSF = sd.variables.index(b'v(bsf)')
nfrequency = sd.variables.index(b'frequency')

fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 6), sharex=True)

ax1.semilogx(sd.values[nfrequency],20*np.log10(abs(sd.values[nvoutLPF])),label='lpf')
ax1.semilogx(sd.values[nfrequency],20*np.log10(abs(sd.values[nvoutHPF])),label='hpf')
ax1.semilogx(sd.values[nfrequency],20*np.log10(abs(sd.values[nvoutBPF])),label='bpf')
ax1.semilogx(sd.values[nfrequency],20*np.log10(abs(sd.values[nvoutBSF])),label='bsf')
ax1.set_xlim([10e1,10e3])
ax1.set_ylim([-40,20])
ax1.set_ylabel("Magnitude/dB")
ax1.grid(True, which="both", ls="--")
ax1.legend()

ax2.semilogx(sd.values[nfrequency],np.angle(sd.values[nvoutLPF], deg=True),label='lpf')
ax2.semilogx(sd.values[nfrequency],np.angle(sd.values[nvoutHPF], deg=True),label='hpf')
ax2.semilogx(sd.values[nfrequency],np.angle(sd.values[nvoutBPF], deg=True),label='bpf')
ax2.semilogx(sd.values[nfrequency],np.angle(sd.values[nvoutBSF], deg=True),label='bsf')
ax2.set_ylabel("Phase/deg")
ax2.set_xlabel("Frequency/Hz")
ax2.legend()

plt.grid(True, which="both", ls="--")
plt.tight_layout()
plt.show()

#behauvioural moddling with tfs

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
b_bs = -(1 + (s**2 / (w0**2))) * H0

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

#mag plots

fig, axs = plt.subplots(2, 2, sharex=True, sharey=True)

ax1, ax2, ax3, ax4 = axs.flatten()

# Plotting each
ax1.semilogx(frequencies, 20 * np.log10(np.abs(Hs_lp)), label='tf')
ax1.semilogx(sd.values[nfrequency], 20 * np.log10(abs(sd.values[nvoutLPF])), label='ngspice')
ax1.set_ylabel("magnitude/dB")
ax1.set_title("low pass filter")
ax1.set_xlim([10,10e3])
ax1.set_ylim([-40,25])
ax1.grid(True, which="both", ls="--")
ax1.legend()

ax2.semilogx(frequencies, 20 * np.log10(np.abs(Hs_hp)), label='tf')
ax2.semilogx(sd.values[nfrequency], 20 * np.log10(abs(sd.values[nvoutHPF])), label='ngspice')
ax2.set_title("high pass filter")
#ax2.set_xlim([10,10e3])
#ax2.set_ylim([-40,25])
ax2.grid(True, which="both", ls="--")
ax2.legend()

ax3.semilogx(frequencies, 20 * np.log10(np.abs(Hs_bp)), label='tf')
ax3.semilogx(sd.values[nfrequency], 20 * np.log10(abs(sd.values[nvoutBPF])), label='ngspice')
ax3.set_xlabel("frequency/Hz")
ax3.set_ylabel("magnitude/dB")
ax3.set_title("band pass filter")
#ax3.set_xlim([10,10e3])
#ax3.set_ylim([-40,25])
ax3.grid(True, which="both", ls="--")
ax3.legend()

ax4.semilogx(frequencies, 20 * np.log10(np.abs(Hs_bs)), label='tf')
ax4.semilogx(sd.values[nfrequency], 20 * np.log10(abs(sd.values[nvoutBSF])), label='ngspice')
ax4.set_xlabel("frequency/Hz")
ax4.set_title("band stop filter")
#ax4.set_xlim([10,10e3])
#ax4.set_ylim([-40,25])
ax4.grid(True, which="both", ls="--")
ax4.legend()

plt.tight_layout()
plt.show()

#phase plots

fig, axs = plt.subplots(2, 2, sharex=True, sharey=True)

ax1, ax2, ax3, ax4 = axs.flatten()

# Plotting each
ax1.semilogx(frequencies, np.angle(Hs_lp, deg=True), label='tf')
ax1.semilogx(sd.values[nfrequency],np.angle(sd.values[nvoutLPF], deg=True),label='ngspice')
ax1.set_ylabel("phase/deg")
ax1.set_title("low pass filter")
ax1.set_xlim([10,10e3])
#ax1.set_ylim([-40,25])
ax1.grid(True, which="both", ls="--")
ax1.legend()

ax2.semilogx(frequencies, np.angle(Hs_hp, deg=True), label='tf')
ax2.semilogx(sd.values[nfrequency],np.angle(sd.values[nvoutHPF], deg=True),label='ngspice')
ax2.set_title("high pass filter")
#ax1.set_xlim([10,10e3])
#ax1.set_ylim([-40,25])
ax2.grid(True, which="both", ls="--")
ax2.legend()

ax3.semilogx(frequencies, np.angle(Hs_bp, deg=True), label='tf')
ax3.semilogx(sd.values[nfrequency],np.angle(sd.values[nvoutBPF], deg=True),label='ngspice')
ax3.set_xlabel("frequency/Hz")
ax3.set_ylabel("phase/deg")
ax3.set_title("band pass filter")
#ax1.set_xlim([10,10e3])
#ax1.set_ylim([-40,25])
ax3.grid(True, which="both", ls="--")
ax3.legend()

ax4.semilogx(frequencies, np.angle(Hs_bs, deg=True), label='tf')
ax4.semilogx(sd.values[nfrequency],np.angle(sd.values[nvoutBSF], deg=True),label='ngspice')
ax4.set_xlabel("frequency/Hz")
ax4.set_title("band stop filter")
#ax1.set_xlim([10,10e3])
#ax1.set_ylim([-40,25])
ax4.grid(True, which="both", ls="--")
ax4.legend()

plt.tight_layout()
plt.show()
