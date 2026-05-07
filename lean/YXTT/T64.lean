import YXTT.Basic
import Mathlib.Topology.Instances.Circle

/-- 64-dimensional torus T⁶⁴ = (S¹)⁶⁴ -/
abbrev T64 : Type := Fin 64 → Circle

instance : YuanXianType T64 where
  self_ref := id
  is_TCSC _ := True
