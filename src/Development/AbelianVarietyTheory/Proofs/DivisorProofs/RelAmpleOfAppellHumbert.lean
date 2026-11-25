module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaUnifAV
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionOfAppellHumbertThetaFunction
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsLieBasis
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FiniteOfIsClosedOfFiniteInterClosedPoints
public import Development.AbelianVarietyTheory.Proofs.ToricGeometry.RiemannFormBijectiveOfWeilNondeg
public import Mathlib.AlgebraicGeometry.AlgClosed.Basic
public import Mathlib.GroupTheory.FiniteAbelian.Basic
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFourthPowerUnderIsogeny
public import Development.AbelianVarietyTheory.Definitions.Uniformization.WCompat
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SecExtendOfNonzeroLocus
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsAmpleLBOfRelAmpleOfIsAffine
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.PrincipalTorusAlgebraic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
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
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsHolFormConst
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.TypeStar
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.AppellHumbertTrivialOfNowhereVanishing
import Mathlib.AlgebraicGeometry.ZariskisMainTheorem
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsGoodThetaComplexClassUnitaryFullLevel
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.HermFormSwapOfIsHermitian

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionOfAppellHumbertThetaFunctionStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsShiftSemicharactersNestedLattices, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsShiftSemicharactersNestedLatticesStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnimodularOverlatticeRiemannForm, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnimodularOverlatticeRiemannFormStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfLiftTranslationFiniteIndexLattices, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfLiftTranslationFiniteIndexLatticesStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFourthPowerUnderIsogenyStatement, Development.AbelianVarietyTheory.BlockTheory.CMModuli.LocalFramePowerSections, Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsAmpleFramesIff, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelAmpleOfAppellHumbert

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionOfAppellHumbertThetaFunctionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionOfAppellHumbertThetaFunctionStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaUnifAV\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionOfAppellHumbertThetaFunction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj TensorProduct NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.RealMult GlobalTheory.TorusRM

open scoped nonZeroDivisors

attribute [local instance] Over.cartesianMonoidalCategory


theorem _root_.GlobalTheory.T.exists_section_of_appellHumbert_thetaFunction : ∀ (g : ℕ) (A : Over (Sp ℂ)) [GrpObj A], IsAbelianScheme A →
    ∀ (M : LB A.left) (u : HolUnif A M g) (Hm : Matrix (Fin g) (Fin g) ℂ) (χ : u.Λ → ℂ),
    M.IsLB → u.IsAH Hm χ → ∀ (k : ℕ) (θ : (Fin g → ℂ) → ℂ), u.IsThetaFn Hm χ k θ → ∃ s, u.IsFnPow k s θ := by
  first | exact @GlobalTheory.ThetaGAGA.exists_isFnPow
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionOfAppellHumbertThetaFunctionStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsShiftSemicharactersNestedLattices =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsShiftSemicharactersNestedLattices", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaUnifAV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsHolFormConst\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj TensorProduct NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.RealMult GlobalTheory.TorusRM

open scoped nonZeroDivisors

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.SemicharShift

def imForm {g : ℕ} (Hm : Matrix (Fin g) (Fin g) ℂ) :
    (Fin g → ℂ) →ₗ[ℝ] (Fin g → ℂ) →ₗ[ℝ] ℝ :=
  LinearMap.mk₂ ℝ (fun y w => (hermForm Hm y w).im)
    (fun a b w => by simp [hermForm, add_dotProduct])
    (fun c a w => by simp [hermForm, smul_dotProduct, Complex.smul_im])
    (fun y a b => by simp [hermForm, Matrix.mulVec_add, dotProduct_add])
    (fun c y a => by
      simp [hermForm, star_smul, Matrix.mulVec_smul, dotProduct_smul, Complex.smul_im])

theorem imForm_apply {g : ℕ} (Hm : Matrix (Fin g) (Fin g) ℂ) (y w : Fin g → ℂ) :
    imForm Hm y w = (hermForm Hm y w).im := rfl

theorem imForm_surjective {g : ℕ} (Hm : Matrix (Fin g) (Fin g) ℂ)
    (hpos : ∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm Hm z z).re) :
    Function.Surjective (imForm Hm) := by
  have hinj : Function.Injective (imForm Hm) := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro z hz
    by_contra hz0
    have h1 : imForm Hm z (Complex.I • z) = 0 := by rw [hz]; rfl
    have h2 : imForm Hm z (Complex.I • z) = -(hermForm Hm z z).re := by
      rw [imForm_apply]
      simp [hermForm, star_smul, Matrix.mulVec_smul, dotProduct_smul, Matrix.mulVec_neg,
        dotProduct_neg, smul_eq_mul, Complex.mul_im]
    have := hpos z hz0
    linarith
  have hdim : Module.finrank ℝ (Fin g → ℂ) = Module.finrank ℝ ((Fin g → ℂ) →ₗ[ℝ] ℝ) :=
    (Subspace.dual_finrank_eq).symm
  exact (LinearMap.injective_iff_surjective_of_finrank_eq_finrank hdim).mp hinj

end GlobalTheory.SemicharShift

namespace GlobalTheory.SemicharShift

