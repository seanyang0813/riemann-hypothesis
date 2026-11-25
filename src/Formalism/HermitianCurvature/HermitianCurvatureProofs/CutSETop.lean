module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumPairLevStarMul
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DecayPairEstimate
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HasFDerivAtFsvOther
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftMemMatrixAlgebra
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionInsertionDiagonalCompat
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ScalarCommuteTransposedRMatrixEntry
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftMatrixTransferConjTransposeCommute
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PairOperatorCommute

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEBTCls, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEIbTInv, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWdExpand, Formalism.HermitianCurvature.HermitianCurvatureProofs.ExpansionSiteZeroInduction, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETop

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEBTCls =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEBTCls", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.HasFDerivAtFsvOther\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftMemMatrixAlgebra\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumPairLevStarMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA

section BTClsPf

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]
  {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem opClos_op (X : ActualOps k r z z' π π') (l : Fin r) (B : Submodule ℂ (RadSp k r z z' π π')) (j : Fin 6) :
    ∀ Φ ∈ OpClos X l B, X.op l j Φ ∈ OpClos X l B := by
  intro Φ hΦ
  induction hΦ using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨js, Ψ, hΨ, rfl⟩ := hx
    exact Submodule.subset_span ⟨j :: js, Ψ, hΨ, rfl⟩
  | zero => rw [map_zero]; exact Submodule.zero_mem _
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
  | smul a x _ hx => rw [map_smul]; exact Submodule.smul_mem _ a hx

theorem act_mem_of_entSub {S : Type} [Fintype S] [DecidableEq S] (C : Submodule ℂ (RadSp k r z z' π π'))
    (M : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) (hM : M ∈ entSub (presAlg C)) (u : Ix S → RadSp k r z z' π π')
    (hu : ∀ b, u b ∈ C) (b : Ix S) : act M u b ∈ C := by
  exact Formalism.FourierDecayAlt.P5.HerA.act_mem_pres M (fun a c => hM a c) u hu b

end BTClsPf

theorem boundary_torus_closure : BTCls := by
  intro Wp Wq _ _ _ _ _ _ S _ _ P z z' π π' X μ L st l0 D hD _ _ _ _ _ _ l _ u hu
  have hAL := hD.2.2.1
  have hop : ∀ (j : Fin 6) (Φ : (RadSp P.k P.r z z' π π')), Φ ∈ (ClsE S P z z' π π' X L st l0 D l) → X.op l j Φ ∈ (ClsE S P z z' π π' X L st l0 D l) :=
    fun j Φ hΦ => opClos_op X l _ j Φ hΦ
  have hmk : ∀ i j : Fin 6, mkP (X.op l i) (X.op l j) ∈ Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l) := fun i j =>
    (show (∀ Φ ∈ (ClsE S P z z' π π' X L st l0 D l), (mkP (X.op l i) (X.op l j)).1 Φ ∈ (ClsE S P z z' π π' X L st l0 D l)) ∧
        ∀ Φ ∈ (ClsE S P z z' π π' X L st l0 D l), (mkP (X.op l i) (X.op l j)).2.unop Φ ∈ (ClsE S P z z' π π' X L st l0 D l) from
      ⟨fun Φ hΦ => hop i Φ hΦ, fun Φ hΦ => hop j Φ hΦ⟩)
  have hmkneg : ∀ i j : Fin 6, mkP (X.op l i) (-X.op l j) ∈ Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l) := fun i j =>
    (show (∀ Φ ∈ (ClsE S P z z' π π' X L st l0 D l), (mkP (X.op l i) (-X.op l j)).1 Φ ∈ (ClsE S P z z' π π' X L st l0 D l)) ∧
        ∀ Φ ∈ (ClsE S P z z' π π' X L st l0 D l), (mkP (X.op l i) (-X.op l j)).2.unop Φ ∈ (ClsE S P z z' π π' X L st l0 D l) from
      ⟨fun Φ hΦ => hop i Φ hΦ, fun Φ hΦ => by
        show (-X.op l j) Φ ∈ (ClsE S P z z' π π' X L st l0 D l)
        rw [LinearMap.neg_apply]
        exact Submodule.neg_mem _ (hop j Φ hΦ)⟩)
  have hp : L.p l ∈ Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l) := by rw [hAL.1 l]; exact hmkneg 0 3
  have hc : L.c l ∈ Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l) := by rw [hAL.2.2.1 l]; exact hmk 1 4
  have hci : L.ci l ∈ Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l) := by rw [hAL.2.2.2.1 l]; exact hmk 2 5
  have hconv : ∀ M : SlopeTestRemainingChoices S (Pr (RadSp P.k P.r z z' π π')),
      M ∈ Formalism.FourierDecayAlt.P5.matSub (Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l)).toSubalgebra (Ix S) →
        M ∈ Formalism.FourierDecayAlt.P5.HerA.entSub (Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l)) := fun M h => h
  have hins : ∀ (a : S) (M : M2 (Pr (RadSp P.k P.r z z' π π'))), (∀ i j, M i j ∈ Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l)) →
      ins a (lift0 M : M2 (SlopeTestRemainingChoices S (Pr (RadSp P.k P.r z z' π π')))) ∈
        Formalism.FourierDecayAlt.P5.matSub (Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l)).toSubalgebra (Ix S) := by
    intro a M hM
    apply Formalism.FourierDecayAlt.P5.ins_mem
    have h : ∀ (i j : Fin 2) (p q : Ix S), ((lift0 M : M2 (SlopeTestRemainingChoices S (Pr (RadSp P.k P.r z z' π π')))) i j) p q ∈
        (Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l)).toSubalgebra := by
      intro i j p q
      simp only [lift0, Matrix.map_apply, io, Matrix.scalar_apply, Matrix.diagonal_apply]
      split_ifs
      · exact hM i j
      · exact Subalgebra.zero_mem _
    exact h
  refine ⟨fun le b => ?_, fun le b => ?_, fun a i j b => ?_⟩
  · refine act_mem_of_entSub _ _ (hconv _ (hins le.intersection_update_fsHerm_neg_one _ ?_)) u hu b
    intro i j
    split_ifs
    · exact Formalism.FourierDecayAlt.P5.Ts_mem (T := (Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l)).toSubalgebra) (site L l) le.pt
        hp hc hci i j
    · exact star_mem
        (Formalism.FourierDecayAlt.P5.Ts_mem (T := (Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l)).toSubalgebra) (site L l) le.pt
          hp hc hci i j)
  · refine act_mem_of_entSub _ _ (hconv _ (hins le.intersection_update_fsHerm_neg_one _ ?_)) u hu b
    intro i j
    split_ifs
    · exact Formalism.FourierDecayAlt.P5.HerA.matrix_two_entries_mem (zero_mem _) (neg_mem (star_mem hci)) (star_mem hc)
        (add_mem (algebraMap_mem _ _) (star_mem hp)) i j
    · exact Formalism.FourierDecayAlt.P5.HerA.matrix_two_entries_mem (zero_mem _) (neg_mem hci) hc
        (add_mem (algebraMap_mem _ _) hp) i j
  · exact act_mem_of_entSub _ _
      (hconv _ (Formalism.FourierDecayAlt.P5.eU_mem (C := (Formalism.FourierDecayAlt.P5.HerA.presAlg (ClsE S P z z' π π' X L st l0 D l)).toSubalgebra) a i j)) u hu b

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEBTCls =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEIbTInv =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEIbTInv", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionInsertionDiagonalCompat\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ScalarCommuteTransposedRMatrixEntry\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftMatrixTransferConjTransposeCommute\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.FourierDecayAlt.Wd

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

