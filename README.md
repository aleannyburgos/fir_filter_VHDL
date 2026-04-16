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

## Status
- MATLAB validation complete
- FPGA hardware testing planned
- Simulation/debug in progress
- RTL design in progress

## Notes
- Timing analysis has some issues that are being worked on.
