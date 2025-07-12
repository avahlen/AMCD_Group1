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
L 7 2140 -730 2140 -60 {}
T {1.45 < 1.5(nom) < 1.55V} 570 -890 0 0 0.4 0.4 {}
T {4uA} 660 -140 0 0 0.4 0.4 {}
T {~0.38V} 640 -520 2 1 0.3 0.3 {}
T {~0.78V} 640 -630 2 1 0.3 0.3 {}
T {non-inv
} 480 -610 0 0 0.4 0.4 {}
T {inv
} 800 -620 0 0 0.4 0.4 {}
N 680 -700 740 -700 {
lab=gate_p}
N 600 -650 600 -610 {
lab=gate_p}
N 600 -650 680 -650 {
lab=gate_p}
N 600 -670 600 -650 {
lab=gate_p}
N 680 -700 680 -650 {
lab=gate_p}
N 680 -240 680 -150 {
lab=vss}
N 680 -270 740 -270 {
lab=vss}
N 680 -150 740 -150 {
lab=vss}
N 600 -850 600 -730 {
lab=vdd}
N 600 -850 780 -850 {
lab=vdd}
N 780 -850 780 -730 {
lab=vdd}
N 780 -700 840 -700 {
lab=vdd}
N 840 -850 840 -700 {
lab=vdd}
N 780 -850 840 -850 {
lab=vdd}
N 540 -700 600 -700 {
lab=vdd}
N 540 -850 540 -700 {
lab=vdd}
N 740 -580 780 -580 {
lab=vss}
N 600 -550 600 -510 {
lab=#net1}
N 680 -510 780 -510 {
lab=#net1}
N 780 -550 780 -510 {
lab=#net1}
N 600 -580 740 -580 {
lab=vss}
N 600 -510 680 -510 {
lab=#net1}
N 740 -580 740 -270 {
lab=vss}
N 680 -510 680 -300 {
lab=#net1}
N 640 -700 680 -700 {
lab=gate_p}
N 780 -640 780 -610 {
lab=#net2}
N 520 -150 680 -150 {
lab=vss}
N 480 -580 560 -580 {lab=vinp}
N 620 -270 640 -270 {lab=vss}
N 590 -320 590 -270 {lab=vss}
N 520 -320 590 -320 {lab=vss}
N 520 -320 520 -300 {lab=vss}
N 520 -240 520 -150 {lab=vss}
N 450 -270 450 -150 {lab=vss}
N 450 -150 520 -150 {
lab=vss}
N 450 -270 590 -270 {lab=vss}
N 540 -850 600 -850 {lab=vdd}
N 480 -850 540 -850 {lab=vdd}
N 520 -360 520 -320 {lab=vss}
N 520 -460 520 -420 {lab=vdd}
N 460 -460 520 -460 {lab=vdd}
N 780 -670 780 -640 {
lab=#net2}
N 1150 -850 1150 -670 {lab=vdd}
N 840 -850 1150 -850 {lab=vdd}
N 740 -150 1150 -150 {lab=vss}
N 740 -270 740 -150 {
lab=vss}
N 1150 -580 1350 -580 {lab=ivout}
N 1150 -610 1150 -580 {lab=ivout}
N 620 -320 620 -270 {lab=vss}
N 590 -270 620 -270 {lab=vss}
N 620 -320 980 -320 {lab=vss}
N 980 -460 980 -320 {lab=vss}
N 1150 -520 1150 -490 {lab=ivout}
N 1150 -640 1210 -640 {lab=vdd}
N 1210 -850 1210 -640 {lab=vdd}
N 1150 -850 1210 -850 {lab=vdd}
N 820 -580 840 -580 {lab=vinn}
N 980 -460 1110 -460 {lab=vss}
N 1150 -430 1150 -150 {lab=vss}
N 1040 -640 1040 -610 {lab=#net2}
N 1040 -640 1110 -640 {lab=#net2}
N 780 -640 1040 -640 {lab=#net2}
N 1040 -550 1040 -520 {lab=ivout}
N 1040 -520 1150 -520 {lab=ivout}
N 1150 -580 1150 -520 {lab=ivout}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Copyright 2024 IHP PDK Authors"}
C {spice_probe.sym} 1310 -580 0 0 {name=p6 attrs=""}
C {sg13g2_pr/sg13_lv_nmos.sym} 660 -270 2 1 {name=M5
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 760 -700 0 0 {name=M4
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 580 -580 2 1 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 800 -580 2 0 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 620 -700 0 1 {name=M3
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 720 -700 0 0 {name=p13 sig_type=std_logic lab=gate_p}
C {sg13g2_pr/sg13_lv_nmos.sym} 540 -270 2 0 {name=M6
l=5u
w=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} 480 -850 0 1 {name=p2 lab=vdd}
C {iopin.sym} 450 -150 0 1 {name=p4 lab=vss}
C {ipin.sym} 480 -580 0 0 {name=p5 lab=vinp}
C {ipin.sym} 840 -580 2 0 {name=p8 lab=vinn}
C {lab_wire.sym} 490 -460 0 0 {name=p1 sig_type=std_logic lab=vdd
}
C {sg13g2_pr/rhigh.sym} 520 -390 0 0 {name=R2
w=0.5e-6
l=19e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1130 -640 0 0 {name=M7
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1130 -460 2 1 {name=M8
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 1350 -580 2 0 {name=p3 lab=ivout
}
C {sg13g2_pr/cap_cmim.sym} 1040 -580 0 0 {name=C1
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
