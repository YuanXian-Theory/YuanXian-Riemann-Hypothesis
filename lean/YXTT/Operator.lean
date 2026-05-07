import YXTT.T64
import Mathlib.Analysis.InnerProductSpace.PiL2

structure Operator (α : Type u) where
  apply : α → ℂ

abbrev OperatorT64 := Operator T64

def spectrum (D : OperatorT64) : Set ℂ :=
  { λ | ∃ ψ : T64 → ℂ, ψ ≠ 0 ∧ ∀ x, D.apply ψ x = λ * ψ x }
