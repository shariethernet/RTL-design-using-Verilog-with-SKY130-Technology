# RTL Design using Verilog using SKYWATER 130nm PDK

This repository has a quick documentation covering the basics of RTL Design using verilog using the open source Skywarer 130nm PDK. This covers the basics of RTL Design using Verilog and simulation, Logic synthesis and optimisations


## RTL Design

RTL Design is the representation of a required specification in a HDL like Verilog or VHDL. The RTL Design can be also generated using HCL(Hardware Construction Languages) like Chisel, MyHDL or Transaction Level Modelling Languages like TL-Verilog.

When the circuit specification is given, the first step is to write/generate the RTL design using any of the above HDL/HCLs

## Logic Synthesis

The RTL written in a Hardware Description Language, "describes" the hardware in abstract that is to be used to realise the logic. The exact characteristics of the hardware are not known in the RTL Design rather, only the functionality of the circuit is known.

### Library file and verilog model file
Every Process has a *.lib* file called as the **library file** which has all the physical characteristics of the hardware (each standard cell) like area, leakage power for each combination of inputs, timing constraints etc., This *.lib* file has standard cell modules which are mapped to a separate verilog file with the modules named as the same names as the standard cells in the *.lib* file. This verilog file serves as a mapping between the .lib file and the RTL design to be implemented.

The library file has slow, fast, typical type of logic gates. The reason for the presence of such gates are discussed below

### Yosys - Open source Logic synthesiser

Yosys is an open source logic synthesising software which reads the library file and the verilog design and then generates the RTL Level Netlist which shows the gate level implementation of the design required

## Reason for the presence of different flavours of gate

Consider the following diagram
 ![Launch and capture flip flop circuit arrangement with a combinational delay](https://github.com/shariethernet/RTL-design-using-Verilog-with-SKY130-Technology/blob/main/images/1.PNG)
