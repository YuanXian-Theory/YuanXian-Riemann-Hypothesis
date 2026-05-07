import YXTT.Operator
import YXTT.TCSC
import BasicDefinitions
import SpectrumZeroFunctor

namespace YuanXian.RiemannHypothesis

/-- Correspondence between heat kernel trace and zeta explicit formula -/
theorem selberg_trace_correspondence (D : OperatorT64) (h_tcsc : D.is_TCSC) :
    ∀ (f : ℝ → ℂ), trace_heat_kernel D f = guinand_weil_formula f := by
  intro f
  -- Heat kernel expansion on T^64
  have h_heat := heat_kernel_expansion D h_tcsc f
  -- Guinand-Weil formula
  have h_zeta := guinand_weil_formula f
  exact trace_zeta_correspondence h_heat h_zeta

/-- Surjectivity of Φ: every Riemann zero is hit by the functor -/
theorem phi_is_surjective (D : OperatorT64) (h_tcsc : D.is_TCSC) :
    ∀ ρ ∈ riemann_zeros, ∃ λ ∈ spectrum D, phi.map λ = ρ := by
  intro ρ hρ
  have h_density := spectral_density_match D h_tcsc ρ hρ
  exact exists_eigenvalue h_density

end YuanXian.RiemannHypothesis
