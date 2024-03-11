v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 30 40 40 {
lab=in}
N 40 40 50 40 {
lab=in}
N 40 -40 40 30 {
lab=in}
N 40 -40 50 -40 {
lab=in}
N 30 0 40 0 {
lab=in}
N 90 -10 90 10 {
lab=out}
N 90 -100 90 -70 {
lab=vdd}
N 90 -40 130 -40 {
lab=vdd}
N 130 -100 130 -40 {
lab=vdd}
N 90 -100 130 -100 {
lab=vdd}
N 90 70 90 100 {
lab=vss}
N 90 100 130 100 {
lab=vss}
N 130 50 130 100 {
lab=vss}
N 130 40 130 50 {
lab=vss}
N 90 40 130 40 {
lab=vss}
N 130 100 160 100 {
lab=vss}
N 130 -100 150 -100 {
lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 70 40 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 70 -40 0 0 {name=M2
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
C {devices/iopin.sym} 30 0 0 1 {name=p1 lab=in
}
C {devices/iopin.sym} 150 -100 0 0 {name=p2 lab=vdd}
C {devices/iopin.sym} 160 100 0 0 {name=p3 lab=vss}
C {devices/iopin.sym} 90 0 0 0 {name=p4 lab=out}
