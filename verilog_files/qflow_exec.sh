#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files
#-------------------------------------------

# /usr/local/share/qflow/scripts/synthesize.sh /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files/source/mult_2.v || exit 1
# /usr/local/share/qflow/scripts/placement.sh -d /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
# /usr/local/share/qflow/scripts/vesta.sh -a /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
# /usr/local/share/qflow/scripts/router.sh /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
# /usr/local/share/qflow/scripts/opensta.sh  -d /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
# /usr/local/share/qflow/scripts/vesta.sh -a -d /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
# /usr/local/share/qflow/scripts/migrate.sh /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
/usr/local/share/qflow/scripts/drc.sh /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
# /usr/local/share/qflow/scripts/lvs.sh /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
# /usr/local/share/qflow/scripts/gdsii.sh /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
# /usr/local/share/qflow/scripts/display.sh /d/RISC-V/sky130RTLDesignAndSynthesisWorkshop/verilog_files mul2 || exit 1
