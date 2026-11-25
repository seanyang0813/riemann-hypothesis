module

public import Development.AbelianVarietyTheory.Definitions.Divisors.EqZeroOfForallPowDvd
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFormalGroupCoboundaryHomogeneous
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoboundaryEqAdditiveLeadingTerms
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalGroupLawLinearCoeffAdditive
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.CoeffSingleLawAdd
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.EpsilonPairingZeta
import Development.AbelianVarietyTheory.Definitions.Divisors.GhostFrobenius

@[expose] public section

open MvPowerSeries GlobalTheory GlobalTheory.Katz GlobalTheory.QLog GlobalTheory.PDivGroup GlobalTheory.Sandwich GlobalTheory.IndefiniteRowSideFullHecke.EpsilonPairingZeta GlobalTheory.PDivLat

noncomputable section

namespace GlobalTheory.CobHom

open GlobalTheory.HomogCob

variable {R : Type} [CommRing R]

theorem single_inl_le {d : ℕ} (a e : Fin d →₀ ℕ) (j : Fin d) :
    Finsupp.single (Sum.inl j) 1 ≤ Finsupp.sumElim a e ↔ 1 ≤ a j := by
  rw [Finsupp.single_le_iff, Finsupp.sumElim_inl]

theorem single_inr_le {d : ℕ} (a e : Fin d →₀ ℕ) (j : Fin d) :
    Finsupp.single (Sum.inr j) 1 ≤ Finsupp.sumElim a e ↔ 1 ≤ e j := by
  rw [Finsupp.single_le_iff, Finsupp.sumElim_inr]

theorem sumElim_sub_inl {d : ℕ} (a e : Fin d →₀ ℕ) (j : Fin d) :
    Finsupp.sumElim a e - Finsupp.single (Sum.inl j) 1 =
      Finsupp.sumElim (a - Finsupp.single j 1) e := by
  ext k
  rcases k with k | k
  · simp [Finsupp.single_apply]
  · simp

theorem sumElim_sub_inr {d : ℕ} (a e : Fin d →₀ ℕ) (j : Fin d) :
    Finsupp.sumElim a e - Finsupp.single (Sum.inr j) 1 =
      Finsupp.sumElim a (e - Finsupp.single j 1) := by
  ext k
  rcases k with k | k
  · simp
  · simp [Finsupp.single_apply]

theorem sub_add_iff {d : ℕ} (a e α : Fin d →₀ ℕ) (j : Fin d) (h : 1 ≤ a j) :
    a - Finsupp.single j 1 + e = α ↔ a + e = α + Finsupp.single j 1 := by
  constructor
  · rintro rfl
    ext k
    simp only [Finsupp.coe_add, Finsupp.coe_tsub, Pi.add_apply, Pi.sub_apply, Finsupp.single_apply]
    split_ifs with h1 <;> (try subst h1) <;> omega
  · intro hx
    ext k
    have := DFunLike.congr_fun hx k
    simp only [Finsupp.coe_add, Finsupp.coe_tsub, Pi.add_apply, Pi.sub_apply, Finsupp.single_apply]
      at this ⊢
    split_ifs at this ⊢ with h1 <;> (try subst h1) <;> omega

theorem add_sub_iff {d : ℕ} (a e α : Fin d →₀ ℕ) (j : Fin d) (h : 1 ≤ e j) :
    a + (e - Finsupp.single j 1) = α ↔ a + e = α + Finsupp.single j 1 := by
  constructor
  · rintro rfl
    ext k
    simp only [Finsupp.coe_add, Finsupp.coe_tsub, Pi.add_apply, Pi.sub_apply, Finsupp.single_apply]
    split_ifs with h1 <;> (try subst h1) <;> omega
  · intro hx
    ext k
    have := DFunLike.congr_fun hx k
    simp only [Finsupp.coe_add, Finsupp.coe_tsub, Pi.add_apply, Pi.sub_apply, Finsupp.single_apply]
      at this ⊢
    split_ifs at this ⊢ with h1 <;> (try subst h1) <;> omega

