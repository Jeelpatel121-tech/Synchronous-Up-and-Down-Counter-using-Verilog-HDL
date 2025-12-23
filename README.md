# Synchronous Up and Down Counter (Verilog HDL)

## Description
This project implements a synchronous up and down counter using Verilog HDL. The counter updates its output on the rising edge of the clock. The counting direction is controlled using an UP/DOWN signal, and counting can be enabled or disabled using an ENABLE signal.

## Features
- Synchronous counting
- Up and down control
- Enable input
- Asynchronous active-low reset
- Parameterized counter width
- Testbench for verification

## Inputs and Outputs

| Signal | Description |
|------|------------|
| clk | Clock input |
| rst_n | Active-low asynchronous reset |
| enable | Enables counting |
| up_down | 1: Up count, 0: Down count |
| count | Counter output |

## Operation
- On reset, counter value becomes zero
- When enable = 1:
  - up_down = 1 → counter increments
  - up_down = 0 → counter decrements
- When enable = 0, counter holds its value

## Tools Used
- Verilog HDL
- Xilinx Vivado / ModelSim / Icarus Verilog

## Author
Designed for learning and academic purposes.
