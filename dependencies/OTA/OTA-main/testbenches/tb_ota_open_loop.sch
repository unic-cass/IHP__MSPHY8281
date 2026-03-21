v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 310 160 {}
N -280 -300 -250 -300 {lab=bv}
N -280 -230 -250 -230 {lab=ota_vinm}
N -280 -200 -250 -200 {lab=GND}
N -550 -210 -550 -190 {lab=ota_vom}
C {vsource.sym} 0 180 0 0 {name=V2 value=1.6 savecurrent=false}
C {gnd.sym} 0 210 0 0 {name=l3 lab=GND}
C {vdd.sym} -70 -300 1 0 {name=l5 lab=VDD}
C {simulator_commands_shown.sym} -450 130 0 0 {
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
C {vsource.sym} 300 180 0 0 {name=V1 value="dc 0.6 " savecurrent=false}
C {gnd.sym} 300 210 0 0 {name=l1 lab=GND}
C {vdd.sym} 0 150 0 0 {name=l6 lab=VDD}
C {lab_pin.sym} -280 -230 0 0 {name=p2 sig_type=std_logic lab=ota_vinm}
C {gnd.sym} -280 -200 1 0 {name=l7 lab=GND}
C {gnd.sym} 410 210 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 410 150 2 0 {name=p6 sig_type=std_logic lab=bv}
C {lab_pin.sym} -280 -300 0 0 {name=p7 sig_type=std_logic lab=bv}
C {lab_pin.sym} -70 -270 2 0 {name=p8 sig_type=std_logic lab=ota_vom}
C {lab_pin.sym} -70 -230 2 0 {name=p9 sig_type=std_logic lab=ota_vop}
C {lab_pin.sym} -70 -200 2 0 {name=p10 sig_type=std_logic lab=VCM_REF}
C {isource.sym} 410 180 0 0 {name=I0 value=1e-6}
C {lab_pin.sym} 300 150 1 0 {name=p4 sig_type=std_logic lab=VCM_REF}
C {vsource.sym} 560 190 0 0 {name=V5 value="dc 0.8" savecurrent=false}
C {gnd.sym} 560 220 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 560 160 1 0 {name=p12 sig_type=std_logic lab=VICM_REF}
C {vcvs.sym} 350 410 0 0 {name=E1 value=1}
C {lab_pin.sym} 310 390 2 1 {name=p15 sig_type=std_logic lab=ota_vop}
C {lab_pin.sym} 310 430 2 1 {name=p16 sig_type=std_logic lab=ota_vom}
C {gnd.sym} 350 440 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 350 380 3 1 {name=p17 sig_type=std_logic lab=out_diff}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Differntial_ended_symbol_making.sym} -160 -130 1 0 {name=x1}
C {lab_pin.sym} -160 -130 2 0 {name=p11 sig_type=std_logic lab=VICM_REF}
C {gnd.sym} 230 -150 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 230 -210 2 1 {name=p14 sig_type=std_logic lab=ota_vinp
}
C {lab_pin.sym} -250 -270 0 0 {name=p5 sig_type=std_logic lab=ota_vinp}
C {gnd.sym} -710 -130 0 0 {name=l2 lab=GND}
C {gnd.sym} -550 -130 0 0 {name=l10 lab=GND}
C {sg13g2_pr/cap_cmim.sym} -550 -160 0 1 {name=C1
model=cap_cmim
w=7e-6
l=7e-6
m=14
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -710 -160 0 1 {name=C2
model=cap_cmim
w=7e-6
l=7e-6
m=14
spiceprefix=X}
C {lab_pin.sym} -710 -190 2 0 {name=p13 sig_type=std_logic lab=ota_vop}
C {lab_pin.sym} -550 -210 2 0 {name=p1 sig_type=std_logic lab=ota_vom}
C {gnd.sym} 540 -150 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 540 -210 2 1 {name=p3 sig_type=std_logic lab=ota_vinm
}
C {code_shown.sym} -840 170 0 0 {name=s2 only_toplevel=false 

value="


.ac dec 10 100 10e8
*.save all
*.op
*.tran 1n 1u
*.noise v(out_diff) v3 dec 10 1 10e9
*.plot v(out_diff) v(ota_vom) v(ota_vop)


"}
C {vsource.sym} 230 -180 0 0 {name=V3 value="dc 0.8 ac 0 " savecurrent=false}
C {vsource.sym} 540 -180 0 0 {name=V4 value="dc 0.8 ac 1 " savecurrent=false}
