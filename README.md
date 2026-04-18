# FIR Filter VHDL

A 4-tap Finite Impulse Response (FIR) digital filter implemented in VHDL for FPGA design and simulation using Intel Quartus II and ModelSim.

## Overview

This project processes discrete-time input samples stored in ROM and applies fixed FIR coefficients using a parallel multiply-accumulate datapath. Delayed samples are multiplied by coefficients and summed through an adder tree to generate the filtered output.

## FIR Equation

For a 4-tap FIR filter:

y[n] = h0x[n] + h1x[n-1] + h2x[n-2] + h3x[n-3]

Where:

- x[n] = current sample  
- x[n-1], x[n-2], x[n-3] = delayed samples  
- h0...h3 = filter coefficients  
- y[n] = output sample  

## Coefficients

h = [1, 2, 2, 1]

## Features
- 4-tap FIR filter in VHDL
- Parrallel + multiplier + adder tree architecure
- Delay-line registers for sample history
- ROM stimulus using .mif file
- ModelSim waveform verification
- Quartus timeing and resource anaylsis
- MATLAB output comparison

## Architecture


## Design Decisions
Throughout the implementation of the filter there were some different approaches that were thought of.

To access the memory
- 32 bit rom size for all the signals to be passed at once. This seems like overkill.
- 10 bit line size with the MS two bits as extra bits to select the register to be added into. This would need more logic.
**- 8 bit line size with shift registers that pass signal to the next. **

To multiply coefficents
- Multiplexer to select the coefficients to use for each clock, would need a counter for the coefficients. This introduces more logic.
**- A multiplier for each shift registers with coefficients hard wired.**

## Timing Closure
After synthesis, there were timing errors that were reported. This was from the ROM to the result register. After further inspection, it was decided that implementing registers in between the combinational components would aid in speeding up the clock since the original design only had shift registers for the signals and a register for the final output. After the registers were added, there was still a timing errors. It was later found that Quartus had assumed a different speed that was much faster than the speed of the board which led to the data not reaching the directed registers in time. The solution was to make a SDC file to assign the clock frequency to the real board clock frequency of 50 MHz.

## Results
- Functional FIR filter implemented in VHDL
- Correct convolution output verified in simulation
- Timing closure achieved after pipelining and clock constraints
- Synthesized and ready for FPGA hardware testing

## What I Learned
- FIR filter hardware architecture
- Shift-register delay lines
- Parallel multiply-accumulate datapaths
- Pipelining for higher clock speed
- FPGA timing analysis
- Setup slack / hold slack
- Importance of SDC constraints
- Verification with MATLAB and waveforms
- Quartus synthesis

## Status
- MATLAB validation complete
- FPGA hardware testing planned
- Simulation/debug complete
- RTL design complete

## Repository Structure
fir_filter.vhd        -> Main FIR design
fir_filter.mif        -> Sample ROM contents
fir_filter_tb.vhd     -> Testbench
README.md             -> Project documentation
FIR_waveforms         -> Project Waveforms

Author - Aleanny Burgos
