module

public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.WordLossNonneg
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.NoOpStep
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.FrMemLetters
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDd
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.PosTLSurj
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SlackBoundJoint
public import Formalism.SharpRestriction.GrowthBounds.ObjPol
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Formalism.SharpRestriction.GrowthBounds.GLWeightTheory
public import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees
public import Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.TlNonempty
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PlaneCoeffOneTTens
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ValuationOneEqZero
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.CommPresIsoSub
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDefs
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MemSupportSumMonomial
public import Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.LowestWeightNonposOffSet
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.JointEIntList
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.LeCubeMul
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestPlOf
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TensZeroRight
public import Formalism.SharpRestriction.GrowthBounds.ValuationLowestDegreeMapFractionField
public import Formalism.SharpRestriction.GrowthBounds.AevalValuation.ValGen
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.PosULeIff
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ProdRangeZmod
public import Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.FrRevInj
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestOneOpOf
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.DoubleMonomialApply
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.XXgZeroP
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RenameMemSupported
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.FortyEightBoundArith
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport
public import Formalism.SharpRestriction.GrowthBounds.MonomialSupport.GeZSum
public import Formalism.SharpRestriction.GrowthBounds.MonomialSupport.Lam1SPderivAndXMulLeAddIndicator
import Std.Tactic.BVDecide.Normalize.BitVec
import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SlackBoundReal
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.GrowthBounds.RootWeights.ValuationBoundDetPowerFactor
import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.TwiceValuationFactorialProduct
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.WithThModelLet, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.WBound, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.GeoTouch, Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TypeBound, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TypeBd, Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.LevNMonomial, Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.MemSpanList, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.CompDEqHomComp, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ValSCongrSupp, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PmatDetMem, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.SupportedOfSupport, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.SumFiberMultideg, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.MemTSetIff, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.MultidegSingle, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.WithThModelLet =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.WithThModelLet", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.WordLossNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords

