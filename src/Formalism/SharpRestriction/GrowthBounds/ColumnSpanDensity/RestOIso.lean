module

public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.StatementO
public import Mathlib.RingTheory.Nakayama
public import Mathlib.RingTheory.Henselian
public import Mathlib.Algebra.CharP.Frobenius
public import Mathlib.Algebra.Polynomial.AlgebraMap
public import Mathlib.Algebra.Polynomial.Derivative
public import Mathlib.Algebra.Polynomial.Div
public import Mathlib.Algebra.Polynomial.RingDivision
public import Mathlib.Algebra.Polynomial.Roots
public import Mathlib.Algebra.Polynomial.Splits
public import Mathlib.FieldTheory.Finite.Basic
public import Mathlib.FieldTheory.Finite.GaloisField
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LpRingIndepOf
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.PresIso, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.QuadBasis, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.OIsoOf, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.QuadRoots, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.FinalO, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestOIso

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.PresIso =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.PresIso", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.StatementO\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf.QuadraticBasis

section
variable {W O : Type} [CommRing W] [CommRing O]

def pbE (j : W →+* O) (θ w : O) (t : W × W × W × W) : O :=
  j t.1 + j t.2.1 * θ + j t.2.2.1 * w + j t.2.2.2 * θ * w

def pbM (f0 f1 ϖ : W) (t s : W × W × W × W) : W × W × W × W :=
  (t.1 * s.1 - t.2.1 * s.2.1 * f0 + ϖ * (t.2.2.1 * s.2.2.1 - t.2.2.2 * s.2.2.2 * f0),
   t.1 * s.2.1 + t.2.1 * s.1 - t.2.1 * s.2.1 * f1
     + ϖ * (t.2.2.1 * s.2.2.2 + t.2.2.2 * s.2.2.1 - t.2.2.2 * s.2.2.2 * f1),
   t.1 * s.2.2.1 - t.2.1 * s.2.2.2 * f0 + t.2.2.1 * s.1 - t.2.2.2 * s.2.1 * f0,
   t.1 * s.2.2.2 + t.2.1 * s.2.2.1 - t.2.1 * s.2.2.2 * f1 + t.2.2.1 * s.2.1 + t.2.2.2 * s.1
     - t.2.2.2 * s.2.1 * f1)

theorem pbE_mul (j : W →+* O) (θ w : O) (f0 f1 ϖ : W) (hθ : θ ^ 2 + j f1 * θ + j f0 = 0)
    (hw : w ^ 2 = j ϖ) (t s : W × W × W × W) :
    pbE j θ w t * pbE j θ w s = pbE j θ w (pbM f0 f1 ϖ t s) := by
  simp only [pbE, pbM, map_add (f := _), map_sub, map_mul]
  linear_combination (j t.2.2.1 * j s.2.2.1 + (j t.2.2.1 * j s.2.2.2 + j t.2.2.2 * j s.2.2.1) * θ +
      j t.2.2.2 * j s.2.2.2 * θ ^ 2) * hw +
    (j t.2.1 * j s.2.1 + (j t.2.1 * j s.2.2.2 + j t.2.2.2 * j s.2.1) * w +
      j t.2.2.2 * j s.2.2.2 * j ϖ) * hθ

theorem pbE_add (j : W →+* O) (θ w : O) (t s : W × W × W × W) :
    pbE j θ w t + pbE j θ w s = pbE j θ w (t + s) := by
  simp only [pbE, Prod.fst_add, Prod.snd_add, map_add (f := _)]
  ring

theorem pbE_bij {j : W →+* O} {θ w : O} (h : IsQuadBasis j θ w) : Function.Bijective (pbE j θ w) := by
  constructor
  · intro t s hts
    obtain ⟨u, -, hu⟩ := h (pbE j θ w t)
    exact (hu t rfl).trans (hu s hts).symm
  · intro x
    obtain ⟨t, ht, -⟩ := h x
    exact ⟨t, ht.symm⟩

end

def pbF {W₁ W₂ : Type} [CommRing W₁] [CommRing W₂] (φ : W₁ ≃+* W₂) (t : W₁ × W₁ × W₁ × W₁) :
    W₂ × W₂ × W₂ × W₂ :=
  (φ t.1, φ t.2.1, φ t.2.2.1, φ t.2.2.2)

private theorem pbF_pbM_eq_pbM_map {W₁ W₂ : Type} [CommRing W₁] [CommRing W₂] (φ : W₁ ≃+* W₂)
    (f0 f1 ϖ : W₁) (t s : W₁ × W₁ × W₁ × W₁) :
    pbF φ (pbM f0 f1 ϖ t s) = pbM (φ f0) (φ f1) (φ ϖ) (pbF φ t) (pbF φ s) := by
  simp [pbF, pbM]

private theorem pbF_add {W₁ W₂ : Type} [CommRing W₁] [CommRing W₂] (φ : W₁ ≃+* W₂)
    (t s : W₁ × W₁ × W₁ × W₁) : pbF φ (t + s) = pbF φ t + pbF φ s := by
  simp [pbF]

