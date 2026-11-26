<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This design implements a 4-lane signed multiply-accumulate (MAC) tensor core (`tt_um_tensor_core`) with a Rectified Linear Unit (ReLU) activation output. 

On each rising clock edge, two 4-bit signed input activations (`x0 = ui_in[3:0]`, `x1 = ui_in[7:4]`) and two 4-bit signed weights (`w0 = uio_in[3:0]`, `w1 = uio_in[7:4]`) are sign-extended to 8 bits and multiplied across four parallel lanes (`x0*w0 + x1*w1 + x0*w0 + x1*w1`). The resulting sum is added to a 20-bit signed accumulator (`acc`), and the lower 8 bits of the ReLU-clamped result (`max(0, acc)`) are driven onto `uo_out[7:0]`.

## How to test

1. Assert `rst_n = 0` for at least 10 clock cycles with `ui_in = 0x00` and `uio_in = 0x00`, then release `rst_n = 1` and verify `uo_out == 0x00`.
2. Drive `ui_in = 0x11` (`x0 = 1, x1 = 1`) and `uio_in = 0x11` (`w0 = 1, w1 = 1`) for one clock cycle and verify `uo_out == 0x04` (`4 * (1 * 1) = 4`).
3. Hold `ui_in = 0x11` and `uio_in = 0x11` for a second clock cycle and verify accumulation (`uo_out == 0x08`).
4. Drive negative weights `uio_in = 0xEE` (`w0 = -2, w1 = -2`) to verify signed subtraction and ReLU clamping back to `0x00`.

## External hardware

No external hardware is required; inputs and weights can be driven directly from the Tiny Tapeout demo board RP2040/RP2350 microcontroller or external switches.
