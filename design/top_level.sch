v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -110 0 -90 {lab=VDD}
N 0 70 0 90 {lab=GND}
N -100 -40 -80 -40 {lab=GND}
N -100 -40 -100 -20 {lab=GND}
N -160 20 -80 20 {lab=#net1}
N -160 -200 -30 -200 {lab=#net1}
N -160 -60 -160 20 {lab=#net1}
N 140 -200 180 -200 {lab=#net2}
N 100 -10 140 -10 {lab=#net2}
N 140 -200 140 -10 {lab=#net2}
N 30 -200 140 -200 {lab=#net2}
N -380 -460 -320 -460 {lab=#net3}
N -480 -560 -480 -540 {lab=VDD}
N -480 -380 -480 -360 {lab=GND}
N -580 -490 -560 -490 {lab=GND}
N -580 -490 -580 -470 {lab=GND}
N -640 -430 -560 -430 {lab=#net4}
N -640 -640 -510 -640 {lab=#net4}
N -640 -640 -640 -430 {lab=#net4}
N -680 -430 -640 -430 {lab=#net4}
N -780 -430 -740 -430 {lab=#net5}
N -780 -700 -780 -430 {lab=#net5}
N -780 -700 600 -700 {lab=#net5}
N -20 -560 -20 -540 {lab=VDD}
N -20 -380 -20 -360 {lab=GND}
N -120 -490 -100 -490 {lab=GND}
N -120 -490 -120 -470 {lab=GND}
N -180 -430 -100 -430 {lab=#net6}
N -180 -640 -50 -640 {lab=#net6}
N -180 -640 -180 -430 {lab=#net6}
N -220 -430 -180 -430 {lab=#net6}
N -320 -430 -280 -430 {lab=#net3}
N -320 -460 -320 -430 {lab=#net3}
N -450 -640 -320 -640 {lab=#net3}
N -320 -640 -320 -460 {lab=#net3}
N 80 -460 140 -460 {lab=#net7}
N 10 -640 140 -640 {lab=#net7}
N 140 -640 140 -460 {lab=#net7}
N 440 -560 440 -540 {lab=VDD}
N 440 -380 440 -360 {lab=GND}
N 340 -490 360 -490 {lab=GND}
N 340 -490 340 -470 {lab=GND}
N 280 -430 360 -430 {lab=#net8}
N 280 -640 410 -640 {lab=#net8}
N 280 -640 280 -430 {lab=#net8}
N 240 -430 280 -430 {lab=#net8}
N 540 -460 600 -460 {lab=#net5}
N 470 -640 600 -640 {lab=#net5}
N 600 -640 600 -460 {lab=#net5}
N 140 -430 180 -430 {lab=#net7}
N 140 -460 140 -430 {lab=#net7}
N 600 -700 600 -640 {lab=#net5}
N 240 -200 280 -200 {lab=#net8}
N 280 -430 280 -200 {lab=#net8}
N -220 20 -160 20 {lab=#net1}
N -220 -60 -160 -60 {lab=#net1}
N -160 -200 -160 -60 {lab=#net1}
N -320 -430 -320 -60 {lab=#net3}
N -320 -60 -280 -60 {lab=#net3}
N -320 20 -280 20 {lab=#net3}
N -320 -60 -320 20 {lab=#net3}
C {ota-improved.sym} 0 -10 0 0 {name=x1}
C {vdd.sym} 0 -110 0 0 {name=l1 lab=VDD}
C {gnd.sym} 0 90 0 0 {name=l2 lab=GND}
C {gnd.sym} -100 -20 0 1 {name=l5 lab=GND}
C {res.sym} -250 20 3 1 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -60 3 1 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 0 -200 3 1 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 210 -200 1 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -250 -430 3 1 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {ota-improved.sym} -480 -460 0 0 {name=x2}
C {vdd.sym} -480 -560 0 0 {name=l3 lab=VDD}
C {gnd.sym} -480 -360 0 0 {name=l4 lab=GND}
C {gnd.sym} -580 -470 0 1 {name=l6 lab=GND}
C {res.sym} -710 -430 3 1 {name=R6
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -480 -640 3 1 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {ota-improved.sym} -480 -460 0 0 {name=x3}
C {vdd.sym} -480 -560 0 0 {name=l7 lab=VDD}
C {gnd.sym} -480 -360 0 0 {name=l8 lab=GND}
C {gnd.sym} -580 -470 0 1 {name=l9 lab=GND}
C {capa.sym} -480 -640 3 1 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {ota-improved.sym} -20 -460 0 0 {name=x4}
C {vdd.sym} -20 -560 0 0 {name=l10 lab=VDD}
C {gnd.sym} -20 -360 0 0 {name=l11 lab=GND}
C {gnd.sym} -120 -470 0 1 {name=l12 lab=GND}
C {capa.sym} -20 -640 3 1 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {ota-improved.sym} -20 -460 0 0 {name=x5}
C {vdd.sym} -20 -560 0 0 {name=l13 lab=VDD}
C {gnd.sym} -20 -360 0 0 {name=l14 lab=GND}
C {gnd.sym} -120 -470 0 1 {name=l15 lab=GND}
C {capa.sym} -20 -640 3 1 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {ota-improved.sym} -480 -460 0 0 {name=x6}
C {vdd.sym} -480 -560 0 0 {name=l16 lab=VDD}
C {gnd.sym} -480 -360 0 0 {name=l17 lab=GND}
C {gnd.sym} -580 -470 0 1 {name=l18 lab=GND}
C {capa.sym} -480 -640 3 1 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {ota-improved.sym} -480 -460 0 0 {name=x7}
C {vdd.sym} -480 -560 0 0 {name=l19 lab=VDD}
C {gnd.sym} -480 -360 0 0 {name=l20 lab=GND}
C {gnd.sym} -580 -470 0 1 {name=l21 lab=GND}
C {capa.sym} -480 -640 3 1 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 210 -430 3 1 {name=R7
value=1k
footprint=1206
device=resistor
m=1}
C {ota-improved.sym} 440 -460 0 0 {name=x8}
C {vdd.sym} 440 -560 0 0 {name=l22 lab=VDD}
C {gnd.sym} 440 -360 0 0 {name=l23 lab=GND}
C {gnd.sym} 340 -470 0 1 {name=l24 lab=GND}
C {ota-improved.sym} 440 -460 0 0 {name=x9}
C {vdd.sym} 440 -560 0 0 {name=l25 lab=VDD}
C {gnd.sym} 440 -360 0 0 {name=l26 lab=GND}
C {gnd.sym} 340 -470 0 1 {name=l27 lab=GND}
C {res.sym} 440 -640 3 1 {name=R8
value=1k
footprint=1206
device=resistor
m=1}
