# 4-bit Ripple Carry Adder Verification Test Plan

## Objective

Verify that the 4-bit ripple carry adder correctly computes the sum and carry-out for all possible input combinations.

## Design Inputs

- `a[3:0]`: first 4-bit input
- `b[3:0]`: second 4-bit input
- `cin`: carry-in

## Design Outputs

- `sum[3:0]`: 4-bit sum output
- `cout`: carry-out

## Test Strategy

The testbench performs exhaustive verification by testing every possible combination of:

- `a` from 0 to 15
- `b` from 0 to 15
- `cin` from 0 to 1

Total test cases:

```text
16 × 16 × 2 = 512 tests
