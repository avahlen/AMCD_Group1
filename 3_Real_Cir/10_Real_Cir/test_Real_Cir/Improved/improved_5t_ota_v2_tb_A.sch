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
m = 1
R = 56k5} 1210 -650 0 0 0.3 0.3 {}
T {non-inv
} 1510 -690 0 0 0.4 0.4 {}
T {inv
} 1840 -670 0 0 0.4 0.4 {}
T {1.45 < 1.5(nom) < 1.55V} 1420 -940 0 0 0.4 0.4 {}
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
N 880 -910 880 -330 {lab=v_dd}
N 1430 -420 1480 -420 {lab=v_ss}
N 1430 -420 1430 -350 {lab=v_ss}
N 1480 -390 1480 -350 {lab=v_ss}
N 1710 -470 1710 -350 {lab=v_ss}
N 1710 -500 1760 -500 {lab=v_ss}
N 1610 -610 1610 -550 {lab=#net1}
N 1610 -640 1760 -640 {lab=v_ss}
N 1950 -790 1950 -640 {lab=v_out}
N 1950 -820 1990 -820 {lab=v_dd}
N 1990 -420 1990 -350 {lab=v_ss}
N 1950 -390 1950 -350 {lab=v_ss}
N 1950 -420 1990 -420 {lab=v_ss}
N 1770 -820 1810 -820 {lab=v_dd}
N 1440 -820 1480 -820 {lab=v_dd}
N 1610 -820 1650 -820 {lab=v_dd}
N 1300 -500 1350 -500 {lab=v_ss}
N 1300 -500 1300 -350 {lab=v_ss}
N 1350 -470 1350 -350 {lab=v_ss}
N 1760 -640 1810 -640 {lab=v_ss}
N 1760 -500 1760 -350 {lab=v_ss}
N 1480 -910 1480 -850 {lab=v_dd}
N 1550 -820 1570 -820 {lab=#net2}
N 1550 -820 1550 -770 {lab=#net2}
N 1520 -820 1550 -820 {lab=#net2}
N 1550 -770 1610 -770 {lab=#net2}
N 1610 -790 1610 -770 {lab=#net2}
N 1610 -770 1610 -670 {lab=#net2}
N 1710 -550 1810 -550 {lab=#net1}
N 1810 -610 1810 -550 {lab=#net1}
N 1710 -550 1710 -530 {lab=#net1}
N 1610 -550 1710 -550 {lab=#net1}
N 1810 -770 1810 -670 {lab=#net3}
N 1810 -910 1810 -850 {lab=v_dd}
N 1850 -820 1880 -820 {lab=#net3}
N 1880 -820 1880 -770 {lab=#net3}
N 1810 -770 1880 -770 {lab=#net3}
N 1810 -790 1810 -770 {lab=#net3}
N 1880 -820 1910 -820 {lab=#net3}
N 1950 -910 1950 -850 {lab=v_dd}
N 1950 -590 1950 -450 {lab=v_out}
N 1550 -420 1910 -420 {lab=#net4}
N 1550 -470 1550 -420 {lab=#net4}
N 1520 -420 1550 -420 {lab=#net4}
N 1480 -470 1550 -470 {lab=#net4}
N 1480 -470 1480 -450 {lab=#net4}
N 1480 -790 1480 -470 {lab=#net4}
N 1410 -500 1670 -500 {lab=#net5}
N 1410 -550 1410 -500 {lab=#net5}
N 1390 -500 1410 -500 {lab=#net5}
N 1350 -550 1410 -550 {lab=#net5}
N 1350 -550 1350 -530 {lab=#net5}
N 1760 -350 1950 -350 {lab=v_ss}
N 1430 -350 1480 -350 {lab=v_ss}
N 1810 -910 1950 -910 {lab=v_dd}
N 1440 -910 1480 -910 {lab=v_dd}
N 1770 -910 1810 -910 {lab=v_dd}
N 1850 -640 1950 -640 {lab=v_out}
N 1950 -590 2120 -590 {lab=v_out}
N 1950 -640 1950 -590 {lab=v_out}
N 1480 -350 1710 -350 {lab=v_ss}
N 1350 -610 1350 -550 {lab=#net5}
N 1350 -910 1350 -670 {lab=v_dd}
N 2120 -590 2140 -590 {lab=v_out}
N 2120 -510 2120 -490 {lab=v_ss}
N 2120 -590 2120 -570 {lab=v_out}
N 1060 -660 1060 -540 {lab=v_in}
N 1240 -700 1240 -660 {lab=v_in}
N 1240 -700 1500 -700 {lab=v_in}
N 1500 -700 1500 -640 {lab=v_in}
N 1500 -640 1570 -640 {lab=v_in}
N 1610 -910 1610 -850 {lab=v_dd}
N 1480 -910 1610 -910 {lab=v_dd}
N 880 -910 1350 -910 {lab=v_dd}
N 1060 -660 1240 -660 {lab=v_in}
N 1300 -350 1350 -350 {lab=v_ss}
N 1440 -910 1440 -820 {lab=v_dd}
N 1350 -910 1440 -910 {lab=v_dd}
N 1650 -910 1650 -820 {lab=v_dd}
N 1610 -910 1650 -910 {lab=v_dd}
N 1770 -910 1770 -820 {lab=v_dd}
N 1650 -910 1770 -910 {lab=v_dd}
N 1990 -910 1990 -820 {lab=v_dd}
N 1950 -910 1990 -910 {lab=v_dd}
N 1710 -350 1760 -350 {lab=v_ss}
N 1760 -640 1760 -500 {lab=v_ss}
N 1950 -350 1990 -350 {lab=v_ss}
N 1350 -350 1430 -350 {lab=v_ss}
N 1060 -350 1300 -350 {lab=v_ss}
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
C {lab_wire.sym} 1140 -660 0 0 {name=p9 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1170 -660 0 0 {name=p10 attrs=""}
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
C {sg13g2_pr/sg13_lv_pmos.sym} 1830 -820 0 1 {name=M11
l=5u
w=7.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1590 -820 0 0 {name=M12
l=5u
w=7.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1690 -500 2 1 {name=M13
l=5u
w=3.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1500 -420 2 0 {name=M16
l=5u
w=7.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1590 -640 2 1 {name=M5
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1930 -420 2 1 {name=M15
l=5u
w=7.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1500 -820 0 1 {name=M18
l=5u
w=15u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1370 -500 2 0 {name=M14
l=5u
w=17.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1830 -640 2 0 {name=M10
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {spice_probe.sym} 2010 -590 0 0 {name=p4 attrs=""}
C {isource.sym} 1350 -640 0 0 {name=I1 value=20u}
C {ipin.sym} 2140 -590 2 0 {name=p16 lab=v_out
}
C {sg13g2_pr/cap_cmim.sym} 2120 -540 0 0 {name=C3
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {lab_pin.sym} 2120 -490 0 0 {name=p17 sig_type=std_logic lab=v_ss}
C {sg13g2_pr/sg13_lv_pmos.sym} 1930 -820 0 0 {name=M1
l=5u
w=7.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
