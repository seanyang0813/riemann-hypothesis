module

public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Mathlib.NumberTheory.Multiplicity
public import Formalism.SharpRestriction.LevelLetterCocycles.FirstFrameStepImplication
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SumIocPadicValNatAddFactorial, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.KapPiPf

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SumIocPadicValNatAddFactorial =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SumIocPadicValNatAddFactorial", "h": "module\n\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.Multiplicity\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace DualFramesAlt.Val

open scoped BigOperators

section SlopeTestRemainingChoices

variable {p : ℕ} [hp : Fact p.Prime]

private theorem not_prime_dvd_padicInt_unit (w : ℤ_[p]ˣ) : ¬ (p : ℤ_[p]) ∣ (w : ℤ_[p]) :=
  fun h => PadicInt.prime_p.not_unit (isUnit_of_dvd_unit h (Units.isUnit _))

lemma emult_eq_valuation {x : ℤ_[p]} (hx : x ≠ 0) :
    emultiplicity (p : ℤ_[p]) x = x.valuation := by
  have hP : Prime (p : ℤ_[p]) := PadicInt.prime_p
  conv_lhs => rw [PadicInt.unitCoeff_spec hx]
  rw [emultiplicity_mul hP, emultiplicity_eq_zero.mpr (not_prime_dvd_padicInt_unit _), zero_add,
    emultiplicity_pow_self_of_prime hP]

lemma valuation_eq_of_emult {x : ℤ_[p]} {n : ℕ} (h : emultiplicity (p : ℤ_[p]) x = n) :
    x.valuation = n := by
  have hx : x ≠ 0 := by
    rintro rfl
    simp at h
  rw [emult_eq_valuation hx] at h
  exact_mod_cast h

lemma emult_of_valuation_one {x : ℤ_[p]} (hx : x ≠ 0) (h1 : x.valuation = 1) :
    emultiplicity (p : ℤ_[p]) x = 1 := by
  rw [emult_eq_valuation hx, h1, Nat.cast_one]

lemma p_dvd_of_valuation_one {x : ℤ_[p]} (hx : x ≠ 0) (h1 : x.valuation = 1) :
    (p : ℤ_[p]) ∣ x := by
  have h := emult_of_valuation_one hx h1
  by_contra hn
  rw [emultiplicity_eq_zero.mpr hn] at h
  exact zero_ne_one h

lemma not_dvd_of_dvd_sub_one {u : ℤ_[p]} (h : (p : ℤ_[p]) ∣ u - 1) : ¬ (p : ℤ_[p]) ∣ u := by
  intro hu
  have h1 : (p : ℤ_[p]) ∣ 1 := by simpa using dvd_sub hu h
  exact PadicInt.prime_p.not_unit (isUnit_of_dvd_one h1)

lemma dvd_of_natCast_dvd_natCast {m : ℕ} (h : (p : ℤ_[p]) ∣ (m : ℤ_[p])) : p ∣ m := by
  have h1 := (PadicInt.norm_lt_one_iff_dvd _).mpr h
  have h2 : ‖((m : ℤ) : ℤ_[p])‖ < 1 := by simpa using h1
  exact Int.natCast_dvd_natCast.mp ((PadicInt.norm_int_lt_one_iff_dvd _).mp h2)

