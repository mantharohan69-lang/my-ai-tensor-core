# Tiny Tapeout project information
project:
  title:        "4-Lane Signed Tensor Core"
  author:       "mantharohan69-lang"
  discord:      ""
  description:  "4-lane signed INT4/INT8 multiply-accumulate tensor core with ReLU activation"
  language:     "Verilog"
  clock_hz:     0

  tiles: "1x1"

  top_module:  "tt_um_tensor_core"

  source_files:
    - "project.v"

pinout:
  # Inputs
  ui[0]: "x0_0"
  ui[1]: "x0_1"
  ui[2]: "x0_2"
  ui[3]: "x0_3"
  ui[4]: "x1_0"
  ui[5]: "x1_1"
  ui[6]: "x1_2"
  ui[7]: "x1_3"

  # Outputs
  uo[0]: "relu_0"
  uo[1]: "relu_1"
  uo[2]: "relu_2"
  uo[3]: "relu_3"
  uo[4]: "relu_4"
  uo[5]: "relu_5"
  uo[6]: "relu_6"
  uo[7]: "relu_7"

  # Bidirectional pins
  uio[0]: "w0_0"
  uio[1]: "w0_1"
  uio[2]: "w0_2"
  uio[3]: "w0_3"
  uio[4]: "w1_0"
  uio[5]: "w1_1"
  uio[6]: "w1_2"
  uio[7]: "w1_3"

# Do not change!
yaml_version: 6
