v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -250 -300 -250 -170 {lab=A}
N -250 -300 -40 -300 {lab=A}
N -40 -300 -40 -270 {lab=A}
N -40 -210 -40 -170 {lab=B}
N -40 -110 -40 -70 {lab=C}
N -40 -10 -40 20 {lab=0}
N -250 -110 -250 20 {lab=0}
N -250 20 -40 20 {lab=0}
C {capa.sym} -40 -40 0 0 {name=C1
m=1
value=50n
footprint=1206
device="ceramic capacitor"}
C {ind.sym} -40 -140 0 0 {name=L1
m=1
value=10m
footprint=1206
device=inductor}
C {res.sym} -40 -240 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {vsource_arith.sym} -250 -140 0 0 {name=E1 VOL="'3*cos(time*time*time*1e11)'"}
C {lab_pin.sym} -250 -300 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -40 -190 2 0 {name=p3 sig_type=std_logic lab=B}
C {lab_pin.sym} -40 -90 2 0 {name=p4 sig_type=std_logic lab=C}
C {lab_pin.sym} -250 20 0 0 {name=p2 sig_type=std_logic lab=0}
C {code.sym} 30 -280 0 0 {name=Stimuli only_toplevel=false value=".tran 10n 2000u uic .save all"}
