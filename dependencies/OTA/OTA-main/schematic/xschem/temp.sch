v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -660 -170 -660 -150 {lab=gnd}
N -660 -270 -660 -230 {lab=vin}
N -870 -440 -870 -420 {lab=vdd}
N -870 -360 -870 -330 {lab=gnd}
N 70 0 120 0 {lab=out}
C {simulator_commands_shown.sym} -430 -330 0 0 {
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
C {gnd.sym} -660 -150 0 0 {name=l1 lab=gnd}
C {devices/lab_pin.sym} -660 -270 2 0 {name=p9 sig_type=std_logic lab=vin
}
C {sqwsource.sym} -660 -200 0 0 {name=V2 vhi=1.6 freq=5k}
C {devices/code_shown.sym} -940 -10 0 0 {name=NGSPICE only_toplevel=true 
value="

.op
.tran 1u 5m
.control
run
*plot v(PHI1) v(PHI2)v(PHI3) v(PHI4)
*plot  v(vop) v(vom) 
.endc
"}
C {lab_pin.sym} -870 -440 1 0 {name=p15 sig_type=std_logic lab=vdd}
C {vsource.sym} -870 -390 0 0 {name=V3 value="1.6" savecurrent=false}
C {gnd.sym} -870 -330 0 0 {name=l2 lab=gnd}
C {lab_pin.sym} -10 0 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 30 -20 1 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 30 20 1 1 {name=p3 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 120 0 2 0 {name=p4 sig_type=std_logic lab=out}
C {/home/designer/shared/unicass_2026/Design_Files/github_clone_circuit_/UNI-CASS_Project_2025_IIT_DH/Clock_gen_using_transistor_hv/inverter.sym} 40 -20 0 0 {name=x1}