theorem presentationIso_holds : PresIso := by
  intro W₁ W₂ O₁ O₂ _ _ _ _ j₁ j₂ θ₁ w₁ θ₂ w₂ f0 f1 ϖ φW hθ₁ hθ₂ hw₁ hw₂ hB₁ hB₂
  let e₁ : (W₁ × W₁ × W₁ × W₁) ≃ O₁ := Equiv.ofBijective _ (pbE_bij hB₁)
  let e₂ : (W₂ × W₂ × W₂ × W₂) ≃ O₂ := Equiv.ofBijective _ (pbE_bij hB₂)
  let eF : (W₁ × W₁ × W₁ × W₁) ≃ (W₂ × W₂ × W₂ × W₂) :=
    { toFun := pbF φW
      invFun := pbF φW.symm
      left_inv := fun t => by simp [pbF]
      right_inv := fun t => by simp [pbF] }
  let E : O₁ ≃ O₂ := (e₁.symm.trans eF).trans e₂
  have hE : ∀ t, E (pbE j₁ θ₁ w₁ t) = pbE j₂ θ₂ w₂ (pbF φW t) := by
    intro t
    have h1 : e₁.symm (pbE j₁ θ₁ w₁ t) = t := e₁.symm_apply_apply t
    simp only [E, Equiv.trans_apply, h1]
    rfl
  have hsurj : ∀ x : O₁, ∃ t, x = pbE j₁ θ₁ w₁ t :=
    fun x => ⟨e₁.symm x, (e₁.apply_symm_apply x).symm⟩
  refine ⟨{ E with
    map_mul' := ?_
    map_add' := ?_ }, ?_, ?_, ?_⟩
  · intro x y
    obtain ⟨t, rfl⟩ := hsurj x
    obtain ⟨s, rfl⟩ := hsurj y
    show E _ = E _ * E _
    rw [pbE_mul j₁ θ₁ w₁ f0 f1 ϖ hθ₁ hw₁, hE, hE, hE, pbF_pbM_eq_pbM_map,
      pbE_mul j₂ θ₂ w₂ (φW f0) (φW f1) (φW ϖ) hθ₂ hw₂]
  · intro x y
    obtain ⟨t, rfl⟩ := hsurj x
    obtain ⟨s, rfl⟩ := hsurj y
    show E _ = E _ + E _
    rw [pbE_add, hE, hE, hE, pbF_add, pbE_add]
  · intro x
    have h1 := hE (x, 0, 0, 0)
    rw [show pbE j₁ θ₁ w₁ (x, 0, 0, 0) = j₁ x by simp [pbE]] at h1
    show E (j₁ x) = j₂ (φW x)
    rw [h1]
    simp [pbE, pbF]
  · have h1 := hE (0, 0, 1, 0)
    rw [show pbE j₁ θ₁ w₁ (0, 0, 1, 0) = w₁ by simp [pbE]] at h1
    show E w₁ = w₂
    rw [h1]
    simp [pbE, pbF]
  · have h1 := hE (0, 1, 0, 0)
    rw [show pbE j₁ θ₁ w₁ (0, 1, 0, 0) = θ₁ by simp [pbE]] at h1
    show E θ₁ = θ₂
    rw [h1]
    simp [pbE, pbF]

end Formalism.MainNotions.flipOneThree.Pf.QuadraticBasis
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.PresIso =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.QuadBasis =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.QuadBasis", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.StatementO\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Nakayama\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf.QuadraticBasis

section
variable {W O : Type} [CommRing W] [IsDomain W] [IsDiscreteValuationRing W] [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O]

theorem qb_unit_of_not_dvd {p : ℕ} (hpW : Irreducible (p : W)) {b : W} (hb : ¬ (p : W) ∣ b) :
    IsUnit b := by
  by_contra h
  have h1 : b ∈ IsLocalRing.maximalIdeal W := (IsLocalRing.mem_maximalIdeal b).2 h
  rw [hpW.maximalIdeal_eq, Ideal.mem_span_singleton] at h1
  exact hb h1

theorem qb_I {p : ℕ} (j : W →+* O) (w θ : O) (hpW : Irreducible (p : W)) (hw2 : w ^ 2 = (p : O))
    (hw : Irreducible w) (hθ : ∀ a : W, ¬ w ∣ θ - j a) {a b : W} (h : w ∣ j a + j b * θ) :
    (p : W) ∣ a ∧ (p : W) ∣ b := by
  have hb : (p : W) ∣ b := by
    by_contra hb
    obtain ⟨u, rfl⟩ := qb_unit_of_not_dvd hpW hb
    apply hθ (-(↑u⁻¹ * a))
    have h0 := Dvd.dvd.mul_left h (j ↑u⁻¹)
    have e : j ↑u⁻¹ * (j a + j ↑u * θ) = θ - j (-(↑u⁻¹ * a)) := by
      have h1 : j ↑u⁻¹ * j ↑u = 1 := by rw [← map_mul]; simp
      rw [map_neg, map_mul]
      linear_combination θ * h1
    rwa [e] at h0
  refine ⟨?_, hb⟩
  by_contra ha
  have hu := (qb_unit_of_not_dvd hpW ha).map j
  obtain ⟨b', rfl⟩ := hb
  have h2 : w ∣ j ((p : W) * b') * θ := by
    rw [map_mul, map_natCast, ← hw2]
    exact ⟨w * j b' * θ, by ring⟩
  have h3 : w ∣ j a := (dvd_add_left h2).1 h
  exact hw.not_isUnit (isUnit_of_dvd_unit h3 hu)

theorem qb_S {p n' : ℕ} (hp : p.Prime) (j : W →+* O) (w θ : O) (hpW : Irreducible (p : W))
    (cW : Nat.card (W ⧸ Ideal.span {(p : W)}) = p ^ n') (hw2 : w ^ 2 = (p : O)) (hw : Irreducible w)
    (cO : Nat.card (O ⧸ Ideal.span {w}) = p ^ (2 * n')) (hθ : ∀ a : W, ¬ w ∣ θ - j a) (x : O) :
    ∃ (a b : W) (x' : O), x = j a + j b * θ + w * x' := by
  have hle : Ideal.span {(p : W)} ≤ Ideal.comap j (Ideal.span {w}) := by
    rw [Ideal.span_singleton_le_iff_mem, Ideal.mem_comap, map_natCast, ← hw2, Ideal.mem_span_singleton]
    exact dvd_pow_self w two_ne_zero
  let ι := Ideal.quotientMap (Ideal.span {w}) j hle
  let g : (W ⧸ Ideal.span {(p : W)}) × (W ⧸ Ideal.span {(p : W)}) → O ⧸ Ideal.span {w} :=
    fun t => ι t.1 + ι t.2 * Ideal.Quotient.mk _ θ
  have hg : ∀ a b : W, g (Ideal.Quotient.mk _ a, Ideal.Quotient.mk _ b)
      = Ideal.Quotient.mk _ (j a + j b * θ) := by
    intro a b
    simp only [g, ι, Ideal.quotientMap_mk, map_add (f := _), map_mul]
  have hinj : Function.Injective g := by
    rintro ⟨a, b⟩ ⟨a', b'⟩ h
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective a
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective b
    obtain ⟨a', rfl⟩ := Ideal.Quotient.mk_surjective a'
    obtain ⟨b', rfl⟩ := Ideal.Quotient.mk_surjective b'
    rw [hg, hg, Ideal.Quotient.eq, Ideal.mem_span_singleton] at h
    have h2 : w ∣ j (a - a') + j (b - b') * θ := by
      have e : j (a - a') + j (b - b') * θ = j a + j b * θ - (j a' + j b' * θ) := by
        simp only [map_sub]; ring
      rwa [e]
    obtain ⟨h3, h4⟩ := qb_I j w θ hpW hw2 hw hθ h2
    have k3 : (Ideal.Quotient.mk (Ideal.span {(p : W)})) a = Ideal.Quotient.mk _ a' :=
      Ideal.Quotient.eq.2 (Ideal.mem_span_singleton.2 h3)
    have k4 : (Ideal.Quotient.mk (Ideal.span {(p : W)})) b = Ideal.Quotient.mk _ b' :=
      Ideal.Quotient.eq.2 (Ideal.mem_span_singleton.2 h4)
    rw [k3, k4]
  haveI : Finite (O ⧸ Ideal.span {w}) :=
    Nat.finite_of_card_ne_zero (by rw [cO]; exact (pow_pos hp.pos _).ne')
  have hbij := hinj.bijective_of_nat_card_le (by rw [Nat.card_prod, cW, cO, two_mul, pow_add])
  obtain ⟨⟨a, b⟩, hab⟩ := hbij.2 (Ideal.Quotient.mk _ x)
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective a
  obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective b
  rw [hg, eq_comm, Ideal.Quotient.eq, Ideal.mem_span_singleton] at hab
  obtain ⟨x', hx'⟩ := hab
  exact ⟨a, b, x', by linear_combination hx'⟩

theorem qb_step {p : ℕ} (j : W →+* O) (w θ : O) (hpW : Irreducible (p : W)) (hw2 : w ^ 2 = (p : O))
    (hw : Irreducible w) (hθ : ∀ a : W, ¬ w ∣ θ - j a) {a b c d : W}
    (h : j a + j b * θ + j c * w + j d * θ * w = 0) :
    ∃ a' b' c' d' : W, a = p * a' ∧ b = p * b' ∧ c = p * c' ∧ d = p * d' ∧
      j a' + j b' * θ + j c' * w + j d' * θ * w = 0 := by
  have hw0 : w ≠ 0 := hw.ne_zero
  have h1 : w ∣ j a + j b * θ := ⟨-(j c + j d * θ), by linear_combination h⟩
  obtain ⟨⟨a', rfl⟩, ⟨b', rfl⟩⟩ := qb_I j w θ hpW hw2 hw hθ h1
  simp only [map_mul, map_natCast, ← hw2] at h
  have h2 : w * (w * (j a' + j b' * θ) + (j c + j d * θ)) = 0 := by linear_combination h
  have h3 := (mul_eq_zero.1 h2).resolve_left hw0
  have h4 : w ∣ j c + j d * θ := ⟨-(j a' + j b' * θ), by linear_combination h3⟩
  obtain ⟨⟨c', rfl⟩, ⟨d', rfl⟩⟩ := qb_I j w θ hpW hw2 hw hθ h4
  simp only [map_mul, map_natCast, ← hw2] at h3
  refine ⟨a', b', c', d', rfl, rfl, rfl, rfl, ?_⟩
  have h5 : w * (j a' + j b' * θ + j c' * w + j d' * θ * w) = 0 := by linear_combination h3
  exact (mul_eq_zero.1 h5).resolve_left hw0

theorem qb_pow {p : ℕ} (j : W →+* O) (w θ : O) (hpW : Irreducible (p : W)) (hw2 : w ^ 2 = (p : O))
    (hw : Irreducible w) (hθ : ∀ a : W, ¬ w ∣ θ - j a) (m : ℕ) : ∀ {a b c d : W},
    j a + j b * θ + j c * w + j d * θ * w = 0 →
    (p : W) ^ m ∣ a ∧ (p : W) ^ m ∣ b ∧ (p : W) ^ m ∣ c ∧ (p : W) ^ m ∣ d := by
  induction m with
  | zero => intro a b c d _; simp
  | succ m ih =>
    intro a b c d h
    obtain ⟨a', b', c', d', rfl, rfl, rfl, rfl, h'⟩ := qb_step j w θ hpW hw2 hw hθ h
    obtain ⟨ha, hb, hc, hd⟩ := ih h'
    simp only [pow_succ']
    exact ⟨mul_dvd_mul_left _ ha, mul_dvd_mul_left _ hb, mul_dvd_mul_left _ hc, mul_dvd_mul_left _ hd⟩

theorem qb_zero_of_pow {p : ℕ} (hpW : Irreducible (p : W)) {a : W} (h : ∀ m, (p : W) ^ m ∣ a) : a = 0 := by
  by_contra ha
  obtain ⟨n, hn⟩ := FiniteMultiplicity.of_not_isUnit hpW.not_isUnit ha
  exact hn (h _)

theorem qb_indep {p : ℕ} (j : W →+* O) (w θ : O) (hpW : Irreducible (p : W)) (hw2 : w ^ 2 = (p : O))
    (hw : Irreducible w) (hθ : ∀ a : W, ¬ w ∣ θ - j a) {a b c d : W}
    (h : j a + j b * θ + j c * w + j d * θ * w = 0) : a = 0 ∧ b = 0 ∧ c = 0 ∧ d = 0 :=
  ⟨qb_zero_of_pow hpW fun m => (qb_pow j w θ hpW hw2 hw hθ m h).1,
   qb_zero_of_pow hpW fun m => (qb_pow j w θ hpW hw2 hw hθ m h).2.1,
   qb_zero_of_pow hpW fun m => (qb_pow j w θ hpW hw2 hw hθ m h).2.2.1,
   qb_zero_of_pow hpW fun m => (qb_pow j w θ hpW hw2 hw hθ m h).2.2.2⟩

theorem qb_span {p n' : ℕ} (hp : p.Prime) (j : W →+* O) (w θ : O) (hpW : Irreducible (p : W))
    (cW : Nat.card (W ⧸ Ideal.span {(p : W)}) = p ^ n') (hfin : j.Finite) (hw2 : w ^ 2 = (p : O))
    (hw : Irreducible w) (cO : Nat.card (O ⧸ Ideal.span {w}) = p ^ (2 * n'))
    (hθ : ∀ a : W, ¬ w ∣ θ - j a) (x : O) :
    ∃ a b c d : W, x = j a + j b * θ + j c * w + j d * θ * w := by
  letI : Algebra W O := j.toAlgebra
  haveI : Module.Finite W O := hfin
  have hsm : ∀ (r : W) (y : O), r • y = j r * y := fun r y => Algebra.smul_def r y
  let M : Submodule W O :=
    { carrier := {y | ∃ a b c d : W, y = j a + j b * θ + j c * w + j d * θ * w}
      add_mem' := by
        rintro _ _ ⟨a, b, c, d, rfl⟩ ⟨a', b', c', d', rfl⟩
        exact ⟨a + a', b + b', c + c', d + d', by simp only [map_add (f := _)]; ring⟩
      zero_mem' := ⟨0, 0, 0, 0, by simp⟩
      smul_mem' := by
        rintro r _ ⟨a, b, c, d, rfl⟩
        exact ⟨r * a, r * b, r * c, r * d, by rw [hsm]; simp only [map_mul]; ring⟩ }
  have hJ : Ideal.span {(p : W)} ≤ Ideal.jacobson (⊥ : Ideal W) := by
    rw [← hpW.maximalIdeal_eq]
    exact IsLocalRing.maximalIdeal_le_jacobson _
  have hle : (⊤ : Submodule W O) ≤ M ⊔ Ideal.span {(p : W)} • (⊤ : Submodule W O) := by
    intro y _
    obtain ⟨a, b, y', hy⟩ := qb_S hp j w θ hpW cW hw2 hw cO hθ y
    obtain ⟨c, d, y'', hy'⟩ := qb_S hp j w θ hpW cW hw2 hw cO hθ y'
    refine Submodule.mem_sup.2 ⟨j a + j b * θ + j c * w + j d * θ * w, ⟨a, b, c, d, rfl⟩,
      (p : W) • y'', Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) Submodule.mem_top, ?_⟩
    rw [hsm, map_natCast, ← hw2, hy, hy']
    ring
  have htop := Submodule.le_of_le_smul_of_le_jacobson_bot Module.Finite.fg_top hJ hle
  exact htop (Submodule.mem_top : x ∈ ⊤)

end

theorem basisCriterion_holds : QuadBasis := by
  intro p n' hp W O _ _ _ _ _ _ j w θ hpW cW hfin hw2 hw cO hθ x
  obtain ⟨a, b, c, d, hx⟩ := qb_span hp j w θ hpW cW hfin hw2 hw cO hθ x
  refine ⟨(a, b, c, d), hx, ?_⟩
  rintro ⟨a', b', c', d'⟩ hx'
  simp only at hx'
  have h : j (a' - a) + j (b' - b) * θ + j (c' - c) * w + j (d' - d) * θ * w = 0 := by
    simp only [map_sub]
    linear_combination hx - hx'
  obtain ⟨h1, h2, h3, h4⟩ := qb_indep j w θ hpW hw2 hw hθ h
  rw [sub_eq_zero.1 h1, sub_eq_zero.1 h2, sub_eq_zero.1 h3, sub_eq_zero.1 h4]

end Formalism.MainNotions.flipOneThree.Pf.QuadraticBasis
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.QuadBasis =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.OIsoOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.OIsoOf", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.StatementO\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.PresIso\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.QuadBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf.QuadraticBasis

theorem oIso_of (hR : QuadRoots)
    (p n' : ℕ) (hp : p.Prime) (hn : 0 < n') (W₁ W₂ O₁ O₂ : Type) [CommRing W₁] [IsDomain W₁]
    [IsDiscreteValuationRing W₁] [CommRing W₂] [IsDomain W₂] [IsDiscreteValuationRing W₂] [CommRing O₁]
    [IsDomain O₁] [IsDiscreteValuationRing O₁] [CommRing O₂] [IsDomain O₂] [IsDiscreteValuationRing O₂]
    (j₁ : W₁ →+* O₁) (j₂ : W₂ →+* O₂) (w₁ : O₁) (w₂ : O₂) (a₁ : Irreducible (p : W₁))
    (a₂ : Irreducible (p : W₂)) (b₁ : Nat.card (W₁ ⧸ Ideal.span {(p : W₁)}) = p ^ n')
    (b₂ : Nat.card (W₂ ⧸ Ideal.span {(p : W₂)}) = p ^ n') (c₁ : IsAdicComplete (Ideal.span {(p : W₁)}) W₁)
    (c₂ : IsAdicComplete (Ideal.span {(p : W₂)}) W₂) (d₁ : j₁.Finite) (d₂ : j₂.Finite)
    (e₁ : IsAdicComplete (IsLocalRing.maximalIdeal O₁) O₁) (e₂ : IsAdicComplete (IsLocalRing.maximalIdeal O₂) O₂)
    (f₁ : w₁ ^ 2 = (p : O₁)) (f₂ : w₂ ^ 2 = (p : O₂)) (g₁ : Irreducible w₁) (g₂ : Irreducible w₂)
    (h₁ : Nat.card (O₁ ⧸ Ideal.span {w₁}) = p ^ (2 * n')) (h₂ : Nat.card (O₂ ⧸ Ideal.span {w₂}) = p ^ (2 * n'))
    (φW : W₁ ≃+* W₂) : ∃ φO : O₁ ≃+* O₂, (∀ x, φO (j₁ x) = j₂ (φW x)) ∧ φO w₁ = w₂ := by
  obtain ⟨f0, f1, θ₁, θ₂, r₁, r₂, s₁, s₂⟩ :=
    hR p n' hp hn W₁ W₂ O₁ O₂ j₁ j₂ w₁ w₂ a₁ a₂ b₁ b₂ e₁ e₂ f₁ f₂ g₁ g₂ h₁ h₂ φW
  have B₁ := basisCriterion_holds p n' hp W₁ O₁ j₁ w₁ θ₁ a₁ b₁ d₁ f₁ g₁ h₁ s₁
  have B₂ := basisCriterion_holds p n' hp W₂ O₂ j₂ w₂ θ₂ a₂ b₂ d₂ f₂ g₂ h₂ s₂
  obtain ⟨φO, k1, k2, _⟩ := presentationIso_holds W₁ W₂ O₁ O₂ j₁ j₂ θ₁ w₁ θ₂ w₂ f0 f1 (p : W₁) φW r₁ r₂
    (by rw [f₁, map_natCast]) (by rw [f₂, map_natCast, map_natCast]) B₁ B₂
  exact ⟨φO, k1, k2⟩

end Formalism.MainNotions.flipOneThree.Pf.QuadraticBasis
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.OIsoOf =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.QuadRoots =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.QuadRoots", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.StatementO\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.CharP.Frobenius\npublic import Mathlib.Algebra.Polynomial.AlgebraMap\npublic import Mathlib.Algebra.Polynomial.Derivative\npublic import Mathlib.Algebra.Polynomial.Div\npublic import Mathlib.Algebra.Polynomial.RingDivision\npublic import Mathlib.Algebra.Polynomial.Roots\npublic import Mathlib.Algebra.Polynomial.Splits\npublic import Mathlib.FieldTheory.Finite.Basic\npublic import Mathlib.FieldTheory.Finite.GaloisField\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf.QuadraticBasis

open Polynomial

private theorem qr_fix {F k : Type} [Field F] [Field k] [Fintype F] (ι : F →+* k) (q : ℕ)
    (hF : Fintype.card F = q) (hq : 1 < q) (x : k) (hx : x ^ q = x) : ∃ y, ι y = x := by
  classical
  have hP : (X ^ q - X : k[X]) ≠ 0 := Polynomial.X_pow_sub_X_ne_zero hq
  have hroot : ∀ z : k, z ^ q = z → z ∈ (X ^ q - X : k[X]).roots.toFinset := by
    intro z hz
    rw [Multiset.mem_toFinset, mem_roots hP, IsRoot, eval_sub, eval_pow, eval_X, hz, sub_self]
  have hsub : Finset.univ.image ι ⊆ (X ^ q - X : k[X]).roots.toFinset := by
    intro z hz
    obtain ⟨y, -, rfl⟩ := Finset.mem_image.mp hz
    apply hroot
    rw [← map_pow, ← hF, FiniteField.pow_card]
  have hle : (X ^ q - X : k[X]).roots.toFinset.card ≤ (Finset.univ.image ι).card := by
    rw [Finset.card_image_of_injective _ ι.injective, Finset.card_univ, hF]
    calc _ ≤ Multiset.card (X ^ q - X : k[X]).roots := Multiset.toFinset_card_le _
      _ ≤ (X ^ q - X : k[X]).natDegree := card_roots' _
      _ = q := Polynomial.natDegree_X_pow_sub_X (R := k) hq
  have heq := Finset.eq_of_subset_of_card_le hsub hle
  have hx' := hroot x hx
  rw [← heq] at hx'
  obtain ⟨y, -, hy⟩ := Finset.mem_image.mp hx'
  exact ⟨y, hy⟩

private theorem qr_exists {F k : Type} [Field F] [Field k] [Fintype F] [Fintype k] (ι : F →+* k) (p n : ℕ)
    [Fact p.Prime] [CharP k p] (hF : Fintype.card F = p ^ n) (hk : Fintype.card k = (p ^ n) ^ 2)
    (hq : 1 < p ^ n) :
    ∃ b c : F, (X ^ 2 + C b * X + C c : F[X]) ∣ X ^ ((p ^ n) ^ 2) - X ∧ ∀ x : F, x ^ 2 + b * x + c ≠ 0 := by
  classical
  have hq2 : p ^ n < (p ^ n) ^ 2 := by nlinarith
  obtain ⟨t, ht⟩ : ∃ t : k, ∀ y, ι y ≠ t := by
    by_contra h
    push_neg at h
    have := Fintype.card_le_of_surjective ι h
    rw [hF, hk] at this
    exact absurd this (not_le.mpr hq2)
  have hφ : ∀ x : k, iterateFrobenius k p n x = x ^ (p ^ n) := fun x => iterateFrobenius_def p n x
  have htq : t ^ ((p ^ n) ^ 2) = t := by rw [← hk]; exact FiniteField.pow_card t
  have hqq : ∀ x : k, (x ^ (p ^ n)) ^ (p ^ n) = x ^ ((p ^ n) ^ 2) := fun x => by rw [← pow_mul, sq]
  have hne : t ^ (p ^ n) ≠ t := fun h => by
    obtain ⟨y, hy⟩ := qr_fix ι (p ^ n) hF hq t h
    exact ht y hy
  obtain ⟨b, hb⟩ := qr_fix ι (p ^ n) hF hq (-(t + t ^ (p ^ n))) (by
    have h := hφ (-(t + t ^ (p ^ n)))
    rw [map_neg, map_add (f := _), hφ, hφ, hqq, htq] at h
    rw [← h]; ring)
  obtain ⟨c, hc⟩ := qr_fix ι (p ^ n) hF hq (t * t ^ (p ^ n)) (by
    rw [mul_pow, hqq, htq, mul_comm])
  have hmonic : (X ^ 2 + C b * X + C c : F[X]).Monic := by monicity!
  have hmap : (X ^ 2 + C b * X + C c : F[X]).map ι = (X - C t) * (X - C (t ^ (p ^ n))) := by
    simp only [Polynomial.map_add (f := _), Polynomial.map_mul, Polynomial.map_pow, map_X, map_C, hb, hc, map_neg,
      map_add, map_mul]
    ring
  have hQ : (X ^ ((p ^ n) ^ 2) - X : F[X]).map ι = (X ^ ((p ^ n) ^ 2) - X : k[X]) := by
    simp only [Polynomial.map_sub, Polynomial.map_pow, map_X]
  refine ⟨b, c, ?_, ?_⟩
  · rw [← Polynomial.map_dvd_map ι ι.injective hmonic, hmap, hQ]
    have hcop : IsCoprime (X - C t) (X - C (t ^ (p ^ n))) :=
      Polynomial.isCoprime_X_sub_C_of_isUnit_sub (sub_ne_zero.mpr hne.symm).isUnit
    refine hcop.mul_dvd ?_ ?_
    · rw [dvd_iff_isRoot, IsRoot, eval_sub, eval_pow, eval_X, htq, sub_self]
    · rw [dvd_iff_isRoot, IsRoot, eval_sub, eval_pow, eval_X, ← pow_mul, mul_comm, pow_mul, htq, sub_self]
  · intro x hx
    have h1 : (ι x - t) * (ι x - t ^ (p ^ n)) = 0 := by
      have h := congrArg ι hx
      rw [map_add (f := _), map_add (f := _), map_mul, map_pow, hb, hc, map_zero] at h
      linear_combination h
    rcases mul_eq_zero.mp h1 with h | h
    · exact ht x (sub_eq_zero.mp h)
    · apply ht (x ^ (p ^ n))
      rw [map_pow, sub_eq_zero.mp h, hqq, htq]

private theorem qr_root {F k : Type} [Field F] [Field k] [Fintype k] (ι : F →+* k) (p n : ℕ)
    [Fact p.Prime] [CharP k p] (hn : 0 < n) (hk : Fintype.card k = (p ^ n) ^ 2) (b c : F)
    (hdvd : (X ^ 2 + C b * X + C c : F[X]) ∣ X ^ ((p ^ n) ^ 2) - X) (hno : ∀ x : F, x ^ 2 + b * x + c ≠ 0) :
    ∃ t : k, t ^ 2 + ι b * t + ι c = 0 ∧ 2 * t + ι b ≠ 0 ∧ ∀ y, ι y ≠ t := by
  classical
  have hp : p.Prime := Fact.out
  have h1q : 1 < Fintype.card k := by
    have : 1 < p ^ n := Nat.one_lt_pow hn.ne' hp.one_lt
    rw [hk]; nlinarith
  have hQ0 : (X ^ ((p ^ n) ^ 2) - X : k[X]) ≠ 0 := Polynomial.X_pow_sub_X_ne_zero (hk ▸ h1q)
  have hdvd' : (X ^ 2 + C (ι b) * X + C (ι c) : k[X]) ∣ X ^ ((p ^ n) ^ 2) - X := by
    have h := Polynomial.map_dvd ι hdvd
    simpa using h
  have hsplitQ : (X ^ ((p ^ n) ^ 2) - X : k[X]).Splits := by
    rw [← hk, splits_iff_card_roots, FiniteField.roots_X_pow_card_sub_X,
      Polynomial.natDegree_X_pow_sub_X (R := k) h1q]
    simp
  have hsplitP := Splits.of_dvd hsplitQ hQ0 hdvd'
  have hdegP : (X ^ 2 + C (ι b) * X + C (ι c) : k[X]).natDegree = 2 := by compute_degree!
  have hP0 : (X ^ 2 + C (ι b) * X + C (ι c) : k[X]) ≠ 0 := fun h => by rw [h] at hdegP; simp at hdegP
  rw [splits_iff_card_roots, hdegP] at hsplitP
  obtain ⟨t, ht⟩ := Multiset.card_pos_iff_exists_mem.mp (by rw [hsplitP]; norm_num)
  rw [mem_roots hP0, IsRoot, eval_add, eval_add, eval_mul, eval_pow, eval_C, eval_C, eval_X] at ht
  refine ⟨t, ht, ?_, ?_⟩
  · intro h2
    have hsq : (X ^ 2 + C (ι b) * X + C (ι c) : k[X]) = (X - C t) * (X - C t) := by
      have hb' : ι b = -2 * t := by linear_combination h2
      have hc' : ι c = t ^ 2 := by linear_combination ht - t * h2
      rw [hb', hc']
      simp only [map_mul, map_neg, map_pow, map_ofNat]
      ring
    have hsf := (galois_poly_separable p ((p ^ n) ^ 2) (dvd_pow (dvd_pow_self p hn.ne') two_ne_zero) :
      (X ^ ((p ^ n) ^ 2) - X : k[X]).Separable).squarefree
    rw [hsq] at hdvd'
    exact Polynomial.not_isUnit_X_sub_C t (hsf _ hdvd')
  · intro y hy
    apply hno y
    apply ι.injective
    rw [map_add (f := _), map_add (f := _), map_mul, map_pow, hy, map_zero]
    exact ht

private theorem qr_hensel {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    (hc : IsAdicComplete (IsLocalRing.maximalIdeal O) O) (w : O) (hw : Irreducible w) (B D a₀ : O)
    (h1 : w ∣ a₀ ^ 2 + B * a₀ + D) (h2 : ¬ w ∣ 2 * a₀ + B) :
    ∃ θ : O, θ ^ 2 + B * θ + D = 0 ∧ w ∣ θ - a₀ := by
  haveI := hc
  haveI := IsAdicComplete.henselianRing O (IsLocalRing.maximalIdeal O)
  have hmax := (IsDiscreteValuationRing.irreducible_iff_uniformizer w).mp hw
  have hd : eval a₀ (derivative (X ^ 2 + C B * X + C D)) = 2 * a₀ + B := by
    simp only [derivative_add, derivative_X_pow, derivative_mul, derivative_C, derivative_X, eval_add, eval_mul,
      eval_C, eval_X, eval_pow, zero_mul, mul_one, add_zero, zero_add]
    (try norm_num)
  obtain ⟨θ, hθ, hθa⟩ := HenselianRing.is_henselian (I := IsLocalRing.maximalIdeal O)
    (X ^ 2 + C B * X + C D) (by monicity!) a₀
    (by rw [hmax, Ideal.mem_span_singleton]; simpa using h1)
    (by rw [hd]
        exact (IsLocalRing.notMem_maximalIdeal.mp (by rw [hmax, Ideal.mem_span_singleton]; exact h2)).map _)
  refine ⟨θ, ?_, ?_⟩
  · simpa [IsRoot] using hθ
  · rw [hmax, Ideal.mem_span_singleton] at hθa
    exact hθa

private def qrGood (p n : ℕ) (W : Type) [CommRing W] (b c : W) : Prop :=
  ((X ^ 2 + C (Ideal.Quotient.mk (Ideal.span {(p : W)}) b) * X + C (Ideal.Quotient.mk (Ideal.span {(p : W)}) c) :
      (W ⧸ Ideal.span {(p : W)})[X]) ∣ X ^ ((p ^ n) ^ 2) - X) ∧
    ∀ x : W ⧸ Ideal.span {(p : W)},
      x ^ 2 + Ideal.Quotient.mk (Ideal.span {(p : W)}) b * x + Ideal.Quotient.mk (Ideal.span {(p : W)}) c ≠ 0

private theorem qr_transport (p n : ℕ) {W₁ W₂ : Type} [CommRing W₁] [CommRing W₂] (φ : W₁ ≃+* W₂) (b c : W₁)
    (h : qrGood p n W₁ b c) : qrGood p n W₂ (φ b) (φ c) := by
  unfold qrGood at h ⊢
  obtain ⟨hd, hr⟩ := h
  obtain ⟨ψ, hψ⟩ : ∃ ψ : (W₁ ⧸ Ideal.span {(p : W₁)}) ≃+* (W₂ ⧸ Ideal.span {(p : W₂)}),
      ∀ x, ψ (Ideal.Quotient.mk _ x) = Ideal.Quotient.mk _ (φ x) :=
    ⟨Ideal.quotientEquiv _ _ φ (by rw [Ideal.map_span, Set.image_singleton]; simp),
      fun x => by first | exact Ideal.quotientEquiv_mk _ _ _ _ x | rfl⟩
  refine ⟨?_, ?_⟩
  · have h := Polynomial.map_dvd (ψ : (W₁ ⧸ Ideal.span {(p : W₁)}) →+* (W₂ ⧸ Ideal.span {(p : W₂)})) hd
    simpa [hψ] using h
  · intro x hx
    apply hr (ψ.symm x)
    apply ψ.injective
    rw [map_add (f := _), map_add (f := _), map_mul, map_pow, hψ, hψ, RingEquiv.apply_symm_apply, map_zero]
    exact hx

private theorem qr_side (p n : ℕ) (hp : p.Prime) (hn : 0 < n) (W O : Type) [CommRing W] [IsDomain W]
    [IsDiscreteValuationRing W] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (j : W →+* O) (w : O)
    (hpW : Irreducible (p : W)) (hcW : Nat.card (W ⧸ Ideal.span {(p : W)}) = p ^ n)
    (hc : IsAdicComplete (IsLocalRing.maximalIdeal O) O) (hw2 : w ^ 2 = (p : O)) (hw : Irreducible w)
    (hcO : Nat.card (O ⧸ Ideal.span {w}) = p ^ (2 * n)) :
    (∃ b c : W, qrGood p n W b c) ∧
      ∀ b c : W, qrGood p n W b c → ∃ θ : O, θ ^ 2 + j b * θ + j c = 0 ∧ ∀ a : W, ¬ w ∣ θ - j a := by
  haveI : Fact p.Prime := ⟨hp⟩
  haveI : (Ideal.span {(p : W)}).IsMaximal := PrincipalIdealRing.isMaximal_of_irreducible hpW
  haveI : (Ideal.span {w}).IsMaximal := PrincipalIdealRing.isMaximal_of_irreducible hw
  letI : Field (W ⧸ Ideal.span {(p : W)}) := Ideal.Quotient.field _
  letI : Field (O ⧸ Ideal.span {w}) := Ideal.Quotient.field _
  haveI : Finite (W ⧸ Ideal.span {(p : W)}) :=
    Nat.finite_of_card_ne_zero (by rw [hcW]; exact (pow_pos hp.pos _).ne')
  haveI : Finite (O ⧸ Ideal.span {w}) :=
    Nat.finite_of_card_ne_zero (by rw [hcO]; exact (pow_pos hp.pos _).ne')
  letI : Fintype (W ⧸ Ideal.span {(p : W)}) := Fintype.ofFinite _
  letI : Fintype (O ⧸ Ideal.span {w}) := Fintype.ofFinite _
  have hFc : Fintype.card (W ⧸ Ideal.span {(p : W)}) = p ^ n := by rw [← Nat.card_eq_fintype_card, hcW]
  have hkc : Fintype.card (O ⧸ Ideal.span {w}) = (p ^ n) ^ 2 := by
    rw [← Nat.card_eq_fintype_card, hcO]; ring
  haveI : CharP (O ⧸ Ideal.span {w}) p := (CharP.charP_iff_prime_eq_zero hp).mpr (by
    rw [← map_natCast (Ideal.Quotient.mk (Ideal.span {w})), ← hw2, Ideal.Quotient.eq_zero_iff_mem,
      Ideal.mem_span_singleton]
    exact dvd_pow_self w two_ne_zero)
  obtain ⟨ι, hι⟩ : ∃ ι : (W ⧸ Ideal.span {(p : W)}) →+* (O ⧸ Ideal.span {w}),
      ∀ a, ι (Ideal.Quotient.mk _ a) = Ideal.Quotient.mk _ (j a) :=
    ⟨Ideal.Quotient.lift _ ((Ideal.Quotient.mk (Ideal.span {w})).comp j) (by
      intro a ha
      obtain ⟨r, rfl⟩ := Ideal.mem_span_singleton.mp ha
      rw [RingHom.comp_apply, map_mul, map_natCast, ← hw2, Ideal.Quotient.eq_zero_iff_mem,
        Ideal.mem_span_singleton]
      exact dvd_mul_of_dvd_left (dvd_pow_self w two_ne_zero) _), fun a => rfl⟩
  refine ⟨?_, ?_⟩
  · obtain ⟨b₀, c₀, hd, hr⟩ := qr_exists ι p n hFc hkc (Nat.one_lt_pow hn.ne' hp.one_lt)
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective b₀
    obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective c₀
    exact ⟨b, c, by unfold qrGood; exact ⟨hd, hr⟩⟩
  · intro b c hg
    unfold qrGood at hg
    obtain ⟨hd, hr⟩ := hg
    obtain ⟨t, ht, ht2, htn⟩ := qr_root ι p n hn hkc (Ideal.Quotient.mk _ b) (Ideal.Quotient.mk _ c) hd hr
    obtain ⟨a₀, rfl⟩ := Ideal.Quotient.mk_surjective t
    obtain ⟨θ, hθ, hθa⟩ := qr_hensel hc w hw (j b) (j c) a₀
      (by rw [← Ideal.mem_span_singleton, ← Ideal.Quotient.eq_zero_iff_mem]; simpa [hι] using ht)
      (by
        intro hdv
        apply ht2
        have e : Ideal.Quotient.mk (Ideal.span {w}) (2 * a₀ + j b) =
            2 * Ideal.Quotient.mk (Ideal.span {w}) a₀ + ι (Ideal.Quotient.mk _ b) := by
          rw [hι, map_add (f := _), map_mul]
          first | rfl
        rw [← e, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton]
        exact hdv)
    refine ⟨θ, hθ, fun a ha => htn (Ideal.Quotient.mk _ a) ?_⟩
    rw [hι, Ideal.Quotient.eq, Ideal.mem_span_singleton]
    have h := dvd_sub hθa ha
    rwa [sub_sub_sub_cancel_left] at h

theorem existsCompatibleRoots_holds : QuadRoots := by
  intro p n hp hn W₁ W₂ O₁ O₂ _ _ _ _ _ _ _ _ _ _ _ _ j₁ j₂ w₁ w₂ hpW₁ hpW₂ hcW₁ hcW₂ hc₁ hc₂ hw2₁ hw2₂
    hw₁ hw₂ hcO₁ hcO₂ φW
  obtain ⟨⟨b, c, hg⟩, h1⟩ := qr_side p n hp hn W₁ O₁ j₁ w₁ hpW₁ hcW₁ hc₁ hw2₁ hw₁ hcO₁
  obtain ⟨-, h2⟩ := qr_side p n hp hn W₂ O₂ j₂ w₂ hpW₂ hcW₂ hc₂ hw2₂ hw₂ hcO₂
  obtain ⟨θ₁, e1, n1⟩ := h1 b c hg
  obtain ⟨θ₂, e2, n2⟩ := h2 (φW b) (φW c) (qr_transport p n φW b c hg)
  exact ⟨c, b, θ₁, θ₂, e1, e2, n1, n2⟩

end Formalism.MainNotions.flipOneThree.Pf.QuadraticBasis
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.QuadRoots =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.FinalO =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.FinalO", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.OIsoOf\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.QuadRoots\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf.QuadraticBasis

theorem oIso (p n' : ℕ) (hp : p.Prime) (hn : 0 < n') (W₁ W₂ O₁ O₂ : Type) [CommRing W₁] [IsDomain W₁] [IsDiscreteValuationRing W₁] [CommRing W₂] [IsDomain W₂] [IsDiscreteValuationRing W₂] [CommRing O₁] [IsDomain O₁] [IsDiscreteValuationRing O₁] [CommRing O₂] [IsDomain O₂] [IsDiscreteValuationRing O₂] (j₁ : W₁ →+* O₁) (j₂ : W₂ →+* O₂) (w₁ : O₁) (w₂ : O₂)
 (a₁ : Irreducible (p : W₁)) (a₂ : Irreducible (p : W₂)) (b₁ : Nat.card (W₁ ⧸ Ideal.span {(p : W₁)}) = p ^ n') (b₂ : Nat.card (W₂ ⧸ Ideal.span {(p : W₂)}) = p ^ n') (c₁ : IsAdicComplete (Ideal.span {(p : W₁)}) W₁) (c₂ : IsAdicComplete (Ideal.span {(p : W₂)}) W₂) (d₁ : j₁.Finite) (d₂ : j₂.Finite) (e₁ : IsAdicComplete (IsLocalRing.maximalIdeal O₁) O₁) (e₂ : IsAdicComplete (IsLocalRing.maximalIdeal O₂) O₂) (f₁ : w₁ ^ 2 = (p : O₁)) (f₂ : w₂ ^ 2 = (p : O₂)) (g₁ : Irreducible w₁) (g₂ : Irreducible w₂) (h₁ : Nat.card (O₁ ⧸ Ideal.span {w₁}) = p ^ (2 * n')) (h₂ : Nat.card (O₂ ⧸ Ideal.span {w₂}) = p ^ (2 * n')) (φW : W₁ ≃+* W₂) : ∃ φO : O₁ ≃+* O₂, (∀ x, φO (j₁ x) = j₂ (φW x)) ∧ φO w₁ = w₂ :=
  oIso_of existsCompatibleRoots_holds p n' hp hn W₁ W₂ O₁ O₂ j₁ j₂ w₁ w₂ a₁ a₂ b₁ b₂ c₁ c₂ d₁ d₂ e₁ e₂ f₁ f₂ g₁ g₂ h₁ h₂ φW

end Formalism.MainNotions.flipOneThree.Pf.QuadraticBasis
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.FinalO =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestOIso =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestOIso", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.LpRingIndepOf\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.QuadraticBasis.FinalO\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree

theorem restOIso : RestOIso := fun p n' R₁ R₂ φW =>
  QuadraticBasis.oIso p n' R₁.std.1.prime (by have := R₁.std.1.two_le; omega) R₁.W R₂.W R₁.O R₂.O R₁.jO R₂.jO R₁.w R₂.w
    R₁.std.1.p_unif R₂.std.1.p_unif R₁.std.1.res_card R₂.std.1.res_card R₁.std.1.eq_sum_herm_smul_frame_of_inW R₂.std.1.eq_sum_herm_smul_frame_of_inW
    R₁.std.1.finite R₂.std.1.finite R₁.std.1.complete_O R₂.std.1.complete_O R₁.std.1.w_sq R₂.std.1.w_sq
    R₁.std.2.1 R₂.std.2.1 R₁.std.2.2.1 R₂.std.2.2.1 φW

end Formalism.MainNotions.flipOneThree.Pf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RestOIso =====
