# RTL-to-GDSII 4-bit Ripple Carry Adder

4-bit ripple carry adder implemented in Verilog and prepared for an RTL-to-GDSII ASIC flow using open-source EDA tools.

## Project Status

Initial RTL and testbench completed. OpenROAD/OpenLane flow results, layout screenshots, timing reports, and DRC/LVS results will be added next.

## Overview

This project implements a 4-bit ripple carry adder and takes it through the early stages of an ASIC-style design flow. The goal is to understand how RTL design connects to synthesis, floorplanning, placement, routing, timing, and physical verification.

Although the design is small, it provides exposure to the same major steps used in larger digital chip implementation flows.

## Features

- 1-bit full adder RTL
- 4-bit ripple carry adder RTL
- Self-checking testbench
- Exhaustive verification for all input combinations
- Planned synthesis using open-source ASIC tools
- Planned layout, timing, and DRC/LVS documentation

## Repository Structure

```text
rtl-to-gdsii-adder/
├── src/
│   ├── full_adder.sv
│   └── ripple_carry_adder_4bit.sv
├── tb/
│   └── ripple_carry_adder_4bit_tb.sv
├── docs/
│   ├── test_plan.md
│   ├── flow_notes.md
│   └── screenshots/
│       └── README.md
└── README.md
