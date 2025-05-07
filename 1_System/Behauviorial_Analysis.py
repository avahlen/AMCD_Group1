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
f0 = 1e3
w0 = 2 * np.pi * f0
Q = 10
H0 = 1 #play around with this later

#v alues for tf
b0 = H0 * w0^2;
a0 = 1;
a1 = w0 / Q;
a2 = w0^2;
