v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -370 250 -370 {lab=vdd}
N -30 -290 -30 -240 {lab=#net1}
N 130 -290 130 -240 {lab=#net1}
N -30 -290 30 -290 {lab=#net1}
N -30 -310 -30 -290 {lab=#net1}
N 30 -340 30 -290 {lab=#net1}
N 70 -290 130 -290 {lab=#net1}
N 130 -310 130 -290 {lab=#net1}
N 70 -340 70 -290 {lab=#net1}
N 30 -340 70 -340 {lab=#net1}
N 250 -290 250 -240 {lab=outp}
N -170 -270 -170 -240 {lab=outn}
N -170 -180 -170 -120 {lab=#net2}
N 130 -120 250 -120 {lab=#net2}
N 250 -180 250 -120 {lab=#net2}
N -30 -180 -30 -120 {lab=#net2}
N -170 -120 -30 -120 {lab=#net2}
N 130 -180 130 -120 {lab=#net2}
N 40 -120 130 -120 {lab=#net2}
N 40 -120 40 -70 {lab=#net2}
N -30 -120 40 -120 {lab=#net2}
N 40 -10 40 40 {lab=#net3}
N -170 -40 0 -40 {lab=ibias}
N -280 -10 -280 40 {lab=#net4}
N -170 70 0 70 {lab=ibias}
N 50 -210 90 -210 {lab=cm}
N -260 -210 -210 -210 {lab=inp}
N 60 -430 60 -370 {lab=vdd}
N 290 -210 340 -210 {lab=inn}
N -170 -210 -100 -210 {lab=GND}
N -100 -210 -100 -160 {lab=GND}
N -100 -210 -30 -210 {lab=GND}
N 180 -210 250 -210 {lab=GND}
N 180 -210 180 -160 {lab=GND}
N 130 -210 180 -210 {lab=GND}
N -260 -340 -170 -340 {lab=vdd}
N -260 -400 -260 -340 {lab=vdd}
N -260 -400 -110 -400 {lab=vdd}
N -110 -400 -110 -370 {lab=vdd}
N -170 -370 -110 -370 {lab=vdd}
N -60 -370 60 -370 {lab=vdd}
N 10 -340 30 -340 {lab=#net1}
N 70 -340 90 -340 {lab=#net1}
N -130 -340 -130 -320 {lab=#net1}
N -130 -320 10 -320 {lab=#net1}
N 10 -340 10 -320 {lab=#net1}
N 90 -340 90 -320 {lab=#net1}
N 90 -320 210 -320 {lab=#net1}
N 210 -340 210 -320 {lab=#net1}
N 130 -340 160 -340 {lab=vdd}
N 160 -370 160 -340 {lab=vdd}
N 60 -370 160 -370 {lab=vdd}
N -60 -340 -30 -340 {lab=vdd}
N -60 -370 -60 -340 {lab=vdd}
N -110 -370 -60 -370 {lab=vdd}
N 40 -40 120 -40 {lab=GND}
N 120 -40 120 10 {lab=GND}
N 40 70 120 70 {lab=GND}
N 120 10 120 70 {lab=GND}
N -340 70 -280 70 {lab=GND}
N -340 10 -340 70 {lab=GND}
N -50 10 120 10 {lab=GND}
N -340 -40 -280 -40 {lab=GND}
N -340 -40 -340 10 {lab=GND}
N 250 -340 320 -340 {lab=vdd}
N 320 -400 320 -340 {lab=vdd}
N 210 -400 320 -400 {lab=vdd}
N 210 -400 210 -370 {lab=vdd}
N 160 -370 210 -370 {lab=vdd}
N 250 -290 310 -290 {lab=outp}
N 250 -310 250 -290 {lab=outp}
N 50 -240 50 -210 {lab=cm}
N 10 -210 50 -210 {lab=cm}
N -280 -110 -280 -70 {lab=ibias}
N -210 -270 -170 -270 {lab=outn}
N -170 -310 -170 -270 {lab=outn}
N -280 100 -190 100 {lab=GND}
N -190 10 -190 100 {lab=GND}
N -340 10 -190 10 {lab=GND}
N -50 100 40 100 {lab=GND}
N -50 10 -50 100 {lab=GND}
N -190 10 -50 10 {lab=GND}
N -280 -110 -170 -110 {lab=ibias}
N -280 -140 -280 -110 {lab=ibias}
N -170 -110 -170 -40 {lab=ibias}
N -240 -40 -170 -40 {lab=ibias}
N -170 -40 -170 70 {lab=ibias}
N -240 70 -170 70 {lab=ibias}
C {sg13g2_pr/sg13_lv_nmos.sym} -10 -210 0 1 {name=M1
l=\{ln\}
w=\{wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 110 -340 0 0 {name=M2
l=\{lp\}
w=\{wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 110 -210 0 0 {name=M3
l=\{ln\}
w=\{wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -10 -340 0 1 {name=M4
l=\{lp\}
w=\{wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -150 -340 0 1 {name=M5
l=\{lp\}
w=\{wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 230 -340 0 0 {name=M6
l=\{lp\}
w=\{wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -190 -210 0 0 {name=M7
l=\{ln\}
w=\{wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 270 -210 0 1 {name=M8
l=\{ln\}
w=\{wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -260 -40 0 1 {name=M9
l=\{ln\}
w=\{wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 -40 0 0 {name=M11
l=\{ln\}
w=\{wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -260 70 0 1 {name=M10
l=\{ln\}
w=\{wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 70 0 0 {name=M12
l=\{ln\}
w=\{wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -260 -210 0 0 {name=p1 lab=inp}
C {ipin.sym} 60 -430 0 0 {name=p2 lab=vdd}
C {ipin.sym} 340 -210 2 0 {name=p3 lab=inn}
C {gnd.sym} -100 -160 0 0 {name=l5 lab=GND}
C {gnd.sym} 180 -160 0 0 {name=l1 lab=GND}
C {gnd.sym} -110 10 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 310 -290 0 0 {name=p5 lab=outp}
C {ipin.sym} 50 -240 0 0 {name=p4 lab=cm}
C {ipin.sym} -280 -140 0 0 {name=p6 lab=ibias}
C {devices/opin.sym} -210 -270 2 0 {name=p7 lab=outn}
