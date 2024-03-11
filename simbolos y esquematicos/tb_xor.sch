v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -410 50 -410 60 {
lab=avss1p8}
N -430 50 -410 50 {
lab=avss1p8}
N -300 60 -290 60 {
lab=avdd1p8}
N -290 120 -290 130 {
lab=avss1p8}
N -430 130 -410 130 {
lab=GND}
N -410 120 -410 130 {
lab=GND}
N -340 310 -300 310 {
lab=vout}
N -170 310 -130 310 {
lab=#net1}
N -310 280 -310 310 {
lab=vout}
C {devices/netlist_not_shown.sym} -670 50 0 0 {name=SIMULATION only_toplevel=false
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
C {devices/vsource.sym} -190 100 0 0 {name=V3 value="PULSE(\{vdd\} 0 \{Tclk/8\} 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/vsource.sym} -410 90 0 0 {name=V1 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} -290 90 0 0 {name=V2 value=DC\{vdd\} savecurrent=false}
C {devices/gnd.sym} -430 130 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -430 50 0 0 {name=p8 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} -290 130 0 0 {name=p12 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} -300 60 0 0 {name=p5 sig_type=std_logic lab=avdd1p8}
C {/foss/designs/inverter.sym} -210 310 0 0 {name=x2}
C {devices/capa.sym} -130 340 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -190 130 0 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} -190 70 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -520 280 0 0 {name=p3 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -430 240 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} -430 380 0 0 {name=p6 sig_type=std_logic lab=avss1p8}
C {devices/vsource.sym} -190 20 0 0 {name=V4 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} -190 50 0 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} -190 -10 0 0 {name=p9 sig_type=std_logic lab=A}
C {devices/gnd.sym} -130 370 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -250 360 0 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} -250 260 0 0 {name=p11 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} -520 340 0 0 {name=p13 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -310 280 0 0 {name=p14 sig_type=std_logic lab=vout}
C {/foss/designs/xor.sym} -390 310 0 0 {name=x1}
