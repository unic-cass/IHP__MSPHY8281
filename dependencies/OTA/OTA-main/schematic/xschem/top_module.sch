v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 390 120 440 120 {lab=x}
N 390 240 450 240 {lab=y}
N 160 100 160 130 {lab=clk}
N 160 100 270 100 {lab=clk}
N 160 210 160 260 {lab=clk_bar}
N 160 260 270 260 {lab=clk_bar}
N 200 390 250 390 {lab=out1}
N 220 600 270 600 {lab=#net1}
N 390 620 420 620 {lab=phi3}
N 370 410 390 410 {lab=phi4}
N 120 600 140 600 {lab=phi2}
N 100 390 120 390 {lab=phi1}
N 520 120 550 120 {lab=phi1}
N 530 240 560 240 {lab=phi2}
N -400 130 -400 150 {lab=vdd}
N -400 210 -400 240 {lab=gnd}
N -620 330 -620 350 {lab=gnd}
N -620 230 -620 270 {lab=clk}
C {lab_pin.sym} 270 140 0 0 {name=p1 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 270 220 0 0 {name=p2 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 550 120 2 0 {name=p3 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 560 240 0 1 {name=p4 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 250 430 0 0 {name=p5 sig_type=std_logic lab=x}
C {lab_pin.sym} 270 640 0 0 {name=p6 sig_type=std_logic lab=y}
C {lab_pin.sym} 410 120 1 0 {name=p7 sig_type=std_logic lab=x}
C {lab_pin.sym} 410 240 1 0 {name=p8 sig_type=std_logic lab=y}
C {lab_pin.sym} 100 390 2 1 {name=p9 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 120 600 0 0 {name=p10 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 190 100 1 0 {name=p11 sig_type=std_logic lab=clk}
C {lab_pin.sym} 420 620 0 1 {name=p12 sig_type=std_logic lab=phi3}
C {lab_pin.sym} 390 410 0 1 {name=p13 sig_type=std_logic lab=phi4}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/and.sym} 690 620 0 0 {name=x1}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/and.sym} 710 830 0 0 {name=x2}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/nor.sym} 620 280 0 0 {name=x4}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/nor.sym} 620 400 0 0 {name=x6}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/inverter.sym} 180 180 1 0 {name=x7}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/buffer.sym} 290 490 0 0 {name=x8}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/buffer.sym} 310 700 0 0 {name=x9}
C {lab_pin.sym} -400 130 1 0 {name=p15 sig_type=std_logic lab=vdd}
C {vsource.sym} -400 180 0 0 {name=V2 value="1.6" savecurrent=false}
C {gnd.sym} -400 240 0 0 {name=l2 lab=gnd}
C {lab_pin.sym} 340 70 2 0 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 480 90 2 0 {name=p17 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 320 290 0 0 {name=p18 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 300 470 0 0 {name=p19 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 320 680 2 1 {name=p20 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 320 170 0 0 {name=p21 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 480 150 2 0 {name=p22 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 340 190 2 0 {name=p23 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 300 350 2 0 {name=p24 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 320 560 2 0 {name=p25 sig_type=std_logic lab=vdd}
C {simulator_commands_shown.sym} -210 230 0 0 {
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
C {gnd.sym} -620 350 0 0 {name=l4 lab=gnd}
C {devices/lab_pin.sym} -620 230 2 0 {name=p27 sig_type=std_logic lab=clk
}
C {lab_pin.sym} 180 170 2 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 160 360 2 0 {name=p26 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 490 270 2 0 {name=p28 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 490 210 2 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 140 170 0 0 {name=p30 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 160 420 0 0 {name=p31 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 180 630 0 0 {name=p32 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 180 570 2 0 {name=p33 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 200 260 1 0 {name=p34 sig_type=std_logic lab=clk_bar}
C {sqwsource.sym} -620 300 0 0 {name=V1 vhi=1.6 freq=5k}
C {devices/code_shown.sym} -850 640 0 0 {name=NGSPICE only_toplevel=true 
value="

.op
.tran 1u 5m
.control
run
plot v(PHI1) v(PHI2)v(PHI3) v(PHI4)
*plot  v(vop) v(vom) 
.endc
"}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/buffer.sym} 610 220 0 0 {name=x3}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/buffer.sym} 620 340 0 0 {name=x5}
C {lab_pin.sym} 220 390 1 0 {name=p35 sig_type=std_logic lab=out1}