namespace IbTInvPf

variable {K A S : Type} [Field K] [StarRing K] [Ring A] [StarRing A] [Algebra K A] [StarModule K A]
  [Fintype S] [DecidableEq S]

theorem plus_inv (σ : Site A) (hW : YangianSpanCharacter.T.WeylRel σ.p σ.c σ.ci) (Y : K) (hY : star Y = Y) :
    (!![0, -star σ.ci; star σ.c, algebraMap K A (Y + 1) + star σ.p] : M2 A) * (Ts σ Y)ᴴ = 1 := by
  have hs := congrArg star hW.2.2
  simp only [star_mul, star_add] at hs
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Ts, YangianSpanCharacter.T.Tm, Matrix.mul_apply, Fin.sum_univ_two, Matrix.conjTranspose_apply]
  · rw [← star_mul, hW.1, star_one]
  · rw [← algebraMap_star_comm, hY, mul_add, add_mul, add_mul, one_mul, hs, Algebra.commutes]
    abel
  · rw [← star_mul, hW.2.1, star_one]

theorem minus_inv (σ : Site A) (hW : YangianSpanCharacter.T.WeylRel σ.p σ.c σ.ci) (Y : K) :
    (!![0, -σ.ci; σ.c, algebraMap K A (Y - 1) + σ.p] : M2 A) * ((Ts σ Y).map star)ᴴ = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Ts, YangianSpanCharacter.T.Tm, Matrix.mul_apply, Fin.sum_univ_two, Matrix.conjTranspose_apply]
  · exact hW.2.1
  · rw [mul_add, add_mul, sub_mul, one_mul, hW.2.2, Algebra.commutes]
    abel
  · exact hW.1

theorem ivlet_mul_star (σ : Site A) (hW : YangianSpanCharacter.T.WeylRel σ.p σ.c σ.ci) (l : Letter K S)
    (hl : star l.pt = l.pt) : ivlet σ l * star (vlet σ l) = 1 := by
  unfold ivlet vlet
  rw [Formalism.FourierDecayAlt.P.Wd1.ins_star _ _ (Formalism.FourierDecayAlt.P.Wd7.freeOf2_lift _ _),
    ← Formalism.FourierDecayAlt.P.Wd1.ins_mul _ _ _ (Formalism.FourierDecayAlt.P.Wd7.freeOf2_lift _ _), Formalism.FourierDecayAlt.P.Wd7.liftMatrix_conjTranspose,
    ← Formalism.FourierDecayAlt.P.Wd7.lift_reduction_mul]
  cases hpl : l.plus
  · simp only [Bool.false_eq_true, ite_false]
    rw [minus_inv σ hW l.pt, _root_.Formalism.FourierDecayAlt.P.Wd8.liftMatrix_one, Formalism.FourierDecayAlt.P.Wd1.ins_one]
  · simp only [ite_true]
    rw [plus_inv σ hW l.pt hl, _root_.Formalism.FourierDecayAlt.P.Wd8.liftMatrix_one, Formalism.FourierDecayAlt.P.Wd1.ins_one]

