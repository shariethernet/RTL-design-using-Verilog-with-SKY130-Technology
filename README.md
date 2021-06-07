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

[Yosys](http://www.clifford.at/yosys/) is an open source logic synthesising software which reads the library file and the verilog design and then generates the RTL Level Netlist which shows the gate level implementation of the design required

## Reason for the presence of different flavours of gate

Consider the following diagram

 ![Launch and capture flip flop circuit arrangement with a combinational delay](https://github.com/shariethernet/RTL-design-using-Verilog-with-SKY130-Technology/blob/main/images/1.PNG)

The maximum speed of operation of the circuit depends on the delay produced by the gates used. 

### How long must the clock period be?

 - The clock period must be long enough that a signal from DFF A travels
   to DFF     			 B completely
- In other words, in 1 clock cycle the data from A must reach B
- #### Why? 
	- Let us assume that both the DFF A and B are positive edge triggered. 
	- At the first positive edge 
		- The input to DFF A reaches the Q of DFF A and starts to propagate to the combinational logic
		- The previous output of the combinational logic appears at the output of DFF B

To satisfy this criteria 

	 Tclk > TpropDFFA + Tpropcomb + TsetupDFFB
The time period of the clock must be greater than the Propagation delay of DFF A , combinational delay and the Setup Time of DFF B

This gives the minimum required clock period or the maximum frequency for the circuit to function as expected.

If the frequency is too high then the clock's positive edge arrives even before the launched data reaches the capture flip flop leading to the sampling of the wrong value rendering the circuit useless

### We need faster circuits, so we require fast cells. Why do we need slow cells?

We require the slow cells to avoid HOLD Violations aat the DFF B
If the circuit is too fast then the data sampled at the DFF B ends up being the same data launched at DFF A at the same timeperiod.

The launched data must reach the DFF B only in the next posedge of the clock. This imposes the condition for the maximum hold time

	Thold = TpropDFFA + Tpropcomb 

## Faster Cells vs Slowercells

 - The load in the Digital circuit is capacitive
 - So the RC time constant determines the speed of operation of the circuit
 - We desire a faster operation, which means that the charging and the discharging times must be smaller, which implies smaller values of RC time constant. 
 - R is a constant for the given material. To reduce the RC time constant the capacitance has to be lowered. We know that capacitance is inversely proportional to the width
 - This leads to an increased width for lower capacitance and hence faster cells
 - However higher width results in increased area and power
 - On the other had slower transistors have larger RC value, with smaller widths leading to lesser area and power
 - It is seen that Power, Area and Speed are the three important factors that are traded off.
 - It is upto the scenario, where the designer choses the standard cells such that he/she meets the Power, Area and Speed requirements of the circuit

### Selection of Cells
 - The Synthesizer needs to be guided with the selection of the flavour of cells that is optimal for implementing the circuit
 - More use of faster cells increases the Power, Area and also may cause Hold Time violations
 - More use of smaller cells causes the circuit to slow down 
 - This set of guidance offered to the synthesiser to select the standard cells according to the requirement is called as constraints

## Library naming
Refer the following link to know about the naming of the library files
[Library Naming  Scheme
](https://github.com/google/skywater-pdk/blob/main/docs/contents/libraries.rst)

## Block Diagram of Logic Synthesis

### Yosys Setup
![](/images/2.png)

### Verifying the Synthesis
The synthesised Netlist will have the implementation of the circuit interms of the standard cells instantiated. Inorder to verify that the generated gate level model coincides with the RTL design the RTL Netlist can be simulated with the same testbench (The module names dosent change).

### Simulator Working
 - The simulator looks for the changes in the input
 - The output is re-evaluated only when there are changes in the input at a given time
 - Else the output is the same
