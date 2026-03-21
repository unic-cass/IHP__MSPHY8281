v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -20 20 0 {lab=GND}
N 20 -120 20 -80 {lab=PHI1}
N 20 160 20 180 {lab=GND}
N 20 60 20 100 {lab=PHI2}
N 300 -20 300 0 {lab=GND}
N 300 -120 300 -80 {lab=PHI3}
N 300 160 300 180 {lab=GND}
N 300 60 300 100 {lab=PHI4}
N 1170 -290 1220 -290 {lab=PHI1}
N 1170 -270 1220 -270 {lab=vinp}
N 1170 -250 1220 -250 {lab=PHI2}
N 1170 -230 1220 -230 {lab=vinm}
N 1170 -210 1220 -210 {lab=PHI3}
N 1170 -190 1220 -190 {lab=vop}
N 1170 -170 1220 -170 {lab=PHI4}
N 1170 -150 1220 -150 {lab=vom}
N 1170 -130 1290 -130 {lab=GND}
N 1170 -110 1220 -110 {lab=bv}
N 1170 -90 1220 -90 {lab=VICM_REF}
N 1170 -70 1220 -70 {lab=VCM_REF}
N 1170 -50 1220 -50 {lab=VDD}
C {vsource.sym} 20 -50 0 0 {name=V1 value="pulse(0 1.6 \{delay_phi1\} 10p 10p \{width\} \{Tch\})" savecurrent=false}
C {gnd.sym} 20 0 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 0 -370 0 0 {name=NGSPICE only_toplevel=true 
value="
.param Tch=10u Fin=1k
.param delay_phi1=0 delay_phi2=\{Tch/2\} width=\{Tch/2-0.5u\}
*.op
.tran 10u \{4/Fin\} \{2/Fin\}
.control
run
plot v(PHI1) v(PHI2)v(PHI3) v(PHI4)
plot  v(vop,vom) 
.endc
"}
C {devices/lab_pin.sym} 20 -120 2 0 {name=p3 sig_type=std_logic lab=PHI1
}
C {vsource.sym} 20 130 0 0 {name=V2 value="pulse(0 1.6 \{delay_phi2\} 10p 10p \{width\} \{Tch\})" savecurrent=false}
C {gnd.sym} 20 180 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 20 60 2 0 {name=p1 sig_type=std_logic lab=PHI2
}
C {vsource.sym} 300 -50 0 0 {name=V3 value="pulse(0 1.6 \{delay_phi1+1u\} 10p 10p \{width-2u\} \{Tch\})" savecurrent=false}
C {gnd.sym} 300 0 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 300 -120 2 0 {name=p2 sig_type=std_logic lab=PHI3
}
C {vsource.sym} 300 130 0 0 {name=V4 value="pulse(0 1.6 \{delay_phi2+1u\} 10p 10p \{width-2u\} \{Tch\})" savecurrent=false}
C {gnd.sym} 300 180 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 300 60 2 0 {name=p4 sig_type=std_logic lab=PHI4
}
C {vsource.sym} 690 140 0 0 {name=V5 value=1.6 savecurrent=false}
C {gnd.sym} 690 170 0 0 {name=l4 lab=GND}
C {vsource.sym} 1020 140 0 0 {name=V8 value="dc 0.6 " savecurrent=false}
C {gnd.sym} 1020 170 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1020 110 2 0 {name=p7 sig_type=std_logic lab=VCM_REF}
C {lab_pin.sym} 690 110 0 0 {name=p8 sig_type=std_logic lab=VDD
}
C {vsource.sym} 1150 140 0 0 {name=V9 value="dc 0.8 " savecurrent=false}
C {gnd.sym} 1150 170 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 1150 110 2 0 {name=p9 sig_type=std_logic lab=VICM_REF}
C {gnd.sym} 1280 170 0 0 {name=l12 lab=GND}
C {isource.sym} 1280 140 0 0 {name=I1 value=1u
}
C {lab_pin.sym} 1280 110 2 0 {name=p10 sig_type=std_logic lab=bv}
C {lab_pin.sym} 1220 -50 0 1 {name=p11 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 1220 -70 2 0 {name=p12 sig_type=std_logic lab=VCM_REF}
C {lab_pin.sym} 1220 -90 2 0 {name=p13 sig_type=std_logic lab=VICM_REF}
C {lab_pin.sym} 1220 -110 2 0 {name=p14 sig_type=std_logic lab=bv}
C {gnd.sym} 1290 -130 3 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 1220 -170 2 0 {name=p15 sig_type=std_logic lab=PHI4
}
C {devices/lab_pin.sym} 1220 -210 2 0 {name=p16 sig_type=std_logic lab=PHI3
}
C {lab_pin.sym} 1220 -230 2 0 {name=p17 sig_type=std_logic lab=vinm}
C {devices/lab_pin.sym} 1220 -250 2 0 {name=p18 sig_type=std_logic lab=PHI2
}
C {lab_pin.sym} 1220 -270 0 1 {name=p19 sig_type=std_logic lab=vinp
}
C {devices/lab_pin.sym} 1220 -290 2 0 {name=p20 sig_type=std_logic lab=PHI1
}
C {simulator_commands_shown.sym} 0 -560 0 0 {
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
C {devices/lab_pin.sym} 1220 -190 2 0 {name=p21 sig_type=std_logic lab=vop
}
C {devices/lab_pin.sym} 1220 -150 2 0 {name=p22 sig_type=std_logic lab=vom
}
C {/home/designer/shared/unicass_2026/Design_Files/UNI-CASS_Project_2025_IIT_DH/imp_boost_tech.sym} 1020 -170 0 0 {name=x1}
C {lab_pin.sym} 740 330 1 0 {name=p23 sig_type=std_logic lab=vinp
}
C {lab_pin.sym} 1060 320 1 0 {name=p24 sig_type=std_logic lab=vinm
}
C {gnd.sym} 740 390 0 0 {name=l11 lab=GND}
C {gnd.sym} 1060 380 0 0 {name=l13 lab=GND}
C {vsource.sym} 740 360 0 0 {name=V6 value="sin(0.8 5m \{Fin\}) " savecurrent=false}
C {vsource.sym} 1060 350 0 0 {name=V7 value="dc 0.8 " savecurrent=false}
