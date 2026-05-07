import YXTT.Operator
import YXTT.TCSC
import BasicDefinitions

namespace YuanXian.RiemannHypothesis

/-- Spectrum-Zero Functor Φ -/
structure SpectrumZeroFunctor where
  map : ℂ → ℂ
  well_defined : ∀ (D : OperatorT64) (h : D.is_TCSC) (λ : ℂ),
    λ ∈ spectrum D → map λ = 1/2 + Complex.I * λ.im

/-- The canonical functor used in this paper -/
def phi : SpectrumZeroFunctor where
  map λ := 1/2 + Complex.I * λ.im
  well_defined D h_tcsc λ hλ := by
    simp
    exact tcsc_implies_real_part_zero D h_tcsc λ hλ

theorem phi_maps_to_critical_line (D : OperatorT64) (h_tcsc : D.is_TCSC) 
    (λ : ℂ) (hλ : λ ∈ spectrum D) :
    (phi.map λ).re = 1/2 := by
  simp [phi]
  exact tcsc_implies_real_part_zero D h_tcsc λ hλ

end YuanXian.RiemannHypothesis
