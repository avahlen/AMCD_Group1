v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 520 -300 520 -280 {
lab=GND}
N 600 -300 600 -280 {
lab=GND}
N 600 -380 600 -360 {
lab=v_ss}
N 1090 -380 1300 -380 {
lab=v_ss}
N 1050 -550 1050 -380 {
lab=v_ss}
N 1300 -530 1300 -380 {
lab=v_ss}
N 1300 -630 1300 -590 {
lab=v_out}
N 1220 -630 1300 -630 {
lab=v_out}
N 1220 -750 1220 -630 {
lab=v_out}
N 1150 -630 1220 -630 {
lab=v_out}
N 900 -750 1220 -750 {
lab=v_out}
N 900 -750 900 -660 {
lab=v_out}
N 900 -660 970 -660 {
lab=v_out}
N 700 -510 700 -380 {
lab=v_ss}
N 600 -380 700 -380 {
lab=v_ss}
N 700 -600 700 -570 {
lab=v_in}
N 700 -600 970 -600 {
lab=v_in}
N 1090 -860 1090 -840 {
lab=v_dd}
N 1050 -860 1090 -860 {
lab=v_dd}
N 1090 -400 1090 -380 {
lab=v_ss}
N 1050 -380 1090 -380 {
lab=v_ss}
N 700 -380 1050 -380 {
lab=v_ss}
N 1090 -550 1090 -460 {
lab=v_ena}
N 1090 -780 1090 -710 {lab=#net1}
N 1050 -860 1050 -710 {lab=v_dd}
N 520 -860 1050 -860 {
lab=v_dd}
N 520 -860 520 -360 {lab=v_dd}
C {devices/code_shown.sym} 0 -750 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27

.ic v(v_out)=0
.option method=gear

.control
tran 0.005u 15u uic
plot v_ena v_out

let vout_limit=0.8*0.99
meas tran tcross WHEN v(v_out)=vout_limit
let vena_limit=0.5*1.5
meas tran tstart WHEN v(v_ena)=vena_limit
let tsettle=tcross-tstart
print tsettle

.endc
"}
C {devices/vsource.sym} 520 -330 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 520 -280 0 0 {name=l3 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="(c) 2024-2025 H. Pretl, Apache-2.0 license"}
C {devices/launcher.sym} 500 -160 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 740 -160 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_pin.sym} 520 -380 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {ota-improved.sym} 1050 -630 0 0 {name=xota}
C {devices/vsource.sym} 600 -330 0 0 {name=Vss value=0}
C {devices/gnd.sym} 600 -280 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 600 -380 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/capa.sym} 1300 -560 0 0 {name=C1
value=50f}
C {devices/lab_wire.sym} 1300 -630 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 700 -540 0 0 {name=Vin value=0.8}
C {devices/lab_wire.sym} 700 -600 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/isource.sym} 1090 -810 0 0 {name=I0 value="dc 0 pwl(0 0 1.1u 0 1.2u 5u)"}
C {devices/vsource.sym} 1090 -430 0 0 {name=Venable value="dc 0 pwl(0 0 1u 0 1.1u 1.5)" savecurrent=false}
C {devices/spice_probe.sym} 780 -600 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 1180 -630 0 0 {name=p6 attrs=""}
C {devices/spice_probe.sym} 1090 -470 0 0 {name=p7 attrs=""}
C {devices/lab_wire.sym} 1090 -530 0 0 {name=p8 sig_type=std_logic lab=v_ena}
C {devices/code_shown.sym} 0 -170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