theorem exists_linear_of_char {g : ℕ} (Λ : Submodule ℤ (Fin g → ℂ)) [DiscreteTopology Λ]
    (hsp : Submodule.span ℝ (Λ : Set (Fin g → ℂ)) = ⊤) (ρ : Λ → ℂ) (hn : ∀ l, ‖ρ l‖ = 1)
    (hmul : ∀ l m, ρ (l + m) = ρ l * ρ m) :
    ∃ φ : (Fin g → ℂ) →ₗ[ℝ] ℝ, ∀ l : Λ,
      ρ l = Complex.exp (2 * Real.pi * Complex.I * (φ (l : Fin g → ℂ) : ℂ)) := by
  haveI : IsZLattice ℝ Λ := ⟨hsp⟩
  let b := Module.Free.chooseBasis ℤ Λ
  let B := b.ofZLatticeBasis ℝ Λ
  let φ : (Fin g → ℂ) →ₗ[ℝ] ℝ := B.constr ℝ (fun j => Complex.arg (ρ (b j)) / (2 * Real.pi))
  refine ⟨φ, ?_⟩
  have hφb : ∀ j, φ (b j : Fin g → ℂ) = Complex.arg (ρ (b j)) / (2 * Real.pi) := by
    intro j
    have : (b j : Fin g → ℂ) = B j := by simp [B, Module.Basis.ofZLatticeBasis_apply]
    rw [this]
    exact B.constr_basis ℝ _ j
  have hne : ∀ l, ρ l ≠ 0 := fun l h => by simpa [h] using hn l
  have h0 : ρ 0 = 1 := by
    have := hmul 0 0
    rw [add_zero] at this
    have h := hne 0
    field_simp at this
    exact this.symm
  let S : AddSubgroup Λ :=
    { carrier := {l | ρ l = Complex.exp (2 * Real.pi * Complex.I * (φ (l : Fin g → ℂ) : ℂ))}
      add_mem' := by
        intro l m hl hm
        simp only [Set.mem_setOf_eq] at hl hm ⊢
        rw [hmul, hl, hm, ← Complex.exp_add]
        congr 1
        simp only [Submodule.coe_add, map_add (f := _)]
        push_cast; ring
      zero_mem' := by
        simp only [Set.mem_setOf_eq, ZeroMemClass.coe_zero, map_zero]
        simp [h0]
      neg_mem' := by
        intro l hl
        simp only [Set.mem_setOf_eq] at hl ⊢
        have h1 : ρ (-l) * ρ l = 1 := by rw [← hmul, neg_add_cancel, h0]
        have h2 : ρ (-l) = (ρ l)⁻¹ := eq_inv_of_mul_eq_one_left h1
        rw [h2, hl, ← Complex.exp_neg]
        congr 1
        simp only [Submodule.coe_neg, map_neg]
        push_cast; ring }
  have htop : (⊤ : Submodule ℤ Λ) ≤ S.toIntSubmodule := by
    rw [← b.span_eq, Submodule.span_le]
    rintro _ ⟨j, rfl⟩
    show ρ (b j) = Complex.exp (2 * Real.pi * Complex.I * (φ (b j : Fin g → ℂ) : ℂ))
    rw [hφb]
    have hpi : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
    have : 2 * (Real.pi : ℂ) * Complex.I * ((Complex.arg (ρ (b j)) / (2 * Real.pi) : ℝ) : ℂ)
        = (Complex.arg (ρ (b j)) : ℂ) * Complex.I := by
      push_cast; field_simp
    rw [this]
    have h := Complex.norm_mul_exp_arg_mul_I (ρ (b j))
    rw [hn, Complex.ofReal_one, _root_.one_mul] at h
    exact h.symm
  intro l
  exact htop (Submodule.mem_top : l ∈ ⊤)

end GlobalTheory.SemicharShift

namespace GlobalTheory.SemicharShift

theorem exists_shift_of_semichar : ∀ (g : ℕ) (Λ Λ₁ : Submodule ℤ (Fin g → ℂ)) (Hm : Matrix (Fin g) (Fin g) ℂ) (χ : Λ → ℂ) (χ₁ : Λ₁ → ℂ)
    (h : Λ ≤ Λ₁), DiscreteTopology Λ → Submodule.span ℝ (Λ : Set (Fin g → ℂ)) = ⊤ → Hm.IsHermitian →
    (∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm Hm z z).re) → (∀ l, ‖χ l‖ = 1) → (∀ l, ‖χ₁ l‖ = 1) →
    (∀ l m : Λ, χ (l + m) = χ l * χ m * Complex.exp (Real.pi * Complex.I * (hermForm Hm l m).im)) →
    (∀ l m : Λ₁, χ₁ (l + m) = χ₁ l * χ₁ m * Complex.exp (Real.pi * Complex.I * (hermForm Hm l m).im)) →
    ∃ a : Fin g → ℂ, ∀ l : Λ,
      χ l = χ₁ (Submodule.inclusion h l) * Complex.exp (2 * Real.pi * Complex.I * (hermForm Hm a l).im) := by
  intro g Λ Λ₁ Hm χ χ₁ h hdisc hsp _hH hpos hχ hχ₁ hc hc₁
  haveI := hdisc
  have hne : ∀ l, χ₁ l ≠ 0 := fun l e => by simpa [e] using hχ₁ l
  have hne' : ∀ l, χ l ≠ 0 := fun l e => by simpa [e] using hχ l
  let ρ : Λ → ℂ := fun l => χ l / χ₁ (Submodule.inclusion h l)
  have hn : ∀ l, ‖ρ l‖ = 1 := fun l => by simp [ρ, hχ, hχ₁]
  have hmul : ∀ l m, ρ (l + m) = ρ l * ρ m := by
    intro l m
    simp only [ρ]
    rw [map_add (f := _), hc, hc₁]
    simp only [Submodule.coe_inclusion]
    have e1 := hne (Submodule.inclusion h l)
    have e2 := hne (Submodule.inclusion h m)
    have e3 : Complex.exp (Real.pi * Complex.I * (hermForm Hm l m).im) ≠ 0 := Complex.exp_ne_zero _
    field_simp
  obtain ⟨φ, hφ⟩ := exists_linear_of_char Λ hsp ρ hn hmul
  obtain ⟨a, ha⟩ := imForm_surjective Hm hpos φ
  refine ⟨a, fun l => ?_⟩
  have h1 := hφ l
  rw [← ha, imForm_apply] at h1
  rw [← h1]
  simp only [ρ]
  field_simp [hne (Submodule.inclusion h l)]

end GlobalTheory.SemicharShift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsShiftSemicharactersNestedLattices =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsShiftSemicharactersNestedLatticesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsShiftSemicharactersNestedLatticesStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaUnifAV\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsShiftSemicharactersNestedLattices\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsHolFormConst\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj TensorProduct NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.RealMult GlobalTheory.TorusRM

open scoped nonZeroDivisors

attribute [local instance] Over.cartesianMonoidalCategory


theorem _root_.GlobalTheory.T.exists_shift_semicharacters_nested_lattices : ∀ (g : ℕ) (Λ Λ₁ : Submodule ℤ (Fin g → ℂ)) (Hm : Matrix (Fin g) (Fin g) ℂ) (χ : Λ → ℂ) (χ₁ : Λ₁ → ℂ)
    (h : Λ ≤ Λ₁), DiscreteTopology Λ → Submodule.span ℝ (Λ : Set (Fin g → ℂ)) = ⊤ → Hm.IsHermitian →
    (∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm Hm z z).re) → (∀ l, ‖χ l‖ = 1) → (∀ l, ‖χ₁ l‖ = 1) →
    (∀ l m : Λ, χ (l + m) = χ l * χ m * Complex.exp (Real.pi * Complex.I * (hermForm Hm l m).im)) →
    (∀ l m : Λ₁, χ₁ (l + m) = χ₁ l * χ₁ m * Complex.exp (Real.pi * Complex.I * (hermForm Hm l m).im)) →
    ∃ a : Fin g → ℂ, ∀ l : Λ,
      χ l = χ₁ (Submodule.inclusion h l) * Complex.exp (2 * Real.pi * Complex.I * (hermForm Hm a l).im) := by
  first | exact @GlobalTheory.SemicharShift.exists_shift_of_semichar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsShiftSemicharactersNestedLatticesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnimodularOverlatticeRiemannForm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnimodularOverlatticeRiemannForm", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaUnifAV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsHolFormConst\nimport Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.AppellHumbertTrivialOfNowhereVanishing\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj TensorProduct NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.RealMult GlobalTheory.TorusRM