theorem ibT_mul_star (σ : Site A) (hσ : IsSite σ) :
    ∀ w : List (Letter K S), (∀ l ∈ w, star l.pt = l.pt) → ibT σ w * star (bT σ w) = 1
  | [], _ => by simp [ibT, bT]
  | l :: w, h => by
    have hw := ibT_mul_star σ hσ w (fun l' hl' => h l' (List.mem_cons_of_mem _ hl'))
    rw [ibT, bT, star_mul, mul_assoc, ← mul_assoc (ibT σ w), hw, one_mul,
      ivlet_mul_star σ hσ.1 l (h l (by simp))]

end IbTInvPf

theorem boundary_torus_invariance : IbTInv := by
  intro K A S _ _ _ _ _ _ _ _ σ w hσ hw
  exact IbTInvPf.ibT_mul_star σ hσ w hw

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEIbTInv =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWdExpand =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWdExpand", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Filter Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

theorem wdx_diff {n m : ℕ} {f : ℂ → ℂ} (hf : ContDiffOn ℝ n f {t | t ≠ 0}) (hm : m < n) {t : ℂ} (ht : t ≠ 0) :
    DifferentiableAt ℝ (iteratedFDeriv ℝ m f) t := by
  have hs : IsOpen {t : ℂ | t ≠ 0} := isOpen_ne
  have hd := hf.differentiableOn_iteratedFDerivWithin (by exact_mod_cast hm) hs.uniqueDiffOn
  have hdt : DifferentiableAt ℝ (iteratedFDerivWithin ℝ m f {t | t ≠ 0}) t :=
    (hd t ht).differentiableAt (hs.mem_nhds ht)
  exact hdt.congr_of_eventuallyEq (Filter.eventuallyEq_of_mem (hs.mem_nhds ht)
    fun s hs' => (iteratedFDerivWithin_of_isOpen m hs hs').symm)

theorem wdx_hasFDerivAt_iter {m : ℕ} {f : ℂ → ℂ} {t : ℂ}
    (hd : DifferentiableAt ℝ (iteratedFDeriv ℝ m f) t) (w : Fin m → ℂ) :
    HasFDerivAt (fun s => iteratedFDeriv ℝ m f s w)
      ((ContinuousMultilinearMap.apply ℝ (fun _ : Fin m => ℂ) ℂ w).comp (fderiv ℝ (iteratedFDeriv ℝ m f) t)) t := by
  exact (ContinuousMultilinearMap.apply ℝ (fun _ : Fin m => ℂ) ℂ w).hasFDerivAt.comp t hd.hasFDerivAt

theorem wdx_step_eval {m : ℕ} {f : ℂ → ℂ} {t : ℂ} (h : ℂ) (w : Fin m → ℂ) :
    (fderiv ℝ (iteratedFDeriv ℝ m f) t h) w = iteratedFDeriv ℝ (m + 1) f t (Fin.cons h w) := by
  rw [iteratedFDeriv_succ_apply_left]
  simp

theorem word_expansion : WdExpand := by
  intro n f bs hlen hf
  induction bs with
  | nil =>
    refine ⟨1, fun _ => 1, fun _ => Fin.elim0, fun _ => by simp, fun t _ => ?_⟩
    simp [WD]
  | cons b bs ih =>
    have hlen' : bs.length ≤ n := by simp at hlen; omega
    have hlt : bs.length < n := by simp at hlen; omega
    obtain ⟨K, a, v, -, hv⟩ := ih hlen'
    have hs : IsOpen {t : ℂ | t ≠ 0} := isOpen_ne
    have hder : ∀ t : ℂ, t ≠ 0 → ∀ h : ℂ, fderiv ℝ (WD bs f) t h =
        ∑ i, a i * iteratedFDeriv ℝ (bs.length + 1) f t (Fin.cons h (v i)) := by
      intro t ht h
      have heq : WD bs f =ᶠ[𝓝 t] fun s => ∑ i, a i * iteratedFDeriv ℝ bs.length f s (v i) :=
        Filter.eventuallyEq_of_mem (hs.mem_nhds ht) fun s hs' => hv s hs'
      have hd := wdx_diff hf hlt ht
      have hH : HasFDerivAt (fun s => ∑ i, a i * iteratedFDeriv ℝ bs.length f s (v i))
          (∑ i, a i • ((ContinuousMultilinearMap.apply ℝ (fun _ : Fin bs.length => ℂ) ℂ (v i)).comp
            (fderiv ℝ (iteratedFDeriv ℝ bs.length f) t))) t := by
        first
          | exact HasFDerivAt.fun_sum fun i _ => (wdx_hasFDerivAt_iter hd (v i)).const_mul (a i)
      rw [heq.fderiv_eq, hH.fderiv]
      simp [wdx_step_eval]
    refine ⟨K + K, Fin.append (fun i => (1 / 2 : ℂ) * a i)
        (fun i => (1 / 2 : ℂ) * ((if b then -Complex.I else Complex.I) * a i)),
      Fin.append (fun i => Fin.cons (1 : ℂ) (v i)) (fun i => Fin.cons Complex.I (v i)),
      fun h => by simp at h, fun t ht => ?_⟩
    show wirt b (WD bs f) t = ∑ i : Fin (K + K), _ * iteratedFDeriv ℝ (bs.length + 1) f t _
    unfold wirt
    rw [hder t ht, hder t ht, Fin.sum_univ_add]
    simp only [Fin.append_left, Fin.append_right, mul_add, Finset.mul_sum]
    congr 1 <;> refine Finset.sum_congr rfl fun i _ => ?_ <;> ring

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWdExpand =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExpansionSiteZeroInduction =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ExpansionSiteZeroInduction", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftMemMatrixAlgebra\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PairOperatorCommute\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA Formalism.FourierDecayAlt.P5.HerB Formalism.FourierDecayAlt.P5.HerC
  Formalism.FourierDecayAlt.P5.HerD

