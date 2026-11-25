module

public import Mathlib.NumberTheory.Padics.RingHoms
public import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots
public import Mathlib.RingTheory.SimpleRing.Principal
public import Mathlib.NumberTheory.Multiplicity
public import Mathlib.RingTheory.ZMod.UnitsCyclic
public import Formalism.DistinguishedUnitIdeals.GammaCongruentArcFromStart
public import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ConstSectionStatement
public import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.PsCycloStatement
public import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ConstantCoeffAeval
public import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.PowValMemPrimitiveRoots
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots
public import Formalism.SharpRestriction.LevelLetterCocycles.RingConditionOfDeltaInvariants
public import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Graded
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.EmultiplicityEqValuation, Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.LinkRing, Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.EmultiplicityEqValuation =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.EmultiplicityEqValuation", "h": "module\n\npublic import Mathlib.NumberTheory.Padics.RingHoms\npublic import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots\npublic import Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.Multiplicity\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\npublic import Mathlib.RingTheory.ZMod.UnitsCyclic\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LevelStatements.Ln03

open Polynomial

variable {l : ℕ} [Fact l.Prime]

theorem pow_dvd_iff_le_valuation (x : ℤ_[l]) (hx : x ≠ 0) (n : ℕ) :
    (l : ℤ_[l]) ^ n ∣ x ↔ n ≤ x.valuation := by
  first
  | (rw [← Ideal.mem_span_singleton]; exact PadicInt.mem_span_pow_iff_le_valuation x hx n)

theorem emultiplicity_prime_eq_valuation (x : ℤ_[l]) (hx : x ≠ 0) :
    emultiplicity (l : ℤ_[l]) x = x.valuation := by
  rw [emultiplicity_eq_coe]
  refine ⟨(pow_dvd_iff_le_valuation x hx _).2 le_rfl, fun h => ?_⟩
  have := (pow_dvd_iff_le_valuation x hx _).1 h
  omega

theorem not_dvd_natCast (b : ℕ) (hb : ¬ l ∣ b) : ¬ (l : ℤ_[l]) ∣ (b : ℤ_[l]) := by
  intro h
  apply hb
  obtain ⟨c, hc⟩ := h
  have h2 := congrArg (PadicInt.toZMod : ℤ_[l] →+* ZMod l) hc
  simp only [map_natCast, map_mul, CharP.cast_eq_zero, zero_mul] at h2
  exact (CharP.cast_eq_zero_iff (ZMod l) l b).1 h2

theorem toZModPow_eq_one_iff (k : ℕ) (x : ℤ_[l]) (hx : x - 1 ≠ 0) :
    PadicInt.toZModPow k x = 1 ↔ k ≤ (x - 1).valuation := by
  have h1 : PadicInt.toZModPow k x = 1 ↔ PadicInt.toZModPow k (x - 1) = 0 := by
    rw [map_sub, map_one, sub_eq_zero]
  rw [h1, ← RingHom.mem_ker, PadicInt.ker_toZModPow, Ideal.mem_span_singleton,
    pow_dvd_iff_le_valuation _ hx]

