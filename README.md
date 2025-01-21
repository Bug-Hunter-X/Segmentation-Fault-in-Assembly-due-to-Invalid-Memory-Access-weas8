# Assembly Code Bug: Segmentation Fault due to Invalid Memory Access

This repository demonstrates a common error in assembly programming: a segmentation fault caused by attempting to access memory outside the allowed range.  The bug is caused by incorrect pointer arithmetic in the `mov` instruction.  The solution shows how to add bounds checking to prevent the error.

## Bug

The `bug.asm` file contains assembly code that exhibits the segmentation fault. The core problem lies in the `mov` instruction that may access invalid memory based on the values of the registers.

## Solution

The `bugSolution.asm` file demonstrates the corrected code. It includes a check to ensure that the calculated memory address is within the bounds of the allocated memory before accessing it, thereby preventing the segmentation fault.