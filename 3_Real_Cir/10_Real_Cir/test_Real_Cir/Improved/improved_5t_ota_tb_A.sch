v {xschem version=3.4.6 file_version=1.2
* Copyright 2023 IHP PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
T {rhigh
w/l = 0.5u/19u
b = 0
m = 1} 1200 -630 0 0 0.4 0.4 {}
T {1.45 < 1.5(nom) < 1.55V} 1520 -1090 0 0 0.4 0.4 {}
T {4uA} 1610 -340 0 0 0.4 0.4 {}
T {~0.38V} 1590 -720 2 1 0.3 0.3 {}
T {~0.78V} 1590 -830 2 1 0.3 0.3 {}
T {non-inv
} 1430 -810 0 0 0.4 0.4 {}
T {inv
} 1750 -820 0 0 0.4 0.4 {}
N 880 -270 880 -250 {
lab=GND}
N 960 -270 960 -250 {
lab=GND}
N 960 -350 960 -330 {
lab=v_ss}
N 1060 -480 1060 -350 {
lab=v_ss}
N 960 -350 1060 -350 {
lab=v_ss}
N 880 -1050 880 -330 {lab=v_dd}
N 1060 -780 1060 -540 {lab=v_in}
N 1060 -350 1400 -350 {lab=v_ss}
N 1630 -900 1690 -900 {
lab=gate_p}
N 1550 -850 1550 -810 {
lab=gate_p}
N 1550 -850 1630 -850 {
lab=gate_p}
N 1550 -870 1550 -850 {
lab=gate_p}
N 1630 -900 1630 -850 {
lab=gate_p}
N 1630 -440 1630 -350 {
lab=v_ss}
N 1630 -470 1690 -470 {
lab=v_ss}
N 1630 -350 1690 -350 {
lab=v_ss}
N 1550 -1050 1550 -930 {
lab=v_dd}
N 1550 -1050 1730 -1050 {
lab=v_dd}
N 1730 -1050 1730 -930 {
lab=v_dd}
N 1730 -900 1790 -900 {
lab=v_dd}
N 1790 -1050 1790 -900 {
lab=v_dd}
N 1730 -1050 1790 -1050 {
lab=v_dd}
N 1490 -900 1550 -900 {
lab=v_dd}
N 1490 -1050 1490 -900 {
lab=v_dd}
N 1550 -750 1550 -710 {
lab=#net1}
N 1660 -710 1730 -710 {
lab=#net1}
N 1730 -750 1730 -710 {
lab=#net1}
N 1660 -780 1730 -780 {
lab=#net1}
N 1550 -710 1630 -710 {
lab=#net1}
N 1630 -710 1630 -500 {
lab=#net1}
N 1590 -900 1630 -900 {
lab=gate_p}
N 1730 -840 1730 -810 {
lab=#net2}
N 1470 -350 1630 -350 {
lab=v_ss}
N 1570 -470 1590 -470 {lab=#net3}
N 1540 -520 1540 -470 {lab=#net3}
N 1470 -520 1540 -520 {lab=#net3}
N 1470 -520 1470 -500 {lab=#net3}
N 1470 -440 1470 -350 {lab=v_ss}
N 1400 -470 1400 -350 {lab=v_ss}
N 1400 -350 1470 -350 {
lab=v_ss}
N 1490 -1050 1550 -1050 {lab=v_dd}
N 1470 -560 1470 -520 {lab=#net3}
N 1470 -660 1470 -620 {lab=v_dd}
N 1410 -660 1470 -660 {lab=v_dd}
N 1730 -870 1730 -840 {
lab=#net2}
N 2100 -1050 2100 -870 {lab=v_dd}
N 1790 -1050 2100 -1050 {lab=v_dd}
N 1690 -350 2100 -350 {lab=v_ss}
N 1690 -470 1690 -350 {
lab=v_ss}
N 2280 -780 2300 -780 {lab=v_out}
N 2100 -810 2100 -780 {lab=v_out}
N 1570 -520 1570 -470 {lab=#net3}
N 1540 -470 1570 -470 {lab=#net3}
N 1570 -520 1930 -520 {lab=#net3}
N 1930 -660 1930 -520 {lab=#net3}
N 2100 -720 2100 -690 {lab=v_out}
N 2100 -840 2160 -840 {lab=v_dd}
N 2160 -1050 2160 -840 {lab=v_dd}
N 2100 -1050 2160 -1050 {lab=v_dd}
N 1770 -780 1820 -780 {lab=v_out}
N 1930 -660 2060 -660 {lab=#net3}
N 1990 -840 1990 -810 {lab=#net2}
N 1990 -840 2060 -840 {lab=#net2}
N 1730 -840 1990 -840 {lab=#net2}
N 1990 -750 1990 -720 {lab=v_out}
N 1990 -720 2100 -720 {lab=v_out}
N 2100 -780 2100 -720 {lab=v_out}
N 880 -1050 1490 -1050 {lab=v_dd}
N 1060 -780 1510 -780 {lab=v_in}
N 1820 -720 1990 -720 {lab=v_out}
N 1820 -780 1820 -720 {lab=v_out}
N 1820 -780 1830 -780 {lab=v_out}
N 2280 -780 2280 -760 {lab=v_out}
N 2100 -780 2280 -780 {lab=v_out}
N 2280 -700 2280 -680 {lab=v_ss}
N 2100 -660 2160 -660 {lab=v_ss}
N 2100 -630 2100 -350 {lab=v_ss}
N 2160 -660 2160 -350 {lab=v_ss}
N 2100 -350 2160 -350 {lab=v_ss}
N 1660 -780 1660 -710 {lab=#net1}
N 1550 -780 1660 -780 {
lab=#net1}
N 1630 -710 1660 -710 {
lab=#net1}
N 1510 -470 1540 -470 {lab=#net3}
N 1400 -470 1470 -470 {lab=v_ss}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Copyright 2024 IHP PDK Authors"}
C {devices/code_shown.sym} 20 -930 0 0 {name=NGSPICE only_toplevel=true 
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

.title Mein Schwein pfeift

plot 20*log10(v_out) xlabel notimeforcaution ylabel atten(ua)tion/gain

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
C {devices/vsource.sym} 880 -300 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 880 -250 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 510 -130 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 750 -130 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {lab_pin.sym} 880 -350 0 0 {name=p3 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 960 -300 0 0 {name=Vss value=0}
C {devices/gnd.sym} 960 -250 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 960 -350 0 0 {name=p7 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 1060 -510 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 1140 -780 0 0 {name=p9 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1170 -780 0 0 {name=p10 attrs=""}
C {devices/code_shown.sym} 20 -360 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 20 -270 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {spice_probe.sym} 2260 -780 0 0 {name=p6 attrs=""}
C {sg13g2_pr/sg13_lv_nmos.sym} 1610 -470 2 1 {name=M1
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1710 -900 0 0 {name=M4
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1530 -780 2 1 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1750 -780 2 0 {name=M3
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1570 -900 0 1 {name=M6
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 1670 -900 0 0 {name=p13 sig_type=std_logic lab=gate_p}
C {sg13g2_pr/sg13_lv_nmos.sym} 1490 -470 2 0 {name=M7
l=5u
w=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1440 -660 0 0 {name=p11 sig_type=std_logic lab=v_dd
}
C {sg13g2_pr/sg13_lv_pmos.sym} 2080 -840 0 0 {name=M8
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2080 -660 2 1 {name=M9
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 2300 -780 2 0 {name=p12 lab=v_out
}
C {sg13g2_pr/cap_cmim.sym} 1990 -780 0 0 {name=C1
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {isource.sym} 1470 -590 0 0 {name=I2 value=20u pwl(0 0 10u 0 11u 20u)"}
C {sg13g2_pr/cap_cmim.sym} 2280 -730 0 0 {name=C2
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {lab_pin.sym} 2280 -680 0 0 {name=p1 sig_type=std_logic lab=v_ss}
