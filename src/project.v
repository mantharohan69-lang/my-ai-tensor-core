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
  ui: "x0_0"
  ui: "x0_1"
  ui: "x0_2"
  ui: "x0_3"
  ui: "x1_0"
  ui: "x1_1"
  ui: "x1_2"
  ui: "x1_3"

  # Outputs
  uo: "relu_0"
  uo: "relu_1"
  uo: "relu_2"
  uo: "relu_3"
  uo: "relu_4"
  uo: "relu_5"
  uo: "relu_6"
  uo: "relu_7"

  # Bidirectional pins
  uio: "w0_0"
  uio: "w0_1"
  uio: "w0_2"
  uio: "w0_3"
  uio: "w1_0"
  uio: "w1_1"
  uio: "w1_2"
  uio: "w1_3"

# Do not change!
yaml_version: 6
