#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul  9 20:41:40 2025

@author: raraidos
"""

# Stability analysis integrator

import numpy as np
import matplotlib.pyplot as plt

import ltspy3

sd=ltspy3.SimData('stability_integrator.raw',[b'v(v_out)',b'frequency'])

nvout = sd.variables.index(b'v(v_out)')
nfrequency = sd.variables.index(b'frequency')

fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 6), sharex=True)

ax1.semilogx(sd.values[nfrequency],20*np.log10(abs(sd.values[nvout])))
ax1.set_ylabel("Magnitude/dB")
ax1.axvline(7e5,color='red',linestyle='--')
ax1.grid(True, which="both", ls="--")

ax2.semilogx(sd.values[nfrequency],np.angle(sd.values[nvout], deg=True))
ax2.axvline(7e5,color='red',linestyle='--')
ax2.axhline(68,color='red',linestyle='--')
ax2.set_ylabel("Phase/deg")
ax2.set_xlabel("Frequency/Hz")

plt.grid(True, which="both", ls="--")
plt.tight_layout()
plt.show()

#%%

# Stability analysis adder

import numpy as np
import matplotlib.pyplot as plt

import ltspy3

sd=ltspy3.SimData('stability_adder.raw',[b'v(v_out)',b'frequency'])

nvout = sd.variables.index(b'v(v_out)')
nfrequency = sd.variables.index(b'frequency')

fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 6), sharex=True)

ax1.semilogx(sd.values[nfrequency],20*np.log10(abs(sd.values[nvout])))
ax1.set_ylabel("Magnitude/dB")
ax1.axvline(3e5,color='red',linestyle='--')
ax1.grid(True, which="both", ls="--")

ax2.semilogx(sd.values[nfrequency],np.angle(sd.values[nvout], deg=True))
ax2.axvline(3e5,color='red',linestyle='--')
ax2.axhline(82.75,color='red',linestyle='--')
ax2.set_ylabel("Phase/deg")
ax2.set_xlabel("Frequency/Hz")


plt.grid(True, which="both", ls="--")
plt.tight_layout()
plt.show()