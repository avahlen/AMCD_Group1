v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -120 -20 -80 {lab=VCC}
N 420 80 420 120 {lab=GND}
N 420 -120 420 -80 {lab=VCC}
N -190 30 -100 30 {lab=#net1}
N -20 80 -20 110 {lab=GND}
C {ota-improved.sym} -20 0 0 0 {name=x3}
C {lab_pin.sym} -20 -120 1 0 {name=p1 sig_type=std_logic lab=VCC}
C {ota-improved.sym} 420 0 0 0 {name=x1}
C {lab_pin.sym} 420 -120 1 0 {name=p3 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 420 120 3 0 {name=p4 sig_type=std_logic lab=GND
}
C {res.sym} -250 60 2 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -20 110 0 0 {name=l1 lab=GND}
C {vdd.sym} 50 -150 0 0 {name=l2 lab=VDD}
