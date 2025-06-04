v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -120 250 -120 {lab=ggd}
N 110 -50 200 -50 {lab=ggd}
N 110 -90 110 -50 {lab=ggd}
N 200 -120 200 -50 {lab=ggd}
N 150 -120 200 -120 {lab=ggd}
N 290 -50 290 -10 {lab=v_out}
N 110 -200 110 -150 {lab=v_dd}
N 290 -200 290 -150 {lab=v_dd}
N 110 -200 290 -200 {lab=v_dd}
N 40 20 70 20 {lab=in+}
N 290 -50 370 -50 {lab=v_out}
N 290 -90 290 -50 {lab=v_out}
N 290 50 290 80 {lab=ssd}
N 110 50 110 80 {lab=ssd}
N 200 80 200 100 {lab=ssd}
N 200 80 290 80 {lab=ssd}
N 110 80 200 80 {lab=ssd}
N 50 -200 110 -200 {lab=v_dd}
N 200 160 200 190 {lab=v_ss}
N 330 20 370 20 {lab=in-}
N 110 -50 110 -10 {lab=ggd}
N 200 20 290 20 {lab=ssd}
N 200 20 200 80 {lab=ssd}
N 110 20 200 20 {lab=ssd}
N 290 -120 360 -120 {lab=v_dd}
N 360 -200 360 -120 {lab=v_dd}
N 290 -200 360 -200 {lab=v_dd}
N 50 -120 110 -120 {lab=v_dd}
N 50 -200 50 -120 {lab=v_dd}
N 40 -200 50 -200 {lab=v_dd}
N 200 130 310 130 {lab=v_ss}
N 310 130 310 190 {lab=v_ss}
N 200 190 310 190 {lab=v_ss}
N -80 190 200 190 {lab=v_ss}
N -40 130 160 130 {lab=#net1}
N -80 160 -80 190 {lab=v_ss}
N -170 190 -80 190 {lab=v_ss}
N -170 130 -80 130 {lab=v_ss}
N -170 130 -170 190 {lab=v_ss}
N -210 190 -170 190 {lab=v_ss}
N -80 50 -80 100 {lab=i_bias}
C {ipin.sym} 40 20 0 0 {name=p1 lab=in+
}
C {ipin.sym} 370 20 2 0 {name=p2 lab=in-
}
C {ipin.sym} -210 190 0 0 {name=p3 lab=v_ss
}
C {ipin.sym} 40 -200 0 0 {name=p4 lab=v_dd

}
C {ipin.sym} -80 50 1 0 {name=p5 lab=i_bias}
C {opin.sym} 370 -50 0 0 {name=p6 lab=v_out}
C {sg13g2_pr/sg13_hv_nmos.sym} 90 20 0 0 {name=M3
l=5u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 310 20 0 1 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 180 130 0 0 {name=M4
l=5u
w=0.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 130 -120 0 1 {name=M5
l=5u
w=1.5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 270 -120 0 0 {name=M1
l=5u
w=1.5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_wire.sym} 190 -50 0 0 {name=p17 sig_type=std_logic lab=ggd}
C {lab_wire.sym} 200 80 0 0 {name=p7 sig_type=std_logic lab=ssd}
C {sg13g2_pr/sg13_hv_nmos.sym} -60 130 0 1 {name=M6
l=5u
w=2.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
