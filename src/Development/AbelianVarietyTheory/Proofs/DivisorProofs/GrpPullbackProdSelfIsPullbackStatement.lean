module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne
import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne
import Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap
import Development.AbelianVarietyTheory.Definitions.Divisors.Pullback1MemHodgeFiltration

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackProdSelfIsPullback, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackProdSelfIsPullbackStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackProdSelfIsPullback =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackProdSelfIsPullback", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Grp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.Pullback1MemHodgeFiltration\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.AbCoh

theorem prod_pullback_sq : ∀ (R R' : Type) [CommRing R] [CommRing R'] (σ : R →+* R') (A : Over (Sp R)) [GrpObj A] (A' : Over (Sp R')) [GrpObj A'] (φ : A'.left ⟶ A.left), IsGrpPullback A' A (spMap σ) φ → ∃ Φ : (A' ⊗ A').left ⟶ (A ⊗ A).left, IsPullback Φ (A' ⊗ A').hom (A ⊗ A).hom (spMap σ) ∧ μ[A'].left ≫ φ = Φ ≫ μ[A].left ∧ (fst A' A').left ≫ φ = Φ ≫ (fst A A).left ∧ (snd A' A').left ≫ φ = Φ ≫ (snd A A).left ∧ (lift (𝟙 A') (toUnit A' ≫ η[A'])).left ≫ Φ = φ ≫ (lift (𝟙 A) (toUnit A ≫ η[A])).left ∧ (lift (toUnit A' ≫ η[A']) (𝟙 A')).left ≫ Φ = φ ≫ (lift (toUnit A ≫ η[A]) (𝟙 A)).left := by
  intro R R' _ _ σ A _ A' _ φ h
  have pA : IsPullback (fst A A).left (snd A A).left A.hom A.hom := IsPullback.of_hasPullback _ _
  have pA' : IsPullback (fst A' A').left (snd A' A').left A'.hom A'.hom := IsPullback.of_hasPullback _ _
  obtain ⟨Φ, h₁, h₂⟩ : ∃ Φ : (A' ⊗ A').left ⟶ (A ⊗ A).left,
      Φ ≫ (fst A A).left = (fst A' A').left ≫ φ ∧ Φ ≫ (snd A A).left = (snd A' A').left ≫ φ :=
    ⟨pA.lift ((fst A' A').left ≫ φ) ((snd A' A').left ≫ φ) (by
      rw [Category.assoc, Category.assoc, h.1.w, ← Category.assoc, ← Category.assoc, pA'.w]),
      pA.lift_fst _ _ _, pA.lift_snd _ _ _⟩
  have hP : IsPullback Φ (A' ⊗ A').hom (A ⊗ A).hom (spMap σ) := by
    have q := pA'.paste_horiz h.1
    rw [← h₁, ← h.1.w] at q
    have r := (IsPullback.of_right q h₂ pA).paste_vert h.1
    rwa [Over.w, Over.w] at r
  have one : ∀ T : Over (Sp R'), (toUnit T ≫ η[A']).left ≫ φ = (T.hom ≫ spMap σ) ≫ η[A].left := by
    intro T
    let x₀ : Over.mk (T.hom ≫ spMap σ) ⟶ A := Over.homMk ((toUnit T ≫ η[A']).left ≫ φ) (by
      rw [Category.assoc, h.1.w, ← Category.assoc, Over.w]; rfl)
    have hx : x₀ * x₀ = x₀ := by
      apply Over.OverMorphism.ext
      rw [h.2 T 1 1 x₀ x₀ rfl rfl, _root_.mul_one]
      rfl
    have e : x₀ = 1 := mul_eq_left.1 hx
    have e' := congrArg (fun q => q.left) e
    refine e'.trans ?_
    show (toUnit _ ≫ η[A]).left = _
    rw [Over.comp_left, Over.toUnit_left]
    rfl
  let Ψ : Over.mk ((A' ⊗ A').hom ≫ spMap σ) ⟶ A ⊗ A := Over.homMk Φ hP.w
  have hm := h.2 (A' ⊗ A') (fst A' A') (snd A' A') (Ψ ≫ fst A A) (Ψ ≫ snd A A) h₁ h₂
  rw [← MonObj.comp_mul, Hom.mul_def, Hom.mul_def, lift_fst_snd, lift_fst_snd, Category.id_comp, Category.id_comp,
    Over.comp_left] at hm
  refine ⟨Φ, hP, hm.symm, h₁.symm, h₂.symm, ?_, ?_⟩
  · refine pA.hom_ext ?_ ?_
    · rw [Category.assoc, h₁, ← Category.assoc, ← Over.comp_left, lift_fst, Category.assoc, ← Over.comp_left,
        lift_fst, Over.id_left, Over.id_left, Category.id_comp, Category.comp_id]
    · rw [Category.assoc, h₂, ← Category.assoc, ← Over.comp_left, lift_snd, Category.assoc, ← Over.comp_left,
        lift_snd, one, Over.comp_left, Over.toUnit_left, ← Category.assoc, h.1.w]
  · refine pA.hom_ext ?_ ?_
    · rw [Category.assoc, h₁, ← Category.assoc, ← Over.comp_left, lift_fst, Category.assoc, ← Over.comp_left,
        lift_fst, one, Over.comp_left, Over.toUnit_left, ← Category.assoc, h.1.w]
    · rw [Category.assoc, h₂, ← Category.assoc, ← Over.comp_left, lift_snd, Category.assoc, ← Over.comp_left,
        lift_snd, Over.id_left, Over.id_left, Category.id_comp, Category.comp_id]

end GlobalTheory.AbCoh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackProdSelfIsPullback =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackProdSelfIsPullbackStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackProdSelfIsPullbackStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackProdSelfIsPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.Pullback1MemHodgeFiltration\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackProdSelfIsPullbackStatement =====
