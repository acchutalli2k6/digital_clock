# digital_clock

Description:
A synchronous digital clock implementation designed using Verilog 2001 and developed in Xilinx Vivado. This project features a hierarchical design that tracks hours, minutes, and seconds, including a testbench for verification.

Time Keeping: Tracks time in HH:MM:SS format.

Synchronous Reset: Ensures the clock starts from a known state (00:00:00).

Modular Design: Separate counters for different time units.

Simulation Ready: Includes a comprehensive testbench to verify transitions (e.g., 59 seconds to 1 minute).

This repo contains the Verilog file and its testbench.

Points to improve:

To implement a frequency divider for the clock input, instead of defining it in the testbench.

To display BCD output in the simulation or on the FPGA Board instead of hexadecimal numbers.
