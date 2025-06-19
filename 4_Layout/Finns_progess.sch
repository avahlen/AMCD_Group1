v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {4uA} 810 -70 0 0 0.4 0.4 {}
T {0.7 < 0.8(nom) < 0.9V} 490 -480 0 0 0.4 0.4 {}
T {~0.7V} 680 -220 2 1 0.3 0.3 {}
N 470 -170 470 -130 {
lab=ena_n}
N 470 -130 650 -130 {
lab=ena_n}
N 190 -200 190 -180 {lab=ena_n}
N 290 -180 290 -170 {
lab=ena_n}
N 290 -170 470 -170 {lab=ena_n}
N 190 -180 290 -180 {lab=ena_n}
C {sg13g2_pr/sg13_lv_nmos.sym} 670 -130 0 0 {name=M9
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 620 -130 0 0 {name=p8 sig_type=std_logic lab=ena_n}
C {sg13g2_pr/sg13_lv_pmos.sym} 170 -230 0 0 {name=M13
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
