v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {non-inv
} 1010 -690 0 0 0.4 0.4 {}
T {inv
} 1010 -640 0 0 0.4 0.4 {}
N 520 -300 520 -280 {
lab=GND}
N 600 -300 600 -280 {
lab=GND}
N 600 -380 600 -360 {
lab=v_ss}
N 700 -510 700 -380 {
lab=v_ss}
N 600 -380 700 -380 {
lab=v_ss}
N 700 -660 700 -570 {
lab=v_in}
N 700 -660 1140 -660 {
lab=v_in}
N 1820 -860 1820 -820 {
lab=v_out}
N 1440 -930 1500 -930 {
lab=gate_p}
N 1360 -880 1360 -840 {
lab=gate_p}
N 1360 -880 1440 -880 {
lab=gate_p}
N 1360 -900 1360 -880 {
lab=gate_p}
N 1440 -930 1440 -880 {
lab=gate_p}
N 1440 -470 1440 -380 {
lab=v_ss}
N 1440 -500 1500 -500 {
lab=v_ss}
N 1500 -500 1500 -380 {
lab=v_ss}
N 1440 -380 1500 -380 {
lab=v_ss}
N 1360 -1080 1360 -960 {
lab=v_dd}
N 1360 -1080 1540 -1080 {
lab=v_dd}
N 1540 -1080 1540 -960 {
lab=v_dd}
N 1540 -930 1600 -930 {
lab=v_dd}
N 1600 -1080 1600 -930 {
lab=v_dd}
N 1540 -1080 1600 -1080 {
lab=v_dd}
N 1300 -930 1360 -930 {
lab=v_dd}
N 1300 -1080 1300 -930 {
lab=v_dd}
N 1300 -1080 1360 -1080 {
lab=v_dd}
N 1500 -810 1540 -810 {
lab=v_ss}
N 1540 -860 1540 -840 {
lab=v_out}
N 1360 -780 1360 -740 {
lab=#net1}
N 1440 -740 1540 -740 {
lab=#net1}
N 1540 -780 1540 -740 {
lab=#net1}
N 1360 -810 1500 -810 {
lab=v_ss}
N 1360 -740 1440 -740 {
lab=#net1}
N 1500 -810 1500 -500 {
lab=v_ss}
N 1440 -740 1440 -530 {
lab=#net1}
N 1400 -930 1440 -930 {
lab=gate_p}
N 1540 -900 1540 -860 {
lab=v_out}
N 1090 -380 1440 -380 {
lab=v_ss}
N 1140 -720 1140 -660 {lab=v_in}
N 1140 -720 1240 -720 {lab=v_in}
N 1240 -810 1240 -720 {lab=v_in}
N 1240 -810 1320 -810 {lab=v_in}
N 1820 -760 1820 -720 {lab=v_ss}
N 1090 -1080 1300 -1080 {lab=v_dd}
N 520 -1080 520 -360 {lab=v_dd}
N 1160 -500 1400 -500 {lab=#net2}
N 1160 -560 1160 -500 {lab=#net2}
N 1130 -500 1160 -500 {lab=#net2}
N 1090 -560 1160 -560 {lab=#net2}
N 1090 -560 1090 -530 {lab=#net2}
N 1090 -750 1090 -560 {lab=#net2}
N 1090 -470 1090 -380 {lab=v_ss}
N 1020 -380 1090 -380 {
lab=v_ss}
N 1020 -500 1090 -500 {lab=v_ss}
N 1020 -500 1020 -380 {lab=v_ss}
N 700 -380 1020 -380 {
lab=v_ss}
N 1580 -810 1620 -810 {lab=#net3}
N 1540 -860 1820 -860 {lab=v_out}
N 1620 -810 1620 -610 {lab=#net3}
N 970 -610 1620 -610 {lab=#net3}
N 1090 -1080 1090 -810 {lab=v_dd}
N 520 -1080 1090 -1080 {lab=v_dd}
C {devices/code_shown.sym} 0 -100 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 0 -750 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write ota-5t_tb-ac.raw
set appendwrite

ac dec 101 1k 100MEG
write ota-5t_tb-ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/vsource.sym} 520 -330 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 520 -280 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 500 -160 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 740 -160 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {lab_pin.sym} 520 -380 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 600 -330 0 0 {name=Vss value=0}
C {devices/gnd.sym} 600 -280 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 600 -380 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 700 -540 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 760 -660 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1090 -780 0 0 {name=I0 value=20u pwl(0 0 10u 0 11u 20u)"}
C {spice_probe.sym} 970 -660 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1640 -860 0 0 {name=p6 attrs=""}
C {capa.sym} 1820 -790 0 0 {name=C1
value=50f}
C {lab_wire.sym} 1760 -860 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {sg13g2_pr/sg13_lv_nmos.sym} 1420 -500 2 1 {name=M5
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1520 -930 0 0 {name=M4
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1340 -810 2 1 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1560 -810 2 0 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1380 -930 0 1 {name=M3
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 1480 -930 0 0 {name=p13 sig_type=std_logic lab=gate_p}
C {lab_pin.sym} 1820 -720 0 0 {name=p7 sig_type=std_logic lab=v_ss}
C {sg13g2_pr/sg13_lv_nmos.sym} 1110 -500 2 0 {name=M6
l=5u
w=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {spice_probe.sym} 970 -610 0 0 {name=p8 attrs=""}
