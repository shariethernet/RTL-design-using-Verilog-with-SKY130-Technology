#!/bin/tcsh -f
#------------------------------------------------------------
# project variables for project /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files
#------------------------------------------------------------

# Synthesis command options:
# -------------------------------------------
# set hard_macros =
# set yosys_options =
# set yosys_script =
# set yosys_debug =
# set abc_script =
# set nobuffers =
# set inbuffers =
# set postproc_options =
# set xspice_options = "-io_time=50p -time=10p -idelay=10p -odelay=30p -cload=50f"
# set fill_ratios =
# set nofanout =
# set fanout_options = "-l 200 -c 50"
# set source_file_list =
# set is_system_verilog =

# Placement command options:
# -------------------------------------------
# set initial_density =
# set graywolf_options =
set addspacers_options = "-stripe 1.7 50.0 PG"

# Router command options:
# -------------------------------------------
set route_show = 1
# set route_layers =
# set via_use =
# set via_stacks =
# set qrouter_options =

# STA command options:
# -------------------------------------------

# Minimum period of the clock use "--period value" (value in ps)
# set opensta_options =
# set run_opensta = 1
set vesta_options = "--long"
# set run_vesta = 1

# Other options:
# -------------------------------------------
# set migrate_options =
# set lef_options =
# set drc_gdsview =
# set drc_options =
# set gds_options =

#------------------------------------------------------------

