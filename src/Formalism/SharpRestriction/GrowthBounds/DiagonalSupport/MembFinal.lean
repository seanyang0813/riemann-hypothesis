module

public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.PlaneCoeff
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.RestValBdG
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.FrMemLetters
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ExistsMapOfCoefGe
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.LowestWeightCNonpos
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembTop
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDefs
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.NoMonMultideg
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembAlgF
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.PosTLSurj
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.Proposition5OfThreeParts
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MemSupportSumMonomial
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.TwiceValuationFactorialProduct
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDd
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembVB
import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.IsMultiHom
import Formalism.SharpRestriction.GrowthBounds.PathWeight.GeneratorImageIsSymbol
import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.DvdOfAdd
import Formalism.SharpRestriction.GrowthBounds.WittFrameLocaliserOrders
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ValuationOneEqZero
import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SlackBoundReal
import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ValLamOfSubset

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ThresholdGeOddPosition, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembXXb, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SumMulSumProd, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.DecIdentity, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.HomCompRename, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDegF, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembLabF, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ProjectionMemPartialSpan, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.TwistSliceCoeff, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembershipOfThreeParts, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembFinal

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ThresholdGeOddPosition =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ThresholdGeOddPosition", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.PlaneCoeff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.GrowthBounds.DualFockLinear.IsMultiHom\nimport Formalism.SharpRestriction.GrowthBounds.PathWeight.GeneratorImageIsSymbol\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.DvdOfAdd\nimport Formalism.SharpRestriction.GrowthBounds.WittFrameLocaliserOrders\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.Proposition5Numerics

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords
open Formalism.MainNotions.G.WittFrameLocaliserOrders Formalism.MainNotions.G.symbolGeneratorData

namespace XXb

section Fr

