v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 400 -100 420 {lab=vdd}
N -100 480 -100 510 {lab=gnd}
N -220 490 -220 510 {lab=gnd}
N -220 390 -220 430 {lab=clk}
C {lab_pin.sym} -100 400 1 0 {name=p15 sig_type=std_logic lab=vdd}
C {vsource.sym} -100 450 0 0 {name=V2 value="1.6" savecurrent=false}
C {gnd.sym} -100 510 0 0 {name=l2 lab=gnd}
C {gnd.sym} -220 510 0 0 {name=l4 lab=gnd}
C {devices/lab_pin.sym} -220 390 2 0 {name=p27 sig_type=std_logic lab=clk
}
C {sqwsource.sym} -220 460 0 0 {name=V1 vhi=1.6 freq=5k}
C {devices/code_shown.sym} -230 600 0 0 {name=NGSPICE only_toplevel=true 
value="

*.op
.tran 1u 5m
.control
run
plot v(PHI1) v(PHI2)v(PHI3) v(PHI4)
*plot  v(vop) v(vom) 
.endc
"}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/pulse_gen_circuit.sym} -580 510 0 0 {name=x1}
C {devices/lab_pin.sym} -430 450 2 0 {name=p1 sig_type=std_logic lab=clk
}
C {lab_pin.sym} -430 470 2 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -430 490 2 0 {name=p3 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -430 510 2 0 {name=p4 sig_type=std_logic lab=phi1}
C {lab_pin.sym} -430 530 2 0 {name=p5 sig_type=std_logic lab=phi2}
C {lab_pin.sym} -430 550 2 0 {name=p6 sig_type=std_logic lab=phi3}
C {lab_pin.sym} -430 570 2 0 {name=p7 sig_type=std_logic lab=phi4}
C {simulator_commands_shown.sym} -60 550 0 0 {
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
