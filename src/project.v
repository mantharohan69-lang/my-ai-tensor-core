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
  ui[0]: "x0[0]"
  ui[1]: "x0[1]"
  ui[2]: "x0[2]"
  ui[3]: "x0[3]"
  ui[4]: "x1[0]"
  ui[5]: "x1[1]"
  ui[6]: "x1[2]"
  ui[7]: "x1[3]"

  # Outputs
  uo[0]: "relu_out[0]"
  uo[1]: "relu_out[1]"
  uo[2]: "relu_out[2]"
  uo[3]: "relu_out[3]"
  uo[4]: "relu_out[4]"
  uo[5]: "relu_out[5]"
  uo[6]: "relu_out[6]"
  uo[7]: "relu_out[7]"

  # Bidirectional pins
  uio[0]: "w0[0]"
  uio[1]: "w0[1]"
  uio[2]: "w0[2]"
  uio[3]: "w0[3]"
  uio[4]: "w1[0]"
  uio[5]: "w1[1]"
  uio[6]: "w1[2]"
  uio[7]: "w1[3]"

yaml_version: 6
