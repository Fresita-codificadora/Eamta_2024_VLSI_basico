v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 -100 -70 -60 {
lab=vdd}
N -70 -100 220 -100 {
lab=vdd}
N 200 -100 220 -100 {
lab=vdd}
N 200 -100 200 -10 {
lab=vdd}
N 80 -100 80 -60 {
lab=vdd}
N -70 0 -70 20 {
lab=#net1}
N -70 20 80 20 {
lab=#net1}
N 80 0 80 20 {
lab=#net1}
N 10 20 10 30 {
lab=#net1}
N 10 90 10 110 {
lab=#net2}
N 10 170 10 190 {
lab=GND}
N 200 120 200 190 {
lab=GND}
N 80 20 160 20 {
lab=#net1}
N 160 20 160 90 {
lab=#net1}
N 200 50 200 60 {
lab=Z}
N 200 60 270 60 {
lab=Z}
N 10 190 200 190 {
lab=GND}
N -130 -30 -110 -30 {
lab=A}
N -110 -30 -110 60 {
lab=A}
N -110 60 -30 60 {
lab=A}
N 120 -30 130 -30 {
lab=Bet}
N -60 140 -30 140 {
lab=B}
N 10 60 100 60 {
lab=GND}
N 100 60 100 100 {
lab=GND}
N 10 140 100 140 {
lab=GND}
N 100 140 100 190 {
lab=GND}
N 200 90 300 90 {
lab=GND}
N 300 90 300 140 {
lab=GND}
N 200 140 290 140 {
lab=GND}
N 290 140 300 140 {
lab=GND}
N 200 20 300 20 {
lab=vdd}
N 300 -30 300 10 {
lab=vdd}
N 200 -30 300 -30 {
lab=vdd}
N 300 10 300 20 {
lab=vdd}
N -70 -30 -0 -30 {
lab=vdd}
N -0 -70 -0 -30 {
lab=vdd}
N -70 -70 -0 -70 {
lab=vdd}
N 20 -30 80 -30 {
lab=vdd}
N 20 -70 20 -30 {
lab=vdd}
N 20 -70 80 -70 {
lab=vdd}
N 100 100 100 140 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -10 60 0 0 {name=M2
L=0.15
W=1.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -90 -30 0 0 {name=M0
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -10 140 0 0 {name=M3
L=0.15
W=1.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 180 90 0 0 {name=M5
L=0.15
W=0.75
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 100 -30 0 1 {name=M1
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 180 20 0 0 {name=M4
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 220 -100 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 270 60 0 0 {name=p3 lab=Z}
C {devices/iopin.sym} 200 190 0 0 {name=p4 lab=GND}
C {devices/iopin.sym} -60 140 0 1 {name=p5 lab=B}
C {devices/iopin.sym} -130 -30 0 1 {name=p7 lab=A}
C {devices/lab_pin.sym} 130 -30 3 0 {name=p6 sig_type=std_logic lab=B}
