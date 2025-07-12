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
T {non-inv
} 510 -450 0 0 0.4 0.4 {}
T {inv
} 840 -430 0 0 0.4 0.4 {}
T {1.45 < 1.5(nom) < 1.55V} 420 -700 0 0 0.4 0.4 {}
N 430 -180 480 -180 {lab=vss}
N 430 -180 430 -130 {lab=vss}
N 430 -130 480 -130 {lab=vss}
N 480 -150 480 -130 {lab=vss}
N 750 -260 750 -210 {lab=vss}
N 710 -230 710 -210 {lab=vss}
N 710 -260 750 -260 {lab=vss}
N 710 -210 750 -210 {lab=vss}
N 650 -400 650 -350 {lab=#net3}
N 610 -370 610 -350 {lab=#net3}
N 610 -400 650 -400 {lab=#net3}
N 610 -350 650 -350 {lab=#net3}
N 990 -580 990 -530 {lab=ivout}
N 950 -550 950 -530 {lab=ivout}
N 950 -580 990 -580 {lab=ivout}
N 950 -530 990 -530 {lab=ivout}
N 990 -180 990 -130 {lab=vss}
N 950 -150 950 -130 {lab=vss}
N 950 -180 990 -180 {lab=vss}
N 950 -130 990 -130 {lab=vss}
N 770 -580 810 -580 {lab=vdd}
N 770 -630 770 -580 {lab=vdd}
N 770 -630 810 -630 {lab=vdd}
N 810 -630 810 -610 {lab=vdd}
N 440 -580 480 -580 {lab=vdd}
N 440 -630 440 -580 {lab=vdd}
N 440 -630 480 -630 {lab=vdd}
N 480 -630 480 -610 {lab=vdd}
N 650 -630 650 -580 {lab=vdd}
N 610 -630 610 -610 {lab=vdd}
N 610 -630 650 -630 {lab=vdd}
N 610 -580 650 -580 {lab=vdd}
N 300 -260 350 -260 {lab=vss}
N 300 -260 300 -210 {lab=vss}
N 300 -210 350 -210 {lab=vss}
N 350 -230 350 -210 {lab=vss}
N 760 -400 810 -400 {lab=#net3}
N 760 -400 760 -350 {lab=#net3}
N 760 -350 810 -350 {lab=#net3}
N 480 -670 480 -630 {lab=vdd}
N 650 -670 650 -630 {lab=vdd}
N 550 -580 570 -580 {lab=#net4}
N 550 -580 550 -530 {lab=#net4}
N 520 -580 550 -580 {lab=#net4}
N 550 -530 610 -530 {lab=#net4}
N 610 -550 610 -530 {lab=#net4}
N 610 -530 610 -430 {lab=#net4}
N 610 -350 610 -310 {lab=#net3}
N 710 -310 810 -310 {lab=#net3}
N 810 -350 810 -310 {lab=#net3}
N 810 -370 810 -350 {lab=#net3}
N 710 -310 710 -290 {lab=#net3}
N 610 -310 710 -310 {lab=#net3}
N 810 -530 810 -430 {lab=#net5}
N 810 -670 810 -630 {lab=vdd}
N 850 -580 880 -580 {lab=#net5}
N 880 -580 880 -530 {lab=#net5}
N 810 -530 880 -530 {lab=#net5}
N 810 -550 810 -530 {lab=#net5}
N 880 -580 910 -580 {lab=#net5}
N 950 -670 950 -610 {lab=vdd}
N 950 -350 950 -210 {lab=ivout}
N 550 -180 910 -180 {lab=#net6}
N 550 -230 550 -180 {lab=#net6}
N 520 -180 550 -180 {lab=#net6}
N 480 -230 550 -230 {lab=#net6}
N 480 -230 480 -210 {lab=#net6}
N 480 -550 480 -230 {lab=#net6}
N 410 -260 670 -260 {lab=#net7}
N 410 -310 410 -260 {lab=#net7}
N 390 -260 410 -260 {lab=#net7}
N 350 -310 410 -310 {lab=#net7}
N 350 -310 350 -290 {lab=#net7}
N 350 -210 350 -110 {lab=vss}
N 480 -130 480 -110 {lab=vss}
N 950 -130 950 -110 {lab=vss}
N 710 -110 950 -110 {lab=vss}
N 350 -110 480 -110 {lab=vss}
N 810 -670 950 -670 {lab=vdd}
N 350 -670 480 -670 {lab=vdd}
N 480 -670 650 -670 {lab=vdd}
N 650 -670 810 -670 {lab=vdd}
N 850 -400 890 -400 {lab=vinn}
N 950 -350 1030 -350 {lab=ivout}
N 950 -530 950 -350 {lab=ivout}
N 710 -210 710 -110 {lab=vss}
N 480 -110 710 -110 {lab=vss}
N 550 -400 570 -400 {lab=vinp}
N 350 -370 350 -310 {lab=#net7}
N 350 -670 350 -430 {lab=vdd}
N 330 -670 350 -670 {lab=vdd}
N 330 -110 350 -110 {lab=vss}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Copyright 2024 IHP PDK Authors"}
C {sg13g2_pr/sg13_lv_pmos.sym} 830 -580 0 1 {name=M11
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 590 -580 0 0 {name=M12
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 690 -260 2 1 {name=M13
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 500 -180 2 0 {name=M16
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 590 -400 2 1 {name=M9
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 930 -580 2 1 {name=M17
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 930 -180 2 1 {name=M15
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 500 -580 0 1 {name=M18
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 370 -260 2 0 {name=M14
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 830 -400 2 0 {name=M10
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 1030 -350 2 0 {name=p7 lab=ivout
}
C {spice_probe.sym} 1010 -350 0 0 {name=p9 attrs=""}
C {iopin.sym} 330 -670 0 1 {name=p10 lab=vdd}
C {ipin.sym} 550 -400 0 0 {name=p11 lab=vinp}
C {ipin.sym} 890 -400 2 0 {name=p12 lab=vinn}
C {isource.sym} 350 -400 0 0 {name=I1 value=20u pwl(0 0 10u 0 11u 20u)"}
C {iopin.sym} 330 -110 0 1 {name=p14 lab=vss}
