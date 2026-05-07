import YXTT.Operator
import YXTT.TCSC
import SpectrumZeroFunctor
import SelbergTrace
import RiemannZeros

namespace YuanXian.RiemannHypothesis

/-- Critical Line Theorem -/
theorem riemann_hypothesis (D : OperatorT64) (h_tcsc : D.is_TCSC) :
    ∀ ρ ∈ riemann_zeros, ρ.re = 1/2 := by
  intro ρ hρ
  obtain ⟨λ, hλ, hφ⟩ := phi_is_surjective D h_tcsc ρ hρ
  have h_real := tcsc_implies_real_part_zero D h_tcsc λ hλ
  simp [hφ, h_real]

/-- TCSC axiom implies Riemann Hypothesis -/
theorem tcsc_implies_riemann_hypothesis (D : OperatorT64) (h_tcsc : D.is_TCSC) :
    riemann_hypothesis D h_tcsc := by
  exact riemann_hypothesis D h_tcsc

end YuanXian.RiemannHypothesis
