v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 150 130 {}
N -440 -330 -410 -330 {lab=bv}
N -440 -260 -410 -260 {lab=ota_vinm}
N -440 -230 -410 -230 {lab=GND}
N -1060 -370 -1060 -350 {lab=ota_vom}
N -790 -350 -670 -350 {lab=ota_vinp}
N -790 -230 -670 -230 {lab=ota_vinm}
N -880 -350 -850 -350 {lab=inp}
N -880 -230 -850 -230 {lab=inm}
C {vsource.sym} -160 150 0 0 {name=V2 value=1.6 savecurrent=false}
C {gnd.sym} -160 180 0 0 {name=l3 lab=GND}
C {vdd.sym} -230 -330 1 0 {name=l5 lab=VDD}
C {simulator_commands_shown.sym} -610 100 0 0 {
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
C {vsource.sym} 140 150 0 0 {name=V1 value="dc 0.6 " savecurrent=false}
C {gnd.sym} 140 180 0 0 {name=l1 lab=GND}
C {vdd.sym} -160 120 0 0 {name=l6 lab=VDD}
C {lab_pin.sym} -440 -260 0 0 {name=p2 sig_type=std_logic lab=ota_vinm}
C {gnd.sym} -440 -230 1 0 {name=l7 lab=GND}
C {gnd.sym} 250 180 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 250 120 2 0 {name=p6 sig_type=std_logic lab=bv}
C {lab_pin.sym} -440 -330 0 0 {name=p7 sig_type=std_logic lab=bv}
C {lab_pin.sym} -230 -300 2 0 {name=p8 sig_type=std_logic lab=ota_vom}
C {lab_pin.sym} -230 -260 2 0 {name=p9 sig_type=std_logic lab=ota_vop}
C {lab_pin.sym} -230 -230 2 0 {name=p10 sig_type=std_logic lab=VCM_REF}
C {isource.sym} 250 150 0 0 {name=I0 value=1e-6}
C {lab_pin.sym} 140 120 1 0 {name=p4 sig_type=std_logic lab=VCM_REF}
C {vsource.sym} 400 160 0 0 {name=V5 value="dc 0.8" savecurrent=false}
C {gnd.sym} 400 190 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 400 130 1 0 {name=p12 sig_type=std_logic lab=VICM_REF}
C {vcvs.sym} 190 380 0 0 {name=E1 value=1}
C {lab_pin.sym} 150 360 2 1 {name=p15 sig_type=std_logic lab=ota_vop}
C {lab_pin.sym} 150 400 2 1 {name=p16 sig_type=std_logic lab=ota_vom}
C {gnd.sym} 190 410 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 190 350 3 1 {name=p17 sig_type=std_logic lab=out_diff}
C {/home/designer/shared/uni_cass/final_Design_file/Differntial_ended_symbol_making.sym} -320 -160 1 0 {name=x1}
C {lab_pin.sym} -320 -160 2 0 {name=p11 sig_type=std_logic lab=VICM_REF}
C {vsource_arith.sym} 70 -210 0 0 {name=E3 VOL="0.001*cos(2*pi*1e3*time)"}
C {gnd.sym} 70 -180 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 70 -240 2 1 {name=p14 sig_type=std_logic lab=inm
}
C {lab_pin.sym} -410 -300 0 0 {name=p5 sig_type=std_logic lab=ota_vinp}
C {gnd.sym} -1220 -290 0 0 {name=l2 lab=GND}
C {gnd.sym} -1060 -290 0 0 {name=l10 lab=GND}
C {sg13g2_pr/cap_cmim.sym} -1060 -320 0 1 {name=C1
model=cap_cmim
w=7e-6
l=7e-6
m=14
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -1220 -320 0 1 {name=C2
model=cap_cmim
w=7e-6
l=7e-6
m=14
spiceprefix=X}
C {lab_pin.sym} -1220 -350 2 0 {name=p13 sig_type=std_logic lab=ota_vop}
C {lab_pin.sym} -1060 -370 2 0 {name=p1 sig_type=std_logic lab=ota_vom}
C {lab_pin.sym} -720 -350 1 0 {name=p18 sig_type=std_logic lab=ota_vinp
}
C {lab_pin.sym} -720 -230 1 0 {name=p19 sig_type=std_logic lab=ota_vinm
}
C {lab_pin.sym} -610 -230 2 0 {name=p20 sig_type=std_logic lab=ota_vom}
C {lab_pin.sym} -610 -350 2 0 {name=p21 sig_type=std_logic lab=ota_vop}
C {lab_pin.sym} -880 -350 1 0 {name=p22 sig_type=std_logic lab=inp
}
C {lab_pin.sym} -870 -230 1 0 {name=p23 sig_type=std_logic lab=inm
}
C {vsource_arith.sym} 380 -210 0 0 {name=E2 VOL="-0.001*cos(2*pi*1e3*time)"}
C {gnd.sym} 380 -180 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 380 -240 2 1 {name=p3 sig_type=std_logic lab=inp
}
C {capa.sym} -820 -350 3 0 {name=C3
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -820 -230 3 0 {name=C4
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -640 -350 3 0 {name=C5
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -640 -230 3 0 {name=C6
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {code_shown.sym} -1000 140 0 0 {name=s2 only_toplevel=false 

value="

.control
run
*.ac dec 10 100 10e8
*.save all
*.op
tran 1u 20e-3 
*.noise v(out_diff) v3 dec 10 1 10e9
plot v(out_diff) v(ota_vom) v(ota_vop)
.endc

"}