lemma emult_pow_sub_one (hodd : p ≠ 2) {u : ℤ_[p]} (hdvd : (p : ℤ_[p]) ∣ u - 1)
    (he : emultiplicity (p : ℤ_[p]) (u - 1) = 1) {k : ℕ} (hk : k ≠ 0) :
    emultiplicity (p : ℤ_[p]) (u ^ k - 1) = ((1 + padicValNat p k : ℕ) : ℕ∞) := by
  have hP : Prime (p : ℤ_[p]) := PadicInt.prime_p
  have hp1 : Odd p := hp.out.odd_of_ne_two hodd
  have hu : ¬ (p : ℤ_[p]) ∣ u := not_dvd_of_dvd_sub_one hdvd
  obtain ⟨e, m, hm, rfl⟩ := Nat.exists_eq_pow_mul_and_not_dvd hk p hp.out.ne_one
  have hm0 : m ≠ 0 := by
    rintro rfl
    exact hm (dvd_zero p)
  have hval : padicValNat p (p ^ e * m) = e := by
    rw [Nat.padicValNat_def, Nat.multiplicity_mul (pow_ne_zero _ hp.out.ne_zero) hm0,
      Nat.multiplicity_prime_pow, multiplicity_eq_zero_of_not_dvd hm, add_zero]
  have h1 : emultiplicity (p : ℤ_[p]) (u ^ p ^ e - 1 ^ p ^ e) = 1 + e := by
    rw [emultiplicity_pow_prime_pow_sub_pow_prime_pow hP hp1 hdvd hu e, he]
  rw [one_pow] at h1
  have hx : ¬ (p : ℤ_[p]) ∣ u ^ p ^ e := fun h => hu (hP.dvd_of_dvd_pow h)
  have hxy : (p : ℤ_[p]) ∣ u ^ p ^ e - 1 := by
    have h2 := sub_dvd_pow_sub_pow u 1 (p ^ e)
    rw [one_pow] at h2
    exact hdvd.trans h2
  have hmR : ¬ (p : ℤ_[p]) ∣ (m : ℤ_[p]) := fun h => hm (dvd_of_natCast_dvd_natCast h)
  have key : emultiplicity (p : ℤ_[p]) ((u ^ p ^ e) ^ m - 1 ^ m)
      = emultiplicity (p : ℤ_[p]) (u ^ p ^ e - 1) :=
    emultiplicity_pow_sub_pow_of_prime hP hxy hx hmR
  rw [one_pow, ← pow_mul] at key
  rw [key, h1, hval]
  norm_cast

lemma emult_zpow_sub_one (hodd : p ≠ 2) (u : ℤ_[p]ˣ) (hdvd : (p : ℤ_[p]) ∣ (u : ℤ_[p]) - 1)
    (he : emultiplicity (p : ℤ_[p]) ((u : ℤ_[p]) - 1) = 1) {i : ℤ} (hi : i ≠ 0) :
    emultiplicity (p : ℤ_[p]) (((u ^ i : ℤ_[p]ˣ) : ℤ_[p]) - 1)
      = ((1 + padicValNat p i.natAbs : ℕ) : ℕ∞) := by
  have hP : Prime (p : ℤ_[p]) := PadicInt.prime_p
  obtain ⟨n, rfl | rfl⟩ := Int.eq_nat_or_neg i
  · have hn : n ≠ 0 := by
      rintro rfl
      exact hi (by simp)
    have hab : ((n : ℤ)).natAbs = n := by simp
    rw [hab, zpow_natCast, Units.val_pow_eq_pow_val]
    exact emult_pow_sub_one hodd hdvd he hn
  · have hn : n ≠ 0 := by
      rintro rfl
      exact hi (by simp)
    have hab : (-(n : ℤ)).natAbs = n := by simp
    have h1 : (((u ^ n)⁻¹ : ℤ_[p]ˣ) : ℤ_[p]) * (u : ℤ_[p]) ^ n = 1 := by
      rw [← Units.val_pow_eq_pow_val, Units.inv_mul]
    have hrw : (((u ^ (-(n : ℤ))) : ℤ_[p]ˣ) : ℤ_[p]) - 1
        = (((u ^ n)⁻¹ : ℤ_[p]ˣ) : ℤ_[p]) * -((u : ℤ_[p]) ^ n - 1) := by
      rw [zpow_neg, zpow_natCast]
      linear_combination h1
    rw [hab, hrw, emultiplicity_mul hP, emultiplicity_eq_zero.mpr (not_prime_dvd_padicInt_unit _), zero_add,
      emultiplicity_neg]
    exact emult_pow_sub_one hodd hdvd he hn

end SlopeTestRemainingChoices

