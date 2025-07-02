v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 420 -250 420 -230 {
lab=GND}
N 420 -330 420 -310 {lab=VDD}
N 550 -250 550 -230 {
lab=i_bias}
N 550 -330 550 -310 {lab=VDD}
N 250 120 250 150 {lab=i_bias}
N 250 150 280 150 {lab=i_bias}
N -40 10 -40 50 {lab=v_in}
N -40 10 110 10 {lab=v_in}
N 190 -80 190 -40 {lab=VDD}
N 190 120 190 150 {lab=GND}
N 60 70 110 70 {lab=v_out}
N 60 70 60 200 {lab=v_out}
N 60 200 360 200 {lab=v_out}
N 360 40 360 200 {lab=v_out}
N 270 40 360 40 {lab=v_out}
C {devices/code_shown.sym} 310 280 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
*.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib cornerRES.lib res_typ
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -130 290 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.5 *per=4.5u
.option method=gear

.control
save all
op
tran 100u 100m
*ac dec 101 1k 10MEG
*wr data nameeeee
write tb_ota_tran_UGbuffer1.txt
plot v(v_out)
plot v(v_in)
.endc
"}
C {devices/gnd.sym} 420 -230 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 420 -280 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} 420 -330 0 0 {name=l16 lab=VDD}
C {devices/vdd.sym} 550 -330 0 0 {name=l2 lab=VDD}
C {isource.sym} 550 -280 0 0 {name=I0 value=20u}
C {ipin.sym} 550 -230 3 0 {name=p3 lab=i_bias}
C {devices/gnd.sym} -40 110 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -40 80 0 0 {name=Vdd1 value="PULSE (0 1.2 10m 1u 1u 20m40m 2)"
* PULSE ( initali volt, on voltage, delay, rise time, fall time, pulse widht, periode, number of pulses)}
C {3_Real_Cir/10_Real_Cir/self_build_opamp.sym} 190 40 0 0 {name=x2}
C {ipin.sym} 280 150 2 0 {name=p1 lab=i_bias}
C {devices/vdd.sym} 190 -80 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 190 150 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 350 40 0 0 {name=p17 sig_type=std_logic lab=v_out}
C {lab_wire.sym} 10 10 0 0 {name=p2 sig_type=std_logic lab=v_in}
