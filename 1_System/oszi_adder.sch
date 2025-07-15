v {xschem version=3.4.6 file_version=1.2}
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
N 1050 -830 1090 -830 {
lab=v_dd}
N 1050 -550 1050 -380 {
lab=v_ss}
N 1220 -630 1300 -630 {
lab=v_out}
N 600 -380 700 -380 {
lab=v_ss}
N 700 -660 970 -660 {
lab=v_ss}
N 1090 -830 1090 -810 {
lab=v_dd}
N 1090 -750 1090 -710 {
lab=#net1}
N 1050 -760 1050 -710 {
lab=v_dd}
N 520 -760 1050 -760 {
lab=v_dd}
N 520 -760 520 -360 {
lab=v_dd}
N 1050 -830 1050 -760 {
lab=v_dd}
N 1090 -400 1090 -380 {
lab=v_ss}
N 1050 -380 1090 -380 {
lab=v_ss}
N 1090 -550 1090 -460 {
lab=v_ena}
N 700 -660 700 -380 {
lab=v_ss}
N 890 -600 970 -600 {lab=#net2}
N 890 -600 890 -590 {lab=#net2}
N 760 -380 1050 -380 {
lab=v_ss}
N 890 -510 1220 -510 {lab=v_out}
N 890 -530 890 -510 {lab=v_out}
N 1220 -630 1220 -510 {lab=v_out}
N 1150 -630 1220 -630 {
lab=v_out}
N 760 -600 760 -490 {lab=v_in}
N 760 -600 790 -600 {lab=v_in}
N 850 -600 890 -600 {lab=#net2}
N 760 -430 760 -380 {lab=v_ss}
N 700 -380 760 -380 {
lab=v_ss}
C {devices/code_shown.sym} 0 -100 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -10 -750 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
*set filetype=acsii
option sparse
save all
op
*write stability_adder.raw
set appendwrite

*ac dec 101 1 100MEG
*let phase=180/PI*vp(v_out)
*write stability_adder.raw
*write stability_adder.csv v_out phase
*plot 20*log10(v_out)
*plot phase
tran 100 0.1u
plot v(v_in) v(v_out)


.endc
"}
C {devices/vsource.sym} 520 -330 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 520 -280 0 0 {name=l3 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="(c) 2024-2025 H. Pretl, Apache-2.0 license"}
C {devices/launcher.sym} 690 -170 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 920 -160 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_pin.sym} 520 -380 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {ota-5t.sym} 1050 -630 0 0 {name=xota}
C {devices/vsource.sym} 600 -330 0 0 {name=Vss value=0}
C {devices/gnd.sym} 600 -280 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 600 -380 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/lab_wire.sym} 1300 -630 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/lab_wire.sym} 760 -600 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/isource.sym} 1090 -780 0 0 {name=I0 value=20u pwl(0 0 5u 0 11u 20u)"}
C {devices/vsource.sym} 1090 -430 0 0 {name=Venable value=1.5 savecurrent=false}
C {devices/spice_probe.sym} 820 -660 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 1180 -630 0 0 {name=p6 attrs=""}
C {devices/spice_probe.sym} 1090 -470 0 0 {name=p7 attrs=""}
C {devices/lab_wire.sym} 1090 -530 0 0 {name=p8 sig_type=std_logic lab=v_ena}
C {res.sym} 820 -600 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 890 -560 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 760 -460 0 0 {name=V2 value="PULSE(0 1 0 0.01u 0.01u 0.5u 1u 10)"}