def withTh {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {r J : ℕ} (Dt : SignedChainData p O r J)
    (th : ∀ j, Fin (Dt.nch j) → ℝ) (thL : ZMod J → Fin r → ℝ) (h : ∀ j (m : Fin r), m.val + 2 ≤ r → 0 < thL j m) :
    SignedChainData p O r J :=
  SignedChainData.mk Dt.nL Dt.sgn Dt.d Dt.gP Dt.nch Dt.chain Dt.chain_mono Dt.chain_w th Dt.sl thL h Dt.ga Dt.ga_unit Dt.ga_dig
    Dt.c Dt.one_le_c

section With

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {r J : ℕ} (Dt : SignedChainData p O r J)
    (th : ∀ j, Fin (Dt.nch j) → ℝ) (thL : ZMod J → Fin r → ℝ) (h : ∀ j (m : Fin r), m.val + 2 ≤ r → 0 < thL j m)

theorem withTh_modelLet : (withTh Dt th thL h).modelLet = Dt.modelLet := by
  unfold SignedChainData.modelLet withTh
  congr 1
  funext x
  cases x <;> rfl

theorem withTh_trueLet : (withTh Dt th thL h).trueLet = Dt.trueLet := by
  unfold SignedChainData.trueLet withTh
  congr 1
  funext x
  obtain ⟨j, l | m⟩ := x <;> rfl

theorem withTh_levToML (j) : (withTh Dt th thL h).levToML j = Dt.levToML j := by
  funext x
  cases x <;> rfl

theorem withTh_chainML (j i) : (withTh Dt th thL h).chainML j i = Dt.chainML j i := by
  unfold SignedChainData.chainML
  rw [withTh_levToML]
  rfl

theorem withTh_TSet (j i) : (withTh Dt th thL h).TSet j i = Dt.TSet j i := rfl

theorem withTh_digOK (rho) : (withTh Dt th thL h).digOK rho = Dt.digOK rho := rfl

theorem withTh_liftVar : (withTh Dt th thL h).liftVar = Dt.liftVar := by
  funext x
  obtain ⟨⟨j, l | m⟩, a⟩ := x <;> rfl

theorem withTh_liftExp : (withTh Dt th thL h).liftExp = Dt.liftExp := by
  funext mo x
  obtain ⟨⟨j, l | m⟩, a⟩ := x <;> rfl

theorem withTh_Fdig (rho F) : (withTh Dt th thL h).Fdig rho F = Dt.Fdig rho F := by
  simp only [SignedChainData.Fdig, withTh_digOK, withTh_liftVar, withTh_liftExp]
  rfl

theorem withTh_normE (K : ℕ) [NeZero K] [NeZero J] : normE p K (withTh Dt th thL h) = normE p K Dt := by
  unfold normE
  rw [withTh_trueLet]
  rfl

theorem XX_withTh [NeZero J] [NeZero r] (hth : ∀ j i, Dt.th j i ≤ th j i)
    (hthL : ∀ j (m : Fin r), m.val + 2 ≤ r → Dt.thL j m ≤ thL j m)
    (F : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) (hF : (withTh Dt th thL h).XX F) : Dt.XX F := by
  obtain ⟨h1, h2, h3⟩ := hF
  refine ⟨h1, fun rho j i => ?_, fun j m hm => ?_⟩
  · have hx := h2 rho j i
    erw [withTh_modelLet, withTh_chainML, withTh_Fdig] at hx
    exact geZ_anti (hth j i) hx
  · have hx := h3 j m hm
    erw [withTh_trueLet, withTh_TSet] at hx
    exact geZ_anti (hthL j m hm) hx

end With

theorem restLeOfG : RestLeOfG := by
  intro sc sL p n' r K m _ _ _ O _ _ _ hk Fr deg Y N₁ G' cP F hG J _ Dt dPl dNo ka hT rho e he nu
  obtain ⟨t1, t2, t3, t4, t5, t6, t7, t8, t9⟩ := hT
  let th : ∀ j, Fin (Dt.nch j) → ℝ := fun j i =>
    thStar Fr p deg Y (r + K) (mStar p Fr (r + K) N₁ (p ^ G') cP) Dt.nL K ka j (i : ℕ) -
      sc * slU Fr p deg Y (r + K) Dt.nL j (i : ℕ)
  let thL : ZMod J → Fin r → ℝ := fun j mm =>
    thStar Fr p deg Y (r + K) (mStar p Fr (r + K) N₁ (p ^ G') cP) Dt.nL K ka j (Dt.nL j + (r - 1 - (mm : ℕ))) -
      sL * slU Fr p deg Y (r + K) Dt.nL j (Dt.nL j + (r - 1 - (mm : ℕ)))
  have hpos : ∀ j (mm : Fin r), mm.val + 2 ≤ r → 0 < thL j mm := by
    intro j mm hmm
    have a := Dt.thL_pos j mm hmm
    have b := t9 j mm hmm
    simp only [sub_zero] at b
    exact lt_of_lt_of_le a b
  have hT' : TwistedSubstitutionGrowthBound Fr p deg Y (r + K) (mStar p Fr (r + K) N₁ (p ^ G') cP) K sc sL
      (withTh Dt th thL hpos) dPl ka :=
    ⟨t1, t2, t3, t4, t5, t6, t7, fun j i => rfl, fun j mm _ => rfl⟩
  have hX := hG J (withTh Dt th thL hpos) dPl dNo ka hT' rho e (by rw [withTh_normE]; exact he) nu
  refine XX_withTh Dt th thL hpos (fun j i => ?_) (fun j mm hmm => ?_) _ hX
  · have b := t8 j i
    simp only [sub_zero] at b
    exact b
  · have b := t9 j mm hmm
    simp only [sub_zero] at b
    exact b

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.WithThModelLet =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.WBound =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.WBound", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.WordLossNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords
open Formalism.MainNotions.G.WittFrameLocaliserOrders

theorem sum_ite_mem {α β : Type*} [DecidableEq α] (f : β → α) (T : Finset α) (l : List β) :
    (l.map fun z => if f z ∈ T then (2 : ℝ) else 0).sum =
      2 * ∑ s ∈ T, ((l.filter fun z => f z = s).length : ℝ) := by
  induction l with
  | nil => simp
  | cons y l ih =>
    have e : ∀ s, (((y :: l).filter fun z => f z = s).length : ℝ) =
        ((l.filter fun z => f z = s).length : ℝ) + if f y = s then 1 else 0 := by
      intro s
      by_cases h : f y = s <;> simp [h]
    simp only [List.map_cons, List.sum_cons, ih, e, Finset.sum_add_distrib, Finset.sum_ite_eq]
    split_ifs <;> ring

section Geo

variable {n' r : ℕ} [NeZero n'] (Fr : Frames n' r)

theorem llPos_mem (j : ℤ) (l : ℕ) (hl : l < (Fr.LLset j).card) : llPos Fr j l ∈ Fr.LLset j := by
  unfold llPos
  have hlen : ((Fr.LLset j).sort (· ≤ ·)).length = (Fr.LLset j).card := Finset.length_sort _
  rw [List.getD_eq_getElem _ _ (by rw [hlen]; exact hl)]
  exact (Finset.mem_sort (· ≤ ·)).1 (List.getElem_mem _)

theorem mem_LLset (j x : ℤ) : x ∈ Fr.LLset j ↔
    (Fr.fr (j - 1) (r - 1) < x ∧ x < Fr.fr j 0) ∧ posOf n' x ∈ Fr.TT := by
  simp [Frames.LLset]

variable {Fr} {L₁ N₁ : ℕ}

theorem LL_sub_letters (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (j y : ℤ) (hy : y ∈ Fr.LLset j) :
    y ∈ Fr.letters j ∧ ¬ Fr.IsW j y :=
  _root_.Formalism.MainNotions.Proposition5Numerics.LL_sub_letters hV hr j y hy

theorem posU_mem (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (j : ℤ) (u : ℕ) (hu : u < (Fr.LLset j).card + r) :
    posU Fr (Fr.LLset j).card j u ∈ Fr.letters j ∧ ¬ Fr.IsW j (posU Fr (Fr.LLset j).card j u) := by
  unfold posU
  split_ifs with h
  · exact LL_sub_letters hV hr j _ (llPos_mem Fr j u h)
  · have hi : u - (Fr.LLset j).card < r := by omega
    have h1 := hV.2.2.2.1 (j - 1)
    rw [sub_add_cancel] at h1
    have h2 := frame_row_monotone Fr L₁ N₁ hV (j - 1) (r - 1) (by omega)
    have h3 := frame_row_monotone Fr L₁ N₁ hV j _ hi
    have h4 := frame_entry_le_last Fr L₁ N₁ hV j _ hi
    refine ⟨?_, ?_⟩
    · unfold Frames.letters
      simp only [Finset.mem_filter, Finset.mem_Icc]
      exact ⟨⟨by omega, h4⟩, (hV.2.2.2.2.1 j _ hi).1⟩
    · unfold Frames.IsW
      omega

theorem Bo_ge (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (p : ℕ) (hp : 1 ≤ p) (deg : Fin n' → ℕ) (a : ℝ)
    (hdeg : ∀ s ∈ Fr.TT, a ≤ (deg s : ℝ)) (G : ℕ) (j x : ℤ) (hG : Fr.fr j (r - 1) - Fr.fr (j - 1) 0 ≤ G)
    (hx : x ∈ Fr.letters j) (hW : ¬ Fr.IsW j x) :
    a / (p : ℝ) ^ G ≤ Bo p Fr deg j x := by
  have hy := oldest_mem_segment_letters Fr L₁ N₁ hV hr j x hx hW
  unfold Frames.letters at hy
  simp only [Finset.mem_filter, Finset.mem_Icc] at hy
  have hp' : (1 : ℝ) ≤ (p : ℝ) := by exact_mod_cast hp
  unfold Bo levDeg
  apply div_le_div₀ (Nat.cast_nonneg _) (hdeg _ hy.2) (by positivity)
  apply pow_le_pow_right₀ hp'
  unfold Frames.dist
  omega

theorem wordLoss_le {k : ℕ} (l : List (Fin n' × (Fin k × Fin k))) (c0 : ℕ)
    (hc : ∀ s, (l.filter fun z => z.1 = s).length ≤ c0) (jz : ℤ) (u : ℕ) :
    wordLoss Fr l jz u ≤ 2 * ((Fr.letters jz).card : ℝ) * c0 := by
  set T : Finset (Fin n') := (Fr.letters jz).image (posOf n') with hT
  have h1 : wordLoss Fr l jz u ≤ (l.map fun z => if z.1 ∈ T then (2 : ℝ) else 0).sum := by
    unfold wordLoss
    apply List.sum_le_sum
    intro z _
    unfold opCost
    by_cases ht : touchT Fr jz u z.1
    · obtain ⟨x, hx, hxs, _⟩ := ht
      have hm : z.1 ∈ T := by
        rw [hT]
        exact Finset.mem_image.2 ⟨x, hx, hxs⟩
      rw [if_pos ⟨x, hx, hxs, by assumption⟩, if_pos hm]
    · rw [if_neg ht]
      split_ifs <;> norm_num
  have h2 := sum_ite_mem (fun z : Fin n' × (Fin k × Fin k) => z.1) T l
  have h3 : ∑ s ∈ T, ((l.filter fun z => z.1 = s).length : ℝ) ≤ ∑ _s ∈ T, (c0 : ℝ) := by
    apply Finset.sum_le_sum
    intro s _
    exact_mod_cast hc s
  have h4 : (T.card : ℝ) ≤ ((Fr.letters jz).card : ℝ) := by
    exact_mod_cast Finset.card_image_le
  rw [Finset.sum_const, nsmul_eq_mul] at h3
  have h5 : (T.card : ℝ) * c0 ≤ ((Fr.letters jz).card : ℝ) * c0 :=
    mul_le_mul_of_nonneg_right h4 (Nat.cast_nonneg _)
  rw [h2] at h1
  nlinarith

end Geo

theorem size_arith (C k r N Q cS c0 e Y N1 : ℝ) (hC : 16 ≤ C) (hk : 1 ≤ k) (hr : 1 ≤ r) (hN : 1 ≤ N) (hQ : 1 ≤ Q)
    (hcS : 0 ≤ cS) (hc0 : 0 ≤ c0) (he : 0 ≤ e) (hY : 0 ≤ Y) (hN1 : 0 ≤ N1) (hN1' : N1 ≤ r * N) :
    16 * N1 * c0 * (Y * k ^ 2) * Q ≤ C * k ^ 3 * r ^ 2 * N * Q ^ 5 * (cS + (r * N * c0 + e)) * Y := by
  have a1 : k ^ 2 ≤ k ^ 3 := pow_le_pow_right₀ hk (by norm_num)
  have a2 : Q ≤ Q ^ 5 := le_self_pow₀ hQ (by norm_num)
  have a3 : (1 : ℝ) ≤ r ^ 2 := one_le_pow₀ hr
  have a4 : N1 * c0 ≤ cS + (r * N * c0 + e) := by
    have := mul_le_mul_of_nonneg_right hN1' hc0
    linarith
  have b1 : 16 * k ^ 2 ≤ C * k ^ 3 := mul_le_mul hC a1 (by positivity) (by linarith)
  have b2 : 16 * k ^ 2 ≤ C * k ^ 3 * r ^ 2 := le_trans b1 (le_mul_of_one_le_right (by positivity) a3)
  have b3 : 16 * k ^ 2 ≤ C * k ^ 3 * r ^ 2 * N := le_trans b2 (le_mul_of_one_le_right (by positivity) hN)
  have b4 : 16 * k ^ 2 * Q ≤ C * k ^ 3 * r ^ 2 * N * Q ^ 5 := mul_le_mul b3 a2 (by linarith) (by positivity)
  have b5 : 16 * k ^ 2 * Q * (N1 * c0) ≤ C * k ^ 3 * r ^ 2 * N * Q ^ 5 * (cS + (r * N * c0 + e)) :=
    mul_le_mul b4 a4 (by positivity) (by positivity)
  have b6 := mul_le_mul_of_nonneg_right b5 hY
  calc 16 * N1 * c0 * (Y * k ^ 2) * Q = 16 * k ^ 2 * Q * (N1 * c0) * Y := by ring
    _ ≤ _ := b6

theorem wordBoundStep (C CLa : ℝ) (hC : 16 ≤ C) : WordBoundStep C CLa := by
  intro p W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w n' m r _ _ TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar K _ _ hk hrk
    F nb B hD l _ hc jz u hu
  obtain ⟨_, H, hF, _⟩ := hD
  have hB := hyps_basic (by linarith : (1 : ℝ) ≤ C) H
  obtain ⟨h1, h2, _, h4, h5, h6, _, _, _, _, _, h12⟩ := H
  obtain ⟨hTT, hV, hG, _⟩ := hF
  have hr1 : 1 ≤ r := by omega
  have ha0 : (0 : ℝ) ≤ a := by linarith [hB.two_le_a]
  obtain ⟨hx, hW⟩ := posU_mem hV hr1 jz u hu
  set xx := posU F (F.LLset jz).card jz u with hxx

  have hw := wordLoss_le (Fr := F) l c0 hc jz u
  have hcard : ((F.letters jz).card : ℝ) ≤ (orbitWindowCount r de h x : ℝ) := by exact_mod_cast hV.2.2.2.2.2.2.2.1 jz
  have hw2 : wordLoss F l jz u ≤ 2 * (orbitWindowCount r de h x : ℝ) * c0 := by
    have := mul_le_mul_of_nonneg_right hcard (Nat.cast_nonneg c0 : (0 : ℝ) ≤ c0)
    linarith

  have hdeg : ∀ s ∈ F.TT, a ≤ (flatDeg lam0 s : ℝ) := by
    intro s hs
    rw [hTT] at hs
    exact (flatDeg_bounds (by have := hB.m_ge; omega) ha0 h5 s hs).1
  have hBo := Bo_ge hV hr1 p (by omega) (flatDeg lam0) a hdeg (goodG' r de h x) jz xx (le_of_lt (hG jz)) hx hW

  have hp1 : (1 : ℝ) ≤ (p : ℝ) := by exact_mod_cast (by omega : 1 ≤ p)
  have hQ1 : (1 : ℝ) ≤ (p : ℝ) ^ goodG' r de h x := one_le_pow₀ hp1
  have hk1 : (1 : ℝ) ≤ ((m + 1 : ℕ) : ℝ) := by exact_mod_cast (by omega : 1 ≤ m + 1)
  have hrr : (1 : ℝ) ≤ (r : ℝ) := by exact_mod_cast hr1
  have hNN : (1 : ℝ) ≤ (TT.card : ℝ) := by exact_mod_cast hB.N_pos
  have hY0 : (0 : ℝ) < Y := by linarith [hB.two_le_Y]
  have hN1 : ((orbitWindowCount r de h x : ℕ) : ℝ) ≤ (r : ℝ) * TT.card := by
    have : orbitWindowCount r de h x ≤ r * TT.card := le_trans (Nat.le_self_pow (by norm_num) _) h4
    exact_mod_cast this
  have hs := size_arith C ((m + 1 : ℕ) : ℝ) r TT.card ((p : ℝ) ^ goodG' r de h x) cStar c0 (2 * r * n' * cpp) Y
    (orbitWindowCount r de h x : ℝ) hC hk1 hrr hNN hQ1 (Nat.cast_nonneg _) (Nat.cast_nonneg _) (by positivity) hY0.le
    (Nat.cast_nonneg _) hN1
  have hsa := le_trans hs h12
  have hkk : ((r + K : ℕ) : ℝ) = ((m + 1 : ℕ) : ℝ) := by rw [hk]
  have hden : 0 < Y * ((r + K : ℕ) : ℝ) ^ 2 := by rw [hkk]; positivity
  have hQ0 : 0 < (p : ℝ) ^ goodG' r de h x := by linarith
  have hfl : ((16 * orbitWindowCount r de h x * c0 : ℕ) : ℤ) ≤ sl p F (flatDeg lam0) Y (r + K) jz xx := by
    unfold sl
    rw [Int.le_floor, le_div_iff₀ hden]
    refine le_trans ?_ hBo
    rw [le_div_iff₀ hQ0, hkk]
    push_cast
    push_cast at hsa
    linarith
  have hfl' : ((16 * orbitWindowCount r de h x * c0 : ℕ) : ℝ) ≤ (sl p F (flatDeg lam0) Y (r + K) jz xx : ℝ) := by
    exact_mod_cast hfl
  push_cast at hfl'
  linarith

theorem restWordBound (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : RestWordBound D CLa Ck Crk Cdeg :=
  fun _ => ⟨16, by norm_num, fun C hC => wordBoundStep C CLa hC⟩

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.WBound =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.GeoTouch =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.GeoTouch", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.NoOpStep\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.FrMemLetters\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDd\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.PosTLSurj\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SlackBoundJoint\nimport Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.SlackBoundReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.Proposition5Numerics

theorem geoTop : GeoTop := by
  intro n' r _ _ Fr L₁ N₁ hV J _ nL hJ hnL s hs
  have hr : 1 ≤ r := NeZero.pos r
  obtain ⟨x0, hx0⟩ := posTL_surj Fr hV hr hJ hnL s hs
  refine ⟨x0, hx0, fun x' hx' => ?_⟩
  exact posTL_inj Fr hV hr hJ hnL (hx'.trans hx0.symm)

theorem geoTouch : GeoTouch := by
  intro n' r _ _ Fr L₁ N₁ hV J _ nL hJ hnL x0 j u hu hx
  have hr : 1 ≤ r := NeZero.pos r
  have hu' : u < (Fr.LLset (segZ j)).card + r := by rw [← hnL]; exact hu
  unfold touchT
  rcases hx with (⟨l, hl, hlt⟩ | ⟨m, hm, hlt⟩) | ⟨m, hm⟩
  · subst hl
    have hl' : l.val < (Fr.LLset (segZ j)).card := by rw [← hnL]; exact l.isLt
    refine ⟨llPos Fr (segZ j) l.val, (LL_sub_letters hV hr _ _ (llPos_mem Fr (segZ j) l.val hl')).1, rfl, ?_⟩
    rw [← posU_ll (Fr := Fr) (segZ j) l.val hl']
    exact (posU_le_iff hV (segZ j) _ _ (by omega) hu').2 (by omega)
  · subst hm
    have hm' := m.isLt
    refine ⟨Fr.fr (segZ j) (r - 1 - m.val), fr_mem_letters hV hr _ _ (by omega), rfl, ?_⟩
    rw [← posU_fr (Fr := Fr) (segZ j) (r - 1 - m.val)]
    refine (posU_le_iff hV (segZ j) _ _ (by omega) hu').2 ?_
    rw [← hnL]
    omega
  · subst hm
    have hm' := m.isLt
    obtain ⟨s, hs, hsh⟩ := DdG.shift Fr hV.2.1 hJ (j - 1)
    rw [sub_add_cancel] at hsh
    refine ⟨Fr.fr (segZ j - 1) (r - 1 - m.val), w_mem_letters hV hr _ _ (by omega), ?_,
      (w_lt_posU hV hr _ _ _ (by omega) hu').le⟩
    show _ = posOf n' (Fr.fr (segZ (j - 1)) (r - 1 - m.val))
    rw [(hsh (r - 1 - m.val)).1]
    rcases hs with rfl | rfl
    · rw [add_zero]
    · rw [DdG.posOf_add_n]

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.GeoTouch =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TypeBound =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TypeBound", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ObjPol\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.TestSideWords

open Formalism.MainNotions.G

def TypeBound : Prop :=
  ∀ (K : Type) [Field K] [CharZero K] (ι : Type) [Fintype ι] (LL : Letters ι) (n : ℕ) [NeZero n] (S : Set ι)
    (e : (Fin n → ℤ) → Module.End K (MvPolynomial (ι × Fin n) K)),
    (∀ mu, IsIsoProj (glOps K n LL S) mu (e mu)) →
    (∀ G : MvPolynomial (ι × Fin n) K, ∃ T : Finset (Fin n → ℤ),
      G = ∑ mu ∈ T, e mu G ∧ ∀ mu, e mu G ∈ isoSub (glOps K n LL S) mu) →
    ∀ (G : MvPolynomial (ι × Fin n) K) (lam : Fin n → ℤ), e lam G ≠ 0 →
      (∀ M : ℤ, lam1S LL S G ≤ (M : WithBot ℤ) → lam 0 ≤ M) ∧
      (∀ th : ℤ, (th : WithTop ℤ) ≤ valS LL S G → th ≤ lam (lastIdx n))

end Formalism.MainNotions.TestSideWords
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TypeBound =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TypeBd =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TypeBd", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TypeBound\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Formalism.SharpRestriction.GrowthBounds.GLWeightTheory\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.MainNotions.TestSideWords Formalism.MainNotions.G.GLWeightTheory

theorem typeBound_proved (D : Formalism.BasicNotions.D7) : TypeBound := by

  have hV := Formalism.MainNotions.G.GLWeightTheory.valuation_field D
  unfold Formalism.MainNotions.CovariantDegrees.ValuationLemmaField Formalism.MainNotions.CovariantDegrees.ShaLengthVersionTwo at hV
  unfold TypeBound
  intro K _ _ ι _ LL n _ S e he _ G lam hne
  obtain ⟨hval, hlam⟩ := hV.2 K ι LL n S e he
  exact ⟨fun M hM => (hlam G M).1 hM lam hne, fun th hth => (hval G th).1 hth lam hne⟩

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TypeBd =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.LevNMonomial =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.LevNMonomial", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.TlNonempty\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PlaneCoeffOneTTens\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.ValuationOneEqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.NormalSetCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.Proposition5Numerics Formalism.MainNotions.PairMembershipBlocks

section Lev

variable {n' r K m : ℕ} [NeZero n'] (Fr : Frames n' r) (p : ℕ) {O : Type} [CommRing O] [IsDomain O]
  (hk : m + 1 = r + K) {J : ℕ} [NeZero J] (nL : ZMod J → ℕ)

theorem levN_add (F G : MvPolynomial (TV n' (m + 1)) (KK O)) :
    levN Fr p hk nL (F + G) = levN Fr p hk nL F + levN Fr p hk nL G := by
  unfold levN
  exact sumSupp_add (fun mo => (monomial (R := KK O) (noMon Fr p hk nL mo)).toAddMonoidHom) F G

theorem levN_monomial (mo : TV n' (m + 1) →₀ ℕ) (c : KK O) :
    levN Fr p hk nL (monomial mo c) = monomial (noMon Fr p hk nL mo) c := by
  unfold levN
  by_cases h : c = 0
  · subst h; simp
  · rw [support_monomial, if_neg h, Finset.sum_singleton, coeff_monomial, if_pos rfl]

def psiExp (a : TL J nL r × Fin K →₀ ℕ) : TV n' (m + 1) →₀ ℕ :=
  a.sum fun v e => Finsupp.single (noVar Fr hk nL v.1 v.2) (lowP Fr p v.1 * e)

def Psi : MvPolynomial (TL J nL r × Fin K) (KK O) →ₐ[KK O] MvPolynomial (TV n' (m + 1)) (KK O) :=
  aeval fun v => X (noVar Fr hk nL v.1 v.2) ^ lowP Fr p v.1

theorem Psi_monomial (a : TL J nL r × Fin K →₀ ℕ) (c : KK O) :
    Psi (O := O) Fr p hk nL (monomial a c) = monomial (psiExp Fr p hk nL a) c := by
  unfold Psi psiExp
  rw [aeval_monomial, monomial_finsupp_sum_index, MvPolynomial.algebraMap_eq]
  congr 1
  refine Finsupp.prod_congr fun v _ => ?_
  rw [← pow_mul, X_pow_eq_monomial]

variable {Fr nL}

theorem noVar_inj {L₁ N₁ : ℕ} (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (hJ : J = Fr.J)
    (hnL : ∀ j, nL j = (Fr.LLset (segZ j)).card) {x x' : TL J nL r} {b b' : Fin K}
    (h : noVar Fr hk nL x b = noVar Fr hk nL x' b') : x = x' ∧ b = b' := by
  have h1 := congrArg Prod.fst h
  have h2 := congrArg Prod.snd h
  simp only [noVar] at h1 h2
  exact ⟨dg_inj hV hr hJ hnL h1, Fin.natAdd_injective K r (Fin.cast_injective _ h2)⟩

theorem noMon_psiExp {L₁ N₁ : ℕ} (hp : 0 < p) (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (hJ : J = Fr.J)
    (hnL : ∀ j, nL j = (Fr.LLset (segZ j)).card) (a : TL J nL r × Fin K →₀ ℕ) :
    noMon Fr p hk nL (psiExp Fr p hk nL a) = a := by
  ext ⟨x, b⟩
  have hP : 0 < lowP Fr p x := pow_pos hp _
  have h1 : psiExp Fr p hk nL a (noVar Fr hk nL x b) = lowP Fr p x * a (x, b) := by
    unfold psiExp
    rw [Finsupp.sum_apply, Finsupp.sum_eq_single (x, b)]
    · rw [Finsupp.single_eq_same]
    · intro v _ hv
      rw [Finsupp.single_apply, if_neg]
      intro h
      obtain ⟨e1, e2⟩ := noVar_inj hk hV hr hJ hnL h
      exact hv (Prod.ext e1 e2)
    · intro _
      rw [mul_zero, Finsupp.single_zero, Finsupp.zero_apply]
  simp only [noMon, Finsupp.coe_equivFunOnFinite_symm]
  rw [h1, Nat.mul_div_cancel_left _ hP]

theorem levN_Psi {L₁ N₁ : ℕ} (hp : 0 < p) (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (hJ : J = Fr.J)
    (hnL : ∀ j, nL j = (Fr.LLset (segZ j)).card) (H : MvPolynomial (TL J nL r × Fin K) (KK O)) :
    levN Fr p hk nL (Psi (O := O) Fr p hk nL H) = H := by
  induction H using MvPolynomial.induction_on' with
  | monomial a c => rw [Psi_monomial, levN_monomial, noMon_psiExp p hk hp hV hr hJ hnL]
  | add F G hF hG => rw [map_add (f := _), levN_add, hF, hG]

end Lev

theorem seg_Psi (p : ℕ) {n' r K m : ℕ} [NeZero n'] [NeZero r] (O : Type) [CommRing O] [IsDomain O]
    (hk : m + 1 = r + K) (Fr : Frames n' r) (L₁ N₁ : ℕ) (hV : Fr.Valid L₁ N₁) {J : ℕ} [NeZero J] (nL : ZMod J → ℕ)
    (hnL : ∀ j, nL j = (Fr.LLset (segZ j)).card) (i : ℤ)
    (hsurj : ∀ x ∈ Fr.letters i, ¬ Fr.IsW i x → ∃ t : TL J nL r, segZ t.1 = i ∧ posTL Fr t = x)
    (A : MvPolynomial (ℤ × Fin K) O) (hA : A ∈ supported O {v : ℤ × Fin K | v.1 ∈ Fr.letters i ∧ ¬ Fr.IsW i v.1}) :
    MvPolynomial.map (algebraMap O (KK O)) (rename (castV hk) (phSeg O K p Fr i (nmEmb O r K A))) =
      Psi (O := O) Fr p hk nL (Rn Fr nL A) := by
  have hr : 1 ≤ r := NeZero.one_le
  let f₁ : MvPolynomial (ℤ × Fin K) O →+* MvPolynomial (TV n' (m + 1)) (KK O) :=
    (MvPolynomial.map (algebraMap O (KK O))).comp ((rename (castV hk) : _ →ₐ[O] _).toRingHom.comp
      ((phSeg O K p Fr i).toRingHom.comp (nmEmb O r K).toRingHom))
  let f₂ : MvPolynomial (ℤ × Fin K) O →+* MvPolynomial (TV n' (m + 1)) (KK O) :=
    (Psi (O := O) Fr p hk nL).toRingHom.comp
      ((rename (fun v : ℤ × Fin K => (gT Fr nL v.1, v.2)) : _ →ₐ[KK O] _).toRingHom.comp
        (MvPolynomial.map (algebraMap O (KK O))))
  have key : f₁ A = f₂ A := by
    refine hom_congr_vars ?_ ?_ rfl
    · ext c
      simp [f₁, f₂, nmEmb, phSeg, Psi, MvPolynomial.algebraMap_eq]
    · intro v hv _
      have hv' := (mem_supported.1 hA) (Finset.mem_coe.2 hv)
      obtain ⟨t, ht1, ht2⟩ := hsurj v.1 hv'.1 hv'.2
      have hg : gT Fr nL v.1 = t := by
        rw [← ht2]
        exact Function.leftInverse_invFun (dg_posTL_inj hV hr hnL) t
      obtain ⟨x, c⟩ := v
      simp only at hg ht2
      simp only [f₁, f₂, RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, nmEmb, phSeg, Psi, rename_X,
        aeval_X, map_pow, map_X, hg]
      simp only [castV, noVar, lowP, ht1, ht2]
  exact key

theorem levN_zNo (p : ℕ) [Fact p.Prime] {n' r K m : ℕ} [NeZero n'] [NeZero r] [NeZero K] (O : Type) [CommRing O]
    [IsDomain O] (hk : m + 1 = r + K) (Fr : Frames n' r) (L₁ N₁ : ℕ) (hV : Fr.Valid L₁ N₁) {J : ℕ} [NeZero J]
    (nL : ZMod J → ℕ) (hJ : J = Fr.J) (hnL : ∀ j, nL j = (Fr.LLset (segZ j)).card)
    (hsurj : ∀ i : ℕ, i < Fr.J → ∀ x ∈ Fr.letters i, ¬ Fr.IsW i x →
      ∃ t : TL J nL r, segZ t.1 = (i : ℤ) ∧ posTL Fr t = x)
    (G : ℤ → MvPolynomial (ℤ × Fin K) O)
    (hG : ∀ i : ℕ, i < Fr.J → G i ∈ supported O {v : ℤ × Fin K | v.1 ∈ Fr.letters i ∧ ¬ Fr.IsW i v.1}) :
    levN Fr p hk nL (zNo p O hk Fr G) = ∏ i ∈ Finset.range Fr.J, Rn Fr nL (G i) := by
  have hr : 1 ≤ r := NeZero.one_le
  have hp : 0 < p := (Fact.out : p.Prime).pos
  have h1 : zNo p O hk Fr G = Psi (O := O) Fr p hk nL (∏ i ∈ Finset.range Fr.J, Rn Fr nL (G i)) := by
    unfold zNo
    rw [map_prod, map_prod, map_prod]
    refine Finset.prod_congr rfl fun i hi => ?_
    have hi' := Finset.mem_range.1 hi
    exact seg_Psi p O hk Fr L₁ N₁ hV nL hnL (i : ℤ) (hsurj i hi') (G i) (hG i hi')
  rw [h1, levN_Psi p hk hp hV hr hJ hnL]

end Formalism.MainNotions.NormalSetCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.LevNMonomial =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.MemSpanList =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.MemSpanList", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.CommPresIsoSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.NormalSetCounting

open Formalism.MainNotions.G Formalism.MainNotions.TestSideWords

section JU

variable {n : ℕ} {K V : Type*} [Field K] [AddCommGroup V] [Module K V] {ι : Type*} [Fintype ι] [DecidableEq ι]
  (E : ι → GLOps n K V) (ee : ι → (Fin n → ℤ) → Module.End K V)

theorem ee_pres (hee : ∀ i mu, IsIsoProj (E i) mu (ee i mu))
    (hdec : ∀ i (G : V), ∃ T : Finset (Fin n → ℤ), G = ∑ mu ∈ T, ee i mu G ∧ ∀ mu, ee i mu G ∈ isoSub (E i) mu)
    (hcomm : ∀ i i' mu mu', ee i mu * ee i' mu' = ee i' mu' * ee i mu)
    (i i' : ι) (mu nu : Fin n → ℤ) (x : V) (hx : x ∈ isoSub (E i') nu) : ee i mu x ∈ isoSub (E i') nu := by
  obtain ⟨_, _, h2⟩ := hdec i' (ee i mu x)
  have h1 : ee i' nu x = x := (hee i' nu).1 x hx
  have h3 : ee i mu x = ee i' nu (ee i mu x) := by
    have h4 := congrArg (fun f : Module.End K V => f x) (hcomm i i' mu nu)
    simp only [Module.End.mul_apply] at h4
    rw [← h4, h1]
  rw [h3]
  exact h2 nu

theorem mem_span_list (hee : ∀ i mu, IsIsoProj (E i) mu (ee i mu))
    (hdec : ∀ i (G : V), ∃ T : Finset (Fin n → ℤ), G = ∑ mu ∈ T, ee i mu G ∧ ∀ mu, ee i mu G ∈ isoSub (E i) mu)
    (hcomm : ∀ i i' mu mu', ee i mu * ee i' mu' = ee i' mu' * ee i mu) (l : List ι) (y : V) :
    y ∈ Submodule.span K {x : V | ∃ lam : ι → Fin n → ℤ, ∀ i ∈ l, x ∈ isoSub (E i) (lam i)} := by
  induction l generalizing y with
  | nil => exact Submodule.subset_span ⟨fun _ _ => 0, by simp⟩
  | cons i l ih =>
    have key : Submodule.span K {x : V | ∃ lam : ι → Fin n → ℤ, ∀ j ∈ l, x ∈ isoSub (E j) (lam j)} ≤
        Submodule.span K {x : V | ∃ lam : ι → Fin n → ℤ, ∀ j ∈ i :: l, x ∈ isoSub (E j) (lam j)} := by
      rw [Submodule.span_le]
      rintro x ⟨lam, hlam⟩
      obtain ⟨T, hT, hmem⟩ := hdec i x
      show x ∈ Submodule.span K {x : V | ∃ lam : ι → Fin n → ℤ, ∀ j ∈ i :: l, x ∈ isoSub (E j) (lam j)}
      rw [hT]
      refine Submodule.sum_mem _ fun mu _ => Submodule.subset_span ⟨Function.update lam i mu, ?_⟩
      intro j hj
      by_cases hji : j = i
      · subst hji
        rw [Function.update_self]
        exact hmem mu
      · rw [Function.update_of_ne hji]
        exact ee_pres E ee hee hdec hcomm i j mu (lam j) x (hlam j ((List.mem_cons.mp hj).resolve_left hji))
    exact key (ih y)

private theorem list_prod_isoProj_apply_eq_ite (hee : ∀ i mu, IsIsoProj (E i) mu (ee i mu)) (ka lam : ι → Fin n → ℤ) (x : V)
    (hx : ∀ i, x ∈ isoSub (E i) (lam i)) (l : List ι) :
    (l.map (fun i => ee i (ka i))).prod x = if ∀ i ∈ l, lam i = ka i then x else 0 := by
  induction l with
  | nil => simp
  | cons a l ih =>
    rw [List.map_cons, List.prod_cons, Module.End.mul_apply, ih]
    by_cases h : ∀ i ∈ l, lam i = ka i
    · rw [if_pos h]
      by_cases ha : lam a = ka a
      · have hall : ∀ i ∈ a :: l, lam i = ka i := by
          intro i hi
          rcases List.mem_cons.mp hi with rfl | hi
          · exact ha
          · exact h i hi
        rw [if_pos hall]
        exact (hee a (ka a)).1 x (by rw [← ha]; exact hx a)
      · have hno : ¬ ∀ i ∈ a :: l, lam i = ka i := fun hh => ha (hh a (List.mem_cons.mpr (Or.inl rfl)))
        rw [if_neg hno]
        exact (hee a (ka a)).2 (lam a) ha x (hx a)
    · have hno : ¬ ∀ i ∈ a :: l, lam i = ka i := fun hh => h fun i hi => hh i (List.mem_cons.mpr (Or.inr hi))
      rw [if_neg h, if_neg hno, map_zero]

theorem jproj_eq (hee : ∀ i mu, IsIsoProj (E i) mu (ee i mu))
    (hdec : ∀ i (G : V), ∃ T : Finset (Fin n → ℤ), G = ∑ mu ∈ T, ee i mu G ∧ ∀ mu, ee i mu G ∈ isoSub (E i) mu)
    (hcomm : ∀ i i' mu mu', ee i mu * ee i' mu' = ee i' mu' * ee i mu) (ka : ι → Fin n → ℤ)
    (e : Module.End K V) (he : IsJProj E {ka} e) (y : V) : e y = jointE ee ka y := by
  have hy := mem_span_list E ee hee hdec hcomm Finset.univ.toList y
  induction hy using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨lam, hlam⟩ := hx
    have hx' : ∀ i, x ∈ isoSub (E i) (lam i) := fun i => hlam i (Finset.mem_toList.mpr (Finset.mem_univ i))
    have hxj : x ∈ jIso E lam := by
      simp only [jIso, Submodule.mem_iInf]
      exact hx'
    unfold jointE
    rw [list_prod_isoProj_apply_eq_ite E ee hee ka lam x hx']
    by_cases h : lam = ka
    · rw [if_pos (fun i _ => congrFun h i)]
      exact he.1 lam h x hxj
    · have hno : ¬ ∀ i ∈ (Finset.univ : Finset ι).toList, lam i = ka i :=
        fun hh => h (funext fun i => hh i (Finset.mem_toList.mpr (Finset.mem_univ i)))
      rw [if_neg hno]
      exact he.2 lam h x hxj
  | zero => simp
  | add a b _ _ ha hb => rw [map_add (f := _), map_add (f := _), ha, hb]
  | smul c a _ ha => rw [map_smul, map_smul, ha]

theorem jproj_ne (hee : ∀ i mu, IsIsoProj (E i) mu (ee i mu))
    (hdec : ∀ i (G : V), ∃ T : Finset (Fin n → ℤ), G = ∑ mu ∈ T, ee i mu G ∧ ∀ mu, ee i mu G ∈ isoSub (E i) mu)
    (hcomm : ∀ i i' mu mu', ee i mu * ee i' mu' = ee i' mu' * ee i mu) (ka : ι → Fin n → ℤ)
    (e : Module.End K V) (he : IsJProj E {ka} e) (y : V) (hy : e y ≠ 0) (i : ι) : ee i (ka i) y ≠ 0 := by
  intro h0
  apply hy
  have hfix : ∀ z : V, ee i (ka i) (jointE ee ka z) = jointE ee ka z := by
    intro z
    have hz := mem_span_list E ee hee hdec hcomm Finset.univ.toList z
    induction hz using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨lam, hlam⟩ := hx
      have hx' : ∀ j, x ∈ isoSub (E j) (lam j) := fun j => hlam j (Finset.mem_toList.mpr (Finset.mem_univ j))
      unfold jointE
      rw [list_prod_isoProj_apply_eq_ite E ee hee ka lam x hx']
      split_ifs with h
      · exact (hee i (ka i)).1 x (by rw [← h i (Finset.mem_toList.mpr (Finset.mem_univ i))]; exact hx' i)
      · exact map_zero _
    | zero => simp
    | add a b _ _ ha hb => rw [map_add (f := _), map_add (f := _), ha, hb]
    | smul c a _ ha => rw [map_smul, map_smul, ha]
  have hc : Commute (ee i (ka i)) (jointE ee ka) := by
    unfold jointE
    apply Commute.list_prod_right
    intro b hb
    obtain ⟨j, -, rfl⟩ := List.mem_map.mp hb
    exact hcomm i j (ka i) (ka j)
  rw [jproj_eq E ee hee hdec hcomm ka e he y, ← hfix y, ← Module.End.mul_apply, hc.eq, Module.End.mul_apply, h0, map_zero]

end JU

end Formalism.MainNotions.NormalSetCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.MemSpanList =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.CompDEqHomComp =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.CompDEqHomComp", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembDefs\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PlaneCoeffOneTTens\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MemSupportSumMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TypeBd\npublic import Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.LevNMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.LowestWeightNonposOffSet\npublic import Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.MemSpanList\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.JointEIntList\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.Proposition5Numerics Formalism.MainNotions.NormalSetCounting

theorem compD_eq_homComp {ι : Type} {s : ℕ} {Kf : Type} [Field Kf] (d : ι → ℕ) (H : MvPolynomial (ι × Fin s) Kf) :
    compD d H = homComp d H := rfl

theorem restN (D : Formalism.BasicNotions.D7) : RestN := by
  intro p _ n' r K m _ _ _ O _ _ _ _ S hR hk Fr L₁ N₁ hV _ J _ Dt hT G hG dNo ka e he hne j u hu M
  obtain ⟨hJ, hnL, hsgn, -, -, -⟩ := hT
  have hY := levN_zNo p O hk Fr L₁ N₁ hV Dt.nL hJ hnL (fun i hi x hx hW => tl_surj' hV hJ hnL i hi x hx hW) G hG
  rw [hY] at hne
  have key : ∀ (u' : ℕ) (hu' : u' < Dt.nL j + r + 1) (Sz : Set ℤ),
      (∀ s, (⟨j, s⟩ : TL J Dt.nL r) ∈ NSet Dt.nL j u' ↔ posTL Fr (⟨j, s⟩ : TL J Dt.nL r) ∈ Sz) →
      lam1S LZ Sz (G (segZ j)) ≤ ((M : ℤ) : WithBot ℤ) → ka j u' 0 ≤ M := by
    intro u' hu' Sz hS hM
    have h1 := jproj_ne (normE p K Dt) (eeN D K Dt) (fun i => (eeN_spec D K Dt i).1) (fun i => (eeN_spec D K Dt i).2)
      (eeN_comm D K Dt S hR) (fun i => ka i.1 i.2.val) e he _ hne ⟨j, ⟨u', hu'⟩⟩
    have h2 := (typeBound_proved D (KK O) (TL J Dt.nL r) Dt.trueLet K (NSet Dt.nL j u') (eeN D K Dt ⟨j, ⟨u', hu'⟩⟩)
      (eeN_spec D K Dt ⟨j, ⟨u', hu'⟩⟩).1 (eeN_spec D K Dt ⟨j, ⟨u', hu'⟩⟩).2 _ _ h1).1 M
    apply h2
    rw [compD_eq_homComp]
    refine le_trans (valComp (KK O) (TL J Dt.nL r) K Dt.trueLet (NSet Dt.nL j u') _ dNo).2 ?_
    exact le_trans (lam_prod_le Dt hV hJ hnL hsgn G hG j _ Sz (fun t ht => mem_NSet_fst ht) hS) hM
  exact ⟨key u (by omega) _ fun s => NSet_lt hV hnL j u hu s, key (u + 1) (by omega) _ fun s => NSet_le hV hnL j u hu s⟩

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.CompDEqHomComp =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ValSCongrSupp =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ValSCongrSupp", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PlaneCoeffOneTTens\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.LeCubeMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.Proposition5Numerics

theorem valS_congr_supp {R : Type*} [CommRing R] {ι : Type*} {n : ℕ} [NeZero n] (LL : Letters ι) (S S' L : Set ι)
    (A : MvPolynomial (ι × Fin n) R) (hA : A ∈ supported R {v : ι × Fin n | v.1 ∈ L})
    (h : ∀ y ∈ L, y ∈ S ↔ y ∈ S') : valS LL S A = valS LL S' A := by
  unfold valS sDegs
  have ht : twistSub LL S (lastIdx n) A = twistSub LL S' (lastIdx n) A := by
    unfold twistSub
    simp only [MvPolynomial.coe_eval₂Hom]
    apply MvPolynomial.eval₂_congr
    intro v c hv hc
    have hvL : v.1 ∈ L := (MvPolynomial.mem_supported.mp hA)
      ((MvPolynomial.mem_vars_iff_mem_support v).mpr ⟨c, MvPolynomial.mem_support_iff.mpr hc, hv⟩)
    by_cases hS : v.1 ∈ S
    · have hS' : v.1 ∈ S' := (h v.1 hvL).mp hS
      simp only [hS, hS', if_true]
    · have hS' : v.1 ∉ S' := fun h' => hS ((h v.1 hvL).mpr h')
      simp only [hS, hS', if_false]
  rw [ht]

theorem sl_le_g2mg (p n' : ℕ) [NeZero n'] (r K : ℕ) (F : Frames n' r) (deg : Fin n' → ℕ) (mS : ℕ) (Y : ℝ) (j x : ℤ) :
    (mS : ℤ) + sl p F deg Y (r + K) j x ≤ g2mg p n' r K F deg mS Y j x := by
  unfold sl g2mg Bo levDeg
  rw [show Y * (((r + K : ℕ) : ℝ)) ^ 2 = (((r + K : ℕ) : ℝ)) ^ 2 * Y from mul_comm _ _]
  have h1 := Int.self_le_toNat
    ⌊(deg (posOf n' (F.oldest j x)) : ℝ) / (p : ℝ) ^ F.dist j (F.oldest j x) / ((((r + K : ℕ) : ℝ)) ^ 2 * Y)⌋
  rw [Int.floor_toNat] at h1
  omega

section Geo

variable {n' r : ℕ} [NeZero n'] {Fr : Frames n' r} {L₁ N₁ : ℕ}

private theorem false_of_mem_between_adjacent_of_pairwise_lt (L : List ℤ) (hs : L.Pairwise (· < ·)) (a b : ℕ) (hb : b < L.length)
    (hab : b = a + 1) (y : ℤ) (hy : y ∈ L) (h1 : L[a]'(by omega) < y) (h2 : y < L[b]) : False := by
  obtain ⟨k, hk, rfl⟩ := List.mem_iff_getElem.1 hy
  have hp := List.pairwise_iff_getElem.1 hs
  rcases Nat.lt_or_ge k b with h | h
  · rcases Nat.lt_or_ge k a with h' | h'
    · exact lt_asymm h1 (hp k a hk (by omega) h')
    · have : k = a := by omega
      subst this
      exact lt_irrefl _ h1
  · rcases Nat.lt_or_ge b k with h' | h'
    · exact lt_asymm h2 (hp b k hb hk h')
    · have : k = b := by omega
      subst this
      exact lt_irrefl _ h2

private theorem false_of_mem_gt_last_of_pairwise_lt (L : List ℤ) (hs : L.Pairwise (· < ·)) (a : ℕ) (ha : a + 1 = L.length)
    (y : ℤ) (hy : y ∈ L) (h1 : L[a]'(by omega) < y) : False := by
  obtain ⟨k, hk, rfl⟩ := List.mem_iff_getElem.1 hy
  have hp := List.pairwise_iff_getElem.1 hs
  rcases Nat.lt_or_ge k a with h | h
  · exact lt_asymm h1 (hp k a hk (by omega) h)
  · have : k = a := by omega
    subst this
    exact lt_irrefl _ h1

theorem le_pred_iff (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (j : ℤ) (u : ℕ) (h1 : 1 ≤ u) (hu : u < (Fr.LLset j).card + r)
    (y : ℤ) (hy : y ∈ Fr.letters j) :
    y ≤ posU Fr (Fr.LLset j).card j (u - 1) ↔ y < posU Fr (Fr.LLset j).card j u := by
  classical
  obtain ⟨hJ, hper, hmono, hgap, hpos, hnot, hLL, hN1, hold⟩ := hV
  set N := (Fr.LLset j).card with hNdef
  set L := (Fr.LLset j).sort (· ≤ ·) with hLdef
  have hLlen : L.length = N := Finset.length_sort _
  have hsorted : L.Pairwise (· < ·) := (Finset.sortedLT_sort _).pairwise
  have hNr : r ≤ N := (hLL j).1
  have hLpos : ∀ k (hk : k < N), llPos Fr j k = L[k]'(by omega) := fun k hk => by
    unfold llPos
    rw [← hLdef, List.getD_eq_getElem]
  have hLmem : ∀ k (hk : k < N), L[k]'(by omega) ∈ Fr.LLset j := fun k hk =>
    (Finset.mem_sort _).1 (List.getElem_mem _)
  have hLLb : ∀ z ∈ Fr.LLset j, Fr.fr (j - 1) (r - 1) < z ∧ z < Fr.fr j 0 := fun z hz =>
    Finset.mem_Ioo.1 (Finset.mem_filter.1 hz).1
  have hinLL : ∀ z ∈ Fr.letters j, Fr.fr (j - 1) (r - 1) < z → z < Fr.fr j 0 → z ∈ Fr.LLset j :=
    fun z hz h1 h2 => Finset.mem_filter.2 ⟨Finset.mem_Ioo.2 ⟨h1, h2⟩, (Finset.mem_filter.1 hz).2⟩
  have key : posU Fr N j (u - 1) < posU Fr N j u ∧
      ∀ z ∈ Fr.letters j, posU Fr N j (u - 1) < z → z < posU Fr N j u → False := by
    by_cases hu1 : u < N
    · have hpu : posU Fr N j u = L[u]'(by omega) := by
        unfold posU
        rw [if_pos hu1, hLpos u hu1]
      have hpu1 : posU Fr N j (u - 1) = L[u - 1]'(by omega) := by
        unfold posU
        rw [if_pos (by omega), hLpos (u - 1) (by omega)]
      rw [hpu, hpu1]
      refine ⟨List.pairwise_iff_getElem.1 hsorted _ _ _ _ (by omega), fun z hz hz1 hz2 => ?_⟩
      have hzLL := hinLL z hz (lt_trans (hLLb _ (hLmem (u - 1) (by omega))).1 hz1)
        (lt_trans hz2 (hLLb _ (hLmem u hu1)).2)
      exact false_of_mem_between_adjacent_of_pairwise_lt L hsorted (u - 1) u (by omega) (by omega) z ((Finset.mem_sort _).2 hzLL) hz1 hz2
    · by_cases hu2 : u = N
      · have hpu : posU Fr N j u = Fr.fr j 0 := by
          unfold posU
          rw [if_neg hu1, show u - N = 0 by omega]
        have hpu1 : posU Fr N j (u - 1) = L[u - 1]'(by omega) := by
          unfold posU
          rw [if_pos (by omega), hLpos (u - 1) (by omega)]
        rw [hpu, hpu1]
        refine ⟨(hLLb _ (hLmem (u - 1) (by omega))).2, fun z hz hz1 hz2 => ?_⟩
        have hzLL := hinLL z hz (lt_trans (hLLb _ (hLmem (u - 1) (by omega))).1 hz1) hz2
        exact false_of_mem_gt_last_of_pairwise_lt L hsorted (u - 1) (by omega) z ((Finset.mem_sort _).2 hzLL) hz1
      · have hpu : posU Fr N j u = Fr.fr j (u - N) := by
          unfold posU
          rw [if_neg hu1]
        have hpu1 : posU Fr N j (u - 1) = Fr.fr j (u - 1 - N) := by
          unfold posU
          rw [if_neg (by omega)]
        rw [hpu, hpu1]
        have hi : u - 1 - N + 1 = u - N := by omega
        have hir : u - 1 - N + 1 < r := by omega
        refine ⟨by rw [← hi]; exact hmono j _ hir, fun z hz hz1 hz2 => ?_⟩
        exact hnot j (u - 1 - N) z hir hz1 (by rw [hi]; exact hz2) (Finset.mem_filter.1 hz).2
  constructor
  · intro hle
    exact lt_of_le_of_lt hle key.1
  · intro hlt
    by_contra hgt
    push_neg at hgt
    exact key.2 y hy hgt hlt

theorem oldest_pred (hV : Fr.Valid L₁ N₁) (hr : 1 ≤ r) (j : ℤ) (u : ℕ) (h1 : 1 ≤ u) (hu : u < (Fr.LLset j).card + r)
    (hodd : ¬ Even (posU Fr (Fr.LLset j).card j (u - 1))) :
    Fr.oldest j (posU Fr (Fr.LLset j).card j (u - 1)) = Fr.oldest j (posU Fr (Fr.LLset j).card j u) := by
  have hfilt : (Fr.letters j).filter (fun z => Even z ∧ z < posU Fr (Fr.LLset j).card j (u - 1)) =
      (Fr.letters j).filter (fun z => Even z ∧ z < posU Fr (Fr.LLset j).card j u) := by
    apply Finset.filter_congr
    intro z hz
    have hiff := le_pred_iff hV hr j u h1 hu z hz
    constructor
    · rintro ⟨he, hlt⟩
      exact ⟨he, hiff.1 hlt.le⟩
    · rintro ⟨he, hlt⟩
      refine ⟨he, lt_of_le_of_ne (hiff.2 hlt) ?_⟩
      rintro rfl
      exact hodd he
  simp only [Frames.oldest, hfilt]

end Geo

theorem restTh : RestTh := by
  intro p n' r K _ _ _ O _ Fr L₁ N₁ hV deg Y mS J _ nL hJ hnL j A G M hA hc ka hN u hu
  have hr : 1 ≤ r := NeZero.pos r
  unfold thStar
  simp only [hnL j] at hu hN ⊢
  obtain ⟨hxm, hxw⟩ := posU_mem' hV hr (segZ j) u hu
  obtain ⟨c1, c2, c3⟩ := hc _ hxm hxw
  intro k hk
  have hB : Bo p Fr deg (segZ j) (posU Fr (Fr.LLset (segZ j)).card (segZ j) u) / 2 ≤ (k : ℝ) := c3 k hk
  have s1 := sl_le_g2mg p n' r K Fr deg mS Y (segZ j) (posU Fr (Fr.LLset (segZ j)).card (segZ j) u)
  refine max_le hB (max_le ?_ ?_)
  · split_ifs with h1
    · obtain ⟨d1, d2⟩ := c1 h1
      have k1 := (hN u hu _).2 d1
      rw [hk] at d2
      have d3 := WithTop.coe_le_coe.1 d2
      have : ka j (u + 1) 0 + (mS : ℤ) + sl p Fr deg Y (r + K) (segZ j)
          (posU Fr (Fr.LLset (segZ j)).card (segZ j) u) ≤ k := by linarith
      exact_mod_cast this
    · exact hB
  · split_ifs with h2
    · obtain ⟨h21, h22⟩ := h2
      obtain ⟨hxm', hxw'⟩ := posU_mem' hV hr (segZ j) (u - 1) (by omega)
      obtain ⟨-, c2', -⟩ := hc _ hxm' hxw'
      obtain ⟨d1, d2⟩ := c2' h22
      have k1 := (hN (u - 1) (by omega) _).1 d1
      have ev : valS LZ {y | y ≤ posU Fr (Fr.LLset (segZ j)).card (segZ j) (u - 1)} A =
          valS LZ {y | y < posU Fr (Fr.LLset (segZ j)).card (segZ j) u} A :=
        valS_congr_supp LZ _ _ {y | y ∈ Fr.letters (segZ j)} A hA
          (fun y hy => le_pred_iff hV hr (segZ j) u h21 hu y hy)
      rw [ev, hk] at d2
      have d3 := WithTop.coe_le_coe.1 d2
      have eo := oldest_pred hV hr (segZ j) u h21 hu h22
      have eg : g2mg p n' r K Fr deg mS Y (segZ j) (posU Fr (Fr.LLset (segZ j)).card (segZ j) (u - 1)) =
          g2mg p n' r K Fr deg mS Y (segZ j) (posU Fr (Fr.LLset (segZ j)).card (segZ j) u) := by
        unfold g2mg
        rw [eo]
      rw [eg] at d3
      have : ka j (u - 1) 0 + (mS : ℤ) + sl p Fr deg Y (r + K) (segZ j)
          (posU Fr (Fr.LLset (segZ j)).card (segZ j) u) ≤ k := by linarith
      exact_mod_cast this
    · exact hB

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ValSCongrSupp =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PmatDetMem =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PmatDetMem", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PlaneCoeffOneTTens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.G.WittFrameLocaliserOrders

alias det_mem_sub := _root_.Formalism.MainNotions.G.WittFrameLocaliserOrders.bs_det_mem

theorem X_mem_supp {R σ : Type*} [CommRing R] (s : Set σ) (i : σ) (hi : i ∈ s) :
    (X i : MvPolynomial σ R) ∈ supported R s := by
  rw [supported_eq_adjoin_X]
  exact Algebra.subset_adjoin (Set.mem_image_of_mem _ hi)

theorem pmat_det_mem (R : Type) [CommRing R] {n' r k : ℕ} (hrk : r ≤ k) (A : Fin r → Fin n') (P : Fin r → ℕ)
    (hA : ∀ l, Even (A l).val) :
    (pmat R hrk A P).det ∈ supported R {v : TV n' k | v.2.val < r ∧ Even v.1.val} := by
  apply det_mem_sub
  intro l i
  unfold pmat
  rw [Matrix.of_apply]
  exact Subalgebra.pow_mem _ (X_mem_supp {v : TV n' k | v.2.val < r ∧ Even v.1.val} (A l, Fin.castLE hrk i)
    (show (Fin.castLE hrk i).val < r ∧ Even (A l).val from ⟨i.isLt, hA l⟩)) _

theorem restSP : RestSP := by
  intro p n' r k _ R _ F hrk c' Q L₁ N₁ hV hn hr ga hga v hv
  have hfr : ∀ (j : ℤ) (l : Fin r), Even (posOf n' (F.fr j l.val)).val := fun j l =>
    (posOf_even hn _).2 (hV.2.2.2.2.1 j l.val l.isLt).2
  have hAr : ∀ (s : ℤ) (l : Fin r), Even (posOf n' (Arow F s l.val)).val := fun s l =>
    (posOf_even hn _).2 (window_holds_even_tops n' r F L₁ N₁ hV hn hr s l.val l.isLt).1
  have hmem : SPR R p F hrk c' Q ∈ supported R {v : TV n' k | v.2.val < r ∧ Even v.1.val} := by
    unfold SPR
    refine Subalgebra.mul_mem _ (Subalgebra.mul_mem _ (Subalgebra.pow_mem _ (Subalgebra.prod_mem _ fun j _ => ?_) _)
      (Subalgebra.prod_mem _ fun j _ => ?_)) (Subalgebra.prod_mem _ fun s _ => ?_)
    · exact Subalgebra.pow_mem _ (pmat_det_mem R hrk _ _ (hfr j)) _
    · exact Subalgebra.pow_mem _ (pmat_det_mem R hrk _ _ (hfr j)) _
    · exact Subalgebra.pow_mem _ (pmat_det_mem R hrk _ _ (hAr _)) _
  have hvars : v ∈ (SPR R p F hrk c' Q).vars :=
    (mem_vars_iff_mem_support v).2 ⟨ga, hga, Finsupp.mem_support_iff.2 hv⟩
  exact (mem_supported.1 hmem) (Finset.mem_coe.2 hvars)

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PmatDetMem =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.SupportedOfSupport =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.SupportedOfSupport", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestPlOf\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MemSupportSumMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TensZeroRight\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.ValuationBoundDetPowerFactor\npublic import Formalism.SharpRestriction.GrowthBounds.ValuationLowestDegreeMapFractionField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.TwiceValuationFactorialProduct\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.Proposition5Numerics Formalism.MainNotions.TraceSpectra
open Formalism.MainNotions.TestSideWords.TwistedFiltration.G3 Formalism.MainNotions.G.GLWeightTheory

namespace Lk

theorem homComp_eq {ι : Type} {s : ℕ} {Kf : Type} [Field Kf] (d : ι → ℕ) (H : MvPolynomial (ι × Fin s) Kf) :
    homComp d H = compD d H := rfl

theorem compD_support {ι : Type} {s : ℕ} {Kf : Type} [Field Kf] (d : ι → ℕ) (H : MvPolynomial (ι × Fin s) Kf)
    (mo : ι × Fin s →₀ ℕ) (hmo : mo ∈ (compD d H).support) : mo ∈ H.support ∧ ∀ x, multideg mo x = d x := by
  unfold compD at hmo
  obtain ⟨a, ha, hmo'⟩ := Finset.mem_biUnion.1 (support_sum hmo)
  have := support_monomial_subset hmo'
  rw [Finset.mem_singleton] at this
  subst this
  exact ⟨(Finset.mem_filter.1 ha).1, (Finset.mem_filter.1 ha).2⟩

theorem compD_sum {ι κ : Type} {s : ℕ} {Kf : Type} [Field Kf] (d : ι → ℕ) (T : Finset κ)
    (f : κ → MvPolynomial (ι × Fin s) Kf) : compD d (∑ i ∈ T, f i) = ∑ i ∈ T, compD d (f i) :=
  map_sum (AddMonoidHom.mk ⟨compD d, T5.compD_zero d⟩ (T5.compD_add d)) f T

theorem compD_eq_zero {ι : Type} {s : ℕ} {Kf : Type} [Field Kf] (d : ι → ℕ) (H : MvPolynomial (ι × Fin s) Kf)
    (h : ∀ mo ∈ H.support, ∃ x, multideg mo x ≠ d x) : compD d H = 0 := by
  unfold compD
  refine Finset.sum_eq_zero fun mo hmo => ?_
  obtain ⟨x, hx⟩ := h mo (Finset.mem_filter.1 hmo).1
  exact absurd ((Finset.mem_filter.1 hmo).2 x) hx

theorem supported_of_support {τ R : Type*} [CommSemiring R] {s : Set τ} {P Q : MvPolynomial τ R}
    (h : P.support ⊆ Q.support) (hQ : Q ∈ supported R s) : P ∈ supported R s := by
  rw [mem_supported] at hQ ⊢
  intro v hv
  obtain ⟨d, hd, hvd⟩ := (mem_vars_iff_mem_support v).1 (Finset.mem_coe.1 hv)
  exact hQ (Finset.mem_coe.2 ((mem_vars_iff_mem_support v).2 ⟨d, h hd, hvd⟩))

theorem geZ_sum {Kf : Type} [Field Kf] {ι κ : Type} {n : ℕ} [NeZero n] (LL : Letters ι) (S : Set ι) (T : Finset κ)
    (f : κ → MvPolynomial (ι × Fin n) Kf) (t : ℝ) (h : ∀ i ∈ T, geZ (valS LL S (f i)) t) :
    geZ (valS LL S (∑ i ∈ T, f i)) t := by
  induction T using Finset.induction_on with
  | empty =>
    rw [Finset.sum_empty, valS_zero_eq_top]
    exact geZ_top _
  | insert a s ha ih =>
    rw [Finset.sum_insert ha]
    exact geZ_mono (mul_valS_add _ _ _ _) (geZ_min (h a (Finset.mem_insert_self a s))
      (ih fun i hi => h i (Finset.mem_insert_of_mem hi)))

theorem le_of_geZ {x : WithTop ℤ} {t : ℝ} (h : geZ x t) : ((⌈t⌉ : ℤ) : WithTop ℤ) ≤ x := by
  induction x using WithTop.recTopCoe with
  | top => exact le_top
  | coe k => exact WithTop.coe_le_coe.2 (Int.ceil_le.2 (h k rfl))

theorem geZ_coe {k : ℤ} {t : ℝ} (h : t ≤ (k : ℝ)) : geZ ((k : ℤ) : WithTop ℤ) t := by
  intro k' hk'
  have : k = k' := WithTop.coe_injective hk'
  rw [← this]
  exact h

end Lk

theorem restLink_of (hNN : ValNN) (hHD : HomDec) (hLL : LinkL) (hDg : LkDeg) (hVr : LkVars) (hTr : RestTr)
    (hW : ∀ {n' r : ℕ} (Fr : Frames n' r) (jz : ℤ) (μ : ℤ × Fin r →₀ ℕ),
      wDeg (wSet Fr jz) μ ≤ ∑ m' : Fin r, multideg μ (Fr.fr (jz - 1) (r - 1 - m'.val))) : RestLink := by
  intro p _ n' r K m _ _ _ O _ _ _ _ hk Fr L₁ N₁ hV hn J _ Dt hT hJ A hA l hl ga hga t ht dPl j mm hm
  obtain ⟨hEq, hcov⟩ := hTr p n' r K m O hk Fr L₁ N₁ hV hn J Dt hT A hA l hl ga hga
  have hp : 0 < p := (Fact.out : p.Prime).pos
  set μ0 := plMon Fr p hk Dt.nL (l.mapDomain (castV hk) + ga) with hμ0
  set u := Dt.nL j + (r - 1 - mm.val) with hu
  have hur : u < Dt.nL j + r := by omega
  set Ab : ZMod J → MvPolynomial (ℤ × Fin r) (KK O) :=
    fun j' => MvPolynomial.map (algebraMap O (KK O)) (A (segZ j')) with hAb
  set Rst : MvPolynomial (TL J Dt.nL r × Fin r) (KK O) :=
    monomial μ0 1 * ∏ j' ∈ Finset.univ.erase j, PhiJ Fr Dt j' (Ab j') with hRst
  have e1 : levP Fr p hk Dt.nL (zPl p O hk Fr A l ga) = Rst * PhiJ Fr Dt j (Ab j) := by
    rw [hEq, hRst]
    have : ∏ j' : ZMod J, Dt.ph (chi Fr Dt.nL (KK O) j' (MvPolynomial.map (algebraMap O (KK O)) (A (segZ j')))) =
        PhiJ Fr Dt j (Ab j) * ∏ j' ∈ Finset.univ.erase j, PhiJ Fr Dt j' (Ab j') :=
      (Finset.mul_prod_erase Finset.univ (fun j' => PhiJ Fr Dt j' (Ab j')) (Finset.mem_univ j)).symm
    rw [this]
    ring

  have hR0 : 0 ≤ valS Dt.trueLet (Dt.TSet j mm) Rst := by
    apply hNN
    intro v hv hvT
    rcases Finset.mem_union.1 (vars_mul _ _ hv) with h1 | h1
    · rw [vars_monomial one_ne_zero] at h1
      have h2 : μ0 v ≠ 0 := Finsupp.mem_support_iff.1 h1
      obtain ⟨⟨j'', s⟩, a⟩ := v
      cases s with
      | inl ll =>
        by_contra hs
        have hs' : Dt.sgn j'' ll = false := by
          have : Dt.trueLet.vec ⟨j'', Sum.inl ll⟩ = Dt.sgn j'' ll := rfl
          rw [this] at hs
          simpa using hs
        exact h2 (hcov j'' ll a hs')
      | inr m' => rfl
    · obtain ⟨j', hj', h2⟩ := Finset.mem_biUnion.1 (vars_prod _ h1)
      have hne : j' ≠ j := (Finset.mem_erase.1 hj').1
      rcases hVr p n' r O Fr J Dt j' (Ab j') v h2 with ⟨ll, h3⟩ | ⟨j'', m', h3⟩
      · exfalso
        rw [h3] at hvT
        rcases hvT with ⟨l', h4⟩ | ⟨m', _, h4⟩
        · exact hne (congrArg Sigma.fst h4)
        · exact hne (congrArg Sigma.fst h4)
      · rw [h3]
        rfl

  obtain ⟨Dl, hDl⟩ := hHD (KK O) ℤ r (Ab j)
  have e2 : compD dPl (Rst * PhiJ Fr Dt j (Ab j)) =
      ∑ δ ∈ Dl, compD dPl (Rst * PhiJ Fr Dt j (compD δ (Ab j))) := by
    conv_lhs => rw [hDl]

    rw [map_sum, Finset.mul_sum, Lk.compD_sum]
    rfl
  rw [e1, e2]
  refine Lk.geZ_sum _ _ _ _ _ fun δ _ => ?_
  set F := compD δ (Ab j) with hF
  have hjv : j.val < Fr.J := by
    rw [← hT.1]
    exact ZMod.val_lt j
  have hAbS : Ab j ∈ supported (KK O) {v : ℤ × Fin r | v.1 ∈ Fr.letters (segZ j)} := by
    have h1 := hA j.val hjv
    rw [mem_supported] at h1 ⊢
    exact fun v hv => h1 (Finset.mem_coe.2 (vars_map (A (segZ j)) (algebraMap O (KK O)) (Finset.mem_coe.1 hv)))
  have hFS : F ∈ supported (KK O) {v : ℤ × Fin r | v.1 ∈ Fr.letters (segZ j)} :=
    Lk.supported_of_support (fun mo hmo => (Lk.compD_support δ (Ab j) mo hmo).1) hAbS
  have hFd : ∀ μ ∈ F.support, ∀ y, multideg μ y = δ y := fun μ hμ => (Lk.compD_support δ (Ab j) μ hμ).2
  have hdeg := hDg p n' r O Fr L₁ N₁ hV J Dt hT hJ j F hFS δ hFd
  by_cases hbig : ∃ m' : Fin r, dPl ⟨j - 1, Sum.inr m'⟩ <
      multideg μ0 ⟨j - 1, Sum.inr m'⟩ + Dt.P (j - 1) m' * δ (Fr.fr (segZ j - 1) (r - 1 - m'.val))
  ·
    obtain ⟨m', hm'⟩ := hbig
    rw [Lk.compD_eq_zero, valS_zero_eq_top]
    · exact geZ_top _
    · intro mo hmo
      refine ⟨⟨j - 1, Sum.inr m'⟩, ?_⟩
      obtain ⟨a, ha, b, hb, rfl⟩ := Finset.mem_add.1 (support_mul _ _ hmo)
      obtain ⟨a0, ha0, c, _, rfl⟩ := Finset.mem_add.1 (support_mul _ _ ha)
      have h0 := support_monomial_subset ha0
      rw [Finset.mem_singleton] at h0
      subst h0
      rw [_root_.Formalism.MainNotions.G.Joints.StandardMonomialSpace.hom_multideg_add, _root_.Formalism.MainNotions.G.Joints.StandardMonomialSpace.hom_multideg_add, hdeg b hb m']
      omega
  · push Not at hbig
    set dw : ℕ := ∑ m' : Fin r, δ (Fr.fr (segZ j - 1) (r - 1 - m'.val)) with hdw
    have hwd : ∀ μ ∈ F.support, wDeg (wSet Fr (segZ j)) μ ≤ dw := by
      intro μ hμ
      refine le_trans (hW Fr (segZ j) μ) (le_of_eq ?_)
      exact Finset.sum_congr rfl fun m' _ => hFd μ hμ _
    have hdwB : (dw : ℝ) ≤ dwB Fr hk Dt dPl (l.mapDomain (castV hk) + ga) j := by
      unfold dwB
      rw [hdw]
      push_cast
      refine Finset.sum_le_sum fun m' _ => ?_
      have hP : (0 : ℝ) < (Dt.P (j - 1) m' : ℝ) := by
        have : 0 < Dt.P (j - 1) m' := pow_pos hp _
        exact_mod_cast this
      rw [le_div_iff₀ hP]
      have h1 := hbig m'
      have h2 : δ (Fr.fr (segZ j - 1) (r - 1 - m'.val)) * Dt.P (j - 1) m' ≤
          dPl ⟨j - 1, Sum.inr m'⟩ - multideg μ0 ⟨j - 1, Sum.inr m'⟩ := by
        rw [mul_comm]
        omega
      exact_mod_cast h2
    have h1 : ((⌈t j u⌉ : ℤ) : WithTop ℤ) ≤ valS LZ {y | y < posU Fr (Dt.nL j) (segZ j) u} F := by
      refine le_trans (Lk.le_of_geZ (ht j u hur)) ?_
      have h2 := (valComp (KK O) ℤ r LZ {y | y < posU Fr (Dt.nL j) (segZ j) u} (Ab j) δ).1
      rw [Lk.homComp_eq] at h2
      refine le_trans (le_of_eq ?_) h2
      exact (Formalism.MainNotions.G.Joints.StandardMonomialSpace.valS_map (algebraMap O (KK O)) (IsFractionRing.injective O (KK O)) LZ _ _).symm
    have h3 := hLL p n' r O Fr L₁ N₁ hV hn J Dt hT hJ j mm hm F hFS dw hwd ⌈t j u⌉ h1
    have h4 : ((⌈t j u⌉ - dw : ℤ) : WithTop ℤ) ≤
        valS Dt.trueLet (Dt.TSet j mm) (compD dPl (Rst * PhiJ Fr Dt j F)) := by
      have h5 := (valComp (KK O) _ r Dt.trueLet (Dt.TSet j mm) (Rst * PhiJ Fr Dt j F) dPl).1
      rw [Lk.homComp_eq] at h5
      refine le_trans ?_ h5
      rw [mul_valS_mul]
      calc ((⌈t j u⌉ - dw : ℤ) : WithTop ℤ) = 0 + ((⌈t j u⌉ - dw : ℤ) : WithTop ℤ) := (zero_add _).symm
        _ ≤ _ := add_le_add hR0 h3
    refine geZ_mono h4 (Lk.geZ_coe ?_)
    have := Int.le_ceil (t j u)
    push_cast
    linarith

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.SupportedOfSupport =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.SumFiberMultideg =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.SumFiberMultideg", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestPlOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.MainNotions.TestSideWords.TwistedFiltration.G3

theorem sum_fiber_multideg {r : ℕ} (μ : ℤ × Fin r →₀ ℕ) (y : ℤ) :
    ∑ v ∈ μ.support, (if v.1 = y then μ v else 0) = multideg μ y := by
  unfold multideg
  rw [← Finset.sum_filter]
  have h1 : ∑ c : Fin r, μ (y, c) = ∑ v ∈ (Finset.univ.image fun c : Fin r => (y, c)), μ v := by
    rw [Finset.sum_image]
    intro a _ b _ h
    exact (Prod.mk.inj h).2
  rw [h1]
  apply Finset.sum_subset
  · intro v hv
    rw [Finset.mem_filter] at hv
    rw [Finset.mem_image]
    exact ⟨v.2, Finset.mem_univ _, by rw [← hv.2]⟩
  · intro v hv hnot
    rw [Finset.mem_image] at hv
    obtain ⟨c, -, rfl⟩ := hv
    by_contra h
    exact hnot (Finset.mem_filter.2 ⟨Finsupp.mem_support_iff.2 h, rfl⟩)

theorem lkW {n' r : ℕ} (Fr : Frames n' r) (jz : ℤ) (μ : ℤ × Fin r →₀ ℕ) :
    wDeg (wSet Fr jz) μ ≤ ∑ m' : Fin r, multideg μ (Fr.fr (jz - 1) (r - 1 - m'.val)) := by
  unfold wDeg
  calc ∑ v ∈ μ.support, (if v.1 ∈ wSet Fr jz then μ v else 0)
      ≤ ∑ v ∈ μ.support, ∑ m' : Fin r, (if v.1 = Fr.fr (jz - 1) (r - 1 - m'.val) then μ v else 0) := by
        refine Finset.sum_le_sum fun v _ => ?_
        split_ifs with h
        · obtain ⟨m, hm⟩ := h
          calc μ v = (if v.1 = Fr.fr (jz - 1) (r - 1 - m.val) then μ v else 0) := by rw [if_pos hm]
            _ ≤ _ := Finset.single_le_sum
              (f := fun m' : Fin r => if v.1 = Fr.fr (jz - 1) (r - 1 - m'.val) then μ v else 0)
              (fun _ _ => Nat.zero_le _) (Finset.mem_univ m)
        · exact Nat.zero_le _
    _ = ∑ m' : Fin r, ∑ v ∈ μ.support, (if v.1 = Fr.fr (jz - 1) (r - 1 - m'.val) then μ v else 0) := Finset.sum_comm
    _ = ∑ m' : Fin r, multideg μ (Fr.fr (jz - 1) (r - 1 - m'.val)) :=
        Finset.sum_congr rfl fun m' _ => sum_fiber_multideg μ _

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.SumFiberMultideg =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.MemTSetIff =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.MemTSetIff", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestPlOf\npublic import Formalism.SharpRestriction.GrowthBounds.AevalValuation.ValGen\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.PosULeIff\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ProdRangeZmod\nimport Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.FrRevInj\nimport Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.LowestWeightNonposOffSet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.Proposition5Numerics Formalism.MainNotions.TraceSpectra
  Formalism.MainNotions.NormalSetCounting
open Formalism.MainNotions.TestSideWords.TwistedFiltration.G3 Formalism.MainNotions.TestSideWords.TwistedFiltration.G1

theorem valS_off {R : Type} [CommRing R] {ι : Type} {n : ℕ} [NeZero n] (LL : Letters ι) (S : Set ι)
    (F : MvPolynomial (ι × Fin n) R) (h : ∀ v ∈ F.vars, v.1 ∉ S) : 0 ≤ valS LL S F := by
  have e : valS LL S F = valS LL ∅ F := by
    unfold valS sDegs
    rw [twistSub_congr LL LL S ∅ _ F fun v hv =>
      ⟨⟨fun h' => absurd h' (h v hv), fun h' => absurd h' (Set.notMem_empty _)⟩, rfl⟩]
  rw [e]
  unfold valS
  refine Finset.le_inf fun k hk => ?_
  have := Formalism.MainNotions.G.Joints.StandardMonomialSpace.sDegs_empty_subset LL (lastIdx n) F k hk
  rw [Set.mem_singleton_iff] at this
  rw [this]
  rfl

section Phi

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {n' r : ℕ} [NeZero n'] [NeZero r]
  {Fr : Frames n' r} {L₁ N₁ : ℕ} {J : ℕ} [NeZero J] (Dt : SignedChainData p O r J)

theorem PhiJ_nonW (hV : Fr.Valid L₁ N₁) (hnL : ∀ j, Dt.nL j = (Fr.LLset (segZ j)).card) (j : ZMod J) (y : ℤ)
    (hy : y ∈ Fr.letters (segZ j)) (hw : y ∉ wSet Fr (segZ j)) :
    ∃ s, posTL Fr (⟨j, s⟩ : TL J Dt.nL r) = y ∧ ∀ a : Fin r, PhiJ Fr Dt j (X (y, a)) = X (⟨j, s⟩, a) := by
  rcases restSpec n' r Fr L₁ N₁ hV J Dt.nL hnL j y hy with ⟨l, hyl, hml⟩ | ⟨m, hym, hml⟩ | ⟨m, hym, _⟩
  · exact ⟨Sum.inl l, hyl.symm, fun a => by
      simp only [PhiJ, AlgHom.comp_apply, chi, aeval_X, if_pos hy, hml, SignedChainData.ph]⟩
  · exact ⟨Sum.inr m, hym.symm, fun a => by
      simp only [PhiJ, AlgHom.comp_apply, chi, aeval_X, if_pos hy, hml, SignedChainData.ph]⟩
  · exact absurd ⟨m, hym⟩ hw

theorem PhiJ_w (hV : Fr.Valid L₁ N₁) (hnL : ∀ j, Dt.nL j = (Fr.LLset (segZ j)).card) (j : ZMod J) (y : ℤ)
    (hw : y ∈ wSet Fr (segZ j)) (a : Fin r) :
    PhiJ Fr Dt j (X (y, a)) ∈ supported (KK O) {u : TL J Dt.nL r × Fin r | u.1.1 = j - 1} := by
  obtain ⟨m, rfl⟩ := hw
  by_cases hy : Fr.fr (segZ j - 1) (r - 1 - m.val) ∈ Fr.letters (segZ j)
  · have : PhiJ Fr Dt j (X (Fr.fr (segZ j - 1) (r - 1 - m.val), a)) = X (⟨j - 1, Sum.inr m⟩, a) ^ Dt.P (j - 1) m := by
      simp only [PhiJ, AlgHom.comp_apply, chi, aeval_X, if_pos hy, mlOf_wc hV hnL j m, SignedChainData.ph]
    rw [this]
    refine Subalgebra.pow_mem _ ?_ _
    rw [X_mem_supported, Set.mem_ofPred_eq]
  · have : PhiJ Fr Dt j (X (Fr.fr (segZ j - 1) (r - 1 - m.val), a)) = 0 := by
      simp only [PhiJ, AlgHom.comp_apply, chi, aeval_X, if_neg hy, map_zero]
    rw [this]
    exact Subalgebra.zero_mem _

theorem mem_TSet_iff (j : ZMod J) (mm : Fin r) (s : Fin (Dt.nL j) ⊕ Fin r) :
    (⟨j, s⟩ : TL J Dt.nL r) ∈ Dt.TSet j mm ↔ (⟨j, s⟩ : TL J Dt.nL r) ∈ NSet Dt.nL j (Dt.nL j + (r - 1 - mm.val)) := by
  rcases s with l | m
  · rw [mem_NSet_inl]
    constructor
    · intro _
      have := l.isLt
      omega
    · intro _
      exact Or.inl ⟨l, rfl⟩
  · rw [mem_NSet_inr]
    have h1 := m.isLt
    have h2 := mm.isLt
    constructor
    · rintro (⟨l, h⟩ | ⟨m', hm, h⟩)
      · cases h
      · cases h
        omega
    · intro h
      exact Or.inr ⟨m, by omega, rfl⟩

theorem TSet_fst {j : ZMod J} {mm : Fin r} {t : TL J Dt.nL r} (h : t ∈ Dt.TSet j mm) : t.1 = j := by
  rcases h with ⟨l, rfl⟩ | ⟨m, _, rfl⟩ <;> rfl

end Phi

theorem linkL : LinkL := by
  intro p _ n' r _ _ O _ _ _ Fr L₁ N₁ hV hn J _ Dt hT hJ2 j mm hmm F hF dw hdeg th hth
  obtain ⟨hJ, hnL, hsgn, -, -, -⟩ := hT
  have hr : 1 ≤ r := NeZero.one_le
  have hmm' := mm.isLt
  set u := Dt.nL j + (r - 1 - mm.val) with hu
  have hul : u < Dt.nL j + r := by omega
  set w := wSet Fr (segZ j) with hwdef
  set Sz : Set ℤ := {y | y < posU Fr (Dt.nL j) (segZ j) u} with hSz
  have hwS : w ⊆ Sz := by
    rintro y ⟨m, rfl⟩
    have := m.isLt
    exact w_lt_posU' hV hr (segZ j) (Dt.nL j) (hnL j) _ u (by omega) hul
  have hun : (Sz \ w) ∪ w = Sz := Set.sdiff_union_of_subset hwS
  have hwv : ∀ l ∈ w, LZ.vec l = true := by
    rintro y ⟨m, rfl⟩
    have := m.isLt
    exact decide_eq_true (hV.2.2.2.2.1 _ _ (by omega)).2
  have hne : j - 1 ≠ j := by
    have : Fact (1 < J) := ⟨by omega⟩
    intro h
    exact one_ne_zero (sub_eq_self.1 h)
  have hPhi : ∀ H, PhiJ Fr Dt j H = aeval (fun v => PhiJ Fr Dt j (X v)) H := by
    intro H
    exact congrArg (fun φ : _ →ₐ[KK O] _ => φ H) (aeval_unique (PhiJ Fr Dt j))
  have hsum := sum_wCoeff w F
  have e := congrArg (PhiJ Fr Dt j) hsum

  rw [map_sum] at e
  rw [e]
  refine valS_sum_ge _ _ _ _ _ fun M hM => ?_
  rw [map_mul]
  simp only [Finset.mem_image] at hM
  obtain ⟨μ0, hμ0, rfl⟩ := hM

  have h0 : 0 ≤ valS Dt.trueLet (Dt.TSet j mm) (PhiJ Fr Dt j (monomial (μ0.filter (fun v => v.1 ∈ w)) 1)) := by
    have hs : PhiJ Fr Dt j (monomial (μ0.filter (fun v => v.1 ∈ w)) 1) ∈
        supported (KK O) {u : TL J Dt.nL r × Fin r | u.1.1 = j - 1} := by
      rw [hPhi, aeval_monomial, map_one, one_mul]
      refine Subalgebra.prod_mem _ fun v hv => Subalgebra.pow_mem _ ?_ _
      have hv' := (Finsupp.mem_support_iff.1 hv)
      rw [Finsupp.filter_apply] at hv'
      have hvw : v.1 ∈ w := by
        by_contra hc
        rw [if_neg hc] at hv'
        exact hv' rfl
      exact PhiJ_w Dt hV hnL j v.1 hvw v.2
    refine valS_off _ _ _ fun v hv hvT => ?_
    have h1 : v.1.1 = j - 1 := (mem_supported.1 hs) (Finset.mem_coe.2 hv)
    exact hne (h1.symm.trans (TSet_fst Dt hvT))

  have h1 := valS_wCoeff_ge LZ (Sz \ w) w hwv Set.disjoint_sdiff_left F dw hdeg th (by rw [hun]; exact hth)
    (μ0.filter (fun v => v.1 ∈ w))
  have hsup : wCoeff w (μ0.filter (fun v => v.1 ∈ w)) F ∈
      supported (KK O) {v : ℤ × Fin r | v.1 ∈ {y | y ∈ Fr.letters (segZ j) ∧ y ∉ w}} := by
    rw [mem_supported]
    intro v hv
    obtain ⟨ν, hν, hvν⟩ := (mem_vars_iff_mem_support v).1 (Finset.mem_coe.1 hv)
    have hc := mem_support_iff.1 hν
    rw [coeff_wCoeff] at hc
    have hv' := Finsupp.mem_support_iff.1 hvν
    split_ifs at hc with hcond
    · have hvw : v.1 ∉ w := by
        intro hvw
        have h5 : (ν.filter (fun v => v.1 ∈ w)) v = 0 := by rw [hcond.1]; rfl
        rw [Finsupp.filter_apply, if_pos hvw] at h5
        exact hv' h5
      have hvF : v ∈ F.vars := (mem_vars_iff_mem_support v).2 ⟨_, mem_support_iff.2 hc, by
        rw [Finsupp.mem_support_iff, Finsupp.add_apply]; omega⟩
      exact ⟨(mem_supported.1 hF) (Finset.mem_coe.2 hvF), hvw⟩
    · exact absurd rfl hc
  have h2 : valS LZ (Sz \ w) (wCoeff w (μ0.filter (fun v => v.1 ∈ w)) F) ≤
      valS Dt.trueLet (Dt.TSet j mm) (PhiJ Fr Dt j (wCoeff w (μ0.filter (fun v => v.1 ∈ w)) F)) := by
    rw [hPhi]
    refine valAeval (KK O) ℤ (TL J Dt.nL r) r LZ Dt.trueLet (Sz \ w) {y | y ∈ Fr.letters (segZ j) ∧ y ∉ w}
      (Dt.TSet j mm) (gT Fr Dt.nL) _ _ hsup ?_ ?_
    · rintro ⟨y, a⟩ ⟨hy, hyw⟩ hyS
      obtain ⟨s, hs, hX⟩ := PhiJ_nonW Dt hV hnL j y hy hyw
      have hg : gT Fr Dt.nL y = ⟨j, s⟩ := by rw [← hs, gT_posTL hV hnL]
      refine ⟨by simp only [hg]; exact hX a, ?_, ?_⟩
      · simp only [hg]
        rw [mem_TSet_iff, NSet_lt hV hnL j u hul s, hs]
        exact hyS.1
      · simp only [hg]
        rw [trueLet_vec Dt hV hsgn, hs]
    · rintro ⟨y, a⟩ ⟨hy, hyw⟩ hyS
      obtain ⟨s, hs, hX⟩ := PhiJ_nonW Dt hV hnL j y hy hyw
      simp only [hX a]
      refine X_mem_supported.2 ?_
      show (⟨j, s⟩ : TL J Dt.nL r) ∉ Dt.TSet j mm
      rw [mem_TSet_iff, NSet_lt hV hnL j u hul s, hs]
      intro hlt
      exact hyS ⟨hlt, hyw⟩
  have h3 := flt_valS_mul_ge Dt.trueLet (Dt.TSet j mm) (PhiJ Fr Dt j (monomial (μ0.filter (fun v => v.1 ∈ w)) 1))
    (PhiJ Fr Dt j (wCoeff w (μ0.filter (fun v => v.1 ∈ w)) F))
  refine le_trans ?_ h3
  calc ((th - dw : ℤ) : WithTop ℤ) = 0 + ((th - dw : ℤ) : WithTop ℤ) := (zero_add _).symm
    _ ≤ _ := add_le_add h0 (le_trans h1 h2)

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.MemTSetIff =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.MultidegSingle =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.MultidegSingle", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestPlOf\npublic import Formalism.SharpRestriction.GrowthBounds.PolynomialLevels.FrRevInj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.Proposition5Numerics Formalism.MainNotions.TraceSpectra
open Formalism.MainNotions.G.WittFrameLocaliserOrders

namespace LkD

section MD

variable {ι : Type*} {n : ℕ}

theorem multideg_add (a b : ι × Fin n →₀ ℕ) (x : ι) : multideg (a + b) x = multideg a x + multideg b x := by
  simp [multideg, Finset.sum_add_distrib]

theorem multideg_zero (x : ι) : multideg (0 : ι × Fin n →₀ ℕ) x = 0 := by
  simp [multideg]

theorem multideg_smul (k : ℕ) (a : ι × Fin n →₀ ℕ) (x : ι) : multideg (k • a) x = k * multideg a x := by
  simp [multideg, Finset.mul_sum]

theorem multideg_single (v : ι × Fin n) (k : ℕ) (x : ι) :
    multideg (Finsupp.single v k) x = if v.1 = x then k else 0 := by
  unfold multideg
  by_cases h : v.1 = x
  · rw [if_pos h, Finset.sum_eq_single v.2]
    · have hv : v = (x, v.2) := by
        obtain ⟨v1, v2⟩ := v
        simp only at h
        rw [h]
      rw [Finsupp.single_apply, if_pos hv]
    · intro c _ hc
      rw [Finsupp.single_apply, if_neg]
      intro e
      exact hc (congrArg Prod.snd e).symm
    · intro h'
      exact absurd (Finset.mem_univ _) h'
  · rw [if_neg h]
    apply Finset.sum_eq_zero
    intro c _
    rw [Finsupp.single_apply, if_neg]
    intro e
    exact h (congrArg Prod.fst e)

end MD

theorem ne_pred {J : ℕ} (hJ : 2 ≤ J) (j : ZMod J) : j ≠ j - 1 := by
  intro h
  haveI : Fact (1 < J) := ⟨by omega⟩
  have h1 : (1 : ZMod J) = 0 := by linear_combination h
  exact one_ne_zero h1

section Phi

variable {p : ℕ} {n' r : ℕ} [NeZero n'] [NeZero r] {O : Type} [CommRing O] [IsDomain O]
  [IsDiscreteValuationRing O] {Fr : Frames n' r} {L₁ N₁ : ℕ} {J : ℕ} [NeZero J] (Dt : SignedChainData p O r J)

theorem ph_ll (j : ZMod J) (l : Fin (Dt.nL j)) (a : Fin r) :
    Dt.ph (X (ML.ll j l, a)) = monomial (Finsupp.single ((⟨j, Sum.inl l⟩ : TL J Dt.nL r), a) 1) 1 := by
  rw [SignedChainData.ph, aeval_X]
  rfl

theorem ph_lab (j : ZMod J) (m : Fin r) (a : Fin r) :
    Dt.ph (X (ML.lab j m, a)) = monomial (Finsupp.single ((⟨j, Sum.inr m⟩ : TL J Dt.nL r), a) 1) 1 := by
  rw [SignedChainData.ph, aeval_X]
  rfl

theorem ph_wc (j : ZMod J) (m : Fin r) (a : Fin r) :
    Dt.ph (X (ML.wc j m, a)) = monomial (Finsupp.single ((⟨j, Sum.inr m⟩ : TL J Dt.nL r), a) (Dt.P j m)) 1 := by
  rw [SignedChainData.ph, aeval_X]
  exact X_pow_eq_monomial

theorem PhiJ_X (j : ZMod J) (v : ℤ × Fin r) (hv : v.1 ∈ Fr.letters (segZ j)) :
    PhiJ Fr Dt j (X v) = Dt.ph (X (mlOf Fr Dt.nL j v.1, v.2)) := by
  rw [PhiJ, AlgHom.comp_apply, chi, aeval_X, if_pos hv]

theorem PhiJ_X_mon (hV : Fr.Valid L₁ N₁) (hnL : ∀ j, Dt.nL j = (Fr.LLset (segZ j)).card) (hJ : 2 ≤ J) (j : ZMod J)
    (v : ℤ × Fin r) (hv : v.1 ∈ Fr.letters (segZ j)) :
    ∃ e : TL J Dt.nL r × Fin r →₀ ℕ, PhiJ Fr Dt j (X v) = monomial e 1 ∧
      ∀ m' : Fin r, multideg e ⟨j - 1, Sum.inr m'⟩ =
        Dt.P (j - 1) m' * (if v.1 = Fr.fr (segZ j - 1) (r - 1 - m'.val) then 1 else 0) := by
  have hne := ne_pred hJ j
  have hr : 1 ≤ r := NeZero.one_le
  rw [PhiJ_X Dt j v hv]
  have hord := hV.2.2.2.1 (segZ j - 1)
  rw [sub_add_cancel] at hord
  rcases Formalism.MainNotions.NormalSetCounting.restSpec n' r Fr L₁ N₁ hV J Dt.nL hnL j v.1 hv with ⟨l, hy, hml⟩ | ⟨m, hy, hml⟩ | ⟨m, hy, hml⟩
  · rw [hml]
    refine ⟨_, ph_ll Dt j l v.2, fun m' => ?_⟩
    rw [multideg_single, if_neg (fun h => hne (congrArg Sigma.fst h)), if_neg, mul_zero]
    intro h
    have h1 := (Formalism.MainNotions.NormalSetCounting.ll_between hnL j l).1
    have h2 := frame_entry_le_last Fr L₁ N₁ hV (segZ j - 1) (r - 1 - m'.val) (by omega)
    omega
  · rw [hml]
    refine ⟨_, ph_lab Dt j m v.2, fun m' => ?_⟩
    rw [multideg_single, if_neg (fun h => hne (congrArg Sigma.fst h)), if_neg, mul_zero]
    intro h
    have h1 := frame_row_monotone Fr L₁ N₁ hV (segZ j) (r - 1 - m.val) (by omega)
    have h2 := frame_entry_le_last Fr L₁ N₁ hV (segZ j - 1) (r - 1 - m'.val) (by omega)
    omega
  · rw [hml]
    refine ⟨_, ph_wc Dt (j - 1) m v.2, fun m' => ?_⟩
    rw [multideg_single]
    by_cases hmm : m = m'
    · subst hmm
      rw [if_pos rfl, if_pos hy, mul_one]
    · rw [if_neg, if_neg, mul_zero]
      · intro h
        rw [hy] at h
        exact hmm (Formalism.MainNotions.NormalSetCounting.fr_rev_inj hV _ h)
      · intro h
        have h3 := eq_of_heq (Sigma.mk.inj_iff.1 h).2
        exact hmm (Sum.inr.inj h3)

theorem PhiJ_monomial (hV : Fr.Valid L₁ N₁) (hnL : ∀ j, Dt.nL j = (Fr.LLset (segZ j)).card) (hJ : 2 ≤ J) (j : ZMod J)
    (μ : ℤ × Fin r →₀ ℕ) : (∀ v ∈ μ.support, v.1 ∈ Fr.letters (segZ j)) →
    ∃ ν : TL J Dt.nL r × Fin r →₀ ℕ, (∀ c : KK O, PhiJ Fr Dt j (monomial μ c) = monomial ν c) ∧
      ∀ m' : Fin r, multideg ν ⟨j - 1, Sum.inr m'⟩ =
        Dt.P (j - 1) m' * multideg μ (Fr.fr (segZ j - 1) (r - 1 - m'.val)) := by
  induction μ using Finsupp.induction_linear with
  | zero =>
    intro _
    refine ⟨0, fun c => ?_, fun m' => by rw [multideg_zero, multideg_zero, mul_zero]⟩
    exact MvPolynomial.algHom_C _ c
  | add f g hf hg =>
    intro h
    obtain ⟨ν1, a1, b1⟩ := hf (fun v hv => h v (by
      rw [Finsupp.mem_support_iff] at hv ⊢
      rw [Finsupp.add_apply]
      omega))
    obtain ⟨ν2, a2, b2⟩ := hg (fun v hv => h v (by
      rw [Finsupp.mem_support_iff] at hv ⊢
      rw [Finsupp.add_apply]
      omega))
    refine ⟨ν1 + ν2, fun c => ?_, fun m' => ?_⟩
    · have e : (monomial (f + g) c : MvPolynomial (ℤ × Fin r) (KK O)) = monomial f c * monomial g 1 := by
        rw [monomial_mul, mul_one]
      rw [e, map_mul, a1, a2, monomial_mul, mul_one]
    · rw [multideg_add, multideg_add, b1, b2, mul_add]
  | single v k =>
    intro h
    by_cases hk0 : k = 0
    · subst hk0
      refine ⟨0, fun c => ?_, fun m' => by rw [Finsupp.single_zero, multideg_zero, multideg_zero, mul_zero]⟩
      rw [Finsupp.single_zero]
      exact MvPolynomial.algHom_C _ c
    · have hv : v.1 ∈ Fr.letters (segZ j) := h v (by rw [Finsupp.mem_support_iff, Finsupp.single_eq_same]; exact hk0)
      obtain ⟨e, he, hm⟩ := PhiJ_X_mon Dt hV hnL hJ j v hv
      refine ⟨k • e, fun c => ?_, fun m' => ?_⟩
      · have e1 : (monomial (Finsupp.single v k) c : MvPolynomial (ℤ × Fin r) (KK O)) = C c * X v ^ k := by
          rw [X_pow_eq_monomial, C_mul_monomial, mul_one]
        rw [e1, map_mul, map_pow, he, MvPolynomial.algHom_C, MvPolynomial.algebraMap_eq, monomial_pow, one_pow,
          C_mul_monomial, mul_one]
      · rw [multideg_smul, hm, multideg_single]
        split_ifs <;> ring

end Phi

end LkD

theorem lkDeg : LkDeg := by
  intro p _ n' r _ _ O _ _ _ Fr L₁ N₁ hV J _ Dt hS hJ j F hF δ hδ ν hν m'
  have hFs := congrArg (PhiJ Fr Dt j) F.as_sum

  rw [map_sum] at hFs
  rw [hFs] at hν
  obtain ⟨μ, hμ, hν'⟩ := Finset.mem_biUnion.1 (MvPolynomial.support_sum hν)
  obtain ⟨ν0, a0, b0⟩ := LkD.PhiJ_monomial Dt hV hS.2.1 hJ j μ (fun v hv =>
    (mem_supported.1 hF) (Finset.mem_coe.2 ((mem_vars_iff_mem_support v).2 ⟨μ, hμ, hv⟩)))
  rw [a0] at hν'
  have := support_monomial_subset hν'
  rw [Finset.mem_singleton] at this
  rw [this, b0, hδ μ hμ]

theorem lkVars : LkVars := by
  intro p n' r _ _ O _ _ _ Fr J _ Dt j
  let s : Set (TL J Dt.nL r × Fin r) :=
    {v | (∃ l, v.1 = ⟨j, Sum.inl l⟩) ∨ ∃ (j' : ZMod J) (m' : Fin r), v.1 = ⟨j', Sum.inr m'⟩}
  have hmon : ∀ (x : TL J Dt.nL r × Fin r) (k : ℕ), x ∈ s →
      (monomial (Finsupp.single x k) (1 : KK O)) ∈ supported (KK O) s := by
    intro x k hx
    rw [← X_pow_eq_monomial]
    refine Subalgebra.pow_mem _ ?_ _
    rw [supported_eq_adjoin_X]
    exact Algebra.subset_adjoin (Set.mem_image_of_mem _ hx)
  have hX : ∀ u : ℤ × Fin r, PhiJ Fr Dt j (X u) ∈ supported (KK O) s := by
    intro u
    unfold PhiJ chi
    rw [AlgHom.comp_apply, aeval_X]
    split_ifs with hu
    · unfold mlOf
      split_ifs with h1 h2 h3
      · rw [LkD.ph_ll]; exact hmon _ _ (Or.inl ⟨_, rfl⟩)
      · rw [LkD.ph_lab]; exact hmon _ _ (Or.inr ⟨_, _, rfl⟩)
      · rw [LkD.ph_wc]; exact hmon _ _ (Or.inr ⟨_, _, rfl⟩)
      · rw [LkD.ph_lab]; exact hmon _ _ (Or.inr ⟨_, _, rfl⟩)
    · rw [map_zero]; exact Subalgebra.zero_mem _
  have hall : ∀ F : MvPolynomial (ℤ × Fin r) (KK O), PhiJ Fr Dt j F ∈ supported (KK O) s := by
    intro F
    induction F using MvPolynomial.induction_on with
    | C a => rw [MvPolynomial.algHom_C]; exact Subalgebra.algebraMap_mem _ a
    | add f g hf hg => rw [map_add (f := _)]; exact Subalgebra.add_mem _ hf hg
    | mul_X f u hf => rw [map_mul]; exact Subalgebra.mul_mem _ hf (hX u)
  intro F v hv
  exact (mem_supported.1 (hall F)) (Finset.mem_coe.2 hv)

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.MultidegSingle =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.WithThModelLet\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.WBound\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestOneOpOf\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.DoubleMonomialApply\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.XXgZeroP\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.GeoTouch\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RenameMemSupported\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.CompDEqHomComp\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ValSCongrSupp\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PmatDetMem\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.FortyEightBoundArith\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ProdRangeZmod\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.SupportedOfSupport\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.SumFiberMultideg\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.MemTSetIff\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.MultidegSingle\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialSupport.GeZSum\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialSupport.Lam1SPderivAndXMulLeAddIndicator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords

theorem opSteps_of (h : NoOpStep) : OpSteps :=
  ⟨trDerPl, trDerNo, trMulPl, trMulNo, plDer, plEul, plMul, h, geoTop, geoTouch⟩

theorem restWord_of_steps (h : OpSteps) (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : RestWord D CLa Ck Crk Cdeg :=
  restWord_of D CLa Ck Crk Cdeg restLeOfG (restOneOp_of h D CLa Ck Crk Cdeg) (restWordBound D CLa Ck Crk Cdeg)

theorem restMEM_of_last (hNO : NoOpStep) (hPl : RestPl)
    (hAr : ∃ C₁ : ℝ, 0 < C₁ ∧ ∀ C : ℝ, C₁ ≤ C → ∀ CLa : ℝ, RestArithStep C CLa)
    (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : RestMEM D CLa Ck Crk Cdeg :=
  memCondition_of_theoremII D CLa Ck Crk Cdeg
    (lemma5a_of_monomial D CLa Ck Crk Cdeg
      (rest5aMono_of_cut restT (restN D) restTh hPl restSP hAr D CLa Ck Crk Cdeg))
    (restWord_of_steps (opSteps_of hNO) D CLa Ck Crk Cdeg)

theorem stmtE_of_last (D : Formalism.BasicNotions.D7) (hNO : NoOpStep) (hPl : RestPl)
    (hAr : ∃ C₁ : ℝ, 0 < C₁ ∧ ∀ C : ℝ, C₁ ≤ C → ∀ CLa : ℝ, RestArithStep C CLa) : tableLineDegreeFive.ClosedFormOfAdmitted D :=
  Formalism.MainNotions.Proposition5Numerics.stmtE_of_mem D (fun CLa Ck Crk Cdeg => restMEM_of_last hNO hPl hAr D CLa Ck Crk Cdeg)

theorem stmtE_of_pl (D : Formalism.BasicNotions.D7) (hPl : RestPl) : tableLineDegreeFive.ClosedFormOfAdmitted D :=
  stmtE_of_last D Formalism.MainNotions.LetterSubstitution.noOpStep hPl ⟨1, one_pos, fun C hC CLa => arithCondition_of_one_le C CLa hC⟩

theorem level_link_of_degree_letters (hLL : LinkL) (hDg : LkDeg) (hVr : LkVars) : RestLink :=
  restLink_of Formalism.MainNotions.LetterSubstitution.valNN Formalism.MainNotions.LetterSubstitution.homDec hLL hDg hVr restTr (fun Fr jz μ => lkW Fr jz μ)

private theorem restPl_of_restChain_of_restLink (hC : RestChain) (hL : RestLink) : RestPl := by
  intro p _ n' r K m _ _ _ O _ _ _ _ hk Fr L₁ N₁ hV hE J _ Dt hT hJ A hA l hl ga hg t ht dPl
  exact ⟨hC p n' r K m O hk Fr L₁ N₁ hV hE J Dt hT hJ A hA l hl ga hg t ht dPl,
    hL p n' r K m O hk Fr L₁ N₁ hV hE J Dt hT hJ A hA l hl ga hg t ht dPl⟩

theorem restLink : RestLink := level_link_of_degree_letters linkL lkDeg lkVars

theorem stmtE_of_chain (D : Formalism.BasicNotions.D7) (hC : RestChain) : tableLineDegreeFive.ClosedFormOfAdmitted D :=
  stmtE_of_pl D (restPl_of_restChain_of_restLink hC restLink)

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients =====
