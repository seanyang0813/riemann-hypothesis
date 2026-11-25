module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsCompleteDvrFiniteSubalgebra
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBase, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBaseStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBase =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBase", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsCompleteDvrFiniteSubalgebra\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.TraitExt

theorem exists_finite_trait_extension : ∀ (R W R₁ : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [CommRing W] [IsDomain W] [IsLocalRing W] [CommRing R₁] [IsDomain R₁] [IsLocalRing R₁], GlobalTheory.LN.CDvr W → ∀ (φ : R →+* W), Function.Injective φ → IsLocalHom φ → ∀ (ρ : R →+* R₁), FinExt ρ → ∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] [Algebra (FractionRing W) Ω] [Algebra.IsAlgebraic (FractionRing W) Ω] (e : FractionRing R₁ →+* Ω), (∀ r, e (algebraMap R₁ (FractionRing R₁) (ρ r)) = algebraMap (FractionRing W) Ω (algebraMap W (FractionRing W) (φ r))) → ∃ (W₁ : Type) (_ : CommRing W₁) (_ : IsDomain W₁) (_ : IsLocalRing W₁) (iw : W →+* W₁) (φ₁ : R₁ →+* W₁) (σ : Ω →+* AlgebraicClosure (FractionRing W₁)), GlobalTheory.LN.CDvr W₁ ∧ Function.Injective iw ∧ iw.Finite ∧ IsLocalHom iw ∧ Function.Injective φ₁ ∧ IsLocalHom φ₁ ∧ φ₁.comp ρ = iw.comp φ ∧ (∀ w, σ (algebraMap (FractionRing W) Ω (algebraMap W (FractionRing W) w)) = algebraMap (FractionRing W₁) (AlgebraicClosure (FractionRing W₁)) (algebraMap W₁ (FractionRing W₁) (iw w))) ∧ ∀ r, σ (e (algebraMap R₁ (FractionRing R₁) r)) = algebraMap (FractionRing W₁) (AlgebraicClosure (FractionRing W₁)) (algebraMap W₁ (FractionRing W₁) (φ₁ r)) := by
  intro R W R₁ _ _ _ _ _ _ _ _ _ hW φ hφ hφl ρ hρ Ω _ _ _ _ e he
  obtain ⟨hWd, hWc, hW0⟩ := hW
  obtain ⟨-, hρi, hρf⟩ := hρ

  letI : Algebra W Ω := ((algebraMap (FractionRing W) Ω).comp (algebraMap W (FractionRing W))).toAlgebra
  haveI : IsScalarTower W (FractionRing W) Ω := IsScalarTower.of_algebraMap_eq fun _ => rfl
  have hWΩ : Function.Injective (algebraMap W Ω) :=
    (algebraMap (FractionRing W) Ω).injective.comp (IsFractionRing.injective W (FractionRing W))
  haveI : FaithfulSMul W Ω := (faithfulSMul_iff_algebraMap_injective W Ω).2 hWΩ
  haveI : Algebra.IsAlgebraic W Ω :=
    (IsFractionRing.comap_isAlgebraic_iff (A := W) (K := FractionRing W) (C := Ω)).mpr inferInstance

  letI : Algebra R R₁ := ρ.toAlgebra
  haveI : Module.Finite R R₁ := hρf
  letI : Algebra R W := φ.toAlgebra
  letI : Algebra R Ω := ((algebraMap W Ω).comp φ).toAlgebra
  haveI : IsScalarTower R W Ω := IsScalarTower.of_algebraMap_eq fun _ => rfl
  let f₀ : R₁ →+* Ω := e.comp (algebraMap R₁ (FractionRing R₁))
  have hf₀ : ∀ r, f₀ (ρ r) = algebraMap W Ω (φ r) := he
  let f : R₁ →ₐ[R] Ω := { f₀ with commutes' := fun r => hf₀ r }
  have hint : ∀ x : R₁, IsIntegral W (f₀ x) := fun x =>
    IsIntegral.tower_top (A := W) (IsIntegral.map f (show IsIntegral R x from RingHom.Finite.to_isIntegral hρf x))
  obtain ⟨S, hS⟩ := (Module.Finite.fg_top : (⊤ : Submodule R R₁).FG)
  classical
  obtain ⟨W₁, hd, hc, -, hfin, -, hloc, -, hmem⟩ :=
    GlobalTheory.exists_complete_dvr_finite_subalgebra W Ω (S.image f₀)
  have hin : ∀ x : R₁, f₀ x ∈ W₁ := by
    intro x
    have hx : x ∈ Submodule.span R (S : Set R₁) := hS ▸ Submodule.mem_top
    induction hx using Submodule.span_induction with
    | mem y hy => exact hmem _ (Finset.mem_image_of_mem _ hy) (hint y)
    | zero => simp
    | add y z _ _ hy hz => rw [map_add (f := _)]; exact W₁.add_mem hy hz
    | smul a y _ hy =>
      rw [Algebra.smul_def, map_mul]
      refine W₁.mul_mem ?_ hy
      change f₀ (ρ a) ∈ W₁
      rw [hf₀]; exact W₁.algebraMap_mem _

  let iw : W →+* W₁ := algebraMap W W₁
  let φ₁ : R₁ →+* W₁ := f₀.codRestrict W₁ hin
  have hiwinj : Function.Injective iw := fun a b h => hWΩ (congrArg Subtype.val h)
  haveI : CharZero W₁ := charZero_of_injective_ringHom hiwinj
  have hcomp : φ₁.comp ρ = iw.comp φ := by
    ext r; exact hf₀ r
  have hφ₁inj : Function.Injective φ₁ := fun a b h => by
    have : f₀ a = f₀ b := congrArg Subtype.val h
    exact IsFractionRing.injective R₁ (FractionRing R₁) (e.injective this)
  have hφ₁l : IsLocalHom φ₁ := by
    have h1 : (maximalIdeal W₁).comap iw = maximalIdeal W := ((local_hom_tfae iw).out 1 5).mp hloc
    have h2 : (maximalIdeal W).comap φ = maximalIdeal R := ((local_hom_tfae φ).out 1 5).mp hφl
    have hP : ((maximalIdeal W₁).comap φ₁).comap ρ = maximalIdeal R := by
      rw [Ideal.comap_comap, hcomp, ← Ideal.comap_comap, h1, h2]
    have hmax : ((maximalIdeal W₁).comap φ₁).IsMaximal :=
      Ideal.isMaximal_of_isIntegral_of_isMaximal_comap' ρ (RingHom.Finite.to_isIntegral hρf) _
        (by rw [hP]; infer_instance)
    exact ((local_hom_tfae φ₁).out 1 5).mpr (IsLocalRing.eq_maximalIdeal hmax)
  haveI : Algebra.IsAlgebraic W₁ Ω := Algebra.IsAlgebraic.extendScalars hiwinj
  haveI : Module.IsTorsionFree W₁ Ω :=
    Module.isTorsionFree_iff_algebraMap_injective.mpr Subtype.val_injective
  haveI : Module.IsTorsionFree W₁ (AlgebraicClosure (FractionRing W₁)) :=
    Module.isTorsionFree_iff_algebraMap_injective.mpr (by
      rw [IsScalarTower.algebraMap_eq W₁ (FractionRing W₁) (AlgebraicClosure (FractionRing W₁))]
      exact (algebraMap (FractionRing W₁) _).injective.comp (IsFractionRing.injective W₁ (FractionRing W₁)))
  let σ' : Ω →ₐ[W₁] AlgebraicClosure (FractionRing W₁) := (by
    refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
    solve_by_elim* (maxDepth := 2) only [*,
      @_root_.DivisionSemiring.to_moduleIsTorsionFree,
      @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
  have hσ : ∀ x : W₁, σ' (x : Ω) = algebraMap (FractionRing W₁) (AlgebraicClosure (FractionRing W₁))
      (algebraMap W₁ (FractionRing W₁) x) := fun x => by
    rw [← IsScalarTower.algebraMap_apply]; exact σ'.commutes x
  refine ⟨W₁, inferInstance, inferInstance, inferInstance, iw, φ₁, σ'.toRingHom, ⟨hd, hc, inferInstance⟩,
    hiwinj, RingHom.finite_algebraMap.2 hfin, hloc, hφ₁inj, hφ₁l, hcomp, fun w => hσ (iw w), fun r => hσ (φ₁ r)⟩

end GlobalTheory.TraitExt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBase =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBaseStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBaseStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBaseStatement =====
