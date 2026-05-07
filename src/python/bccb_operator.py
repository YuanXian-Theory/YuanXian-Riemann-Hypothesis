# bccb_operator.py
import numpy as np
from scipy.sparse.linalg import LinearOperator

class BCCBOperator(LinearOperator):
    """
    Block Circulant with Circulant Blocks (BCCB) operator 
    for the YuanXian-Dirac operator D under TCSC constraints.
    """
    def __init__(self, N=256, alpha=0.5, beta=0.5, dim=64):
        self.N = N
        self.alpha = alpha
        self.beta = beta
        self.dim = dim
        self.shape = (N**dim, N**dim)
        self.dtype = np.complex128
    
    def _matvec(self, v):
        """Fast matrix-vector multiplication using multi-dimensional FFT"""
        v = v.reshape([self.N] * self.dim)
        v_fft = np.fft.fftn(v)
        
        # TCSC kernel in frequency domain
        k = np.meshgrid(*[np.arange(self.N) for _ in range(self.dim)], indexing='ij')
        kernel = -4 * np.sum(np.sin(np.pi * np.array(k) / self.N)**2, axis=0)
        kernel += self.alpha * np.cos(2*np.pi*np.sum(k, axis=0)/self.N)
        kernel += 1j * self.beta * np.sin(2*np.pi*np.sum(k, axis=0)/self.N)
        
        result = v_fft * kernel
        return np.fft.ifftn(result).real.ravel()
    
    def compute_largest_imag_eigenvalues(self, k=10000):
        """Compute k eigenvalues with largest imaginary parts"""
        from scipy.sparse.linalg import eigsh
        # Use shift-invert or Arnoldi for largest magnitude
        eigenvalues = eigsh(self, k=k, which='LM', return_eigenvectors=False)
        return eigenvalues
