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
N 560 -40 600 -40 {
lab=Q0}
N 730 -40 770 -40 {
lab=#net1}
N 560 120 600 120 {
lab=Q1}
N 730 120 770 120 {
lab=#net2}
N 560 270 600 270 {
lab=Q2}
N 730 270 770 270 {
lab=#net3}
N 560 420 600 420 {
lab=Q3}
N 730 420 770 420 {
lab=#net4}
C {devices/netlist_not_shown.sym} -230 -260 0 0 {name=SIMULATION only_toplevel=false
value="
* Circuit Parameters
.param vdd= 1.8
.param vss= 0.0
.param Tsim= 1u
.param Tclk = 15n
.options TEMP = 65.0
* Include Models
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
* OP Parameters & Singals to save
.save all
*Simulations
.control
tran 0.01u 1u
setplot tran1
plot v(CE) v(CLR)+2 v(CLK)+4
plot v(CLK) v(Q0)+2 v(Q1)+4 v(Q2)+6 v(Q3)+8 v(CLR)+10
.endc
.end
"

}
C {devices/vsource.sym} 590 -190 0 0 {name=V3 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tclk/2\} \{Tclk\}) DC 0 AC 0" savecurrent=false}
C {devices/vsource.sym} 30 -220 0 0 {name=V1 value=DC\{vss\} savecurrent=false}
C {devices/vsource.sym} 150 -220 0 0 {name=V2 value=DC\{vdd\} savecurrent=false}
C {devices/gnd.sym} 10 -180 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 10 -260 0 0 {name=p8 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 150 -180 0 0 {name=p12 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 140 -250 0 0 {name=p5 sig_type=std_logic lab=avdd1p8}
C {/foss/designs/inverter.sym} 690 -40 0 0 {name=x2}
C {devices/capa.sym} 770 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 590 -160 0 0 {name=p1 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 590 -220 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 80 30 0 0 {name=p3 sig_type=std_logic lab=CE}
C {devices/lab_pin.sym} 180 -30 0 0 {name=p4 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 180 190 0 0 {name=p6 sig_type=std_logic lab=avss1p8}
C {devices/vsource.sym} 590 -270 0 0 {name=V4 value="PULSE(\{vdd\} 0 0.0 1p 1p \{Tsim/80\} \{Tsim\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 590 -240 0 0 {name=p7 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 590 -300 0 0 {name=p9 sig_type=std_logic lab=CE}
C {devices/gnd.sym} 770 20 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 650 10 0 0 {name=p10 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 650 -90 0 0 {name=p11 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 80 150 0 0 {name=p13 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 560 -40 0 0 {name=p14 sig_type=std_logic lab=Q0}
C {/foss/designs/inverter.sym} 690 120 0 0 {name=x1}
C {devices/capa.sym} 770 150 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 770 180 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 650 170 0 0 {name=p15 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 650 70 0 0 {name=p16 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 560 120 0 0 {name=p17 sig_type=std_logic lab=Q1}
C {/foss/designs/inverter.sym} 690 270 0 0 {name=x3}
C {devices/capa.sym} 770 300 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 770 330 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 650 320 0 0 {name=p18 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 650 220 0 0 {name=p19 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 560 270 0 0 {name=p20 sig_type=std_logic lab=Q2}
C {/foss/designs/inverter.sym} 690 420 0 0 {name=x4}
C {devices/capa.sym} 770 450 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 770 480 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 650 470 0 0 {name=p21 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 650 370 0 0 {name=p22 sig_type=std_logic lab=avdd1p8}
C {devices/lab_pin.sym} 560 420 0 0 {name=p23 sig_type=std_logic lab=Q3}
C {/foss/designs/cont4.sym} 230 90 0 0 {name=x5}
C {devices/lab_pin.sym} 270 20 0 1 {name=p24 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 270 60 0 1 {name=p25 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 270 100 0 1 {name=p26 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 270 140 0 1 {name=p27 sig_type=std_logic lab=Q3
}
C {devices/vsource.sym} 590 -370 0 0 {name=V5 value="PULSE(0 \{vdd\} 0.0 1p 1p \{Tsim/20\} \{Tsim*2\}) DC 0 AC 0" savecurrent=false}
C {devices/lab_pin.sym} 590 -340 0 0 {name=p28 sig_type=std_logic lab=avss1p8}
C {devices/lab_pin.sym} 590 -400 0 0 {name=p29 sig_type=std_logic lab=CLR}
C {devices/lab_pin.sym} 80 130 0 0 {name=p30 sig_type=std_logic lab=CLR}
