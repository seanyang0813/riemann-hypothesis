module

public import Mathlib.Algebra.Polynomial.Degree.Defs
public import Mathlib.Algebra.Polynomial.Eval.Defs
public import Mathlib.Algebra.Polynomial.Degree.Operations
public import Mathlib.Algebra.Polynomial.Eval.Coeff
public import Mathlib.Algebra.Polynomial.Lifts
public import Mathlib.RingTheory.Polynomial.ScaleRoots
public import Development.EtaleCohomology.EtaleSheaves.EtaleBaseChangeFractionFieldIndEtaleOverPolynomi
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CommonDenom, Development.EtaleCohomology.EtaleSheaves.DomCoverPf

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CommonDenom =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CommonDenom", "h": "module\n\npublic import Mathlib.Algebra.Polynomial.Degree.Defs\npublic import Mathlib.Algebra.Polynomial.Eval.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.Polynomial.Degree.Operations\npublic import Mathlib.Algebra.Polynomial.Eval.Coeff\npublic import Mathlib.Algebra.Polynomial.Lifts\npublic import Mathlib.RingTheory.Polynomial.ScaleRoots\n\n"}
section -- clump:auto
@[expose] public section

noncomputable def UpperTheory.Reformulated.B.Qn19.AIC :
    (A : Type) → [CommRing A] → Prop :=
    fun (A : Type) [CommRing A] ↦
      ∀ (p : Polynomial A), p.Monic → (0 : ℕ) < p.natDegree → ∃ (a : A), Polynomial.eval a p = (0 : A)

private theorem UpperTheory.Reformulated.B.Qn19.commonDenom {R L : Type} [CommRing R] [CommRing L] (φ : R →+* L)
    (h : ∀ z : L, ∃ a b : R, IsUnit (φ b) ∧ z * φ b = φ a) (s : Finset L) :
    ∃ b : R, IsUnit (φ b) ∧ ∀ z ∈ s, ∃ a : R, φ a = z * φ b := by
  classical
  induction s using Finset.induction_on with
  | empty => exact ⟨1, by simp, by simp⟩
  | insert x s _ ih =>
    obtain ⟨b, hb, hs⟩ := ih
    obtain ⟨a, c, hc, hx⟩ := h x
    refine ⟨b * c, by rw [map_mul]; exact hb.mul hc, ?_⟩
    intro z hz
    rcases Finset.mem_insert.1 hz with rfl | hz
    · exact ⟨a * b, by rw [map_mul, map_mul, ← hx]; ring⟩
    · obtain ⟨d, hd⟩ := hs z hz
      exact ⟨d * c, by rw [map_mul, map_mul, hd]; ring⟩

theorem UpperTheory.Reformulated.B.Qn19.aicFrac :
    ∀ (R L : Type) [inst : CommRing R] [inst_1 : CommRing L] (φ : R →+* L),
      UpperTheory.Reformulated.B.Qn19.AIC R →
        (∀ (z : L), ∃ (a : R) (b : R), IsUnit ((φ : R → L) b) ∧ z * (φ : R → L) b = (φ : R → L) a) → UpperTheory.Reformulated.B.Qn19.AIC L := by
  intro R L _ _ φ hR h p hp hdeg
  obtain ⟨b, hb, hs⟩ := UpperTheory.Reformulated.B.Qn19.commonDenom φ h p.coeffs
  have hmon : (p.scaleRoots (φ b)).Monic := (Polynomial.monic_scaleRoots_iff _).2 hp
  have hlift : p.scaleRoots (φ b) ∈ Polynomial.lifts φ := by
    rw [Polynomial.lifts_iff_coeff_lifts]
    intro i
    rw [Polynomial.coeff_scaleRoots]
    rcases lt_trichotomy i p.natDegree with hi | hi | hi
    · by_cases h0 : p.coeff i = 0
      · exact ⟨0, by simp [h0]⟩
      · obtain ⟨a, ha⟩ := hs _ (Polynomial.coeff_mem_coeffs h0)
        obtain ⟨k, hk⟩ : ∃ k, p.natDegree - i = k + 1 := ⟨p.natDegree - i - 1, by omega⟩
        exact ⟨a * b ^ k, by rw [map_mul, map_pow, ha, hk]; ring⟩
    · subst hi
      exact ⟨1, by simp [hp.coeff_natDegree]⟩
    · exact ⟨0, by simp [Polynomial.coeff_eq_zero_of_natDegree_lt hi]⟩
  obtain ⟨q, hq, hqd, hqm⟩ := Polynomial.lifts_and_natDegree_eq_and_monic hlift hmon
  rw [Polynomial.natDegree_scaleRoots] at hqd
  obtain ⟨a, ha⟩ := hR q hqm (by rw [hqd]; exact hdeg)
  obtain ⟨u, hu⟩ := hb
  refine ⟨(↑u⁻¹ : L) * φ a, ?_⟩
  have h1 : Polynomial.eval (φ a) (p.scaleRoots (φ b)) = 0 := by
    rw [← hq, Polynomial.eval_map, Polynomial.eval₂_hom, ha, map_zero]
  have h2 := Polynomial.scaleRoots_eval_mul p ((↑u⁻¹ : L) * φ a) (φ b)
  have h3 : φ b * ((↑u⁻¹ : L) * φ a) = φ a := by
    rw [← hu, ← mul_assoc, Units.mul_inv, one_mul]
  rw [h3, h1, ← hu] at h2
  exact ((u.isUnit.pow p.natDegree).mul_right_eq_zero).1 h2.symm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CommonDenom =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.DomCoverPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.DomCoverPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.EtaleBaseChangeFractionFieldIndEtaleOverPolynomi\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CommonDenom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Polynomial GlobalTheory.EtC

namespace LateralTheory.E.DomCoverPf

theorem aicFrac (R L : Type) [CommRing R] [CommRing L] (φ : R →+* L) (hR : AIC R)
    (h : ∀ z : L, ∃ a b : R, IsUnit (φ b) ∧ z * φ b = φ a) : AIC L :=
  _root_.UpperTheory.Reformulated.B.Qn19.aicFrac R L φ hR h

def IdemCover : Prop := ∀ (C : CommRingCat.{0}), ∃ (D : CommRingCat.{0}) (g : C ⟶ D),
  g.hom.IsIntegral ∧ t_E3Cut.SpS g ∧ ∀ (r : Ideal D) [r.IsPrime], IsDomain (Localization.AtPrime r) ∧
    ∀ z : Localization.AtPrime r, ∃ a b : C, IsUnit (algebraMap D (Localization.AtPrime r) (g.hom b)) ∧
      z * algebraMap D (Localization.AtPrime r) (g.hom b) = algebraMap D (Localization.AtPrime r) (g.hom a)

theorem DomCover_of (h2 : IdemCover) : t_E3Cut.DomCover := by
  intro C hC
  obtain ⟨D, g, hi, hs, hr⟩ := h2 C
  refine ⟨D, g, hi, hs, fun r _ => ⟨(hr r).1, ?_⟩⟩
  exact aicFrac C (Localization.AtPrime r) ((algebraMap D (Localization.AtPrime r)).comp g.hom) hC (hr r).2

end LateralTheory.E.DomCoverPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.DomCoverPf =====
