v {xschem version=3.4.7 file_version=1.2}
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
T {For Simmulation the Schematic look at this example
https://iic-jku.github.io/analog-circuit-design/xschem/ota-improved_tb-tran.svg} -970 -330 0 0 0.2 0.2 {}
N -120 -140 -100 -140 {lab=VSS}
N -180 -80 -100 -80 {lab=pre_bsf}
N -180 -300 -50 -300 {lab=pre_bsf}
N -180 -160 -180 -80 {lab=pre_bsf}
N 140 -300 180 -300 {lab=V_BSF}
N 140 -300 140 -110 {lab=V_BSF}
N 10 -300 140 -300 {lab=V_BSF}
N -580 -490 -550 -490 {lab=VSS}
N -640 -430 -550 -430 {lab=pre_bpf}
N -640 -640 -510 -640 {lab=pre_bpf}
N -640 -640 -640 -430 {lab=pre_bpf}
N -680 -430 -640 -430 {lab=pre_bpf}
N -780 -430 -740 -430 {lab=V_HPF}
N -780 -700 -780 -430 {lab=V_HPF}
N -780 -700 600 -700 {lab=V_HPF}
N -120 -490 -100 -490 {lab=VSS}
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
N 340 -490 360 -490 {lab=VSS}
N 280 -430 360 -430 {lab=pre_hpf}
N 280 -640 410 -640 {lab=pre_hpf}
N 280 -640 280 -430 {lab=pre_hpf}
N 240 -430 280 -430 {lab=pre_hpf}
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
N 600 -460 640 -460 {lab=V_HPF}
N 140 -110 180 -110 {lab=V_BSF}
N -360 -80 -280 -80 {lab=V_INPUT}
N -20 -560 -20 -540 {lab=VDD}
N -20 -560 20 -560 {lab=VDD}
N 20 -570 20 -560 {lab=VDD}
N 440 -560 440 -540 {lab=VDD}
N 440 -560 480 -560 {lab=VDD}
N 480 -570 480 -560 {lab=VDD}
N -20 -210 -20 -190 {lab=VDD}
N -20 -210 20 -210 {lab=VDD}
N 20 -220 20 -210 {lab=VDD}
N -20 -30 -20 -10 {lab=VSS}
N -40 -10 -20 -10 {lab=VSS}
N 440 -380 440 -360 {lab=VSS}
N 420 -360 440 -360 {lab=VSS}
N -20 -380 -20 -360 {lab=VSS}
N -40 -360 -20 -360 {lab=VSS}
N -470 -380 -470 -360 {lab=VSS}
N -490 -360 -470 -360 {lab=VSS}
N -410 -380 -410 -360 {lab=VDD}
N -410 -360 -360 -360 {lab=VDD}
N -360 -380 -360 -360 {lab=VDD}
N 40 -380 40 -360 {lab=VDD}
N 40 -360 100 -360 {lab=VDD}
N 100 -380 100 -360 {lab=VDD}
N 500 -380 500 -360 {lab=VDD}
N 500 -360 560 -360 {lab=VDD}
N 560 -380 560 -360 {lab=VDD}
N 40 -30 40 -10 {lab=VDD}
N 40 -10 100 -10 {lab=VDD}
N 100 -30 100 -10 {lab=VDD}
N -470 -550 -470 -540 {lab=VDD}
N 60 -460 140 -460 {lab=V_LPF}
N -390 -460 -320 -460 {lab=V_BPF}
N 520 -460 600 -460 {lab=V_HPF}
N 60 -110 140 -110 {lab=V_BSF}
N -860 -210 -800 -210 {lab=VSS}
N -860 -240 -830 -240 {lab=VDD}
N -830 -260 -830 -240 {lab=VDD}
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
C {res.sym} -710 -430 3 1 {name=R6
value=100k
footprint=1206
device=resistor
m=1}
C {capa.sym} -480 -640 3 1 {name=C5
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {res.sym} 210 -430 3 1 {name=R7
value=100k
footprint=1206
device=resistor
m=1}
C {res.sym} 440 -640 3 1 {name=R8
value=100k
footprint=1206
device=resistor
m=1}
C {opin.sym} -280 -460 0 0 {name=p2 lab=V_BPF}
C {opin.sym} 180 -460 0 0 {name=p3 lab=V_LPF}
C {opin.sym} 640 -460 0 0 {name=p4 lab=V_HPF}
C {opin.sym} 180 -110 0 0 {name=p5 lab=V_BSF}
C {lab_wire.sym} -640 -640 0 0 {name=p7 sig_type=std_logic lab=pre_bpf}
C {lab_wire.sym} -180 -640 0 0 {name=p8 sig_type=std_logic lab=pre_lpf}
C {lab_wire.sym} 280 -640 0 0 {name=p9 sig_type=std_logic lab=pre_hpf}
C {lab_wire.sym} -180 -300 0 0 {name=p10 sig_type=std_logic lab=pre_bsf}
C {capa.sym} -20 -640 3 1 {name=C1
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 20 -570 0 0 {name=l10 lab=VDD}
C {vdd.sym} 480 -570 0 0 {name=l13 lab=VDD}
C {vdd.sym} 20 -220 0 0 {name=l1 lab=VDD}
C {vdd.sym} -830 -260 0 0 {name=l14 lab=VDD}
C {lab_wire.sym} -40 -10 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 420 -360 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -40 -360 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -490 -360 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -580 -490 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -120 -490 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 340 -490 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -120 -140 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {ipin.sym} -360 -80 0 0 {name=p6 lab=V_INPUT}
C {vdd.sym} -360 -380 0 0 {name=l5 lab=VDD}
C {vdd.sym} 100 -380 0 0 {name=l6 lab=VDD}
C {vdd.sym} 560 -380 0 0 {name=l8 lab=VDD}
C {vdd.sym} 100 -30 0 0 {name=l9 lab=VDD}
C {self_build_opamp.sym} -470 -460 0 0 {name=x1}
C {vdd.sym} -470 -550 0 0 {name=l2 lab=VDD}
C {self_build_opamp.sym} -20 -460 0 0 {name=x2}
C {self_build_opamp.sym} 440 -460 0 0 {name=x3}
C {self_build_opamp.sym} -20 -110 0 0 {name=x4}
C {iopin.sym} -860 -240 2 0 {name=p26 lab=VDD}
C {iopin.sym} -860 -210 2 0 {name=p1 lab=VSS}
C {lab_wire.sym} -800 -210 0 0 {name=p15 sig_type=std_logic lab=VSS}