theorem val_prod_one_sub_zpow {p : ℕ} [Fact p.Prime] (hodd : p ≠ 2)
    (u : ℤ_[p]ˣ) (hu1 : ((u : ℤ_[p]) - 1).valuation = 1) (hu0 : (u : ℤ_[p]) - 1 ≠ 0)
    (Ω : Finset ℤ) (h0 : (0 : ℤ) ∉ Ω) :
    (∏ i ∈ Ω, (1 - ((u ^ i : ℤ_[p]ˣ) : ℤ_[p]))).valuation
      = ∑ i ∈ Ω, (1 + padicValNat p i.natAbs) := by
  have hP : Prime (p : ℤ_[p]) := PadicInt.prime_p
  have hdvd := p_dvd_of_valuation_one hu0 hu1
  have he := emult_of_valuation_one hu0 hu1
  have key : ∀ i ∈ Ω, emultiplicity (p : ℤ_[p]) (1 - ((u ^ i : ℤ_[p]ˣ) : ℤ_[p]))
      = ((1 + padicValNat p i.natAbs : ℕ) : ℕ∞) := by
    intro i hi
    rw [← neg_sub, emultiplicity_neg]
    exact emult_zpow_sub_one hodd u hdvd he (fun h => h0 (h ▸ hi))
  apply valuation_eq_of_emult
  rw [Finset.emultiplicity_prod hP, Finset.sum_congr rfl key, Nat.cast_sum]

end DualFramesAlt.Val
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SumIocPadicValNatAddFactorial =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.KapPiPf =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.KapPiPf", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FirstFrameStepImplication\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.SumIocPadicValNatAddFactorial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules

theorem kapPiPf_natCast_le {a b : ℕ} (h : ((a : ℕ) : WithTop ℚ) ≤ ((b : ℕ) : WithTop ℚ)) : a ≤ b := by
  have h' : ((a : ℚ) : WithTop ℚ) ≤ ((b : ℚ) : WithTop ℚ) := by
    simpa only [WithTop.coe_natCast] using h
  exact_mod_cast WithTop.coe_le_coe.mp h'

theorem kapPiPf_sum_biUnion_le {ι : Type*} [DecidableEq ι] (s : Finset ι) (t : ι → Finset ℤ)
    (f : ℤ → ℕ) : ∑ i ∈ s.biUnion t, f i ≤ ∑ τ ∈ s, ∑ i ∈ t τ, f i := by
  refine Finset.induction_on s (by simp) ?_
  intro a s ha ih
  rw [Finset.biUnion_insert, Finset.sum_insert ha]
  have h1 := Finset.sum_union_inter (s₁ := t a) (s₂ := s.biUnion t) (f := f)
  omega

private lemma sum_padicValNat_eq_padicValNat_descFactorial (p : ℕ) [Fact p.Prime] (m S : ℕ) :
    ∑ j ∈ Finset.range S, padicValNat p (m + 1 + j) = padicValNat p ((m + S).descFactorial S) := by
  induction S with
  | zero => simp [Nat.padicValNat_def]
  | succ S ih =>
    rw [Finset.sum_range_succ, ih, show m + (S + 1) = (m + S) + 1 by omega,
      Nat.succ_descFactorial_succ,
      (show ∀ {p a b : ℕ} [_root_.Fact (_root_.Nat.Prime p)], a ≠ 0 → b ≠ 0 → _root_.padicValNat p (a * b) = _root_.padicValNat p a + _root_.padicValNat p b from by simpa only [← _root_.Nat.padicValNat_def] using @_root_.Nat.multiplicity_mul) (by omega) (fun h => by rw [Nat.descFactorial_eq_zero_iff_lt] at h; omega),
      show m + 1 + S = m + S + 1 by omega]
    omega

