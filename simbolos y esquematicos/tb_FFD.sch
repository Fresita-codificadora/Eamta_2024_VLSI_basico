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
N 80 0 100 0 {
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
plot v(clk) v(D)+2 v(CLR)+4 v(vout)+6
.endc
.end
"

}
C {devices/vsource.sym} 250 -210 0 0 {name=V3 value="PULSE(\{vdd\} 0 \{Tclk/16\} 1p 1p \{Tclk/8\} \{Tclk/4\}) DC 0 AC 0" savecurrent=false}
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
C {devices/lab_pin.sym} 250 -240 0 0 {name=p2 sig_type=std_logic lab=clk
}
C {devices/lab_pin.sym} -80 0 0 0 {name=p3 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 30 -50 1 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 0 130 0 0 {name=p6 sig_type=std_logic lab=avss1p8}
C {devices/vsource.sym} 250 -290 0 0 {name=V4 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/4\} \{Tclk/2\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 250 -260 0 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 250 -320 0 0 {name=p9 sig_type=std_logic lab=D}
C {devices/gnd.sym} 310 60 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 190 50 0 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 190 -50 0 0 {name=p11 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} -80 80 0 0 {name=p13 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 130 -30 0 0 {name=p14 sig_type=std_logic lab=vout}
C {/foss/designs/FFD.sym} 70 40 0 0 {name=x1}
C {devices/vsource.sym} 250 -380 0 0 {name=V5 value="PULSE(0 \{vdd\} \{Tclk\} 1p 1p \{Tclk/8\} \{Tclk*2\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 250 -350 0 0 {name=p15 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 250 -410 0 0 {name=p16 sig_type=std_logic lab=CLR
}
C {devices/lab_pin.sym} -30 -50 0 0 {name=p17 sig_type=std_logic lab=CLR
}
