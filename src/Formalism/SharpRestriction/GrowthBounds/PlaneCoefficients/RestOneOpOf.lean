module

public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.NoOpStep
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.JointEIntList
import Formalism.SharpRestriction.GrowthBounds.RootWeights.ValuationBoundDetPowerFactor
import Formalism.SharpRestriction.GrowthBounds.FlipOneThree
import Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesStable

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PlaneCoeffMonomial, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestOneOpOf

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PlaneCoeffMonomial =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PlaneCoeffMonomial", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.NoOpStep\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.ValuationBoundDetPowerFactor\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.JointEIntList\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.G.GLWeightTheory

section Comm

variable {σ τ Kf : Type} [Field Kf]

theorem oneT_monomial (e : Module.End Kf (MvPolynomial τ Kf)) (mo : σ →₀ ℕ) (q : MvPolynomial τ Kf) :
    oneT e (monomial mo q) = monomial mo (e q) := by
  unfold oneT
  by_cases hq : q = 0
  · simp [hq]
  · rw [support_monomial, if_neg hq, Finset.sum_singleton, coeff_monomial, if_pos rfl]

theorem planeCoeff_monomial (nu : τ →₀ ℕ) (mo : σ →₀ ℕ) (q : MvPolynomial τ Kf) :
    planeCoeff nu (monomial mo q) = monomial mo (q.coeff nu) := by
  unfold planeCoeff
  by_cases hq : q = 0
  · simp [hq]
  · rw [support_monomial, if_neg hq, Finset.sum_singleton, coeff_monomial, if_pos rfl]

theorem X_mul_monomial' {R : Type} [CommSemiring R] (v : σ) (u : σ →₀ ℕ) (a : R) :
    (X v : MvPolynomial σ R) * monomial u a = monomial (Finsupp.single v 1 + u) a := by
  rw [X, monomial_mul, one_mul]

theorem oneT_pderiv (e : Module.End Kf (MvPolynomial τ Kf)) (v : σ) (G : MvPolynomial σ (MvPolynomial τ Kf)) :
    oneT e (pderiv v G) = pderiv v (oneT e G) := by
  induction G using MvPolynomial.induction_on' with
  | monomial u a =>
    rw [pderiv_monomial, oneT_monomial, oneT_monomial, pderiv_monomial, ← nsmul_eq_mul', ← nsmul_eq_mul', map_nsmul]
  | add p q hp hq => simp only [map_add (f := _), oneT_add, hp, hq]

theorem oneT_X_mul (e : Module.End Kf (MvPolynomial τ Kf)) (v : σ) (G : MvPolynomial σ (MvPolynomial τ Kf)) :
    oneT e (X v * G) = X v * oneT e G := by
  induction G using MvPolynomial.induction_on' with
  | monomial u a => rw [X_mul_monomial', oneT_monomial, oneT_monomial, X_mul_monomial']
  | add p q hp hq => simp only [mul_add, oneT_add, hp, hq]

theorem planeCoeff_pderiv (nu : τ →₀ ℕ) (v : σ) (G : MvPolynomial σ (MvPolynomial τ Kf)) :
    planeCoeff nu (pderiv v G) = pderiv v (planeCoeff nu G) := by
  induction G using MvPolynomial.induction_on' with
  | monomial u a =>
    rw [pderiv_monomial, planeCoeff_monomial, planeCoeff_monomial, pderiv_monomial, ← nsmul_eq_mul', ← nsmul_eq_mul',
      MvPolynomial.coeff_smul]
  | add p q hp hq => simp only [map_add (f := _), planeCoeff_add, hp, hq]

theorem planeCoeff_X_mul (nu : τ →₀ ℕ) (v : σ) (G : MvPolynomial σ (MvPolynomial τ Kf)) :
    planeCoeff nu (X v * G) = X v * planeCoeff nu G := by
  induction G using MvPolynomial.induction_on' with
  | monomial u a => rw [X_mul_monomial', planeCoeff_monomial, planeCoeff_monomial, X_mul_monomial']
  | add p q hp hq => simp only [mul_add, planeCoeff_add, hp, hq]

