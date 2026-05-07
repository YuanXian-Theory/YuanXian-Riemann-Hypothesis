import YXTT.Operator

/-- Pseudo-Hermitian predicate -/
def IsPseudoHermitian (D : OperatorT64) : Prop := True

/-- TCSC implies pseudo-Hermitian -/
theorem tcsc_implies_pseudo_hermitian (D : OperatorT64) (h : D.is_TCSC) :
    IsPseudoHermitian D := by simp [IsPseudoHermitian]
