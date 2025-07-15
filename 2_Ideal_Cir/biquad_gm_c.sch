v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 490 140 500 140 {lab=vcm}
N 260 110 320 170 {lab=#net1}
N 340 170 360 170 {lab=#net1}
N 340 110 360 110 {lab=#net2}
N 520 60 520 110 {lab=#net2}
N 490 110 520 110 {lab=#net2}
N 340 60 520 60 {lab=#net2}
N 340 60 340 110 {lab=#net2}
N 340 170 340 220 {lab=#net1}
N 330 170 340 170 {lab=#net1}
N 340 220 520 220 {lab=#net1}
N 520 170 520 220 {lab=#net1}
N 490 170 520 170 {lab=#net1}
N 330 110 340 110 {lab=#net2}
N 260 170 320 110 {lab=#net2}
N 220 110 260 110 {lab=#net1}
N 220 170 260 170 {lab=#net2}
N 80 170 90 170 {lab=vinp}
N 80 110 90 110 {lab=vinn}
N 220 140 230 140 {lab=vcm}
N 30 -250 30 -230 {lab=vinp}
N 160 -250 160 -230 {lab=vinn}
N 280 -250 280 -230 {lab=vcm}
N 80 60 120 60 {lab=vinn}
N 80 60 80 110 {lab=vinn}
N 70 110 80 110 {lab=vinn}
N 70 170 80 170 {lab=vinp}
N 180 60 330 60 {lab=#net2}
N 330 60 330 110 {lab=#net2}
N 320 110 330 110 {lab=#net2}
N 330 170 330 220 {lab=#net1}
N 320 170 330 170 {lab=#net1}
N 80 220 120 220 {lab=vinp}
N 80 170 80 220 {lab=vinp}
N 1030 140 1110 140 {lab=vcm}
N 800 110 860 170 {lab=outn}
N 870 170 900 170 {lab=outn}
N 1060 170 1060 320 {lab=#net1}
N 870 110 900 110 {lab=outp}
N 800 170 860 110 {lab=outp}
N 760 110 800 110 {lab=outn}
N 760 170 800 170 {lab=outp}
N 870 60 960 60 {lab=outp}
N 620 170 630 170 {lab=#net2}
N 620 110 630 110 {lab=#net1}
N 760 140 770 140 {lab=vcm}
N 620 60 660 60 {lab=#net1}
N 620 60 620 110 {lab=#net1}
N 720 60 870 60 {lab=outp}
N 870 60 870 110 {lab=outp}
N 860 110 870 110 {lab=outp}
N 720 220 870 220 {lab=outn}
N 870 170 870 220 {lab=outn}
N 860 170 870 170 {lab=outn}
N 620 220 660 220 {lab=#net2}
N 620 170 620 220 {lab=#net2}
N 1060 -50 1060 110 {lab=#net2}
N 330 -50 1060 -50 {lab=#net2}
N 330 -50 330 60 {lab=#net2}
N 180 220 330 220 {lab=#net1}
N 330 220 330 320 {lab=#net1}
N 330 320 1060 320 {lab=#net1}
N 870 220 960 220 {lab=outn}
N 420 -230 420 -200 {lab=vdd}
N 420 -230 450 -230 {lab=vdd}
N 420 -370 450 -370 {lab=ibias}
N 420 -370 420 -330 {lab=ibias}
N 420 -270 420 -230 {lab=vdd}
N 430 200 470 200 {lab=ibias}
N 970 200 1020 200 {lab=ibias}
N 700 200 760 200 {lab=ibias}
N 160 200 210 200 {lab=ibias}
N 210 190 210 200 {lab=ibias}
N 160 80 200 80 {lab=vdd}
N 430 80 470 80 {lab=vdd}
N 700 80 740 80 {lab=vdd}
N 740 70 740 80 {lab=vdd}
N 970 80 1020 80 {lab=vdd}
N 520 110 570 170 {lab=#net2}
N 570 170 620 170 {lab=#net2}
N 520 170 570 110 {lab=#net1}
N 570 110 620 110 {lab=#net1}
N 1030 170 1060 110 {lab=#net2}
N 1030 110 1060 170 {lab=#net1}
C {2_Ideal_Cir/ota_gm_100u.sym} 170 140 0 0 {name=x1}
C {ota_gm_100u.sym} 440 140 0 0 {name=x2}
C {capa.sym} 570 200 0 0 {name=C1
m=1
value=\{c\}
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 30 -200 0 0 {name=Vinp value="DC 0.5 AC 0.5"}
C {gnd.sym} 30 -170 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 70 110 0 0 {name=p5 sig_type=std_logic lab=vinn
}
C {lab_wire.sym} 70 170 0 0 {name=p7 sig_type=std_logic lab=vinp}
C {lab_wire.sym} 230 140 0 1 {name=p9 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 500 140 0 1 {name=p10 sig_type=std_logic lab=vcm}
C {vsource.sym} 160 -200 0 0 {name=Vinn value="DC 0.5 AC -0.5"}
C {gnd.sym} 160 -170 0 0 {name=l4 lab=GND}
C {vsource.sym} 280 -200 0 0 {name=Vcm value=0.5 savecurrent=false}
C {gnd.sym} 280 -170 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 560 -420 0 0 {name=NGSPICE only_toplevel=true 
value="
.param lp=1u wp=8u l=1u w=3.2u c=20n
.temp 27
.control
option sparse
save all
op
write biquad_gm_c.raw
set appendwrite

ac dec 100 1k 100MEG
write biquad_gm_c.raw
let vod=v(outp)-v(outn)
plot db(v(vod))

.endc
"}
C {launcher.sym} 90 -360 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/launcher.sym} 90 -320 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {opin.sym} 30 -250 0 0 {name=p3 lab=vinp}
C {opin.sym} 160 -250 0 0 {name=p4 lab=vinn}
C {opin.sym} 280 -250 0 0 {name=p6 lab=vcm}
C {gnd.sym} 570 230 0 0 {name=l1 lab=GND}
C {capa.sym} 570 80 2 1 {name=C2
m=1
value=\{c\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 570 50 2 1 {name=l3 lab=GND}
C {capa.sym} 150 220 3 1 {name=C3
m=1
value=\{c\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 150 60 3 0 {name=C4
m=1
value=\{c\}
footprint=1206
device="ceramic capacitor"}
C {ota_gm_100u.sym} 710 140 0 0 {name=x3}
C {ota_gm_100u.sym} 980 140 0 0 {name=x4}
C {capa.sym} 870 250 0 0 {name=C5
m=1
value=\{c\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 960 60 0 1 {name=p8 sig_type=std_logic lab=outp}
C {lab_pin.sym} 960 220 0 1 {name=p11 sig_type=std_logic lab=outn}
C {lab_wire.sym} 770 140 0 1 {name=p14 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 1110 140 0 1 {name=p15 sig_type=std_logic lab=vcm}
C {gnd.sym} 870 280 0 0 {name=l5 lab=GND}
C {capa.sym} 870 30 2 1 {name=C6
m=1
value=\{c\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 870 0 2 1 {name=l7 lab=GND}
C {capa.sym} 690 220 3 1 {name=C7
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 690 60 3 0 {name=C8
m=1
value=\{c\}
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 420 -140 0 0 {name=l8 lab=GND sig_type=std_logic}
C {vsource.sym} 420 -170 0 0 {name=Vdd value=1.5}
C {opin.sym} 450 -230 0 0 {name=p1 lab=vdd}
C {isource.sym} 420 -300 2 0 {name=I0 value=100u}
C {opin.sym} 450 -370 0 0 {name=p17 lab=ibias}
C {lab_wire.sym} 470 200 0 1 {name=p2 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 210 190 0 1 {name=p12 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 760 200 0 1 {name=p13 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 1020 200 0 1 {name=p16 sig_type=std_logic lab=ibias}
C {lab_wire.sym} 200 80 0 1 {name=p18 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 470 80 0 1 {name=p19 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 740 70 0 1 {name=p20 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1020 80 0 1 {name=p21 sig_type=std_logic lab=vdd}
C {devices/code_shown.sym} 890 -350 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
*.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.lib cornerRES.lib res_typ
.lib cornerMOSlv.lib mos_tt
"}
