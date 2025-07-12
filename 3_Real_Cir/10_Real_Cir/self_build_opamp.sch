v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -120 250 -120 {lab=v_imirror}
N 110 -50 200 -50 {lab=v_imirror}
N 110 -90 110 -50 {lab=v_imirror}
N 200 -120 200 -50 {lab=v_imirror}
N 150 -120 200 -120 {lab=v_imirror}
N 290 -50 290 -10 {lab=v_out}
N 110 -200 110 -150 {lab=VDD}
N 290 -200 290 -150 {lab=VDD}
N 110 -200 290 -200 {lab=VDD}
N -200 20 70 20 {lab=v_in+}
N 290 -50 370 -50 {lab=v_out}
N 290 -90 290 -50 {lab=v_out}
N 290 50 290 80 {lab=v_amp}
N 110 50 110 80 {lab=v_amp}
N 200 80 200 100 {lab=v_amp}
N 200 80 290 80 {lab=v_amp}
N 110 80 200 80 {lab=v_amp}
N 50 -200 110 -200 {lab=VDD}
N 200 160 200 190 {lab=VSS}
N 330 20 370 20 {lab=v_in-}
N 110 -50 110 -10 {lab=v_imirror}
N 200 20 290 20 {lab=v_amp}
N 200 20 200 80 {lab=v_amp}
N 110 20 200 20 {lab=v_amp}
N 290 -120 360 -120 {lab=VDD}
N 360 -200 360 -120 {lab=VDD}
N 290 -200 360 -200 {lab=VDD}
N 50 -120 110 -120 {lab=VDD}
N 50 -200 50 -120 {lab=VDD}
N -200 -200 50 -200 {lab=VDD}
N 200 130 310 130 {lab=VSS}
N 310 130 310 190 {lab=VSS}
N 200 190 310 190 {lab=VSS}
N 10 130 160 130 {lab=i_bias}
N -70 80 -70 100 {lab=i_bias}
N 10 80 10 130 {lab=i_bias}
N -30 130 10 130 {lab=i_bias}
N -70 80 10 80 {lab=i_bias}
N -70 190 200 190 {lab=VSS}
N -70 160 -70 190 {lab=VSS}
N -170 130 -70 130 {lab=VSS}
N -170 130 -170 190 {lab=VSS}
N -200 190 -170 190 {lab=VSS}
N -170 190 -70 190 {lab=VSS}
N -200 80 -70 80 {lab=i_bias}
C {ipin.sym} -200 20 0 0 {name=p1 lab=v_in+
}
C {ipin.sym} 370 20 2 0 {name=p2 lab=v_in-
}
C {opin.sym} 370 -50 0 0 {name=p6 lab=v_out}
C {lab_wire.sym} 190 -50 0 0 {name=p17 sig_type=std_logic lab=v_imirror}
C {lab_wire.sym} 200 80 0 0 {name=p7 sig_type=std_logic lab=v_amp}
C {iopin.sym} -200 -200 2 0 {name=p8 lab=VDD
}
C {iopin.sym} -200 190 2 0 {name=p4 lab=VSS
}
C {ipin.sym} -200 80 0 0 {name=p5 lab=i_bias}
C {sg13g2_pr/sg13_lv_pmos.sym} 270 -120 0 0 {name=M7
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 130 -120 0 1 {name=M1
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 90 20 0 0 {name=M8
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 310 20 0 1 {name=M3
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 130 0 0 {name=M2
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -50 130 0 1 {name=M4
l=5u
w=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