private lemma padicValNat_descFactorial_le_factorial_add_log (p : ℕ) [hp : Fact p.Prime] (m S : ℕ) :
    padicValNat p ((m + S).descFactorial S) ≤ padicValNat p S.factorial + Nat.log p (m + S) := by
  rw [Nat.descFactorial_eq_factorial_mul_choose,
    (show ∀ {p a b : ℕ} [_root_.Fact (_root_.Nat.Prime p)], a ≠ 0 → b ≠ 0 → _root_.padicValNat p (a * b) = _root_.padicValNat p a + _root_.padicValNat p b from by simpa only [← _root_.Nat.padicValNat_def] using @_root_.Nat.multiplicity_mul) (Nat.factorial_ne_zero S) (Nat.choose_pos (by omega)).ne']
  have h := Nat.factorization_choose_le_log (p := p) (n := m + S) (k := S)
  rw [Nat.factorization_def _ hp.out, ← Nat.padicValNat_def] at h
  omega

private lemma sum_one_add_padicValNat_image_le (p : ℕ) [Fact p.Prime] (S h' m : ℕ) (e : ℕ → ℤ)
    (he : ∀ j, (e j).natAbs = m + 1 + j) (hm : m + S ≤ h') :
    ∑ i ∈ (Finset.range S).image e, (1 + padicValNat p i.natAbs) ≤
      S + padicValNat p S.factorial + Nat.log p h' := by
  rw [Finset.sum_image (by
    intro x _ y _ hxy
    have h1 := he x
    have h2 := he y
    rw [hxy] at h1
    omega)]
  simp only [he]
  rw [Finset.sum_add_distrib, Finset.sum_const, Finset.card_range, smul_eq_mul, mul_one,
    sum_padicValNat_eq_padicValNat_descFactorial]
  have h1 := padicValNat_descFactorial_le_factorial_add_log p m S
  have h2 : Nat.log p (m + S) ≤ Nat.log p h' := Nat.log_mono_right hm
  omega

theorem kapPiPf_sum {ι : Type*} [Fintype ι] (p : ℕ) [Fact p.Prime] (up : ι → Bool) (b : ι → ℕ)
    (S h' : ℕ) (hb : ∀ τ, 0 < b τ) (hbh : ∀ τ, b τ + S ≤ h') (Ω : Finset ℤ)
    (hΩ : ∀ i ∈ Ω, ∃ τ, (up τ = true ∧ -((b τ : ℤ) + S) ≤ i ∧ i < -(b τ : ℤ)) ∨
      (up τ = false ∧ (b τ : ℤ) ≤ i ∧ i < b τ + S)) :
    ∑ i ∈ Ω, (1 + padicValNat p i.natAbs) ≤
      Fintype.card ι * (S + padicValNat p S.factorial + Nat.log p h') := by
  classical
  let e : ι → ℕ → ℤ := fun τ j =>
    if up τ = true then -(((b τ + 1 + j : ℕ)) : ℤ) else ((b τ + j : ℕ) : ℤ)
  have hsub : Ω ⊆ (Finset.univ : Finset ι).biUnion (fun τ => (Finset.range S).image (e τ)) := by
    intro i hi
    obtain ⟨τ, hτ⟩ := hΩ i hi
    rw [Finset.mem_biUnion]
    refine ⟨τ, Finset.mem_univ _, ?_⟩
    rw [Finset.mem_image]
    rcases hτ with ⟨hu, h1, h2⟩ | ⟨hu, h1, h2⟩
    · refine ⟨(-i - (b τ : ℤ) - 1).toNat, Finset.mem_range.mpr (by omega), ?_⟩
      simp only [e, hu, ↓reduceIte]
      push_cast
      omega
    · refine ⟨(i - (b τ : ℤ)).toNat, Finset.mem_range.mpr (by omega), ?_⟩
      simp only [e, hu, Bool.false_eq_true, ↓reduceIte]
      push_cast
      omega
  have hwin : ∀ τ, ∑ i ∈ (Finset.range S).image (e τ), (1 + padicValNat p i.natAbs) ≤
      S + padicValNat p S.factorial + Nat.log p h' := by
    intro τ
    have hb0 := hb τ
    have hbh0 := hbh τ
    refine sum_one_add_padicValNat_image_le p S h' (if up τ = true then b τ else b τ - 1) (e τ) ?_ ?_
    · intro j
      simp only [e]
      split_ifs <;> simp <;> omega
    · split_ifs <;> omega
  calc ∑ i ∈ Ω, (1 + padicValNat p i.natAbs)
      ≤ ∑ i ∈ (Finset.univ : Finset ι).biUnion (fun τ => (Finset.range S).image (e τ)),
          (1 + padicValNat p i.natAbs) := Finset.sum_le_sum_of_subset hsub
    _ ≤ ∑ τ : ι, ∑ i ∈ (Finset.range S).image (e τ), (1 + padicValNat p i.natAbs) :=
        kapPiPf_sum_biUnion_le _ _ _
    _ ≤ ∑ _τ : ι, (S + padicValNat p S.factorial + Nat.log p h') :=
        Finset.sum_le_sum (fun τ _ => hwin τ)
    _ = Fintype.card ι * (S + padicValNat p S.factorial + Nat.log p h') := by
        rw [Finset.sum_const, Finset.card_univ, smul_eq_mul]

section KapPiPfLocal

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

theorem kapPiPf_card (W : LocWach PD LL O v n) [FiniteDimensional K₀ K] (c : ZMod n) :
    Nat.card {τ : K →ₐ[Qp] LL // Formalism.MainNotions.DeltaInvariantLattices.OverLetter W τ c} ≤ finrank K₀ K := by
  classical
  letI : Algebra K₀ LL := (W.emb c).toRingHom.toAlgebra
  let F : {τ : K →ₐ[Qp] LL // Formalism.MainNotions.DeltaInvariantLattices.OverLetter W τ c} → (K →ₐ[K₀] LL) := fun τ =>
    { (τ.1 : K →+* LL) with
      commutes' := fun x => by
        have hx := congrArg (fun f : K₀ →ₐ[Qp] LL => f x) τ.2
        exact hx }
  have hF : Function.Injective F := by
    intro a b hab
    apply Subtype.ext
    apply AlgHom.ext
    intro x
    exact congrArg (fun f : K →ₐ[K₀] LL => f x) hab
  have hli := linearIndependent_toLinearMap K₀ K LL
  haveI : Finite (K →ₐ[K₀] LL) := hli.finite
  letI := Fintype.ofFinite (K →ₐ[K₀] LL)
  have h2 : Fintype.card (K →ₐ[K₀] LL) ≤ finrank K₀ K := by
    have h3 := hli.fintype_card_le_finrank
    rwa [Module.finrank_linearMap_self] at h3
  calc Nat.card {τ : K →ₐ[Qp] LL // Formalism.MainNotions.DeltaInvariantLattices.OverLetter W τ c}
      ≤ Nat.card (K →ₐ[K₀] LL) := Nat.card_le_card_of_injective F hF
    _ = Fintype.card (K →ₐ[K₀] LL) := Nat.card_eq_fintype_card
    _ ≤ finrank K₀ K := h2

end KapPiPfLocal

theorem kapPiPf_uU {l : ℕ} [Fact l.Prime] (P : LocPrime l) (H : LocHW l P) (K LL : FinExt l)
    (hg : Good K 1 LL) :
    ∃ χ : ℤ_[l]ˣ, ((χ : ℤ_[l]) - 1).valuation = 1 ∧ (χ : ℤ_[l]) - 1 ≠ 0 ∧
      ∀ k : ℤ, ((((Formalism.MainNotions.DeltaInvariantLattices.uU (H.W K 1 LL hg)) ^ k : (↥(OL LL))ˣ) : ↥(OL LL))) =
        algebraMap ℤ_[l] ↥(OL LL) ((χ ^ k : ℤ_[l]ˣ) : ℤ_[l]) := by
  have hs : (H.W K 1 LL hg).s = 1 := H.W_s K 1 LL hg
  have hvunit : ∀ u : ℤ_[l]ˣ, P.v LL (algebraMap ℤ_[l] ↥LL.1 (u : ℤ_[l])) = 0 := by
    intro u
    have h1 : 0 ≤ P.v LL (algebraMap ℤ_[l] ↥LL.1 (u : ℤ_[l])) :=
      (P.v_O LL _).2 ((OL LL).algebraMap_mem _)
    have h2 : 0 ≤ P.v LL (algebraMap ℤ_[l] ↥LL.1 ((u⁻¹ : ℤ_[l]ˣ) : ℤ_[l])) :=
      (P.v_O LL _).2 ((OL LL).algebraMap_mem _)
    have h3 : P.v LL (algebraMap ℤ_[l] ↥LL.1 (u : ℤ_[l])) +
        P.v LL (algebraMap ℤ_[l] ↥LL.1 ((u⁻¹ : ℤ_[l]ˣ) : ℤ_[l])) = 0 := by
      rw [← AddValuation.map_mul, ← map_mul, Units.mul_inv, map_one, AddValuation.map_one]
    exact ((add_eq_zero_iff_of_nonneg h1 h2).1 h3).1
  have hvint : ∀ x : ℤ_[l], x ≠ 0 →
      P.v LL (algebraMap ℤ_[l] ↥LL.1 x) = ((x.valuation : ℕ) : WithTop ℚ) := by
    intro x hx
    conv_lhs => rw [PadicInt.unitCoeff_spec hx]
    rw [map_mul, AddValuation.map_mul, hvunit, zero_add, map_pow, map_natCast,
      AddValuation.map_pow, P.v_l LL]
    simp
  obtain ⟨g, hgg⟩ := (H.W K 1 LL hg).resΓ_onto (H.W K 1 LL hg).gam
  have hχ := (H.W K 1 LL hg).χΓ_res g
  rw [hgg] at hχ
  have hint : IsIntegral ℤ_[l] (algebraMap ℚ_[l] ↥LL.1 ((P.PD K).χ g : ℚ_[l])) := by
    rw [← hχ]
    exact (((H.W K 1 LL hg).χΓ (H.W K 1 LL hg).gam : (↥(OL LL))ˣ) : ↥(OL LL)).2
  have hint' : IsIntegral ℤ_[l] ((P.PD K).χ g : ℚ_[l]) :=
    (isIntegral_algebraMap_iff ).1 hint
  obtain ⟨z, hz⟩ := IsIntegrallyClosed.isIntegral_iff.1 hint'
  have hzLL : algebraMap ℤ_[l] ↥LL.1 z = algebraMap ↥(OL LL) ↥LL.1
      (((H.W K 1 LL hg).χΓ (H.W K 1 LL hg).gam : (↥(OL LL))ˣ) : ↥(OL LL)) := by
    rw [hχ, ← hz, ← IsScalarTower.algebraMap_apply]
  have hgen := (H.W K 1 LL hg).gam_gen
  rw [hs, ← hzLL] at hgen
  have hz1 : z - 1 ≠ 0 := by
    intro h0
    have : algebraMap ℤ_[l] ↥LL.1 z - 1 = 0 := by
      rw [← map_one (algebraMap ℤ_[l] ↥LL.1), ← map_sub, h0, map_zero]
    rw [this, AddValuation.map_zero] at hgen
    exact WithTop.top_ne_natCast 1 hgen
  have hval : (z - 1).valuation = 1 := by
    have h1 := hvint (z - 1) hz1
    rw [map_sub, map_one, hgen] at h1
    exact le_antisymm (kapPiPf_natCast_le h1.ge) (kapPiPf_natCast_le h1.le)
  have hzu : IsUnit z := by
    rcases IsLocalRing.isUnit_or_isUnit_of_add_one (show z + (1 - z) = 1 by ring) with h | h
    · exact h
    · exfalso
      obtain ⟨u, hu⟩ := h
      have h1 := hvunit u
      have h2 : algebraMap ℤ_[l] ↥LL.1 (1 - z) = -(algebraMap ℤ_[l] ↥LL.1 z - 1) := by
        rw [map_sub, map_one]; ring
      rw [hu, h2, AddValuation.map_neg, hgen] at h1
      have h3 : (1 : ℕ) ≤ 0 := kapPiPf_natCast_le (by rw [h1]; simp)
      omega
  obtain ⟨χ, rfl⟩ := hzu
  refine ⟨χ, hval, hz1, fun k => ?_⟩
  have e1 : Units.map (algebraMap ↥(OL LL) ↥LL.1 : ↥(OL LL) →* ↥LL.1)
      ((H.W K 1 LL hg).χΓ (H.W K 1 LL hg).gam) =
      Units.map (algebraMap ℤ_[l] ↥LL.1 : ℤ_[l] →* ↥LL.1) χ := Units.ext hzLL.symm
  have e2 : Units.map (algebraMap ↥(OL LL) ↥LL.1 : ↥(OL LL) →* ↥LL.1)
      (((H.W K 1 LL hg).χΓ (H.W K 1 LL hg).gam) ^ k) =
      Units.map (algebraMap ℤ_[l] ↥LL.1 : ℤ_[l] →* ↥LL.1) (χ ^ k) := by
    rw [map_zpow, map_zpow, e1]
  have e3 := congrArg Units.val e2
  have e4 : algebraMap ↥(OL LL) ↥LL.1
      (((Formalism.MainNotions.DeltaInvariantLattices.uU (H.W K 1 LL hg)) ^ k : (↥(OL LL))ˣ) : ↥(OL LL)) =
      algebraMap ↥(OL LL) ↥LL.1 (algebraMap ℤ_[l] ↥(OL LL) ((χ ^ k : ℤ_[l]ˣ) : ℤ_[l])) := by
    rw [← IsScalarTower.algebraMap_apply]
    exact e3
  exact Subtype.val_injective e4

theorem kapPiPf_main {l : ℕ} [Fact l.Prime] (hl : l ≠ 2) (P : LocPrime l) (H : LocHW l P)
    (K LL : FinExt l) (hg : Good K 1 LL) (h' S : ℕ) (up : (↥K.1 →ₐ[ℚ_[l]] ↥LL.1) → Bool)
    (b : (↥K.1 →ₐ[ℚ_[l]] ↥LL.1) → ℕ) (c : ZMod (finrank ℚ_[l] ↥(K0 K)))
    (hb : ∀ τ, 0 < b τ) (hbh : ∀ τ, b τ + S ≤ h') :
    KapPi (H.W K 1 LL hg) c S h' (kapA l (eK K) h' S) up b := by
  obtain ⟨χ, hv1, hv0, hpow⟩ := kapPiPf_uU P H K LL hg
  have : FiniteDimensional ℚ_[l] ↥K.1 := K.2
  have : FiniteDimensional ↥(K0 K) ↥K.1 := FiniteDimensional.right ℚ_[l] ↥(K0 K) ↥K.1
  haveI : Fintype {τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1 // Formalism.MainNotions.DeltaInvariantLattices.OverLetter (H.W K 1 LL hg) τ c} :=
    Fintype.ofFinite _
  have hΩ : ∀ i ∈ OmF (H.W K 1 LL hg) c S h' up b,
      ∃ τ : {τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1 // Formalism.MainNotions.DeltaInvariantLattices.OverLetter (H.W K 1 LL hg) τ c},
        (up τ.1 = true ∧ -((b τ.1 : ℤ) + S) ≤ i ∧ i < -(b τ.1 : ℤ)) ∨
        (up τ.1 = false ∧ (b τ.1 : ℤ) ≤ i ∧ i < b τ.1 + S) := by
    intro i hi
    unfold OmF at hi
    simp only [Finset.mem_filter] at hi
    obtain ⟨-, τ, hτ, h⟩ := hi
    exact ⟨⟨τ, hτ⟩, h⟩
  have h0 : (0 : ℤ) ∉ OmF (H.W K 1 LL hg) c S h' up b := by
    intro hi
    obtain ⟨τ, h⟩ := hΩ 0 hi
    have := hb τ.1
    omega
  have hsum := kapPiPf_sum
    (ι := {τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1 // Formalism.MainNotions.DeltaInvariantLattices.OverLetter (H.W K 1 LL hg) τ c}) l (fun τ => up τ.1) (fun τ => b τ.1) S h' (fun τ => hb τ.1)
    (fun τ => hbh τ.1) _ hΩ
  have hcard : Fintype.card
      {τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1 // Formalism.MainNotions.DeltaInvariantLattices.OverLetter (H.W K 1 LL hg) τ c} ≤ eK K := by
    rw [Fintype.card_eq_nat_card]
    exact kapPiPf_card (H.W K 1 LL hg) c
  obtain ⟨X, hXd⟩ : ∃ X : ℤ_[l],
      ∏ i ∈ OmF (H.W K 1 LL hg) c S h' up b, (1 - ((χ ^ i : ℤ_[l]ˣ) : ℤ_[l])) = X := ⟨_, rfl⟩
  have hXval : X.valuation = ∑ i ∈ OmF (H.W K 1 LL hg) c S h' up b, (1 + padicValNat l i.natAbs) := by
    rw [← hXd]
    exact DualFramesAlt.Val.val_prod_one_sub_zpow hl χ hv1 hv0 _ h0
  have hX0 : X ≠ 0 := by
    rw [← hXd, Finset.prod_ne_zero_iff]
    intro i hi h
    have hi0 : i ≠ 0 := fun h2 => h0 (h2 ▸ hi)
    have he := DualFramesAlt.Val.emult_zpow_sub_one hl χ (DualFramesAlt.Val.p_dvd_of_valuation_one hv0 hv1)
      (DualFramesAlt.Val.emult_of_valuation_one hv0 hv1) hi0
    rw [sub_eq_zero.2 (sub_eq_zero.1 h).symm, emultiplicity_zero] at he
    exact ENat.top_ne_natCast _ he
  obtain ⟨V, hV⟩ : ∃ V : ℕ, X.valuation = V := ⟨_, rfl⟩
  have hVκ : V ≤ kapA l (eK K) h' S := by
    rw [← hV, hXval]
    unfold kapA
    exact hsum.trans (Nat.mul_le_mul_right _ hcard)
  obtain ⟨w, hw⟩ : ∃ w : ℤ_[l]ˣ, X = (w : ℤ_[l]) * (l : ℤ_[l]) ^ V :=
    ⟨_, by rw [← hV]; exact PadicInt.unitCoeff_spec hX0⟩
  have key : (w⁻¹ : ℤ_[l]ˣ) * (l : ℤ_[l]) ^ (kapA l (eK K) h' S - V) * X =
      (l : ℤ_[l]) ^ kapA l (eK K) h' S := by
    conv_lhs => rw [hw]
    rw [show (w⁻¹ : ℤ_[l]ˣ) * (l : ℤ_[l]) ^ (kapA l (eK K) h' S - V) *
        (((w : ℤ_[l]ˣ) : ℤ_[l]) * (l : ℤ_[l]) ^ V) =
        (((w⁻¹ : ℤ_[l]ˣ) : ℤ_[l]) * ((w : ℤ_[l]ˣ) : ℤ_[l])) *
        ((l : ℤ_[l]) ^ (kapA l (eK K) h' S - V) * (l : ℤ_[l]) ^ V) by ring,
      Units.inv_mul, one_mul, ← pow_add, Nat.sub_add_cancel hVκ]
  have hpi : piOm1 (H.W K 1 LL hg) c S h' up b = algebraMap ℤ_[l] ↥(OL LL) X := by
    unfold piOm1
    rw [← hXd, map_prod]
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [map_sub, map_one, hpow i]
  refine ⟨algebraMap ℤ_[l] ↥(OL LL)
    (((w⁻¹ : ℤ_[l]ˣ) : ℤ_[l]) * (l : ℤ_[l]) ^ (kapA l (eK K) h' S - V)), ?_⟩
  rw [hpi, ← map_mul, key, map_pow, map_natCast, P.PD_p K]

theorem kappi_pf : KapPiStep := by
  intro D HW F Cm CA CB CK _ l _ hl K LL hG π' E _ h' S up b c hb hbh
  exact kapPiPf_main hl _ (HW l) K LL hG h' S up b c hb hbh

end Formalism.MainNotions.N.Ln34

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.KapPiPf =====
