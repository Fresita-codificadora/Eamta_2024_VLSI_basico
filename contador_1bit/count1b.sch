v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -220 70 -220 {
lab=#net1}
N 230 -220 300 -220 {
lab=Q}
N -210 -250 -180 -250 {
lab=CE}
N -230 -250 -210 -250 {
lab=CE}
N -260 20 350 20 {
lab=so}
N -290 -250 -230 -250 {
lab=CE}
N -230 -250 -230 -150 {
lab=CE}
N -290 -190 -290 -150 {
lab=Q}
N -290 -190 -180 -190 {
lab=Q}
N 300 -220 300 -10 {
lab=Q}
N -120 -10 300 -10 {
lab=Q}
N -120 -120 -120 -10 {
lab=Q}
N -190 -120 -120 -120 {
lab=Q}
N -190 -190 -190 -120 {
lab=Q}
C {/foss/designs/FFD.sym} 220 -180 0 0 {name=x1}
C {/foss/designs/and.sym} -260 -10 1 0 {name=x2}
C {/foss/designs/xor.sym} -50 -220 0 0 {name=x3}
C {devices/lab_pin.sym} -330 -80 0 0 {name=p1 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -90 -150 0 0 {name=p2 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 150 -90 3 0 {name=p3 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -190 -80 2 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -90 -290 2 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 180 -270 2 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} -290 -190 2 0 {name=p7 lab=Q}
C {devices/iopin.sym} 120 -270 3 0 {name=p9 lab=CLR}
C {devices/iopin.sym} 70 -140 2 0 {name=p10 lab=clk}
C {devices/iopin.sym} 350 20 0 0 {name=p11 lab=so}
C {devices/iopin.sym} -290 -250 2 0 {name=p12 lab=CE}
C {devices/iopin.sym} -90 -150 1 0 {name=p13 lab=GND}
C {devices/iopin.sym} -90 -290 3 0 {name=p14 lab=vdd}
