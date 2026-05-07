import Lake
open Lake DSL

package «yuanxian-rh» {
  srcDir := "."
}

require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "v4.17.0"

lean_lib YXTT
lean_lib RH
