module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.RowFlagIff
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.MemSpanSingle
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FirstCoordsMulVec
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.GlRedEqOneIff

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ParUniIffFlags, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsSub

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ParUniIffFlags =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ParUniIffFlags", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.RowFlagIff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.MemSpanSingle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataIdxStIm

open Matrix Formalism.FourierDecayAlt.S3
open Formalism.DoubleCosetMeasures (IsUpUni isUpUni_inv isUpUni_det)

variable {K : Type} [Field K] {r k : ℕ}

def posW (i : Fin k) : Set (Idx r k) := Set.range Sum.inl ∪ wI '' {j | j < i}

def ColW (m : Matrix (Idx r k) (Idx r k) K) : Prop :=
  ∀ i : Fin k, m *ᵥ Pi.single (wI i) 1 - Pi.single (wI i) 1 ∈
    Submodule.span K ((fun j => Pi.single j (1 : K)) '' posW (r := r) i)

theorem colW_iff (m : Matrix (Idx r k) (Idx r k) K) :
    ColW m ↔ ∀ i : Fin k, ∀ j, j ∉ posW (r := r) i → m j (wI i) = if j = wI i then 1 else 0 := by
  unfold ColW
  refine forall_congr' fun i => ?_
  rw [mem_span_single]
  refine forall_congr' fun j => forall_congr' fun _ => ?_
  have e : (m *ᵥ Pi.single (wI i) (1 : K)) j = m j (wI i) := by rw [Matrix.mulVec_single_one]; rfl
  rw [Pi.sub_apply, sub_eq_zero, e, Pi.single_apply]

