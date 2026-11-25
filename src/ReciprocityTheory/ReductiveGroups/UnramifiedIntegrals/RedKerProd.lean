module

public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.TranslateProduct
public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedDefs
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.MulStableIntegral
public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedHalf
public import Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol
public import Mathlib.NumberTheory.LSeries.PrimesInAP
public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerPoly
public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerPrin
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.ReduceModChar
import Mathlib.Algebra.AffineMonoid.UniqueSums
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SemiChar
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedCardG, ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedGcd, ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedPrime, ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerIdeal, ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerProd

-- ===== clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedCardG =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedCardG", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.TranslateProduct\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedDefs\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.MulStableIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedHalf\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators Classical
open Formalism.L2.Th1.CM Formalism.L2.Th1.F

namespace ReciprocityTheory.ChartRestriction.L1

namespace CardG

theorem card_line {F : Type} [Field F] [Fintype F] (u v : F) (h : u ≠ 0 ∨ v ≠ 0) :
    (Finset.univ.filter (fun w : F × F => u * w.1 + v * w.2 = 0)).card = Fintype.card F := by
  rcases h with h | h
  · have : Finset.univ.filter (fun w : F × F => u * w.1 + v * w.2 = 0)
        = Finset.univ.image (fun t : F => (-(v * t) / u, t)) := by
      ext ⟨x, y⟩
      simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_image, Prod.mk.injEq]
      constructor
      · intro e
        refine ⟨y, ?_, rfl⟩
        field_simp
        linear_combination -e
      · rintro ⟨t, e, rfl⟩
        rw [← e]; field_simp; ring
    rw [this, Finset.card_image_of_injective _ (fun s t e => (Prod.mk.inj e).2), Finset.card_univ]
  · have : Finset.univ.filter (fun w : F × F => u * w.1 + v * w.2 = 0)
        = Finset.univ.image (fun t : F => (t, -(u * t) / v)) := by
      ext ⟨x, y⟩
      simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_image, Prod.mk.injEq]
      constructor
      · intro e
        refine ⟨x, rfl, ?_⟩
        field_simp
        linear_combination -e
      · rintro ⟨t, rfl, e⟩
        rw [← e]; field_simp; ring
    rw [this, Finset.card_image_of_injective _ (fun s t e => (Prod.mk.inj e).1), Finset.card_univ]

theorem card_ker {F : Type} [Field F] [Fintype F] (a b c d : F) (hdet : a * d - b * c = 0)
    (hne : ¬ (a = 0 ∧ b = 0 ∧ c = 0 ∧ d = 0)) :
    (Finset.univ.filter (fun w : F × F => a * w.1 + b * w.2 = 0 ∧ c * w.1 + d * w.2 = 0)).card
      = Fintype.card F := by
  by_cases hab : a ≠ 0 ∨ b ≠ 0
  · rw [← card_line a b hab]
    congr 1
    ext ⟨x, y⟩
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    refine ⟨fun e => e.1, fun e => ⟨e, ?_⟩⟩
    rcases hab with h | h
    · apply mul_left_cancel₀ h
      linear_combination c * e + y * hdet
    · apply mul_left_cancel₀ h
      linear_combination d * e - x * hdet
  · push Not at hab
    obtain ⟨ha, hb⟩ := hab
    have hcd : c ≠ 0 ∨ d ≠ 0 := by
      by_contra hcd
      push Not at hcd
      exact hne ⟨ha, hb, hcd.1, hcd.2⟩
    rw [← card_line c d hcd]
    congr 1
    ext ⟨x, y⟩
    simp [ha, hb]

theorem coord_unique (L : PeriodPair) {m n m' n' : ℤ}
    (h : (m : ℂ) * L.ω₁ + n * L.ω₂ = m' * L.ω₁ + n' * L.ω₂) : m = m' ∧ n = n' := by
  have hi := LinearIndependent.pair_iff.mp L.indep ((m - m' : ℤ) : ℝ) ((n - n' : ℤ) : ℝ) (by
    simp only [Complex.real_smul]; push_cast; linear_combination h)
  constructor
  · have := hi.1
    have h2 : m - m' = 0 := by exact_mod_cast this
    omega
  · have := hi.2
    have h2 : n - n' = 0 := by exact_mod_cast this
    omega

