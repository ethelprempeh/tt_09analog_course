v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 600 -700 660 -700 {
lab=s}
N 600 -680 660 -680 {
lab=r}
N 960 -700 1040 -700 {
lab=vdd}
N 960 -680 1000 -680 {
lab=q}
N 960 -660 1000 -660 {
lab=qb}
N 960 -640 1040 -640 {
lab=GND}
N 770 -540 770 -510 {
lab=vdd}
N 850 -540 850 -510 {
lab=s}
N 940 -540 940 -510 {
lab=r}
N 940 -450 940 -420 {
lab=GND}
N 850 -450 850 -420 {
lab=GND}
N 770 -450 770 -420 {
lab=GND}
C {sr_latch.sym} 810 -670 0 0 {name=x1}
C {devices/ipin.sym} 600 -700 0 0 {name=p1 lab=s}
C {devices/ipin.sym} 600 -680 0 0 {name=p2 lab=r}
C {devices/iopin.sym} 1040 -700 0 0 {name=p3 lab=vdd}
C {devices/opin.sym} 1000 -680 0 0 {name=p4 lab=q}
C {devices/opin.sym} 1000 -660 0 0 {name=p10 lab=qb}
C {devices/vsource.sym} 770 -480 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 850 -480 0 0 {name=V2 value=PULSE(0 1.8 10n 1n 1n 40n 200n) savecurrent=false}
C {devices/lab_pin.sym} 770 -540 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 850 -540 0 0 {name=p13 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 940 -540 0 0 {name=p14 sig_type=std_logic lab=r}
C {devices/vsource.sym} 940 -480 0 0 {name=V3 value=PULSE(0 1.8 10n 1n 1n 40n 200n) savecurrent=false}
C {devices/gnd.sym} 770 -420 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 850 -420 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 940 -420 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1040 -640 0 0 {name=l5 lab=GND}
C {devices/code.sym} 450 -520 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/launcher.sym} 535 -335 0 0 {name=h3 
descr="Ctrl-click to load Xyce or ngspice data" 
tclcommand="
  if \{ [sim_is_xyce] \} \{ ;# using an if \{\} allows to differentiate file names
    xschem raw_read $netlist_dir/test_inv.raw tran
  \} else \{
    xschem raw_read $netlist_dir/test_inv.raw tran
  \}
"
}
C {devices/code.sym} 1060 -520 0 0 {name=SIMULATION
only_toplevel=true
value="
* .options filetype=ascii

.control

tran 0.1n 500n
plot v(s) v(r) v(q) v(qb)
*write ring_osc.raw
.endc
.end
"}
