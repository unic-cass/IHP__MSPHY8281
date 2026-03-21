v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 980 60 {}
N 600 -80 600 -60 {lab=VOP}
N 640 -30 750 -30 {lab=nbias}
N 600 -210 600 -160 {lab=tail}
N 710 -210 790 -210 {lab=tail}
N 790 -210 790 -160 {lab=tail}
N 790 -30 790 0 {lab=GND}
N 600 0 790 0 {lab=GND}
N 710 -240 710 -210 {lab=tail}
N 600 -210 710 -210 {lab=tail}
N 790 -80 790 -60 {lab=VOM}
N 710 -300 710 -270 {lab=VDD}
N 460 -240 500 -240 {lab=pbias}
N 500 -270 500 -240 {lab=pbias}
N 500 -270 670 -270 {lab=pbias}
N 790 -80 940 -80 {lab=VOM}
N 790 -130 790 -80 {lab=VOM}
N 940 -80 940 -70 {lab=VOM}
N 790 0 940 0 {lab=GND}
N 940 -10 940 0 {lab=GND}
N 600 -30 600 0 {lab=GND}
N 460 -300 460 -270 {lab=VDD}
N 450 -80 450 -70 {lab=VOP}
N 450 -10 450 0 {lab=GND}
N 450 -0 600 0 {lab=GND}
N 450 -80 600 -80 {lab=VOP}
N 600 -130 600 -80 {lab=VOP}
N 1160 -80 1160 -60 {lab=#net1}
N 1160 -80 1220 -80 {lab=#net1}
N 1160 -130 1160 -80 {lab=#net1}
N 1220 -80 1220 -30 {lab=#net1}
N 1200 -30 1220 -30 {lab=#net1}
N 1270 -210 1350 -210 {lab=tail_cmfb}
N 1350 -210 1350 -160 {lab=tail_cmfb}
N 1350 -30 1350 0 {lab=GND}
N 1160 0 1350 0 {lab=GND}
N 1270 -240 1270 -210 {lab=tail_cmfb}
N 1270 -300 1270 -270 {lab=VDD}
N 1160 -30 1160 0 {lab=GND}
N 1160 -130 1200 -130 {lab=#net1}
N 1100 -130 1160 -130 {lab=#net1}
N 1150 -190 1200 -190 {lab=tail_cmfb}
N 1150 -210 1270 -210 {lab=tail_cmfb}
N 1150 -210 1150 -190 {lab=tail_cmfb}
N 1100 -190 1150 -190 {lab=tail_cmfb}
N 1390 -160 1430 -160 {lab=VCM_REF}
N 1150 -160 1200 -160 {lab=tail_cmfb}
N 1150 -190 1150 -160 {lab=tail_cmfb}
N 1100 -160 1150 -160 {lab=tail_cmfb}
N 1620 -20 1620 0 {lab=#net2}
N 1620 -110 1620 -80 {lab=nbias}
N 1620 60 1620 80 {lab=GND}
N 1350 -80 1350 -60 {lab=vout}
N 1350 -130 1350 -110 {lab=vout}
N 1565 -110 1620 -110 {lab=nbias}
N 1350 0 1565 0 {lab=GND}
N 1350 -110 1485 -110 {lab=vout}
N 1060 -270 1230 -270 {lab=pbias}
N 1565 -15 1565 -0 {lab=GND}
N 1565 -110 1565 -75 {lab=nbias}
N 1545 -110 1565 -110 {lab=nbias}
N 1280 -30 1310 -30 {lab=vout}
N 1280 -80 1280 -30 {lab=vout}
N 1280 -80 1350 -80 {lab=vout}
N 1350 -110 1350 -80 {lab=vout}
C {vsource.sym} 1090 150 0 0 {name=V2 value=1.6 savecurrent=false}
C {vsource.sym} 1180 150 0 0 {name=V3 value="dc 0.8 ac 1" savecurrent=false}
C {vsource.sym} 1300 140 0 0 {name=V4 value="dc 0.8 ac 0" savecurrent=false}
C {gnd.sym} 1300 170 0 0 {name=l2 lab=GND}
C {gnd.sym} 1090 180 0 0 {name=l3 lab=GND}
C {gnd.sym} 1180 180 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 1180 120 0 0 {name=p3 sig_type=std_logic lab=v2}
C {lab_pin.sym} 1300 110 2 0 {name=p4 sig_type=std_logic lab=v1}
C {vdd.sym} 1090 120 0 0 {name=l5 lab=VDD}
C {simulator_commands_shown.sym} 720 100 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"
      }
C {code.sym} 480 90 0 0 {name=s1 only_toplevel=false value="


.ac dec 10 100 10e8
*.save all
*.op

"}
C {sg13g2_pr/sg13_hv_nmos.sym} 620 -30 0 1 {name=M7
l=2u
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 580 -160 0 0 {name=M8
l=1u
w=9u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 770 -30 0 0 {name=M9
l=2u
w=4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 810 -160 0 1 {name=M10
l=1u
w=9u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 690 -270 0 0 {name=M11
l=1u
w=4u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {gnd.sym} 710 0 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 560 -160 0 0 {name=p9 sig_type=std_logic lab=v2}
C {lab_pin.sym} 830 -160 2 0 {name=p10 sig_type=std_logic lab=v1}
C {vdd.sym} 710 -300 0 0 {name=l10 lab=VDD}
C {lab_pin.sym} 790 -100 2 0 {name=p11 sig_type=std_logic lab=VOM}
C {sg13g2_pr/sg13_hv_pmos.sym} 480 -270 0 1 {name=M12
l=1u
w=4u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {vdd.sym} 460 -300 0 0 {name=l11 lab=VDD}
C {gnd.sym} 460 -180 0 0 {name=l12 lab=GND}
C {isource.sym} 460 -210 0 0 {name=I1 value=1u
}
C {lab_pin.sym} 690 -210 3 0 {name=p12 sig_type=std_logic lab=tail}
C {lab_pin.sym} 600 -270 0 0 {name=p13 sig_type=std_logic lab=pbias
}
C {capa.sym} 940 -40 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 720 -30 0 0 {name=p14 sig_type=std_logic lab=nbias}
C {lab_pin.sym} 600 -100 2 1 {name=p15 sig_type=std_logic lab=VOP
}
C {capa.sym} 450 -40 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sg13g2_pr/sg13_hv_nmos.sym} 1180 -30 0 1 {name=M6
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1080 -160 0 0 {name=M13
l=0.5u
w=2.25u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1330 -30 0 0 {name=M14
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1370 -160 0 1 {name=M15
l=0.5u
w=4.5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1250 -270 0 0 {name=M16
l=1u
w=4u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {gnd.sym} 1270 0 0 0 {name=l7 lab=GND}
C {vdd.sym} 1270 -300 0 0 {name=l8 lab=VDD}
C {lab_pin.sym} 1270 -210 0 0 {name=p19 sig_type=std_logic lab=tail_cmfb}
C {lab_pin.sym} 1160 -270 0 0 {name=p20 sig_type=std_logic lab=pbias
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1220 -160 0 1 {name=M17
l=0.5u
w=2.25u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1240 -160 2 0 {name=p16 sig_type=std_logic lab=VOM}
C {lab_pin.sym} 1060 -160 2 1 {name=p17 sig_type=std_logic lab=VOP
}
C {vsource.sym} 1430 140 0 0 {name=V1 value="dc 0.6 ac 0" savecurrent=false}
C {gnd.sym} 1430 170 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1430 110 2 0 {name=p1 sig_type=std_logic lab=VCM_REF}
C {lab_pin.sym} 1390 -160 2 0 {name=p2 sig_type=std_logic lab=VCM_REF}
C {capa-2.sym} 1620 -50 0 0 {name=C1
m=1
value=1e12
footprint=1206
device=polarized_capacitor}
C {vsource.sym} 1620 30 0 0 {name=V5 value="dc 0 ac 1" savecurrent=false}
C {lab_pin.sym} 1620 -110 2 0 {name=p5 sig_type=std_logic lab=nbias}
C {gnd.sym} 1620 80 0 0 {name=l13 lab=GND}
C {ind.sym} 1515 -110 1 0 {name=L14
m=1
value=1e12
footprint=1206
device=inductor}
C {capa.sym} 1565 -45 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1370 -110 2 0 {name=p6 sig_type=std_logic lab=vout}
