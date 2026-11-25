module

public import Formalism.LocalRingCardinality.DataSpaces
import Lemmata.GeneralBFactAltForm.Imports
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MulVecMapInjective
public import Formalism.PeriodIntegrals.AutLzFinite
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianLattices.HermitianLatticesProofs.UnimodularSpan

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.FiniteOfIntegralBound, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MjSmulRight, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.IndSetFinite, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.AutLzFinMain, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AutLzFinite

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.FiniteOfIntegralBound =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.FiniteOfIntegralBound", "h": "module\n\npublic import Formalism.LocalRingCardinality.DataSpaces\nimport Lemmata.GeneralBFactAltForm.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AutLzFinite.SlopeTestRemainingChoices

open Formalism.BasicNotions NumberField

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E}

theorem finite_of_integral_bound (t : E) (ht : t ≠ 0) (C : ℝ) :
    {a : E | IsIntegral ℤ (t * a) ∧ ∀ τ : E →+* ℂ, ‖τ a‖ ≤ C}.Finite := by
  set K : ℝ := ∑ τ : E →+* ℂ, ‖τ t‖
  apply Set.Finite.of_finite_image (f := fun a => t * a)
  · apply (Embeddings.finite_of_norm_le E ℂ (K * C)).subset
    rintro _ ⟨a, ⟨ha1, ha2⟩, rfl⟩
    refine ⟨ha1, fun τ => ?_⟩
    rw [map_mul, norm_mul]
    have h1 : ‖τ t‖ ≤ K := Finset.single_le_sum (f := fun τ : E →+* ℂ => ‖τ t‖)
      (fun _ _ => norm_nonneg _) (Finset.mem_univ τ)
    have h2 := ha2 τ
    have h3 : 0 ≤ ‖τ a‖ := norm_nonneg _
    nlinarith [norm_nonneg (τ t)]
  · intro a _ b _ hab
    exact mul_left_cancel₀ ht hab

end PI.AutLzFinite.SlopeTestRemainingChoices
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.FiniteOfIntegralBound =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MjSmulRight =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MjSmulRight", "h": "module\n\npublic import Formalism.LocalRingCardinality.DataSpaces\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MulVecMapInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AutLzFinite.SlopeTestRemainingChoices

open Formalism.BasicNotions

variable {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E)

def mj (z x y : S.V) : E := S.hT x y - 2 / S.hT z z * (S.hT x z * S.hT z y)

variable {S}

theorem mj_add_left (z x x' y : S.V) : mj S z (x + x') y = mj S z x y + mj S z x' y := by
  simp only [mj, map_add (f := _), LinearMap.add_apply]
  ring

theorem mj_smul_left (z : S.V) (c : E) (x y : S.V) : mj S z (c • x) y = star c * mj S z x y := by
  simp only [mj, LinearMap.map_smulₛₗ₂, smul_eq_mul, starRingEnd_apply]
  ring

theorem mj_add_right (z x y y' : S.V) : mj S z x (y + y') = mj S z x y + mj S z x y' := by
  simp only [mj, map_add (f := _)]
  ring

theorem mj_smul_right (z : S.V) (c : E) (x y : S.V) : mj S z x (c • y) = c * mj S z x y := by
  simp only [mj, map_smul, smul_eq_mul]
  ring