theorem par_uni_iff_flags (x y : Matrix (Idx r k) (Idx r k) K) (hxy : x * y = 1) (hyx : y * x = 1) :
    Par IsUpUni x ↔ ColC x ∧ ColW x ∧ RowC y := by
  constructor
  · intro hx
    have hu : Par (fun h => IsUnit h.det) x := by
      obtain ⟨h11, h33, h21, h31, h32, h, hh, h22⟩ := hx
      exact ⟨h11, h33, h21, h31, h32, h, uni_unit hh, h22⟩
    obtain ⟨hC, hR⟩ := (par_iff_flags x y hxy hyx).1 hu
    refine ⟨hC, ?_, hR⟩
    obtain ⟨h11, h33, h21, h31, h32, h, hh, h22⟩ := hx
    rw [colW_iff]
    intro i j hj
    rcases j with a | (j | u) | c
    · exact absurd (Or.inl ⟨a, rfl⟩) hj
    · have e := congrFun (congrFun h22 (Sum.inl j)) (Sum.inl i)
      simp only [b22, midEmb, Matrix.of_apply, Matrix.fromBlocks_apply₁₁] at e
      have hji : ¬ j < i := fun hlt => hj (Or.inr ⟨j, hlt, rfl⟩)
      show x (wI j) (wI i) = _
      rw [show x (wI j) (wI i) = h j i from e]
      by_cases hij : j = i
      · subst hij; simp [hh.2 j, wI]
      · have hlt : i < j := lt_of_le_of_ne (not_lt.1 hji) (Ne.symm hij)
        rw [hh.1 hlt]
        have : (wI j : Idx r k) ≠ wI i := by
          intro e'; apply hij; simpa [wI] using e'
        simp [wI, hij]
    · have e := congrFun (congrFun h22 (Sum.inr u)) (Sum.inl i)
      simp only [b22, midEmb, Matrix.of_apply, Matrix.fromBlocks_apply₂₁, Matrix.zero_apply] at e
      have e' : x (Sum.inr (Sum.inl (Sum.inr u))) (wI i) = 0 := e
      rw [e']; simp [wI]
    · have e := congrFun (congrFun h32 c) (Sum.inl i)
      simp only [b32, Matrix.of_apply, Matrix.zero_apply] at e
      have e' : x (Sum.inr (Sum.inr c)) (wI i) = 0 := e
      rw [e']; simp [wI]
  · rintro ⟨hC, hW, hR⟩
    obtain ⟨h11, h33, h21, h31, h32, h, -, h22⟩ := (par_iff_flags x y hxy hyx).2 ⟨hC, hR⟩
    refine ⟨h11, h33, h21, h31, h32, h, ⟨fun j i hlt => ?_, fun i => ?_⟩, h22⟩
    ·
      have e := congrFun (congrFun h22 (Sum.inl j)) (Sum.inl i)
      simp only [b22, midEmb, Matrix.of_apply, Matrix.fromBlocks_apply₁₁] at e
      rw [← e]
      have hnot : (wI j : Idx r k) ∉ posW (r := r) i := by
        rintro (⟨a, ha⟩ | ⟨j', hj', he⟩)
        · simp [wI] at ha
        · have : j' = j := by simpa [wI] using he
          subst this
          exact absurd hlt (not_lt.2 (le_of_lt hj'))
      have := (colW_iff x).1 hW i (wI j) hnot
      rw [show x (wI j) (wI i) = x (Sum.inr (Sum.inl (Sum.inl j))) (Sum.inr (Sum.inl (Sum.inl i))) from rfl] at this
      rw [this]
      have hne : (wI j : Idx r k) ≠ wI i := by
        intro e'; have : j = i := by simpa [wI] using e'
        exact absurd hlt (by rw [this]; exact lt_irrefl _)
      simp [hne]
    · have e := congrFun (congrFun h22 (Sum.inl i)) (Sum.inl i)
      simp only [b22, midEmb, Matrix.of_apply, Matrix.fromBlocks_apply₁₁] at e
      rw [← e]
      have hnot : (wI i : Idx r k) ∉ posW (r := r) i := by
        rintro (⟨a, ha⟩ | ⟨j', hj', he⟩)
        · simp [wI] at ha
        · have : j' = i := by simpa [wI] using he
          subst this
          exact lt_irrefl j' hj'
      have := (colW_iff x).1 hW i (wI i) hnot
      have h1 : x (wI i) (wI i) = 1 := by simpa using this
      exact h1

theorem mem_nuG_iff_flags (g : GL (Idx r k) K) :
    g ∈ nuG K r k ↔ ColFlag (g : Matrix (Idx r k) (Idx r k) K) ∧ ColW (g : Matrix (Idx r k) (Idx r k) K) ∧
      RowFlag ((g⁻¹ : GL (Idx r k) K) : Matrix (Idx r k) (Idx r k) K) := by
  rw [colFlag_iff, rowFlag_iff]
  exact par_uni_iff_flags _ _ (by rw [← Units.val_mul, mul_inv_cancel, Units.val_one])
    (by rw [← Units.val_mul, inv_mul_cancel, Units.val_one])

end MassDataIdxStIm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ParUniIffFlags =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsSub =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsSub", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FirstCoordsMulVec\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ParUniIffFlags\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.GlRedEqOneIff\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataIdxSteps

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge MassDataIdxStIm MassDataIdxRed MassDataIdxSpl Matrix
open scoped TensorProduct

section Loc

variable {D : D7} (X : HidaSetting D) (p : TypX X) (θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p)
  (Q : GL (IdxD D) (FpX X p))

def fposA (a : Fin D.R.rS) : IdxD D := Sum.inr (Sum.inr (Fin.rev a))

def EntA (π : Op X p →+* ZMod (gOf p)) (Y : GL (IdxD D) (Op X p)) : Prop :=
  (∀ a : Fin D.R.rS, ∀ i, i ∉ (Sum.inl '' {b : Fin D.R.rS | b.1 < a.1} : Set (IdxD D)) →
    π ((Y : Matrix (IdxD D) (IdxD D) (Op X p)) i (Sum.inl a)) = if i = Sum.inl a then 1 else 0) ∧
  (∀ i, i ∉ (Sum.inl '' Set.univ : Set (IdxD D)) →
    π ((Y : Matrix (IdxD D) (IdxD D) (Op X p)) i zI) = if i = zI then 1 else 0) ∧
  (∀ j : Fin D.R.k, ∀ i, i ∉ (posW (r := D.R.rS) j : Set (IdxD D)) →
    π ((Y : Matrix (IdxD D) (IdxD D) (Op X p)) i (wI j)) = if i = wI j then 1 else 0) ∧
  (∀ a : Fin D.R.rS, ∀ i, i ∉ (fposA (D := D) '' {b : Fin D.R.rS | b.1 < a.1}) →
    π (((Y⁻¹ : GL (IdxD D) (Op X p)) : Matrix (IdxD D) (IdxD D) (Op X p)) (fposA a) i) =
      if i = fposA a then 1 else 0) ∧
  (∀ i, i ∉ (fposA (D := D) '' Set.univ) →
    π (((Y⁻¹ : GL (IdxD D) (Op X p)) : Matrix (IdxD D) (IdxD D) (Op X p)) zI i) = if i = zI then 1 else 0)

theorem firstCoords_sub (a b : Fin X.B.I.n → TpX X p) : crd1 X p θ Q (a - b) = crd1 X p θ Q a - crd1 X p θ Q b := by
  unfold crd1
  rw [map_sub, show (pr1 θ a - pr1 θ b) ∘ (idxEquiv X).symm =
    pr1 θ a ∘ (idxEquiv X).symm - pr1 θ b ∘ (idxEquiv X).symm from rfl, Matrix.mulVec_sub]

theorem secondCoords_sub (a b : Fin X.B.I.n → TpX X p) : crd2 X p θ Q (a - b) = crd2 X p θ Q a - crd2 X p θ Q b := by
  unfold crd2
  rw [map_sub, show (pr2 θ a - pr2 θ b) ∘ (idxEquiv X).symm =
    pr2 θ a ∘ (idxEquiv X).symm - pr2 θ b ∘ (idxEquiv X).symm from rfl, Matrix.mulVec_sub, Matrix.mulVec_sub]

end Loc

end MassDataIdxSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsSub =====