open scoped nonZeroDivisors

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Overlattice

def imForm {g : ℕ} (Hm : Matrix (Fin g) (Fin g) ℂ) : LinearMap.BilinForm ℝ (Fin g → ℂ) :=
  LinearMap.mk₂ ℝ (fun y w => (hermForm Hm y w).im)
    (fun a b w => by simp [hermForm, add_dotProduct])
    (fun c a w => by simp [hermForm, smul_dotProduct, Complex.smul_im])
    (fun y a b => by simp [hermForm, Matrix.mulVec_add, dotProduct_add])
    (fun c y a => by
      simp [hermForm, star_smul, Matrix.mulVec_smul, dotProduct_smul, Complex.smul_im])

theorem imForm_apply {g : ℕ} (Hm : Matrix (Fin g) (Fin g) ℂ) (y w : Fin g → ℂ) :
    imForm Hm y w = (hermForm Hm y w).im := rfl

theorem imForm_swap {g : ℕ} {Hm : Matrix (Fin g) (Fin g) ℂ} (hH : Hm.IsHermitian) (y w : Fin g → ℂ) :
    imForm Hm w y = - imForm Hm y w := by
  rw [imForm_apply, imForm_apply, _root_.GlobalTheory.AppellHumbertTrivial.hermForm_swap hH y w]
  exact Complex.conj_im _

theorem imForm_I {g : ℕ} (Hm : Matrix (Fin g) (Fin g) ℂ) (y : Fin g → ℂ) :
    imForm Hm y (Complex.I • y) = - (hermForm Hm y y).re := by
  have hI : star Complex.I = -Complex.I := Complex.conj_I
  simp only [imForm_apply, hermForm, star_smul, hI, Matrix.mulVec_smul, dotProduct_smul, smul_eq_mul,
    Complex.mul_im, Complex.neg_re, Complex.neg_im, Complex.I_re, Complex.I_im]
  ring

theorem imForm_sepLeft {g : ℕ} {Hm : Matrix (Fin g) (Fin g) ℂ}
    (hpos : ∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm Hm z z).re) (y : Fin g → ℂ)
    (hy : ∀ w, imForm Hm y w = 0) : y = 0 := by
  by_contra h
  have h1 := hy (Complex.I • y)
  rw [imForm_I] at h1
  have h2 := hpos y h
  linarith

theorem imForm_nondegenerate {g : ℕ} {Hm : Matrix (Fin g) (Fin g) ℂ} (hH : Hm.IsHermitian)
    (hpos : ∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm Hm z z).re) : (imForm Hm).Nondegenerate := by
  unfold LinearMap.BilinForm.Nondegenerate LinearMap.Nondegenerate
  refine ⟨fun y hy => imForm_sepLeft hpos y hy, fun y hy => imForm_sepLeft hpos y fun w => ?_⟩
  rw [imForm_swap hH w y, hy w, neg_zero]

end GlobalTheory.Overlattice

namespace GlobalTheory.Overlattice

theorem exists_selfDual_overlattice {V : Type*} [AddCommGroup V] [Module ℝ V] (B : LinearMap.BilinForm ℝ V)
    (hB : ∀ x y, B y x = - B x y) (Λ : Submodule ℤ V) (hΛ : ∀ a ∈ Λ, ∀ b ∈ Λ, ∃ n : ℤ, B a b = n) :
    ∃ Λ₁ : Submodule ℤ V, Λ ≤ Λ₁ ∧ (∀ a ∈ Λ₁, ∀ b ∈ Λ₁, ∃ n : ℤ, B a b = n) ∧
      ∀ x, (∀ l ∈ Λ₁, ∃ n : ℤ, B x l = n) → x ∈ Λ₁ := by
  classical
  have hself : ∀ x, B x x = 0 := fun x => by have := hB x x; linarith
  let S : Set (Submodule ℤ V) := {M | ∀ a ∈ M, ∀ b ∈ M, ∃ n : ℤ, B a b = n}
  have hchain : ∀ c ⊆ S, IsChain (· ≤ ·) c → ∀ y ∈ c, ∃ ub ∈ S, ∀ z ∈ c, z ≤ ub := by
    intro c hcS hc y hy
    refine ⟨sSup c, fun a ha b hb => ?_, fun z hz => le_sSup hz⟩
    have hne : c.Nonempty := ⟨y, hy⟩
    obtain ⟨p, hp, hap⟩ := (Submodule.mem_sSup_of_directed hne hc.directedOn).mp ha
    obtain ⟨q, hq, hbq⟩ := (Submodule.mem_sSup_of_directed hne hc.directedOn).mp hb
    rcases hc.total hp hq with h | h
    · exact hcS hq a (h hap) b hbq
    · exact hcS hp a hap b (h hbq)
  obtain ⟨Λ₁, hle, hmax⟩ := zorn_le_nonempty₀ S hchain Λ hΛ
  refine ⟨Λ₁, hle, hmax.prop, fun x hx => ?_⟩
  have hM : Λ₁ ⊔ Submodule.span ℤ {x} ∈ S := by
    intro a ha b hb
    obtain ⟨a₁, ha₁, a₂, ha₂, rfl⟩ := Submodule.mem_sup.mp ha
    obtain ⟨b₁, hb₁, b₂, hb₂, rfl⟩ := Submodule.mem_sup.mp hb
    obtain ⟨m, rfl⟩ := Submodule.mem_span_singleton.mp ha₂
    obtain ⟨k, rfl⟩ := Submodule.mem_span_singleton.mp hb₂
    obtain ⟨n₁, h₁⟩ := hmax.prop a₁ ha₁ b₁ hb₁
    obtain ⟨n₂, h₂⟩ := hx b₁ hb₁
    obtain ⟨n₃, h₃⟩ := hx a₁ ha₁
    have e : B (a₁ + m • x) (b₁ + k • x) = B a₁ b₁ + k * B a₁ x + m * B x b₁ + m * k * B x x := by
      simp only [← Int.cast_smul_eq_zsmul ℝ, map_add (f := _), map_smul, LinearMap.add_apply,
        LinearMap.smul_apply, smul_eq_mul]
      ring
    refine ⟨n₁ - k * n₃ + m * n₂, ?_⟩
    rw [e, hself, hB x a₁, h₁, h₂, h₃]
    push_cast
    ring
  exact hmax.2 hM le_sup_left (Submodule.mem_sup_right (Submodule.mem_span_singleton_self x))