theorem mj_swap (z x y : S.V) : mj S z y x = star (mj S z x y) := by
  have hs : ∀ a b : S.V, star (S.hT a b) = S.hT b a := fun a b => by
    have h := S.herm.eq a b
    rwa [starRingEnd_apply] at h
  simp only [mj, star_sub, star_mul', star_div₀, hs, star_ofNat]
  ring

theorem mj_self_star (z x : S.V) : star (mj S z x x) = mj S z x x := (mj_swap z x x).symm

theorem tau_real {τ : E →+* ℂ} (hstar : ∀ a : E, τ (star a) = starRingEnd ℂ (τ a)) {a : E}
    (ha : star a = a) : τ a = ((τ a).re : ℂ) := by
  have h := hstar a
  rw [ha] at h
  exact (Complex.conj_eq_iff_re.1 h.symm).symm

theorem tau_normSq {τ : E →+* ℂ} (hstar : ∀ a : E, τ (star a) = starRingEnd ℂ (τ a)) (c : E) :
    τ (star c * c) = (Complex.normSq (τ c) : ℂ) := by
  rw [map_mul, hstar, Complex.normSq_eq_conj_mul_self]

section Pos

variable (hstar : ∀ (τ : E →+* ℂ) (a : E), τ (star a) = starRingEnd ℂ (τ a)) (τ : E →+* ℂ)
  (X P : Submodule E S.V) (hPX : ∀ x ∈ X, ∀ y ∈ P, S.hT x y = 0) (z : S.V) (hzP : z ∈ P)
  (hzz : (τ (S.hT z z)).re < 0)
  (hpos : ∀ y ∈ P, S.hT z y = 0 → y ∉ X → 0 < (τ (S.hT y y)).re)
include hstar hPX hzP hzz hpos

theorem mj_pos (y : S.V) (hy : y ∈ P) :
    0 ≤ (τ (mj S z y y)).re ∧ ((τ (mj S z y y)).re = 0 → y ∈ X) := by
  have hzz0 : S.hT z z ≠ 0 := by
    intro h; rw [h, map_zero] at hzz; simp at hzz
  set c := S.hT z y / S.hT z z with hc
  set y0 := y - c • z with hy0def
  have h1 : S.hT z y0 = 0 := by
    simp only [y0, map_sub, LinearMap.map_smul, smul_eq_mul, c]
    field_simp; ring
  have hy0 : y0 ∈ P := P.sub_mem hy (P.smul_mem c hzP)
  have h2 : S.hT y0 z = 0 := by rw [herm_swap, h1, star_zero]
  have hm : mj S z y y = S.hT y0 y0 - star c * c * S.hT z z := by
    have hyy : y = y0 + c • z := by simp [y0]
    rw [hyy]
    simp only [mj, map_add (f := _), LinearMap.add_apply, LinearMap.map_smulₛₗ, LinearMap.smul_apply,
      smul_eq_mul, h1, h2, starRingEnd_apply, RingHom.id_apply]
    field_simp
    ring
  have hq : 0 ≤ (τ (S.hT y0 y0)).re ∧ ((τ (S.hT y0 y0)).re = 0 → y0 ∈ X) := by
    by_cases hX : y0 ∈ X
    · have : S.hT y0 y0 = 0 := hPX y0 hX y0 hy0
      simp [this, hX]
    · have := hpos y0 hy0 h1 hX
      exact ⟨this.le, fun h => absurd h this.ne'⟩
  have hτ : (τ (mj S z y y)).re = (τ (S.hT y0 y0)).re - Complex.normSq (τ c) * (τ (S.hT z z)).re := by
    rw [hm, map_sub, map_mul, tau_normSq (hstar τ), Complex.sub_re, Complex.re_ofReal_mul]
  have hns := Complex.normSq_nonneg (τ c)
  refine ⟨by rw [hτ]; nlinarith, fun h0 => ?_⟩
  rw [hτ] at h0
  have hA : Complex.normSq (τ c) * (τ (S.hT z z)).re = 0 := by nlinarith
  have hB : (τ (S.hT y0 y0)).re = 0 := by nlinarith
  have hc0 : c = 0 := by
    rcases mul_eq_zero.mp hA with h | h
    · exact τ.injective (by rw [Complex.normSq_eq_zero.mp h, map_zero])
    · exact absurd h hzz.ne
  have : y = y0 := by simp [y0, hc0]
  rw [this]; exact hq.2 hB

theorem mj_cs (x y : S.V) (hx : x ∈ P) (hy : y ∈ P) :
    Complex.normSq (τ (mj S z x y)) ≤ (τ (mj S z x x)).re * (τ (mj S z y y)).re := by
  have hnn : ∀ s : E, 0 ≤ (τ (mj S z (s • x + y) (s • x + y))).re := fun s =>
    (mj_pos hstar τ X P hPX z hzP hzz hpos _ (P.add_mem (P.smul_mem s hx) hy)).1
  have hexp : ∀ s : E, mj S z (s • x + y) (s • x + y) =
      star s * s * mj S z x x + star s * mj S z x y + s * star (mj S z x y) + mj S z y y := by
    intro s
    rw [mj_add_left, mj_add_right, mj_add_right, mj_smul_left, mj_smul_left, mj_smul_right,
      mj_smul_right, mj_swap z x y]
    ring
  have hareal := tau_real (hstar τ) (mj_self_star z x)
  have ha0 := (mj_pos hstar τ X P hPX z hzP hzz hpos x hx).1
  rcases ha0.lt_or_eq with hapos | hazero
  · have hane : mj S z x x ≠ 0 := by
      intro h; rw [h, map_zero] at hapos; simp at hapos
    have h := hnn (-(mj S z x y) / mj S z x x)
    rw [hexp] at h
    have hval : star (-(mj S z x y) / mj S z x x) * (-(mj S z x y) / mj S z x x) * mj S z x x +
        star (-(mj S z x y) / mj S z x x) * mj S z x y +
        (-(mj S z x y) / mj S z x x) * star (mj S z x y) + mj S z y y =
        mj S z y y - (star (mj S z x y) * mj S z x y) / mj S z x x := by
      rw [star_div₀, star_neg, mj_self_star]
      field_simp
      ring
    rw [hval, map_sub, map_div₀, tau_normSq (hstar τ), hareal, Complex.sub_re] at h
    rw [← Complex.ofReal_div, Complex.ofReal_re] at h
    rw [sub_nonneg, div_le_iff₀ hapos] at h
    linarith
  · have hτa : τ (mj S z x x) = 0 := by rw [hareal, ← hazero]; simp
    have ha : mj S z x x = 0 := τ.injective (by rw [hτa, map_zero])
    rw [← hazero, zero_mul]
    by_contra hlt
    have hpos' : 0 < Complex.normSq (τ (mj S z x y)) := lt_of_not_ge hlt
    obtain ⟨N, hN⟩ := exists_nat_gt ((τ (mj S z y y)).re / (2 * Complex.normSq (τ (mj S z x y))))
    have h := hnn (-(N : E) * mj S z x y)
    rw [hexp, ha] at h
    have hval : star (-(N : E) * mj S z x y) * (-(N : E) * mj S z x y) * 0 +
        star (-(N : E) * mj S z x y) * mj S z x y +
        (-(N : E) * mj S z x y) * star (mj S z x y) + mj S z y y =
        mj S z y y - (2 * (N : E)) * (star (mj S z x y) * mj S z x y) := by
      rw [star_mul, star_neg, star_natCast]
      ring
    rw [hval, map_sub, map_mul, tau_normSq (hstar τ), Complex.sub_re] at h
    have h2 : (τ (2 * (N : E))) = ((2 * (N : ℝ) : ℝ) : ℂ) := by
      rw [map_mul, map_natCast, map_ofNat]; push_cast; ring
    rw [h2, ← Complex.ofReal_mul, Complex.ofReal_re] at h
    rw [div_lt_iff₀ (by positivity)] at hN
    nlinarith

end Pos

end PI.AutLzFinite.SlopeTestRemainingChoices
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MjSmulRight =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.IndSetFinite =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.IndSetFinite", "h": "module\n\npublic import Formalism.LocalRingCardinality.DataSpaces\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.FiniteOfIntegralBound\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MjSmulRight\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MulVecMapInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AutLzFinite.SlopeTestRemainingChoices

open Formalism.BasicNotions NumberField

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E}

