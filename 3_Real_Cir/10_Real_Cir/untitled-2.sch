v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 250 -60 290 -60 {lab=vdd}
N 10 20 10 70 {lab=#net1}
N 170 20 170 70 {lab=#net1}
N 10 20 70 20 {lab=#net1}
N 10 -0 10 20 {lab=#net1}
N 70 -30 70 20 {lab=#net1}
N 110 20 170 20 {lab=#net1}
N 170 0 170 20 {lab=#net1}
N 110 -30 110 20 {lab=#net1}
N 70 -30 110 -30 {lab=#net1}
N 290 20 290 70 {lab=vout}
N -130 -0 -130 70 {lab=#net2}
N -130 130 -130 190 {lab=#net3}
N 170 190 290 190 {lab=#net3}
N 290 130 290 190 {lab=#net3}
N 10 130 10 190 {lab=#net3}
N -130 190 10 190 {lab=#net3}
N 170 130 170 190 {lab=#net3}
N 80 190 170 190 {lab=#net3}
N 80 190 80 240 {lab=#net3}
N 10 190 80 190 {lab=#net3}
N 80 300 80 350 {lab=#net4}
N -200 270 40 270 {lab=#net5}
N -240 300 -240 350 {lab=#net6}
N -200 380 40 380 {lab=#net7}
N 90 100 130 100 {lab=vcm}
N -220 100 -170 100 {lab=inp}
N 100 -120 100 -60 {lab=vdd}
N 330 100 380 100 {lab=inm}
N -130 100 -60 100 {lab=GND}
N -60 100 -60 150 {lab=GND}
N -60 100 10 100 {lab=GND}
N 220 100 290 100 {lab=GND}
N 220 100 220 150 {lab=GND}
N 170 100 220 100 {lab=GND}
N -220 -30 -130 -30 {lab=vdd}
N -220 -90 -220 -30 {lab=vdd}
N -220 -90 -70 -90 {lab=vdd}
N -70 -90 -70 -60 {lab=vdd}
N -130 -60 -70 -60 {lab=vdd}
N -20 -60 100 -60 {lab=vdd}
N 50 -30 70 -30 {lab=#net1}
N 110 -30 130 -30 {lab=#net1}
N -90 -30 -90 -10 {lab=#net1}
N -90 -10 50 -10 {lab=#net1}
N 50 -30 50 -10 {lab=#net1}
N 130 -30 130 -10 {lab=#net1}
N 130 -10 250 -10 {lab=#net1}
N 250 -30 250 -10 {lab=#net1}
N 170 -30 200 -30 {lab=vdd}
N 200 -60 200 -30 {lab=vdd}
N 100 -60 200 -60 {lab=vdd}
N -20 -30 10 -30 {lab=vdd}
N -20 -60 -20 -30 {lab=vdd}
N -70 -60 -20 -60 {lab=vdd}
N 80 270 160 270 {lab=GND}
N 160 270 160 320 {lab=GND}
N 80 380 160 380 {lab=GND}
N 160 320 160 380 {lab=GND}
N -300 380 -240 380 {lab=GND}
N -300 320 -300 380 {lab=GND}
N -300 320 160 320 {lab=GND}
N -300 270 -240 270 {lab=GND}
N -300 270 -300 320 {lab=GND}
N 290 -30 360 -30 {lab=vdd}
N 360 -90 360 -30 {lab=vdd}
N 250 -90 360 -90 {lab=vdd}
N 250 -90 250 -60 {lab=vdd}
N 200 -60 250 -60 {lab=vdd}
N 290 20 350 20 {lab=vout}
N 290 0 290 20 {lab=vout}
N 90 70 90 100 {lab=vcm}
N 50 100 90 100 {lab=vcm}
N -240 170 -240 240 {lab=#net8}
C {sg13g2_pr/sg13_lv_nmos.sym} 30 100 0 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 -30 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 100 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 30 -30 0 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -110 -30 0 1 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 270 -30 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -150 100 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 310 100 0 1 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -220 270 0 1 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 60 270 0 0 {name=M11
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -220 380 0 1 {name=M10
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 60 380 0 0 {name=M12
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -220 100 0 0 {name=p1 lab=inp}
C {ipin.sym} 100 -120 0 0 {name=p2 lab=vdd}
C {ipin.sym} 380 100 2 0 {name=p3 lab=inm}
C {gnd.sym} -60 150 0 0 {name=l5 lab=GND}
C {gnd.sym} 220 150 0 0 {name=l1 lab=GND}
C {gnd.sym} -70 320 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 350 20 0 0 {name=p5 lab=vout}
C {ipin.sym} 90 70 0 0 {name=p4 lab=vcm}
C {ipin.sym} -240 170 0 0 {name=p6 lab=ibias}
