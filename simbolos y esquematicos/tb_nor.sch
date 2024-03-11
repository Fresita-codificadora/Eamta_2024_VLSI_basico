v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -260 30 -250 {
lab=avss1p8}
N 10 -260 30 -260 {
lab=avss1p8}
N 140 -250 150 -250 {
lab=avdd1p8}
N 150 -190 150 -180 {
lab=avss1p8}
N 10 -180 30 -180 {
lab=GND}
N 30 -190 30 -180 {
lab=GND}
N 100 0 140 -0 {
lab=vout}
N 270 0 310 0 {
lab=#net1}
N 130 -30 130 0 {
lab=vout}
C {devices/netlist_not_shown.sym} -230 -260 0 0 {name=SIMULATION only_toplevel=false
value="
* Circuit Parameters
.param vdd= 1.8
.param vss= 0.0
.param Tclk = 50n
.options TEMP = 65.0
* Include Models
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
* OP Parameters & Singals to save
.save all
*Simulations
.control
tran 0.01u 100n
setplot tran1
plot v(A) v(B)+2 v(vout)+4
reset
dc V3 0 1.8 0.01
setplot dc
plot vin vout ylabel vout xlabel vin
set filetype = ascii
write dcsweep.raw
.endc
.end
"

}
C {devices/vsource.sym} 250 -210 0 0 {name=V3 value="PULSE(\{vdd\} 0 \{Tclk/8\} 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/vsource.sym} 30 -220 0 0 {name=V1 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 150 -220 0 0 {name=V2 value=DC\{vdd\} savecurrent=false}
C {devices/gnd.sym} 10 -180 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 10 -260 0 0 {name=p8 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 150 -180 0 0 {name=p12 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 140 -250 0 0 {name=p5 sig_type=std_logic lab=avdd1p8}
C {/foss/designs/inverter.sym} 230 0 0 0 {name=x2}
C {devices/capa.sym} 310 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 250 -180 0 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 250 -240 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -40 -20 0 0 {name=p3 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 20 -60 0 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 20 60 0 0 {name=p6 sig_type=std_logic lab=avss1p8}
C {devices/vsource.sym} 250 -290 0 0 {name=V4 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 250 -260 0 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 250 -320 0 0 {name=p9 sig_type=std_logic lab=A}
C {devices/gnd.sym} 310 60 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 190 50 0 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 190 -50 0 0 {name=p11 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} -40 20 0 0 {name=p13 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 130 -30 0 0 {name=p14 sig_type=std_logic lab=vout}
C {/foss/designs/nor.sym} 30 0 0 0 {name=x1}
