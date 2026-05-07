import Mathlib.Data.Complex.Basic

namespace YuanXian.RiemannHypothesis

/-- Non-trivial zeros of the Riemann zeta function -/
def riemann_zeros : Set ℂ :=
  { ρ : ℂ | ζ ρ = 0 ∧ ρ.re ≠ 0 ∧ ρ.im ≠ 0 }

/-- Critical line -/
def critical_line : Set ℂ :=
  { s : ℂ | s.re = 1/2 }

/-- Riemann Hypothesis statement in this framework -/
def riemann_hypothesis_holds : Prop :=
  ∀ ρ ∈ riemann_zeros, ρ ∈ critical_line

end YuanXian.RiemannHypothesis
