`ifndef RADIANT_DEBUG_VH
 `define RADIANT_DEBUG_VH

 `ifndef DEBUG_NONE
 `define DEBUG_ANY "TRUE"
 `else
 `define DEBUG_ANY "FALSE"
 `endif

    // There's a lot of debugging options in the firmware, enough that it makes a big resource hog to turn them all on.
    
    // ILA to view the LAB4D control shift register inputs/outputs
 `define LAB4D_SHIFT_REGISTER_DEBUG `DEBUG_ANY
    // ILA to view the LAB4D data shift register input/outputs
 `define LAB4D_DATA_REGISTER_DEBUG "FALSE"
    // ILA to view the data coming into/out of the LAB4D RAM (plus a VIO to select which one)
 `define LAB4D_RAM_DEBUG "FALSE"
    // ILA to view the SPI Flash interface
 `define RAD_ID_CTRL_SPI_DEBUG "FALSE"
    // ILA to view the CPLD JTAG interface
 `define RAD_ID_CTRL_JTAG_DEBUG "FALSE"
    // ILA to view the entire WB bus
 `define WBC_INTERCON_DEBUG `DEBUG_ANY
    // ILA to view the CalRam process (for channel 0)
 `define WB_CALRAM_DEBUG `DEBUG_ANY
    // ILA to view the board manager interface (UART)
 `define BOARDMAN_INTERFACE_DEBUG `DEBUG_ANY
    // ILA to view the phase scanner
 `define PHASE_SCANNER_DEBUG `DEBUG_ANY
    // ILA for the RADIANT's trigger top
 `define RADIANT_TRIG_TOP_DEBUG "FALSE"
    // ILA for the SPI DMA interface (DON'T USE THIS IT'S WAY TOO FAST FOR AN ILA)
 `define FAST_SPI_FIFO_DEBUG "FALSE"
    // ILA for the SPI DMA engine
 `define SPIDMA_ENGINE_DEBUG `DEBUG_ANY    
    // ILA for the LAB4 FIFO
 `define LAB4_FIFO_DEBUG `DEBUG_ANY
    // ILA for the WB Calram
 `define WB_CALRAM_DEBUG `DEBUG_ANY
    // ILA for the Event debug
 `define EVENTCTRL_DEBUG `DEBUG_ANY
    // ILA for the trigger
 `define LAB_TRIGGER_DEBUG `DEBUG_ANY
`endif