def SmoothOn (f : ℂ → ℂ) : Prop := ∀ n : ℕ, ContDiffOn ℝ n f {t | t ≠ 0}

theorem isOpen_ne_zero_complex : IsOpen {t : ℂ | t ≠ 0} := isOpen_ne

theorem SmoothOn.diffAt {f : ℂ → ℂ} (hf : SmoothOn f) {t : ℂ} (ht : t ≠ 0) : DifferentiableAt ℝ f t := ((hf 1).contDiffAt (isOpen_ne.mem_nhds ht)).differentiableAt (by norm_num)

theorem SmoothOn.fderiv_apply {f : ℂ → ℂ} (hf : SmoothOn f) (v : ℂ) : SmoothOn (fun t => fderiv ℝ f t v) := by
  intro n
  have h1 : ContDiffOn ℝ n (fun y => fderiv ℝ f y) {t | t ≠ 0} :=
    (hf (n + 1)).fderiv_of_isOpen isOpen_ne (by push_cast; exact le_rfl)
  exact h1.clm_apply contDiffOn_const

theorem SmoothOn.wirt' {f : ℂ → ℂ} (hf : SmoothOn f) (b : Bool) : SmoothOn (CutSE.wirt b f) := by
  intro n
  unfold CutSE.wirt
  exact contDiffOn_const.mul ((hf.fderiv_apply 1 n).add (contDiffOn_const.mul (hf.fderiv_apply Complex.I n)))

theorem SmoothOn.wd {f : ℂ → ℂ} (hf : SmoothOn f) : ∀ bs : List Bool, SmoothOn (WD bs f)
  | [] => hf
  | b :: bs => (SmoothOn.wd hf bs).wirt' b

theorem wirt_congr {f g : ℂ → ℂ} {t : ℂ} (b : Bool) (h : f =ᶠ[𝓝 t] g) : CutSE.wirt b f t = CutSE.wirt b g t := by
  simp only [CutSE.wirt, h.fderiv_eq]

theorem wirt_add {f g : ℂ → ℂ} {t : ℂ} (b : Bool) (hf : DifferentiableAt ℝ f t) (hg : DifferentiableAt ℝ g t) :
    CutSE.wirt b (fun s => f s + g s) t = CutSE.wirt b f t + CutSE.wirt b g t := by
  have h : fderiv ℝ (fun s => f s + g s) t = fderiv ℝ f t + fderiv ℝ g t := fderiv_add hf hg
  simp only [CutSE.wirt, h, ContinuousLinearMap.add_apply]
  ring

theorem wirt_const_mul {f : ℂ → ℂ} {t : ℂ} (b : Bool) (e : ℂ) (hf : DifferentiableAt ℝ f t) :
    CutSE.wirt b (fun s => e * f s) t = e * CutSE.wirt b f t := by
  simp only [CutSE.wirt, fderiv_const_mul hf e, ContinuousLinearMap.smul_apply, smul_eq_mul]
  ring

theorem diff_listSum {ι : Type*} (L : List ι) (F : ι → ℂ → ℂ) {t : ℂ} (hF : ∀ i ∈ L, DifferentiableAt ℝ (F i) t) :
    DifferentiableAt ℝ (fun s => (L.map fun i => F i s).sum) t := by
  induction L with
  | nil => simp
  | cons i L ih =>
    simp only [List.map_cons, List.sum_cons]
    exact (hF i List.mem_cons_self).add (ih fun j hj => hF j (List.mem_cons_of_mem _ hj))

theorem wirt_listSum {ι : Type*} (b : Bool) (L : List ι) (F : ι → ℂ → ℂ) {t : ℂ}
    (hF : ∀ i ∈ L, DifferentiableAt ℝ (F i) t) :
    CutSE.wirt b (fun s => (L.map fun i => F i s).sum) t = (L.map fun i => CutSE.wirt b (F i) t).sum := by
  induction L with
  | nil => simp [CutSE.wirt]
  | cons i L ih =>
    simp only [List.map_cons, List.sum_cons]
    have hL : ∀ j ∈ L, DifferentiableAt ℝ (F j) t := fun j hj => hF j (List.mem_cons_of_mem _ hj)
    rw [wirt_add b (hF i List.mem_cons_self) (diff_listSum L F hL), ih hL]

section Num

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]
  {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)} {S : Type} [Fintype S] [DecidableEq S]

def IsNum (N : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) : Prop :=
  ∀ a b, ∃ q : ℂ, N a b = algebraMap ℂ (Pr (RadSp k r z z' π π')) q

theorem isNum_one : IsNum (1 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) := by
  intro a b
  by_cases h : a = b
  · subst h
    exact ⟨1, by rw [Matrix.one_apply_eq, map_one]⟩
  · exact ⟨0, by rw [Matrix.one_apply_ne h, map_zero]⟩