theorem pascal (N A E : ℕ) (h : A + E = N + 1) :
    (if 1 ≤ A then N.choose (A - 1) else 0) + (if 1 ≤ E then N.choose A else 0) =
      (N + 1).choose A := by
  rcases A with _ | A
  · have hE : 1 ≤ E := by omega
    simp [hE]
  · rcases E with _ | E
    · have hA : A = N := by omega
      subst hA
      simp
    · simp only [le_add_iff_nonneg_left, zero_le, if_true, Nat.add_sub_cancel]
      rw [Nat.choose_succ_succ']

theorem prod_split {d : ℕ} (f g : Fin d → ℕ) (j : Fin d) (hfg : ∀ s, s ≠ j → f s = g s) :
    ∏ s, f s = f j * ∏ s ∈ Finset.univ.erase j, g s := by
  rw [← Finset.mul_prod_erase Finset.univ f (Finset.mem_univ j)]
  congr 1
  exact Finset.prod_congr rfl fun s hs => hfg s (Finset.ne_of_mem_erase hs)

theorem coeff_prod_addLaw (d n : ℕ) : ∀ α : Fin d →₀ ℕ, α.degree = n → ∀ a e : Fin d →₀ ℕ,
    coeff (Finsupp.sumElim a e) (α.prod fun s m => addLaw R d s ^ m) =
      if a + e = α then ((∏ s, (α s).choose (a s) : ℕ) : R) else 0 := by
  classical
  induction n with
  | zero =>
    intro α hα a e
    rw [Finsupp.degree_eq_zero_iff] at hα
    subst hα
    rw [Finsupp.prod_zero_index, coeff_one]
    by_cases h0 : a + e = 0
    · have ha : a = 0 := by
        ext k; have := DFunLike.congr_fun h0 k; simp at this; simp [this.1]
      have he : e = 0 := by
        ext k; have := DFunLike.congr_fun h0 k; simp at this; simp [this.2]
      subst ha he
      simp
    · rw [if_neg h0, if_neg]
      intro hs; apply h0
      ext k
      have h1 := DFunLike.congr_fun hs (Sum.inl k)
      have h2 := DFunLike.congr_fun hs (Sum.inr k)
      simp at h1 h2
      simp [h1, h2]
  | succ n ih =>
    intro α' hα a e
    obtain ⟨j, hj⟩ : ∃ j, α' j ≠ 0 := by
      by_contra! hc
      have : α' = 0 := Finsupp.ext hc
      rw [this, map_zero] at hα
      omega
    obtain ⟨α, rfl⟩ : ∃ α, α' = α + Finsupp.single j 1 := ⟨α' - Finsupp.single j 1, by
      ext k
      simp only [Finsupp.coe_add, Finsupp.coe_tsub, Pi.add_apply, Pi.sub_apply, Finsupp.single_apply]
      split_ifs with h1 <;> (try subst h1) <;> omega⟩
    have ha : α.degree = n := by
      rw [map_add (f := _), Finsupp.degree_single] at hα; omega
    have hP : ((α + Finsupp.single j 1).prod fun s m => addLaw R d s ^ m) =
        (α.prod fun s m => addLaw R d s ^ m) * monomial (Finsupp.single (Sum.inl j) 1) 1 +
        (α.prod fun s m => addLaw R d s ^ m) * monomial (Finsupp.single (Sum.inr j) 1) 1 := by
      rw [Finsupp.prod_add_index' (by simp) (by intros; rw [pow_add]),
        Finsupp.prod_single_index (by simp), pow_one, ← hX, ← hX, ← mul_add]
      rfl
    rw [hP, map_add (f := _), coeff_mul_monomial, coeff_mul_monomial]
    simp only [single_inl_le, single_inr_le, sumElim_sub_inl, sumElim_sub_inr, ih α ha, mul_one]
    by_cases hae : a + e = α + Finsupp.single j 1
    · rw [if_pos hae]
      have hj' := DFunLike.congr_fun hae j
      simp only [Finsupp.coe_add, Pi.add_apply, Finsupp.single_eq_same] at hj'
      have key := pascal (α j) (a j) (e j) hj'
      have e1 : ∏ s, (α s).choose ((a - Finsupp.single j 1 : Fin d →₀ ℕ) s) =
          (α j).choose (a j - 1) * ∏ s ∈ Finset.univ.erase j, (α s).choose (a s) := by
        rw [prod_split (fun s => (α s).choose ((a - Finsupp.single j 1 : Fin d →₀ ℕ) s))
          (fun s => (α s).choose (a s)) j fun s hs => by simp [Ne.symm hs]]
        simp
      have e2 : ∏ s, (α s).choose (a s) =
          (α j).choose (a j) * ∏ s ∈ Finset.univ.erase j, (α s).choose (a s) :=
        prod_split _ _ j fun s hs => rfl
      have e3 : ∏ s, ((α + Finsupp.single j 1 : Fin d →₀ ℕ) s).choose (a s) =
          (α j + 1).choose (a j) * ∏ s ∈ Finset.univ.erase j, (α s).choose (a s) := by
        rw [prod_split (fun s => ((α + Finsupp.single j 1 : Fin d →₀ ℕ) s).choose (a s))
          (fun s => (α s).choose (a s)) j fun s hs => by simp [Ne.symm hs]]
        simp
      rw [e3, ← key, add_mul]
      by_cases h1 : 1 ≤ a j <;> by_cases h2 : 1 ≤ e j
      · rw [if_pos h1, if_pos h2, if_pos ((sub_add_iff a e α j h1).2 hae),
          if_pos ((add_sub_iff a e α j h2).2 hae), e1, e2, if_pos h1, if_pos h2]
        push_cast; ring
      · rw [if_pos h1, if_neg h2, if_pos ((sub_add_iff a e α j h1).2 hae), e1, if_pos h1, if_neg h2]
        push_cast; ring
      · rw [if_neg h1, if_pos h2, if_pos ((add_sub_iff a e α j h2).2 hae), e2, if_neg h1, if_pos h2]
        push_cast; ring
      · omega
    · rw [if_neg hae]
      have t1 : (if 1 ≤ a j then (if a - Finsupp.single j 1 + e = α then
          ((∏ s, (α s).choose ((a - Finsupp.single j 1 : Fin d →₀ ℕ) s) : ℕ) : R) else 0) else 0) = 0 := by
        split_ifs with h1 h2
        · exact absurd ((sub_add_iff a e α j h1).1 h2) hae
        · rfl
        · rfl
      have t2 : (if 1 ≤ e j then (if a + (e - Finsupp.single j 1) = α then
          ((∏ s, (α s).choose (a s) : ℕ) : R) else 0) else 0) = 0 := by
        split_ifs with h1 h2
        · exact absurd ((add_sub_iff a e α j h1).1 h2) hae
        · rfl
        · rfl
      rw [t1, t2, add_zero]

end GlobalTheory.CobHom

namespace GlobalTheory.CobHom

open GlobalTheory.HomogCob

variable {R : Type} [CommRing R]

theorem sumElim_eq_inl {d : ℕ} (a e δ : Fin d →₀ ℕ) :
    Finsupp.sumElim a e = δ.mapDomain Sum.inl ↔ e = 0 ∧ δ = a := by
  constructor
  · intro h
    refine ⟨?_, ?_⟩
    · ext k; have := DFunLike.congr_fun h (Sum.inr k); simpa [mdl_inr] using this
    · ext k; have := DFunLike.congr_fun h (Sum.inl k); simpa [mdl_inl] using this.symm
  · rintro ⟨rfl, rfl⟩
    ext k; rcases k with k | k <;> simp [mdl_inl, mdl_inr]

theorem sumElim_eq_inr {d : ℕ} (a e δ : Fin d →₀ ℕ) :
    Finsupp.sumElim a e = δ.mapDomain Sum.inr ↔ a = 0 ∧ δ = e := by
  have hr : ∀ k, (δ.mapDomain Sum.inr : Fin d ⊕ Fin d →₀ ℕ) (Sum.inr k) = δ k :=
    fun k => Finsupp.mapDomain_apply_of_injective Sum.inr_injective δ k
  constructor
  · intro h
    refine ⟨?_, ?_⟩
    · ext k; have := DFunLike.congr_fun h (Sum.inl k); simpa [mdr_inl] using this
    · ext k; have := DFunLike.congr_fun h (Sum.inr k); simpa [hr] using this.symm
  · rintro ⟨rfl, rfl⟩
    ext k; rcases k with k | k <;> simp [mdr_inl, hr]

theorem coeff_cob1_additive_law_binomial (d : ℕ) (f : MvPowerSeries (Fin d) R) (a e : Fin d →₀ ℕ) :
    coeff (Finsupp.sumElim a e) (cob1 (addLaw R d) f) =
      ((∏ s, ((a + e) s).choose (a s) : ℕ) : R) * coeff (a + e) f -
        (if e = 0 then coeff a f else 0) - (if a = 0 then coeff e f else 0) := by
  classical
  have hL : HasSubst (fun s : Fin d => (X (Sum.inl s) : MvPowerSeries (Fin d ⊕ Fin d) R)) :=
    hasSubst_of_constantCoeff_zero fun s => constantCoeff_X _
  have hR : HasSubst (fun s : Fin d => (X (Sum.inr s) : MvPowerSeries (Fin d ⊕ Fin d) R)) :=
    hasSubst_of_constantCoeff_zero fun s => constantCoeff_X _
  have hA : HasSubst (addLaw R d) := hasSubst_of_constantCoeff_zero fun s => by
    simp [addLaw]
  unfold cob1 inL inR
  rw [map_sub, map_sub, coeff_subst hL, coeff_subst hR, coeff_subst hA]
  simp_rw [prod_X_map, coeff_monomial, sumElim_eq_inl, sumElim_eq_inr]
  congr 1
  congr 1
  · rw [finsum_eq_single _ (a + e)]
    · rw [coeff_prod_addLaw d _ _ rfl a e, if_pos rfl, smul_eq_mul, mul_comm]
    · intro δ hδ
      rw [coeff_prod_addLaw d _ δ rfl a e, if_neg (fun h => hδ h.symm), smul_zero]
  · by_cases he : e = 0
    · rw [if_pos he, finsum_eq_single _ a]
      · simp [he]
      · intro δ hδ; simp [hδ]
    · rw [if_neg he]; simp [he]
  · by_cases ha : a = 0
    · rw [if_pos ha, finsum_eq_single _ e]
      · simp [ha]
      · intro δ hδ; simp [hδ]
    · rw [if_neg ha]; simp [ha]

theorem coeff_inl {B O : Type} [CommRing B] [CommRing O] {θ : B →+* O} {d : ℕ}
    {μ : Fin d → MvPowerSeries (Fin d ⊕ Fin d) B} (h : IsLift θ μ) (i j : Fin d) :
    coeff (Finsupp.single (Sum.inl j) 1) (μ i) = if j = i then 1 else 0 := by
  classical
  have hu := congrArg (coeff (Finsupp.single j 1)) (congrFun h.unit i)
  simp only [op, at2] at hu
  rw [GlobalTheory.FormalCalc.coeff_single_subst (fun s => by cases s <;> simp), Fintype.sum_sum_type] at hu
  simpa [coeff_X, Finsupp.single_left_inj] using hu

theorem coeff_inr {B O : Type} [CommRing B] [CommRing O] {θ : B →+* O} {d : ℕ}
    {μ : Fin d → MvPowerSeries (Fin d ⊕ Fin d) B} (h : IsLift θ μ) (i j : Fin d) :
    coeff (Finsupp.single (Sum.inr j) 1) (μ i) = if j = i then 1 else 0 := by
  classical
  have hc := congrArg (coeff (Finsupp.single (Sum.inr j) 1)) (h.comm i)
  simp only [swap, at2] at hc
  rw [GlobalTheory.FormalCalc.coeff_single_subst (fun s => by cases s <;> simp), Fintype.sum_sum_type] at hc
  rw [← hc, ← coeff_inl h i j]
  simp [coeff_X, Finsupp.single_left_inj]

theorem coeff_lift_low {B O : Type} [CommRing B] [CommRing O] {θ : B →+* O} {d : ℕ}
    {μ : Fin d → MvPowerSeries (Fin d ⊕ Fin d) B} (h : IsLift θ μ) (i : Fin d)
    (α : Fin d ⊕ Fin d →₀ ℕ) (hα : α.degree ≤ 1) :
    coeff α (μ i) = if α = Finsupp.single (Sum.inl i) 1 ∨ α = Finsupp.single (Sum.inr i) 1
      then 1 else 0 := by
  classical
  rcases Nat.le_one_iff_eq_zero_or_eq_one.1 hα with h0 | h1
  · rw [(Finsupp.degree_eq_zero_iff α).1 h0, coeff_zero_eq_constantCoeff_apply, h.const, if_neg]
    rintro (h | h) <;> exact Finsupp.single_ne_zero.2 one_ne_zero h.symm
  · obtain ⟨s, rfl⟩ := GlobalTheory.Katz.LowLaw.eq_single_of_degree_eq_one h1
    rcases s with j | j
    · rw [coeff_inl h]; simp [Finsupp.single_left_inj]
    · rw [coeff_inr h]; simp [Finsupp.single_left_inj]

end GlobalTheory.CobHom

namespace GlobalTheory.CobHom

end GlobalTheory.CobHom
