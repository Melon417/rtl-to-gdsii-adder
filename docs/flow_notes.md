
## 8. Add `docs/flow_notes.md`

```markdown
# RTL-to-GDSII Flow Notes

## Objective

Document the ASIC implementation flow used to take the 4-bit ripple carry adder from RTL to physical layout.

## Planned Flow

### 1. RTL Design

Write synthesizable Verilog/SystemVerilog for the full adder and 4-bit ripple carry adder.

### 2. Functional Simulation

Run the self-checking testbench to verify logical correctness before synthesis.

### 3. Logic Synthesis

Use Yosys or OpenLane synthesis flow to convert RTL into a gate-level netlist.

### 4. Floorplanning

Define the initial chip/core area, utilization target, and placement constraints.

### 5. Placement

Place standard cells inside the defined core area.

### 6. Routing

Connect placed standard cells using available metal layers.

### 7. Static Timing Analysis

Review timing reports to check whether the design meets timing constraints.

### 8. Physical Verification

Run physical checks such as:

- DRC
- LVS
- Antenna checks, if supported by the flow

### 9. GDSII Generation

Generate the final layout database for visualization and signoff review.

## Reports to Add

- Synthesis report
- Area report
- Timing report
- Routing report
- DRC report
- LVS report
