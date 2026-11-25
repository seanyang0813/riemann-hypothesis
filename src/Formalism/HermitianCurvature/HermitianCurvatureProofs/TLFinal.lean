module

public import Formalism.HermitianCurvature.StatementTL
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAlgebraFacts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BasicLift
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellValues
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorEquivariance
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvMulVecOfFixedVector
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LetterLiftOfParts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftCapelliOperators
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftClosedUnderOperations
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfFunctions
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MatrixUnitZeroZeroEqInsert
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.XFibreOfParts
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdmissibleRecOfAdmissibleWord
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorFrame
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Interlace
import Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftZeroOrder
import Formalism.HermitianCurvature.HermitianCurvatureProofs.MinusId
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ModelWordsAssemble

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.IdentityOperator, Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfXOfParts, Formalism.HermitianCurvature.HermitianCurvatureProofs.TLChoiceChk, Formalism.HermitianCurvature.HermitianCurvatureProofs.TLFinal

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IdentityOperator =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.IdentityOperator", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.TL Formalism.REAL Formalism.QuantumDeterminants

noncomputable section

theorem identity_operator : TL.IdOp := by
  intro k r Wp Wq _ _ _ _ _ Bs
  let T : B.DTerm k r Wp Wq :=
    { coef := fun _ => 1
      coefAdj := fun _ => 1
      word := []
      word_lie := fun X hX => by simp at hX
      adj_id := fun _ _ _ => rfl }
  have hap : ∀ F, B.opApply [T] F = F := by
    intro F
    funext g
    simp [B.opApply, B.Rw, T]
  refine ⟨[T], ⟨?_, ?_, ?_⟩, hap⟩
  · intro T' hT'
    simp only [List.mem_singleton] at hT'
    subst hT'
    refine ⟨?_, ?_⟩ <;> intro g₀ _ <;>
      refine ⟨Set.univ, fun _ => 1, ?_, Set.mem_univ _, ?_, fun _ _ _ => rfl⟩
    all_goals
      first
      | exact isOpen_univ
      | exact contDiffOn_const
      | (open scoped Formalism.FourierDecayAlt.B in exact contDiffOn_const)
      | (open scoped Matrix.Norms.Elementwise in exact contDiffOn_const)
  · intro p _ f _ g _
    simp only [hap]
  · intro T' hT'
    simp only [List.mem_singleton] at hT'
    subst hT'
    refine ⟨fun _ => 1, 0, 0, 0, [], ⟨1, ?_, ?_⟩, ?_, ?_, ?_, ?_⟩
    · simp
    · intro g
      simp
    · intro l _ _
      simp
    · simp [T]
    · simp
    · intro g _
      simp [C6.monoM, C6.Epart, T]

end

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IdentityOperator =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfXOfParts =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfXOfParts", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.TL Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.Fr

noncomputable section