def indSet (X P : Submodule E S.V) (z : S.V) (Λ : Submodule (𝓞 E) S.V) :
    Set ((P ⧸ X.comap P.subtype) → (P ⧸ X.comap P.subtype)) :=
  {φ | ∃ γ : S.V ≃ₗ[E] S.V, (∀ x y, S.hT (γ x) (γ y) = S.hT x y) ∧ γ z = z ∧ (∀ x ∈ Λ, γ x ∈ Λ) ∧
    (∀ x ∈ P, γ x ∈ P) ∧
    ∀ (x : P) (hx : γ x.1 ∈ P), φ (Submodule.Quotient.mk x) = Submodule.Quotient.mk ⟨γ x.1, hx⟩}

theorem indSet_finite (hstar : ∀ (τ : E →+* ℂ) (a : E), τ (star a) = starRingEnd ℂ (τ a))
    (X P : Submodule E S.V) (hPX : ∀ x ∈ X, ∀ y ∈ P, S.hT x y = 0) (z : S.V) (hzP : z ∈ P)
    (hzz : ∀ τ : E →+* ℂ, (τ (S.hT z z)).re < 0)
    (hpos : ∀ τ : E →+* ℂ, ∀ y ∈ P, S.hT z y = 0 → y ∉ X → 0 < (τ (S.hT y y)).re)
    (Λ : Submodule (𝓞 E) S.V) (hΛ : Submodule.span E (Λ : Set S.V) = ⊤)
    (hint : ∀ x ∈ Λ, ∀ y ∈ Λ, IsIntegral ℤ (S.hT x y)) (hzΛ : z ∈ Λ) :
    (indSet X P z Λ).Finite := by
  classical
  set Xc := X.comap P.subtype
  have hzz0 : S.hT z z ≠ 0 := by
    obtain ⟨τ⟩ : Nonempty (E →+* ℂ) := inferInstance
    intro h; have := hzz τ; rw [h, map_zero] at this; simp at this

  set bB := Module.finBasis E P
  have hd : ∀ i, ∃ d : 𝓞 E, d ≠ 0 ∧ d • (bB i : S.V) ∈ Λ := fun i => _root_.Bl.general_b_fact_alt_form.goal1 (F := E) Λ (by simp [hΛ])
  choose d hd0 hdΛ using hd
  have hd0' : ∀ i, algebraMap (𝓞 E) E (d i) ≠ 0 := fun i => by
    rw [ne_eq, ← map_zero (algebraMap (𝓞 E) E), (IsFractionRing.injective (𝓞 E) E).eq_iff]
    exact hd0 i
  set b := bB.unitsSMul (fun i => Units.mk0 _ (hd0' i))
  have hbΛ : ∀ i, ((b i : P) : S.V) ∈ Λ := by
    intro i
    simp only [b, Module.Basis.unitsSMul_apply, Units.smul_def, Units.val_mk0,
      algebraMap_smul]
    exact hdΛ i

  set cf : Fin (Module.finrank E P) → ℝ := fun i =>
    ∑ τ : E →+* ℂ, |(τ (mj S z (b i : S.V) (b i : S.V))).re| with hcf
  set C : ℝ := ∑ i, cf i with hCdef
  have hC : ∀ i (τ : E →+* ℂ), (τ (mj S z (b i : S.V) (b i : S.V))).re ≤ C := by
    intro i τ
    have h1 : |(τ (mj S z (b i : S.V) (b i : S.V))).re| ≤ cf i :=
      Finset.single_le_sum (f := fun (τ : E →+* ℂ) => |(τ (mj S z (b i : S.V) (b i : S.V))).re|)
        (fun _ _ => abs_nonneg _) (Finset.mem_univ τ)
    have h2 : cf i ≤ C := Finset.single_le_sum (f := cf)
      (fun j _ => Finset.sum_nonneg fun _ _ => abs_nonneg _) (Finset.mem_univ i)
    exact (le_abs_self _).trans (h1.trans h2)
  have hC0 : 0 ≤ C := Finset.sum_nonneg fun j _ => Finset.sum_nonneg fun _ _ => abs_nonneg _

  set Y : Set (P ⧸ Xc) := {q | ∃ y : P, (y : S.V) ∈ Λ ∧
    (∀ τ : E →+* ℂ, (τ (mj S z y y)).re ≤ C) ∧ q = Submodule.Quotient.mk y}

  let mjR : Fin (Module.finrank E P) → S.V →ₗ[E] E := fun j =>
    S.hT (b j : S.V) - (2 / S.hT z z * S.hT (b j : S.V) z) • S.hT z
  have hmjR : ∀ j y, mjR j y = mj S z (b j : S.V) y := by
    intro j y; simp only [mjR, mj, LinearMap.sub_apply, LinearMap.smul_apply, smul_eq_mul]; ring
  let Pm : P →ₗ[E] (Fin (Module.finrank E P) → E) := LinearMap.pi fun j => (mjR j).comp P.subtype
  have hPm : ∀ (y : P) j, Pm y j = mj S z (b j : S.V) y := by
    intro y j; simp [Pm, hmjR]
  have hker : Xc ≤ LinearMap.ker Pm := by
    intro y hy
    rw [LinearMap.mem_ker]
    funext j
    rw [hPm]
    have h1 : S.hT (b j : S.V) y = 0 := by
      rw [herm_swap, hPX (y : S.V) hy _ (b j).2, star_zero]
    have h2 : S.hT z y = 0 := by rw [herm_swap, hPX (y : S.V) hy _ hzP, star_zero]
    simp [mj, h1, h2]
  let g : (P ⧸ Xc) →ₗ[E] (Fin (Module.finrank E P) → E) := Xc.liftQ Pm hker
  have hg : Function.Injective g := by
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    intro q hq
    obtain ⟨w, rfl⟩ := Submodule.Quotient.mk_surjective _ q
    rw [LinearMap.mem_ker, Submodule.liftQ_apply] at hq
    have hw : ∀ j, mj S z (b j : S.V) w = 0 := fun j => by rw [← hPm, hq]; rfl
    have hall : ∀ v : P, mj S z v w = 0 := by
      intro v
      have hv : v ∈ Submodule.span E (Set.range b) := by rw [b.span_eq]; trivial
      induction hv using Submodule.span_induction with
      | mem x hx => obtain ⟨j, rfl⟩ := hx; exact hw j
      | zero => simpa using mj_smul_left (S := S) z 0 (0 : S.V) w
      | add x y _ _ h1 h2 => rw [Submodule.coe_add, mj_add_left, h1, h2, add_zero]
      | smul c x _ h => rw [Submodule.coe_smul, mj_smul_left, h, mul_zero]
    obtain ⟨τ⟩ : Nonempty (E →+* ℂ) := inferInstance
    have hw0 := (mj_pos hstar τ X P hPX z hzP (hzz τ) (hpos τ) w w.2).2 (by rw [hall w]; simp)
    rw [Submodule.mem_bot, Submodule.Quotient.mk_eq_zero]
    exact hw0
  have hYfin : Y.Finite := by
    apply Set.Finite.of_finite_image (f := g) _ hg.injOn
    apply (Set.Finite.pi (t := fun _ => {a : E | IsIntegral ℤ (S.hT z z * a) ∧
      ∀ τ : E →+* ℂ, ‖τ a‖ ≤ C}) fun _ => finite_of_integral_bound _ hzz0 C).subset
    rintro _ ⟨q, ⟨y, hyΛ, hyC, rfl⟩, rfl⟩
    simp only [Set.mem_pi, Set.mem_univ, true_implies]
    intro j
    have hgj : g (Submodule.Quotient.mk y) j = mj S z (b j : S.V) y := by
      simp only [g, Submodule.liftQ_apply]; exact hPm y j
    rw [hgj]
    constructor
    · have e1 : S.hT z z * mj S z (b j : S.V) y =
          S.hT z z * S.hT (b j : S.V) y - (S.hT (b j : S.V) z * S.hT z y + S.hT (b j : S.V) z * S.hT z y) := by
        simp only [mj]; field_simp; ring
      rw [e1]
      refine IsIntegral.sub (IsIntegral.mul (hint _ hzΛ _ hzΛ) (hint _ (hbΛ j) _ hyΛ))
        (IsIntegral.add (IsIntegral.mul (hint _ (hbΛ j) _ hzΛ) (hint _ hzΛ _ hyΛ))
          (IsIntegral.mul (hint _ (hbΛ j) _ hzΛ) (hint _ hzΛ _ hyΛ)))
    · intro τ
      have hcs := mj_cs hstar τ X P hPX z hzP (hzz τ) (hpos τ) _ _ (b j).2 y.2
      have ha := (mj_pos hstar τ X P hPX z hzP (hzz τ) (hpos τ) _ (b j).2).1
      have hb := (mj_pos hstar τ X P hPX z hzP (hzz τ) (hpos τ) _ y.2).1
      have h1 := hC j τ
      have h2 := hyC τ
      have hsq : ‖τ (mj S z (b j : S.V) y)‖ ^ 2 ≤ C ^ 2 := by
        rw [Complex.sq_norm]; nlinarith
      exact (pow_le_pow_iff_left₀ (norm_nonneg _) hC0 two_ne_zero).mp hsq

  apply Set.Finite.of_finite_image (f := fun φ i => φ (Submodule.Quotient.mk (b i)))
  · apply (Set.Finite.pi (t := fun _ => Y) fun _ => hYfin).subset
    rintro _ ⟨φ, ⟨γ, hiso, hγz, hγΛ, hγP, hφ⟩, rfl⟩
    simp only [Set.mem_pi, Set.mem_univ, true_implies]
    intro i
    refine ⟨⟨γ (b i : S.V), hγP _ (b i).2⟩, hγΛ _ (hbΛ i), fun τ => ?_, hφ _ _⟩
    have e1 : ∀ x : S.V, S.hT (γ x) z = S.hT x z := fun x => by
      conv_lhs => rw [← hγz]
      exact hiso x z
    have e2 : ∀ x : S.V, S.hT z (γ x) = S.hT z x := fun x => by
      conv_lhs => rw [← hγz]
      exact hiso z x
    have : mj S z (γ (b i : S.V)) (γ (b i : S.V)) = mj S z (b i : S.V) (b i : S.V) := by
      simp only [mj, hiso, e1, e2]
    simp only [this]
    exact hC i τ
  · rintro φ ⟨γ, hiso, hγz, hγΛ, hγP, hφ⟩ φ' ⟨γ', hiso', hγz', hγΛ', hγP', hφ'⟩ heq
    let ψ : P →ₗ[E] (P ⧸ Xc) := Xc.mkQ ∘ₗ (γ : S.V →ₗ[E] S.V).restrict hγP
    let ψ' : P →ₗ[E] (P ⧸ Xc) := Xc.mkQ ∘ₗ (γ' : S.V →ₗ[E] S.V).restrict hγP'
    have hψ : ∀ x : P, φ (Submodule.Quotient.mk x) = ψ x := fun x => by
      rw [hφ x (hγP _ x.2)]; rfl
    have hψ' : ∀ x : P, φ' (Submodule.Quotient.mk x) = ψ' x := fun x => by
      rw [hφ' x (hγP' _ x.2)]; rfl
    have hψψ : ψ = ψ' := b.ext fun i => by
      rw [← hψ, ← hψ']; exact congrFun heq i
    funext q
    obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ q
    rw [hψ, hψ', hψψ]

end PI.AutLzFinite.SlopeTestRemainingChoices
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.IndSetFinite =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.AutLzFinMain =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.AutLzFinMain", "h": "module\n\npublic import Formalism.PeriodIntegrals.AutLzFinite\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.IndSetFinite\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MulVecMapInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianLattices.HermitianLatticesProofs.UnimodularSpan\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AutLzFinite.SlopeTestRemainingChoices

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem autLzFin_main (D : D7) : PI.AutLzFinite.AutLzFin D := by
  intro hsig Tn hTn F0 Λ hΛ
  obtain ⟨-, hfix, -⟩ := hΛ
  obtain ⟨hlat, hunimod, hlift, -⟩ := hfix
  have hstar : ∀ (τ : D.host.E →+* ℂ) (a : D.host.E), τ (star a) = starRingEnd ℂ (τ a) := by
    haveI := D.host.isCMField_hostE
    intro τ a
    exact NumberField.IsCMField.complexEmbedding_complexConj _ τ a
  have hPX : ∀ x ∈ F0.X, ∀ y ∈ perpS (VS D) F0.X, (VS D).hT x y = 0 := fun x hx y hy => hy x hx
  have hzX : ∀ x ∈ F0.X, (VS D).hT x F0.z = 0 := by
    intro x hx
    refine Submodule.span_induction ?_ ?_ ?_ ?_ hx
    · rintro _ ⟨a, rfl⟩
      exact F0.z_orth a
    · simp
    · intro u v _ _ hu hv
      simp [hu, hv]
    · intro c u _ hu
      simp [hu]
  have hzP : F0.z ∈ perpS (VS D) F0.X := fun x hx => hzX x hx
  have hzz : ∀ τ : D.host.E →+* ℂ, (τ ((VS D).hT F0.z F0.z)).re < 0 := by
    intro τ
    rw [F0.z_norm, map_neg, map_natCast, Complex.neg_re, Complex.natCast_re]
    exact neg_neg_of_pos (by exact_mod_cast hTn)
  have hpos : ∀ τ : D.host.E →+* ℂ, ∀ y ∈ perpS (VS D) F0.X, (VS D).hT F0.z y = 0 → y ∉ F0.X →
      0 < (τ ((VS D).hT y y)).re := by
    intro τ y hy hzy hyX
    have hq : ((VS D).sig τ).2 ≤ D.R.rS + 1 := by
      have e : (VS D).sig τ = D.R.sigY0 := D.sp.baseSpace_signature_eq τ
      rw [e]
      simp [Formalism.BasicNotions.Ranks.sigY0]
    exact pos_perp (S := VS D) hstar τ (hsig τ) hq F0.e F0.e_indep F0.e_iso F0.z F0.z_orth (hzz τ) y
      (fun a => hy _ (Submodule.subset_span ⟨a, rfl⟩)) hzy hyX
  have hspan : Submodule.span D.host.E (Λ : Set (VS D).V) = ⊤ :=
    Formalism.HermitianLatticesTheory.IsUnimodular.span_eq_top hunimod (VS D).herm hlat.fg
  have hint : ∀ x ∈ Λ, ∀ y ∈ Λ, IsIntegral ℤ ((VS D).hT x y) := by
    intro x hx y hy
    have hd : Formalism.HermitianLatticesTheory.dual (VS D).hT Λ = Λ := hunimod
    have h1 : y ∈ Formalism.E.hdual (VS D).hT Λ := by
      have h2 : y ∈ Formalism.HermitianLatticesTheory.dual (VS D).hT Λ := by rw [hd]; exact hy
      exact h2
    simp only [Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap] at h1
    obtain ⟨o, ho⟩ := Submodule.mem_one.1 (h1 x hx)
    have ho' : (VS D).hT x y = algebraMap (𝓞 D.host.E) D.host.E o := ho.symm
    rw [ho']
    exact o.isIntegral_coe
  have hzΛ : F0.z ∈ Λ := hlift.1
  have hfin := indSet_finite (S := VS D) hstar F0.X (perpS (VS D) F0.X) hPX F0.z hzP hzz hpos Λ hspan hint hzΛ
  refine hfin.subset ?_
  rintro φ ⟨γ, hγ, hgΛ, hφ⟩
  obtain ⟨hiso, hXa, hz⟩ := hγ
  have hiso' : ∀ x y, (VS D).hT (γ x) (γ y) = (VS D).hT x y := hiso
  have hXr : F0.Xa D.R.rS = F0.X := by
    simp [FlagG.Xa, FlagG.X, Fin.is_lt, Set.image_univ]
  refine ⟨γ, hiso', hz, ?_, ?_, hφ⟩
  · intro x hx
    have h3 : γ x ∈ Formalism.HermitianLatticesTheory.gmap γ Λ := ⟨x, hx, rfl⟩
    rwa [hgΛ] at h3
  · intro x hxP y hyX
    have hX : F0.X.map (γ : (VS D).V →ₗ[D.host.E] (VS D).V) = F0.X := by
      rw [← hXr]
      exact hXa D.R.rS
    rw [← hX] at hyX
    obtain ⟨y', hy', rfl⟩ := hyX
    show (VS D).hT (γ y') (γ x) = 0
    rw [hiso']
    exact hxP y' hy'

end PI.AutLzFinite.SlopeTestRemainingChoices
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.AutLzFinMain =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AutLzFinite =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AutLzFinite", "h": "module\n\npublic import Formalism.PeriodIntegrals.AutLzFinite\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.AutLzFinMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AutLzFinite =====
