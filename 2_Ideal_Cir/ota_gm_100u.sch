v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -610 -360 -570 -360 {lab=vdd}
N -850 -280 -850 -230 {lab=#net1}
N -690 -280 -690 -230 {lab=#net1}
N -850 -280 -790 -280 {lab=#net1}
N -850 -300 -850 -280 {lab=#net1}
N -790 -330 -790 -280 {lab=#net1}
N -750 -280 -690 -280 {lab=#net1}
N -690 -300 -690 -280 {lab=#net1}
N -750 -330 -750 -280 {lab=#net1}
N -790 -330 -750 -330 {lab=#net1}
N -570 -280 -570 -230 {lab=outp}
N -990 -270 -990 -230 {lab=outn}
N -990 -170 -990 -110 {lab=#net2}
N -690 -110 -570 -110 {lab=#net2}
N -570 -170 -570 -110 {lab=#net2}
N -850 -170 -850 -110 {lab=#net2}
N -990 -110 -850 -110 {lab=#net2}
N -690 -170 -690 -110 {lab=#net2}
N -780 -110 -690 -110 {lab=#net2}
N -780 -110 -780 -60 {lab=#net2}
N -850 -110 -780 -110 {lab=#net2}
N -780 0 -780 50 {lab=#net3}
N -1010 -30 -820 -30 {lab=ibias}
N -1100 0 -1100 50 {lab=#net4}
N -1010 80 -820 80 {lab=ibias}
N -770 -200 -730 -200 {lab=cm}
N -1080 -200 -1030 -200 {lab=inp}
N -760 -420 -760 -360 {lab=vdd}
N -530 -200 -480 -200 {lab=inn}
N -990 -200 -920 -200 {lab=GND}
N -920 -200 -920 -150 {lab=GND}
N -920 -200 -850 -200 {lab=GND}
N -640 -200 -570 -200 {lab=GND}
N -640 -200 -640 -150 {lab=GND}
N -690 -200 -640 -200 {lab=GND}
N -1080 -330 -990 -330 {lab=vdd}
N -1080 -390 -1080 -330 {lab=vdd}
N -1080 -390 -930 -390 {lab=vdd}
N -930 -390 -930 -360 {lab=vdd}
N -990 -360 -930 -360 {lab=vdd}
N -880 -360 -760 -360 {lab=vdd}
N -810 -330 -790 -330 {lab=#net1}
N -750 -330 -730 -330 {lab=#net1}
N -950 -330 -950 -310 {lab=#net1}
N -950 -310 -810 -310 {lab=#net1}
N -810 -330 -810 -310 {lab=#net1}
N -730 -330 -730 -310 {lab=#net1}
N -730 -310 -610 -310 {lab=#net1}
N -610 -330 -610 -310 {lab=#net1}
N -690 -330 -660 -330 {lab=vdd}
N -660 -360 -660 -330 {lab=vdd}
N -760 -360 -660 -360 {lab=vdd}
N -880 -330 -850 -330 {lab=vdd}
N -880 -360 -880 -330 {lab=vdd}
N -930 -360 -880 -360 {lab=vdd}
N -780 -30 -700 -30 {lab=GND}
N -700 -30 -700 20 {lab=GND}
N -780 80 -700 80 {lab=GND}
N -700 20 -700 80 {lab=GND}
N -1160 80 -1100 80 {lab=GND}
N -1160 20 -1160 80 {lab=GND}
N -870 20 -700 20 {lab=GND}
N -1160 -30 -1100 -30 {lab=GND}
N -1160 -30 -1160 20 {lab=GND}
N -570 -330 -500 -330 {lab=vdd}
N -500 -390 -500 -330 {lab=vdd}
N -610 -390 -500 -390 {lab=vdd}
N -610 -390 -610 -360 {lab=vdd}
N -660 -360 -610 -360 {lab=vdd}
N -570 -280 -510 -280 {lab=outp}
N -570 -300 -570 -280 {lab=outp}
N -770 -230 -770 -200 {lab=cm}
N -810 -200 -770 -200 {lab=cm}
N -1100 -100 -1100 -60 {lab=ibias}
N -1020 -270 -990 -270 {lab=outn}
N -990 -300 -990 -270 {lab=outn}
N -1100 110 -1020 110 {lab=GND}
N -1020 20 -1020 110 {lab=GND}
N -1160 20 -1020 20 {lab=GND}
N -870 110 -780 110 {lab=GND}
N -870 20 -870 110 {lab=GND}
N -1020 20 -870 20 {lab=GND}
N -1100 -100 -1010 -100 {lab=ibias}
N -1100 -130 -1100 -100 {lab=ibias}
N -1010 -100 -1010 -30 {lab=ibias}
N -1060 -30 -1010 -30 {lab=ibias}
N -1010 -30 -1010 80 {lab=ibias}
N -1060 80 -1010 80 {lab=ibias}
C {sg13g2_pr/sg13_lv_nmos.sym} -830 -200 0 1 {name=M13
l=\{l\}
w=\{w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -710 -330 0 0 {name=M14
l=\{lp\}
w=\{wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -710 -200 0 0 {name=M15
l=\{l\}
w=\{w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -830 -330 0 1 {name=M16
l=\{lp\}
w=\{wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -970 -330 0 1 {name=M17
l=\{lp\}
w=\{wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -590 -330 0 0 {name=M18
l=\{lp\}
w=\{wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1010 -200 0 0 {name=M19
l=\{l\}
w=\{w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -550 -200 0 1 {name=M20
l=\{l\}
w=\{w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1080 -30 0 1 {name=M21
l=\{l\}
w=\{w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -800 -30 0 0 {name=M22
l=\{l\}
w=\{w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1080 80 0 1 {name=M23
l=\{l\}
w=\{w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -800 80 0 0 {name=M24
l=\{l\}
w=\{w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -1080 -200 0 0 {name=p8 lab=inp}
C {ipin.sym} -760 -420 0 0 {name=p9 lab=vdd}
C {ipin.sym} -480 -200 2 0 {name=p10 lab=inn}
C {gnd.sym} -920 -150 0 0 {name=l3 lab=GND}
C {gnd.sym} -640 -150 0 0 {name=l4 lab=GND}
C {gnd.sym} -930 20 0 0 {name=l6 lab=GND}
C {devices/opin.sym} -510 -280 0 0 {name=p11 lab=outp}
C {ipin.sym} -770 -230 0 0 {name=p12 lab=cm}
C {ipin.sym} -1100 -130 0 0 {name=p13 lab=ibias}
C {devices/opin.sym} -1020 -270 2 0 {name=p14 lab=outn}
