v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -70 -90 -50 {
lab=avdd1p8}
N -90 50 -90 70 {
lab=avss1p8}
N 70 50 70 70 {
lab=avss1p8}
N 70 -90 70 -50 {
lab=avdd1p8}
N 160 -200 160 -190 {
lab=avss1p8}
N 140 -200 160 -200 {
lab=avss1p8}
N 250 -190 260 -190 {
lab=avdd1p8}
N 340 -200 350 -200 {
lab=vin}
N 350 -200 350 -190 {
lab=vin}
N 350 -130 350 -120 {
lab=avss1p8}
N 340 -120 350 -120 {
lab=avss1p8}
N 260 -130 260 -120 {
lab=avss1p8}
N 210 100 210 130 {
lab=avss1p8}
N 200 130 210 130 {
lab=avss1p8}
N 210 0 210 40 {
lab=#net1}
N 150 0 210 0 {
lab=#net1}
N 10 0 20 0 {
lab=vout}
N -10 0 10 0 {
lab=vout}
N 140 -120 160 -120 {
lab=GND}
N 160 -130 160 -120 {
lab=GND}
C {/foss/designs/inverter.sym} -50 0 0 0 {name=x1}
C {/foss/designs/inverter.sym} 110 0 0 0 {name=x2}
C {devices/vsource.sym} 160 -160 0 0 {name=V1 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 260 -160 0 0 {name=V2 value=DC\{vdd\} savecurrent=false}
C {devices/vsource.sym} 350 -160 0 0 {name=V3 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/capa.sym} 210 70 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 140 -120 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} -280 -210 0 0 {name=SIMULATION only_toplevel=false
value="
* Circuit Parameters
.param vdd= 1.8
.param vss= 0.0
.param Tclk = 10n
.options TEMP = 65.0
* Include Models
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
* OP Parameters & Singals to save
.save all
*Simulations
.control
tran 0.01u 100n
setplot tran1
plot v(vin) v(vout)+2
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
C {devices/lab_pin.sym} -140 0 0 0 {name=p2 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} -90 -70 0 0 {name=p3 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} -90 70 0 0 {name=p4 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 70 70 0 0 {name=p6 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 200 130 0 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 140 -200 0 0 {name=p8 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 340 -200 0 0 {name=p10 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 340 -120 0 0 {name=p11 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 260 -120 0 0 {name=p12 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 70 -90 0 0 {name=p1 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 250 -190 0 0 {name=p5 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 10 0 1 0 {name=p9 sig_type=std_logic lab=vout}
