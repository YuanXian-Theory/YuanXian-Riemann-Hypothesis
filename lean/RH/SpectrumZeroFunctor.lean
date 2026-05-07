import YXTT.Operator
import YXTT.TCSC
import Mathlib.Data.Set.Basic

namespace YuanXian.RiemannHypothesis

/-- The Spectrum-Zero Functor Φ -/
structure SpectrumZeroFunctor where
  /-- Map from eigenvalue to Riemann zero -/
  map : ℂ → ℂ
  /-- Well-defined on the spectrum of D -/
  well_defined : ∀ (D : OperatorT64) (h_tcsc : D.is_TCSC) (λ : ℂ),
    λ ∈ spectrum D → map λ = 1/2 + Complex.I * λ.im

/-- The canonical spectrum-zero functor -/
def phi : SpectrumZeroFunctor where
  map λ := 1/2 + Complex.I * λ.im
  well_defined D h_tcsc λ hλ := by
    simp [map]
    -- Real part is forced to zero by TCSC (see CriticalLine.lean)
    have h_real := tcsc_implies_real_part_zero D h_tcsc λ hλ
    simp [h_real]

/-- Φ is a well-defined map from spectrum to critical line -/
theorem phi_maps_to_critical_line (D : OperatorT64) (h_tcsc : D.is_TCSC) (λ : ℂ)
    (hλ : λ ∈ spectrum D) :
    (phi.map λ).re = 1/2 := by
  simp [phi]
  exact tcsc_implies_real_part_zero D h_tcsc λ hλ

end YuanXian.RiemannHypothesis