theorem exists_nsmul_mem_of_dual {g : ℕ} {Hm : Matrix (Fin g) (Fin g) ℂ} (hH : Hm.IsHermitian)
    (hpos : ∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm Hm z z).re) (Λ : Submodule ℤ (Fin g → ℂ))
    [DiscreteTopology Λ] (hsp : Submodule.span ℝ (Λ : Set (Fin g → ℂ)) = ⊤)
    (hint : ∀ a ∈ Λ, ∀ b ∈ Λ, ∃ n : ℤ, imForm Hm a b = n) :
    ∃ N : ℕ, 0 < N ∧ ∀ x, (∀ l ∈ Λ, ∃ n : ℤ, imForm Hm x l = n) → N • x ∈ Λ := by
  classical
  haveI : IsZLattice ℝ Λ := ⟨hsp⟩
  haveI := ZLattice.module_finite ℝ Λ
  haveI := ZLattice.module_free ℝ Λ
  set b := Module.Free.chooseBasis ℤ Λ with hb_def
  set e := b.ofZLatticeBasis ℝ Λ with he_def
  have he : ∀ i, e i = (b i : Fin g → ℂ) := fun i => b.ofZLatticeBasis_apply ℝ Λ i
  have hG : ∀ i j, ∃ n : ℤ, imForm Hm (e j) (e i) = n := fun i j => by
    rw [he, he]; exact hint _ (b j).2 _ (b i).2
  choose Gf hGe using hG
  set G : Matrix (Module.Free.ChooseBasisIndex ℤ Λ) (Module.Free.ChooseBasisIndex ℤ Λ) ℤ :=
    Matrix.of Gf with hG_def
  set GR : Matrix _ _ ℝ := (Int.castRingHom ℝ).mapMatrix G with hGR
  have hGRe : ∀ i j, GR i j = imForm Hm (e j) (e i) := fun i j => by
    rw [hGe]; rfl
  have key : ∀ (c : _ → ℝ) i, imForm Hm (∑ j, c j • e j) (e i) = (Matrix.mulVec GR c) i := by
    intro c i

    simp only [map_sum, map_smul, LinearMap.sum_apply, LinearMap.smul_apply,
    smul_eq_mul, Matrix.mulVec, dotProduct, hGRe]
    exact Finset.sum_congr rfl fun j _ => mul_comm _ _
  have hd : G.det ≠ 0 := by
    intro h0
    have h0' : GR.det = 0 := by rw [hGR, ← RingHom.map_det, h0, map_zero]
    obtain ⟨v, hv, hGv⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr h0'
    have hy : (∑ j, v j • e j) = 0 := by
      apply imForm_sepLeft hpos
      have h0f : imForm Hm (∑ j, v j • e j) = 0 := e.ext fun i => by
        rw [key, hGv]; simp
      intro w
      rw [h0f]; rfl
    exact hv (funext fun j => Fintype.linearIndependent_iff.mp e.linearIndependent v hy j)
  refine ⟨G.det.natAbs, Int.natAbs_pos.mpr hd, fun x hx => ?_⟩
  have hm : ∀ i, ∃ n : ℤ, (Matrix.mulVec GR ⇑(e.repr x)) i = n := fun i => by
    rw [← key, e.sum_repr x]
    exact hx (e i) (by rw [he]; exact (b i).2)
  choose m hm using hm
  have hdc : ∀ j, ∃ k : ℤ, (G.det : ℝ) * e.repr x j = k := by
    intro j
    refine ⟨(Matrix.mulVec G.adjugate m) j, ?_⟩
    have h1 : Matrix.mulVec GR ⇑(e.repr x) = fun i => (m i : ℝ) := funext hm
    have h2 : Matrix.mulVec GR.adjugate (Matrix.mulVec GR ⇑(e.repr x)) = GR.det • ⇑(e.repr x) := by
      rw [Matrix.mulVec_mulVec, Matrix.adjugate_mul, Matrix.smul_mulVec, Matrix.one_mulVec]
    have h3 := congrFun h2 j
    rw [h1, hGR, ← RingHom.map_adjugate, ← RingHom.map_det, Pi.smul_apply, smul_eq_mul] at h3
    rw [show (G.det : ℝ) * e.repr x j = _ from h3.symm]
    simp only [Matrix.mulVec, dotProduct, RingHom.mapMatrix_apply, Matrix.map_apply, Int.coe_castRingHom]
    push_cast
    rfl
  choose k hk using hdc
  have hdx : G.det • x ∈ Λ := by
    have hsum : G.det • x = ∑ j, k j • (b j : Fin g → ℂ) := by
      conv_lhs => rw [← e.sum_repr x]
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [← he, ← Int.cast_smul_eq_zsmul ℝ, ← Int.cast_smul_eq_zsmul ℝ, smul_smul, hk]
    rw [hsum]
    exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (b j).2
  rcases Int.natAbs_eq G.det with h | h
  · rw [h, natCast_zsmul] at hdx
    exact hdx
  · rw [h, neg_smul, natCast_zsmul, neg_mem_iff] at hdx
    exact hdx

end GlobalTheory.Overlattice

namespace GlobalTheory.Overlattice

