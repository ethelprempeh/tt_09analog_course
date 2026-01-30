v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 600 -700 660 -700 {
lab=s}
N 600 -680 660 -680 {
lab=r}
N 960 -700 1040 -700 {
lab=vdd}
N 960 -660 1000 -660 {
lab=q}
N 960 -680 1000 -680 {
lab=qb}
N 960 -640 1040 -640 {
lab=GND}
N 680 -540 680 -510 {
lab=vdd}
N 810 -540 810 -510 {
lab=s}
N 1050 -540 1050 -510 {
lab=r}
N 1050 -450 1050 -420 {
lab=GND}
N 810 -450 810 -420 {
lab=GND}
N 680 -450 680 -420 {
lab=GND}
C {sr_latch.sym} 810 -670 0 0 {name=x1}
C {devices/ipin.sym} 600 -700 0 0 {name=p1 lab=s}
C {devices/ipin.sym} 600 -680 0 0 {name=p2 lab=r}
C {devices/iopin.sym} 1040 -700 0 0 {name=p3 lab=vdd}
C {devices/opin.sym} 1000 -660 0 0 {name=p4 lab=q}
C {devices/opin.sym} 1000 -680 0 0 {name=p10 lab=qb}
C {devices/vsource.sym} 680 -480 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 810 -480 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 680 -540 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 810 -540 0 0 {name=p13 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 1050 -540 0 0 {name=p14 sig_type=std_logic lab=r}
C {devices/vsource.sym} 1050 -480 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} 680 -420 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 810 -420 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1050 -420 0 0 {name=l3 lab=GND}
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
C {devices/code.sym} 1310 -540 0 0 {name=SIMULATION
only_toplevel=true
value="
* .options filetype=ascii

.control

tran 0.1n 200n
plot v(s)
plot v(r) 
plot v(q) 
plot v(qb) 
*write ring_osc.raw
.endc
.end
"}
