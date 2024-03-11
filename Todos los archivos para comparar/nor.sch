v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 60 -230 70 {
lab=vout}
N -230 60 -80 60 {
lab=vout}
N -80 60 -80 70 {
lab=vout}
N -150 40 -150 60 {
lab=vout}
N -230 130 -230 150 {
lab=GND}
N -230 150 -80 150 {
lab=GND}
N -80 130 -80 150 {
lab=GND}
N -110 100 -80 100 {
lab=GND}
N -230 100 -110 100 {
lab=GND}
N -230 100 -160 100 {
lab=GND}
N -160 100 -160 150 {
lab=GND}
N -160 150 -160 170 {
lab=GND}
N -150 -100 -150 -80 {
lab=vdd}
N -180 -100 -150 -100 {
lab=vdd}
N -180 -50 -150 -50 {
lab=vdd}
N -180 -100 -180 -50 {
lab=vdd}
N -150 10 -90 10 {
lab=vdd}
N -90 -100 -90 10 {
lab=vdd}
N -150 -100 -90 -100 {
lab=vdd}
N -300 10 -190 10 {
lab=A}
N -300 10 -300 100 {
lab=A}
N -300 100 -270 100 {
lab=A}
N -40 100 -30 100 {
lab=B}
N -30 -50 -30 100 {
lab=B}
N -110 -50 -30 -50 {
lab=B}
C {sky130_fd_pr/pfet_01v8.sym} -170 10 0 0 {name=M1
L=0.15
W=3
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
C {sky130_fd_pr/pfet_01v8.sym} -130 -50 0 1 {name=M2
L=0.15
W=3
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
C {sky130_fd_pr/nfet_01v8.sym} -250 100 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} -60 100 0 1 {name=M4
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
C {devices/iopin.sym} -160 170 0 0 {name=p1 lab=GND}
C {devices/iopin.sym} -300 100 0 1 {name=p2 lab=A}
C {devices/iopin.sym} -30 100 0 0 {name=p3 lab=B}
C {devices/iopin.sym} -90 -90 0 0 {name=p4 lab=vdd}
C {devices/iopin.sym} -230 60 0 1 {name=p5 lab=Z}
