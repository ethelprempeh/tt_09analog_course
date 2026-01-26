v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 600 -740 660 -740 {
lab=s}
N 600 -720 660 -720 {
lab=r}
N 960 -740 1040 -740 {
lab=vdd}
N 960 -720 1000 -720 {
lab=q}
N 960 -700 1000 -700 {
lab=qb}
N 960 -680 1040 -680 {
lab=vss}
N 960 -660 1040 -660 {
lab=vdd}
N 960 -640 1000 -640 {
lab=q}
N 960 -620 1000 -620 {
lab=qb}
N 960 -600 1040 -600 {
lab=vss}
N 770 -540 770 -510 {
lab=vdd}
N 850 -540 850 -510 {
lab=s}
N 940 -540 940 -510 {
lab=r}
N 940 -450 940 -420 {
lab=vss}
N 850 -450 850 -420 {
lab=vss}
N 770 -450 770 -420 {
lab=vss}
C {sr_latch.sym} 810 -670 0 0 {name=x1}
C {devices/ipin.sym} 600 -740 0 0 {name=p1 lab=s}
C {devices/ipin.sym} 600 -720 0 0 {name=p2 lab=r}
C {devices/iopin.sym} 1040 -740 0 0 {name=p3 lab=vdd}
C {devices/opin.sym} 1000 -720 0 0 {name=p4 lab=q}
C {devices/iopin.sym} 1040 -660 0 0 {name=p5 lab=vdd}
C {devices/iopin.sym} 1040 -600 0 0 {name=p6 lab=vss}
C {devices/iopin.sym} 1040 -680 0 0 {name=p7 lab=vss}
C {devices/opin.sym} 1000 -640 0 0 {name=p8 lab=q}
C {devices/opin.sym} 1000 -620 0 0 {name=p9 lab=qb}
C {devices/opin.sym} 1000 -700 0 0 {name=p10 lab=qb}
C {devices/vsource.sym} 770 -480 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 850 -480 0 0 {name=V2 value=PULSE(0 1.8 10n 1n 1n 40n 200n) savecurrent=false}
C {devices/lab_pin.sym} 770 -540 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 770 -420 0 0 {name=p12 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 850 -540 0 0 {name=p13 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 940 -540 0 0 {name=p14 sig_type=std_logic lab=r}
C {devices/vsource.sym} 940 -480 0 0 {name=V3 value=PULSE(0 1.8 10n 1n 1n 40n 200n) savecurrent=false}
C {devices/lab_pin.sym} 850 -420 0 0 {name=p15 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 940 -420 0 0 {name=p16 sig_type=std_logic lab=vss}
C {devices/code.sym} 1250 -550 0 0 {name=s1 only_toplevel=false 
value="
.lib /home/eprempeh/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
  tran 0.1n 500n
  plot v(s) v(r) v(q) v(qb)
.endc
.endc
"}
C {devices/gnd.sym} 770 -420 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 850 -420 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 940 -420 0 0 {name=l3 lab=GND}
