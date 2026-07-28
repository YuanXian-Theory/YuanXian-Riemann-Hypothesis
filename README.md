# YuanXian-Riemann-Hypothesis

**Formalization of the Riemann Hypothesis under YuanXian Theory (YD-T64 Framework & TCSC Axiom System)**

This repository supports multiple papers on the topological / spectral treatment of the Riemann Hypothesis within YuanXian Theory.

---

## Supported Papers

### Paper 1 (May 2026)
**Spectrum-Zero Functor and Constructive Proof of the Riemann Hypothesis**  
*Based on YuanXian Theory YD-T64 Framework and TCSC Axiom System*

- DOI: [10.5281/zenodo.20053375](https://doi.org/10.5281/zenodo.20053375)
- Key contributions:
  - Explicit covariant functor Φ : Spec(𝒟) → Zeros(ζ)
  - Machine-checked proof in Lean 4 (TCSC implies real spectrum)
  - BCCB-FFT accelerated eigenvalue solver
  - High-precision verification up to 10⁶ zeros (error < 10⁻¹⁴)
- Location: `lean/RH/` (BasicDefinitions, CriticalLine, RiemannZeros, SelbergTrace, SpectralLocking, SpectrumZeroFunctor)

### Paper 2 (July 2026)
**Topological Judgment of the Riemann Hypothesis — Holistic Unification based on the T⁶⁴ Self-Referential Toroidal Organism (Ring-Style Monistic Final Version)**

- Author: Zhenyuan Acharya
- Date: July 27, 2026
- Key contributions:
  - Construction of the spectral-zero functor Φ under the ring-style monistic ontology
  - Definition of the self-referential harmonic operator 𝒟 = −Δ_T⁶⁴ + V(Ψ_SR)
  - Topological reduction of RH to the vanishing of the real part of Spec(𝒟)
  - Locking of all non-trivial zeros on the critical line by T⁶⁴ compactness + TCSC end-lessness
  - Dual-engine (Lean 4 + Rocq) interface-layer formalization
- Location: `lean/RH/TopologicalJudgment.lean`, `lean/RH/SpectralZeroFunctor_Paper2.lean`

---

## Overview

Both papers treat the Riemann Hypothesis not as a proposition awaiting a classical ZFC proof, but as a necessary manifestation of the topology of the 64-dimensional compact self-referential torus T⁶⁴ under the True-Circle Self-Consistency (TCSC) law.

Paper 1 focuses on the constructive spectral-zero functor and numerical verification.  
Paper 2 re-formulates the same result in the final ring-style monistic language, emphasising ontological unity and the vanishing of dualistic notions such as “proof” versus “manifestation.”

## Repository Structure

```
.
├── lean/
│   ├── RH/                    # Core RH formalizations (Papers 1 & 2)
│   │   ├── BasicDefinitions.lean
│   │   ├── CriticalLine.lean
│   │   ├── RiemannZeros.lean
│   │   ├── SelbergTrace.lean
│   │   ├── SpectralLocking.lean
│   │   ├── SpectrumZeroFunctor.lean
│   │   ├── TopologicalJudgment.lean      # Paper 2
│   │   └── SpectralZeroFunctor_Paper2.lean
│   └── YXTT/                  # Supporting YXTT modules
├── src/python/               # Numerical verification (BCCB + FFT)
├── LICENSE
└── README.md
```

## Quick Start

```bash
git clone https://github.com/YuanXian-Theory/YuanXian-Riemann-Hypothesis.git
cd YuanXian-Riemann-Hypothesis

# Lean 4 formal verification
cd lean && lake exe cache get && lake build

# Numerical verification
cd ../src/python && pip install -r requirements.txt
python verification.py --N 256 --K 100000
```

## Related Repositories

- [YXT-Formalization](https://github.com/YuanXian-Theory/YXT-Formalization) — Main formalization repository (TCSC, Langlands-YXT, Commensuration, …)
- [YXT-Millennium-Seven](https://github.com/YuanXian-Theory/YXT-Millennium-Seven) — Unified treatment of the seven Millennium Problems

## License

MIT License (see LICENSE file).