theorem exists_unimodular_overlattice : ∀ (g : ℕ) (Λ : Submodule ℤ (Fin g → ℂ)) (Hm : Matrix (Fin g) (Fin g) ℂ),
    DiscreteTopology Λ → Submodule.span ℝ (Λ : Set (Fin g → ℂ)) = ⊤ → Hm.IsHermitian →
    (∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm Hm z z).re) →
    (∀ l ∈ Λ, ∀ l' ∈ Λ, ∃ n : ℤ, (hermForm Hm l l').im = n) →
    ∃ (Λ₁ : Submodule ℤ (Fin g → ℂ)) (Ef : LinearMap.BilinForm ℤ Λ₁) (N : ℕ), Λ ≤ Λ₁ ∧ DiscreteTopology Λ₁ ∧
      Submodule.span ℝ (Λ₁ : Set (Fin g → ℂ)) = ⊤ ∧ (∀ a b : Λ₁, (Ef a b : ℝ) = (hermForm Hm a b).im) ∧
      Function.Bijective Ef ∧ 0 < N ∧ ∀ x ∈ Λ₁, N • x ∈ Λ := by
  classical
  intro g Λ Hm hdisc hsp hH hpos hint
  have hint' : ∀ a ∈ Λ, ∀ b ∈ Λ, ∃ n : ℤ, imForm Hm a b = n := fun a ha b hb => by
    rw [imForm_apply]; exact hint a ha b hb
  obtain ⟨Λ₁, hle, hint₁, hdual₁⟩ :=
    exists_selfDual_overlattice (imForm Hm) (fun x y => imForm_swap hH x y) Λ hint'
  haveI := hdisc
  obtain ⟨N, hN, hNx⟩ := exists_nsmul_mem_of_dual hH hpos Λ hsp hint'
  have hNΛ₁ : ∀ x ∈ Λ₁, N • x ∈ Λ := fun x hx => hNx x fun l hl => hint₁ x hx l (hle hl)
  have hdisc₁ : DiscreteTopology Λ₁ := by
    let f : Λ₁ → Λ := fun x => ⟨N • (x : Fin g → ℂ), hNΛ₁ x x.2⟩
    refine DiscreteTopology.of_continuous_injective (f := f) ?_ ?_
    · exact Continuous.subtype_mk (continuous_subtype_val.nsmul N) _
    · intro x y hxy
      have hxy' : N • (x : Fin g → ℂ) = N • (y : Fin g → ℂ) := congrArg Subtype.val hxy
      rw [← Nat.cast_smul_eq_nsmul ℝ, ← Nat.cast_smul_eq_nsmul ℝ] at hxy'
      exact Subtype.ext (smul_right_injective _ (by exact_mod_cast hN.ne') hxy')
  have hsp₁ : Submodule.span ℝ (Λ₁ : Set (Fin g → ℂ)) = ⊤ := by
    rw [eq_top_iff, ← hsp]; exact Submodule.span_mono hle
  have hF : ∀ a b : Λ₁, ∃ n : ℤ, imForm Hm a b = n := fun a b => hint₁ a a.2 b b.2
  choose F hF using hF
  have inj : Function.Injective (Int.cast : ℤ → ℝ) := Int.cast_injective
  let Ef : LinearMap.BilinForm ℤ Λ₁ := LinearMap.mk₂ ℤ F
    (fun a a' b => inj (by
      rw [Int.cast_add, ← hF, ← hF, ← hF, Submodule.coe_add, map_add (f := _), LinearMap.add_apply]))
    (fun c a b => inj (by
      rw [smul_eq_mul, Int.cast_mul, ← hF, ← hF, Submodule.coe_smul, ← Int.cast_smul_eq_zsmul ℝ,
        map_smul, LinearMap.smul_apply, smul_eq_mul]))
    (fun a b b' => inj (by
      rw [Int.cast_add, ← hF, ← hF, ← hF, Submodule.coe_add, map_add (f := _)]))
    (fun c a b => inj (by
      rw [smul_eq_mul, Int.cast_mul, ← hF, ← hF, Submodule.coe_smul, ← Int.cast_smul_eq_zsmul ℝ,
        map_smul, smul_eq_mul]))
  have hEf : ∀ a b : Λ₁, (Ef a b : ℝ) = imForm Hm a b := fun a b => (hF a b).symm
  have hnd := imForm_nondegenerate hH hpos
  refine ⟨Λ₁, Ef, N, hle, hdisc₁, hsp₁, fun a b => by rw [hEf, imForm_apply], ⟨?_, ?_⟩, hN, hNΛ₁⟩
  · rw [injective_iff_map_eq_zero]
    intro a ha
    have h0 : imForm Hm (a : Fin g → ℂ) = 0 := LinearMap.ext_on hsp₁ fun w hw => by
      have := congrArg (fun φ : Λ₁ →ₗ[ℤ] ℤ => ((φ ⟨w, hw⟩ : ℤ) : ℝ)) ha
      simp only [hEf, LinearMap.zero_apply, Int.cast_zero] at this
      simpa using this
    exact Subtype.ext (imForm_sepLeft hpos a fun w => by rw [h0]; rfl)
  · intro φ
    haveI : IsZLattice ℝ Λ₁ := ⟨hsp₁⟩
    haveI := ZLattice.module_finite ℝ Λ₁
    haveI := ZLattice.module_free ℝ Λ₁
    set b := Module.Free.chooseBasis ℤ Λ₁ with hb_def
    set e := b.ofZLatticeBasis ℝ Λ₁ with he_def
    have he : ∀ i, e i = (b i : Fin g → ℂ) := fun i => b.ofZLatticeBasis_apply ℝ Λ₁ i
    set D := (imForm Hm).dualBasis hnd e with hD
    set x : Fin g → ℂ := ∑ i, (φ (b i) : ℝ) • D i with hx_def
    have hxe : ∀ j, imForm Hm x (e j) = φ (b j) := by
      intro j

      rw [hx_def, map_sum, LinearMap.sum_apply]
      simp only [map_smul, LinearMap.smul_apply, smul_eq_mul, hD,
        LinearMap.BilinForm.apply_dualBasis_left, mul_ite, mul_zero]
      simp
    have hmaps : ((imForm Hm x).restrictScalars ℤ).comp Λ₁.subtype = (Algebra.linearMap ℤ ℝ).comp φ :=
      b.ext fun j => by
        simp only [LinearMap.comp_apply, Submodule.subtype_apply, LinearMap.restrictScalars_apply,
          Algebra.linearMap_apply, ← he, hxe, eq_intCast]
    have hxl : ∀ l : Λ₁, imForm Hm x l = φ l := fun l => by
      have := LinearMap.congr_fun hmaps l
      simpa using this
    have hxmem : x ∈ Λ₁ := hdual₁ x fun l hl => ⟨φ ⟨l, hl⟩, hxl ⟨l, hl⟩⟩
    refine ⟨⟨x, hxmem⟩, LinearMap.ext fun l => inj ?_⟩
    rw [hEf]
    exact hxl l

end GlobalTheory.Overlattice
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnimodularOverlatticeRiemannForm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnimodularOverlatticeRiemannFormStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnimodularOverlatticeRiemannFormStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaUnifAV\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnimodularOverlatticeRiemannForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsHolFormConst\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj TensorProduct NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.RealMult GlobalTheory.TorusRM

open scoped nonZeroDivisors

attribute [local instance] Over.cartesianMonoidalCategory