theorem mem_iff (L : PeriodPair) (p : ℕ) (hp : p ≠ 0) {z : ℂ} {m n : ℤ}
    (h : (m : ℂ) * L.ω₁ + n * L.ω₂ = p * z) :
    z ∈ L.lattice ↔ (m : ZMod p) = 0 ∧ (n : ZMod p) = 0 := by
  have hpc : (p : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hp
  rw [ZMod.intCast_zmod_eq_zero_iff_dvd, ZMod.intCast_zmod_eq_zero_iff_dvd]
  constructor
  · intro hz
    obtain ⟨m', n', e⟩ := PeriodPair.mem_lattice.mp hz
    have := coord_unique L (m := m) (n := n) (m' := p * m') (n' := p * n') (by
      rw [h, ← e]; push_cast; ring)
    exact ⟨⟨m', this.1⟩, ⟨n', this.2⟩⟩
  · rintro ⟨⟨m', rfl⟩, ⟨n', rfl⟩⟩
    refine PeriodPair.mem_lattice.mpr ⟨m', n', ?_⟩
    apply mul_left_cancel₀ hpc
    rw [← h]; push_cast; ring

def co (L : PeriodPair) (z : ℂ) : ℤ × ℤ :=
  if h : z ∈ L.lattice then
    ((PeriodPair.mem_lattice.mp h).choose, (PeriodPair.mem_lattice.mp h).choose_spec.choose)
  else 0

theorem co_spec (L : PeriodPair) {z : ℂ} (h : z ∈ L.lattice) :
    ((co L z).1 : ℂ) * L.ω₁ + ((co L z).2 : ℂ) * L.ω₂ = z := by
  rw [co, dite_eq_left h]
  exact (PeriodPair.mem_lattice.mp h).choose_spec.choose_spec

end CardG

open CardG

theorem card_G (L : PeriodPair) (β : ℂ) (hβ : MulStable L β) (p M : ℕ) (hp : p.Prime) (hp2 : p ≠ 2)
    (hN : Complex.normSq β = ((p * M : ℕ) : ℝ)) (hM : ¬ p ∣ M) (T : Finset ℂ)
    (hT : IsHalfReps L (p : ℂ) T) :
    2 * (T.filter (fun P => β * P ∈ L.lattice)).card + 1 = p := by
  have : Fact p.Prime := ⟨hp⟩
  obtain ⟨⟨hS1, hS2, hS3⟩, hdisj⟩ := hT.kerReps
  obtain ⟨a, b, c, d, h1, h2, -, hn⟩ := Ker.matrix_data L β hβ
  have hpc : (p : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
  have hdetZ : a * d - b * c = (p : ℤ) * M := by
    have : ((a * d - b * c : ℤ) : ℝ) = (((p : ℤ) * M : ℤ) : ℝ) := by
      rw [← hn, hN]; push_cast; ring
    exact_mod_cast this
  have hdet : (a : ZMod p) * d - b * c = 0 := by
    have := congrArg (fun k : ℤ => (k : ZMod p)) hdetZ
    simpa using this
  have hne : ¬ ((a : ZMod p) = 0 ∧ (b : ZMod p) = 0 ∧ (c : ZMod p) = 0 ∧ (d : ZMod p) = 0) := by
    simp only [ZMod.intCast_zmod_eq_zero_iff_dvd]
    rintro ⟨⟨a', rfl⟩, ⟨b', rfl⟩, ⟨c', rfl⟩, ⟨d', rfl⟩⟩
    apply hM
    have hp0 : (p : ℤ) ≠ 0 := by exact_mod_cast hp.ne_zero
    have : (M : ℤ) = p * (a' * d' - b' * c') := by
      apply mul_left_cancel₀ hp0
      rw [← hdetZ]; ring
    exact Int.natCast_dvd_natCast.mp ⟨_, this⟩

  have hmul : ∀ {z : ℂ} {m n : ℤ}, (m : ℂ) * L.ω₁ + n * L.ω₂ = p * z →
      (β * z ∈ L.lattice ↔ (a : ZMod p) * m + b * n = 0 ∧ (c : ZMod p) * m + d * n = 0) := by
    intro z m n e
    have := mem_iff L p hp.ne_zero (z := β * z) (m := a * m + b * n) (n := c * m + d * n) (by
      push_cast
      linear_combination β * e - (m : ℂ) * h1 - (n : ℂ) * h2)
    rw [this]; push_cast; rfl
  set S := T ∪ T.image (fun P => -P) with hSdef
  set K := Finset.univ.filter (fun w : ZMod p × ZMod p =>
    (a : ZMod p) * w.1 + b * w.2 = 0 ∧ (c : ZMod p) * w.1 + d * w.2 = 0) with hK
  have hKcard : K.card = p := by
    have := card_ker (a : ZMod p) b c d hdet hne
    rw [ZMod.card] at this
    rw [hK]
    convert this
  have h0K : (0 : ZMod p × ZMod p) ∈ K := by simp [hK]
  have hcardS : (S.filter (fun P => β * P ∈ L.lattice)).card
      = 2 * (T.filter (fun P => β * P ∈ L.lattice)).card := by
    have himg : (T.image (fun P => -P)).filter (fun P => β * P ∈ L.lattice)
        = (T.filter (fun P => β * P ∈ L.lattice)).image (fun P => -P) := by
      ext Q
      simp only [Finset.mem_filter, Finset.mem_image]
      constructor
      · rintro ⟨⟨P, hP, rfl⟩, hQ⟩
        refine ⟨P, ⟨hP, ?_⟩, rfl⟩
        have := neg_mem hQ
        simpa using this
      · rintro ⟨P, ⟨hP, hQ⟩, rfl⟩
        refine ⟨⟨P, hP, rfl⟩, ?_⟩
        have := neg_mem hQ
        simpa using this
    rw [hSdef, Finset.filter_union, Finset.card_union_of_disjoint
      (Finset.disjoint_filter_filter hdisj), himg,
      Finset.card_image_of_injective _ neg_injective]
    ring
  have hbij : (S.filter (fun P => β * P ∈ L.lattice)).card = (K.erase 0).card := by
    apply Finset.card_nbij
      (fun z => (((co L (p * z)).1 : ZMod p), ((co L (p * z)).2 : ZMod p)))
    · intro P hP
      obtain ⟨hPS, hPβ⟩ := Finset.mem_filter.mp hP
      have e := co_spec L (hS1 P hPS).1
      rw [Finset.mem_coe, Finset.mem_erase]
      constructor
      · intro h0
        apply (hS1 P hPS).2
        rw [mem_iff L p hp.ne_zero e]
        exact Prod.mk.inj h0
      · rw [hK, Finset.mem_filter]
        exact ⟨Finset.mem_univ _, (hmul e).mp hPβ⟩
    · intro P hP Q hQ hPQ
      have hPS := (Finset.mem_filter.mp (Finset.mem_coe.mp hP)).1
      have hQS := (Finset.mem_filter.mp (Finset.mem_coe.mp hQ)).1
      have eP := co_spec L (hS1 P hPS).1
      have eQ := co_spec L (hS1 Q hQS).1
      apply hS2 P hPS Q hQS
      rw [mem_iff L p hp.ne_zero (m := (co L (p * P)).1 - (co L (p * Q)).1)
        (n := (co L (p * P)).2 - (co L (p * Q)).2) (by push_cast; linear_combination eP - eQ)]
      obtain ⟨e1, e2⟩ := Prod.mk.inj hPQ
      push_cast
      exact ⟨sub_eq_zero.mpr e1, sub_eq_zero.mpr e2⟩
    · rintro ⟨x, y⟩ hxy
      obtain ⟨hxy0, hxyK⟩ := Finset.mem_erase.mp (Finset.mem_coe.mp hxy)
      obtain ⟨m, rfl⟩ := ZMod.intCast_surjective x
      obtain ⟨n, rfl⟩ := ZMod.intCast_surjective y
      set z : ℂ := ((m : ℂ) * L.ω₁ + n * L.ω₂) / p with hz
      have ez : (m : ℂ) * L.ω₁ + n * L.ω₂ = p * z := by rw [hz]; field_simp
      have hzp : (p : ℂ) * z ∈ L.lattice := PeriodPair.mem_lattice.mpr ⟨m, n, ez⟩
      have hzL : z ∉ L.lattice := by
        rw [mem_iff L p hp.ne_zero ez]
        rintro ⟨e1, e2⟩
        exact hxy0 (by rw [e1, e2]; rfl)
      have hzβ : β * z ∈ L.lattice := (hmul ez).mpr (Finset.mem_filter.mp hxyK).2
      obtain ⟨P, hPS, hzP⟩ := hS3 z hzp hzL
      have eP := co_spec L (hS1 P hPS).1
      refine ⟨P, Finset.mem_coe.mpr (Finset.mem_filter.mpr ⟨hPS, ?_⟩), ?_⟩
      · have : β * P = β * z - β * (z - P) := by ring
        rw [this]
        exact sub_mem hzβ (hβ _ hzP)
      · have := (mem_iff L p hp.ne_zero (m := m - (co L (p * P)).1)
          (n := n - (co L (p * P)).2) (by push_cast; linear_combination ez - eP)).mp hzP
        push_cast at this
        exact Prod.ext (sub_eq_zero.mp this.1).symm (sub_eq_zero.mp this.2).symm
  rw [← hcardS, hbij, Finset.card_erase_of_mem h0K, hKcard]
  have := hp.pos
  omega

end ReciprocityTheory.ChartRestriction.L1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedCardG =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedGcd =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedGcd", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedDefs\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SemiChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators Classical
open Formalism.L2.Th1.CM Formalism.L2.Th1.F Polynomial

namespace ReciprocityTheory.ChartRestriction.L1

theorem rootPoly_monic' {E : Type} [Field E] (xs : Finset E) : (rootPoly xs).Monic :=
  monic_prod_of_monic _ _ fun x _ => monic_X_sub_C x

theorem rootPoly_inter_mul_sdiff {E : Type} [Field E] (xs ys : Finset E) :
    rootPoly (xs ∩ ys) * rootPoly (xs \ ys) = rootPoly xs := by
  unfold rootPoly
  rw [← Finset.prod_union (Finset.disjoint_sdiff_inter xs ys).symm, Finset.union_comm,
    Finset.sdiff_union_inter]

theorem rootPoly_isCoprime_of_disjoint {E : Type} [Field E] (xs ys : Finset E) (h : Disjoint xs ys) :
    IsCoprime (rootPoly xs) (rootPoly ys) := by
  unfold rootPoly
  refine IsCoprime.prod_left fun x hx => IsCoprime.prod_right fun y hy => ?_
  refine isCoprime_X_sub_C_of_isUnit_sub ?_
  have hne : x ≠ y := fun e => Finset.disjoint_left.1 h hx (e ▸ hy)
  exact (sub_ne_zero.2 hne).isUnit

theorem exists_poly_map_subfield {E : Type} [Field E] [DecidableEq E] (k : Subfield E) (P : E[X])
    (h : ∀ i, P.coeff i ∈ k) : ∃ p : (k)[X], p.map k.subtype = P := by
  have : P ∈ Polynomial.lifts k.subtype := by
    rw [Polynomial.lifts_iff_coeff_lifts]
    intro n
    exact ⟨⟨_, h n⟩, rfl⟩
  exact this

theorem rootPoly_inter_mem {E : Type} [Field E] (k : Subfield E) (xs ys : Finset E)
    (hx : ∀ i, (rootPoly xs).coeff i ∈ k) (hy : ∀ i, (rootPoly ys).coeff i ∈ k) :
    ∀ i, (rootPoly (xs ∩ ys)).coeff i ∈ k := by
  obtain ⟨p, hp⟩ := exists_poly_map_subfield k _ hx
  obtain ⟨q, hq⟩ := exists_poly_map_subfield k _ hy
  set R := rootPoly (xs ∩ ys) with hR
  set g0 := EuclideanDomain.gcd p q with hg0
  set g := g0.map k.subtype with hg
  have hgP : g ∣ rootPoly xs := by
    rw [← hp]; exact Polynomial.map_dvd _ (EuclideanDomain.gcd_dvd_left p q)
  have hgQ : g ∣ rootPoly ys := by
    rw [← hq]; exact Polynomial.map_dvd _ (EuclideanDomain.gcd_dvd_right p q)
  have hA := rootPoly_inter_mul_sdiff xs ys
  have hB := rootPoly_inter_mul_sdiff ys xs
  rw [Finset.inter_comm ys xs] at hB
  have hdisj : Disjoint (xs \ ys) (ys \ xs) := by
    rw [Finset.disjoint_left]
    intro a ha hb
    exact (Finset.mem_sdiff.1 hb).2 (Finset.mem_sdiff.1 ha).1
  obtain ⟨u, v, huv⟩ := rootPoly_isCoprime_of_disjoint _ _ hdisj
  have hgR : g ∣ R := by
    have : R = u * rootPoly xs + v * rootPoly ys := by
      rw [← hA, ← hB]
      linear_combination (-R) * huv
    rw [this]
    exact dvd_add (hgP.mul_left _) (hgQ.mul_left _)
  have hRg : R ∣ g := by
    have e : g = EuclideanDomain.gcd (rootPoly xs) (rootPoly ys) := by
      rw [← hp, ← hq, Polynomial.gcd_map]
    rw [e]
    exact EuclideanDomain.dvd_gcd ⟨_, hA.symm⟩ ⟨_, hB.symm⟩
  have hRm : R.Monic := rootPoly_monic' _
  have hg0' : g ≠ 0 := fun e => hRm.ne_zero (by simpa [e] using hgR)
  have hg00 : g0 ≠ 0 := fun e => hg0' (by rw [hg, e, Polynomial.map_zero])
  have hmon : (g0 * C g0.leadingCoeff⁻¹).Monic := monic_mul_leadingCoeff_inv hg00
  have hmon' : ((g0 * C g0.leadingCoeff⁻¹).map k.subtype).Monic := hmon.map _
  have hassoc : Associated ((g0 * C g0.leadingCoeff⁻¹).map k.subtype) R := by
    have h1 : Associated g R := associated_of_dvd_dvd hgR hRg
    refine Associated.trans ?_ h1
    rw [Polynomial.map_mul, Polynomial.map_C]
    refine (associated_mul_unit_left g _ ?_).symm.symm
    refine Polynomial.isUnit_C.2 (IsUnit.mk0 _ ?_)
    simpa using hg00
  have heq := eq_of_monic_of_associated hmon' hRm hassoc
  intro i
  rw [← heq, Polynomial.coeff_map]
  exact (((g0 * C g0.leadingCoeff⁻¹).coeff i)).2

end ReciprocityTheory.ChartRestriction.L1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedGcd =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedPrime =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedPrime", "h": "module\n\npublic import Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\npublic import Mathlib.NumberTheory.LSeries.PrimesInAP\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.L1

open scoped NumberTheorySymbols

theorem prime_choice_class (d : ℕ) (hsq : Squarefree d) (hd4 : d % 4 = 3) (h3 : 3 ∣ d) (hd3 : d ≠ 3) :
    ∃ a : ℕ, a % 3 = 2 ∧ J((a : ℤ) | d) = 1 := by
  obtain ⟨d', rfl⟩ := h3
  have hd'4 : d' % 4 = 1 := by omega
  have hd'1 : d' ≠ 1 := by
    rintro rfl
    exact hd3 rfl
  obtain ⟨q, hq, hqd⟩ := Nat.exists_prime_and_dvd hd'1
  have hq2 : q ≠ 2 := by
    rintro rfl
    obtain ⟨t, ht⟩ := hqd
    omega
  haveI := Fact.mk hq
  obtain ⟨c, hc⟩ := FiniteField.exists_nonsquare (F := ZMod q) (by rw [ZMod.ringChar_zmod_n]; exact hq2)
  obtain ⟨d'', rfl⟩ := hqd
  have hd''0 : d'' ≠ 0 := by
    rintro rfl
    simp at hd4
  haveI : NeZero d'' := ⟨hd''0⟩
  haveI : NeZero q := ⟨hq.ne_zero⟩
  have hcop1 : Nat.Coprime q d'' := by
    refine (Nat.Prime.coprime_iff_not_dvd hq).mpr ?_
    rintro ⟨e, rfl⟩
    exact absurd (Nat.isUnit_iff.mp (hsq q ⟨3 * e, by ring⟩)) hq.one_lt.ne'
  have hcop2 : Nat.Coprime 3 (q * d'') := by
    refine (Nat.Prime.coprime_iff_not_dvd Nat.prime_three).mpr ?_
    rintro ⟨e, he⟩
    exact absurd (Nat.isUnit_iff.mp (hsq 3 ⟨e, by rw [he]; ring⟩)) (by norm_num)

  obtain ⟨b, hb1, hb2⟩ := Nat.chineseRemainder hcop1 c.val 1
  obtain ⟨a, ha1, ha2⟩ := Nat.chineseRemainder hcop2 2 b
  refine ⟨a, ?_, ?_⟩
  · unfold Nat.ModEq at ha1
    omega
  have hmq : a % q = c.val % q := (ha2.of_mul_right d'').trans hb1
  have hmd : a % d'' = 1 % d'' := (ha2.of_mul_left q).trans hb2
  have hm3 : a % 3 = 2 := by
    unfold Nat.ModEq at ha1
    omega
  have hJ3 : J((a : ℤ) | 3) = -1 := by
    rw [jacobiSym.mod_left]
    have : (a : ℤ) % ((3 : ℕ) : ℤ) = 2 := by omega
    rw [this]
    norm_num
  have hJq : J((a : ℤ) | q) = -1 := by
    have : (a : ℤ) % (q : ℤ) = (c.val : ℤ) % (q : ℤ) := by exact_mod_cast hmq
    rw [jacobiSym.mod_left, this, ← jacobiSym.mod_left, ← jacobiSym.legendreSym.to_jacobiSym,
      legendreSym.eq_neg_one_iff]
    simpa using hc
  have hJd : J((a : ℤ) | d'') = 1 := by
    have : (a : ℤ) % (d'' : ℤ) = ((1 : ℕ) : ℤ) % (d'' : ℤ) := by exact_mod_cast hmd
    rw [jacobiSym.mod_left, this, ← jacobiSym.mod_left, Nat.cast_one, jacobiSym.one_left]
  rw [jacobiSym.mul_right, jacobiSym.mul_right, hJ3, hJq, hJd]
  norm_num

theorem prime_choice_recip (d p : ℕ) (hd4 : d % 4 = 3) (hp : Odd p) :
    J(-(d : ℤ) | p) = J((p : ℤ) | d) := by
  have hd : Odd d := Nat.odd_iff.mpr (by omega)
  rw [jacobiSym.neg _ hp]
  rcases Nat.odd_mod_four_iff.mp (Nat.odd_iff.mp hp) with h | h
  · rw [ZMod.χ₄_nat_one_mod_four h, one_mul, jacobiSym.quadratic_reciprocity_one_mod_four h hd]
  · rw [ZMod.χ₄_nat_three_mod_four h, jacobiSym.quadratic_reciprocity_three_mod_four hd4 h]
    ring

theorem prime_choice_lift (d p s : ℕ) (hp : p.Prime) (hp2 : p ≠ 2) (hd0 : 0 < d) (hdp : d < p)
    (hs : p ∣ s ^ 2 + d) : ∃ r : ℕ, Even r ∧ p ∣ r ^ 2 + d ∧ ¬ p ^ 2 ∣ r ^ 2 + d := by
  have hpodd : Odd p := hp.odd_of_ne_two hp2
  obtain ⟨r0, hr0e, hr0⟩ : ∃ r0 : ℕ, Even r0 ∧ p ∣ r0 ^ 2 + d := by
    rcases Nat.even_or_odd s with he | ho
    · exact ⟨s, he, hs⟩
    · refine ⟨s + p, ho.add_odd hpodd, ?_⟩
      have e : (s + p) ^ 2 + d = (s ^ 2 + d) + p * (2 * s + p) := by ring
      rw [e]
      exact dvd_add hs (dvd_mul_right _ _)
  have hndvd : ¬ p ∣ r0 := by
    intro h
    have h2 : p ∣ r0 ^ 2 := dvd_pow h two_ne_zero
    have hpd : p ∣ d := (Nat.dvd_add_right h2).mp hr0
    have := Nat.le_of_dvd hd0 hpd
    omega
  by_cases hsq : p ^ 2 ∣ r0 ^ 2 + d
  ·
    refine ⟨r0 + 2 * p, hr0e.add (even_two_mul p), ?_, ?_⟩
    · have e : (r0 + 2 * p) ^ 2 + d = (r0 ^ 2 + d) + p * (4 * r0 + 4 * p) := by ring
      rw [e]
      exact dvd_add hr0 (dvd_mul_right _ _)
    · intro h
      have e : (r0 + 2 * p) ^ 2 + d = (r0 ^ 2 + d) + p ^ 2 * 4 + p * (4 * r0) := by ring
      rw [e] at h
      have h1 : p ^ 2 ∣ p * (4 * r0) := (Nat.dvd_add_right (dvd_add hsq (dvd_mul_right _ _))).mp h
      rw [pow_two] at h1
      have h2 : p ∣ 4 * r0 := Nat.dvd_of_mul_dvd_mul_left hp.pos h1
      rcases (Nat.Prime.dvd_mul hp).mp h2 with h4 | h4
      · exact hp2 ((Nat.prime_dvd_prime_iff_eq hp Nat.prime_two).mp
          (hp.dvd_of_dvd_pow (show p ∣ 2 ^ 2 by simpa using h4)))
      · exact hndvd h4
  · exact ⟨r0, hr0e, hr0, hsq⟩

theorem prime_choice (d b : ℕ) (hsq : Squarefree d) (hd4 : d % 4 = 3) (h3 : 3 ∣ d) (hd3 : d ≠ 3) :
    ∃ p r : ℕ, p.Prime ∧ b < p ∧ d < p ∧ p % 3 = 2 ∧ Even r ∧ p ∣ r ^ 2 + d ∧ ¬ p ^ 2 ∣ r ^ 2 + d := by
  obtain ⟨a, ha3, ha⟩ := prime_choice_class d hsq hd4 h3 hd3
  have hd0 : d ≠ 0 := by omega
  haveI : NeZero d := ⟨hd0⟩
  have hunit : IsUnit (a : ZMod d) := by
    rw [ZMod.isUnit_iff_coprime]
    by_contra hnc
    have h0 : J((a : ℤ) | d) = 0 := jacobiSym.eq_zero_iff.mpr ⟨hd0, by simpa [Int.gcd_natCast_natCast] using hnc⟩
    rw [ha] at h0
    exact one_ne_zero h0
  obtain ⟨p, hpgt, hp, hpa⟩ := Nat.forall_exists_prime_gt_and_eq_mod hunit (b + d)
  have hpd : p % d = a % d := (ZMod.natCast_eq_natCast_iff' p a d).mp hpa
  have hp3 : p % 3 = 2 := by
    rw [← Nat.mod_mod_of_dvd p h3, hpd, Nat.mod_mod_of_dvd a h3, ha3]
  have hpodd : Odd p := hp.odd_of_ne_two (by omega)
  have hmod : (p : ℤ) % (d : ℤ) = (a : ℤ) % (d : ℤ) := by exact_mod_cast hpd
  have hJ : J(-(d : ℤ) | p) = 1 := by
    rw [prime_choice_recip d p hd4 hpodd, jacobiSym.mod_left, hmod, ← jacobiSym.mod_left, ha]
  haveI := Fact.mk hp
  have hne : (((-(d : ℤ)) : ℤ) : ZMod p) ≠ 0 := by
    intro h0
    have h1 : (d : ZMod p) = 0 := by
      push_cast at h0
      simpa using h0
    have := Nat.le_of_dvd (by omega) ((ZMod.natCast_eq_zero_iff d p).mp h1)
    omega
  rw [← jacobiSym.legendreSym.to_jacobiSym, legendreSym.eq_one_iff p hne] at hJ
  obtain ⟨x, hx⟩ := hJ
  have hs : p ∣ x.val ^ 2 + d := by
    rw [← ZMod.natCast_eq_zero_iff]
    push_cast at hx ⊢
    rw [ZMod.natCast_zmod_val]
    linear_combination -hx
  obtain ⟨r, hr1, hr2, hr3⟩ := prime_choice_lift d p x.val hp (by omega) (by omega) (by omega) hs
  exact ⟨p, r, hp, by omega, by omega, hp3, hr1, hr2, hr3⟩

end ReciprocityTheory.ChartRestriction.L1
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedPrime =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerIdeal =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerIdeal", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.TranslateProduct\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedCardG\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedGcd\nimport ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedHalf\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerPoly\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerPrin\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedPrime\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators Classical
open Formalism.L2.Th1.CM Formalism.L2.Th1.F

namespace ReciprocityTheory.ChartRestriction.L1

theorem xsOf_filter (L : PeriodPair) (α β : ℂ) (hα : MulStable L α) (hβ : MulStable L β) (T T' : Finset ℂ)
    (hT : IsHalfReps L α T) (hT' : IsHalfReps L β T') :
    xsOf L (T.filter (fun P => β * P ∈ L.lattice)) = xsOf L T ∩ xsOf L T' := by
  ext x
  simp only [xsOf, Finset.mem_image, Finset.mem_filter, Finset.mem_inter]
  constructor
  · rintro ⟨P, ⟨hP, hβP⟩, rfl⟩
    refine ⟨⟨P, hP, rfl⟩, ?_⟩
    have := (hT'.mem_xsOf hβ (hT.notMem hP)).2 hβP
    simpa only [xsOf, Finset.mem_image] using this
  · rintro ⟨⟨P, hP, rfl⟩, h2⟩
    refine ⟨P, ⟨hP, ?_⟩, rfl⟩
    refine (hT'.mem_xsOf hβ (hT.notMem hP)).1 ?_
    simpa only [xsOf, Finset.mem_image] using h2

theorem natCast_mulStable (L : PeriodPair) (n : ℕ) : MulStable L (n : ℂ) := by
  intro ω hω
  have := L.lattice.nsmul_mem hω n
  simpa [nsmul_eq_mul] using this

theorem kerProd_ideal (d : ℕ) (L : PeriodPair) (hsq : Squarefree d) (hd4 : d % 4 = 3) (hCM : HasCMBy d L)
    (l : ℕ) (hl : l.Prime) (h3 : 3 ∣ d) (hd3 : d ≠ 3) : KerProdAt d L l 3 := by
  obtain ⟨p, r, hp, hb, -, hp3, hr, hdiv, hndiv⟩ := prime_choice d (l + 3) hsq hd4 h3 hd3
  obtain ⟨M, hM⟩ := hdiv
  have hpM : ¬ p ∣ M := by
    rintro ⟨c, rfl⟩
    exact hndiv ⟨c, by rw [hM]; ring⟩
  have hp2 : p ≠ 2 := by omega
  have hp0 : (p : ℂ) ≠ 0 := by exact_mod_cast hp.ne_zero
  set β : ℂ := (r : ℂ) + redSqD d with hβdef
  have hβs : MulStable L β := sqD_mulStable d L hCM r
  have hβN : Complex.normSq β = ((p * M : ℕ) : ℝ) := by rw [← hM]; exact sqD_normSq d r
  have hβN' : Complex.normSq β = ((r ^ 2 + d : ℕ) : ℝ) := sqD_normSq d r
  have hps : MulStable L (p : ℂ) := natCast_mulStable L p
  have hpN : Complex.normSq (p : ℂ) = ((p * p : ℕ) : ℝ) := by
    rw [Complex.normSq_natCast]; push_cast; ring
  have hpodd : Odd p := hp.odd_of_ne_two hp2
  have hdodd : Odd d := by rw [Nat.odd_iff]; omega
  have hNodd : Odd (r ^ 2 + d) := (hr.pow_of_ne_zero two_ne_zero).add_odd hdodd
  have hβ0 : β ≠ 0 := by
    intro h0
    rw [h0, map_zero] at hβN'
    have : (r ^ 2 + d : ℕ) = 0 := by exact_mod_cast hβN'.symm
    omega
  obtain ⟨T, hT⟩ := halfReps_exist L (p : ℂ) hp0 hps (p * p) hpN (hpodd.mul hpodd)
  obtain ⟨T', hT'⟩ := halfReps_exist L β hβ0 hβs (r ^ 2 + d) hβN' hNodd
  have hcard := card_G L β hβs p M hp hp2 hβN hpM T hT
  refine ⟨p, T.filter (fun P => β * P ∈ L.lattice), ?_, ?_, ?_, ?_, ?_⟩
  · intro h
    rcases (Nat.dvd_prime hp).1 h with h1 | h1
    · exact hl.one_lt.ne' h1
    · omega
  · omega
  · omega
  · intro z hz
    have hz' := (Finset.mem_filter.1 hz).1
    exact ⟨hT.notMem hz', (hT.1 z hz').1⟩
  · intro k h2 h3' hω
    have hpk : (p : ℂ) ∈ k := natCast_mem k p
    have hβk : β ∈ k := by
      rw [hβdef, redSqD]
      exact k.add_mem (natCast_mem k r)
        (k.sub_mem (k.mul_mem (by simp) hω) k.one_mem)
    have h1 := kerPoly_mem L (p : ℂ) T hp0 hps hT k h2 h3' hpk
    have h1' := kerPoly_mem L β T' hβ0 hβs hT' k h2 h3' hβk
    have h4 := prod_mem_of_rootPoly k _ (rootPoly_inter_mem k _ _ h1 h1')
    rw [← xsOf_filter L (p : ℂ) β hps hβs T T' hT hT', xsOf, Finset.prod_image] at h4
    · exact h4
    · intro a ha b hb hab
      exact hT.injOn (Finset.mem_coe.2 (Finset.mem_filter.1 ha).1)
        (Finset.mem_coe.2 (Finset.mem_filter.1 hb).1) hab

end ReciprocityTheory.ChartRestriction.L1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerIdeal =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerProd =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerProd", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerIdeal\nimport ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerPrin\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators Classical
open Formalism.L2.Th1.CM Formalism.L2.Th1.F

namespace ReciprocityTheory.ChartRestriction.L1

theorem kerProd (d : ℕ) (L : PeriodPair) (hsq : Squarefree d) (hd4 : d % 4 = 3) (hCM : HasCMBy d L) (l : ℕ)
    (hl : l.Prime) (h5 : 5 ≤ l) (hld : ¬ l ∣ d) (e : ℕ) (he : e = 2 ∨ e = 3 ∧ d ≠ 3) :
    KerProdAt d L l e := by
  rcases he with he | ⟨he, hd3⟩
  · exact kerProd_prin d L hd4 hCM l hl h5 hld e (Or.inl he)
  · by_cases h3 : 3 ∣ d
    · subst he
      exact kerProd_ideal d L hsq hd4 hCM l hl h3 hd3
    · exact kerProd_prin d L hd4 hCM l hl h5 hld e (Or.inr ⟨he, h3⟩)

end ReciprocityTheory.ChartRestriction.L1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.RedKerProd =====