theorem factV (hl2 : l ≠ 2) (u : ℤ_[l]) (hu : (u - 1).valuation = 1) (m : ℕ) (hm : m ≠ 0) :
    (u ^ m - 1).valuation = 1 + padicValNat l m := by
  have hl := (Fact.out : l.Prime)
  have hprime : Prime (l : ℤ_[l]) := PadicInt.prime_p
  have hu0 : u - 1 ≠ 0 := by
    intro h
    rw [h, PadicInt.valuation_zero] at hu
    omega
  have hdvd : (l : ℤ_[l]) ∣ u - 1 := by
    have := (pow_dvd_iff_le_valuation (u - 1) hu0 1).2 (by rw [hu])
    rwa [pow_one] at this
  have hndvd : ¬ (l : ℤ_[l]) ∣ u := by
    intro h
    have h1 : (l : ℤ_[l]) ∣ 1 := by
      have := dvd_sub h hdvd
      rwa [sub_sub_cancel] at this
    exact hprime.not_unit (isUnit_of_dvd_one h1)
  have hodd : Odd l := hl.odd_of_ne_two hl2
  obtain ⟨e, m', hm', rfl⟩ := Nat.exists_eq_pow_mul_and_not_dvd hm l hl.ne_one
  have hm'0 : m' ≠ 0 := by
    rintro rfl
    exact hm' (dvd_zero l)
  have hval : padicValNat l (l ^ e * m') = e := by
    rw [(show ∀ {p a b : ℕ} [_root_.Fact (_root_.Nat.Prime p)], a ≠ 0 → b ≠ 0 → _root_.padicValNat p (a * b) = _root_.padicValNat p a + _root_.padicValNat p b from by simpa only [← _root_.Nat.padicValNat_def] using @_root_.Nat.multiplicity_mul) (pow_ne_zero _ hl.ne_zero) hm'0, (show padicValNat l (l ^ e) = e from by
        simpa only [← Nat.padicValNat_def] using (Nat.multiplicity_prime_pow e)),
      (show padicValNat l m' = 0 from by
        simpa only [← Nat.padicValNat_def] using (multiplicity_eq_zero_of_not_dvd hm')), add_zero]
  rw [hval]
  have hE1 : emultiplicity (l : ℤ_[l]) (u ^ (l ^ e) - 1) =
      emultiplicity (l : ℤ_[l]) (u - 1) + e := by
    have h : emultiplicity (l : ℤ_[l]) (u ^ (l ^ e) - 1 ^ (l ^ e)) =
        emultiplicity (l : ℤ_[l]) (u - 1) + e := by
      first
      | exact emultiplicity_pow_prime_pow_sub_pow_prime_pow hprime hodd hdvd hndvd e
    rwa [one_pow] at h
  have hE2 : emultiplicity (l : ℤ_[l]) ((u ^ (l ^ e)) ^ m' - 1) =
      emultiplicity (l : ℤ_[l]) (u ^ (l ^ e) - 1) := by
    have hx1 : (l : ℤ_[l]) ∣ u ^ (l ^ e) - 1 := by
      have := sub_dvd_pow_sub_pow u 1 (l ^ e)
      rw [one_pow] at this
      exact hdvd.trans this
    have hx2 : ¬ (l : ℤ_[l]) ∣ u ^ (l ^ e) := fun h => hndvd (hprime.dvd_of_dvd_pow h)
    have hx3 : ¬ (l : ℤ_[l]) ∣ (m' : ℤ_[l]) := not_dvd_natCast m' hm'
    have h : emultiplicity (l : ℤ_[l]) ((u ^ (l ^ e)) ^ m' - 1 ^ m') =
        emultiplicity (l : ℤ_[l]) (u ^ (l ^ e) - 1) := by
      first
      | exact emultiplicity_pow_sub_pow_of_prime hprime hx1 hx2 hx3
    rwa [one_pow] at h
  have htot : emultiplicity (l : ℤ_[l]) (u ^ (l ^ e * m') - 1) = ((1 + e : ℕ) : ℕ∞) := by
    rw [pow_mul, hE2, hE1, emultiplicity_prime_eq_valuation _ hu0, hu]
    first
    | norm_cast
  have hne : u ^ (l ^ e * m') - 1 ≠ 0 := by
    intro h
    rw [h, emultiplicity_zero] at htot
    first
    | exact ENat.top_ne_coe _ htot
  rw [emultiplicity_prime_eq_valuation _ hne] at htot
  exact_mod_cast htot

theorem orderOf_u (hl2 : l ≠ 2) (u : ℤ_[l]) (hu : (u - 1).valuation = 1) (s : ℕ) :
    orderOf (PadicInt.toZModPow (s + 1) u) = l ^ s := by
  have hl := (Fact.out : l.Prime)
  have key : ∀ j : ℕ, (PadicInt.toZModPow (s + 1) u) ^ (l ^ j) = 1 ↔ s ≤ j := by
    intro j
    have hv := factV hl2 u hu (l ^ j) (pow_ne_zero _ hl.ne_zero)
    rw [(show padicValNat l (l ^ j) = j from by
      simpa only [← Nat.padicValNat_def] using (Nat.multiplicity_prime_pow j))] at hv
    have hne : u ^ (l ^ j) - 1 ≠ 0 := by
      intro h
      rw [h, PadicInt.valuation_zero] at hv
      omega
    rw [← map_pow, toZModPow_eq_one_iff _ _ hne, hv]
    omega
  cases s with
  | zero =>
    rw [pow_zero]
    exact orderOf_eq_one_iff.mpr ((pow_one _).symm.trans
      (by simpa only [pow_zero] using (key 0).2 le_rfl))
  | succ n =>
    apply orderOf_eq_prime_pow
    · rw [key]
      omega
    · exact (key (n + 1)).2 le_rfl

variable {LL : Type*} [Field LL] [CharZero LL]

theorem isPrimitiveRoot_pow_eq_pow_iff_zmod_eq {N : ℕ} [NeZero N] {ξ : LL} (hξ : IsPrimitiveRoot ξ N) (a b : ℕ) :
    ξ ^ a = ξ ^ b ↔ (a : ZMod N) = b := by
  have hN : 0 < N := Nat.pos_of_ne_zero (NeZero.ne N)
  have hmod : ∀ c : ℕ, ξ ^ c = ξ ^ (c % N) := fun c => by
    conv_lhs => rw [← Nat.div_add_mod c N, pow_add, pow_mul, hξ.pow_eq_one, one_pow, one_mul]
  have hz : (a : ZMod N) = b ↔ a % N = b % N := by
    first
    | exact ZMod.natCast_eq_natCast_iff' a b N
  rw [hz, hmod a, hmod b]
  exact ⟨fun h => hξ.pow_inj (Nat.mod_lt _ hN) (Nat.mod_lt _ hN) h, fun h => by rw [h]⟩

private theorem mem_primitiveRoots_iff_isPrimitiveRoot {k : ℕ} (h0 : 0 < k) {ζ : LL} :
    ζ ∈ primitiveRoots k LL ↔ IsPrimitiveRoot ζ k := by
  first
  | exact mem_primitiveRoots h0

theorem pow_mem_Rs (s : ℕ) (a : (ZMod (l ^ (s + 1)))ˣ) {ξ : LL}
    (hξ : ξ ∈ primitiveRoots (l ^ (s + 1)) LL) :
    ξ ^ (a : ZMod (l ^ (s + 1))).val ∈ primitiveRoots (l ^ (s + 1)) LL := by
  have h0 : 0 < l ^ (s + 1) := pow_pos (Fact.out : l.Prime).pos _
  rw [mem_primitiveRoots_iff_isPrimitiveRoot h0] at hξ ⊢
  exact hξ.pow_of_coprime _ (ZMod.val_coe_unit_coprime a)

theorem Rs_transitive (s : ℕ) {ξ η : LL} (hξ : ξ ∈ primitiveRoots (l ^ (s + 1)) LL)
    (hη : η ∈ primitiveRoots (l ^ (s + 1)) LL) :
    ∃! a : (ZMod (l ^ (s + 1)))ˣ, ξ ^ (a : ZMod (l ^ (s + 1))).val = η := by
  haveI : NeZero (l ^ (s + 1)) := ⟨pow_ne_zero _ (Fact.out : l.Prime).ne_zero⟩
  have h0 : 0 < l ^ (s + 1) := pow_pos (Fact.out : l.Prime).pos _
  rw [mem_primitiveRoots_iff_isPrimitiveRoot h0] at hξ hη
  obtain ⟨i, -, hi⟩ : ∃ i < l ^ (s + 1), ξ ^ i = η := by
    first
    | exact hξ.eq_pow_of_pow_eq_one hη.pow_eq_one
  have hcop : i.Coprime (l ^ (s + 1)) := by
    first
    | exact (hξ.pow_iff_coprime h0 i).1 (hi ▸ hη)
  refine ⟨ZMod.unitOfCoprime i hcop, ?_, ?_⟩
  · simp only [ZMod.coe_unitOfCoprime]
    rw [← hi, isPrimitiveRoot_pow_eq_pow_iff_zmod_eq hξ, ZMod.natCast_zmod_val]
  · intro b hb
    apply Units.ext
    rw [ZMod.coe_unitOfCoprime, ← ZMod.natCast_zmod_val (b : ZMod (l ^ (s + 1))),
      ← isPrimitiveRoot_pow_eq_pow_iff_zmod_eq hξ]
    exact hb.trans hi.symm

private theorem isPrimitiveRoot_pow_val_mul_eq_pow_pow {N : ℕ} [NeZero N] {ξ : LL} (hξ : IsPrimitiveRoot ξ N)
    (x y : ZMod N) : ξ ^ (x * y).val = (ξ ^ x.val) ^ y.val := by
  rw [← pow_mul, isPrimitiveRoot_pow_eq_pow_iff_zmod_eq hξ, Nat.cast_mul]
  first
  | rw [ZMod.natCast_zmod_val, ZMod.natCast_zmod_val, ZMod.natCast_zmod_val]

theorem invariants_const (hl2 : l ≠ 2) (s : ℕ) (u : ℤ_[l]) (hu : (u - 1).valuation = 1)
    (f : LL → LL)
    (hfu : ∀ ξ ∈ primitiveRoots (l ^ (s + 1)) LL,
      f (ξ ^ (PadicInt.toZModPow (s + 1) u).val) = f ξ)
    (hfΔ : ∀ a : ZMod (l ^ (s + 1)), a ^ (l - 1) = 1 →
      ∀ ξ ∈ primitiveRoots (l ^ (s + 1)) LL, f (ξ ^ a.val) = f ξ) :
    ∀ ξ ∈ primitiveRoots (l ^ (s + 1)) LL, ∀ η ∈ primitiveRoots (l ^ (s + 1)) LL, f ξ = f η := by
  have hl := (Fact.out : l.Prime)
  have hl2le := hl.two_le
  haveI : NeZero (l ^ (s + 1)) := ⟨pow_ne_zero _ hl.ne_zero⟩
  have h0 : 0 < l ^ (s + 1) := pow_pos hl.pos _
  have hmul : ∀ a b : (ZMod (l ^ (s + 1)))ˣ,
      (∀ ξ ∈ primitiveRoots (l ^ (s + 1)) LL, f (ξ ^ (a : ZMod (l ^ (s + 1))).val) = f ξ) →
      (∀ ξ ∈ primitiveRoots (l ^ (s + 1)) LL, f (ξ ^ (b : ZMod (l ^ (s + 1))).val) = f ξ) →
      ∀ ξ ∈ primitiveRoots (l ^ (s + 1)) LL,
        f (ξ ^ ((a * b : (ZMod (l ^ (s + 1)))ˣ) : ZMod (l ^ (s + 1))).val) = f ξ := by
    intro a b ha hb ξ hξ
    have hξ' := (mem_primitiveRoots_iff_isPrimitiveRoot h0).1 hξ
    rw [Units.val_mul, isPrimitiveRoot_pow_val_mul_eq_pow_pow hξ',
      hb _ (pow_mem_Rs s a hξ), ha ξ hξ]
  have hord := orderOf_u hl2 u hu s
  have hxpow : (PadicInt.toZModPow (s + 1) u) ^ (l ^ s) = 1 := by
    rw [← hord]
    exact pow_orderOf_eq_one _
  obtain ⟨ub, hub⟩ : ∃ ub : (ZMod (l ^ (s + 1)))ˣ,
      (ub : ZMod (l ^ (s + 1))) = PadicInt.toZModPow (s + 1) u :=
    ⟨Units.ofPowEqOne _ (l ^ s) hxpow (pow_ne_zero _ hl.ne_zero), by
      first
      | exact Units.val_ofPowEqOne _ _ _ _
      | rfl⟩
  have hubord : orderOf ub = l ^ s := by
    rw [← orderOf_units, hub, hord]
  have hS_ub : ∀ ξ ∈ primitiveRoots (l ^ (s + 1)) LL,
      f (ξ ^ (ub : ZMod (l ^ (s + 1))).val) = f ξ := by
    intro ξ hξ
    rw [hub]
    exact hfu ξ hξ
  have hpowS : ∀ k : ℕ, ∀ ξ ∈ primitiveRoots (l ^ (s + 1)) LL,
      f (ξ ^ ((ub ^ k : (ZMod (l ^ (s + 1)))ˣ) : ZMod (l ^ (s + 1))).val) = f ξ := by
    intro k
    induction k with
    | zero =>
      intro ξ hξ
      rw [pow_zero, Units.val_one]
      exact hfΔ 1 (one_pow _) ξ hξ
    | succ n ih =>
      intro ξ hξ
      rw [pow_succ ub n]
      exact hmul _ _ ih hS_ub ξ hξ
  have hcopl : Nat.Coprime l (l - 1) := by
    rw [Nat.Prime.coprime_iff_not_dvd hl]
    intro h
    have := Nat.le_of_dvd (by omega) h
    omega
  have hw : orderOf (ub ^ (l - 1)) = l ^ s := by
    have hcop : (orderOf ub).Coprime (l - 1) := by
      rw [hubord]
      exact Nat.Coprime.pow_left s hcopl
    first
    | rw [Nat.Coprime.orderOf_pow hcop, hubord]
  haveI hcyc : IsCyclic (ZMod (l ^ (s + 1)))ˣ := by
    first
    | exact ZMod.isCyclic_units_of_prime_pow l hl hl2 (s + 1)
  have hwpow : (ub ^ (l - 1)) ^ (l ^ s) = 1 := by
    rw [← hw]
    exact pow_orderOf_eq_one _
  have hcount : ∀ b : (ZMod (l ^ (s + 1)))ˣ, b ^ (l ^ s) = 1 → ∃ k : ℕ, (ub ^ (l - 1)) ^ k = b := by
    intro b hb
    have hsub : (Finset.range (l ^ s)).image (fun k => (ub ^ (l - 1)) ^ k) ⊆
        Finset.univ.filter (fun x : (ZMod (l ^ (s + 1)))ˣ => x ^ (l ^ s) = 1) := by
      intro x hx
      rw [Finset.mem_image] at hx
      obtain ⟨k, -, rfl⟩ := hx
      rw [Finset.mem_filter]
      refine ⟨Finset.mem_univ _, ?_⟩
      rw [pow_right_comm (ub ^ (l - 1)) k (l ^ s), hwpow, one_pow]
    have hcard : ((Finset.range (l ^ s)).image (fun k => (ub ^ (l - 1)) ^ k)).card = l ^ s := by
      rw [Finset.card_image_of_injOn, Finset.card_range]
      intro i hi j hj hij
      have hi' : i < orderOf (ub ^ (l - 1)) := by
        rw [hw]
        simpa using hi
      have hj' : j < orderOf (ub ^ (l - 1)) := by
        rw [hw]
        simpa using hj
      first
      | exact pow_injOn_Iio_orderOf hi' hj' hij
    have hle := IsCyclic.card_pow_eq_one_le (α := (ZMod (l ^ (s + 1)))ˣ) (pow_pos hl.pos s)
    have heq := Finset.eq_of_subset_of_card_le hsub (by rw [hcard]; exact hle)
    have hbmem : b ∈ Finset.univ.filter (fun x : (ZMod (l ^ (s + 1)))ˣ => x ^ (l ^ s) = 1) := by
      rw [Finset.mem_filter]
      exact ⟨Finset.mem_univ _, hb⟩
    rw [← heq, Finset.mem_image] at hbmem
    obtain ⟨k, -, hk⟩ := hbmem
    exact ⟨k, hk⟩
  have hcardG : Fintype.card (ZMod (l ^ (s + 1)))ˣ = l ^ s * (l - 1) := by
    rw [ZMod.card_units_eq_totient, Nat.totient_prime_pow_succ hl]
  have key : ∀ a : (ZMod (l ^ (s + 1)))ˣ, ∀ ξ ∈ primitiveRoots (l ^ (s + 1)) LL,
      f (ξ ^ (a : ZMod (l ^ (s + 1))).val) = f ξ := by
    intro a
    obtain ⟨k, hk⟩ := hcount (a ^ (l - 1)) (by
      rw [← pow_mul, mul_comm, ← hcardG, pow_card_eq_one])
    have ht : ((ub ^ k)⁻¹ * a) ^ (l - 1) = 1 := by
      rw [mul_pow, inv_pow, ← hk, ← pow_mul, ← pow_mul, mul_comm k]
      first
      | exact inv_mul_cancel _
    have hSt : ∀ ξ ∈ primitiveRoots (l ^ (s + 1)) LL,
        f (ξ ^ (((ub ^ k)⁻¹ * a : (ZMod (l ^ (s + 1)))ˣ) : ZMod (l ^ (s + 1))).val) = f ξ := by
      intro ξ hξ
      apply hfΔ _ _ ξ hξ
      rw [← Units.val_pow_eq_pow_val, ht, Units.val_one]
    have ha : a = ub ^ k * ((ub ^ k)⁻¹ * a) := (mul_inv_cancel_left _ _).symm
    intro ξ hξ
    rw [ha]
    exact hmul _ _ (hpowS k) hSt ξ hξ
  intro ξ hξ η hη
  obtain ⟨a, ha, -⟩ := Rs_transitive s hξ hη
  have ha' : ξ ^ (a : ZMod (l ^ (s + 1))).val = η := ha
  rw [← ha', key a ξ hξ]

theorem sigma_u_order (hl2 : l ≠ 2) (s : ℕ) (u : ℤ_[l]) (hu : (u - 1).valuation = 1)
    {ξ : LL} (hξ : ξ ∈ primitiveRoots (l ^ (s + 1)) LL) (k : ℕ) :
    ξ ^ ((PadicInt.toZModPow (s + 1) u).val ^ k) = ξ ↔ l ^ s ∣ k := by
  have hl := (Fact.out : l.Prime)
  haveI : NeZero (l ^ (s + 1)) := ⟨pow_ne_zero _ hl.ne_zero⟩
  have h0 : 0 < l ^ (s + 1) := pow_pos hl.pos _
  rw [mem_primitiveRoots_iff_isPrimitiveRoot h0] at hξ
  have h := isPrimitiveRoot_pow_eq_pow_iff_zmod_eq hξ ((PadicInt.toZModPow (s + 1) u).val ^ k) 1
  rw [pow_one] at h
  rw [h, Nat.cast_pow, ZMod.natCast_zmod_val, Nat.cast_one, ← orderOf_dvd_iff_pow_eq_one,
    orderOf_u hl2 u hu s]

end LevelStatements.Ln03
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.EmultiplicityEqValuation =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.LinkRing =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.LinkRing", "h": "module\n\npublic import Formalism.DistinguishedUnitIdeals.GammaCongruentArcFromStart\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ConstSectionStatement\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.PsCycloStatement\npublic import Mathlib.NumberTheory.Padics.RingHoms\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ConstantCoeffAeval\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.EmultiplicityEqValuation\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.PowValMemPrimitiveRoots\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace LevelStatements.Link

open PowerSeries IsLocalRing Formalism.ExponentWindows

abbrev Ks (LL : Type) [Field LL] (l s : ℕ) : Type :=
  ↥(primitiveRoots (l ^ (s + 1)) LL) → LL

theorem linkRing

    (hUnique : LevelStatements.Lv.RhoUniqueStatement) (hCompl : LevelStatements.Lv.SplitComplStatement)
    (hSimple : LevelStatements.Lv.CycloSimpleStatement) (hCop : LevelStatements.Lv.PsCoprimeStatement)
    (hUnit : LevelStatements.Lv.RhoUnitStatement) (hDesc : LevelStatements.Lv.DescendDvdStatement)
    (hPi : LevelStatements.Lv.PiSeriesStatement)

    {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [IsAdicComplete (maximalIdeal O) O]
    {LL : Type} [Field LL] [CharZero LL] [Algebra O LL] [IsFractionRing O LL]
    (ϖ : O) (hϖ : Irreducible ϖ)

    {B : E.Base O} {n : ℕ} {V : Type} [AddCommGroup V] [Module (PowerSeries O) V]
    {L : E.Lat B n V} {c : ZMod n} {ell : ℕ} {Λ : PowerSeries O} {r : ℕ}
    (S : E.LevelData L c ell Λ r) {Δ D : Type} [AddCommGroup D] [Module LL D]
    [hℓ : Fact B.ℓ.Prime] (hℓ2 : B.ℓ ≠ 2) (hℓm : (B.ℓ : O) ∈ maximalIdeal O)
    (n0 : ℕ) (hn0 : ell ≤ n0) (hroot : ∃ ζ : LL, IsPrimitiveRoot ζ (B.ℓ ^ n0))

    (ι : PowerSeries O →ₐ[O] PowerSeries O) (w : (PowerSeries O)ˣ)
    (G1 : ι X = (w : PowerSeries O) * X ^ (B.ℓ - 1))

    (φπ : PowerSeries O →ₐ[O] PowerSeries O) (hφπ : φπ X = (1 + X) ^ B.ℓ - 1)
    (G3 : ∀ a, ι (B.φ a) = φπ (ι a))

    (hPs : LevelStatements.Lv.PsCycloStatement)
    (G2 : ∃ v : (PowerSeries O)ˣ, ι B.q = (v : PowerSeries O) *
      (((Polynomial.cyclotomic B.ℓ O).comp (Polynomial.X + 1) : Polynomial O) : PowerSeries O))

    (ρζ : LL → (PowerSeries O →ₐ[O] PowerSeries LL))
    (hρζ : ∀ s < ell, ∀ ζ ∈ primitiveRoots (B.ℓ ^ (s + 1)) LL, 1 + ρζ ζ X = C ζ * exp LL)

    (R : G.LevelModel S LL (fun s => Ks LL B.ℓ s) Δ D)
    (hρ : ∀ s < ell, ∀ (a : PowerSeries O) (ζ : ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)),
      PowerSeries.map (Pi.evalRingHom (fun _ => LL) ζ) (R.ρ s a) = ρζ ζ (ι a))
    (u : Oˣ) (uZ : ℤ_[B.ℓ]) (huZ : (uZ - 1).valuation = 1)
    (ιZ : ℤ_[B.ℓ] →+* O) (hutie : ιZ uZ = (u : O))
    (hu : ∀ s < ell, ((R.lev s).u : LL) = algebraMap O LL (u : O))
    (hσ : ∀ s < ell, ∀ (f : Ks LL B.ℓ s) (ζ ζ' : ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)),
      (ζ' : LL) = (ζ : LL) ^ (PadicInt.toZModPow (s + 1) uZ).val → (R.lev s).σ f ζ = f ζ')
    (om : Δ → ℤ_[B.ℓ]) (hom : ∀ j, om j ^ (B.ℓ - 1) = 1)
    (hom' : ∀ a : ZMod B.ℓ, a ≠ 0 → ∃ j, PadicInt.toZMod (om j) = a)
    (hτ : ∀ s < ell, ∀ j (f : Ks LL B.ℓ s) (ζ ζ' : ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)),
      (ζ' : LL) = (ζ : LL) ^ (PadicInt.toZModPow (s + 1) (om j)).val → (R.lev s).τ j f ζ = f ζ') :
    R.K1b ∧ R.HasU u ∧ (∀ s < ell, (R.lev s).FiniteOrderFixed B.ℓ s ∧ (R.lev s).PhiGammaCommute) ∧ R.UnitsAt ∧ R.Compl ϖ := by
  have hp : B.ℓ.Prime := hℓ.out
  have hl1 : 0 < B.ℓ - 1 := by have := hp.two_le; omega
  have hpos : ∀ s, 0 < B.ℓ ^ (s + 1) := fun s => pow_pos hp.pos _
  have hprim : ∀ s (ζ : ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)),
      IsPrimitiveRoot (ζ : LL) (B.ℓ ^ (s + 1)) :=
    fun s ζ => (mem_primitiveRoots (hpos s)).1 ζ.2

  have hit : ∀ s a, ι ((⇑B.φ)^[s] a) = (⇑φπ)^[s] (ι a) := by
    intro s
    induction s with
    | zero => intro a; rfl
    | succ s ih =>
      intro a
      rw [Function.iterate_succ_apply', Function.iterate_succ_apply', G3, ih]

  have hG : ∀ s, ∃ w' : (PowerSeries O)ˣ, ι (B.p s) = (w' : PowerSeries O) *
      (((Polynomial.cyclotomic (B.ℓ ^ (s + 1)) O).comp (Polynomial.X + 1) : Polynomial O) :
        PowerSeries O) := by
    intro s
    obtain ⟨v, hv⟩ := G2
    unfold Formalism.ExponentWindows.E.Base.p
    rw [hit]
    exact hPs O B.ℓ hp φπ hφπ (ι B.q) v hv s

  have hcyc : ∀ s < ell, ∀ (ζ : ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)) (m : ℕ),
      ρζ ζ (((Polynomial.cyclotomic m O).comp (Polynomial.X + 1) : Polynomial O) : PowerSeries O) =
        Polynomial.aeval (C (ζ : LL) * exp LL) (Polynomial.cyclotomic m LL) :=
    fun s hs ζ m => map_cyclotomic_comp (ρζ ζ) ζ (hρζ s hs (ζ : LL) ζ.2) m

  have hK1b : R.K1b := by
    intro s hs
    obtain ⟨w', hw'⟩ := hG s
    have hcomp : ∀ ζ : ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL), ∃ U : (PowerSeries LL)ˣ,
        PowerSeries.map (Pi.evalRingHom (fun _ => LL) ζ) (R.ρ s (B.p s)) =
          (U : PowerSeries LL) * X := by
      intro ζ
      obtain ⟨U, hU⟩ := hSimple LL LL (B.ℓ ^ (s + 1)) (hpos s) (ζ : LL) (exp LL)
        ((hprim s ζ).isRoot_cyclotomic (hpos s)) (constantCoeff_exp (A := LL)) (derivative_exp LL)
      refine ⟨Units.map (ρζ ζ).toMonoidHom w' * U, ?_⟩
      rw [hρ s hs, hw', map_mul, hcyc s hs, hU, Units.val_mul, Units.coe_map, mul_assoc]
      rfl
    choose U hU using hcomp
    have hdvd : (X : PowerSeries (Ks LL B.ℓ s)) ^ 1 ∣ R.ρ s (B.p s) :=
      (((hPi LL ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)).2 (R.ρ s (B.p s))).1 1).2 fun ζ => by
        rw [hU ζ, pow_one]
        exact dvd_mul_left _ _
    obtain ⟨G, hG'⟩ := hdvd
    have hGu : IsUnit G := by
      refine (((hPi LL ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)).2 G).2).2 fun ζ => ?_
      have h := hU ζ
      rw [hG', map_mul, map_pow, map_X, pow_one, mul_comm] at h
      rw [mul_right_cancel₀ X_ne_zero h]
      exact (U ζ).isUnit
    refine ⟨hGu.unit, ?_⟩
    rw [IsUnit.unit_spec, hG', pow_one, mul_comm]

  have hUnits : R.UnitsAt := by
    intro s hs
    have hcomp : ∀ F : PowerSeries O, (∀ ζ : ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL),
        IsUnit (ρζ ζ (ι F))) → IsUnit (R.ρ s F) := by
      intro F hF
      exact (((hPi LL ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)).2 (R.ρ s F)).2).2 fun ζ => by
        rw [hρ s hs]
        exact hF ζ
    refine ⟨hcomp X fun ζ => ?_, fun s' hs' hne => hcomp _ fun ζ => ?_⟩
    · rw [G1, map_mul, map_pow]
      refine (w.isUnit.map (ρζ ζ)).mul (IsUnit.pow _ ?_)
      rw [isUnit_iff_constantCoeff]
      have h := congrArg constantCoeff (hρζ s hs (ζ : LL) ζ.2)
      simp only [map_add (f := _), map_one, map_mul, constantCoeff_C, constantCoeff_exp, mul_one] at h
      rw [eq_sub_of_add_eq' h]
      exact (sub_ne_zero.2 ((hprim s ζ).ne_one (Nat.one_lt_pow (Nat.succ_ne_zero s) hp.one_lt))).isUnit
    · obtain ⟨w', hw'⟩ := hG s'
      rw [hw', map_mul, hcyc s hs]
      refine (w'.isUnit.map (ρζ ζ)).mul ?_
      rw [isUnit_iff_constantCoeff, LevelStatements.Lv.constantCoeff_aeval]
      simp only [map_mul, constantCoeff_C, constantCoeff_exp, mul_one]
      refine Ne.isUnit fun h0 => hne ?_
      have hroot : (Polynomial.cyclotomic (B.ℓ ^ (s' + 1)) LL).IsRoot (ζ : LL) := by
        rw [Polynomial.IsRoot.def, ← Polynomial.coe_aeval_eq_eval]
        exact h0
      have h := ((Polynomial.isRoot_cyclotomic_iff_charZero (hpos s')).1 hroot).unique (hprim s ζ)
      exact Nat.succ_injective (Nat.pow_right_injective hp.two_le h)

  have hComplR : R.Compl ϖ := by
    intro s hs k a hk
    obtain ⟨ζ, hζ⟩ := hroot
    have hζ0 : IsPrimitiveRoot (ζ ^ (B.ℓ ^ (n0 - (s + 1)))) (B.ℓ ^ (s + 1)) :=
      hζ.pow (pow_pos hp.pos _) (by rw [← pow_add]; congr 1; omega)
    have hcd := hCompl O LL B.ℓ s hp hℓm ⟨_, hζ0⟩ ρζ
      (fun ζ' hζ' => hρζ s hs ζ' ((mem_primitiveRoots (hpos s)).2 hζ')) k (ι a)
      (fun ζ' hζ' => by
        have h := (((hPi LL ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)).2 (R.ρ s a)).1 k).1 hk
          ⟨ζ', (mem_primitiveRoots (hpos s)).2 hζ'⟩
        rwa [hρ s hs] at h)
    obtain ⟨w', hw'⟩ := hG s
    have hdv : ι (B.p s ^ k) ∣ ι a := by
      rw [map_pow, hw', mul_pow, ← Units.val_pow_eq_pow_val, Units.mul_left_dvd]
      exact hcd
    obtain ⟨z, hz⟩ := (hDesc O ι (B.ℓ - 1) hl1 ⟨w, G1⟩).2 _ _ hdv
    exact ⟨0, z, by rw [pow_zero, map_one, one_mul]; exact hz⟩

  have hunitu : ∀ s, IsUnit (PadicInt.toZModPow (s + 1) uZ) := fun s =>
    IsUnit.of_pow_eq_one (pow_orderOf_eq_one _)
      (by rw [LevelStatements.Ln03.orderOf_u hℓ2 uZ huZ s]; exact (pow_pos hp.pos _).ne')
  have hunitom : ∀ s j, IsUnit (PadicInt.toZModPow (s + 1) (om j)) := fun s j =>
    IsUnit.of_pow_eq_one (by rw [← map_pow, hom j, map_one]) hl1.ne'
  have hmem : ∀ s (a : ZMod (B.ℓ ^ (s + 1))), IsUnit a →
      ∀ ζ : ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL),
        (ζ : LL) ^ a.val ∈ primitiveRoots (B.ℓ ^ (s + 1)) LL := fun s a ha ζ =>
    pow_val_mem_primitiveRoots _ (hpos s) a ha ζ.2
  have hsig : ∀ s < ell, ∀ (x : Ks LL B.ℓ s) (k : ℕ) (ζ : ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)),
      ∃ ζ' : ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL),
        (ζ' : LL) = (ζ : LL) ^ ((PadicInt.toZModPow (s + 1) uZ).val ^ k) ∧
          (⇑(R.lev s).σ)^[k] x ζ = x ζ' := by
    intro s hs x k
    induction k with
    | zero => intro ζ; exact ⟨ζ, by simp, rfl⟩
    | succ k ih =>
      intro ζ
      obtain ⟨ζ2, h2, h2'⟩ := ih ⟨_, hmem s _ (hunitu s) ζ⟩
      refine ⟨ζ2, ?_, ?_⟩
      · rw [h2]
        change ((ζ : LL) ^ _) ^ _ = _
        rw [← pow_mul, ← pow_succ']
      · rw [Function.iterate_succ_apply', hσ s hs _ ζ ⟨_, hmem s _ (hunitu s) ζ⟩ rfl, h2']

  have hK1c : ∀ s < ell, (R.lev s).FiniteOrderFixed B.ℓ s := by
    intro s hs
    refine ⟨fun x => ?_, fun x hxσ hxτ => ?_⟩
    · funext ζ
      obtain ⟨ζ', h1, h2⟩ := hsig s hs x (B.ℓ ^ s) ζ
      rw [h2]
      congr 1
      apply Subtype.ext
      rw [h1]
      exact (LevelStatements.Ln03.sigma_u_order hℓ2 s uZ huZ ζ.2 _).2 dvd_rfl
    · classical
      let f : LL → LL := fun y =>
        if h : y ∈ primitiveRoots (B.ℓ ^ (s + 1)) LL then x ⟨y, h⟩ else 0
      have hfu : ∀ ξ ∈ primitiveRoots (B.ℓ ^ (s + 1)) LL,
          f (ξ ^ (PadicInt.toZModPow (s + 1) uZ).val) = f ξ := by
        intro ξ hξ
        have hm := hmem s _ (hunitu s) ⟨ξ, hξ⟩
        simp only [f]
        rw [dif_pos hm, dif_pos hξ]
        have h := hσ s hs x ⟨ξ, hξ⟩ ⟨_, hm⟩ rfl
        rw [hxσ] at h
        exact h.symm
      have hfΔ : ∀ a : ZMod (B.ℓ ^ (s + 1)), a ^ (B.ℓ - 1) = 1 →
          ∀ ξ ∈ primitiveRoots (B.ℓ ^ (s + 1)) LL, f (ξ ^ a.val) = f ξ := by
        intro a ha ξ hξ
        obtain ⟨j, hj⟩ := exists_toZModPow_eq_of_pow_pred_eq_one om hom hom' s a ha
        have hm := hmem s a (IsUnit.of_pow_eq_one ha hl1.ne') ⟨ξ, hξ⟩
        simp only [f]
        rw [dif_pos hm, dif_pos hξ]
        have h := hτ s hs j x ⟨ξ, hξ⟩ ⟨_, hm⟩ (by rw [hj])
        rw [hxτ j] at h
        exact h.symm
      have hconst := LevelStatements.Ln03.invariants_const hℓ2 s uZ huZ f hfu hfΔ
      by_cases hne : Nonempty ↥(primitiveRoots (B.ℓ ^ (s + 1)) LL)
      · obtain ⟨ξ0⟩ := hne
        refine ⟨x ξ0, ?_⟩
        funext ζ
        have h := hconst ξ0 ξ0.2 ζ ζ.2
        simp only [f, dif_pos ξ0.2, dif_pos ζ.2] at h
        simp only [Pi.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply]
        exact h
      · refine ⟨0, ?_⟩
        funext ζ
        exact absurd ⟨ζ⟩ hne

  have hK1d : ∀ s < ell, (R.lev s).PhiGammaCommute := by
    intro s hs j x
    funext ζ
    have e1 := hσ s hs ((R.lev s).τ j x) ζ ⟨_, hmem s _ (hunitu s) ζ⟩ rfl
    have e2 := hτ s hs j x ⟨_, hmem s _ (hunitu s) ζ⟩
      ⟨_, hmem s _ (hunitom s j) ⟨_, hmem s _ (hunitu s) ζ⟩⟩ rfl
    have e3 := hτ s hs j ((R.lev s).σ x) ζ ⟨_, hmem s _ (hunitom s j) ζ⟩ rfl
    have e4 := hσ s hs x ⟨_, hmem s _ (hunitom s j) ζ⟩
      ⟨_, hmem s _ (hunitom s j) ⟨_, hmem s _ (hunitu s) ζ⟩⟩
      (by
        change ((ζ : LL) ^ _) ^ _ = ((ζ : LL) ^ _) ^ _
        rw [← pow_mul, ← pow_mul, mul_comm])
    rw [e1, e2, e3, e4]
  exact ⟨hK1b, fun s hs => hu s hs, fun s hs => ⟨hK1c s hs, hK1d s hs⟩, hUnits, hComplR⟩

end LevelStatements.Link
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.LinkRing =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.LinkRing\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RingConditionOfDeltaInvariants\npublic import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Graded\nimport Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.PowValMemPrimitiveRoots\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct

def psPi (ι R : Type) [CommRing R] : (ι → PowerSeries R) →+* PowerSeries (ι → R) where
  toFun f := PowerSeries.mk fun k i => PowerSeries.coeff k (f i)
  map_one' := by
    ext k i
    simp only [PowerSeries.coeff_mk, Pi.one_apply, PowerSeries.coeff_one]
    split_ifs <;> rfl
  map_mul' f g := by
    ext k i
    simp only [PowerSeries.coeff_mk, Pi.mul_apply, PowerSeries.coeff_mul, Finset.sum_apply]
  map_zero' := by
    ext k i
    simp
  map_add' f g := by
    ext k i
    simp

@[simp] theorem coeff_psPi {ι R : Type} [CommRing R] (f : ι → PowerSeries R) (k : ℕ) (i : ι) :
    PowerSeries.coeff k (psPi ι R f) i = PowerSeries.coeff k (f i) := by
  simp [psPi]

theorem map_eval_psPi {ι R : Type} [CommRing R] (f : ι → PowerSeries R) (i : ι) :
    PowerSeries.map (Pi.evalRingHom (fun _ => R) i) (psPi ι R f) = f i := by
  ext k
  simp [PowerSeries.coeff_map]

section Roots

variable (LL : Type) [Field LL] (l : ℕ) [Fact l.Prime]

abbrev Rs (s : ℕ) : Type := ↥(primitiveRoots (l ^ (s + 1)) LL)

theorem pos_pow (s : ℕ) : 0 < l ^ (s + 1) := pow_pos (Fact.out : l.Prime).pos _

def powR (s : ℕ) (a : (ZMod (l ^ (s + 1)))ˣ) (ζ : Rs LL l s) : Rs LL l s :=
  ⟨(ζ : LL) ^ (a : ZMod (l ^ (s + 1))).val,
    LevelStatements.Link.pow_val_mem_primitiveRoots _ (pos_pow l s) _ a.isUnit ζ.2⟩

theorem rs_pow_N (s : ℕ) (ζ : Rs LL l s) : (ζ : LL) ^ (l ^ (s + 1)) = 1 :=
  ((mem_primitiveRoots (pos_pow l s)).1 ζ.2).pow_eq_one

theorem rs_pow_mod (s : ℕ) (ζ : Rs LL l s) (k : ℕ) :
    (ζ : LL) ^ (k % l ^ (s + 1)) = (ζ : LL) ^ k := by
  conv_rhs => rw [← Nat.mod_add_div k (l ^ (s + 1)), pow_add, pow_mul, rs_pow_N, one_pow, mul_one]

theorem powR_powR (s : ℕ) (a b : (ZMod (l ^ (s + 1)))ˣ) (ζ : Rs LL l s) :
    powR LL l s a (powR LL l s b ζ) = powR LL l s (b * a) ζ := by
  apply Subtype.ext
  simp only [powR, Units.val_mul, ZMod.val_mul]
  rw [← pow_mul, rs_pow_mod]

theorem powR_one (s : ℕ) (ζ : Rs LL l s) : powR LL l s 1 ζ = ζ := by
  apply Subtype.ext
  simp only [powR, Units.val_one, ZMod.val_one_eq_one_mod]
  rw [rs_pow_mod, pow_one]

def precomp (s : ℕ) (a : (ZMod (l ^ (s + 1)))ˣ) :
    LevelStatements.Link.Ks LL l s ≃ₐ[LL] LevelStatements.Link.Ks LL l s where
  toFun f := fun ζ => f (powR LL l s a ζ)
  invFun f := fun ζ => f (powR LL l s a⁻¹ ζ)
  left_inv f := funext fun ζ => by
    simp only [powR_powR, inv_mul_cancel, powR_one]
  right_inv f := funext fun ζ => by
    simp only [powR_powR, mul_inv_cancel, powR_one]
  map_mul' _ _ := rfl
  map_add' _ _ := rfl
  commutes' _ := rfl

theorem precomp_apply (s : ℕ) (a : (ZMod (l ^ (s + 1)))ˣ) (f : LevelStatements.Link.Ks LL l s) (ζ : Rs LL l s) :
    precomp LL l s a f ζ = f (powR LL l s a ζ) := rfl

abbrev DeltaT : Type := {x : ℤ_[l]ˣ // x ^ (l - 1) = 1}

def redU (s : ℕ) (x : ℤ_[l]ˣ) : (ZMod (l ^ (s + 1)))ˣ :=
  Units.map (PadicInt.toZModPow (s + 1)).toMonoidHom x

def levOf (uZ : ℤ_[l]ˣ) (u : LLˣ) (aD : DeltaT l → LLˣ) (s : ℕ) :
    Level LL (LevelStatements.Link.Ks LL l s) (DeltaT l) where
  σ := precomp LL l s (redU l s uZ)
  u := u
  τ j := precomp LL l s (redU l s j.1)
  a := aD

end Roots

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]

instance factP (PD : PeriodData G Qp K₀ K B BdR) : Fact PD.p.Prime := ⟨PD.hp⟩

variable {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n]

structure LevB (W : LocWach PD LL O v n) where
  levB : ∀ T : LocLat G Qp LL O, ZMod n → LL → ↥(W.N T) →+ (ℤ → T.V ⊗[Qp] B)
  mem : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
    levB T i ζ x k ∈ DcrisL PD T.ρ (W.emb i)
  supp : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)),
    ∃ m : ℤ, ∀ k < m, levB T i ζ x k = 0

variable {W : LocWach PD LL O v n}

abbrev KsW (W : LocWach PD LL O v n) (s : ℕ) : Type := LevelStatements.Link.Ks LL PD.p s

def rhoZ (W : LocWach PD LL O v n) (c : ZMod n) (ζ : LL) : PowerSeries O →ₐ[O] PowerSeries LL :=
  (W.lev c ζ).comp (AlgHom.pi fun _ => AlgHom.id O (PowerSeries O))

def rhoL (hR : Ring9 W) (c : ZMod n) (s : ℕ) : PowerSeries O →+* PowerSeries (KsW W s) :=
  (psPi (Rs LL PD.p s) LL).comp
    (RingHom.pi fun ζ => ((rhoZ W c ζ).comp (baseIdOf hR).ι).toRingHom)

theorem map_eval_rhoL (hR : Ring9 W) (c : ZMod n) (s : ℕ) (a : PowerSeries O) (ζ : Rs LL PD.p s) :
    PowerSeries.map (Pi.evalRingHom (fun _ => LL) ζ) (rhoL hR c s a) = rhoZ W c ζ ((baseIdOf hR).ι a) := by
  rw [rhoL, RingHom.comp_apply, map_eval_psPi]
  rfl

abbrev Dc (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (c : ZMod n) : Type :=
  ↥(DcrisL PD T.ρ (W.emb c))


open Classical in
def toKsD (W : LocWach PD LL O v n) (s : ℕ) (D : Type) [AddCommGroup D] [Module LL D] :
    (Rs LL PD.p s → D) →ₗ[LL] KsW W s ⊗[LL] D :=
  (TensorProduct.comm LL D (Rs LL PD.p s → LL)).toLinearMap.comp
    (TensorProduct.piScalarRight LL LL D (Rs LL PD.p s)).symm.toLinearMap

def coefN (Lb : LevB W) (s : ℕ) (T : LocLat G Qp LL O) (c : ZMod n) (x : ↥(W.N T)) (k : ℤ) :
    KsW W s ⊗[LL] Dc W T c :=
  toKsD W s (Dc W T c) fun ζ => ⟨Lb.levB T c ζ x k, Lb.mem T c ζ x k⟩

theorem bdd_coefN (Lb : LevB W) (s : ℕ) (T : LocLat G Qp LL O) (c : ZMod n) (x : ↥(W.N T)) :
    BddBelow (Function.support (coefN Lb s T c x)) := by
  classical
  choose m hm using fun ζ : Rs LL PD.p s => Lb.supp T c ζ x
  refine ⟨-(∑ ζ, |m ζ|), fun k hk => ?_⟩
  by_contra hlt
  push Not at hlt
  apply hk
  have h0 : (fun ζ : Rs LL PD.p s => (⟨Lb.levB T c ζ x k, Lb.mem T c ζ x k⟩ : Dc W T c)) = 0 := by
    funext ζ
    apply Subtype.ext
    refine hm ζ k ?_
    have h1 := Finset.single_le_sum (f := fun ζ => |m ζ|) (fun _ _ => abs_nonneg _) (Finset.mem_univ ζ)
    have h2 := neg_abs_le (m ζ)
    linarith
  simp only [coefN, h0, map_zero]

def expN (Lb : LevB W) (s : ℕ) (T : LocLat G Qp LL O) (c : ZMod n) (x : ↥(W.N T)) :
    Amb LL (KsW W s) (Dc W T c) :=
  HahnModule.of (KsW W s) (HahnSeries.ofSuppBddBelow (coefN Lb s T c x) (bdd_coefN Lb s T c x))

section Carrier

variable (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O)

def levW (W : LocWach PD LL O v n) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) (s : ℕ) :
    Level LL (KsW W s) (DeltaT PD.p) :=
  levOf LL PD.p uZ (Units.map (algebraMap O LL).toMonoidHom (W.χΓ W.gam))
    (fun j => Units.map ((algebraMap O LL).comp ιZ).toMonoidHom j.1) s

def AmbM (_hR : Ring9 W) (T : LocLat G Qp LL O) (c : ZMod n) (s : ℕ) : Type :=
  Amb LL (KsW W s) (Dc W T c)

instance (T : LocLat G Qp LL O) (c : ZMod n) (s : ℕ) : AddCommGroup (AmbM hR T c s) :=
  inferInstanceAs (AddCommGroup (Amb LL (KsW W s) (Dc W T c)))

instance (T : LocLat G Qp LL O) (c : ZMod n) (s : ℕ) : Module (PowerSeries O) (AmbM hR T c s) :=
  Module.compHom (Amb LL (KsW W s) (Dc W T c))
    ((HahnSeries.ofPowerSeries ℤ (KsW W s)).comp (rhoL hR c s))

def toA (T : LocLat G Qp LL O) (c : ZMod n) (s : ℕ) : AmbM hR T c s →+ Amb LL (KsW W s) (Dc W T c) :=
  AddMonoidHom.id _

theorem toA_smul (T : LocLat G Qp LL O) (c : ZMod n) (s : ℕ) (a : PowerSeries O) (f : AmbM hR T c s) :
    toA hR T c s (a • f) = HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a) • toA hR T c s f := rfl

def DeltaRho (c : ZMod n) : Prop :=
  ∀ (s : ℕ) (j : DeltaT PD.p) (a : PowerSeries O),
    grdB ((levW W uZ ιZ s).τ j) ((levW W uZ ιZ s).a j)
      (HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a)) =
      HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a)

def invSub (T : LocLat G Qp LL O) (c : ZMod n) (hΔ : DeltaRho hR uZ ιZ c) (s : ℕ) :
    Submodule (PowerSeries O) (AmbM hR T c s) where
  carrier := {f | (levW W uZ ιZ s).Inv (D := Dc W T c) (toA hR T c s f)}
  add_mem' := fun {f g} hf hg j => by
    simp only [Set.mem_ofPred_eq, map_add (f := _)] at hf hg ⊢
    rw [hf j, hg j]
  zero_mem' := fun j => by
    simp only [map_zero]
  smul_mem' := fun a f hf j => by
    simp only [Set.mem_ofPred_eq] at hf ⊢
    rw [toA_smul, Level.δ, graded_semilinear_holds, hΔ s j a]
    exact congrArg _ (hf j)

abbrev LvT (T : LocLat G Qp LL O) (c : ZMod n) (hΔ : DeltaRho hR uZ ιZ c) (ell : ℕ) : Type :=
  ∀ s : Fin ell, ↥(invSub hR uZ ιZ T c hΔ s)

variable {hR uZ ιZ} {T : LocLat G Qp LL O} {c : ZMod n} {hΔ : DeltaRho hR uZ ιZ c} {ell : ℕ}

def prL (s : ℕ) : LvT hR uZ ιZ T c hΔ ell →+ Amb LL (KsW W s) (Dc W T c) where
  toFun e := if h : s < ell then toA hR T c s (e ⟨s, h⟩ : AmbM hR T c s) else 0
  map_zero' := by
    split_ifs <;> simp
  map_add' e e' := by
    split_ifs <;> simp

theorem prL_of_lt (s : ℕ) (h : s < ell) (e : LvT hR uZ ιZ T c hΔ ell) :
    prL s e = toA hR T c s (e ⟨s, h⟩ : AmbM hR T c s) := dif_pos h

theorem prL_of_ge (s : ℕ) (h : ¬ s < ell) (e : LvT hR uZ ιZ T c hΔ ell) : prL s e = 0 := dif_neg h

theorem prL_smul (s : ℕ) (a : PowerSeries O) (e : LvT hR uZ ιZ T c hΔ ell) :
    prL s (a • e) = HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a) • prL s e := by
  by_cases h : s < ell
  · rw [prL_of_lt s h, prL_of_lt s h]
    rfl
  · rw [prL_of_ge s h, prL_of_ge s h, smul_zero]

theorem prL_inj (e e' : LvT hR uZ ιZ T c hΔ ell) (h : ∀ s < ell, prL s e = prL s e') : e = e' := by
  funext s
  apply Subtype.ext
  have := h s s.2
  rw [prL_of_lt s s.2, prL_of_lt s s.2] at this
  exact this

theorem prL_inv (s : ℕ) (e : LvT hR uZ ιZ T c hΔ ell) :
    (levW W uZ ιZ s).Inv (D := Dc W T c) (prL s e) := by
  by_cases h : s < ell
  · rw [prL_of_lt s h]
    exact (e ⟨s, h⟩).2
  · rw [prL_of_ge s h]
    intro j
    exact map_zero _

end Carrier

section Maps

variable {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O} {T : LocLat G Qp LL O} {c : ZMod n}
  {hΔ : DeltaRho hR uZ ιZ c} {ell : ℕ}

theorem coefN_add (Lb : LevB W) (s : ℕ) (x y : ↥(W.N T)) :
    coefN Lb s T c (x + y) = coefN Lb s T c x + coefN Lb s T c y := by
  funext k
  simp only [coefN, Pi.add_apply]
  rw [← map_add (f := _)]
  congr 1
  funext ζ
  apply Subtype.ext
  simp [map_add (f := _)]

theorem expN_add (Lb : LevB W) (s : ℕ) (x y : ↥(W.N T)) :
    expN Lb s T c (x + y) = expN Lb s T c x + expN Lb s T c y := by
  have h : HahnSeries.ofSuppBddBelow (coefN Lb s T c (x + y)) (bdd_coefN Lb s T c (x + y)) =
      HahnSeries.ofSuppBddBelow (coefN Lb s T c x) (bdd_coefN Lb s T c x) +
        HahnSeries.ofSuppBddBelow (coefN Lb s T c y) (bdd_coefN Lb s T c y) := by
    ext k
    simp [HahnSeries.ofSuppBddBelow, coefN_add]
  simp only [expN, h]
  rfl

def ExpSemi (Lb : LevB W) (hR : Ring9 W) (T : LocLat G Qp LL O) (c : ZMod n) : Prop :=
  ∀ (s : ℕ) (a : PowerSeries O) (y : ↥(W.N T)) (hy : (baseIdOf hR).d a • (y : W.DD T) ∈ W.N T),
    expN Lb s T c ⟨_, hy⟩ = HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a) • expN Lb s T c y

variable (Lb : LevB W) (C : Coord W (baseIdOf hR) T)

def locF (κ : PowerSeries O) (s : ℕ) (x : C.V) (hx : x ∈ (latOf C).N c) :
    Amb LL (KsW W s) (Dc W T c) :=
  Ring.inverse (HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s κ)) • expN Lb s T c ⟨C.t c x, hx⟩

def LocInv (c : ZMod n) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) (κ : PowerSeries O) : Prop :=
  ∀ (s : ℕ) (x : C.V) (hx : x ∈ (latOf C).N c),
    (levW W uZ ιZ s).Inv (D := Dc W T c) (locF Lb C κ s x hx)

def locM (hΔ : DeltaRho hR uZ ιZ c) (ell : ℕ) (Λ κ : PowerSeries O)
    (hκ : ∀ w ∈ (latOf C).W c ell Λ, κ • w ∈ (latOf C).N c) (hS : ExpSemi Lb hR T c)
    (hI : LocInv Lb C c uZ ιZ κ) :
    ↥((latOf C).W c ell Λ) →ₗ[PowerSeries O] LvT hR uZ ιZ T c hΔ ell where
  toFun w := fun s => ⟨locF Lb C κ s (κ • (w : C.V)) (hκ w w.2), hI s _ _⟩
  map_add' w w' := by
    funext s
    apply Subtype.ext
    change locF Lb C κ s (κ • ((w : C.V) + w')) _ =
      locF Lb C κ s (κ • (w : C.V)) _ + locF Lb C κ s (κ • (w' : C.V)) _
    have hxy : (⟨C.t c (κ • ((w : C.V) + w')), hκ (w + w') (w + w').2⟩ : ↥(W.N T)) =
        ⟨C.t c (κ • (w : C.V)), hκ w w.2⟩ + ⟨C.t c (κ • (w' : C.V)), hκ w' w'.2⟩ := by
      apply Subtype.ext
      simp [smul_add, C.t_add]
    simp only [locF]
    rw [hxy, expN_add, smul_add]
    rfl
  map_smul' a w := by
    funext s
    apply Subtype.ext
    change locF Lb C κ s (κ • (a • (w : C.V))) _ =
      HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a) • locF Lb C κ s (κ • (w : C.V)) _
    have hm : (baseIdOf hR).d a • C.t c (κ • (w : C.V)) ∈ W.N T := by
      rw [← C.t_smul, smul_comm]
      exact hκ (a • w) (a • w).2
    have hxy : (⟨C.t c (κ • (a • (w : C.V))), hκ (a • w) (a • w).2⟩ : ↥(W.N T)) =
        ⟨(baseIdOf hR).d a • C.t c (κ • (w : C.V)), hm⟩ := by
      apply Subtype.ext
      change C.t c (κ • (a • (w : C.V))) = _
      rw [smul_comm, C.t_smul]
    simp only [locF]
    rw [hxy, hS s a ⟨C.t c (κ • (w : C.V)), hκ w w.2⟩ hm, smul_comm]

def locLF {r : ℕ} (Λ : PowerSeries O) (lam : Fin r → Dc W T c) (s : ℕ) (y : Fin r → PowerSeries O) :
    Amb LL (KsW W s) (Dc W T c) :=
  Ring.inverse (HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s Λ)) •
    ∑ k, HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s (y k)) • cstD (KsW W s) (lam k)

def LocLInv (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) (T : LocLat G Qp LL O) (c : ZMod n)
    {r : ℕ} (Λ : PowerSeries O) (lam : Fin r → Dc W T c) : Prop :=
  ∀ (s : ℕ) (y : Fin r → PowerSeries O),
    (levW W uZ ιZ s).Inv (D := Dc W T c) (locLF (hR := hR) Λ lam s y)

def locLM (hΔ : DeltaRho hR uZ ιZ c) (ell : ℕ) {r : ℕ} (Λ : PowerSeries O) (lam : Fin r → Dc W T c)
    (hI : LocLInv hR uZ ιZ T c Λ lam) :
    (Fin r → PowerSeries O) →ₗ[PowerSeries O] LvT hR uZ ιZ T c hΔ ell where
  toFun y := fun s => ⟨locLF (hR := hR) Λ lam s y, hI s y⟩
  map_add' y y' := by
    funext s
    apply Subtype.ext
    change locLF (hR := hR) Λ lam s (y + y') = locLF (hR := hR) Λ lam s y + locLF (hR := hR) Λ lam s y'
    simp only [locLF, Pi.add_apply, map_add (f := _), add_smul, Finset.sum_add_distrib, smul_add]
  map_smul' a y := by
    funext s
    apply Subtype.ext
    change locLF (hR := hR) Λ lam s (a • y) =
      HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a) • locLF (hR := hR) Λ lam s y
    simp only [locLF, Pi.smul_apply, smul_eq_mul, map_mul, mul_smul, ← Finset.smul_sum]
    rw [smul_comm]

def FilD (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (c : ZMod n) (s : ℕ) (u : ℤ) :
    Submodule LL (Dc W T c) :=
  (FilLev W T c s u).comap ((ιV PD (LL := LL) (V := T.V)).comp (DcrisL PD T.ρ (W.emb c)).subtype)

theorem tw_mono (m : ℤ) : Monotone (Tw (LL := LL) (D := Dc W T c) m) := by
  intro i j hij
  unfold Tw
  split_ifs with h1 h2
  · exact le_rfl
  · exact absurd (h1.trans hij) h2
  · exact bot_le
  · exact le_rfl

def NlS (hFil : ∀ s, Antitone (FilD W T c s)) (s : ℕ) :
    Submodule (PowerSeries O) (LvT hR uZ ιZ T c hΔ ell) where
  carrier := {e | prL s e ∈ Xi (KsW W s) (fun i => FilD W T c s (-i))}
  add_mem' := fun {e e'} he he' => by
    simp only [Set.mem_ofPred_eq, map_add (f := _)] at he he' ⊢
    exact add_mem he he'
  zero_mem' := by
    simp only [Set.mem_ofPred_eq, map_zero]
    exact zero_mem _
  smul_mem' := fun a e he => by
    simp only [Set.mem_ofPred_eq] at he ⊢
    rw [prL_smul]
    exact xi_module_structure LL (KsW W s) (Dc W T c) _ (fun i j h => hFil s (neg_le_neg h)) _ _ he

def NbS (kind : ℕ → Kind) (b : ℕ → ℕ) (η : ℕ) (s : ℕ) :
    Submodule (PowerSeries O) (LvT hR uZ ιZ T c hΔ ell) where
  carrier := {e | prL s e ∈ Xi (KsW W s) (NbK (kind s) (b s) (UOf (kind s) (b s) η (FilD W T c s)))}
  add_mem' := fun {e e'} he he' => by
    simp only [Set.mem_ofPred_eq, map_add (f := _)] at he he' ⊢
    exact add_mem he he'
  zero_mem' := by
    simp only [Set.mem_ofPred_eq, map_zero]
    exact zero_mem _
  smul_mem' := fun a e he => by
    simp only [Set.mem_ofPred_eq] at he ⊢
    rw [prL_smul]
    exact xi_module_structure LL (KsW W s) (Dc W T c) _ (Formalism.ExponentWindows.G.SlopeTestRemainingChoices.nbK_mono _ _ (by positivity) _) _ _ he

def FlS (Λ f' : PowerSeries O) (s : ℕ) : Submodule (PowerSeries O) (LvT hR uZ ιZ T c hΔ ell) where
  carrier := {e | ∃ x ∈ Xi (KsW W s) (Tw (LL := LL) (D := Dc W T c) 0),
    prL s (Λ • e) = HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s f') • x}
  add_mem' := fun {e e'} ⟨x, hx, he⟩ ⟨x', hx', he'⟩ =>
    ⟨x + x', add_mem hx hx', by rw [smul_add, map_add (f := _), he, he', smul_add]⟩
  zero_mem' := ⟨0, zero_mem _, by rw [smul_zero, map_zero, smul_zero]⟩
  smul_mem' := fun a e ⟨x, hx, he⟩ =>
    ⟨HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a) • x,
      xi_module_structure LL (KsW W s) (Dc W T c) _ (tw_mono 0) _ _ hx, by
        rw [smul_comm Λ a, prL_smul, he, smul_comm]⟩

def DcS (ell : ℕ) : AddSubgroup (LvT hR uZ ιZ T c hΔ ell) where
  carrier := {e | ∃ d : Dc W T c, ∀ s' < ell, prL s' e = cstD (KsW W s') d}
  add_mem' := fun {e e'} ⟨d, hd⟩ ⟨d', hd'⟩ => ⟨d + d', fun s' hs' => by
    rw [map_add (f := _), hd s' hs', hd' s' hs']
    simp [cstD, TensorProduct.tmul_add]⟩
  zero_mem' := ⟨0, fun s' _ => by simp [cstD]⟩
  neg_mem' := fun {e} ⟨d, hd⟩ => ⟨-d, fun s' hs' => by
    rw [map_neg, hd s' hs']
    simp [cstD, TensorProduct.tmul_neg]
    rfl⟩

end Maps

section Assembly

variable {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O} {T : LocLat G Qp LL O} {c : ZMod n}

structure LvHyp (Lb : LevB W) (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O)
    (C : Coord W (baseIdOf hR) T) (c : ZMod n) (ell : ℕ) (Λ κ : PowerSeries O) {r : ℕ}
    (lam : Fin r → Dc W T c) : Prop where

  delta : DeltaRho hR uZ ιZ c

  gamInv : ∀ (s : ℕ) (f : Amb LL (KsW W s) (Dc W T c)), (levW W uZ ιZ s).Inv f →
    (levW W uZ ιZ s).Inv ((levW W uZ ιZ s).γ f)

  gamRho : ∀ (s : ℕ) (a : PowerSeries O),
    grdB (levW W uZ ιZ s).σ (levW W uZ ιZ s).u (HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a)) =
      HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s ((baseIdOf hR).Bs.γ a))

  kap : ∀ w ∈ (latOf C).W c ell Λ, κ • w ∈ (latOf C).N c

  expSemi : ExpSemi Lb hR T c

  locInv : LocInv Lb C c uZ ιZ κ

  loclInv : LocLInv hR uZ ιZ T c Λ lam

  filAnti : ∀ s, Antitone (FilD W T c s)

  rhoC : ∀ (s : ℕ) (a : O), rhoL hR c s (PowerSeries.C a) =
    PowerSeries.C (algebraMap LL (KsW W s) (algebraMap O LL a))

variable {Lb : LevB W} {C : Coord W (baseIdOf hR) T} {ell : ℕ} {Λ κ : PowerSeries O} {r : ℕ}
  {lam : Fin r → Dc W T c}

def gEL (H : LvHyp Lb hR uZ ιZ C c ell Λ κ lam) :
    LvT hR uZ ιZ T c H.delta ell →+ LvT hR uZ ιZ T c H.delta ell where
  toFun e := fun s => ⟨(levW W uZ ιZ s).γ (toA hR T c s (e s : AmbM hR T c s)),
    H.gamInv s _ (e s).2⟩
  map_zero' := by
    funext s
    apply Subtype.ext
    exact map_zero _
  map_add' e e' := by
    funext s
    apply Subtype.ext
    exact map_add _ _ _

theorem prL_gEL (H : LvHyp Lb hR uZ ιZ C c ell Λ κ lam) (s' : ℕ) (hs' : s' < ell)
    (e : LvT hR uZ ιZ T c H.delta ell) :
    prL s' (gEL H e) = (levW W uZ ιZ s').γ (prL s' e) := by
  rw [prL_of_lt s' hs', prL_of_lt s' hs']
  rfl

def cstL (hΔ : DeltaRho hR uZ ιZ c) (ell : ℕ) (d : Dc W T c) : LvT hR uZ ιZ T c hΔ ell :=
  fun s => ⟨cstD (KsW W s) d, fun j => Formalism.ExponentWindows.G.SlopeTestRemainingChoices.grd_cst _ _ d⟩

theorem prL_cstL {hΔ : DeltaRho hR uZ ιZ c} (s' : ℕ) (hs' : s' < ell) (d : Dc W T c) :
    prL s' (cstL hΔ ell d) = cstD (KsW W s') d := by
  rw [prL_of_lt s' hs']
  rfl

def lvData (H : LvHyp Lb hR uZ ιZ C c ell Λ κ lam) (f' : PowerSeries O) (kind : ℕ → Kind)
    (b : ℕ → ℕ) (η : ℕ) : E.LevelData (latOf C) c ell Λ r where
  Lv := LvT hR uZ ιZ T c H.delta ell
  gE := fun _ => gEL H
  gE_semi := fun _ a e => by
    funext s
    apply Subtype.ext
    change (levW W uZ ιZ s).γ (HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a) •
      toA hR T c s (e s : AmbM hR T c s)) =
      HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s ((baseIdOf hR).Bs.γ a)) •
        (levW W uZ ιZ s).γ (toA hR T c s (e s : AmbM hR T c s))
    rw [Level.γ, graded_semilinear_holds, H.gamRho s a]
  loc := fun _ => locM Lb C H.delta ell Λ κ H.kap H.expSemi H.locInv
  locL := fun _ => locLM H.delta ell Λ lam H.loclInv
  Nl := NlS H.filAnti
  Nb := NbS kind b η
  Fl := FlS Λ f'
  Dc := fun _ => DcS ell

def lvModel (H : LvHyp Lb hR uZ ιZ C c ell Λ κ lam) (f' : PowerSeries O) (kind : ℕ → Kind)
    (b : ℕ → ℕ) (η : ℕ) :
    LevelModel (lvData H f' kind b η) LL (KsW W) (DeltaT PD.p) (Dc W T c) where
  lev := levW W uZ ιZ
  ρ := rhoL hR c
  ρ_C := H.rhoC
  pr := prL
  pr_smul := prL_smul
  pr_γ := fun _ _ s' hs' e => prL_gEL H s' hs' e
  pr_inv := fun s _ e => prL_inv s e
  pr_inj := prL_inj
  Fil := FilD W T c
  kind := kind
  b := b
  η := η
  mem_Nl := fun _ _ _ => Iff.rfl
  mem_Nb := fun _ _ _ => Iff.rfl
  mem_Dc := fun _ _ _ => Iff.rfl
  const := fun d => ⟨cstL H.delta ell d, fun s' hs' => prL_cstL s' hs' d⟩

def UL (lam : Fin r → Dc W T c) (kind : ℕ → Kind) (b : ℕ → ℕ) (η : ℕ) (s : ℕ) :
    Submodule O (Fin r → O) where
  carrier := {v | ∑ k, algebraMap O LL (v k) • lam k ∈ UOf (kind s) (b s) η (FilD W T c s)}
  add_mem' := fun {v w} hv hw => by
    simp only [Set.mem_ofPred_eq, Pi.add_apply, map_add (f := _), add_smul, Finset.sum_add_distrib] at hv hw ⊢
    exact add_mem hv hw
  zero_mem' := by
    simp only [Set.mem_ofPred_eq, Pi.zero_apply, map_zero, zero_smul, Finset.sum_const_zero]
    exact zero_mem _
  smul_mem' := fun a v hv => by
    simp only [Set.mem_ofPred_eq, Pi.smul_apply, smul_eq_mul, map_mul, mul_smul] at hv ⊢
    rw [← Finset.smul_sum]
    exact Submodule.smul_mem _ _ hv

end Assembly

section MapDefs

def ambMap {Ks D₁ D₂ : Type} [CommRing Ks] [Algebra LL Ks] [AddCommGroup D₁] [Module LL D₁]
    [AddCommGroup D₂] [Module LL D₂] (g : Ks ⊗[LL] D₁ →ₗ[Ks] Ks ⊗[LL] D₂) :
    Amb LL Ks D₁ →+ Amb LL Ks D₂ where
  toFun f := HahnModule.of Ks (((HahnModule.of Ks).symm f).map g.toAddMonoidHom)
  map_zero' := by
    apply (HahnModule.of Ks).symm.injective
    ext k
    simp
  map_add' f f' := by
    apply (HahnModule.of Ks).symm.injective
    ext k
    simp

variable {T₁ T₂ : LocLat G Qp LL O}

def MemD (W : LocWach PD LL O v n) (F : LatHom T₁.L T₂.L) (c : ZMod n) : Prop :=
  ∀ x ∈ DcrisL PD T₁.ρ (W.emb c),
    AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B) x ∈ DcrisL PD T₂.ρ (W.emb c)

def dmapOf {F : LatHom T₁.L T₂.L} {c : ZMod n} (h : MemD W F c) : Dc W T₁ c →ₗ[LL] Dc W T₂ c :=
  ((AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B)).domRestrict
    (DcrisL PD T₁.ρ (W.emb c))).codRestrict (DcrisL PD T₂.ρ (W.emb c)) (fun x => h x x.2)

def ambF {F : LatHom T₁.L T₂.L} {c : ZMod n} (h : MemD W F c) (s : ℕ) :
    Amb LL (KsW W s) (Dc W T₁ c) →+ Amb LL (KsW W s) (Dc W T₂ c) :=
  ambMap ((dmapOf h).baseChange (KsW W s))

variable {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O} {c : ZMod n}

structure MapHyp (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) (F : LatHom T₁.L T₂.L)
    (c : ZMod n) : Prop where

  memD : MemD W F c

  smul : ∀ (s : ℕ) (x : HahnSeries ℤ (KsW W s)) (f : Amb LL (KsW W s) (Dc W T₁ c)),
    ambF memD s (x • f) = x • ambF memD s f

  inv : ∀ (s : ℕ) (f : Amb LL (KsW W s) (Dc W T₁ c)), (levW W uZ ιZ s).Inv f →
    (levW W uZ ιZ s).Inv (ambF memD s f)

def prEOf {F : LatHom T₁.L T₂.L} (M : MapHyp hR uZ ιZ F c) {hΔ₁ : DeltaRho hR uZ ιZ c}
    {hΔ₂ : DeltaRho hR uZ ιZ c} (ell : ℕ) :
    LvT hR uZ ιZ T₁ c hΔ₁ ell →ₗ[PowerSeries O] LvT hR uZ ιZ T₂ c hΔ₂ ell where
  toFun e := fun s => ⟨ambF M.memD s (toA hR T₁ c s (e s : AmbM hR T₁ c s)), M.inv s _ (e s).2⟩
  map_add' e e' := by
    funext s
    apply Subtype.ext
    exact map_add _ _ _
  map_smul' a e := by
    funext s
    apply Subtype.ext
    exact M.smul s _ _

theorem prL_prEOf {F : LatHom T₁.L T₂.L} (M : MapHyp hR uZ ιZ F c) {hΔ₁ : DeltaRho hR uZ ιZ c}
    {hΔ₂ : DeltaRho hR uZ ιZ c} {ell : ℕ} (s : ℕ) (hs : s < ell)
    (e : LvT hR uZ ιZ T₁ c hΔ₁ ell) :
    prL s (prEOf M (hΔ₂ := hΔ₂) ell e) = ambF M.memD s (prL s e) := by
  rw [prL_of_lt s hs, prL_of_lt s hs]
  rfl

end MapDefs

section abelian₂

variable {hR : Ring9 W} {T : LocLat G Qp LL O}


open Classical in
def lamOf (C : Coord W (baseIdOf hR) T) (c : ZMod n) (ell : ℕ) {r : ℕ} (e : Fin r → C.V) (k : Fin r) :
    Dc W T c :=
  if h : C.t (c - (ell : ZMod n)) (e k) ∈ W.N T then
    (if h' : ((φVB PD (LL := LL) (V := T.V)) ^ ell) (W.cmp T ⟨_, h⟩) ∈ DcrisL PD T.ρ (W.emb c) then
      ⟨_, h'⟩ else 0)
  else 0

end abelian₂

end Formalism.MainNotions.N.Ln03
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi =====
