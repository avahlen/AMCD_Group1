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
N 1150 -630 1300 -630 {
lab=v_out}
N 600 -380 700 -380 {
lab=v_ss}
N 700 -600 700 -380 {
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
N 890 -380 1050 -380 {
lab=v_ss}
N 1090 -550 1090 -460 {
lab=v_ena}
N 700 -600 750 -600 {lab=v_ss}
N 700 -660 700 -600 {
lab=v_ss}
N 890 -600 970 -600 {lab=#net2}
N 890 -600 890 -590 {lab=#net2}
N 810 -600 890 -600 {lab=#net2}
N 890 -530 890 -490 {lab=#net3}
N 890 -430 890 -380 {lab=v_ss}
N 700 -380 890 -380 {
lab=v_ss}
C {devices/code_shown.sym} 0 -100 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 0 -750 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
*set filetype=ascii
option sparse
save all
*op
*write stability_integrator.raw
set appendwrite

ac dec 101 1 100MEG
let phase=180/PI*vp(v_out)
write stability_integrator.raw
write stability_integrator.csv v_out phase
*plot 20*log10(v_out)
plot phase
plot 20*log10(v_out)


*meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
*let f3db = dcgain/sqrt(2)
*meas ac fbw WHEN vmag(v_out)=f3db FALL=1
*let gainerror=(dcgain-1)/1
*print dcgain
*print fbw
*print gainerror

*noise v(v_out) Vin dec 101 1k 100MEG
*print onoise_total

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
C {devices/lab_wire.sym} 760 -660 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/isource.sym} 1090 -780 0 0 {name=I0 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/vsource.sym} 1090 -430 0 0 {name=Venable value=1.5 savecurrent=false}
C {devices/spice_probe.sym} 820 -660 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 1180 -630 0 0 {name=p6 attrs=""}
C {devices/spice_probe.sym} 1090 -470 0 0 {name=p7 attrs=""}
C {devices/lab_wire.sym} 1090 -530 0 0 {name=p8 sig_type=std_logic lab=v_ena}
C {devices/code_shown.sym} 0 -190 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value=".include [file rootname [xschem get schname]].save
"}
C {res.sym} 780 -600 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 890 -460 0 0 {name=V2 value="AC 1"}
C {capa.sym} 890 -560 0 0 {name=C1
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