theorem lift_of_x_of_parts : TL.LiftXOfParts := by
  intro hZ _hC hX Wp Wq _ _ _ _ _ _ P Bs X μ L st l0 hD Y
  obtain ⟨_, _, hAct, hQQ, _, _, _, hLS⟩ := hD
  obtain ⟨B0, _, hB⟩ := hX Wp Wq P Bs X
  obtain ⟨hFB, hEq, hRad⟩ := hB Y
  set E := xFib Bs B0 (Y + ((P.k : ℂ) - 2) / 2) with hE
  set s : ℂ := M.sgn P l0 with hs
  have hx : st.x Y = L.GGi * st.QQ Y 1 1 := by
    rw [hLS.tau, ← mul_assoc, L.GGi_GG, one_mul]
  have hx1 : (st.x Y).1 = X.fn 5 * (s • X.t Y 1 1) := by
    rw [hx, hQQ Y, hAct.2.2.2.2.2.2.2.2.2.2.2.1]
    rfl
  refine hZ Wp Wq P Bs 0 0 0 0 (fun _ => s) E (st.x Y) ?_ hFB ?_ ?_
  · refine ⟨MvPolynomial.C s, by simp, fun g => by simp⟩
  · intro p hp g hg J
    simp only [pow_zero, mul_one, smul_apply]
    rw [hEq p hp g hg J, ContinuousLinearMap.smul_comp, ContinuousLinearMap.comp_smul]
  · intro Φ x hx'
    simp only [pow_zero, mul_one, smul_apply]
    rw [hx1, Module.End.mul_apply, X.fn_apply 5 _ x hx', LinearMap.smul_apply, Submodule.coe_smul, Pi.smul_apply,
      Pi.smul_apply, hRad Φ x hx', smul_smul, smul_smul]
    have hG : (0 : ℝ) < Q.GGl P.k P.r Bs.z Bs.z' x.2 := hx'.2.2
    simp only [Q.fnVal]
    congr 1
    have hG' : ((Q.GGl P.k P.r Bs.z Bs.z' x.2 : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hG.ne'
    field_simp

end

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfXOfParts =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.TLChoiceChk =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.TLChoiceChk", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.TL

open Matrix Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.Fr

theorem wordLiftOfParts : WordLiftOfParts := by
  intro hstep hlet A S _ _ _ _ _ _ r n L st Lf w hA hL hn
  induction w with
  | nil =>
    intro _ e
    have h1 : ((ofWord L st ([] : List (Letter ℂ S))).F * bTA L ([] : List (Letter ℂ S))) = 1 := by
      simp [ofWord, bTA, bT, Start.frame]
    rw [h1, Matrix.one_apply]
    split_ifs
    · simpa using hL.one
    · exact hL.zero _ _
  | cons l w ih =>
    intro hw e
    have hw' : admitted st w := by
      obtain ⟨h1, h2, h3, h4⟩ := hw
      refine ⟨?_, fun l' hl' => h2 l' (List.mem_cons_of_mem _ hl'),
        fun l' hl' => h3 l' (List.mem_cons_of_mem _ hl'), h4.of_cons⟩
      simp only [List.map_cons, List.nodup_cons] at h1
      exact h1.2
    rw [hstep A S r L st l w hA hw e, Matrix.mul_apply]
    refine Finset.sum_induction _ (Lf _ _) (fun a b ha hb => hL.add ha hb) (hL.zero _ _) ?_
    intro f _
    have hcoef : Lf n (9 * (r + 1) * n) ((∑ i : Fin 2, eU l.intersection_update_fsHerm_neg_one i 0 * letterCol L st l w i : SlopeTestRemainingChoices S A) e f) := by
      rw [Matrix.sum_apply]
      refine Finset.sum_induction _ (Lf _ _) (fun a b ha hb => hL.add ha hb) (hL.zero _ _) ?_
      intro i _
      rw [Matrix.mul_apply]
      refine Finset.sum_induction _ (Lf _ _) (fun a b ha hb => hL.add ha hb) (hL.zero _ _) ?_
      intro g _
      simp only [eU, Matrix.of_apply]
      split_ifs
      · rw [one_mul]
        exact hlet A S r n L st Lf l w hA hL hn hw i g f
      · rw [zero_mul]
        exact hL.zero _ _
    refine hL.mono ?_ ?_ (hL.mul hcoef (ih hw' f))
    · simp only [List.length_cons]
      exact le_of_eq (by ring)
    · simp only [List.length_cons]
      exact le_of_eq (by ring)

end Formalism.FourierDecayAlt.TL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.TLChoiceChk =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.TLFinal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.TLFinal", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTL\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAlgebraFacts\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.AdmissibleRecOfAdmissibleWord\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BasicLift\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellValues\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorEquivariance\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorFrame\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IdentityOperator\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.Interlace\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvMulVecOfFixedVector\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LetterLiftOfParts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftCapelliOperators\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftClosedUnderOperations\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfFunctions\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfXOfParts\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftZeroOrder\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MatrixUnitZeroZeroEqInsert\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.MinusId\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ModelWordsAssemble\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TLChoiceChk\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.XFibreOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem lift_of_x : Formalism.FourierDecayAlt.TL.LiftX :=
  lift_of_x_of_parts lift_zero_order lift_closed_under_operations
    (x_fibre_of_parts big_cell_values omega_polynomial_facts capelli_vector_frame capelli_vector_equivariance)



theorem top_lift_exists : Formalism.FourierDecayAlt.TL.TopLiftExists3 := by
  classical
  refine ⟨11, by norm_num, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P Bs X μ L st l0 hl1 hlk hD
  obtain ⟨hA, hcap, hxi⟩ := actual_algebra_facts Wp Wq P Bs.z Bs.z' Bs.π Bs.π' X μ L st l0 hD
  obtain ⟨hmono, hzero, hadd, hsmul, hmul⟩ := lift_closed_under_operations Wp Wq P Bs
  have hF := lift_of_functions Wp Wq P Bs X L hD.2.2.1
  have hX := lift_of_x Wp Wq P Bs X μ L st l0 hD
  have hK := lift_capelli_operators Wp Wq P Bs X μ L st l0 hD
  have hpoly : ∀ (p : Polynomial ℂ) (a : Q.Pr ↥(Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π')),
      TL.Lifts P Bs 0 0 a → TL.Lifts P Bs 0 0 (Polynomial.aeval a p) := by
    intro p a ha
    have hpow : ∀ m : ℕ, TL.Lifts P Bs 0 0 (a ^ m) := by
      intro m
      induction m with
      | zero => simpa using hF.1
      | succ m ih => simpa [pow_succ] using hmul 0 0 0 0 _ _ ih ha
    induction p using Polynomial.induction_on' with
    | add p q hp hq => simpa using hadd 0 0 _ _ hp hq
    | monomial m c =>
      rw [Polynomial.aeval_monomial, Algebra.algebraMap_eq_smul_one, smul_mul_assoc, one_mul]
      exact hsmul 0 0 _ c (hpow m)
  have hn : P.r + 1 ≤ 2 * P.r + P.k + 1 := by omega
  have hSys : TL.LiftSys L st (2 * P.r + P.k + 1) (TL.Lifts P Bs) :=
    { mono := fun h1 h2 h => hmono _ _ _ _ _ h1 h2 h
      zero := hzero
      add := fun h1 h2 => hadd _ _ _ _ h1 h2
      smul := fun z h => hsmul _ _ _ z h
      one := hF.1
      mul := fun h1 h2 => hmul _ _ _ _ _ _ h1 h2
      fns := hF.2
      x := fun Y _ => hX Y
      xi := fun Y hY _ => by
        obtain ⟨p, hp⟩ := hxi Y hY
        rw [hp]
        exact hpoly p _ (hX Y)
      cap := fun Y hY => by
        rw [← hcap Y hY]
        exact hK Y }
  have hWL := TL.wordLiftOfParts word_recursion
    (letter_lift_of_parts TL.basicLift l_shape m_shape_of_l_shape)
  have hAdm : ∀ w : List C.Letter, KB.CutWord P l0 w → Fr.admitted st (D.positionted w) := by
    intro w hw
    have hM : M.CutWord P l0 (D.positionted w) := by
      refine ⟨?_, ?_, ?_⟩
      · rw [D.positionted, List.map_ofFn]
        exact List.nodup_ofFn.mpr (fun a b h => h)
      · intro a ha
        obtain ⟨i, rfl⟩ := List.mem_ofFn.mp ha
        exact ⟨by simp, by simpa using hw.1 i⟩
      · rw [D.positionted, List.pairwise_ofFn]
        intro i j hij
        simpa using hw.2 i j (ne_of_lt hij)
    obtain ⟨h1, h2, h3, h4⟩ := cut_admissible _root_.Formalism.FourierDecayAlt.P.Interlace.interlaceSign _root_.Formalism.FourierDecayAlt.P.Interlace.qPositive _root_.Formalism.FourierDecayAlt.P.Fr2.qPositiveShift
      types_interlace realPoints_statement P hD.1.1 l0 hl1 hlk (Fin w.length) (D.positionted w) hM
    refine ⟨h1, h2, ?_, h4⟩
    rw [hD.2.2.2.2.1, hD.2.2.2.2.2.1]
    exact h3
  have hLift : ∀ (w : List C.Letter) (e : Wd.Ix (Fin w.length)), ∃ Dop : B.DiffOp P.k P.r Wp Wq,
      KB.CutWord P l0 w → ∃ (nf : ℕ) (fib : Fin nf → B.Mat P.k P.r → C6.EndH Wp Wq),
        (∀ j, C6.FibBound Bs (fib j)) ∧
        C6.InDDPlus Bs fib ∅ (w.length * (2 * P.r + P.k + 1))
          (11 * w.length * (P.r + 1) * (2 * P.r + P.k + 1)) Dop ∧
        TL.RadIs P Bs Dop (((Fr.ofWord L st (D.positionted w)).F * TL.bTA L (D.positionted w)) e Wd.e1).1 := by
    intro w e
    by_cases hw : KB.CutWord P l0 w
    · have h := hWL _ (Fin w.length) P.r (2 * P.r + P.k + 1) L st (TL.Lifts P Bs) (D.positionted w) hA hSys hn
        (hAdm w hw) e
      have hl : (D.positionted w).length = w.length := List.length_ofFn
      rw [hl] at h
      obtain ⟨nf, fib, Dop, h1, h2, h3⟩ := h
      exact ⟨Dop, fun _ => ⟨nf, fib, h1, h2, h3⟩⟩
    · obtain ⟨Dop, -⟩ := identity_operator P.k P.r Wp Wq Bs
      exact ⟨Dop, fun h => absurd h hw⟩
  choose Dw hDw using hLift
  obtain ⟨D0, hD0, hD0F⟩ := identity_operator P.k P.r Wp Wq Bs
  refine ⟨⟨fun w e F => if w = [] then F else B.opApply (Dw w e) F, fun e F => by simp⟩, ?_, ?_⟩
  · intro w hw F hFc Φ hΦ e
    dsimp only
    have hact : ∀ (M0 : Wd.SlopeTestRemainingChoices (Fin w.length) (Q.Pr ↥(Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π'))),
        P5.act M0 (Top.firstStateVector Φ) e = (M0 e Wd.e1).1 Φ := by
      intro M0
      unfold P5.act Top.firstStateVector
      rw [Finset.sum_eq_single Wd.e1]
      · exact congrArg _ (if_pos rfl)
      · intro b _ hb
        have hb' : ¬ (b = fun _ => 0) := hb
        rw [if_neg hb', map_zero]
      · simp
    rw [hact]
    by_cases hne : w = []
    · subst hne
      simp only [if_true]
      have h1 : (Fr.ofWord L st (D.positionted ([] : List C.Letter))).F * P5.bTall L (D.positionted ([] : List C.Letter)) = 1 := by
        simp [D.positionted, Fr.ofWord, P5.bTall, P5.bTl, Wd.bT, Fr.Start.frame]
      have he : e = Wd.e1 := funext fun i => (Nat.not_lt_zero _ i.2).elim
      rw [h1, he]
      change Top.IsRadOf P Bs Φ F
      exact hΦ
    · rw [if_neg hne]
      obtain ⟨nf, fib, -, -, hR⟩ := hDw w e hw
      exact hR F hFc Φ hΦ
  · intro w hw e
    dsimp only
    by_cases hne : w = []
    · refine ⟨0, fun j => j.elim0, 0, 0, D0, fun j => j.elim0, ?_, by norm_num <;> positivity,
        by norm_num <;> positivity, ?_⟩
      · convert hD0 using 2
      · intro F g _
        rw [if_pos hne, hD0F]
    · obtain ⟨nf, fib, h1, h2, -⟩ := hDw w e hw
      refine ⟨nf, fib, _, _, Dw w e, h1, h2, ?_, ?_, ?_⟩
      · push_cast
        nlinarith [show (0:ℝ) ≤ (w.length:ℝ) * (2 * (P.r:ℝ) + P.k + 1) by positivity]
      · push_cast
        nlinarith [show (0:ℝ) ≤ (w.length:ℝ) * (2 * (P.r:ℝ) + P.k + 1) by positivity]
      · intro F g _
        rw [if_neg hne]

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.TLFinal =====
