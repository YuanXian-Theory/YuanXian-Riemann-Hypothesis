import Mathlib

/-- Base class for YuanXian self-referential objects -/
class YuanXianType (α : Type u) where
  self_ref : α → α
  is_TCSC : α → Prop

instance : YuanXianType ℝ where
  self_ref x := x
  is_TCSC _ := True

instance : YuanXianType ℂ where
  self_ref z := z
  is_TCSC _ := True
