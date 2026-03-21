v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -190 -150 -80 -150 {lab=#net1}
N -80 -150 -80 -90 {lab=#net1}
N -190 -150 -190 -70 {lab=#net1}
N -230 -70 -230 -40 {lab=#net2}
N -230 -40 -190 -40 {lab=#net2}
C {vsource.sym} -80 -60 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -80 -30 0 0 {name=l2 lab=GND}
C {simulator_commands_shown.sym} 40 -120 0 0 {
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
C {devices/code_shown.sym} -600 10 0 0 {name=NGSPICE only_toplevel=true 
value="

.op
.control
run

*plot  v(vop) v(vom) 
.endc
"}
C {sg13g2_pr/sg13_hv_pmos.sym} -210 -70 0 0 {name=M1
l=1u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {isource.sym} -190 -10 0 0 {name=I0 value=3u}
C {gnd.sym} -190 20 0 0 {name=l1 lab=GND}
