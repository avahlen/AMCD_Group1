v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -340 220 -340 {lab=vdd}
N -60 -260 -60 -210 {lab=#net1}
N 100 -260 100 -210 {lab=#net1}
N -60 -260 0 -260 {lab=#net1}
N -60 -280 -60 -260 {lab=#net1}
N 0 -310 0 -260 {lab=#net1}
N 40 -260 100 -260 {lab=#net1}
N 100 -280 100 -260 {lab=#net1}
N 40 -310 40 -260 {lab=#net1}
N 0 -310 40 -310 {lab=#net1}
N 220 -260 220 -210 {lab=outp}
N -200 -240 -200 -210 {lab=outn}
N -200 -150 -200 -90 {lab=#net2}
N 100 -90 220 -90 {lab=#net2}
N 220 -150 220 -90 {lab=#net2}
N -60 -150 -60 -90 {lab=#net2}
N -200 -90 -60 -90 {lab=#net2}
N 100 -150 100 -90 {lab=#net2}
N 10 -90 100 -90 {lab=#net2}
N 10 -90 10 -40 {lab=#net2}
N -60 -90 10 -90 {lab=#net2}
N 10 20 10 70 {lab=#net3}
N -200 -10 -30 -10 {lab=ibias}
N -310 20 -310 70 {lab=#net4}
N -200 100 -30 100 {lab=ibias}
N 20 -180 60 -180 {lab=cm}
N -290 -180 -240 -180 {lab=inp}
N 30 -400 30 -340 {lab=vdd}
N 260 -180 310 -180 {lab=inn}
N -200 -180 -130 -180 {lab=GND}
N -130 -180 -130 -130 {lab=GND}
N -130 -180 -60 -180 {lab=GND}
N 150 -180 220 -180 {lab=GND}
N 150 -180 150 -130 {lab=GND}
N 100 -180 150 -180 {lab=GND}
N -290 -310 -200 -310 {lab=vdd}
N -290 -370 -290 -310 {lab=vdd}
N -290 -370 -140 -370 {lab=vdd}
N -140 -370 -140 -340 {lab=vdd}
N -200 -340 -140 -340 {lab=vdd}
N -90 -340 30 -340 {lab=vdd}
N -20 -310 0 -310 {lab=#net1}
N 40 -310 60 -310 {lab=#net1}
N -160 -310 -160 -290 {lab=#net1}
N -160 -290 -20 -290 {lab=#net1}
N -20 -310 -20 -290 {lab=#net1}
N 60 -310 60 -290 {lab=#net1}
N 60 -290 180 -290 {lab=#net1}
N 180 -310 180 -290 {lab=#net1}
N 100 -310 130 -310 {lab=vdd}
N 130 -340 130 -310 {lab=vdd}
N 30 -340 130 -340 {lab=vdd}
N -90 -310 -60 -310 {lab=vdd}
N -90 -340 -90 -310 {lab=vdd}
N -140 -340 -90 -340 {lab=vdd}
N 10 -10 90 -10 {lab=GND}
N 90 -10 90 40 {lab=GND}
N 10 100 90 100 {lab=GND}
N 90 40 90 100 {lab=GND}
N -370 100 -310 100 {lab=GND}
N -370 40 -370 100 {lab=GND}
N -80 40 90 40 {lab=GND}
N -370 -10 -310 -10 {lab=GND}
N -370 -10 -370 40 {lab=GND}
N 220 -310 290 -310 {lab=vdd}
N 290 -370 290 -310 {lab=vdd}
N 180 -370 290 -370 {lab=vdd}
N 180 -370 180 -340 {lab=vdd}
N 130 -340 180 -340 {lab=vdd}
N 220 -260 280 -260 {lab=outp}
N 220 -280 220 -260 {lab=outp}
N 20 -210 20 -180 {lab=cm}
N -20 -180 20 -180 {lab=cm}
N -310 -80 -310 -40 {lab=ibias}
N -240 -240 -200 -240 {lab=outn}
N -200 -280 -200 -240 {lab=outn}
N -310 130 -220 130 {lab=GND}
N -220 40 -220 130 {lab=GND}
N -370 40 -220 40 {lab=GND}
N -80 130 10 130 {lab=GND}
N -80 40 -80 130 {lab=GND}
N -220 40 -80 40 {lab=GND}
N -310 -80 -200 -80 {lab=ibias}
N -310 -110 -310 -80 {lab=ibias}
N -200 -80 -200 -10 {lab=ibias}
N -270 -10 -200 -10 {lab=ibias}
N -200 -10 -200 100 {lab=ibias}
N -270 100 -200 100 {lab=ibias}
C {sg13g2_pr/sg13_lv_nmos.sym} -40 -180 0 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 -310 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 80 -180 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -40 -310 0 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -180 -310 0 1 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 200 -310 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -220 -180 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 -180 0 1 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -290 -10 0 1 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -10 -10 0 0 {name=M11
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -290 100 0 1 {name=M10
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -10 100 0 0 {name=M12
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -290 -180 0 0 {name=p1 lab=inp}
C {ipin.sym} 30 -400 0 0 {name=p2 lab=vdd}
C {ipin.sym} 310 -180 2 0 {name=p3 lab=inn}
C {gnd.sym} -130 -130 0 0 {name=l5 lab=GND}
C {gnd.sym} 150 -130 0 0 {name=l1 lab=GND}
C {gnd.sym} -140 40 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 280 -260 0 0 {name=p5 lab=outp}
C {ipin.sym} 20 -210 0 0 {name=p4 lab=cm}
C {ipin.sym} -310 -110 0 0 {name=p6 lab=ibias}
C {devices/opin.sym} -240 -240 2 0 {name=p7 lab=outn}
