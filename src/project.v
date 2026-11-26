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
  "ui\u005B0\u005D": "x0[0]"
  "ui\u005B1\u005D": "x0[1]"
  "ui\u005B2\u005D": "x0[2]"
  "ui\u005B3\u005D": "x0[3]"
  "ui\u005B4\u005D": "x1[0]"
  "ui\u005B5\u005D": "x1[1]"
  "ui\u005B6\u005D": "x1[2]"
  "ui\u005B7\u005D": "x1[3]"

  # Outputs
  "uo\u005B0\u005D": "relu_out[0]"
  "uo\u005B1\u005D": "relu_out[1]"
  "uo\u005B2\u005D": "relu_out[2]"
  "uo\u005B3\u005D": "relu_out[3]"
  "uo\u005B4\u005D": "relu_out[4]"
  "uo\u005B5\u005D": "relu_out[5]"
  "uo\u005B6\u005D": "relu_out[6]"
  "uo\u005B7\u005D": "relu_out[7]"

  # Bidirectional pins
  "uio\u005B0\u005D": "w0[0]"
  "uio\u005B1\u005D": "w0[1]"
  "uio\u005B2\u005D": "w0[2]"
  "uio\u005B3\u005D": "w0[3]"
  "uio\u005B4\u005D": "w1[0]"
  "uio\u005B5\u005D": "w1[1]"
  "uio\u005B6\u005D": "w1[2]"
  "uio\u005B7\u005D": "w1[3]"

# Do not change!
yaml_version: 6