variable {n' r : ℕ} [NeZero n'] {Fr : Frames n' r} {L₁ N₁ : ℕ}

theorem exists_posU (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (j : ℤ) (N : ℕ) (hN : N = (Fr.LLset j).card) (x : ℤ)
    (hx : x ∈ Fr.letters j) (hW : ¬ Fr.IsW j x) : ∃ u, u < N + r ∧ posU Fr N j u = x := by
  have hlen : ((Fr.LLset j).sort (· ≤ ·)).length = N := by rw [Finset.length_sort, hN]
  simp only [Frames.letters, Finset.mem_filter, Finset.mem_Icc] at hx
  unfold Frames.IsW at hW
  push_neg at hW
  obtain ⟨⟨hx1, hx2⟩, hxT⟩ := hx
  rcases lt_or_ge x (Fr.fr j 0) with hlt | hge
  · have hxL : x ∈ Fr.LLset j := by
      simp only [Frames.LLset, Finset.mem_filter, Finset.mem_Ioo]
      exact ⟨⟨hW, hlt⟩, hxT⟩
    obtain ⟨u, hu, hux⟩ := List.mem_iff_getElem.mp ((Finset.mem_sort (· ≤ ·)).mpr hxL)
    refine ⟨u, by omega, ?_⟩
    unfold posU llPos
    rw [if_pos (by omega), List.getD_eq_getElem _ _ hu, hux]
  · have key : ∃ i, i < r ∧ Fr.fr j i = x := by
      by_contra hne
      push_neg at hne
      have hall : ∀ i, i < r → Fr.fr j i < x := by
        intro i
        induction i with
        | zero => intro h0; exact lt_of_le_of_ne hge (hne 0 h0)
        | succ k ih =>
          intro hk
          have h1 := ih (by omega)
          by_contra h2
          push_neg at h2
          have h3 : x < Fr.fr j (k + 1) := lt_of_le_of_ne h2 (fun h' => hne (k + 1) hk h'.symm)
          exact hV.2.2.2.2.2.1 j k x hk h1 h3 hxT
      have h4 := hall (r - 1) (by omega)
      omega
    obtain ⟨i, hi, hix⟩ := key
    refine ⟨N + i, by omega, ?_⟩
    unfold posU
    rw [if_neg (by omega), Nat.add_sub_cancel_left, hix]

theorem posU_even (hV : Fr.Valid L₁ N₁) (j : ℤ) (N u : ℕ) (h1 : N ≤ u) (h2 : u < N + r) : Even (posU Fr N j u) := by
  unfold posU
  rw [if_neg (by omega)]
  exact (hV.2.2.2.2.1 j (u - N) (by omega)).2

theorem posU_letter (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (j : ℤ) (N : ℕ) (hN : N = (Fr.LLset j).card) (u : ℕ)
    (hu : u ≤ N) : posU Fr N j u ∈ Fr.letters j ∧ ¬ Fr.IsW j (posU Fr N j u) := by
  have hmemLL : ∀ x ∈ Fr.LLset j, x ∈ Fr.letters j ∧ ¬ Fr.IsW j x := by
    intro x hx
    simp only [Frames.LLset, Finset.mem_filter, Finset.mem_Ioo] at hx
    refine ⟨?_, ?_⟩
    · simp only [Frames.letters, Finset.mem_filter, Finset.mem_Icc]
      refine ⟨⟨?_, ?_⟩, hx.2⟩
      · exact (_root_.Formalism.MainNotions.G.WittFrameLocaliserOrders.frame_first_entry_le hV (j - 1) (r - 1) (by omega)).trans hx.1.1.le
      · exact hx.1.2.le.trans (_root_.Formalism.MainNotions.G.WittFrameLocaliserOrders.frame_first_entry_le hV j (r - 1) (by omega))
    · unfold Frames.IsW
      push_neg
      exact hx.1.1
  unfold posU
  rcases Nat.lt_or_ge u N with hu' | hu'
  · rw [if_pos hu']
    apply hmemLL
    unfold llPos
    have hlen : u < ((Fr.LLset j).sort (· ≤ ·)).length := by rw [Finset.length_sort]; omega
    rw [List.getD_eq_getElem _ _ hlen]
    exact (Finset.mem_sort _).mp (List.getElem_mem _)
  · have hu'' : u = N := le_antisymm hu hu'
    rw [if_neg (by omega), hu'', Nat.sub_self]
    have hg := hV.2.2.2.1 (j - 1)
    rw [sub_add_cancel] at hg
    refine ⟨?_, ?_⟩
    · simp only [Frames.letters, Finset.mem_filter, Finset.mem_Icc]
      exact ⟨⟨(_root_.Formalism.MainNotions.G.WittFrameLocaliserOrders.frame_first_entry_le hV (j - 1) (r - 1) (by omega)).trans hg.le, _root_.Formalism.MainNotions.G.WittFrameLocaliserOrders.frame_first_entry_le hV j (r - 1) (by omega)⟩,
        (hV.2.2.2.2.1 j 0 (by omega)).1⟩
    · unfold Frames.IsW
      push_neg
      exact hg

end Fr

section Th

variable {n' r : ℕ} [NeZero n'] (Fr : Frames n' r) (p : ℕ) (deg : Fin n' → ℕ) (Y : ℝ) (k : ℕ) (mS : ℕ)
  {J : ℕ} (nL : ZMod J → ℕ) (K : ℕ) [NeZero K] (ka : ZMod J → ℕ → Fin K → ℤ) (j : ZMod J) (u : ℕ)

theorem th_ge_B : Bo p Fr deg (segZ j) (posU Fr (nL j) (segZ j) u) / 2 ≤ thStar Fr p deg Y k mS nL K ka j u := by
  unfold thStar
  exact le_max_left _ _

theorem threshold_ge_even_position (h : Even (posU Fr (nL j) (segZ j) u)) :
    (ka j (u + 1) 0 : ℝ) + mS + slU Fr p deg Y k nL j u ≤ thStar Fr p deg Y k mS nL K ka j u := by
  unfold thStar slU
  dsimp only
  rw [if_pos h]
  exact le_max_of_le_right (le_max_left _ _)

theorem threshold_ge_odd_position (h : ¬ Even (posU Fr (nL j) (segZ j) u)) :
    (ka j u 0 : ℝ) + mS + slU Fr p deg Y k nL j (u + 1) ≤ thStar Fr p deg Y k mS nL K ka j (u + 1) := by
  unfold thStar slU
  dsimp only
  have hc : 1 ≤ u + 1 ∧ ¬ Even (posU Fr (nL j) (segZ j) u) := ⟨by omega, h⟩
  rw [add_tsub_cancel_right, if_pos hc]
  exact le_max_of_le_right (le_max_right _ _)

end Th

theorem int_le_val {z : ℤ} {t : ℝ} {v : WithTop ℤ} (h1 : (z : ℝ) ≤ t) (h2 : ((⌈t⌉ : ℤ) : WithTop ℤ) ≤ v) :
    ((z : ℤ) : WithTop ℤ) ≤ v := by
  have h3 : z ≤ ⌈t⌉ := by exact_mod_cast h1.trans (Int.le_ceil t)
  exact (WithTop.coe_le_coe.mpr h3).trans h2

theorem geR_of_ceil {s t : ℝ} {v : WithTop ℤ} (h1 : s ≤ t) (h2 : ((⌈t⌉ : ℤ) : WithTop ℤ) ≤ v) : geR v s := by
  intro z hz
  rw [hz] at h2
  exact h1.trans (Int.ceil_le.mp (WithTop.coe_le_coe.mp h2))

theorem ar1 (T a m s c : ℝ) (h1 : a + m + s ≤ T) (h2 : 128 * c ≤ s) : a + 4 * c + m ≤ T - s / 2 - 60 * c := by
  linarith

theorem ar3 (T B s c : ℝ) (h1 : B / 2 ≤ T) (h2 : 128 * c ≤ s) (hc : 0 ≤ c) : B / 2 - s ≤ T - s / 2 - 60 * c := by
  linarith

section Sup

variable {O : Type} [CommRing O] {r K : ℕ}

theorem exists_of_rename {σ τ : Type} (f : σ → τ) (A : MvPolynomial σ O) (a : τ →₀ ℕ) (ha : a ∈ (rename f A).support) :
    ∃ u ∈ A.support, Finsupp.mapDomain f u = a := by
  by_contra hc
  push_neg at hc
  have h0 : (rename f A).coeff a = 0 := MvPolynomial.coeff_rename_eq_zero f A a (fun u hu => by
    by_contra hu0
    exact hc u (MvPolynomial.mem_support_iff.mpr hu0) hu)
  exact (MvPolynomial.mem_support_iff.mp ha) h0

theorem deg_mul (A : MvPolynomial (ℤ × Fin r) O) (B : MvPolynomial (ℤ × Fin K) O) (mm : ℤ × Fin (r + K) →₀ ℕ)
    (hmm : mm ∈ (plEmb O r K A * nmEmb O r K B).support) :
    ∃ ua ∈ A.support, ∃ ub ∈ B.support, ∀ x, (∀ c : Fin r, mm (x, Fin.castAdd K c) = ua (x, c)) ∧
      ∀ c : Fin K, mm (x, Fin.natAdd r c) = ub (x, c) := by
  obtain ⟨a', ha', b', hb', rfl⟩ := Finset.mem_add.mp (MvPolynomial.support_mul _ _ hmm)
  obtain ⟨ua, hua, rfl⟩ := exists_of_rename (fun v : ℤ × Fin r => (v.1, Fin.castAdd K v.2)) A a' ha'
  obtain ⟨ub, hub, rfl⟩ := exists_of_rename (fun v : ℤ × Fin K => (v.1, Fin.natAdd r v.2)) B b' hb'
  have hinj1 : Function.Injective (fun v : ℤ × Fin r => (v.1, Fin.castAdd K v.2)) := by
    rintro ⟨a1, a2⟩ ⟨b1, b2⟩ h
    simp only [Prod.mk.injEq] at h
    exact Prod.ext h.1 (Fin.castAdd_injective _ _ h.2)
  have hinj2 : Function.Injective (fun v : ℤ × Fin K => (v.1, Fin.natAdd r v.2)) := by
    rintro ⟨a1, a2⟩ ⟨b1, b2⟩ h
    simp only [Prod.mk.injEq] at h
    exact Prod.ext h.1 (Fin.natAdd_injective _ _ h.2)
  refine ⟨ua, hua, ub, hub, fun x => ⟨fun c => ?_, fun c => ?_⟩⟩
  · have e1 := Finsupp.mapDomain_apply_of_injective hinj1 ua (x, c)
    simp only at e1
    have e2 : Finsupp.mapDomain (fun v : ℤ × Fin K => (v.1, Fin.natAdd r v.2)) ub (x, Fin.castAdd K c) = 0 := by
      apply Finsupp.mapDomain_notin_range
      rintro ⟨⟨y, d⟩, hyd⟩
      simp only [Prod.mk.injEq] at hyd
      have h5 := congrArg Fin.val hyd.2
      simp only [Fin.coe_natAdd, Fin.coe_castAdd] at h5
      omega
    rw [Finsupp.add_apply, e1, e2, add_zero]
  · have e1 := Finsupp.mapDomain_apply_of_injective hinj2 ub (x, c)
    simp only at e1
    have e2 : Finsupp.mapDomain (fun v : ℤ × Fin r => (v.1, Fin.castAdd K v.2)) ua (x, Fin.natAdd r c) = 0 := by
      apply Finsupp.mapDomain_notin_range
      rintro ⟨⟨y, d⟩, hyd⟩
      simp only [Prod.mk.injEq] at hyd
      have h5 := congrArg Fin.val hyd.2
      simp only [Fin.coe_natAdd, Fin.coe_castAdd] at h5
      omega
    rw [Finsupp.add_apply, e1, e2, zero_add]

end Sup

end XXb

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ThresholdGeOddPosition =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembXXb =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembXXb", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.RestValBdG\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.FrMemLetters\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ThresholdGeOddPosition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.Proposition5Numerics

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords
open Formalism.MainNotions.G.WittFrameLocaliserOrders Formalism.MainNotions.G.symbolGeneratorData

namespace XXb

section At

variable (p : ℕ) {n' r K : ℕ} [NeZero n'] [NeZero r] [NeZero K] (O : Type) [CommRing O] [IsDomain O]
  [IsDiscreteValuationRing O] (Fr : Frames n' r) (deg : Fin n' → ℕ) (Y : ℝ) (N₁ G' cP : ℕ)
  {J : ℕ} [NeZero J] (Dt : SignedChainData p O r J) (dNo : TL J Dt.nL r → ℕ) (ka : ZMod J → ℕ → Fin K → ℤ)

def Mx (j : ZMod J) (x : ℤ) : ℤ :=
  if h : ∃ u, u < Dt.nL j + r ∧ pU p O Fr Dt j u = x then
    (if Even x then ka j (Classical.choose h + 1) 0 + 4 * (cP : ℤ) else ka j (Classical.choose h) 0 + 4 * (cP : ℤ))
  else 0

theorem Mx_even {L₁ N₁' : ℕ} (hV : Fr.Valid L₁ N₁') (hnL : ∀ j, Dt.nL j = (Fr.LLset (segZ j)).card) (j : ZMod J) (u : ℕ)
    (hu : u < Dt.nL j + r) (he : Even (pU p O Fr Dt j u)) :
    Mx p O Fr cP Dt ka j (pU p O Fr Dt j u) = ka j (u + 1) 0 + 4 * (cP : ℤ) := by
  have hinj : ∀ a b, a < Dt.nL j + r → b < Dt.nL j + r → pU p O Fr Dt j a = pU p O Fr Dt j b → a = b := by
    intro a b ha hb hab
    unfold pU at hab
    rw [hnL j] at ha hb hab
    rcases lt_trichotomy a b with h1 | h1 | h1
    · exact absurd hab (ne_of_lt ((posU_lt_iff hV (segZ j) a b ha hb).mpr h1))
    · exact h1
    · exact absurd hab (ne_of_gt ((posU_lt_iff hV (segZ j) b a hb ha).mpr h1))
  have hex : ∃ u', u' < Dt.nL j + r ∧ pU p O Fr Dt j u' = pU p O Fr Dt j u := ⟨u, hu, rfl⟩
  have hc := Classical.choose_spec hex
  have heq : Classical.choose hex = u := hinj _ _ hc.1 hu hc.2
  unfold Mx
  rw [dite_eq_left hex, if_pos he, heq]

theorem Mx_odd {L₁ N₁' : ℕ} (hV : Fr.Valid L₁ N₁') (hnL : ∀ j, Dt.nL j = (Fr.LLset (segZ j)).card) (j : ZMod J) (u : ℕ)
    (hu : u < Dt.nL j + r) (he : ¬ Even (pU p O Fr Dt j u)) :
    Mx p O Fr cP Dt ka j (pU p O Fr Dt j u) = ka j u 0 + 4 * (cP : ℤ) := by
  have hinj : ∀ a b, a < Dt.nL j + r → b < Dt.nL j + r → pU p O Fr Dt j a = pU p O Fr Dt j b → a = b := by
    intro a b ha hb hab
    unfold pU at hab
    rw [hnL j] at ha hb hab
    rcases lt_trichotomy a b with h1 | h1 | h1
    · exact absurd hab (ne_of_lt ((posU_lt_iff hV (segZ j) a b ha hb).mpr h1))
    · exact h1
    · exact absurd hab (ne_of_gt ((posU_lt_iff hV (segZ j) b a hb ha).mpr h1))
  have hex : ∃ u', u' < Dt.nL j + r ∧ pU p O Fr Dt j u' = pU p O Fr Dt j u := ⟨u, hu, rfl⟩
  have hc := Classical.choose_spec hex
  have heq : Classical.choose hex = u := hinj _ _ hc.1 hu hc.2
  unfold Mx
  rw [dite_eq_left hex, if_neg he, heq]

theorem cond_at {TT : Finset (Fin n')} {L₁ L₂ : ℕ} {d : Fin n' → ℕ}
    (hM : MFH p Fr TT L₁ L₂ N₁ G' deg d Y (r + K) cP) (hnL : ∀ j, Dt.nL j = (Fr.LLset (segZ j)).card)
    (δ : ZMod J × ℤ → ℕ) (j : ZMod J) (A : MvPolynomial (ℤ × Fin r) O) (B : MvPolynomial (ℤ × Fin K) O)
    (hPl : PlOK p O Fr deg Y N₁ G' cP Dt ka δ j A) (hNo : NoOK p O Fr cP Dt dNo ka j B) (u : ℕ)
    (hu : u < Dt.nL j + r) (hx : pU p O Fr Dt j u ∈ Fr.letters (segZ j)) (hW : ¬ Fr.IsW (segZ j) (pU p O Fr Dt j u)) :
    (Even (pU p O Fr Dt j u) →
      lam1S LZ {y | y ≤ pU p O Fr Dt j u} B ≤ ((Mx p O Fr cP Dt ka j (pU p O Fr Dt j u) : ℤ) : WithBot ℤ) ∧
      ((Mx p O Fr cP Dt ka j (pU p O Fr Dt j u) + (mStar p Fr (r + K) N₁ (p ^ G') cP : ℤ) : ℤ) : WithTop ℤ) ≤
        valS LZ {y | y < pU p O Fr Dt j u} A) ∧
    (¬ Even (pU p O Fr Dt j u) →
      lam1S LZ {y | y < pU p O Fr Dt j u} B ≤ ((Mx p O Fr cP Dt ka j (pU p O Fr Dt j u) : ℤ) : WithBot ℤ) ∧
      ((Mx p O Fr cP Dt ka j (pU p O Fr Dt j u) + (mStar p Fr (r + K) N₁ (p ^ G') cP : ℤ) : ℤ) : WithTop ℤ) ≤
        valS LZ {y | y ≤ pU p O Fr Dt j u} A) ∧
    geR (valS LZ {y | y < pU p O Fr Dt j u} A)
      (Bo p Fr deg (segZ j) (pU p O Fr Dt j u) / 2 - sl p Fr deg Y (r + K) (segZ j) (pU p O Fr Dt j u)) := by
  have hV := hM.frames.2.1
  have hr1 : 1 ≤ r := by have := hM.two_le_r; omega
  have hc0 : (0 : ℝ) ≤ (cP : ℝ) := Nat.cast_nonneg _
  have hs : 128 * (cP : ℝ) ≤ slU Fr p deg Y (r + K) Dt.nL j u := hM.margin (segZ j) _ hx hW
  refine ⟨fun he => ?_, fun he => ?_, ?_⟩
  · rw [Mx_even p O Fr cP Dt ka hV hnL j u hu he]
    refine ⟨(hNo.2.2 u hu).2, int_le_val ?_ (hPl.2.2.1 u hu)⟩
    have h1 := threshold_ge_even_position Fr p deg Y (r + K) (mStar p Fr (r + K) N₁ (p ^ G') cP) Dt.nL K ka j u he
    have h2 := ar1 _ _ _ _ _ h1 hs
    unfold tauU
    push_cast
    exact h2
  · rw [Mx_odd p O Fr cP Dt ka hV hnL j u hu he]
    have huN : u < Dt.nL j := by
      by_contra hcon
      exact he (posU_even hV (segZ j) (Dt.nL j) u (by omega) hu)
    refine ⟨(hNo.2.2 u hu).1, int_le_val ?_ (hPl.2.2.2 u huN)⟩
    obtain ⟨l1, l2⟩ := posU_letter hV hr1 (segZ j) (Dt.nL j) (hnL j) (u + 1) (by omega)
    have hs' : 128 * (cP : ℝ) ≤ slU Fr p deg Y (r + K) Dt.nL j (u + 1) := hM.margin (segZ j) _ l1 l2
    have h1 := threshold_ge_odd_position Fr p deg Y (r + K) (mStar p Fr (r + K) N₁ (p ^ G') cP) Dt.nL K ka j u he
    have h2 := ar1 _ _ _ _ _ h1 hs'
    unfold tauU
    push_cast
    exact h2
  · refine geR_of_ceil ?_ (hPl.2.2.1 u hu)
    have h1 := th_ge_B Fr p deg Y (r + K) (mStar p Fr (r + K) N₁ (p ^ G') cP) Dt.nL K ka j u
    exact ar3 _ _ _ _ h1 hs hc0

end At

end XXb


open XXb in
theorem restXXG_b : RestXXG := by
  intro p _ n' r K _ _ _ O _ _ _ S Fr TT L₁ L₂ N₁ G' deg d Y cP hM J _ Dt dPl dNo ka hT δ j A B hPl hNo
  have hV := hM.frames.2.1
  have hr1 : 1 ≤ r := by have := hM.two_le_r; omega
  have hnL := hT.1.2.1
  have hdeg : ∀ mm ∈ (plEmb O r K A * nmEmb O r K B).support, ∀ x,
      ∑ c : Fin (r + K), mm (x, c) = δ (j, x) + dNoOf p O Fr Dt dNo (j, x) ∧
      ordDeg mm x ≤ δ (j, x) + dNoOf p O Fr Dt dNo (j, x) := by
    intro mm hmm x
    obtain ⟨ua, hua, ub, hub, h⟩ := XXb.deg_mul A B mm hmm
    have e1 : ∑ c : Fin r, mm (x, Fin.castAdd K c) = δ (j, x) := by
      rw [← hPl.2.1 ua hua x]
      exact Finset.sum_congr rfl fun c _ => (h x).1 c
    have e2 : ∑ c : Fin K, mm (x, Fin.natAdd r c) = dNoOf p O Fr Dt dNo (j, x) := by
      rw [← hNo.2.1 ub hub x]
      exact Finset.sum_congr rfl fun c _ => (h x).2 c
    refine ⟨by rw [Fin.sum_univ_add, e1, e2], ?_⟩
    unfold ordDeg
    split_ifs
    · rw [e2]; omega
    · rw [e1]; omega
  refine ⟨?_, ?_⟩
  · unfold XX'
    refine Submodule.mem_inf.2 ⟨Submodule.subset_span ⟨A, B, XXb.Mx p O Fr cP Dt ka j, hPl.1, hNo.1, ?_, rfl⟩, ?_⟩
    · intro x hx hW
      obtain ⟨u, hu, rfl⟩ := XXb.exists_posU hV hr1 (segZ j) (Dt.nL j) (hnL j) x hx hW
      exact XXb.cond_at p O Fr deg Y N₁ G' cP Dt dNo ka hM hnL δ j A B hPl hNo u hu hx hW
    · rw [mem_restrictSupport_iff]
      intro mm hmm x _ _
      show (ordDeg mm x : ℝ) ≤ ((δ (j, x) + dNoOf p O Fr Dt dNo (j, x) : ℕ) : ℝ)
      exact Nat.cast_le.2 (hdeg mm hmm x).2
  · rw [mem_restrictSupport_iff]
    intro mm hmm x _
    exact (hdeg mm hmm x).1

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembXXb =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SumMulSumProd =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SumMulSumProd", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ExistsMapOfCoefGe\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.LowestWeightCNonpos\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.Proposition5Numerics

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords

theorem ceil_le_of_geZ {x : WithTop ℤ} {t : ℝ} (h : geZ x t) : ((⌈t⌉ : ℤ) : WithTop ℤ) ≤ x := by
  induction x using WithTop.recTopCoe with
  | top => exact le_top
  | coe k => exact WithTop.coe_le_coe.2 (Int.ceil_le.2 (h k rfl))

section Tr

variable {O : Type} [CommRing O] {J : ℕ} {n : ℕ}

theorem back_rename (j : ZMod J) (X : MvPolynomial ((ZMod J × ℤ) × Fin n) O)
    (hX : X ∈ supported O {v : (ZMod J × ℤ) × Fin n | v.1.1 = j}) :
    rename (fun v : ℤ × Fin n => ((j, v.1), v.2)) (rename (fun v : (ZMod J × ℤ) × Fin n => (v.1.2, v.2)) X) = X := by
  rw [MvPolynomial.supported_eq_range_rename] at hX
  obtain ⟨Y, hY⟩ := hX
  rw [← hY]
  simp only [AlgHom.toRingHom_eq_coe, RingHom.coe_coe, MvPolynomial.rename_rename]
  refine congrArg (fun f => (rename (R := O) f) Y) ?_
  funext v
  obtain ⟨⟨⟨a, b⟩, c⟩, hv⟩ := v
  simp only [Set.mem_setOf_eq] at hv
  subst hv
  rfl

private theorem twistSub_rename_eq {R : Type} [CommRing R] {ι κ : Type} {n : ℕ} (LL : Letters ι) (LK : Letters κ)
    (S : Set ι) (T : Set κ) (g : κ → ι) (hvec : ∀ y, LL.vec (g y) = LK.vec y) (hS : ∀ y, g y ∈ S ↔ y ∈ T)
    (k : Fin n) (X' : MvPolynomial (κ × Fin n) R) :
    twistSub LL S k (rename (R := R) (fun v : κ × Fin n => (g v.1, v.2)) X') =
      rename (R := GLLaurent R n) (fun v : κ × Fin n => (g v.1, v.2)) (twistSub LK T k X') := by
  have h : (twistSub LL S k).comp (rename (R := R) (fun v : κ × Fin n => (g v.1, v.2))).toRingHom =
      (rename (R := GLLaurent R n) (fun v : κ × Fin n => (g v.1, v.2))).toRingHom.comp (twistSub LK T k) := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [twistSub]
    · intro v
      simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, rename_X, twistSub,
        eval₂Hom_X', hS, hvec]
      split_ifs <;> simp [map_sum]
  exact congrArg (fun φ => φ X') h

private theorem sDegs_rename_eq_of_injective {R : Type} [CommRing R] {ι κ : Type} {n : ℕ} (LL : Letters ι) (LK : Letters κ)
    (S : Set ι) (T : Set κ) (g : κ → ι) (hg : Function.Injective g) (hvec : ∀ y, LL.vec (g y) = LK.vec y)
    (hS : ∀ y, g y ∈ S ↔ y ∈ T) (k : Fin n) (X' : MvPolynomial (κ × Fin n) R) :
    sDegs LL S k (rename (fun v : κ × Fin n => (g v.1, v.2)) X') = sDegs LK T k X' := by
  have hinj : Function.Injective (fun v : κ × Fin n => (g v.1, v.2)) := fun a b h => by
    simp only [Prod.mk.injEq] at h
    exact Prod.ext (hg h.1) h.2
  unfold sDegs
  rw [twistSub_rename_eq LL LK S T g hvec hS k X', MvPolynomial.support_rename_of_injective hinj,
    Finset.image_biUnion]
  simp only [MvPolynomial.coeff_rename_mapDomain _ hinj]

theorem seg_val [NeZero n] (j : ZMod J) (X' : MvPolynomial (ℤ × Fin n) O) (P : ℤ → Prop) :
    valS (LSeg J) {i | i.1 = j ∧ P i.2} (rename (fun v : ℤ × Fin n => ((j, v.1), v.2)) X') = valS LZ {y | P y} X' ∧
    lam1S (LSeg J) {i | i.1 = j ∧ P i.2} (rename (fun v : ℤ × Fin n => ((j, v.1), v.2)) X') = lam1S LZ {y | P y} X' := by
  have h1 : ∀ k, sDegs (LSeg J) {i | i.1 = j ∧ P i.2} k (rename (fun v : ℤ × Fin n => ((j, v.1), v.2)) X') =
      sDegs LZ {y | P y} k X' := fun k =>
    sDegs_rename_eq_of_injective (LSeg J) LZ _ _ (fun y : ℤ => (j, y)) (fun a b h => (Prod.mk.inj h).2) (fun y => rfl)
      (fun y => by simp) k X'
  exact ⟨by simp only [valS, h1], by simp only [lam1S, h1]⟩

end Tr

section XGs

variable {O : Type} [CommRing O] [IsDomain O] {ι G : Type} (π : ι → G) {n : ℕ} [NeZero n] (LL : Letters ι)
  (Cv Cl : G → Set (Set ι × ℤ)) (F : MvPolynomial (ι × Fin n) O)

theorem XG_supported (j : G) (x : MvPolynomial (ι × Fin n) O) (hx : x ∈ XG π LL Cv Cl F j) :
    x ∈ supported O {v : ι × Fin n | π v.1 = j} := by
  rw [MvPolynomial.mem_supported]
  intro v hv
  obtain ⟨d, hd, hvd⟩ := (MvPolynomial.mem_vars_iff_mem_support v).mp (Finset.mem_coe.mp hv)
  obtain ⟨mo', -, rfl⟩ := Finset.mem_image.mp (hx.1 d hd)
  rw [Finsupp.mem_support_iff] at hvd
  show π v.1 = j
  by_contra hne
  exact hvd (by simp [partOf, Finsupp.filter_apply, hne])

theorem XG_part (j : G) (x : MvPolynomial (ι × Fin n) O) (hx : x ∈ XG π LL Cv Cl F j) (mo : ι × Fin n →₀ ℕ)
    (hmo : mo ∈ x.support) : ∃ mo' ∈ F.support, partOf π j mo' = mo :=
  Finset.mem_image.1 (hx.1 mo hmo)

theorem partOf_apply_pos (j : G) (mo : ι × Fin n →₀ ℕ) (v : ι × Fin n) (hv : π v.1 = j) : partOf π j mo v = mo v := by
  unfold partOf
  exact Finsupp.filter_apply_pos _ _ hv

end XGs

theorem support_homComp {R : Type} [CommRing R] {ι : Type} {n : ℕ} (δ : ι → ℕ) (F : MvPolynomial (ι × Fin n) R)
    (mo : ι × Fin n →₀ ℕ) (h : mo ∈ (homComp δ F).support) : mo ∈ F.support ∧ ∀ i, multideg mo i = δ i := by
  have hc := MvPolynomial.mem_support_iff.mp h
  simp only [homComp, MvPolynomial.coeff_sum, MvPolynomial.coeff_monomial, Finset.sum_ite_eq', Finset.mem_filter] at hc
  split_ifs at hc with hm
  · exact hm
  · exact absurd rfl hc

section Ph

variable {n' r : ℕ} [NeZero n'] (Fr : Frames n' r) (p : ℕ) (O : Type) [CommRing O] (K : ℕ) {J : ℕ}

theorem PhiPl_seg (j : ZMod J) (A : MvPolynomial (ℤ × Fin r) O) :
    PhiPl Fr p O K J (rename (fun v : ℤ × Fin r => ((j, v.1), v.2)) A) = phSeg O K p Fr (segZ j) (plEmb O r K A) := by
  simp only [PhiPl, phSeg, plEmb, MvPolynomial.aeval_rename, Function.comp_def]

theorem PhiNo_seg (j : ZMod J) (B : MvPolynomial (ℤ × Fin K) O) :
    PhiNo Fr p O K J (rename (fun v : ℤ × Fin K => ((j, v.1), v.2)) B) = phSeg O K p Fr (segZ j) (nmEmb O r K B) := by
  simp only [PhiNo, phSeg, nmEmb, MvPolynomial.aeval_rename, Function.comp_def]

end Ph

theorem segZ_cast {J : ℕ} [NeZero J] (t : ℕ) (ht : t < J) : segZ (((t : ℤ) : ZMod J)) = (t : ℤ) := by
  simp only [segZ, Int.cast_natCast, ZMod.val_natCast, Nat.mod_eq_of_lt ht]

theorem cast_segZ {J : ℕ} [NeZero J] (j : ZMod J) : ((segZ j : ℤ) : ZMod J) = j := by
  simp only [segZ, Int.cast_natCast, ZMod.natCast_zmod_val]

theorem prod_range_zmod {M : Type} [CommMonoid M] {J : ℕ} [NeZero J] (g : ℤ → M) :
    ∏ t ∈ Finset.range J, g (t : ℤ) = ∏ j : ZMod J, g (segZ j) := by
  symm
  refine Finset.prod_nbij' (fun j => j.val) (fun t => (t : ZMod J)) ?_ ?_ ?_ ?_ ?_
  · intro j _
    simp [ZMod.val_lt]
  · intro t _
    simp
  · intro j _
    simp
  · intro t ht
    simp only [Finset.mem_range] at ht
    simp [ZMod.val_natCast, Nat.mod_eq_of_lt ht]
  · intro j _
    rfl

theorem sum_mul_sum_prod {M : Type} [CommRing M] {G : Type} [Fintype G] {N1 N2 : ℕ} (a : Fin N1 → G → M)
    (b : Fin N2 → G → M) :
    (∑ i, ∏ j, a i j) * (∑ i, ∏ j, b i j) =
      ∑ q : Fin (N1 * N2), ∏ j, (a (finProdFinEquiv.symm q).1 j * b (finProdFinEquiv.symm q).2 j) := by
  rw [Finset.sum_mul_sum, ← Fintype.sum_prod_type']
  refine Fintype.sum_equiv finProdFinEquiv _ _ (fun p => ?_)
  simp [Finset.prod_mul_distrib]

section SegDec

variable {O : Type} [CommRing O] [IsDomain O] [IsPrincipalIdealRing O] {J : ℕ} [NeZero J] {n : ℕ} [NeZero n]

theorem seg_dec (hA : ATL) (hS : ValSlice) (F : MvPolynomial ((ZMod J × ℤ) × Fin n) O)
    (Cv Cl : ZMod J → Set ((ℤ → Prop) × ℤ))
    (hv : ∀ j, ∀ q ∈ Cv j, ((q.2 : ℤ) : WithTop ℤ) ≤ valS (LSeg J) {i | i.1 = j ∧ q.1 i.2} F)
    (hl : ∀ j, ∀ q ∈ Cl j, lam1S (LSeg J) {i | i.1 = j ∧ q.1 i.2} F ≤ ((q.2 : ℤ) : WithBot ℤ)) :
    ∃ (N : ℕ) (A' : Fin N → ZMod J → MvPolynomial (ℤ × Fin n) O),
      (∀ i j, (∀ mo ∈ (A' i j).support, ∃ mo' ∈ F.support, ∀ x c, mo (x, c) = mo' ((j, x), c)) ∧
        (∀ q ∈ Cv j, ((q.2 : ℤ) : WithTop ℤ) ≤ valS LZ {y | q.1 y} (A' i j)) ∧
        (∀ q ∈ Cl j, lam1S LZ {y | q.1 y} (A' i j) ≤ ((q.2 : ℤ) : WithBot ℤ))) ∧
      F = ∑ i, ∏ j, rename (fun v : ℤ × Fin n => ((j, v.1), v.2)) (A' i j) := by
  classical
  let Cv' : ZMod J → Set (Set (ZMod J × ℤ) × ℤ) := fun j =>
    (fun q : (ℤ → Prop) × ℤ => ({i : ZMod J × ℤ | i.1 = j ∧ q.1 i.2}, q.2)) '' Cv j
  let Cl' : ZMod J → Set (Set (ZMod J × ℤ) × ℤ) := fun j =>
    (fun q : (ℤ → Prop) × ℤ => ({i : ZMod J × ℤ | i.1 = j ∧ q.1 i.2}, q.2)) '' Cl j
  obtain ⟨N, A, hA', hF⟩ := decGen (O := O) (Prod.fst : ZMod J × ℤ → ZMod J) (LSeg J) Cv' Cl' F hA hS
    (by
      rintro j q ⟨q0, -, rfl⟩ i hi
      exact hi.1)
    (by
      rintro j q ⟨q0, -, rfl⟩ i hi
      exact hi.1)
    (by
      rintro j q ⟨q0, hq0, rfl⟩
      exact hv j q0 hq0)
    (by
      rintro j q ⟨q0, hq0, rfl⟩
      exact hl j q0 hq0)
  have hback : ∀ i j, rename (fun v : ℤ × Fin n => ((j, v.1), v.2))
      (rename (fun v : (ZMod J × ℤ) × Fin n => (v.1.2, v.2)) (A i j)) = A i j := fun i j =>
    back_rename j (A i j) (XG_supported Prod.fst (LSeg J) Cv' Cl' F j (A i j) (hA' i j))
  refine ⟨N, fun i j => rename (fun v : (ZMod J × ℤ) × Fin n => (v.1.2, v.2)) (A i j), fun i j => ?_, ?_⟩
  · have hmem : A i j ∈ XG Prod.fst (LSeg J) Cv' Cl' F j := hA' i j
    refine ⟨?_, ?_, ?_⟩
    · intro mo hmo
      have hinj : Function.Injective (fun v : ℤ × Fin n => ((j, v.1), v.2)) := fun a b h => by
        simp only [Prod.mk.injEq] at h
        exact Prod.ext h.1.2 h.2
      have h2 : Finsupp.mapDomain (fun v : ℤ × Fin n => ((j, v.1), v.2)) mo ∈ (A i j).support := by
        rw [← hback i j, MvPolynomial.support_rename_of_injective hinj]
        exact Finset.mem_image_of_mem _ hmo
      obtain ⟨mo', hmo', he⟩ := XG_part Prod.fst (LSeg J) Cv' Cl' F j (A i j) hmem _ h2
      refine ⟨mo', hmo', fun x c => ?_⟩
      have h4 : partOf Prod.fst j mo' ((j, x), c) =
          Finsupp.mapDomain (fun v : ℤ × Fin n => ((j, v.1), v.2)) mo ((j, x), c) := by
        rw [he]
      rw [partOf_apply_pos Prod.fst j mo' ((j, x), c) rfl,
        Finsupp.mapDomain_apply_of_injective hinj mo (x, c)] at h4
      exact h4.symm
    · intro q hq
      have h3 := hmem.2.1 _ ⟨q, hq, rfl⟩
      dsimp only at h3
      rw [← hback i j, (seg_val j _ q.1).1] at h3
      exact h3
    · intro q hq
      have h3 := hmem.2.2 _ ⟨q, hq, rfl⟩
      dsimp only at h3
      rw [← hback i j, (seg_val j _ q.1).2] at h3
      exact h3
  · conv_lhs => rw [hF]
    refine Finset.sum_congr rfl fun i _ => Finset.prod_congr rfl fun j _ => ?_
    exact (hback i j).symm

end SegDec

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SumMulSumProd =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.DecIdentity =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.DecIdentity", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembTop\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.RestValBdG\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SumMulSumProd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.Proposition5Numerics

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords

section At

variable (p : ℕ) {n' r K : ℕ} [NeZero n'] [NeZero r] [NeZero K] (O : Type) [CommRing O] [IsDomain O]
  [IsDiscreteValuationRing O] (Fr : Frames n' r) (deg : Fin n' → ℕ) (Y : ℝ) (N₁ G' cP : ℕ)
  {J : ℕ} [NeZero J] (Dt : SignedChainData p O r J) (dNo : TL J Dt.nL r → ℕ)
  (ka : ZMod J → ℕ → Fin K → ℤ)
  (No : MvPolynomial (TL J Dt.nL r × Fin K) O) (Go : MvPolynomial (ML J Dt.nL r × Fin r) O)

theorem plane_dec (hA : ATL) (hS : ValSlice) (hC : ValComp) (hVB : ValBd p O Fr deg Y N₁ G' cP Dt ka No Go)
    (hSp : SuppOK p O Fr Dt dNo No Go) (δ : ZMod J × ℤ → ℕ) :
    ∃ (N : ℕ) (A' : Fin N → ZMod J → MvPolynomial (ℤ × Fin r) O),
      (∀ i j, PlOK p O Fr deg Y N₁ G' cP Dt ka δ j (A' i j)) ∧
      homComp δ (xiPl Fr O Dt.nL Go) = ∑ i, ∏ j, rename (fun v : ℤ × Fin r => ((j, v.1), v.2)) (A' i j) := by
  obtain ⟨hV1, hV2, -⟩ := hVB
  obtain ⟨hSp1, -⟩ := hSp
  let Cv : ZMod J → Set ((ℤ → Prop) × ℤ) := fun j =>
    {q | ∃ u < Dt.nL j + r, q = ((fun y => y < pU p O Fr Dt j u), ⌈tauU p O Fr deg Y N₁ G' cP Dt ka j u⌉)} ∪
    {q | ∃ u < Dt.nL j, q = ((fun y => y ≤ pU p O Fr Dt j u), ⌈tauU p O Fr deg Y N₁ G' cP Dt ka j (u + 1)⌉)}
  have hCv : ∀ j, ∀ q ∈ Cv j, ((q.2 : ℤ) : WithTop ℤ) ≤
      valS (LSeg J) {i | i.1 = j ∧ q.1 i.2} (homComp δ (xiPl Fr O Dt.nL Go)) := by
    intro j q hq
    rcases hq with ⟨u, hu, rfl⟩ | ⟨u, hu, rfl⟩
    · exact le_trans (ceil_le_of_geZ (hV1 j u hu))
        (hC O (ZMod J × ℤ) r (LSeg J) (SLt j (pU p O Fr Dt j u)) (xiPl Fr O Dt.nL Go) δ).1
    · exact le_trans (ceil_le_of_geZ (hV2 j u hu))
        (hC O (ZMod J × ℤ) r (LSeg J) (SLe j (pU p O Fr Dt j u)) (xiPl Fr O Dt.nL Go) δ).1
  obtain ⟨N, A', hA', hF⟩ := seg_dec hA hS (homComp δ (xiPl Fr O Dt.nL Go)) Cv (fun _ => ∅) hCv
    (fun j q hq => by simp at hq)
  refine ⟨N, A', fun i j => ?_, hF⟩
  obtain ⟨hsup, hv, -⟩ := hA' i j
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [MvPolynomial.mem_supported]
    intro v hv'
    obtain ⟨mo, hmo, hvmo⟩ := (MvPolynomial.mem_vars_iff_mem_support v).mp (Finset.mem_coe.mp hv')
    obtain ⟨mo', hmo', he⟩ := hsup mo hmo
    have hF' := (support_homComp δ _ mo' hmo').1
    have hne : mo' ((j, v.1), v.2) ≠ 0 := by
      rw [← he]
      exact Finsupp.mem_support_iff.mp hvmo
    exact hSp1 mo' hF' ((j, v.1), v.2) (Finsupp.mem_support_iff.mpr hne)
  · intro mo hmo x
    obtain ⟨mo', hmo', he⟩ := hsup mo hmo
    rw [← (support_homComp δ _ mo' hmo').2 (j, x)]
    simp only [multideg, he]
  · intro u hu
    exact hv ((fun y => y < pU p O Fr Dt j u), ⌈tauU p O Fr deg Y N₁ G' cP Dt ka j u⌉)
      (Or.inl ⟨u, hu, rfl⟩)
  · intro u hu
    exact hv ((fun y => y ≤ pU p O Fr Dt j u), ⌈tauU p O Fr deg Y N₁ G' cP Dt ka j (u + 1)⌉)
      (Or.inr ⟨u, hu, rfl⟩)

theorem normal_dec (hA : ATL) (hS : ValSlice) (hVB : ValBd p O Fr deg Y N₁ G' cP Dt ka No Go)
    (hSp : SuppOK p O Fr Dt dNo No Go) :
    ∃ (N : ℕ) (B' : Fin N → ZMod J → MvPolynomial (ℤ × Fin K) O),
      (∀ i j, NoOK p O Fr cP Dt dNo ka j (B' i j)) ∧
      xiNo Fr O K Dt.nL No = ∑ i, ∏ j, rename (fun v : ℤ × Fin K => ((j, v.1), v.2)) (B' i j) := by
  obtain ⟨-, -, hV3⟩ := hVB
  obtain ⟨-, hSp2⟩ := hSp
  let Cl : ZMod J → Set ((ℤ → Prop) × ℤ) := fun j =>
    {q | ∃ u < Dt.nL j + r, q = ((fun y => y < pU p O Fr Dt j u), ka j u 0 + 4 * (cP : ℤ))} ∪
    {q | ∃ u < Dt.nL j + r, q = ((fun y => y ≤ pU p O Fr Dt j u), ka j (u + 1) 0 + 4 * (cP : ℤ))}
  have hCl : ∀ j, ∀ q ∈ Cl j,
      lam1S (LSeg J) {i | i.1 = j ∧ q.1 i.2} (xiNo Fr O K Dt.nL No) ≤ ((q.2 : ℤ) : WithBot ℤ) := by
    intro j q hq
    rcases hq with ⟨u, hu, rfl⟩ | ⟨u, hu, rfl⟩
    · exact (hV3 j u hu).1
    · exact (hV3 j u hu).2
  obtain ⟨N, B', hB', hF⟩ := seg_dec hA hS (xiNo Fr O K Dt.nL No) (fun _ => ∅) Cl
    (fun j q hq => by simp at hq) hCl
  refine ⟨N, B', fun i j => ?_, hF⟩
  obtain ⟨hsup, -, hl⟩ := hB' i j
  refine ⟨?_, ?_, fun u hu => ⟨?_, ?_⟩⟩
  · rw [MvPolynomial.mem_supported]
    intro v hv'
    obtain ⟨mo, hmo, hvmo⟩ := (MvPolynomial.mem_vars_iff_mem_support v).mp (Finset.mem_coe.mp hv')
    obtain ⟨mo', hmo', he⟩ := hsup mo hmo
    have hne : mo' ((j, v.1), v.2) ≠ 0 := by
      rw [← he]
      exact Finsupp.mem_support_iff.mp hvmo
    exact (hSp2 mo' hmo').1 ((j, v.1), v.2) (Finsupp.mem_support_iff.mpr hne)
  · intro mo hmo x
    obtain ⟨mo', hmo', he⟩ := hsup mo hmo
    rw [← (hSp2 mo' hmo').2 (j, x)]
    simp only [multideg, he]
  · exact hl ((fun y => y < pU p O Fr Dt j u), ka j u 0 + 4 * (cP : ℤ)) (Or.inl ⟨u, hu, rfl⟩)
  · exact hl ((fun y => y ≤ pU p O Fr Dt j u), ka j (u + 1) 0 + 4 * (cP : ℤ)) (Or.inr ⟨u, hu, rfl⟩)

theorem dec_identity {N1 N2 : ℕ} (A' : Fin N1 → ZMod J → MvPolynomial (ℤ × Fin r) O)
    (B' : Fin N2 → ZMod J → MvPolynomial (ℤ × Fin K) O) :
    ∑ q : Fin (N1 * N2), ∏ t ∈ Finset.range J, phSeg O K p Fr (t : ℤ)
        (plEmb O r K (A' (finProdFinEquiv.symm q).1 (((t : ℤ)) : ZMod J)) *
          nmEmb O r K (B' (finProdFinEquiv.symm q).2 (((t : ℤ)) : ZMod J))) =
      PhiPl Fr p O K J (∑ i, ∏ j, rename (fun v : ℤ × Fin r => ((j, v.1), v.2)) (A' i j)) *
        PhiNo Fr p O K J (∑ i, ∏ j, rename (fun v : ℤ × Fin K => ((j, v.1), v.2)) (B' i j)) := by

  simp only [map_sum, map_prod, PhiPl_seg, PhiNo_seg]
  rw [sum_mul_sum_prod]
  refine Finset.sum_congr rfl fun q _ => ?_
  refine (prod_range_zmod (fun t : ℤ => phSeg O K p Fr t
    (plEmb O r K (A' (finProdFinEquiv.symm q).1 (t : ZMod J)) *
      nmEmb O r K (B' (finProdFinEquiv.symm q).2 (t : ZMod J))))).trans ?_
  refine Finset.prod_congr rfl fun j _ => ?_
  simp only [cast_segZ, map_mul]

end At

theorem restDecG_of (hA : ATL) (hS : ValSlice) (hC : ValComp) (hVB : RestValBdG) (hXX : RestXXG) (hDd : RestDdG) :
    RestDecG := by
  intro p _ n' r K _ _ _ O _ _ _ S Fr TT L₁ L₂ N₁ G' deg d Y cP hM J _ Dt dPl dNo ka rho No Go hMH δ hocc
  obtain ⟨hvb, hsp⟩ := hVB p O S Fr TT L₁ L₂ N₁ G' deg d Y cP hM J Dt dPl dNo ka rho No Go hMH
  have hxx := hXX p O S Fr TT L₁ L₂ N₁ G' deg d Y cP hM J Dt dPl dNo ka hMH.1
  have hdd := hDd p O S Fr TT L₁ L₂ N₁ G' deg d Y cP hM J Dt dPl dNo ka rho No Go hMH δ hocc
  have hJ : J = Fr.J := hMH.1.1.1
  obtain ⟨N1, A', hA1, hA2⟩ := plane_dec p O Fr deg Y N₁ G' cP Dt dNo ka No Go hA hS hC hvb hsp δ
  obtain ⟨N2, B', hB1, hB2⟩ := normal_dec p O Fr deg Y N₁ G' cP Dt dNo ka No Go hA hS hvb hsp
  refine ⟨N1 * N2, fun jz x => ((δ ((jz : ZMod J), x) + dNoOf p O Fr Dt dNo ((jz : ZMod J), x) : ℕ) : ℝ),
    fun q jz => plEmb O r K (A' (finProdFinEquiv.symm q).1 (jz : ZMod J)) *
      nmEmb O r K (B' (finProdFinEquiv.symm q).2 (jz : ZMod J)),
    fun jz x => δ ((jz : ZMod J), x) + dNoOf p O Fr Dt dNo ((jz : ZMod J), x), ?_, ?_, ?_⟩
  · intro q j hj
    have h := hxx δ (((j : ℤ)) : ZMod J) _ _ (hA1 (finProdFinEquiv.symm q).1 _) (hB1 (finProdFinEquiv.symm q).2 _)
    rw [segZ_cast j (by rw [hJ]; exact hj)] at h
    exact h
  · intro j hj x hx hWL
    have hs := segZ_cast (J := J) j (by rw [hJ]; exact hj)
    have h := hdd (((j : ℤ)) : ZMod J) x (by rw [hs]; exact hx) (by rw [hs]; exact hWL)
    rw [hs] at h
    exact h
  · rw [hA2, hB2, ← hJ]
    exact dec_identity p O Fr A' B'

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.DecIdentity =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.HomCompRename =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.HomCompRename", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDefs\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.NoMonMultideg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ValuationOneEqZero\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.Proposition5Numerics

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords
open Formalism.MainNotions.G.WittFrameLocaliserOrders Formalism.MainNotions.G.symbolGeneratorData

section Comp

variable {R : Type} [CommRing R] {ι κ : Type} {n : ℕ}

theorem coeff_homComp (δ : ι → ℕ) (F : MvPolynomial (ι × Fin n) R) (a : ι × Fin n →₀ ℕ) :
    (homComp δ F).coeff a = if (∀ i, multideg a i = δ i) then F.coeff a else 0 := by
  classical
  unfold homComp
  rw [coeff_sum]
  simp only [coeff_monomial]
  rw [Finset.sum_ite_eq']
  simp only [Finset.mem_filter, mem_support_iff]
  by_cases h : ∀ i, multideg a i = δ i <;> by_cases hc : F.coeff a = 0 <;> simp [h, hc]

theorem homComp_rename (f : κ × Fin n → ι × Fin n) (δ : ι → ℕ) (G : MvPolynomial (κ × Fin n) R) :
    ∃ G' : MvPolynomial (κ × Fin n) R, G'.support ⊆ G.support ∧ rename f G' = homComp δ (rename f G) := by
  classical
  refine ⟨∑ mo ∈ G.support.filter (fun mo => ∀ i, multideg (Finsupp.mapDomain f mo) i = δ i),
    monomial mo (G.coeff mo), ?_, ?_⟩
  · intro mo hmo
    obtain ⟨x, hx, h2⟩ := Finset.mem_biUnion.mp (MvPolynomial.support_sum hmo)
    rw [Finset.mem_singleton.mp (support_monomial_subset h2)]
    exact (Finset.mem_filter.mp hx).1
  · ext a
    rw [coeff_homComp]
    conv_rhs => rw [G.as_sum]

    simp only [map_sum, coeff_sum, rename_monomial, coeff_monomial]
    rw [Finset.sum_filter]
    split_ifs with h
    · apply Finset.sum_congr rfl
      intro mo _
      by_cases hm : Finsupp.mapDomain f mo = a
      · have hP : ∀ i, multideg (Finsupp.mapDomain f mo) i = δ i := by rw [hm]; exact h
        rw [if_pos hP]
      · simp only [hm, if_false, ite_self]
    · apply Finset.sum_eq_zero
      intro mo _
      by_cases hm : Finsupp.mapDomain f mo = a
      · have hP : ¬ ∀ i, multideg (Finsupp.mapDomain f mo) i = δ i := by rw [hm]; exact h
        simp [hP]
      · simp [hm]

end Comp

section Big

variable {n' r K m : ℕ} [NeZero n'] (Fr : Frames n' r) (p : ℕ) (O : Type) [CommRing O] [IsDomain O]
  (hk : m + 1 = r + K) {J : ℕ} [NeZero J] (nL : ZMod J → ℕ)

theorem asm_support (rho : TL J nL r × Fin (r + K) → ℕ) (A : MvPolynomial (TL J nL r × Fin r) (KK O))
    (N : MvPolynomial (TL J nL r × Fin K) (KK O)) (mm : TV n' (m + 1) →₀ ℕ)
    (h : mm ∈ (asm Fr p O hk nL rho A N).support) :
    ∃ bp ∈ A.support, ∃ bn ∈ N.support, mm = bigM Fr p hk nL rho bp bn := by
  classical
  have e : asm Fr p O hk nL rho A N = ∑ bp ∈ A.support, ∑ bn ∈ N.support,
      monomial (bigM Fr p hk nL rho bp bn) (A.coeff bp * N.coeff bn) := by
    conv_lhs => rw [asm, A.as_sum, N.as_sum]

    simp only [map_sum, _root_.Formalism.MainNotions.Proposition5Numerics.upPl_monomial, _root_.Formalism.MainNotions.Proposition5Numerics.upNo_monomial, Finset.mul_sum, Finset.sum_mul]
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro bp _
    apply Finset.sum_congr rfl
    intro bn _
    rw [monomial_mul, monomial_mul, one_mul, bigM_eq]
  rw [e] at h
  obtain ⟨bp, hbp, h2⟩ := Finset.mem_biUnion.mp (MvPolynomial.support_sum h)
  obtain ⟨bn, hbn, h3⟩ := Finset.mem_biUnion.mp (MvPolynomial.support_sum h2)
  exact ⟨bp, hbp, bn, hbn, Finset.mem_singleton.mp (support_monomial_subset h3)⟩

theorem bigM_off (htop : ∀ x : TL J nL r, posOf n' (posTL Fr x) ∈ Fr.TT)
    (rho : TL J nL r × Fin (r + K) → ℕ) (bp : TL J nL r × Fin r →₀ ℕ) (bn : TL J nL r × Fin K →₀ ℕ)
    (s : Fin n') (hs : s ∉ Set.range fun x : TL J nL r => posOf n' (posTL Fr x)) (c : Fin (m + 1)) :
    bigM Fr p hk nL rho bp bn (s, c) = 0 := by
  apply bigM_notin
  rintro ⟨v, hv⟩
  exact hs ⟨v.1, congrArg Prod.fst hv⟩

theorem multideg_bigM (hinj : Function.Injective fun x : TL J nL r => posOf n' (posTL Fr x))
    (hsurj : ∀ s ∈ Fr.TT, ∃ x : TL J nL r, posOf n' (posTL Fr x) = s)
    (htop : ∀ x : TL J nL r, posOf n' (posTL Fr x) ∈ Fr.TT)
    (d : Fin n' → ℕ) (hd : ∀ s, s ∉ Fr.TT → d s = 0)
    (rho : TL J nL r × Fin (r + K) → ℕ) (dPl dNo : TL J nL r → ℕ) (hB : BlockOK Fr p nL d rho dPl dNo)
    (bp : TL J nL r × Fin r →₀ ℕ) (bn : TL J nL r × Fin K →₀ ℕ) (h1 : ∀ x, multideg bp x = dPl x)
    (h2 : ∀ x, multideg bn x = dNo x) (s : Fin n') : multideg (bigM Fr p hk nL rho bp bn) s = d s := by
  by_cases hs : s ∈ Set.range fun x : TL J nL r => posOf n' (posTL Fr x)
  · obtain ⟨x, rfl⟩ := hs
    have hsc : multideg (bigM Fr p hk nL rho bp bn) (posOf n' (posTL Fr x)) =
        ∑ a : Fin r, bigM Fr p hk nL rho bp bn (plVar Fr hk nL x a) +
          ∑ b : Fin K, bigM Fr p hk nL rho bp bn (noVar Fr hk nL x b) := by
      unfold multideg
      rw [← Equiv.sum_comp (finCongr hk.symm) (fun c => bigM Fr p hk nL rho bp bn (posOf n' (posTL Fr x), c)),
        Fin.sum_univ_add]
      rfl
    rw [hsc]
    simp only [bigM_pl hinj, bigM_no hinj, Finset.sum_add_distrib, ← Finset.mul_sum]
    rw [← hB.2 x, ← h1 x, ← h2 x, Fin.sum_univ_add (fun c => rho (x, c))]
    unfold multideg
    ring
  · have hT : s ∉ Fr.TT := fun hT => hs (hsurj s hT)
    rw [hd s hT]
    unfold multideg
    exact Finset.sum_eq_zero (fun c _ => bigM_off Fr p hk nL htop rho bp bn s hs c)

end Big

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.HomCompRename =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDegF =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDegF", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembTop\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.NoMonMultideg\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.HomCompRename\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembAlgF\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.PosTLSurj\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.Proposition5OfThreeParts\nimport Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SlackBoundReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.Proposition5Numerics

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords
open Formalism.MainNotions.G.WittFrameLocaliserOrders Formalism.MainNotions.G.symbolGeneratorData

theorem isNormal_pl {n' r K : ℕ} (s : Fin n') (a : Fin r) :
    IsNormal r ((s, Fin.castAdd K a) : TV n' (r + K)) ↔ ¬ Even s.val := by
  unfold IsNormal
  by_cases h : Even s.val <;> simp [h, a.isLt]

theorem isNormal_no {n' r K : ℕ} (s : Fin n') (b : Fin K) :
    IsNormal r ((s, Fin.natAdd r b) : TV n' (r + K)) ↔ Even s.val := by
  unfold IsNormal
  by_cases h : Even s.val <;> simp [h]

section ND

variable {n' r K m : ℕ} [NeZero n'] (Fr : Frames n' r) (p : ℕ) (hk : m + 1 = r + K) {J : ℕ} [NeZero J]
  (nL : ZMod J → ℕ)

def oOf (rho : TL J nL r × Fin (r + K) → ℕ) (dPl dNo : TL J nL r → ℕ) : ℕ :=
  ∑ x : TL J nL r, if Even (posOf n' (posTL Fr x)).val then
    ∑ b : Fin K, rho (x, Fin.natAdd r b) + lowP Fr p x * dNo x
    else ∑ a : Fin r, rho (x, Fin.castAdd K a) + lowP Fr p x * dPl x

theorem normDeg_bigM (hinj : Function.Injective fun x : TL J nL r => posOf n' (posTL Fr x))
    (htop : ∀ x : TL J nL r, posOf n' (posTL Fr x) ∈ Fr.TT)
    (rho : TL J nL r × Fin (r + K) → ℕ) (dPl dNo : TL J nL r → ℕ)
    (bp : TL J nL r × Fin r →₀ ℕ) (bn : TL J nL r × Fin K →₀ ℕ) (h1 : ∀ x, multideg bp x = dPl x)
    (h2 : ∀ x, multideg bn x = dNo x) (mm : TV n' (r + K) →₀ ℕ)
    (hmm : ∀ v, mm v = bigM Fr p hk nL rho bp bn (castVK hk v)) :
    normDeg r mm = oOf Fr p nL rho dPl dNo := by
  have hpl : ∀ (x : TL J nL r) (a : Fin r), mm (posOf n' (posTL Fr x), Fin.castAdd K a)
      = rho (x, Fin.castAdd K a) + lowP Fr p x * bp (x, a) := by
    intro x a
    rw [hmm]
    exact bigM_pl hinj rho bp bn x a
  have hno : ∀ (x : TL J nL r) (b : Fin K), mm (posOf n' (posTL Fr x), Fin.natAdd r b)
      = rho (x, Fin.natAdd r b) + lowP Fr p x * bn (x, b) := by
    intro x b
    rw [hmm]
    exact bigM_no hinj rho bp bn x b
  have hoff : ∀ s : Fin n', s ∉ Set.range (fun x : TL J nL r => posOf n' (posTL Fr x)) →
      ∀ c : Fin (r + K), mm (s, c) = 0 := by
    intro s hs c
    rw [hmm]
    exact bigM_off Fr p hk nL htop rho bp bn s hs _
  have h0 : normDeg r mm = ∑ v : TV n' (r + K), (if IsNormal r v then mm v else 0) := by
    unfold normDeg
    apply Finset.sum_subset (Finset.subset_univ _)
    intro v _ hv
    have hz : mm v = 0 := by simpa [Finsupp.mem_support_iff] using hv
    simp [hz]
  have hprod : ∑ v : TV n' (r + K), (if IsNormal r v then mm v else 0)
      = ∑ s : Fin n', ∑ c : Fin (r + K), (if IsNormal r ((s, c) : TV n' (r + K)) then mm (s, c) else 0) :=
    Fintype.sum_prod_type _
  have hsub : ∑ s ∈ Finset.univ.image (fun x : TL J nL r => posOf n' (posTL Fr x)),
        ∑ c : Fin (r + K), (if IsNormal r ((s, c) : TV n' (r + K)) then mm (s, c) else 0)
      = ∑ s : Fin n', ∑ c : Fin (r + K), (if IsNormal r ((s, c) : TV n' (r + K)) then mm (s, c) else 0) := by
    apply Finset.sum_subset (Finset.subset_univ _)
    intro s _ hs
    have hs' : s ∉ Set.range (fun x : TL J nL r => posOf n' (posTL Fr x)) := by
      rintro ⟨x, rfl⟩
      exact hs (Finset.mem_image_of_mem _ (Finset.mem_univ x))
    apply Finset.sum_eq_zero
    intro c _
    simp [hoff s hs' c]
  have himg := Finset.sum_image (s := Finset.univ) (g := fun x : TL J nL r => posOf n' (posTL Fr x))
    (f := fun s : Fin n' => ∑ c : Fin (r + K), (if IsNormal r ((s, c) : TV n' (r + K)) then mm (s, c) else 0))
    (fun x _ y _ h => hinj h)
  rw [h0, hprod, ← hsub, himg]
  unfold oOf
  apply Finset.sum_congr rfl
  intro x _
  rw [Fin.sum_univ_add]
  by_cases he : Even (posOf n' (posTL Fr x)).val
  · simp only [isNormal_pl, isNormal_no, he, not_true_eq_false, if_false, if_true, Finset.sum_const_zero,
      zero_add, hno, Finset.sum_add_distrib, ← Finset.mul_sum]
    rw [← h2 x]
    rfl
  · simp only [isNormal_pl, isNormal_no, he, not_false_eq_true, if_false, if_true, Finset.sum_const_zero,
      add_zero, hpl, Finset.sum_add_distrib, ← Finset.mul_sum]
    rw [← h1 x]
    rfl

end ND

theorem castVK_inj {n' k r K : ℕ} (hk : k = r + K) : Function.Injective (castVK (n' := n') hk) := by
  intro v w h
  simp only [castVK, Prod.mk.injEq] at h
  exact Prod.ext h.1 (Fin.ext (by simpa using congrArg Fin.val h.2))

theorem toKK_support {O : Type} [CommRing O] [IsDomain O] {n' m r K : ℕ} (hk : m + 1 = r + K) (P : RRing O n' (r + K))
    (mm : Fin n' × Fin (r + K) →₀ ℕ) (h : mm ∈ P.support) :
    Finsupp.mapDomain (castVK hk) mm ∈ (toKK hk P).support := by
  rw [MvPolynomial.mem_support_iff] at h ⊢
  unfold toKK
  rw [MvPolynomial.coeff_map, MvPolynomial.coeff_rename_mapDomain _ (castVK_inj hk)]
  intro h0
  apply h
  exact (IsFractionRing.injective O (KK O)) (by simpa using h0)

theorem restDegG : RestDegG := by
  intro p _ n' r K m _ _ _ O _ _ _ _ hk Fr TT L₁ L₂ N₁ G' deg d Y cP hM J _ Dt dPl dNo ka rho No Go hMH δ _
  have hV : Fr.Valid L₁ N₁ := hM.frames.2.1
  have hr : 1 ≤ r := le_trans (by norm_num) hM.two_le_r
  have hJ : J = Fr.J := hMH.1.1.1
  have hnL : ∀ j, Dt.nL j = (Fr.LLset (segZ j)).card := hMH.1.1.2.1
  have hinj := posTL_inj Fr hV hr hJ hnL
  have hsurj := posTL_surj Fr hV hr hJ hnL
  have htop : ∀ x : TL J Dt.nL r, posOf n' (posTL Fr x) ∈ Fr.TT := fun x => (posTL_seg Fr hV hr hnL x).2.2
  obtain ⟨Go', hsub, hren⟩ := homComp_rename (fun v : ML J Dt.nL r × Fin r => (mlPos Fr Dt.nL v.1, v.2)) δ Go
  have e : homComp δ (xiPl Fr O Dt.nL Go) = xiPl Fr O Dt.nL Go' := hren.symm
  rw [e]
  have hid : toKK hk (monomial (labO Fr K Dt.nL rho) 1 *
      (PhiPl Fr p O K J (xiPl Fr O Dt.nL Go') * PhiNo Fr p O K J (xiNo Fr O K Dt.nL No))) =
    asm Fr p O hk Dt.nL rho (Dt.ph (MvPolynomial.map (algebraMap O (KK O)) Go'))
      (MvPolynomial.map (algebraMap O (KK O)) No) :=
    alg_identity p O hk Fr Dt hV hr hJ hMH.1.1.2.2.2.2.1 rho No Go'
  have hA : Dt.ph (MvPolynomial.map (algebraMap O (KK O)) Go') ∈ Pol (KK O) r dPl := by
    rw [← hMH.1.1.2.2.2.1]
    refine ph_mem_pol Dt _ fun mo hmo => hMH.2.2.2.2 mo (hsub ?_)
    rwa [support_of_map] at hmo
  have hN : MvPolynomial.map (algebraMap O (KK O)) No ∈ Pol (KK O) K dNo := hMH.2.2.1.2.1
  have hAd := (mem_restrictSupport_iff (KK O)).1 hA
  have hNd := (mem_restrictSupport_iff (KK O)).1 hN
  refine ⟨?_, oOf Fr p Dt.nL rho dPl dNo, ?_⟩
  · rw [hid]
    unfold HasMultideg Pol
    rw [mem_restrictSupport_iff]
    intro mm hmm
    obtain ⟨bp, hbp, bn, hbn, rfl⟩ := asm_support Fr p O hk Dt.nL rho _ _ mm hmm
    exact multideg_bigM Fr p hk Dt.nL hinj hsurj htop d hM.d_off rho dPl dNo hMH.2.1 bp bn (hAd hbp) (hNd hbn)
  · intro mm hmm
    have h1 := toKK_support hk _ mm hmm
    rw [hid] at h1
    obtain ⟨bp, hbp, bn, hbn, h2⟩ := asm_support Fr p O hk Dt.nL rho _ _ _ h1
    refine normDeg_bigM Fr p hk Dt.nL hinj htop rho dPl dNo bp bn (hAd hbp) (hNd hbn) mm fun v => ?_
    rw [← h2, Finsupp.mapDomain_apply_of_injective (castVK_inj hk)]

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDegF =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembLabF =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembLabF", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembTop\nimport Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SlackBoundReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.Proposition5Numerics

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords
open Formalism.MainNotions.G.WittFrameLocaliserOrders Formalism.MainNotions.G.symbolGeneratorData

section Geo

variable {n' r : ℕ} [NeZero n'] (Fr : Frames n' r) {L₁ N₁ : ℕ}

theorem lf_fr_per (hV : Fr.Valid L₁ N₁) (j : ℤ) (i : ℕ) (m : ℤ) :
    Fr.fr (j + m * Fr.J) i = Fr.fr j i + m * n' := by
  induction m using Int.induction_on with
  | zero => simp
  | succ k ih =>
    rw [show j + ((k : ℤ) + 1) * (Fr.J : ℤ) = (j + (k : ℤ) * Fr.J) + Fr.J by ring, hV.2.1, ih]
    ring
  | pred k ih =>
    have h := hV.2.1 (j + (-(k : ℤ) - 1) * Fr.J) i
    rw [show j + (-(k : ℤ) - 1) * (Fr.J : ℤ) + Fr.J = j + -(k : ℤ) * Fr.J by ring, ih] at h
    linarith

private theorem fr_mono_of_valid (hV : Fr.Valid L₁ N₁) (j : ℤ) :
    ∀ i i' : ℕ, i ≤ i' → i' < r → Fr.fr j i ≤ Fr.fr j i' := by
  intro i i' hii' hi'
  induction i' with
  | zero => rw [Nat.le_zero.mp hii']
  | succ k ih =>
    rcases Nat.lt_or_ge i (k + 1) with h | h
    · exact le_trans (ih (by omega) (by omega)) (hV.2.2.1 j k (by omega)).le
    · rw [le_antisymm hii' h]

private theorem fr_last_mono_in_index_of_valid (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (a : ℤ) :
    ∀ b : ℤ, a ≤ b → Fr.fr a (r - 1) ≤ Fr.fr b (r - 1) := by
  intro b hab
  obtain ⟨n, rfl⟩ : ∃ n : ℕ, b = a + n := ⟨(b - a).toNat, by omega⟩
  clear hab
  induction n with
  | zero => simp
  | succ n ih =>
    have hstep := le_trans (hV.2.2.2.1 (a + n)).le
      (fr_mono_of_valid Fr hV (a + n + 1) 0 (r - 1) (Nat.zero_le _) (by omega))
    exact le_trans ih (by simpa [add_assoc] using hstep)

theorem lf_dist_eq (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (j j' x y : ℤ) (hx1 : Fr.fr (j - 1) (r - 1) < x)
    (hx2 : x ≤ Fr.fr j (r - 1)) (hy1 : Fr.fr (j' - 1) (r - 1) < y) (hy2 : y ≤ Fr.fr j' (r - 1))
    (h : posOf n' y = posOf n' x) : Fr.dist j x = Fr.dist j' y := by
  have hn0 : (0 : ℤ) < n' := by exact_mod_cast NeZero.pos n'
  have hv : ((y % (n' : ℤ)).toNat % n') = ((x % (n' : ℤ)).toNat % n') := congrArg Fin.val h
  have ex1 : 0 ≤ x % (n' : ℤ) := Int.emod_nonneg _ hn0.ne'
  have ex2 : x % (n' : ℤ) < n' := Int.emod_lt_of_pos _ hn0
  have ey1 : 0 ≤ y % (n' : ℤ) := Int.emod_nonneg _ hn0.ne'
  have ey2 : y % (n' : ℤ) < n' := Int.emod_lt_of_pos _ hn0
  have hmod : y % (n' : ℤ) = x % (n' : ℤ) := by
    rw [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)] at hv
    omega
  obtain ⟨k, hk⟩ : (n' : ℤ) ∣ y - x := Int.dvd_of_emod_eq_zero (Int.emod_emod_of_dvd _ (dvd_refl _) ▸ (Int.emod_eq_emod_iff_emod_sub_eq_zero.mp hmod))
  have hJ1 := lf_fr_per Fr hV j (r - 1) k
  have hJ2 := lf_fr_per Fr hV (j - 1) (r - 1) k
  have hjj : j' = j + k * Fr.J := by
    by_contra hne
    rcases lt_or_gt_of_ne hne with hl | hl
    · have := fr_last_mono_in_index_of_valid Fr hV hr j' (j - 1 + k * Fr.J) (by linarith)
      rw [hJ2] at this
      nlinarith
    · have := fr_last_mono_in_index_of_valid Fr hV hr (j + k * Fr.J) (j' - 1) (by linarith)
      rw [hJ1] at this
      nlinarith
  unfold Frames.dist
  rw [hjj, hJ1]
  congr 1
  linarith

end Geo

section Lab

variable {n' r : ℕ} [NeZero n'] (Fr : Frames n' r) (K : ℕ) {J : ℕ} [NeZero J] (nL : ZMod J → ℕ)

theorem labO_apply (hinj : Function.Injective fun x : TL J nL r => posOf n' (posTL Fr x))
    (rho : TL J nL r × Fin (r + K) → ℕ) (y : TL J nL r) (c : Fin (r + K)) :
    labO Fr K nL rho (posOf n' (posTL Fr y), c) = rho (y, c) := by
  classical
  simp only [labO, Finsupp.finsetSum_apply, Finsupp.single_apply]
  rw [Finset.sum_eq_single y]
  · rw [Finset.sum_eq_single c]
    · simp
    · intro c' _ hc'
      rw [if_neg]
      intro h
      exact hc' (Prod.ext_iff.mp h).2
    · intro h; exact absurd (Finset.mem_univ c) h
  · intro x _ hx
    apply Finset.sum_eq_zero
    intro c' _
    rw [if_neg]
    intro h
    exact hx (hinj (Prod.ext_iff.mp h).1)
  · intro h; exact absurd (Finset.mem_univ y) h

theorem labO_support (rho : TL J nL r × Fin (r + K) → ℕ) (v : Fin n' × Fin (r + K))
    (hv : v ∈ (labO Fr K nL rho).support) : ∃ x : TL J nL r, v.1 = posOf n' (posTL Fr x) := by
  classical
  by_contra hne
  push_neg at hne
  apply Finsupp.mem_support_iff.mp hv
  simp only [labO, Finsupp.finsetSum_apply, Finsupp.single_apply]
  apply Finset.sum_eq_zero
  intro x _
  apply Finset.sum_eq_zero
  intro c _
  rw [if_neg]
  intro h
  exact hne x (Prod.ext_iff.mp h).1.symm

end Lab

theorem restLabG : RestLabG := by
  intro p _ n' r K _ _ _ O _ _ _ _S Fr TT L₁ L₂ N₁ G' deg d Y cP hMFH J _ Dt dPl dNo ka rho No Go hMH
  obtain ⟨hJ, hnL, -⟩ := hMH.1.1
  have hV : Fr.Valid L₁ N₁ := hMFH.frames.2.1
  have hr : 1 ≤ r := by have := hMFH.two_le_r; omega
  have hinj := posTL_inj Fr hV hr hJ hnL
  have hB := hMH.2.1
  unfold LabAt
  refine ⟨?_, ?_⟩
  · intro j x hx hW c
    by_cases hy : ∃ y : TL J Dt.nL r, posOf n' (posTL Fr y) = posOf n' x
    · obtain ⟨y, hy⟩ := hy
      rw [← hy, labO_apply Fr K Dt.nL hinj rho y c]
      have hlt := hB.1 y c
      have hseg := posTL_seg Fr hV hr hnL y
      have hxl := (Finset.mem_filter.mp hx).1
      rw [Finset.mem_Icc] at hxl
      have hd := lf_dist_eq Fr hV hr j (segZ y.1) x (posTL Fr y) (not_le.mp hW) hxl.2 hseg.1 hseg.2.1 hy
      rw [hd]
      exact hlt
    · push_neg at hy
      have h0 : labO Fr K Dt.nL rho (posOf n' x, c) = 0 := by
        by_contra hne
        obtain ⟨y, hy'⟩ := labO_support Fr K Dt.nL rho (posOf n' x, c) (Finsupp.mem_support_iff.mpr hne)
        exact hy y hy'.symm
      rw [h0]
      exact pow_pos (Fact.out : p.Prime).pos _
  · intro v hv
    obtain ⟨y, hy⟩ := labO_support Fr K Dt.nL rho v hv
    rw [hy]
    exact (posTL_seg Fr hV hr hnL y).2.2

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembLabF =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ProjectionMemPartialSpan =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ProjectionMemPartialSpan", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDefs\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.Proposition5Numerics

namespace PartialSpanProjection

variable {O : Type} [CommRing O] {σ : Type}

theorem exists_retraction [IsDomain O] [IsPrincipalIdealRing O] (X : Submodule O (MvPolynomial σ O))
    (s : Finset (σ →₀ ℕ)) (hs : ∀ x ∈ X, x.support ⊆ s)
    (hsat : ∀ (c : O) (x : MvPolynomial σ O), c ≠ 0 → c • x ∈ X → x ∈ X) :
    ∃ q : MvPolynomial σ O →ₗ[O] MvPolynomial σ O, (∀ A, q A ∈ X) ∧ ∀ x ∈ X, q x = x := by
  let e : (s → O) →ₗ[O] MvPolynomial σ O := Fintype.linearCombination O (fun m : s => monomial m.1 (1 : O))
  let r : MvPolynomial σ O →ₗ[O] (s → O) := LinearMap.pi (fun m => lcoeff O m.1)
  have her : ∀ x : MvPolynomial σ O, x.support ⊆ s → e (r x) = x := by
    intro x hx
    simp only [e, r, Fintype.linearCombination_apply, LinearMap.pi_apply, lcoeff_apply]
    rw [Finset.sum_coe_sort s (fun m => AddMonoidAlgebra.coeff x m • monomial m (1 : O))]
    conv_rhs => rw [← support_sum_monomial_coeff x]
    symm
    refine (Finset.sum_subset hx ?_).trans ?_
    · intro m _ hm
      rw [notMem_support_iff.1 hm, monomial_zero]
    · refine Finset.sum_congr rfl fun m _ => ?_
      rw [smul_monomial, smul_eq_mul, mul_one]
  let X' : Submodule O (s → O) := X.comap e
  have htf : Module.IsTorsionFree O ((s → O) ⧸ X') := by
    rw [Module.isTorsionFree_iff_smul_eq_zero]
    intro c m h
    obtain ⟨f, rfl⟩ := Submodule.Quotient.mk_surjective _ m
    by_cases hc : c = 0
    · exact Or.inl hc
    · right
      rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero] at h
      rw [Submodule.Quotient.mk_eq_zero]
      show e f ∈ X
      apply hsat c _ hc
      have h' : e (c • f) ∈ X := h
      rwa [map_smul] at h'
  obtain ⟨g, hg⟩ := X'.mkQ.exists_rightInverse_of_surjective (Submodule.range_mkQ X')
  let ρ : (s → O) →ₗ[O] (s → O) := LinearMap.id - g ∘ₗ X'.mkQ
  have hρ1 : ∀ f, ρ f ∈ X' := by
    intro f
    rw [← Submodule.Quotient.mk_eq_zero, ← Submodule.mkQ_apply]
    have h := LinearMap.congr_fun hg (X'.mkQ f)
    simp only [LinearMap.comp_apply, LinearMap.id_apply] at h
    simp only [ρ, LinearMap.sub_apply, LinearMap.id_apply, LinearMap.comp_apply, map_sub, h, sub_self]
  have hρ2 : ∀ f ∈ X', ρ f = f := by
    intro f hf
    have h : X'.mkQ f = 0 := by rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]; exact hf
    simp only [ρ, LinearMap.sub_apply, LinearMap.id_apply, LinearMap.comp_apply, h, map_zero, sub_zero]
  refine ⟨e ∘ₗ ρ ∘ₗ r, fun A => hρ1 _, fun x hx => ?_⟩
  have h1 := her x (hs x hx)
  have h2 : r x ∈ X' := by
    show e (r x) ∈ X
    rwa [h1]
  simp only [LinearMap.comp_apply]
  rw [hρ2 _ h2, h1]

theorem supp_of_mem {S : Set σ} {A : MvPolynomial σ O} (hA : A ∈ supported O S) {a : σ →₀ ℕ}
    (ha : a ∈ A.support) : ∀ v ∈ a.support, v ∈ S := by
  intro v hv
  exact (MvPolynomial.mem_supported.1 hA) ((MvPolynomial.mem_vars_iff_mem_support v).2 ⟨a, ha, hv⟩)

theorem monomial_mem {S : Set σ} {a : σ →₀ ℕ} (c : O) (ha : ∀ v ∈ a.support, v ∈ S) :
    monomial a c ∈ supported O S := by
  rw [MvPolynomial.mem_supported]
  intro v hv
  obtain ⟨m, hm, hvm⟩ := (MvPolynomial.mem_vars_iff_mem_support v).1 hv
  have hma : m = a := Finset.mem_singleton.1 (MvPolynomial.support_monomial_subset hm)
  subst hma
  exact ha v hvm

variable {ι : Type} (π : σ → ι)

def pj (j : ι) (q : MvPolynomial σ O →ₗ[O] MvPolynomial σ O) : MvPolynomial σ O →ₗ[O] MvPolynomial σ O :=
  (basisMonomials σ O).constr O
    (fun m => q (monomial (m.filter (fun v => π v = j)) 1) * monomial (m.filter (fun v => π v ≠ j)) 1)

theorem pj_monomial (j : ι) (q : MvPolynomial σ O →ₗ[O] MvPolynomial σ O) (m : σ →₀ ℕ) (c : O) :
    pj π j q (monomial m c) =
      c • (q (monomial (m.filter (fun v => π v = j)) 1) * monomial (m.filter (fun v => π v ≠ j)) 1) := by
  have e : monomial m c = c • (basisMonomials σ O m) := by
    rw [MvPolynomial.coe_basisMonomials, smul_monomial, smul_eq_mul, mul_one]
  rw [e, map_smul, pj, Module.Basis.constr_basis]

theorem pj_mono_mul (j : ι) (q : MvPolynomial σ O →ₗ[O] MvPolynomial σ O) {a b : σ →₀ ℕ}
    (ha : ∀ v ∈ a.support, π v = j) (hb : ∀ v ∈ b.support, π v ≠ j) (ca cb : O) :
    pj π j q (monomial a ca * monomial b cb) = q (monomial a ca) * monomial b cb := by
  have h1 : (a + b).filter (fun v => π v = j) = a := by
    ext v
    simp only [Finsupp.filter_apply, Finsupp.add_apply]
    by_cases hv : π v = j
    · rw [if_pos hv]
      have : b v = 0 := by
        by_contra h
        exact hb v (Finsupp.mem_support_iff.2 h) hv
      rw [this, add_zero]
    · rw [if_neg hv]
      by_contra h
      exact hv (ha v (Finsupp.mem_support_iff.2 (Ne.symm h)))
  have h2 : (a + b).filter (fun v => π v ≠ j) = b := by
    ext v
    simp only [Finsupp.filter_apply, Finsupp.add_apply]
    by_cases hv : π v = j
    · rw [if_neg (not_not.2 hv)]
      have : b v = 0 := by
        by_contra h
        exact hb v (Finsupp.mem_support_iff.2 h) hv
      exact this.symm
    · rw [if_pos hv]
      have : a v = 0 := by
        by_contra h
        exact hv (ha v (Finsupp.mem_support_iff.2 h))
      rw [this, zero_add]
  rw [monomial_mul, pj_monomial, h1, h2]
  have e : monomial a ca = ca • monomial a (1 : O) := by rw [smul_monomial, smul_eq_mul, mul_one]
  have e' : monomial b cb = cb • monomial b (1 : O) := by rw [smul_monomial, smul_eq_mul, mul_one]
  rw [e, e', map_smul, smul_mul_smul_comm, mul_comm ca cb, mul_smul]

theorem pj_mul (j : ι) (q : MvPolynomial σ O →ₗ[O] MvPolynomial σ O) {A M : MvPolynomial σ O}
    (hA : A ∈ supported O {v | π v = j}) (hM : M ∈ supported O {v | π v ≠ j}) :
    pj π j q (A * M) = q A * M := by
  have eA := A.as_sum
  have eM := M.as_sum
  calc pj π j q (A * M)
      = pj π j q ((∑ a ∈ A.support, monomial a (AddMonoidAlgebra.coeff A a)) * ∑ b ∈ M.support, monomial b (AddMonoidAlgebra.coeff M b)) := by
        rw [← eA, ← eM]
    _ = ∑ a ∈ A.support, ∑ b ∈ M.support, pj π j q (monomial a (AddMonoidAlgebra.coeff A a) * monomial b (AddMonoidAlgebra.coeff M b)) := by

        rw [Finset.sum_mul_sum, map_sum]

        simp only [map_sum]
    _ = ∑ a ∈ A.support, ∑ b ∈ M.support, q (monomial a (AddMonoidAlgebra.coeff A a)) * monomial b (AddMonoidAlgebra.coeff M b) :=
        Finset.sum_congr rfl fun a ha => Finset.sum_congr rfl fun b hb =>
          pj_mono_mul π j q (supp_of_mem hA ha) (supp_of_mem hM hb) _ _
    _ = q A * M := by

        rw [← Finset.sum_mul_sum, ← map_sum, ← eA, ← eM]

theorem pj_fix (j : ι) (q : MvPolynomial σ O →ₗ[O] MvPolynomial σ O) (Xj : Submodule O (MvPolynomial σ O))
    (hX : ∀ x ∈ Xj, x ∈ supported O {v | π v = j}) (hq : ∀ x ∈ Xj, q x = x) {F : MvPolynomial σ O}
    (hF : F ∈ Submodule.span O {y | ∃ x ∈ Xj, ∃ M ∈ supported O {v | π v ≠ j}, y = x * M}) :
    pj π j q F = F := by
  induction hF using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨x, hx, M, hM, rfl⟩ := hy
    rw [pj_mul π j q (hX x hx) hM, hq x hx]
  | zero => simp
  | add y z _ _ hy hz => rw [map_add (f := _), hy, hz]
  | smul c y _ hy => rw [map_smul, hy]

def W (X : ι → Submodule O (MvPolynomial σ O)) (S : Finset ι) : Submodule O (MvPolynomial σ O) :=
  Submodule.span O {y | ∃ x : ι → MvPolynomial σ O, (∀ j, x j ∈ X j) ∧
    ∃ M ∈ supported O {v | π v ∉ S}, y = (∏ j ∈ S, x j) * M}

theorem projection_mem_partial_span (X : ι → Submodule O (MvPolynomial σ O)) (hX : ∀ j, ∀ x ∈ X j, x ∈ supported O {v | π v = j})
    (S : Finset ι) (j : ι) (hj : j ∉ S) (q : MvPolynomial σ O →ₗ[O] MvPolynomial σ O) (hq : ∀ A, q A ∈ X j)
    {G : MvPolynomial σ O} (hG : G ∈ W π X S) : pj π j q G ∈ W π X (insert j S) := by
  have hle : W π X S ≤ (W π X (insert j S)).comap (pj π j q) := by
    refine Submodule.span_le.2 ?_
    rintro y ⟨x, hx, M, hM, rfl⟩
    show pj π j q ((∏ i ∈ S, x i) * M) ∈ W π X (insert j S)
    have hP : (∏ i ∈ S, x i) ∈ supported O {v | π v ≠ j} := by
      refine Subalgebra.prod_mem _ fun i hi => ?_
      refine supported_mono ?_ (hX i _ (hx i))
      intro v hv
      have hv' : π v = i := hv
      show π v ≠ j
      rw [hv']
      rintro rfl
      exact hj hi
    have hsum : (∏ i ∈ S, x i) * M = ∑ b ∈ M.support,
        monomial (b.filter (fun v => π v = j)) (AddMonoidAlgebra.coeff M b) *
          ((∏ i ∈ S, x i) * monomial (b.filter (fun v => π v ≠ j)) 1) := by
      conv_lhs => rw [← support_sum_monomial_coeff M]
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun b _ => ?_
      rw [mul_left_comm, monomial_mul, mul_one, Finsupp.filter_add_filter_not]

    rw [hsum, map_sum]
    refine Submodule.sum_mem _ fun b hb => ?_
    have hb1 : monomial (b.filter (fun v => π v = j)) (AddMonoidAlgebra.coeff M b) ∈ supported O {v | π v = j} := by
      refine monomial_mem _ fun v hv => ?_
      rw [Finsupp.support_filter, Finset.mem_filter] at hv
      exact hv.2
    have hb2 : ∀ v ∈ (b.filter (fun v => π v ≠ j)).support, π v ≠ j ∧ v ∈ b.support := by
      intro v hv
      rw [Finsupp.support_filter, Finset.mem_filter] at hv
      exact ⟨hv.2, hv.1⟩
    have hb3 : monomial (b.filter (fun v => π v ≠ j)) (1 : O) ∈ supported O {v | π v ≠ j} :=
      monomial_mem _ fun v hv => (hb2 v hv).1
    rw [pj_mul π j q hb1 (Subalgebra.mul_mem _ hP hb3)]
    refine Submodule.subset_span
      ⟨Function.update x j (q (monomial (b.filter (fun v => π v = j)) (AddMonoidAlgebra.coeff M b))), ?_,
        monomial (b.filter (fun v => π v ≠ j)) 1, ?_, ?_⟩
    · intro i
      by_cases hi : i = j
      · subst hi
        rw [Function.update_self]
        exact hq _
      · rw [Function.update_of_ne hi]
        exact hx i
    · refine monomial_mem _ fun v hv => ?_
      show π v ∉ insert j S
      rw [Finset.mem_insert, not_or]
      exact ⟨(hb2 v hv).1, supp_of_mem hM hb v (hb2 v hv).2⟩
    · rw [Finset.prod_insert hj, Function.update_self, mul_assoc]
      congr 2
      refine Finset.prod_congr rfl fun i hi => ?_
      rw [Function.update_of_ne]
      rintro rfl
      exact hj hi
  exact hle hG

end PartialSpanProjection


open PartialSpanProjection in
theorem atl : ATL := by
  intro O _ _ _ ι σ _ _ π X hX hfin hsat F hF
  have hq : ∀ j, ∃ q : MvPolynomial σ O →ₗ[O] MvPolynomial σ O, (∀ A, q A ∈ X j) ∧ ∀ x ∈ X j, q x = x := by
    intro j
    obtain ⟨s, hs⟩ := hfin j
    exact exists_retraction (X j) s hs (hsat j)
  choose q hq1 hq2 using hq
  have hW : ∀ S : Finset ι, F ∈ W π X S := by
    intro S
    induction S using Finset.induction_on with
    | empty =>
      refine Submodule.subset_span ⟨fun _ => 0, fun j => (X j).zero_mem, F, ?_, ?_⟩
      · rw [mem_supported]
        intro v _
        exact Finset.notMem_empty _
      · rw [Finset.prod_empty, one_mul]
    | insert j S hj ih =>
      have h := projection_mem_partial_span π X hX S j hj (q j) (hq1 j) ih
      rwa [pj_fix π j (q j) (X j) (hX j) (hq2 j) (hF j)] at h
  have hle : W π X Finset.univ ≤
      Submodule.span O {y | ∃ x : ι → MvPolynomial σ O, (∀ j, x j ∈ X j) ∧ y = ∏ j, x j} := by
    refine Submodule.span_le.2 ?_
    rintro y ⟨x, hx, M, hM, rfl⟩
    have hemp : {v | π v ∉ (Finset.univ : Finset ι)} = (∅ : Set σ) := by
      ext v
      simp
    rw [hemp, supported_empty] at hM
    obtain ⟨c, rfl⟩ := Algebra.mem_bot.1 hM
    have : (∏ j, x j) * algebraMap O (MvPolynomial σ O) c = c • ∏ j, x j := by
      rw [Algebra.smul_def, mul_comm]
    rw [this]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨x, hx, rfl⟩)
  exact hle (hW Finset.univ)

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ProjectionMemPartialSpan =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.TwistSliceCoeff =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.TwistSliceCoeff", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDefs\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MemSupportSumMonomial\nimport Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ValLamOfSubset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.Proposition5Numerics

open Formalism.MainNotions.G

section Sl

variable {ι : Type*} {n : ℕ} (T : Set ι)

def offT (mo : ι × Fin n →₀ ℕ) : ι × Fin n →₀ ℕ := mo.filter fun v => v.1 ∉ T

def onT (mo : ι × Fin n →₀ ℕ) : ι × Fin n →₀ ℕ := mo.filter fun v => v.1 ∈ T

theorem onT_add_offT (mo : ι × Fin n →₀ ℕ) : onT T mo + offT T mo = mo :=
  Finsupp.filter_add_filter_not mo _

theorem offT_support (mo : ι × Fin n →₀ ℕ) : ∀ v ∈ (offT T mo).support, v.1 ∉ T := by
  intro v hv
  rw [offT, Finsupp.support_filter, Finset.mem_filter] at hv
  exact hv.2

theorem onT_support (mo : ι × Fin n →₀ ℕ) : ∀ v ∈ (onT T mo).support, v.1 ∈ T := by
  intro v hv
  rw [onT, Finsupp.support_filter, Finset.mem_filter] at hv
  exact hv.2

theorem offT_add (a b : ι × Fin n →₀ ℕ) : offT T (a + b) = offT T a + offT T b := Finsupp.filter_add

theorem offT_eq_self (M : ι × Fin n →₀ ℕ) (h : ∀ v ∈ M.support, v.1 ∉ T) : offT T M = M :=
  (Finsupp.filter_eq_self_iff _ _).2 fun v hv => h v (Finsupp.mem_support_iff.2 hv)

theorem offT_eq_zero (m : ι × Fin n →₀ ℕ) (h : ∀ i, i ∉ T → multideg m i = 0) : offT T m = 0 := by
  ext v
  rw [offT, Finsupp.filter_apply]
  by_cases hv : v.1 ∉ T
  · rw [if_pos hv]
    have h1 := h v.1 hv
    unfold multideg at h1
    have h2 : m (v.1, v.2) ≤ ∑ c : Fin n, m (v.1, c) :=
      Finset.single_le_sum (f := fun c : Fin n => m (v.1, c)) (fun _ _ => Nat.zero_le _) (Finset.mem_univ v.2)
    rw [h1] at h2
    exact Nat.le_zero.1 h2
  · rw [if_neg hv]
    rfl

theorem multideg_onT (mo : ι × Fin n →₀ ℕ) (i : ι) (hi : i ∉ T) : multideg (onT T mo) i = 0 := by
  unfold multideg
  apply Finset.sum_eq_zero
  intro c _
  rw [onT, Finsupp.filter_apply, if_neg hi]

end Sl

def sliceT {R : Type*} [CommRing R] {ι : Type*} {n : ℕ} (T : Set ι) (F : MvPolynomial (ι × Fin n) R)
    (M : ι × Fin n →₀ ℕ) : MvPolynomial (ι × Fin n) R :=
  ∑ mo ∈ F.support.filter (fun mo => offT T mo = M), monomial (onT T mo) (F.coeff mo)

section Sl2

variable {R : Type*} [CommRing R] {ι : Type*} {n : ℕ} (T : Set ι) (F : MvPolynomial (ι × Fin n) R)

theorem slice_sum : F = ∑ M ∈ F.support.image (offT T), sliceT T F M * monomial M 1 := by
  have h1 : ∀ M ∈ F.support.image (offT T), sliceT T F M * monomial M 1 =
      ∑ mo ∈ F.support.filter (fun mo => offT T mo = M), monomial mo (F.coeff mo) := by
    intro M _
    rw [sliceT, Finset.sum_mul]
    refine Finset.sum_congr rfl fun mo hmo => ?_
    rw [monomial_mul, mul_one, ← (Finset.mem_filter.1 hmo).2, onT_add_offT]
  rw [Finset.sum_congr rfl h1,
    Finset.sum_fiberwise_of_maps_to (fun mo hmo => Finset.mem_image_of_mem (offT T) hmo)]
  exact F.as_sum

theorem slice_support (M mo' : ι × Fin n →₀ ℕ) (h : mo' ∈ (sliceT T F M).support) :
    ∃ mo ∈ F.support, offT T mo = M ∧ onT T mo = mo' := by
  obtain ⟨mo, hmo, rfl⟩ := mem_support_sum_monomial _ _ _ _ h
  exact ⟨mo, (Finset.mem_filter.1 hmo).1, (Finset.mem_filter.1 hmo).2, rfl⟩

theorem slice_supported (M : ι × Fin n →₀ ℕ) : sliceT T F M ∈ supported R {v : ι × Fin n | v.1 ∈ T} := by
  refine Subalgebra.sum_mem _ fun mo hmo => ?_
  rw [mem_supported, vars_monomial (mem_support_iff.1 (Finset.mem_filter.1 hmo).1)]
  intro v hv
  exact onT_support T mo v hv

variable (LL : Letters ι) (S : Set ι) (j : Fin n)

theorem twist_slice_off (M m : ι × Fin n →₀ ℕ) (hm : m ∈ (twistSub LL S j (sliceT T F M)).support) :
    offT T m = 0 := by
  obtain ⟨u, hu, hmu⟩ := twistSub_support LL S j _ m hm
  obtain ⟨mo, _, _, rfl⟩ := slice_support T F M u hu
  exact offT_eq_zero T m fun i hi => (hmu i).trans (multideg_onT T mo i hi)

theorem twist_slice_coeff (hST : S ⊆ T) (M : ι × Fin n →₀ ℕ) (hM : M ∈ F.support.image (offT T))
    (m : ι × Fin n →₀ ℕ) (hm : m ∈ (twistSub LL S j (sliceT T F M)).support) :
    (twistSub LL S j F).coeff (m + M) = (twistSub LL S j (sliceT T F M)).coeff m := by
  have hoff : ∀ M' ∈ F.support.image (offT T), ∀ v ∈ M'.support, v.1 ∉ T := by
    intro M' hM'
    obtain ⟨mo, _, rfl⟩ := Finset.mem_image.1 hM'
    exact offT_support T mo
  have hsum : twistSub LL S j F =
      ∑ M' ∈ F.support.image (offT T), twistSub LL S j (sliceT T F M') * monomial M' 1 := by
    conv_lhs => rw [slice_sum T F]

    rw [map_sum]
    refine Finset.sum_congr rfl fun M' hM' => ?_
    rw [map_mul, twistSub_monomial_off LL S j M' fun v hv hvS => hoff M' hM' v hv (hST hvS)]
  rw [hsum, coeff_sum, Finset.sum_eq_single M]
  · rw [coeff_mul_monomial', if_pos le_add_self, add_tsub_cancel_right, mul_one]
  · intro M' hM' hne
    rw [coeff_mul_monomial']
    split_ifs with hle
    · by_contra hc
      have hc' : (twistSub LL S j (sliceT T F M')).coeff (m + M - M') ≠ 0 := left_ne_zero_of_mul hc
      have h1 := twist_slice_off T F LL S j M' _ (mem_support_iff.2 hc')
      have h2 := twist_slice_off T F LL S j M m hm
      have h3 : m + M - M' + M' = m + M := tsub_add_cancel_of_le hle
      have h4 := congrArg (offT T) h3
      rw [offT_add, offT_add, h1, h2, zero_add, zero_add, offT_eq_self T M' (hoff M' hM'),
        offT_eq_self T M (hoff M hM)] at h4
      exact hne h4
    · rfl
  · intro h
    exact absurd hM h

end Sl2

theorem valSlice : ValSlice := by
  intro R _ _ ι n _ LL T F
  refine ⟨F.support.image (offT T), sliceT T F, ?_, fun M _ => slice_supported T F M, slice_sum T F, ?_, ?_⟩
  · intro M hM
    obtain ⟨mo, _, rfl⟩ := Finset.mem_image.1 hM
    exact offT_support T mo
  · intro M _ mo' hmo'
    obtain ⟨mo, hmo, rfl, rfl⟩ := slice_support T F M mo' hmo'
    rw [onT_add_offT]
    exact hmo
  · intro M hM S hST
    refine val_lam_of_subset _ _ _ _ _ _ fun j => sDegs_subset_of _ _ _ _ _ _ _ fun k hk => ?_
    intro m
    by_cases hm : m ∈ (twistSub LL S j (sliceT T F M)).support
    · rw [← twist_slice_coeff T F LL S j hST M hM m hm]
      exact hk _
    · rw [notMem_support_iff.1 hm]
      simp

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.TwistSliceCoeff =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembershipOfThreeParts =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembershipOfThreeParts", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembTop\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.RestValBdG\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.DecIdentity\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MemSupportSumMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembAlgF\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDegF\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembLabF\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ProjectionMemPartialSpan\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.TwistSliceCoeff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.Proposition5Numerics

theorem decomposition_of_three_parts (hVB : RestValBdG) (hXX : RestXXG) (hDd : RestDdG) : RestDecG :=
  restDecG_of atl valSlice valComp hVB hXX hDd

theorem membership_of_three_parts (hVB : RestValBdG) (hXX : RestXXG) (hDd : RestDdG) (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) :
    RestMemb D CLa Ck Crk Cdeg :=
  membership_of_four_parts (decomposition_of_three_parts hVB hXX hDd) restAlgG restDegG restLabG D CLa Ck Crk Cdeg

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembershipOfThreeParts =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembFinal =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembFinal", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.TwiceValuationFactorialProduct\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDd\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembVB\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembXXb\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembershipOfThreeParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.Proposition5Numerics

theorem restMemb (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : RestMemb D CLa Ck Crk Cdeg :=
  membership_of_three_parts restValBdG restXXG_b restDdG_holds D CLa Ck Crk Cdeg

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembFinal =====
