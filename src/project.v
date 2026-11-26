# SPDX-FileCopyrightText: © 2026 mantharohan69-lang
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


@cocotb.test()
async def test_project(dut):
    dut._log.info("Start")

    # cocotb 2.0.0 uses unit="us" (singular)
    clock = Clock(dut.clk, 10, unit="us")
    cocotb.start_soon(clock.start())

    # Reset
    dut._log.info("Reset")
    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 10)
    dut.rst_n.value = 1
    await ClockCycles(dut.clk, 1)

    assert dut.uo_out.value == 0

    # Test 1: x0=1, x1=1 (0x11) and w0=1, w1=1 (0x11) -> 4 lanes * 1 = 4
    dut.ui_in.value = 0x11
    dut.uio_in.value = 0x11
    await ClockCycles(dut.clk, 1)
    assert dut.uo_out.value == 4

    # Test 2: Accumulate one more cycle -> 4 + 4 = 8
    await ClockCycles(dut.clk, 1)
    assert dut.uo_out.value == 8

    # Test 3: Negative weights w0=-2, w1=-2 (0xEE) -> 4 lanes * (1 * -2) = -8 -> acc = 0
    dut.uio_in.value = 0xEE
    await ClockCycles(dut.clk, 1)
    assert dut.uo_out.value == 0

    # Test 4: One more negative cycle -> acc = -8, ReLU clamps to 0
    await ClockCycles(dut.clk, 1)
    assert dut.uo_out.value == 0
