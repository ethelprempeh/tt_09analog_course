v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -460 420 -460 {
lab=s}
N 360 -440 420 -440 {
lab=qb}
N 370 -290 420 -290 {
lab=q}
N 370 -270 420 -270 {
lab=r}
N 720 -440 780 -440 {
lab=q}
N 720 -270 770 -270 {
lab=qb}
N 760 -440 760 -390 {
lab=q}
N 390 -340 760 -390 {
lab=q}
N 390 -340 390 -290 {
lab=q}
N 390 -440 390 -390 {
lab=qb}
N 390 -390 760 -310 {
lab=qb}
N 760 -310 760 -270 {
lab=qb}
N 720 -460 780 -460 {
lab=vdd}
N 720 -290 770 -290 {
lab=vdd}
N 720 -420 780 -420 {
lab=vss}
N 720 -250 770 -250 {
lab=vss}
C {nor_gate.sym} 570 -440 0 0 {name=x1}
C {nor_gate.sym} 570 -270 0 0 {name=x2}
C {devices/ipin.sym} 360 -460 0 0 {name=p1 lab=s}
C {devices/opin.sym} 370 -290 0 1 {name=p2 lab=q}
C {devices/ipin.sym} 370 -270 0 0 {name=p3 lab=r}
C {devices/opin.sym} 360 -440 0 1 {name=p4 lab=qb}
C {devices/opin.sym} 770 -270 0 0 {name=p5 lab=qb}
C {devices/opin.sym} 780 -440 0 0 {name=p6 lab=q}
C {devices/iopin.sym} 770 -290 0 0 {name=p7 lab=vdd}
C {devices/iopin.sym} 780 -420 0 0 {name=p8 lab=vss}
C {devices/iopin.sym} 780 -460 0 0 {name=p9 lab=vdd}
C {devices/iopin.sym} 770 -250 0 0 {name=p10 lab=vss}
