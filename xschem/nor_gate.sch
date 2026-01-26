v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 -780 470 -690 {
lab=vdd}
N 470 -690 470 -660 {
lab=vdd}
N 470 -630 470 -560 {
lab=#net1}
N 470 -530 570 -530 {
lab=vdd}
N 570 -740 570 -530 {
lab=vdd}
N 470 -740 570 -740 {
lab=vdd}
N 240 -660 430 -660 {
lab=a}
N 240 -660 240 -340 {
lab=a}
N 240 -340 300 -340 {
lab=a}
N 380 -530 430 -530 {
lab=b}
N 380 -530 380 -400 {
lab=b}
N 380 -400 540 -400 {
lab=b}
N 540 -400 540 -340 {
lab=b}
N 540 -340 610 -340 {
lab=b}
N 340 -450 340 -370 {
lab=y}
N 340 -450 650 -450 {
lab=y}
N 650 -450 650 -370 {
lab=y}
N 340 -310 340 -260 {
lab=vss}
N 340 -260 650 -260 {
lab=vss}
N 650 -310 650 -260 {
lab=vss}
N 490 -260 490 -180 {
lab=vss}
N 650 -340 650 -310 {
lab=vss}
N 340 -340 340 -310 {
lab=vss}
N 100 -560 240 -560 {
lab=a}
N 110 -470 380 -470 {
lab=b}
N 470 -500 470 -450 {
lab=y}
N 470 -480 850 -480 {
lab=y}
C {sky130_fd_pr/pfet_01v8.sym} 450 -660 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 450 -530 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 320 -340 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 630 -340 0 0 {name=M4
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
C {devices/ipin.sym} 100 -560 0 0 {name=p1 lab=a}
C {devices/ipin.sym} 110 -470 0 0 {name=p2 lab=b}
C {devices/opin.sym} 850 -480 0 0 {name=p3 lab=y}
C {devices/iopin.sym} 470 -780 0 0 {name=p4 lab=vdd}
C {devices/iopin.sym} 490 -180 0 0 {name=p5 lab=vss}