theorem oneT_oneT (e T : Module.End Kf (MvPolynomial τ Kf)) (G : MvPolynomial σ (MvPolynomial τ Kf)) :
    oneT e (oneT T G) = oneT (e * T) G := by
  induction G using MvPolynomial.induction_on' with
  | monomial u a => rw [oneT_monomial, oneT_monomial, oneT_monomial, Module.End.mul_apply]
  | add p q hp hq => simp only [oneT_add, hp, hq]

end Comm

section XXgLin

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {r J : ℕ} [NeZero J] [NeZero r]
  (Dt : SignedChainData p O r J) {d : TL J Dt.nL r → ℕ} {th : ∀ j, Fin (Dt.nch j) → ℝ} {thL : ZMod J → Fin r → ℝ}

theorem XXg_add {F G : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)} (hF : XXg Dt d th thL F) (hG : XXg Dt d th thL G) :
    XXg Dt d th thL (F + G) := by
  refine ⟨Submodule.add_mem _ hF.1 hG.1, fun rho j i => ?_, fun j mm hm => ?_⟩
  · rw [Fdig_add]
    exact geZ_mono (mul_valS_add _ _ _ _) (geZ_min (hF.2.1 rho j i) (hG.2.1 rho j i))
  · exact geZ_mono (mul_valS_add _ _ _ _) (geZ_min (hF.2.2 j mm hm) (hG.2.2 j mm hm))

theorem XXg_smul (c : KK O) {F : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)} (hF : XXg Dt d th thL F) :
    XXg Dt d th thL (c • F) := by
  refine ⟨Submodule.smul_mem _ c hF.1, fun rho j i => ?_, fun j mm hm => ?_⟩
  · rw [Fdig_smul]
    exact geZ_mono (valS_smul_ge _ _ _ _) (hF.2.1 rho j i)
  · exact geZ_mono (valS_smul_ge _ _ _ _) (hF.2.2 j mm hm)

theorem XXg_zero : XXg Dt d th thL (0 : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) := by
  refine ⟨Submodule.zero_mem _, fun rho j i => ?_, fun j mm hm => ?_⟩
  · rw [Fdig_zero, valS_zero_eq_top]; exact geZ_top _
  · rw [valS_zero_eq_top]; exact geZ_top _

end XXgLin

theorem max_three_le_add {a b c a' b' c' t : ℝ} (ha : a ≤ a' + t) (hb : b ≤ b' + t) (hc : c ≤ c' + t) :
    max a (max b c) ≤ max a' (max b' c') + t := by
  refine max_le (le_trans ha ?_) (max_le (le_trans hb ?_) (le_trans hc ?_))
  · exact add_le_add_left (le_max_left _ _) _
  · exact add_le_add_left (le_trans (le_max_left _ _) (le_max_right _ _)) _
  · exact add_le_add_left (le_trans (le_max_right _ _) (le_max_right _ _)) _

section Th

variable {n' r : ℕ} [NeZero n'] (Fr : Frames n' r) (p : ℕ) (deg : Fin n' → ℕ) (Y : ℝ) (k : ℕ) (mS : ℕ)
  {J : ℕ} (nL : ZMod J → ℕ) (K : ℕ) [NeZero K]

theorem thStar_le (ka ka1 : ZMod J → ℕ → Fin K → ℤ) (j : ZMod J) (u : ℕ) (t : ℝ) (ht : 0 ≤ t)
    (h1 : (ka j (u + 1) 0 : ℝ) ≤ ka1 j (u + 1) 0 + t) (h2 : (ka j (u - 1) 0 : ℝ) ≤ ka1 j (u - 1) 0 + t) :
    thStar Fr p deg Y k mS nL K ka j u ≤ thStar Fr p deg Y k mS nL K ka1 j u + t := by
  unfold thStar
  simp only []
  apply max_three_le_add
  · linarith
  · split_ifs <;> linarith
  · split_ifs <;> linarith

end Th

theorem touch_cost_nonneg {n' r : ℕ} [NeZero n'] (Fr : Frames n' r) (s : Fin n') (jz : ℤ) (u : ℕ) : 0 ≤ cost1 Fr s jz u := by
  unfold cost1
  split_ifs <;> norm_num

theorem touch_cost_eq_one {n' r : ℕ} [NeZero n'] (Fr : Frames n' r) (s : Fin n') (jz : ℤ) (u : ℕ) (h : touchT Fr jz u s) :
    cost1 Fr s jz u = 1 := by
  unfold cost1
  rw [if_pos h]

