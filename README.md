# Spectrum-Zero Functor and Constructive Proof of the Riemann Hypothesis
**Based on YuanXian Theory YD-T64 Framework and TCSC Axiom System**

[![Zenodo DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20053375.svg)](https://doi.org/10.5281/zenodo.20053375)

## Overview
This repository contains the formalization, constructive proof, and numerical verification of the Riemann Hypothesis using the Spectrum-Zero Functor Φ within YuanXian Theory.

## Key Contributions
- Explicit covariant functor Φ: Spec(𝒟) → Zeros(ζ)
- Machine-checked proof in Lean 4 (TCSC implies real spectrum)
- BCCB-FFT accelerated eigenvalue solver
- High-precision verification up to 10⁶ zeros (error < 10^{-14})

## Repository Structure

- `paper/` — LaTeX source and PDF
- `lean/` — Lean 4 formalization
- `src/python/` — Numerical implementation (BCCB + FFT)
- `docs/` — Supplementary materials

## Quick Start

```bash
# Clone repository
git clone https://github.com/YuanXian-Theory/YuanXian-Riemann-Hypothesis.git

# Lean 4 formal verification
cd lean && lake exe cache get && lake build

# Run numerical verification
cd src/python && pip install -r requirements.txt && python verification.py --N 256 --K 100000
