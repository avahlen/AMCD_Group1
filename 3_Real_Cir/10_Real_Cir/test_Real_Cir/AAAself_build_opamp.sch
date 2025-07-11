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
N 110 -200 110 -150 {lab=VDD}
N 290 -200 290 -150 {lab=VDD}
N 110 -200 290 -200 {lab=VDD}
N 290 50 290 80 {lab=v_amp}
N 110 50 110 80 {lab=v_amp}
N 200 80 200 100 {lab=v_amp}
N 240 80 290 80 {lab=v_amp}
N 160 80 200 80 {lab=v_amp}
N 50 -200 110 -200 {lab=VDD}
N 200 160 200 190 {lab=VSS}
N 110 -50 110 -10 {lab=v_imirror}
N 240 20 290 20 {lab=v_amp}
N 290 -120 360 -120 {lab=VDD}
N 360 -200 360 -120 {lab=VDD}
N 290 -200 360 -200 {lab=VDD}
N 50 -120 110 -120 {lab=VDD}
N 50 -200 50 -120 {lab=VDD}
N -200 -200 50 -200 {lab=VDD}
N 200 130 310 130 {lab=VSS}
N 310 130 310 190 {lab=VSS}
N 200 190 310 190 {lab=VSS}
N -70 80 -70 100 {lab=i_bias}
N -70 190 200 190 {lab=VSS}
N -70 160 -70 190 {lab=VSS}
N -140 190 -70 190 {lab=VSS}
N 530 -110 530 -90 {
lab=GND}
N 530 -190 530 -170 {lab=VDD}
N 620 -110 620 -90 {
lab=i_bias}
N 620 -190 620 -170 {lab=VDD}
N -200 80 -70 80 {lab=i_bias}
N 240 20 240 80 {lab=v_amp}
N 200 80 240 80 {lab=v_amp}
N 160 20 160 80 {lab=v_amp}
N 110 20 160 20 {lab=v_amp}
N 110 80 160 80 {lab=v_amp}
N 40 130 160 130 {lab=i_bias}
N -70 80 40 80 {lab=i_bias}
N 40 80 40 130 {lab=i_bias}
N -30 130 40 130 {lab=i_bias}
N -140 130 -70 130 {lab=VSS}
N -140 130 -140 190 {lab=VSS}
N -200 190 -140 190 {lab=VSS}
N 710 -100 710 -80 {
lab=GND}
N 710 -180 710 -160 {lab=v_inp}
N 290 -30 290 -10 {lab=v_inm}
N 290 -90 290 -30 {lab=v_inm}
N 340 -30 360 -30 {lab=v_inm}
N 340 20 370 20 {lab=v_inm}
N 340 -30 340 20 {lab=v_inm}
N 290 -30 340 -30 {lab=v_inm}
N 330 20 340 20 {lab=v_inm}
N -200 20 70 20 {lab=v_inp}
C {ipin.sym} -200 20 0 0 {name=p1 lab=v_inp
}
C {ipin.sym} 370 20 2 0 {name=p2 lab=v_inm
}
C {lab_wire.sym} 190 -50 0 0 {name=p17 sig_type=std_logic lab=v_imirror}
C {lab_wire.sym} 220 80 0 0 {name=p7 sig_type=std_logic lab=v_amp}
C {iopin.sym} -200 -200 2 0 {name=p8 lab=VDD
}
C {iopin.sym} -200 190 2 0 {name=p4 lab=VSS
}
C {ipin.sym} -200 80 0 0 {name=p5 lab=i_bias}
C {devices/code_shown.sym} 310 280 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
*.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib cornerRES.lib res_typ
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -130 280 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.5 *per=4.5u
.option method=gear

.control
save all
op
*tran 100p 500n
ac dec 101 1k 10MEG
*wr data nameeeee
plot db(v(v_out))
.endc
"}
C {devices/gnd.sym} 530 -90 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 530 -140 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} 530 -190 0 0 {name=l16 lab=VDD}
C {devices/vdd.sym} 620 -190 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -200 190 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 10 -200 0 0 {name=l4 lab=VDD}
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
C {sg13g2_pr/sg13_lv_pmos.sym} 270 -120 0 0 {name=M6
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
C {isource.sym} 620 -140 0 0 {name=I0 value=20u}
C {ipin.sym} 620 -90 3 0 {name=p3 lab=i_bias}
C {devices/gnd.sym} 710 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 710 -130 0 0 {name=Vdd1 value="dc 0.6 ac 1"}
C {ipin.sym} 710 -180 1 0 {name=p9 lab=v_inp
}
C {lab_wire.sym} -150 20 0 0 {name=p10 sig_type=std_logic lab=v_inp}
C {opin.sym} 360 -30 0 0 {name=p11 lab=v_out}
C {lab_wire.sym} 340 -30 0 0 {name=p6 sig_type=std_logic lab=v_out}