theorem _root_.GlobalTheory.T.exists_unimodular_overlattice_riemannForm : ∀ (g : ℕ) (Λ : Submodule ℤ (Fin g → ℂ)) (Hm : Matrix (Fin g) (Fin g) ℂ),
    DiscreteTopology Λ → Submodule.span ℝ (Λ : Set (Fin g → ℂ)) = ⊤ → Hm.IsHermitian →
    (∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm Hm z z).re) →
    (∀ l ∈ Λ, ∀ l' ∈ Λ, ∃ n : ℤ, (hermForm Hm l l').im = n) →
    ∃ (Λ₁ : Submodule ℤ (Fin g → ℂ)) (Ef : LinearMap.BilinForm ℤ Λ₁) (N : ℕ), Λ ≤ Λ₁ ∧ DiscreteTopology Λ₁ ∧
      Submodule.span ℝ (Λ₁ : Set (Fin g → ℂ)) = ⊤ ∧ (∀ a b : Λ₁, (Ef a b : ℝ) = (hermForm Hm a b).im) ∧
      Function.Bijective Ef ∧ 0 < N ∧ ∀ x ∈ Λ₁, N • x ∈ Λ := by
  first | exact @GlobalTheory.Overlattice.exists_unimodular_overlattice
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnimodularOverlatticeRiemannFormStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfLiftTranslationFiniteIndexLattices =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfLiftTranslationFiniteIndexLattices", "h": "module\n\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsLieBasis\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FiniteOfIsClosedOfFiniteInterClosedPoints\npublic import Development.AbelianVarietyTheory.Proofs.ToricGeometry.RiemannFormBijectiveOfWeilNondeg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.AlgClosed.Basic\nimport Mathlib.AlgebraicGeometry.ZariskisMainTheorem\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.GroupTheory.FiniteAbelian.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsHolFormConst\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsGoodThetaComplexClassUnitaryFullLevel\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj TensorProduct NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.RealMult GlobalTheory.TorusRM

open scoped nonZeroDivisors

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.LiftAffine

section
variable {A : Over (Sp ℂ)} [GrpObj A] {L : LB A.left} {g : ℕ} (u : HolUnif A L g)

theorem ex_eq_of_sub_mem {z w : Fin g → ℂ} (h : z - w ∈ u.Λ) : u.ex z = u.ex w := by
  have e := u.ex_add (z - w) w
  rw [sub_add_cancel, (u.ker _).2 h, _root_.one_mul] at e
  exact e

theorem exists_ex_apply_eq [LocallyOfFiniteType A.hom] (x : A.left) (hx : IsClosed ({x} : Set A.left)) :
    ∃ z, (u.ex z).left (IsLocalRing.closedPoint ℂ) = x := by
  obtain ⟨z, hz⟩ := u.ex_onto (Over.homMk (U := 𝟙_ (Over (Sp ℂ))) (V := A) (pointOfClosedPoint A.hom x hx)
    ((pointOfClosedPoint_comp A.hom x hx).trans rfl))
  exact ⟨z, by rw [hz]; exact pointOfClosedPoint_apply A.hom x hx _⟩

end