theorem isNum_eU (s : S) (i j : Fin 2) : IsNum (eU s i j : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) := by
  intro a b
  by_cases h : a s = i ∧ b s = j ∧ ∀ c, c ≠ s → a c = b c
  · exact ⟨1, by simp only [eU, Matrix.of_apply, if_pos h, map_one]⟩
  · exact ⟨0, by simp only [eU, Matrix.of_apply, if_neg h, map_zero]⟩

theorem isNum_mul {M N : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))} (hM : IsNum M) (hN : IsNum N) : IsNum (M * N) := by
  choose qM hqM using hM
  choose qN hqN using hN
  intro a b
  exact ⟨∑ c, qM a c * qN c b, by simp [Matrix.mul_apply, hqM, hqN, map_sum, map_mul]⟩

theorem act_num_mem (K : Submodule ℂ (RadSp k r z z' π π')) {N : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))} (hN : IsNum N)
    {v : Ix S → RadSp k r z z' π π'} (hv : ∀ b, v b ∈ K) : ∀ b, act N v b ∈ K := by
  intro b
  unfold act
  refine K.sum_mem fun c _ => ?_
  obtain ⟨q, hq⟩ := hN b c
  rw [hq]
  show (algebraMap ℂ (Module.End ℂ (RadSp k r z z' π π')) q) (v c) ∈ K
  rw [Module.algebraMap_end_apply]
  exact K.smul_mem q (hv c)

end Num

theorem sum_fin_list {α : Type*} (L : List α) (g : α → ℂ) : ∑ i : Fin L.length, g (L.get i) = (L.map g).sum := by
  rw [← List.sum_ofFn]
  congr 1
  have h : (fun i : Fin L.length => g (L.get i)) = g ∘ L.get := rfl
  rw [h, ← List.map_ofFn, List.ofFn_get]

section Slots

variable {A : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A] {S : Type} [Fintype S] [DecidableEq S]

theorem comm_eU_io (a : S) (p q : Fin 2) (y : A) : Commute (eU a p q : SlopeTestRemainingChoices S A) (io y) := by
  ext x w
  simp only [io, Matrix.scalar_apply, Matrix.mul_diagonal, Matrix.diagonal_mul, eU, Matrix.of_apply]
  split_ifs <;> simp

theorem comm_eU_vlet (σ : Site A) (le : Letter ℂ S) {a : S} (ha : le.intersection_update_fsHerm_neg_one ≠ a) (i j : Fin 2) :
    Commute (eU a i j : SlopeTestRemainingChoices S A) (vlet σ le) := by
  have L : ∀ (a s : S), s ≠ a → ∀ (i j p q : Fin 2) (x y : Ix S),
      (((eU a i j : SlopeTestRemainingChoices S A) * (eU s p q : SlopeTestRemainingChoices S A)) : SlopeTestRemainingChoices S A) x y =
        if x a = i ∧ y a = j ∧ x s = p ∧ y s = q ∧ ∀ b, b ≠ a → b ≠ s → x b = y b then 1 else 0 := by
    intro a s hs i j p q x y
    have hsa : a ≠ s := Ne.symm hs
    rw [Matrix.mul_apply, Finset.sum_eq_single (Function.update x a j)]
    · simp only [eU, Matrix.of_apply, Function.update_self, Function.update_of_ne hs]
      by_cases h1 : x a = i
      · have e1 : (∀ b, b ≠ a → x b = Function.update x a j b) := fun b hb => by
          rw [Function.update_of_ne hb]
        rw [if_pos ⟨h1, trivial, e1⟩, one_mul]
        by_cases h2 : y a = j ∧ x s = p ∧ y s = q ∧ ∀ b, b ≠ a → b ≠ s → x b = y b
        · obtain ⟨h2a, h2b, h2c, h2d⟩ := h2
          have e2 : ∀ b, b ≠ s → Function.update x a j b = y b := by
            intro b hb
            by_cases hba : b = a
            · subst hba; rw [Function.update_self, h2a]
            · rw [Function.update_of_ne hba]; exact h2d b hba hb
          rw [if_pos ⟨h2b, h2c, e2⟩, if_pos ⟨h1, h2a, h2b, h2c, h2d⟩]
        · rw [if_neg (fun h => h2 ⟨?_, h.1, h.2.1, fun b hba hbs => ?_⟩), if_neg (fun h => h2 h.2)]
          · have := h.2.2 a hsa
            rw [Function.update_self] at this
            exact this.symm
          · have := h.2.2 b hbs
            rw [Function.update_of_ne hba] at this
            exact this
      · rw [if_neg (fun h => h1 h.1), zero_mul, if_neg (fun h => h1 h.1)]
    · intro w _ hw
      simp only [eU, Matrix.of_apply]
      rw [if_neg, zero_mul]
      rintro ⟨_, hwa, hwb⟩
      apply hw
      funext b
      by_cases hba : b = a
      · subst hba; rw [Function.update_self, hwa]
      · rw [Function.update_of_ne hba]; exact (hwb b hba).symm
    · intro h
      exact absurd (Finset.mem_univ _) h
  have hee : ∀ s : S, s ≠ a → ∀ p q : Fin 2, Commute (eU a i j : SlopeTestRemainingChoices S A) (eU s p q) := by
    intro s hs p q
    ext x y
    rw [L a s hs i j p q x y, L s a (Ne.symm hs) p q i j x y]
    congr 1
    apply propext
    constructor
    · rintro ⟨h1, h2, h3, h4, h5⟩
      exact ⟨h3, h4, h1, h2, fun b hb1 hb2 => h5 b hb2 hb1⟩
    · rintro ⟨h1, h2, h3, h4, h5⟩
      exact ⟨h3, h4, h1, h2, fun b hb1 hb2 => h5 b hb2 hb1⟩
  unfold vlet ins lift0
  refine Commute.sum_right _ _ _ fun p _ => Commute.sum_right _ _ _ fun q _ => ?_
  exact (hee le.intersection_update_fsHerm_neg_one ha p q).mul_right (comm_eU_io a i j _)

theorem comm_eU_bT (σ : Site A) {a : S} (i j : Fin 2) : ∀ w : List (Letter ℂ S), a ∉ w.map Letter.intersection_update_fsHerm_neg_one →
    Commute (eU a i j : SlopeTestRemainingChoices S A) (bT σ w)
  | [], _ => Commute.one_right _
  | le :: w, h => by
    simp only [List.map_cons, List.mem_cons, not_or] at h
    show Commute (eU a i j : SlopeTestRemainingChoices S A) (vlet σ le * bT σ w)
    exact (comm_eU_vlet σ le (Ne.symm h.1) i j).mul_right (comm_eU_bT σ i j w h.2)

end Slots

theorem expansion_site_zero_induction : ExpansionByLetterInduction := by
  intro hS hO hB
  intro Wp Wq _ _ _ _ _ _ S _ _ P z z' π π' X μ L st l0 D hD hl1 hl2 hz hz' hπ hπ' w hw l hl x y hx hy c hc
  set Cl := ClsE S P z z' π π' X L st l0 D l with hCl
  set σ := site L l with hσ
  have hsm : ∀ u v : Ix S → RadSp P.k P.r z z' π π', (∀ b, u b ∈ Cl) → (∀ b, v b ∈ Cl) →
      SmoothOn (Dens μ l u v c) :=
    fun u v hu hv => (hS Wp Wq S P z z' π π' X μ L st l0 D hD hl1 hl2 hz hz' hπ hπ' l hl u v hu hv c hc).1
  have hBl := hB Wp Wq S P z z' π π' X μ L st l0 D hD hl1 hl2 hz hz' hπ hπ' l hl
  have hbT : ∀ (w' : List (Letter ℂ S)) (u : Ix S → RadSp P.k P.r z z' π π'), (∀ b, u b ∈ Cl) →
      ∀ b, act (bT σ w') u b ∈ Cl := by
    intro w'
    induction w' with
    | nil => intro u hu b; rw [show bT σ ([] : List (Letter ℂ S)) = 1 from rfl, _root_.Formalism.FourierDecayAlt.P5.act_one_hermitian_curvature]; exact hu b
    | cons le w' ih =>
      intro u hu b
      rw [show bT σ (le :: w') = vlet σ le * bT σ w' from rfl, act_mul]
      exact (hBl _ (ih u hu)).1 le b
  have hibT : ∀ (w' : List (Letter ℂ S)) (u : Ix S → RadSp P.k P.r z z' π π'), (∀ b, u b ∈ Cl) →
      ∀ b, act (ibT σ w') u b ∈ Cl := by
    intro w'
    induction w' with
    | nil => intro u hu b; rw [show ibT σ ([] : List (Letter ℂ S)) = 1 from rfl, _root_.Formalism.FourierDecayAlt.P5.act_one_hermitian_curvature]; exact hu b
    | cons le w' ih =>
      intro u hu b
      rw [show ibT σ (le :: w') = ivlet σ le * ibT σ w' from rfl, act_mul]
      exact (hBl _ (ih u hu)).2.1 le b
  have gen : ∀ w' : List (Letter ℂ S), (w'.map Letter.intersection_update_fsHerm_neg_one).Nodup → (∀ le ∈ w', le.pt.im = 0) →
      ∀ u v : Ix S → RadSp P.k P.r z z' π π', (∀ b, u b ∈ Cl) → (∀ b, v b ∈ Cl) →
      ∃ rest : List (ℂ × List Bool × SlopeTestRemainingChoices S (Pr (RadSp P.k P.r z z' π π'))),
        (∀ τ ∈ rest, τ.2.1 ≠ [] ∧ τ.2.1.length ≤ w'.length ∧ IsNum τ.2.2) ∧
        ∀ t, t ≠ 0 → Dens μ l (act (ibT σ w') u) (act (bT σ w') v) c t =
          Dens μ l u v c t + (rest.map fun τ => τ.1 * WD τ.2.1 (Dens μ l u (act τ.2.2 v) c) t).sum := by
    intro w'
    induction w' with
    | nil =>
      intro _ _ u v _ _
      refine ⟨[], by simp, fun t _ => ?_⟩
      simp only [List.map_nil, List.sum_nil, add_zero]
      rw [show ibT σ ([] : List (Letter ℂ S)) = 1 from rfl, show bT σ ([] : List (Letter ℂ S)) = 1 from rfl,
        _root_.Formalism.FourierDecayAlt.P5.act_one_hermitian_curvature, _root_.Formalism.FourierDecayAlt.P5.act_one_hermitian_curvature]
    | cons le w' ih =>
      intro hnd hre u v hu hv
      have hnd' : le.intersection_update_fsHerm_neg_one ∉ w'.map Letter.intersection_update_fsHerm_neg_one ∧ (w'.map Letter.intersection_update_fsHerm_neg_one).Nodup := by
        simpa using hnd
      obtain ⟨e, bb, i, j, hOL⟩ :=
        hO Wp Wq S P z z' π π' X μ L st l0 D hD hl1 hl2 hz hz' hπ hπ' l hl le (hre le List.mem_cons_self)
      have hre' : ∀ le' ∈ w', le'.pt.im = 0 := fun le' h => hre le' (List.mem_cons_of_mem _ h)
      have hev : ∀ b, act (eU le.intersection_update_fsHerm_neg_one i j) v b ∈ Cl := (hBl v hv).2.2 le.intersection_update_fsHerm_neg_one i j
      obtain ⟨rest1, hr1, h1⟩ := ih hnd'.2 hre' u v hu hv
      obtain ⟨rest2, hr2, h2⟩ := ih hnd'.2 hre' u (act (eU le.intersection_update_fsHerm_neg_one i j) v) hu hev
      refine ⟨rest1 ++ (e, [bb], eU le.intersection_update_fsHerm_neg_one i j) ::
        rest2.map (fun τ => (e * τ.1, bb :: τ.2.1, τ.2.2 * eU le.intersection_update_fsHerm_neg_one i j)), ?_, ?_⟩
      · intro τ hτ
        simp only [List.mem_append, List.mem_cons, List.mem_map] at hτ
        rcases hτ with hτ | hτ | ⟨τ', hτ', rfl⟩
        · obtain ⟨a1, a2, a3⟩ := hr1 τ hτ
          exact ⟨a1, by simp only [List.length_cons]; omega, a3⟩
        · subst hτ
          exact ⟨by simp, by simp, isNum_eU _ _ _⟩
        · obtain ⟨a1, a2, a3⟩ := hr2 τ' hτ'
          exact ⟨by simp, by simp only [List.length_cons]; omega, isNum_mul a3 (isNum_eU _ _ _)⟩
      · intro t ht
        have hU' : ∀ b, act (ibT σ w') u b ∈ Cl := hibT w' u hu
        have hV' : ∀ b, act (bT σ w') v b ∈ Cl := hbT w' v hv
        have step1 : Dens μ l (act (ibT σ (le :: w')) u) (act (bT σ (le :: w')) v) c t =
            Dens μ l (act (ivlet σ le) (act (ibT σ w') u)) (act (vlet σ le) (act (bT σ w') v)) c t := by
          rw [show ibT σ (le :: w') = ivlet σ le * ibT σ w' from rfl,
            show bT σ (le :: w') = vlet σ le * bT σ w' from rfl, act_mul, act_mul]
        have hcomm : act (eU le.intersection_update_fsHerm_neg_one i j) (act (bT σ w') v) = act (bT σ w') (act (eU le.intersection_update_fsHerm_neg_one i j) v) := by
          rw [← act_mul, ← act_mul, (comm_eU_bT σ i j w' hnd'.1).eq]
        have hevt : Dens μ l (act (ibT σ w') u) (act (eU le.intersection_update_fsHerm_neg_one i j) (act (bT σ w') v)) c =ᶠ[𝓝 t]
            (fun s => Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one i j) v) c s + (rest2.map fun τ =>
              τ.1 * WD τ.2.1 (Dens μ l u (act τ.2.2 (act (eU le.intersection_update_fsHerm_neg_one i j) v)) c) s).sum) := by
          filter_upwards [isOpen_ne_zero_complex.mem_nhds ht] with s hs
          rw [hcomm]
          exact h2 s hs
        have hd0 : DifferentiableAt ℝ (Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one i j) v) c) t := (hsm u _ hu hev).diffAt ht
        have hdτ : ∀ τ ∈ rest2, DifferentiableAt ℝ
            (fun s => τ.1 * WD τ.2.1 (Dens μ l u (act τ.2.2 (act (eU le.intersection_update_fsHerm_neg_one i j) v)) c) s) t := by
          intro τ hτ
          exact (((hsm u _ hu (act_num_mem Cl (hr2 τ hτ).2.2 hev)).wd τ.2.1).diffAt ht).const_mul τ.1
        have hterm : ∀ τ ∈ rest2,
            CutSE.wirt bb (fun s => τ.1 * WD τ.2.1 (Dens μ l u (act τ.2.2 (act (eU le.intersection_update_fsHerm_neg_one i j) v)) c) s) t =
              τ.1 * WD (bb :: τ.2.1) (Dens μ l u (act (τ.2.2 * eU le.intersection_update_fsHerm_neg_one i j) v) c) t := by
          intro τ hτ
          rw [wirt_const_mul bb τ.1 (((hsm u _ hu (act_num_mem Cl (hr2 τ hτ).2.2 hev)).wd τ.2.1).diffAt ht), act_mul]
          rfl
        rw [step1, hOL _ _ hU' hV' c hc t ht, h1 t ht, wirt_congr bb hevt,
          wirt_add bb hd0 (diff_listSum rest2 _ hdτ), wirt_listSum bb rest2 _ hdτ, List.map_congr_left hterm]
        simp only [List.map_append, List.sum_append, List.map_cons, List.sum_cons, List.map_map, Function.comp_def]
        rw [mul_add, ← List.sum_map_mul_left]
        have hW1 : WD [bb] (Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one i j) v) c) t =
            CutSE.wirt bb (Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one i j) v) c) t := rfl
        rw [hW1]
        simp only [mul_assoc]
        ring
  have hnd : (w.map Letter.intersection_update_fsHerm_neg_one).Nodup := (good_of_adm st w hw.1).1
  have hre : ∀ le ∈ w, le.pt.im = 0 := fun le h => (hw.2.1 le h).1
  have hl0 : l.castSucc = (0 : Fin (P.r + 1)) := Fin.ext (by simp [hl])
  have hbase : ∀ Φ ∈ base0 S P z z' π π' L st l0 D, Φ ∈ Cl := fun Φ h =>
    Submodule.subset_span ⟨[], Φ, h, by simp⟩
  have hX : ∀ b, act (RRi L st l.castSucc w) x b ∈ Cl := by
    intro b
    apply hbase
    simp only [act]
    refine Submodule.sum_mem _ fun b' _ => ?_
    apply Submodule.mem_sup_right
    refine Submodule.subset_span ⟨w, hw, b, b', x b', ?_, ?_⟩
    · have := hx b'
      rw [hl0] at this
      exact this
    · rw [hl0]
  have hy' : ∀ b, y b ∈ Cl := fun b => hbase _ (Submodule.mem_sup_left (by have := hy b; rw [hl0] at this; exact this))
  obtain ⟨rest, hr, hE⟩ := gen w hnd hre _ y hX hy'
  generalize hterms : (((1 : ℂ), ([] : List Bool), (1 : SlopeTestRemainingChoices S (Pr (RadSp P.k P.r z z' π π')))) :: rest :
    List (ℂ × List Bool × SlopeTestRemainingChoices S (Pr (RadSp P.k P.r z z' π π')))) = terms
  have key : ∀ τ ∈ terms, τ.2.1.length ≤ w.length ∧ IsNum τ.2.2 := by
    rw [← hterms]
    intro τ hτ
    rcases List.mem_cons.mp hτ with h | h
    · rw [h]; exact ⟨by simp, isNum_one⟩
    · exact ⟨(hr _ h).2.1, (hr _ h).2.2⟩
  have hmem : ∀ i : Fin terms.length, (terms.get i).2.1.length ≤ w.length ∧ IsNum (terms.get i).2.2 :=
    fun i => key _ (List.get_mem terms i)
  refine ⟨terms.length, fun i => (terms.get i).1, fun i => (terms.get i).2.1, fun i => act (terms.get i).2.2 y,
    fun i => (hmem i).1, fun i b => act_num_mem _ (hmem i).2 hy b, fun t ht => ?_, ?_⟩
  · rw [sum_fin_list terms (fun τ => τ.1 * WD τ.2.1 (Dens μ l (act (RRi L st l.castSucc w) x) (act τ.2.2 y) c) t)]
    show Dens μ l (act (ibT σ w) (act (RRi L st l.castSucc w) x)) (act (bT σ w) y) c t = _
    rw [hE t ht, ← hterms, List.map_cons, List.sum_cons, _root_.Formalism.FourierDecayAlt.P5.act_one_hermitian_curvature]
    simp only [one_mul]
    rfl
  · rw [sum_fin_list terms (fun τ => τ.1 * (if τ.2.1 = [] then form μ l.castSucc (act (RRi L st l.castSucc w) x)
      (act τ.2.2 y) c else 0))]
    rw [← hterms, List.map_cons, List.sum_cons, _root_.Formalism.FourierDecayAlt.P5.act_one_hermitian_curvature]
    have h0 : (rest.map fun τ => τ.1 * (if τ.2.1 = [] then form μ l.castSucc (act (RRi L st l.castSucc w) x)
        (act τ.2.2 y) c else 0)).sum = 0 := by
      apply List.sum_eq_zero
      intro q hq
      obtain ⟨τ, hτ, rfl⟩ := List.mem_map.mp hq
      rw [if_neg (hr τ hτ).1, mul_zero]
    rw [h0, add_zero, if_pos rfl, one_mul]
    rfl

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExpansionSiteZeroInduction =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETop =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETop", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEBTCls\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEIbTInv\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWdExpand\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DecayPairEstimate\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExpansionSiteZeroInduction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.FourierDecayAlt.P5.HerD

theorem expansion_l2_of_open_estimates (hO : OneLetterDens) (hS : DensSmoothCls) (h2 : DecayPair2) (h3 : DecayPair3)
    (h4 : DecayPair4) : LevelDensitySquareIntegrable :=
  expansion_L2_of_decay_pairs word_expansion (step_density_expansion_of_mirror boundary_torus_invariance (expansion_site_zero_induction hS hO boundary_torus_closure))
    decay_pair_estimate h2 h3 h4

theorem stepExp0_of_open (hO : OneLetterDens) (hS : DensSmoothCls) (h2 : DecayPair2) (h3 : DecayPair3)
    (h4 : DecayPair4) : StepExp0 :=
  step_density_of_square (expansion_l2_of_open_estimates hO hS h2 h3 h4)

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETop =====
