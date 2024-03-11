v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 -140 -250 -20 {
lab=#net1}
N -310 -140 -310 -20 {
lab=D}
N -280 -40 -240 -40 {
lab=vdd}
N -280 -40 -280 -20 {
lab=vdd}
N -280 -130 -240 -130 {
lab=GND}
N -280 -140 -280 -130 {
lab=GND}
N -60 180 -60 300 {
lab=#net2}
N -120 180 -120 300 {
lab=#net1}
N -180 230 -120 230 {
lab=#net1}
N -90 280 -50 280 {
lab=vdd}
N -90 280 -90 300 {
lab=vdd}
N -90 190 -50 190 {
lab=GND}
N -90 180 -90 190 {
lab=GND}
N -400 -90 -310 -90 {
lab=D}
N -200 230 -180 230 {
lab=#net1}
N -200 -80 -200 230 {
lab=#net1}
N 330 -130 330 -10 {
lab=#net3}
N 270 -130 270 -10 {
lab=#net4}
N 300 -30 340 -30 {
lab=vdd}
N 300 -30 300 -10 {
lab=vdd}
N 300 -120 340 -120 {
lab=GND}
N 300 -130 300 -120 {
lab=GND}
N -30 -80 10 -80 {
lab=#net4}
N 10 -80 260 -80 {
lab=#net4}
N -60 230 110 230 {
lab=#net2}
N 110 180 110 230 {
lab=#net2}
N 380 -70 470 -70 {
lab=#net3}
N 620 -50 670 -50 {
lab=Q}
N 640 -120 640 -50 {
lab=Q}
N 550 180 550 300 {
lab=#net5}
N 490 180 490 300 {
lab=#net3}
N 430 230 490 230 {
lab=#net3}
N 520 280 560 280 {
lab=vdd}
N 520 280 520 300 {
lab=vdd}
N 520 190 560 190 {
lab=GND}
N 520 180 520 190 {
lab=GND}
N 550 240 640 240 {
lab=#net5}
N 420 230 430 230 {
lab=#net3}
N 420 -70 420 230 {
lab=#net3}
N 640 240 790 240 {
lab=#net5}
N 790 240 800 240 {
lab=#net5}
N 800 -50 800 240 {
lab=#net5}
N -250 -80 -160 -80 {
lab=#net1}
N 260 -80 270 -80 {
lab=#net4}
N 330 -70 380 -70 {
lab=#net3}
N 530 10 530 40 {
lab=GND}
N -110 -150 -110 -130 {
lab=vdd}
N 130 -80 130 30 {
lab=#net4}
C {/foss/designs/inverter.sym} 760 -50 0 0 {name=x1}
C {/foss/designs/inverter.sym} -360 250 0 0 {name=x2}
C {/foss/designs/inverter.sym} -70 -80 0 0 {name=x3}
C {/foss/designs/nor.sym} 550 0 0 0 {name=x4}
C {/foss/designs/nor.sym} 60 110 1 0 {name=x5}
C {sky130_fd_pr/nfet_01v8.sym} -280 -160 3 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -280 0 1 1 {name=M2
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
C {devices/iopin.sym} -400 -90 0 1 {name=p1 lab=D}
C {devices/iopin.sym} -450 250 0 1 {name=p2 lab=clk
}
C {devices/lab_pin.sym} -320 250 0 1 {name=p3 sig_type=std_logic lab=n_clk}
C {devices/lab_pin.sym} -280 20 3 0 {name=p4 sig_type=std_logic lab=n_clk}
C {devices/lab_pin.sym} -280 -180 1 0 {name=p5 sig_type=std_logic lab=clk}
C {devices/iopin.sym} -110 -150 0 1 {name=p6 lab=vdd}
C {devices/iopin.sym} 530 40 0 1 {name=p7 lab=GND}
C {devices/lab_pin.sym} -240 -40 2 0 {name=p10 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -240 -130 0 1 {name=p11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -400 200 0 1 {name=p12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -400 300 0 1 {name=p13 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -90 160 3 1 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -90 320 1 1 {name=M4
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
C {devices/lab_pin.sym} -90 340 3 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -90 140 1 0 {name=p15 sig_type=std_logic lab=n_clk}
C {devices/lab_pin.sym} -50 280 2 0 {name=p16 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -50 190 0 1 {name=p17 sig_type=std_logic lab=GND}
C {devices/iopin.sym} 470 -30 0 1 {name=p18 lab=CLR}
C {devices/lab_pin.sym} -110 -30 0 1 {name=p21 sig_type=std_logic lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 300 -150 3 1 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 300 10 1 1 {name=M6
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
C {devices/lab_pin.sym} 300 30 3 0 {name=p22 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 300 -170 1 0 {name=p23 sig_type=std_logic lab=n_clk}
C {devices/lab_pin.sym} 340 -30 2 0 {name=p24 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 340 -120 0 1 {name=p25 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 90 30 3 1 {name=p26 sig_type=std_logic lab=CLR}
C {devices/lab_pin.sym} 50 90 0 0 {name=p27 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 170 90 0 1 {name=p28 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 530 -110 0 1 {name=p29 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 720 0 0 1 {name=p31 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 720 -100 0 1 {name=p32 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 640 -120 0 1 {name=p33 lab=Q}
C {sky130_fd_pr/nfet_01v8.sym} 520 160 3 1 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 520 320 1 1 {name=M8
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
C {devices/lab_pin.sym} 520 340 3 0 {name=p34 sig_type=std_logic lab=n_clk}
C {devices/lab_pin.sym} 520 140 1 0 {name=p35 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 560 280 2 0 {name=p36 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 560 190 0 1 {name=p37 sig_type=std_logic lab=GND}
