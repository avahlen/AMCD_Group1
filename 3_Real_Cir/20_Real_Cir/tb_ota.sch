v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 530 -110 530 -90 {
lab=GND}
N 530 -190 530 -170 {lab=VDD}
N 620 -110 620 -90 {
lab=i_bias}
N 620 -190 620 -170 {lab=VDD}
N 710 -100 710 -80 {
lab=GND}
N 710 -180 710 -160 {lab=v_inp}
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
C {isource.sym} 620 -140 0 0 {name=I0 value=20u}
C {ipin.sym} 620 -90 3 0 {name=p3 lab=i_bias}
C {devices/gnd.sym} 710 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 710 -130 0 0 {name=Vdd1 value="dc 0.6 ac 1"}
C {ipin.sym} 710 -180 1 0 {name=p9 lab=v_inp
}