def thUp {n' r : ℕ} [NeZero n'] (Fr : Frames n' r) {p : ℕ} {O : Type} [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] {J : ℕ} (Dt : SignedChainData p O r J) (s : Fin n') (th : ∀ j, Fin (Dt.nch j) → ℝ) :
    ∀ j, Fin (Dt.nch j) → ℝ :=
  fun j i => th j i + cost1 Fr s (segZ j) i.val

def thLUp {n' r : ℕ} [NeZero n'] (Fr : Frames n' r) {p : ℕ} {O : Type} [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] {J : ℕ} (Dt : SignedChainData p O r J) (s : Fin n') (thL : ZMod J → Fin r → ℝ) :
    ZMod J → Fin r → ℝ :=
  fun j mm => thL j mm + cost1 Fr s (segZ j) (Dt.nL j + (r - 1 - mm.val))

section Glue

variable {n' r : ℕ} [NeZero n'] [NeZero r] (Fr : Frames n' r) (p : ℕ) (deg : Fin n' → ℕ) (Y : ℝ) (k : ℕ) (mS : ℕ)
  {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {J : ℕ} [NeZero J] (K : ℕ) [NeZero K]
  (Dt : SignedChainData p O r J)

variable {Fr p deg Y k mS K Dt}

theorem thLe_up {sc sL : ℝ} {loss : ℤ → ℕ → ℝ} {s : Fin n'} {ka : ZMod J → ℕ → Fin K → ℤ}
    {th : ∀ j, Fin (Dt.nch j) → ℝ} {thL : ZMod J → Fin r → ℝ}
    (hT : ThLe Fr p deg Y k mS K sc sL (fun jz u => loss jz u + cost1 Fr s jz u) Dt ka th thL) :
    ThLe Fr p deg Y k mS K sc sL loss Dt ka (thUp Fr Dt s th) (thLUp Fr Dt s thL) := by
  refine ⟨fun j i => ?_, fun j mm hm => ?_⟩
  · have := hT.1 j i
    unfold thUp
    linarith
  · have := hT.2 j mm hm
    unfold thLUp
    linarith

theorem thLe_weak {sc sL : ℝ} {loss : ℤ → ℕ → ℝ} {s : Fin n'} {ka : ZMod J → ℕ → Fin K → ℤ}
    {th : ∀ j, Fin (Dt.nch j) → ℝ} {thL : ZMod J → Fin r → ℝ}
    (hT : ThLe Fr p deg Y k mS K sc sL (fun jz u => loss jz u + cost1 Fr s jz u) Dt ka th thL) :
    ThLe Fr p deg Y k mS K sc sL loss Dt ka th thL := by
  refine ⟨fun j i => ?_, fun j mm hm => ?_⟩
  · have := hT.1 j i
    have := touch_cost_nonneg Fr s (segZ j) i.val
    linarith
  · have := hT.2 j mm hm
    have := touch_cost_nonneg Fr s (segZ j) (Dt.nL j + (r - 1 - mm.val))
    linarith

theorem thLUp_pos {s : Fin n'} {thL : ZMod J → Fin r → ℝ} (h : ∀ j (mm : Fin r), mm.val + 2 ≤ r → 0 < thL j mm) :
    ∀ j (mm : Fin r), mm.val + 2 ≤ r → 0 < thLUp Fr Dt s thL j mm := by
  intro j mm hm
  have := h j mm hm
  have := touch_cost_nonneg Fr s (segZ j) (Dt.nL j + (r - 1 - mm.val))
  unfold thLUp
  linarith

def TouchAt (Fr : Frames n' r) (Dt : SignedChainData p O r J) (x0 : TL J Dt.nL r) : Prop :=
  ∀ (j : ZMod J) (u : ℕ), u < Dt.nL j + r →
      (x0 ∈ NSet Dt.nL j (u + 1) ∨ ∃ m : Fin r, x0 = ⟨j - 1, Sum.inr m⟩) →
      touchT Fr (segZ j) u (posOf n' (posTL Fr x0))

theorem thDrop_of (hB : Base Fr p Dt) {x0 : TL J Dt.nL r} (hG : TouchAt Fr Dt x0)
    (th : ∀ j, Fin (Dt.nch j) → ℝ) (thL : ZMod J → Fin r → ℝ) :
    ThDrop Dt x0 th (thUp Fr Dt (posOf n' (posTL Fr x0)) th) thL (thLUp Fr Dt (posOf n' (posTL Fr x0)) thL) := by
  obtain ⟨b1, b2, b3, b4, b5, b6⟩ := hB
  have hr : 0 < r := NeZero.pos r
  refine ⟨fun j i => ?_, fun j i hc => ?_, fun j mm => ?_, fun j mm hx => ?_⟩
  · have := touch_cost_nonneg Fr (posOf n' (posTL Fr x0)) (segZ j) i.val
    unfold thUp
    linarith
  · have hi : i.val < Dt.nL j + r := by
      have := i.isLt
      have := b5 j
      omega
    have ht : touchT Fr (segZ j) i.val (posOf n' (posTL Fr x0)) := by
      apply hG j i.val hi
      rcases hc with ⟨l, hl, hmem⟩ | hw
      · left
        rw [b6 j i] at hmem
        rcases hmem with hmem | ⟨l', hl', hlt⟩
        · exact absurd hmem (by simp)
        · have : l = l' := Sum.inl.inj hl'
          subst this
          exact Or.inl ⟨l, hl, by omega⟩
      · exact Or.inr hw
    unfold thUp
    rw [touch_cost_eq_one Fr _ _ _ ht]
  · have := touch_cost_nonneg Fr (posOf n' (posTL Fr x0)) (segZ j) (Dt.nL j + (r - 1 - mm.val))
    unfold thLUp
    linarith
  · have hi : Dt.nL j + (r - 1 - mm.val) < Dt.nL j + r := by omega
    have ht : touchT Fr (segZ j) (Dt.nL j + (r - 1 - mm.val)) (posOf n' (posTL Fr x0)) := by
      apply hG j _ hi
      left
      rcases hx with ⟨l, hl⟩ | ⟨m', hlt, hm'⟩
      · exact Or.inl ⟨l, hl, by have := l.isLt; omega⟩
      · refine Or.inr ⟨m', hm', ?_⟩
        have h1 : mm.val < m'.val := hlt
        have h2 := m'.isLt
        omega
    unfold thLUp
    rw [touch_cost_eq_one Fr _ _ _ ht]

theorem inN_le_cost {x0 : TL J Dt.nL r} (hG : TouchAt Fr Dt x0) (j : ZMod J) (u u' : ℕ) (hu : u < Dt.nL j + r)
    (hu' : u' ≤ u + 1) : (inN Dt.nL x0 j u' : ℝ) ≤ cost1 Fr (posOf n' (posTL Fr x0)) (segZ j) u := by
  unfold inN
  split_ifs with h
  · rw [touch_cost_eq_one Fr _ _ _ (hG j u hu (Or.inl (NSet_mono Dt.nL j hu' h)))]
    norm_num
  · have := touch_cost_nonneg Fr (posOf n' (posTL Fr x0)) (segZ j) u
    simpa using this

theorem thLe_ka (hB : Base Fr p Dt) {x0 : TL J Dt.nL r} (hG : TouchAt Fr Dt x0) {sc sL : ℝ} {loss : ℤ → ℕ → ℝ}
    {ka ka1 : ZMod J → ℕ → Fin K → ℤ} {th : ∀ j, Fin (Dt.nch j) → ℝ} {thL : ZMod J → Fin r → ℝ}
    (hT : ThLe Fr p deg Y k mS K sc sL (fun jz u => loss jz u + cost1 Fr (posOf n' (posTL Fr x0)) jz u) Dt ka th thL)
    (hka : ∀ j u, ka j u 0 ≤ ka1 j u 0 + inN Dt.nL x0 j u) :
    ThLe Fr p deg Y k mS K sc sL loss Dt ka1 th thL := by
  have hr : 0 < r := NeZero.pos r
  have key : ∀ (j : ZMod J) (u : ℕ), u < Dt.nL j + r →
      thStar Fr p deg Y k mS Dt.nL K ka j u ≤
        thStar Fr p deg Y k mS Dt.nL K ka1 j u + cost1 Fr (posOf n' (posTL Fr x0)) (segZ j) u := by
    intro j u hu
    apply thStar_le _ _ _ _ _ _ _ _ _ _ _ _ _ (touch_cost_nonneg _ _ _ _)
    · have h1 : ((ka j (u + 1) 0 : ℤ) : ℝ) ≤ ((ka1 j (u + 1) 0 + inN Dt.nL x0 j (u + 1) : ℤ) : ℝ) := by
        exact_mod_cast hka j (u + 1)
      have h2 := inN_le_cost hG j u (u + 1) hu le_rfl
      push_cast at h1
      linarith
    · have h1 : ((ka j (u - 1) 0 : ℤ) : ℝ) ≤ ((ka1 j (u - 1) 0 + inN Dt.nL x0 j (u - 1) : ℤ) : ℝ) := by
        exact_mod_cast hka j (u - 1)
      have h2 := inN_le_cost hG j u (u - 1) hu (by omega)
      push_cast at h1
      linarith
  refine ⟨fun j i => ?_, fun j mm hm => ?_⟩
  · have hi : i.val < Dt.nL j + r := by
      have := i.isLt
      have := hB.2.2.2.2.1 j
      omega
    have := hT.1 j i
    have := key j i.val hi
    linarith
  · have := hT.2 j mm hm
    have := key j (Dt.nL j + (r - 1 - mm.val)) (by omega)
    linarith

end Glue

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PlaneCoeffMonomial =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestOneOpOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestOneOpOf", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.PlaneCoeffMonomial\nimport Formalism.SharpRestriction.GrowthBounds.FlipOneThree\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.G.GLWeightTheory

section Var

variable {n' r K m : ℕ} [NeZero n'] (Fr : Frames n' r) (hk : m + 1 = r + K) {J : ℕ} (nL : ZMod J → ℕ)

theorem var_cases (x0 : TL J nL r) (b : Fin (m + 1)) :
    (∃ a : Fin r, (posOf n' (posTL Fr x0), b) = plVar Fr hk nL x0 a) ∨
      ∃ c : Fin K, (posOf n' (posTL Fr x0), b) = noVar Fr hk nL x0 c := by
  by_cases hb : b.val < r
  · left
    refine ⟨⟨b.val, hb⟩, ?_⟩
    unfold Formalism.MainNotions.TestSideWords.plVar
    exact Prod.ext rfl (Fin.ext rfl)
  · right
    have h1 := b.isLt
    refine ⟨⟨b.val - r, by omega⟩, ?_⟩
    unfold Formalism.MainNotions.TestSideWords.noVar
    refine Prod.ext rfl (Fin.ext ?_)
    simp only [Fin.val_cast, Fin.val_natAdd]
    omega

end Var

section Main

variable (D : Formalism.BasicNotions.D7) (p : ℕ) [Fact p.Prime] {n' r K m : ℕ} [NeZero n'] [NeZero r] [NeZero K] (O : Type)
  [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [CharZero (KK O)] (hk : m + 1 = r + K) (Fr : Frames n' r)
  (deg : Fin n' → ℕ) (Y : ℝ) (N₁ G' cP : ℕ) {J : ℕ} [NeZero J] (Dt : SignedChainData p O r J)


include D in
theorem derLev (hTP : TrDerPl) (hTN : TrDerNo) (hPD : PlDer) (hPE : PlEul) (hNO : NoOpStep) {n'' : ℕ}
    (S : UniformizedDVR p O) (hR : AdmissibleDVR p n'' O) (hB : Base Fr p Dt) (x0 : TL J Dt.nL r)
    (hu : ∀ x', posOf n' (posTL Fr x') = posOf n' (posTL Fr x0) → x' = x0) (hG : TouchAt Fr Dt x0)
    (sc sL : ℝ) (loss : ℤ → ℕ → ℝ) (F : MvPolynomial (TV n' (m + 1)) (KK O))
    (hF : MemLev sc sL loss p O hk Fr deg Y N₁ G' cP Dt F) (b : Fin (m + 1)) :
    MemLev sc sL (fun jz u => loss jz u + cost1 Fr (posOf n' (posTL Fr x0)) jz u) p O hk Fr deg Y N₁ G' cP Dt
      (pderiv (posOf n' (posTL Fr x0), b) F) := by
  intro dPl dNo ka th thL hpos hT rho e he nu
  have hDrop := thDrop_of hB hG th thL
  rcases var_cases Fr hk Dt.nL x0 b with ⟨a, hv⟩ | ⟨c, hv⟩
  · obtain ⟨c1, c2, c3, rho1, rho2, hEq⟩ := hTP p O hk Fr Dt.nL x0 hu a rho dPl dNo F
    rw [hv, hEq]
    simp only [oneT_add, oneT_smul, planeCoeff_add, planeCoeff_smul, oneT_X_mul, oneT_pderiv, planeCoeff_X_mul,
      planeCoeff_pderiv]
    refine XXg_add Dt (XXg_add Dt (XXg_smul Dt c1 ?_) (XXg_smul Dt c2 ?_)) (XXg_smul Dt c3 ?_)
    · exact hF dPl dNo ka th thL hpos (thLe_weak hT) rho1 e he nu
    · exact hPE p O Dt x0 a dPl th _ thL _ hDrop _
        (hF dPl dNo ka _ _ (thLUp_pos hpos) (thLe_up hT) rho1 e he nu)
    · exact hPD p O Dt x0 a dPl th _ thL _ hDrop _
        (hF _ dNo ka _ _ (thLUp_pos hpos) (thLe_up hT) rho2 e he nu)
  · obtain ⟨c1, c2, c3, rho1, rho2, hEq⟩ := hTN p O hk Fr Dt.nL x0 hu c rho dPl dNo F
    rw [hv, hEq]
    simp only [oneT_add, oneT_smul, planeCoeff_add, planeCoeff_smul, oneT_oneT]
    refine XXg_add Dt (XXg_add Dt (XXg_smul Dt c1 ?_) (XXg_smul Dt c2 ?_)) (XXg_smul Dt c3 ?_)
    · exact hF dPl dNo ka th thL hpos (thLe_weak hT) rho1 e he nu
    · exact hNO D p O K S hR Dt x0 c _ (Or.inr (Or.inr rfl)) dPl th thL _ ka e he
        (fun ka1 hka e1 he1 nu1 => hF dPl dNo ka1 th thL hpos (thLe_ka hB hG hT hka) rho1 e1 he1 nu1) nu
    · exact hNO D p O K S hR Dt x0 c _ (Or.inl rfl) dPl th thL _ ka e he
        (fun ka1 hka e1 he1 nu1 => hF dPl _ ka1 th thL hpos (thLe_ka hB hG hT hka) rho2 e1 he1 nu1) nu


include D in
theorem mulLev (hTP : TrMulPl) (hTN : TrMulNo) (hPM : PlMul) (hNO : NoOpStep) {n'' : ℕ}
    (S : UniformizedDVR p O) (hR : AdmissibleDVR p n'' O) (hB : Base Fr p Dt) (x0 : TL J Dt.nL r)
    (hu : ∀ x', posOf n' (posTL Fr x') = posOf n' (posTL Fr x0) → x' = x0) (hG : TouchAt Fr Dt x0)
    (sc sL : ℝ) (loss : ℤ → ℕ → ℝ) (F : MvPolynomial (TV n' (m + 1)) (KK O))
    (hF : MemLev sc sL loss p O hk Fr deg Y N₁ G' cP Dt F) (b : Fin (m + 1)) :
    MemLev sc sL (fun jz u => loss jz u + cost1 Fr (posOf n' (posTL Fr x0)) jz u) p O hk Fr deg Y N₁ G' cP Dt
      (X (posOf n' (posTL Fr x0), b) * F) := by
  intro dPl dNo ka th thL hpos hT rho e he nu
  have hDrop := thDrop_of hB hG th thL
  rcases var_cases Fr hk Dt.nL x0 b with ⟨a, hv⟩ | ⟨c, hv⟩
  · obtain ⟨c1, c2, rho1, rho2, h0, hEq⟩ := hTP p O hk Fr Dt.nL x0 hu a rho dPl dNo F
    rw [hv, hEq]
    simp only [oneT_add, oneT_smul, planeCoeff_add, planeCoeff_smul, oneT_X_mul, planeCoeff_X_mul]
    refine XXg_add Dt (XXg_smul Dt c1 ?_) ?_
    · exact hF dPl dNo ka th thL hpos (thLe_weak hT) rho1 e he nu
    · by_cases hd : dPl x0 = 0
      · rw [h0 hd, zero_smul]
        exact XXg_zero Dt
      · exact XXg_smul Dt c2 (hPM p O Dt x0 a dPl th _ thL _ hDrop (Nat.one_le_iff_ne_zero.2 hd) _
          (hF _ dNo ka _ _ (thLUp_pos hpos) (thLe_up hT) rho2 e he nu))
  · obtain ⟨c1, c2, rho1, rho2, hEq⟩ := hTN p O hk Fr Dt.nL x0 hu c rho dPl dNo F
    rw [hv, hEq]
    simp only [oneT_add, oneT_smul, planeCoeff_add, planeCoeff_smul, oneT_oneT]
    refine XXg_add Dt (XXg_smul Dt c1 ?_) (XXg_smul Dt c2 ?_)
    · exact hF dPl dNo ka th thL hpos (thLe_weak hT) rho1 e he nu
    · exact hNO D p O K S hR Dt x0 c _ (Or.inr (Or.inl rfl)) dPl th thL _ ka e he
        (fun ka1 hka e1 he1 nu1 => hF dPl _ ka1 th thL hpos (thLe_ka hB hG hT hka) rho2 e1 he1 nu1) nu

end Main

def OpSteps : Prop :=
  TrDerPl ∧ TrDerNo ∧ TrMulPl ∧ TrMulNo ∧ PlDer ∧ PlEul ∧ PlMul ∧ NoOpStep ∧ GeoTop ∧ GeoTouch

theorem oneOpStep_of (D : Formalism.BasicNotions.D7) (h : OpSteps) (C CLa : ℝ) : OneOpStep C CLa := by
  obtain ⟨hDP, hDN, hMP, hMN, hPD, hPE, hPM, hNO, hGT, hGU⟩ := h
  intro p W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w n' m r _ _ TT L₁ L₂ de h' x lam0 aT bT a Y cpp c0 Dp cStar K _ _ hk hrk
    F nb B hD loss Fp hFp s hs a' b'
  have hSet := hD.1
  have hG1 : AdmissibleDVR p n' O := Formalism.MainNotions.flipOneThree.admissible_dvr_of_unramified_quadratic_setting hSet
  have hK : CharZero (KK O) := Formalism.MainNotions.G.GLWeightTheory.dvr_fraction_field_charZero (dvrOfStd hSet) hG1.prime
  have hFO := hD.2.2.1
  have hV := hFO.2.1
  have hs' : s ∈ F.TT := by rw [hFO.1]; exact hs
  rw [memAtLe_iff] at hFp ⊢
  intro J _ Dt hB
  obtain ⟨x0, hx0, huq⟩ := hGT F L₁ _ hV Dt.nL hB.1 hB.2.1 s hs'
  subst hx0
  have hG : TouchAt F Dt x0 := hGU F L₁ _ hV Dt.nL hB.1 hB.2.1 x0
  have h1 := derLev D p O hk F (flatDeg lam0) Y _ _ _ Dt hDP hDN hPD hPE hNO (dvrOfStd hSet) hG1 hB x0 huq hG 0 (1 / 8)
    loss Fp (hFp J Dt hB) b'
  have h2 := mulLev D p O hk F (flatDeg lam0) Y _ _ _ Dt hMP hMN hPM hNO (dvrOfStd hSet) hG1 hB x0 huq hG 0 (1 / 8)
    _ _ h1 a'
  have e : (fun jz u => loss jz u + opCost F (posOf n' (posTL F x0)) jz u) =
      fun jz u => loss jz u + cost1 F (posOf n' (posTL F x0)) jz u + cost1 F (posOf n' (posTL F x0)) jz u := by
    funext jz u
    rw [opCost_eq]
    ring
  rw [e]
  exact h2

theorem restOneOp_of (h : OpSteps) (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : RestOneOp D CLa Ck Crk Cdeg :=
  fun _ => ⟨1, one_pos, fun C _ => oneOpStep_of D h C CLa⟩

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.RestOneOpOf =====
