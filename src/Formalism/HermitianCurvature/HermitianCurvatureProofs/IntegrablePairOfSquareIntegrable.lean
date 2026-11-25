module

public import Formalism.HermitianCurvature.StatementB
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumPairAtStarMul
public import Formalism.HermitianCurvature.StatementQ

@[expose] public section

open Matrix MeasureTheory Filter Topology
open scoped ComplexConjugate InnerProductSpace ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P5.HerB

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA

open scoped Matrix.Norms.Elementwise

section L2

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

theorem norm_hs_le (A C : Wq →L[ℂ] Wp) : ‖B.hsInner A C‖ ≤ ‖B.hsInner A A‖ + ‖B.hsInner C C‖ := by
  unfold B.hsInner
  have h1 := norm_inner_le_norm (𝕜 := ℂ) (B.hsVec C) (B.hsVec A)
  rw [inner_self_eq_norm_sq_to_K, inner_self_eq_norm_sq_to_K]
  simp only [norm_pow, RCLike.norm_ofReal, abs_norm]
  nlinarith [norm_nonneg (B.hsVec A), norm_nonneg (B.hsVec C), sq_nonneg (‖B.hsVec A‖ - ‖B.hsVec C‖)]

end L2

section Cls

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
  [FiniteDimensional ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

end Cls

section Top

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]

end Top

end Formalism.FourierDecayAlt.P5.HerB
