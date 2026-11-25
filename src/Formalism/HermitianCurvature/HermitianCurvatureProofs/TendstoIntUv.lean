module

public import Formalism.HermitianCurvature.StatementB
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumPairAtStarMul
import Formalism.HermitianCurvature.StatementQ

@[expose] public section

open Matrix MeasureTheory Filter Topology
open scoped ComplexConjugate InnerProductSpace ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P5.HerB

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA

open scoped Matrix.Norms.Elementwise

section HS

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

theorem hs_add_left (A A' C : Wq →L[ℂ] Wp) : B.hsInner (A + A') C = B.hsInner A C + B.hsInner A' C := by
  have h : B.hsVec (A + A') = B.hsVec A + B.hsVec A' := by
    unfold B.hsVec; ext i; simp
  unfold B.hsInner
  rw [h, inner_add_right]

theorem hs_add_right (A C C' : Wq →L[ℂ] Wp) : B.hsInner A (C + C') = B.hsInner A C + B.hsInner A C' := by
  have h : B.hsVec (C + C') = B.hsVec C + B.hsVec C' := by
    unfold B.hsVec; ext i; simp
  unfold B.hsInner
  rw [h, inner_add_left]

theorem hs_smul_left (a : ℂ) (A C : Wq →L[ℂ] Wp) : B.hsInner (a • A) C = a * B.hsInner A C := by
  have h : B.hsVec (a • A) = a • B.hsVec A := by
    unfold B.hsVec; ext i; simp
  unfold B.hsInner
  rw [h, inner_smul_right]

theorem hs_smul_right (a : ℂ) (A C : Wq →L[ℂ] Wp) : B.hsInner A (a • C) = conj a * B.hsInner A C := by
  have h : B.hsVec (a • C) = a • B.hsVec C := by
    unfold B.hsVec; ext i; simp
  unfold B.hsInner
  rw [h, inner_smul_left]

end HS

section Lim

variable {α : Type*} [MeasurableSpace α] {μ : Measure α}

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

end Lim

end Formalism.FourierDecayAlt.P5.HerB
