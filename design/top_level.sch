v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Q*R
Simmulation may not work because of the value,
 please change at conv.} -310 -200 0 0 0.1 0.1 {}
T {R/H0
No clue what H0 is
please edit before simmualting
} -300 -40 0 0 0.1 0.1 {}
T {R = 100k
C = 100n

w0 = 1kHz} -700 -290 0 0 0.5 0.5 {}
N -20 -210 -20 -190 {lab=VDD}
N -20 -30 -20 -10 {lab=GND}
N -120 -140 -100 -140 {lab=GND}
N -120 -140 -120 -120 {lab=GND}
N -180 -80 -100 -80 {lab=pre_bsf}
N -180 -300 -50 -300 {lab=pre_bsf}
N -180 -160 -180 -80 {lab=pre_bsf}
N 140 -300 180 -300 {lab=V_BSF}
N 80 -110 140 -110 {lab=V_BSF}
N 140 -300 140 -110 {lab=V_BSF}
N 10 -300 140 -300 {lab=V_BSF}
N -380 -460 -320 -460 {lab=V_BPF}
N -480 -560 -480 -540 {lab=VDD}
N -480 -380 -480 -360 {lab=GND}
N -580 -490 -560 -490 {lab=GND}
N -580 -490 -580 -470 {lab=GND}
N -640 -430 -560 -430 {lab=pre_bpf}
N -640 -640 -510 -640 {lab=pre_bpf}
N -640 -640 -640 -430 {lab=pre_bpf}
N -680 -430 -640 -430 {lab=pre_bpf}
N -780 -430 -740 -430 {lab=V_HPF}
N -780 -700 -780 -430 {lab=V_HPF}
N -780 -700 600 -700 {lab=V_HPF}
N -20 -560 -20 -540 {lab=VDD}
N -20 -380 -20 -360 {lab=GND}
N -120 -490 -100 -490 {lab=GND}
N -120 -490 -120 -470 {lab=GND}
N -180 -430 -100 -430 {lab=pre_lpf}
N -180 -640 -50 -640 {lab=pre_lpf}
N -180 -640 -180 -430 {lab=pre_lpf}
N -220 -430 -180 -430 {lab=pre_lpf}
N -320 -430 -280 -430 {lab=V_BPF}
N -320 -460 -320 -430 {lab=V_BPF}
N -450 -640 -320 -640 {lab=V_BPF}
N -320 -640 -320 -460 {lab=V_BPF}
N 10 -640 140 -640 {lab=V_LPF}
N 140 -640 140 -460 {lab=V_LPF}
N 440 -560 440 -540 {lab=VDD}
N 440 -380 440 -360 {lab=GND}
N 340 -490 360 -490 {lab=GND}
N 340 -490 340 -470 {lab=GND}
N 280 -430 360 -430 {lab=pre_hpf}
N 280 -640 410 -640 {lab=pre_hpf}
N 280 -640 280 -430 {lab=pre_hpf}
N 240 -430 280 -430 {lab=pre_hpf}
N 540 -460 600 -460 {lab=V_HPF}
N 470 -640 600 -640 {lab=V_HPF}
N 600 -640 600 -460 {lab=V_HPF}
N 140 -430 180 -430 {lab=V_LPF}
N 140 -460 140 -430 {lab=V_LPF}
N 600 -700 600 -640 {lab=V_HPF}
N 240 -300 280 -300 {lab=pre_hpf}
N 280 -430 280 -300 {lab=pre_hpf}
N -220 -80 -180 -80 {lab=pre_bsf}
N -220 -160 -180 -160 {lab=pre_bsf}
N -180 -300 -180 -160 {lab=pre_bsf}
N -320 -430 -320 -160 {lab=V_BPF}
N -320 -160 -280 -160 {lab=V_BPF}
N -320 -460 -280 -460 {lab=V_BPF}
N 140 -460 180 -460 {lab=V_LPF}
N 80 -460 140 -460 {lab=V_LPF}
N 600 -460 640 -460 {lab=V_HPF}
N 140 -110 180 -110 {lab=V_BSF}
N -360 -80 -280 -80 {lab=V_IN}
C {ota-improved.sym} -20 -110 0 0 {name=x1}
C {vdd.sym} -20 -210 0 0 {name=l1 lab=VDD}
C {gnd.sym} -20 -10 0 0 {name=l2 lab=GND}
C {gnd.sym} -120 -120 0 1 {name=l5 lab=GND}
C {res.sym} -250 -80 3 1 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -160 3 1 {name=R2
value=1meg
footprint=1206
device=resistor
m=1}
C {res.sym} -20 -300 3 1 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {res.sym} 210 -300 1 0 {name=R4
value=100k
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -430 3 1 {name=R5
value=100k
footprint=1206
device=resistor
m=1}
C {vdd.sym} -480 -560 0 0 {name=l3 lab=VDD}
C {gnd.sym} -480 -360 0 0 {name=l4 lab=GND}
C {gnd.sym} -580 -470 0 1 {name=l6 lab=GND}
C {res.sym} -710 -430 3 1 {name=R6
value=100k
footprint=1206
device=resistor
m=1}
C {vdd.sym} -480 -560 0 0 {name=l7 lab=VDD}
C {gnd.sym} -480 -360 0 0 {name=l8 lab=GND}
C {gnd.sym} -580 -470 0 1 {name=l9 lab=GND}
C {vdd.sym} -20 -560 0 0 {name=l10 lab=VDD}
C {gnd.sym} -20 -360 0 0 {name=l11 lab=GND}
C {gnd.sym} -120 -470 0 1 {name=l12 lab=GND}
C {vdd.sym} -20 -560 0 0 {name=l13 lab=VDD}
C {gnd.sym} -20 -360 0 0 {name=l14 lab=GND}
C {gnd.sym} -120 -470 0 1 {name=l15 lab=GND}
C {vdd.sym} -480 -560 0 0 {name=l16 lab=VDD}
C {gnd.sym} -480 -360 0 0 {name=l17 lab=GND}
C {gnd.sym} -580 -470 0 1 {name=l18 lab=GND}
C {capa.sym} -480 -640 3 1 {name=C5
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} -480 -560 0 0 {name=l19 lab=VDD}
C {gnd.sym} -480 -360 0 0 {name=l20 lab=GND}
C {gnd.sym} -580 -470 0 1 {name=l21 lab=GND}
C {res.sym} 210 -430 3 1 {name=R7
value=100k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 440 -560 0 0 {name=l22 lab=VDD}
C {gnd.sym} 440 -360 0 0 {name=l23 lab=GND}
C {gnd.sym} 340 -470 0 1 {name=l24 lab=GND}
C {vdd.sym} 440 -560 0 0 {name=l25 lab=VDD}
C {gnd.sym} 440 -360 0 0 {name=l26 lab=GND}
C {gnd.sym} 340 -470 0 1 {name=l27 lab=GND}
C {res.sym} 440 -640 3 1 {name=R8
value=100k
footprint=1206
device=resistor
m=1}
C {opin.sym} -280 -460 0 0 {name=p1 lab=V_BPF}
C {opin.sym} -280 -460 0 0 {name=p2 lab=V_BPF}
C {opin.sym} 180 -460 0 0 {name=p3 lab=V_LPF}
C {opin.sym} 640 -460 0 0 {name=p4 lab=V_HPF}
C {opin.sym} 180 -110 0 0 {name=p5 lab=V_BSF}
C {ipin.sym} -360 -80 0 0 {name=p6 lab=V_IN
}
C {lab_wire.sym} -640 -640 0 0 {name=p7 sig_type=std_logic lab=pre_bpf}
C {lab_wire.sym} -180 -640 0 0 {name=p8 sig_type=std_logic lab=pre_lpf}
C {lab_wire.sym} 280 -640 0 0 {name=p9 sig_type=std_logic lab=pre_hpf}
C {lab_wire.sym} -180 -300 0 0 {name=p10 sig_type=std_logic lab=pre_bsf}
C {capa.sym} -20 -640 3 1 {name=C1
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {ota-improved.sym} -20 -460 0 0 {name=x2}
C {ota-improved.sym} 440 -460 0 0 {name=x3}
C {ota-improved.sym} -480 -460 0 0 {name=x7}
