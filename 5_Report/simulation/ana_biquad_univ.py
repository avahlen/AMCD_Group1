#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jul  7 10:33:16 2025

@author: raraidos
"""


import numpy as np
import matplotlib.pyplot as plt
import ltspice
#filepath = '../../1_System/simulations/stability_integrator.raw'
filepath = 'bsp632_reisch.raw'
l = ltspice.Ltspice(filepath)
l.parse() # Data loading sequence. It may take few minutes for huge file.

V1 = l.get_data('V(vo)')
#plt.plot(V1)

"""
from PyLTSpice import RawRead
from matplotlib import pyplot as plt

LTR = RawRead("../../1_System/simulations/stability_integrator.raw")
#LTR = RawRead("bsp632_reisch.raw")

print(LTR.get_trace_names())
print(LTR.get_raw_property())
"""

#%%

import ltspice
import numpy as np
import matplotlib.pyplot as plt
import os

filepath = 'bsp632_reisch_C.raw'
l = ltspice.Ltspice(filepath)
l.parse()

fig, axes = plt.subplots(2,1,figsize=(7,7))

#labels = list(map(lambda x: "Rmax = {}kOhm".format(str(x)), np.linspace(9,11,3).astype(int)))

for case in range(l.case_count):
    freq = l.get_frequency(case)
    V_out = l.get_data('V(vo)', case)
    
    Vout_amplitude = 20*np.log10(np.abs(V_out))
    Vout_angle = np.angle(V_out, deg=True)
    
    axes[0].semilogx(freq, Vout_amplitude)
    axes[1].semilogx(freq, Vout_angle)#, label=labels[case])
    
axes[0].grid()
axes[1].grid()
axes[1].set_xlabel("Frequency (Hz)")
axes[0].set_ylabel("Amplitude (dB)")
axes[1].set_ylabel("Phase (Deg)")
#plt.legend()

#%%

import numpy as np
import matplotlib.pyplot as plt

# Adjust path to match your local file
file_path = '../../1_System/simulations/stability_integrator.csv'

# Read all lines
with open(file_path, 'r') as f:
    lines = f.readlines()

# Find the start of the data
data_start_index = next(i for i, line in enumerate(lines) if line.strip().lower().startswith('values:')) + 1

# Set number of variables from header (3: freq + 2 signals)
num_vars = 3
num_outputs = num_vars - 1

frequencies = []
outputs = [[] for _ in range(num_outputs)]

i = data_start_index
while i < len(lines):
    if lines[i].strip() == "":
        i += 1
        continue

    # Frequency
    freq_parts = lines[i].strip().split('\t')[-1].split(',')
    freq = float(freq_parts[0])
    frequencies.append(freq)
    i += 1

    # Complex output lines
    for j in range(num_outputs):
        real, imag = map(float, lines[i].strip().split(','))
        outputs[j].append(complex(real, imag))
        i += 1

frequencies = np.array(frequencies)
outputs = [np.array(out) for out in outputs]

# Select the first output (v(v_out)) for Bode plot
output = outputs[0]
magnitude_db = 20 * np.log10(np.abs(output))
phase_deg = np.angle(output, deg=True)

# Plot Bode diagram
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 6), sharex=True)

ax1.semilogx(frequencies, magnitude_db)
ax1.set_ylabel("Magnitude (dB)")
ax1.set_title("Bode Diagram")
ax1.grid(True, which="both", ls="--")
ax1.set_xlim([1e5,1e6])

ax2.semilogx(frequencies, phase_deg)
ax2.set_ylabel("Phase (degrees)")
ax2.set_xlabel("Frequency (Hz)")

plt.grid(True, which="both", ls="--")
plt.tight_layout()
plt.show()

#%% This needs to be adapted to four voltage inputs

import numpy as np
import matplotlib.pyplot as plt

# Adjust path to match your local file
file_path = '../../2_Ideal_Cir/simulations/biquad_univ.csv'

# Read all lines
with open(file_path, 'r') as f:
    lines = f.readlines()

# Find the start of the data
data_start_index = next(i for i, line in enumerate(lines) if line.strip().lower().startswith('values:')) + 1

# Set number of variables from header (3: freq + 2 signals)
num_vars = 3
num_outputs = num_vars - 1

frequencies = []
outputs = [[] for _ in range(num_outputs)]

i = data_start_index
while i < len(lines):
    if lines[i].strip() == "":
        i += 1
        continue

    # Frequency
    freq_parts = lines[i].strip().split('\t')[-1].split(',')
    freq = float(freq_parts[0])
    frequencies.append(freq)
    i += 1

    # Complex output lines
    for j in range(num_outputs):
        real, imag = map(float, lines[i].strip().split(','))
        outputs[j].append(complex(real, imag))
        i += 1

frequencies = np.array(frequencies)
outputs = [np.array(out) for out in outputs]

# Select the first output (v(v_out)) for Bode plot
output = outputs[0]
magnitude_db = 20 * np.log10(np.abs(output))
phase_deg = np.angle(output, deg=True)

# Plot Bode diagram
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 6), sharex=True)

ax1.semilogx(frequencies, magnitude_db)
ax1.set_ylabel("Magnitude (dB)")
ax1.set_title("Bode Diagram")
ax1.grid()

ax2.semilogx(frequencies, phase_deg)
ax2.set_ylabel("Phase (degrees)")
ax2.set_xlabel("Frequency (Hz)")

plt.grid()
plt.tight_layout()
plt.show()
