# Rocq / Coq Formalization (Axiom & Interface Layer)

This directory contains the Rocq (Coq) formalization supporting **Paper 2**:

> *Topological Judgment of the Riemann Hypothesis — Holistic Unification based on the T⁶⁴ Self-Referential Toroidal Organism (Ring-Style Monistic Final Version)*

## Files

| File | Content |
|------|--------|
| `TCSC_Axioms.v` | Four core laws (TCSC / FSC / STM / SRM) and T⁶⁴ compactness |
| `SpectralZeroFunctor.v` | Spectral-zero functor Φ and bijectivity interface |
| `TopologicalJudgment.v` | Core theorems: vanishing real part of Spec(D) and RH |

## Scope

- **Axiom layer** + **mapping-interface layer** only.
- Full analytic content of the spectrum of the self-referential harmonic operator relies on functional analysis; the Rocq code verifies interface compatibility and the logical dependence on TCSC.

## Build

```bash
coqc TCSC_Axioms.v
coqc SpectralZeroFunctor.v
coqc TopologicalJudgment.v
```