theorem isAffineHom_of_lift : ∀ (g : ℕ) (A : Over (Sp ℂ)) [GrpObj A], IsAbelianScheme A → ∀ (B : Over (Sp ℂ)) [GrpObj B], IsAbelianScheme B →
    ∀ (L : LB A.left) (L' : LB B.left) (u : HolUnif A L g) (u' : HolUnif B L' g) (a : Fin g → ℂ) (N : ℕ),
    0 < N → u.Λ ≤ u'.Λ → (∀ x ∈ u'.Λ, N • x ∈ u.Λ) →
    ∀ ψ : A.left ⟶ B.left, ψ ≫ B.hom = A.hom → (∀ z, (u.ex z).left ≫ ψ = (u'.ex (z + a)).left) → IsAffineHom ψ := by
  intro g A _ hA B _ hB L L' u u' a N hN hle hN' ψ hψ hex
  have := hA.proper
  have := hB.proper
  have : IsProper (ψ ≫ B.hom) := by rw [hψ]; infer_instance
  have : IsProper ψ := IsProper.of_comp ψ B.hom
  have : JacobsonSpace A.left := LocallyOfFiniteType.jacobsonSpace A.hom
  haveI := u'.discrete
  haveI := holUnif_isZLattice u'
  haveI : Module.Finite ℤ u'.Λ := ZLattice.module_finite ℝ u'.Λ
  let K : Submodule ℤ u'.Λ := u.Λ.comap u'.Λ.subtype
  have hQ : Finite (u'.Λ ⧸ K) := by
    refine Module.finite_of_fg_torsion _ fun q => ?_
    induction q using Submodule.Quotient.induction_on with
    | H l =>
      refine ⟨⟨(N : ℤ), mem_nonZeroDivisors_of_ne_zero (by exact_mod_cast hN.ne')⟩, ?_⟩
      change ((N : ℤ) • Submodule.Quotient.mk l : u'.Λ ⧸ K) = 0
      rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero]
      change ((((N : ℤ) • l : u'.Λ)) : Fin g → ℂ) ∈ u.Λ
      rw [Submodule.coe_smul, natCast_zsmul]
      exact hN' _ l.2
  have hLQF : LocallyQuasiFinite ψ := by
    refine GlobalTheory.locallyQuasiFinite_of_finite_fibres_closedPoints ψ fun y hy => ?_
    have hcl : IsClosed ({ψ y} : Set B.left) := by simpa using ψ.isClosedMap _ hy
    refine GlobalTheory.finite_of_isClosed_of_finite_inter_closedPoints (hcl.preimage ψ.continuous) ?_
    obtain ⟨z₀, rfl⟩ := exists_ex_apply_eq u y hy
    let r := Function.surjInv (Submodule.Quotient.mk_surjective K)
    have hr : ∀ q, Submodule.Quotient.mk (r q) = q := Function.surjInv_eq (Submodule.Quotient.mk_surjective K)
    refine (Set.finite_range fun q : u'.Λ ⧸ K =>
      (u.ex (z₀ + ((r q : u'.Λ) : Fin g → ℂ))).left (IsLocalRing.closedPoint ℂ)).subset ?_
    rintro x ⟨hx, hxc⟩
    obtain ⟨z, rfl⟩ := exists_ex_apply_eq u x hxc
    have hx' : ((u.ex z).left ≫ ψ) (IsLocalRing.closedPoint ℂ) =
        ((u.ex z₀).left ≫ ψ) (IsLocalRing.closedPoint ℂ) := by
      first | exact hx
    rw [hex, hex] at hx'
    have e1 : u'.ex (z + a) = u'.ex (z₀ + a) :=
      Over.OverMorphism.ext (ext_of_apply_closedPoint_eq B.hom (Over.w _) (Over.w _) hx')
    have hl : z - z₀ ∈ u'.Λ := by
      simpa [add_sub_add_right_eq_sub] using _root_.GlobalTheory.PELPeriod.sub_mem_of_ex_eq u' e1
    refine ⟨Submodule.Quotient.mk ⟨z - z₀, hl⟩, ?_⟩
    have h2 : (r (Submodule.Quotient.mk ⟨z - z₀, hl⟩) - ⟨z - z₀, hl⟩ : u'.Λ) ∈ K :=
      (Submodule.Quotient.eq K).1 (hr _)
    have h3 : ((r (Submodule.Quotient.mk ⟨z - z₀, hl⟩) : u'.Λ) : Fin g → ℂ) - (z - z₀) ∈ u.Λ := h2
    dsimp only
    rw [ex_eq_of_sub_mem u (z := z₀ + _) (w := z) (by convert h3 using 1; abel)]
  have : IsFinite ψ := .of_isProper_of_locallyQuasiFinite _
  infer_instance

end GlobalTheory.LiftAffine
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfLiftTranslationFiniteIndexLattices =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfLiftTranslationFiniteIndexLatticesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfLiftTranslationFiniteIndexLatticesStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsLieBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfLiftTranslationFiniteIndexLattices\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsHolFormConst\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj TensorProduct NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.RealMult GlobalTheory.TorusRM

open scoped nonZeroDivisors

attribute [local instance] Over.cartesianMonoidalCategory


theorem _root_.GlobalTheory.T.isAffineHom_of_lift_translation_finiteIndex_lattices : ∀ (g : ℕ) (A : Over (Sp ℂ)) [GrpObj A], IsAbelianScheme A → ∀ (B : Over (Sp ℂ)) [GrpObj B], IsAbelianScheme B →
    ∀ (L : LB A.left) (L' : LB B.left) (u : HolUnif A L g) (u' : HolUnif B L' g) (a : Fin g → ℂ) (N : ℕ),
    0 < N → u.Λ ≤ u'.Λ → (∀ x ∈ u'.Λ, N • x ∈ u.Λ) →
    ∀ ψ : A.left ⟶ B.left, ψ ≫ B.hom = A.hom → (∀ z, (u.ex z).left ≫ ψ = (u'.ex (z + a)).left) → IsAffineHom ψ := by
  first | exact @GlobalTheory.LiftAffine.isAffineHom_of_lift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfLiftTranslationFiniteIndexLatticesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFourthPowerUnderIsogenyStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFourthPowerUnderIsogenyStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaUnifAV\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFourthPowerUnderIsogeny\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsHolFormConst\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj TensorProduct NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.RealMult GlobalTheory.TorusRM

open scoped nonZeroDivisors

attribute [local instance] Over.cartesianMonoidalCategory


theorem _root_.GlobalTheory.T.theta_fourth_power_under_isogeny : ∀ (g : ℕ) (A : Over (Sp ℂ)) [GrpObj A], IsAbelianScheme A →
    ∀ (M : LB A.left) (u : HolUnif A M g) (Hm : Matrix (Fin g) (Fin g) ℂ) (χ : u.Λ → ℂ),
    M.IsLB → u.IsAH Hm χ → (∀ θ, u.IsThetaFn Hm χ 4 θ → ∃ s, u.IsFnPow 4 s θ) →
    ∀ (P : Out.PolAV (Sp ℂ)) (u' : HolUnif P.A P.L g) (χ' : u'.Λ → ℂ) (h : u.Λ ≤ u'.Λ) (a : Fin g → ℂ),
    P.g = g → u'.IsAH Hm χ' →
    (∀ l : u.Λ, χ l = χ' (Submodule.inclusion h l) *
      Complex.exp (2 * Real.pi * Complex.I * (hermForm Hm a l).im)) →
    ∃ ψ : A.left ⟶ P.A.left, ψ ≫ P.A.hom = A.hom ∧ (∀ z, (u.ex z).left ≫ ψ = (u'.ex (z + a)).left) ∧
      ∀ x : A.left, ∃ (s : Out.H0 M 4) (V : P.A.left.Opens), x ∈ Out.nonzeroLocus s ∧ IsAffineOpen V ∧
        Out.nonzeroLocus s = ψ ⁻¹ᵁ V := by
  first | exact @GlobalTheory.ThetaShift.exists_morphism_affine_cover
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFourthPowerUnderIsogenyStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.BlockTheory.CMModuli.LocalFramePowerSections =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.BlockTheory.CMModuli.LocalFramePowerSections", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.WCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
noncomputable section
namespace GlobalTheory.IndefiniteRowSideFullHecke.LocalFramePowerSections

abbrev PowSec {X Y : Scheme.{0}} (L : LB X) (φ : Y ⟶ X) (N : ℕ) : Type :=
  LB.Sec (LB.LinComb L (K := Fin 1) (fun _ => φ) (fun _ => (N : ℤ)))

section Frames

variable {S : Scheme.{0}} (G : Over S) [GrpObj G] [IsCommMonObj G] (L : RigLB G)


end Frames

section Data

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  (Xo : Moduli D l) {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}

end Data

end GlobalTheory.IndefiniteRowSideFullHecke.LocalFramePowerSections
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.BlockTheory.CMModuli.LocalFramePowerSections =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsAmpleFramesIff =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsAmpleFramesIff", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SecExtendOfNonzeroLocus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.BlockTheory.CMModuli.LocalFramePowerSections\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsAmpleLBOfRelAmpleOfIsAffine\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section
namespace GlobalTheory.FrameCompare
open GlobalTheory.IndefiniteRowSideFullHecke.LocalFramePowerSections (PowSec)

variable {S : Scheme.{0}} (G : Over S)

variable [GrpObj G] [IsCommMonObj G] (L : RigLB G) (N : ℕ)


omit [GrpObj G] [IsCommMonObj G] in
theorem relAmple_iff {O : Type} [CommRing O] (b : S ⟶ Sp O) {A : LB S} (hA : A.IsLB) :
    (Out.RelAmple (Over.mk b) A →
      ∀ z : S, ∃ (d : ℕ) (s : Out.H0 A d), 1 ≤ d ∧ z ∈ Out.nonzeroLocus s ∧ IsAffineOpen (Out.nonzeroLocus s)) ∧
    (IsProper b → (∀ z : S, ∃ (d : ℕ) (s : Out.H0 A d), 1 ≤ d ∧ z ∈ Out.nonzeroLocus s ∧
      IsAffineOpen (Out.nonzeroLocus s)) → Out.RelAmple (Over.mk b) A) := by
  constructor
  · intro h z
    obtain ⟨n, hn, s, hs⟩ := (isAmpleLB_of_relAmple_of_isAffine (Over.mk b) hA h).exists_affine z
    obtain ⟨s', e, -⟩ := exists_sec_oneTerm A (K' := Fin 1) (e' := (n : ℤ)) rfl s
    exact ⟨n, s', hn, by rw [← e] at hs; exact hs⟩
  · intro hb h
    have : IsProper (Over.mk b).hom := hb
    have hc : CompactSpace S := QuasiCompact.compactSpace_of_compactSpace b
    have ha : IsAmpleLB A := ⟨hA, hc, fun z => by
      obtain ⟨n, s, hn, hs⟩ := h z
      obtain ⟨s', e, -⟩ := exists_sec_oneTerm A (K' := PUnit) (e' := (n : ℤ)) rfl s
      exact ⟨n, hn, s', by rw [← e] at hs; exact hs⟩⟩
    refine relAmple_of_isAmpleLB (Over.mk b) hA fun U hU => ?_
    have : CompactSpace (b ⁻¹ᵁ U).toScheme :=
      isCompact_iff_compactSpace.1 (QuasiCompact.isCompact_preimage (f := b) _ U.isOpen hU.isCompact)
    exact ha.pull_of_isOpenImmersion (b ⁻¹ᵁ U).ι

end GlobalTheory.FrameCompare
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsAmpleFramesIff =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelAmpleOfAppellHumbert =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelAmpleOfAppellHumbert", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsLieBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionOfAppellHumbertThetaFunctionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsShiftSemicharactersNestedLatticesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnimodularOverlatticeRiemannFormStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfLiftTranslationFiniteIndexLatticesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFourthPowerUnderIsogenyStatement\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.HermFormSwapOfIsHermitian\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsAmpleFramesIff\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.PrincipalTorusAlgebraic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj TensorProduct NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.RealMult GlobalTheory.TorusRM

open scoped nonZeroDivisors

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.LefschetzAmple

theorem relAmple_of_isAH : ∀ (g : ℕ) (A : Over (Sp ℂ)) [GrpObj A], IsAbelianScheme A →
    ∀ (M : LB A.left) (u : HolUnif A M g) (Hm : Matrix (Fin g) (Fin g) ℂ) (χ : u.Λ → ℂ),
    M.IsLB → u.IsAH Hm χ → Out.RelAmple A M := by
  intro g A _ hA M u Hm χ hM hAH
  have hint : ∀ l ∈ u.Λ, ∀ l' ∈ u.Λ, ∃ n : ℤ, (hermForm Hm l l').im = n := by
    intro l hl l' hl'
    have h1 := GlobalTheory.LatticeHom.semicharacter_add u hM hAH ⟨l, hl⟩ ⟨l', hl'⟩
    have h2 := GlobalTheory.LatticeHom.semicharacter_add u hM hAH ⟨l', hl'⟩ ⟨l, hl⟩
    rw [add_comm] at h2
    have hsw := GlobalTheory.LatticeHom.hermForm_swap_of_isHermitian hAH.1 l l'
    have him : (hermForm Hm l' l).im = -(hermForm Hm l l').im := by
      rw [hsw, Complex.conj_im]
    have hne : χ ⟨l, hl⟩ * χ ⟨l', hl'⟩ ≠ 0 := by
      refine mul_ne_zero ?_ ?_ <;> refine norm_ne_zero_iff.1 ?_ <;> rw [hAH.2.2.1] <;> norm_num
    have h3 : Complex.exp (Real.pi * Complex.I * (hermForm Hm l l').im) =
        Complex.exp (Real.pi * Complex.I * (hermForm Hm l' l).im) := by
      refine mul_left_cancel₀ hne ?_
      rw [← h1, h2]
      ring
    rw [him] at h3
    have h4 : Complex.exp (2 * Real.pi * Complex.I * (hermForm Hm l l').im) = 1 := by
      have e : (2 * Real.pi * Complex.I * (hermForm Hm l l').im : ℂ) =
          Real.pi * Complex.I * (hermForm Hm l l').im - Real.pi * Complex.I * ((-(hermForm Hm l l').im : ℝ) : ℂ) := by
        push_cast; ring
      rw [e, Complex.exp_sub, h3, div_self (Complex.exp_ne_zero _)]
    obtain ⟨n, hn⟩ := Complex.exp_eq_one_iff.1 h4
    refine ⟨n, ?_⟩
    have hπ : (2 * Real.pi * Complex.I : ℂ) ≠ 0 := by
      simp [Real.pi_ne_zero, Complex.I_ne_zero]
    have := mul_right_cancel₀ hπ (by rw [← hn]; ring : ((hermForm Hm l l').im : ℂ) * (2 * Real.pi * Complex.I) = n * (2 * Real.pi * Complex.I))
    exact_mod_cast this
  obtain ⟨Λ₁, Ef, N, hle, hd1, hf1, hEf, hbij, hN, hNΛ⟩ := GlobalTheory.T.exists_unimodular_overlattice_riemannForm g u.Λ Hm u.discrete u.full hAH.1 hAH.2.1 hint
  obtain ⟨P, uB, χB, hg, hΛB, hAHB, -, -⟩ :=
    GlobalTheory.principalTorus_algebraic g Λ₁ Hm Ef hd1 hf1 hAH.1 hAH.2.1 hEf hbij
  have hle' : u.Λ ≤ uB.Λ := hΛB ▸ hle
  have hNΛ' : ∀ x ∈ uB.Λ, N • x ∈ u.Λ := hΛB ▸ hNΛ
  obtain ⟨a, ha⟩ := GlobalTheory.T.exists_shift_semicharacters_nested_lattices g u.Λ uB.Λ Hm χ χB hle' u.discrete u.full hAH.1 hAH.2.1 hAH.2.2.1 hAHB.2.2.1
    (GlobalTheory.LatticeHom.semicharacter_add u hM hAH) (GlobalTheory.LatticeHom.semicharacter_add uB P.isLB hAHB)
  obtain ⟨ψ, hψ, hψex, hcov⟩ := GlobalTheory.T.theta_fourth_power_under_isogeny g A hA M u Hm χ hM hAH (fun θ => GlobalTheory.T.exists_section_of_appellHumbert_thetaFunction g A hA M u Hm χ hM hAH 4 θ)
    P uB χB hle' a hg hAHB ha
  have hψa : IsAffineHom ψ := GlobalTheory.T.isAffineHom_of_lift_translation_finiteIndex_lattices g A hA P.A P.isAb M P.L u uB a N hN hle' hNΛ' ψ hψ hψex
  have : IsProper A.hom := hA.proper
  exact (GlobalTheory.FrameCompare.relAmple_iff A.hom hM).2 inferInstance fun x => by
    obtain ⟨s, V, hx, hV, hs⟩ := hcov x
    exact ⟨4, s, by norm_num, hx, hs ▸ hV.preimage ψ⟩

end GlobalTheory.LefschetzAmple
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelAmpleOfAppellHumbert =====
