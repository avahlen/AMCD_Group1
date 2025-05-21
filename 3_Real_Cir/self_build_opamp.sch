v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -120 250 -120 {lab=#net1}
N 110 -50 110 -10 {lab=#net1}
N 110 -50 200 -50 {lab=#net1}
N 110 -90 110 -50 {lab=#net1}
N 200 -120 200 -50 {lab=#net1}
N 150 -120 200 -120 {lab=#net1}
N 290 -50 290 -10 {lab=v_out}
N 110 -200 110 -150 {lab=v_dd}
N 290 -200 290 -150 {lab=v_dd}
N 110 -200 290 -200 {lab=v_dd}
N 40 20 70 20 {lab=in_+}
N 330 20 380 20 {lab=in_-}
N 290 -50 370 -50 {lab=v_out}
N 290 -90 290 -50 {lab=v_out}
N 290 50 290 80 {lab=#net2}
N 110 50 110 80 {lab=#net2}
N 200 80 200 100 {lab=#net2}
N 200 80 290 80 {lab=#net2}
N 110 80 200 80 {lab=#net2}
N 40 -200 110 -200 {lab=v_dd}
N 40 130 160 130 {lab=i_bias}
N 40 190 200 190 {lab=v_ss}
N 200 160 200 190 {lab=v_ss}
C {ipin.sym} 40 20 0 0 {name=p1 lab=in_+
}
C {ipin.sym} 370 20 2 0 {name=p2 lab=in_-
}
C {ipin.sym} 40 190 0 0 {name=p3 lab=v_ss
}
C {ipin.sym} 40 -200 0 0 {name=p4 lab=v_dd

}
C {nmos.sym} 310 20 0 1 {name=M2 model=M2N7002 device=2N7002 footprint=SOT23 m=1}
C {nmos.sym} 90 20 0 0 {name=M4 model=M2N7002 device=2N7002 footprint=SOT23 m=1}
C {nmos.sym} 180 130 0 0 {name=M5 model=M2N7002 device=2N7002 footprint=SOT23 m=1}
C {ipin.sym} 40 130 0 0 {name=p5 lab=i_bias}
C {opin.sym} 370 -50 0 0 {name=p6 lab=v_out}
C {pmos.sym} 130 -120 0 1 {name=M6 
model=DMP2035U 
device=DMP2035U 
m=1}
C {pmos.sym} 270 -120 0 0 {name=M1 
model=DMP2035U 
device=DMP2035U 
m=1}
