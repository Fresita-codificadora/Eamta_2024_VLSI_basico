v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -640 -330 -450 -330 {
lab=Q0}
N -730 -330 -640 -330 {
lab=Q0}
N -860 -270 -450 -270 {
lab=CE}
N -690 -270 -690 -260 {
lab=CE}
N -750 -330 -750 -260 {
lab=Q0}
N -750 -330 -730 -330 {
lab=Q0}
N -730 -50 -730 -10 {
lab=Q1}
N -730 -50 -530 -50 {
lab=Q1}
N -530 -120 -530 -50 {
lab=Q1}
N -530 -120 -450 -120 {
lab=Q1}
N -730 200 -730 220 {
lab=Q2}
N -730 200 -510 200 {
lab=Q2}
N -510 110 -510 200 {
lab=Q2}
N -510 110 -440 110 {
lab=Q2}
N -720 -90 -670 -90 {
lab=#net1}
N -670 -90 -670 -10 {
lab=#net1}
N -670 -30 -450 -30 {
lab=#net1}
N -450 -60 -450 -30 {
lab=#net1}
N -700 160 -670 160 {
lab=#net2}
N -670 160 -670 220 {
lab=#net2}
N -670 170 -440 170 {
lab=#net2}
N -700 390 -700 400 {
lab=#net3}
N -700 400 -440 400 {
lab=#net3}
N -270 -300 -110 -300 {
lab=#net4}
N -270 -90 -110 -90 {
lab=#net5}
N -260 140 -110 140 {
lab=#net6}
N -260 370 -110 370 {
lab=#net7}
N 50 -300 170 -300 {
lab=Q0}
N 60 -90 170 -90 {
lab=Q1}
N 50 140 170 140 {
lab=Q2}
N 50 370 170 370 {
lab=Q3}
N -510 -410 -510 -330 {
lab=Q0}
N -510 -410 80 -410 {
lab=Q0}
N 80 -410 80 -300 {
lab=Q0}
N -500 -180 -500 -120 {
lab=Q1}
N -500 -180 80 -180 {
lab=Q1}
N 80 -180 80 -90 {
lab=Q1}
N -490 70 -490 110 {
lab=Q2}
N -490 50 -490 70 {
lab=Q2}
N -490 50 80 50 {
lab=Q2}
N 80 50 80 140 {
lab=Q2}
N -440 290 -440 340 {
lab=Q3}
N -440 290 80 290 {
lab=Q3}
N 80 290 80 370 {
lab=Q3}
N -160 -220 -110 -220 {
lab=CLK}
N -160 -220 -160 520 {
lab=CLK}
N -160 450 -110 450 {
lab=CLK}
N -160 220 -110 220 {
lab=CLK}
N -160 -10 -110 -10 {
lab=CLK}
N -60 -450 -60 -350 {
lab=CLR}
N -220 -450 -60 -450 {
lab=CLR}
N -220 -450 -220 520 {
lab=CLR}
N -220 320 -60 320 {
lab=CLR}
N -220 90 -60 90 {
lab=CLR}
N -220 -140 -60 -140 {
lab=CLR}
N 50 -90 60 -90 {
lab=Q1}
C {/foss/designs/FFD.sym} 40 -50 0 0 {name=x1}
C {/foss/designs/FFD.sym} 40 180 0 0 {name=x2}
C {/foss/designs/FFD.sym} 40 -260 0 0 {name=x3}
C {/foss/designs/FFD.sym} 40 410 0 0 {name=x4}
C {/foss/designs/and.sym} -720 -120 1 0 {name=x5}
C {/foss/designs/and.sym} -700 130 1 0 {name=x6}
C {/foss/designs/and.sym} -700 360 1 0 {name=x7}
C {/foss/designs/xor.sym} -320 -300 0 0 {name=x8}
C {/foss/designs/xor.sym} -320 -90 0 0 {name=x9}
C {/foss/designs/xor.sym} -310 140 0 0 {name=x10}
C {/foss/designs/xor.sym} -310 370 0 0 {name=x11}
C {devices/iopin.sym} -860 -270 0 1 {name=p1 lab=CE}
C {devices/iopin.sym} 170 -300 0 0 {name=p2 lab=Q0}
C {devices/iopin.sym} 170 -90 0 0 {name=p3 lab=Q1}
C {devices/iopin.sym} 170 140 0 0 {name=p4 lab=Q2}
C {devices/iopin.sym} 170 370 0 0 {name=p5 lab=Q3}
C {devices/iopin.sym} -160 520 1 0 {name=p6 lab=CLK}
C {devices/iopin.sym} -220 520 1 0 {name=p7 lab=CLR}
C {devices/iopin.sym} -30 500 1 0 {name=p8 lab=GND}
C {devices/lab_pin.sym} -350 440 3 0 {name=p9 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -30 270 3 0 {name=p10 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -30 40 3 0 {name=p11 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -30 -170 3 0 {name=p12 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -790 -190 3 0 {name=p13 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -770 60 3 0 {name=p14 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -770 290 3 0 {name=p15 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -350 210 3 0 {name=p16 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -360 -20 3 0 {name=p17 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -360 -230 3 0 {name=p18 sig_type=std_logic lab=GND}
C {devices/iopin.sym} 0 -350 3 0 {name=p19 lab=vdd}
C {devices/lab_pin.sym} 0 -140 2 0 {name=p20 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 0 90 2 0 {name=p21 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 0 320 2 0 {name=p22 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -350 300 2 0 {name=p23 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -350 70 2 0 {name=p24 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -360 -160 2 0 {name=p25 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -360 -370 2 0 {name=p26 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -650 -190 2 0 {name=p27 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -630 60 2 0 {name=p28 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -630 290 2 0 {name=p29 sig_type=std_logic lab=vdd
}
