# verification.py
from fft_eigen_solver import BCCB_FFT_EigenSolver
import numpy as np

solver = BCCB_FFT_EigenSolver(N=256)
evals = solver.compute_eigenvalues(k=1000000)

real_parts = np.real(evals)
max_dev = np.max(np.abs(real_parts))

print(f"Max real part deviation: {max_dev:.2e}")
print(f"Verification passed: {max_dev < 1e-12}")
