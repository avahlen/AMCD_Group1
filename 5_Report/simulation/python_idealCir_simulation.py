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