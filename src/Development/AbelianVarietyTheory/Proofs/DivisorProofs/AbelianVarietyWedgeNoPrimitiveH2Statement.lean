module

public import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Over
public import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne
public import Mathlib.LinearAlgebra.ExteriorPower.Basic
public import Mathlib.LinearAlgebra.ExteriorPower.Basis
public import Development.AbelianVarietyTheory.Definitions.Divisors.ComparisonMemCechHodgeFiltration
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Mathlib.LinearAlgebra.Basis.VectorSpace
public import Mathlib.LinearAlgebra.TensorProduct.Basis
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechPullOneBijectiveLatticeCoverStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAffineCoverInfClosed
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyH1AxesPrimitiveRankStatement
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
import Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap
import Mathlib.Topology.Sheaves.Presheaf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCohomologyStructureSheafIsoStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCohomologyTrivialBundleAbelianStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StructureSheafCohomologyPullbackCompCupIdStatement
import Mathlib.AlgebraicGeometry.QuasiAffine

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommAlgFunctorCohomologyCupAnticomm, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorSquareOfSymmetricTensorRelations, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorSquareOfSymmetricTensorRelationsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenProductSectionsIso, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorAlgebraProductDiagramCompat, Development.AbelianVarietyTheory.Proofs.DivisorProofs.KunnethCupTensorInjective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyWedgeNoPrimitiveH2, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyWedgeNoPrimitiveH2Statement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommAlgFunctorCohomologyCupAnticomm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommAlgFunctorCohomologyCupAnticomm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.AbLaw GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.AbCoh

theorem cup_anticomm (R : Type) [CommRing R] (C : Type) [Category.{0} C] (F : C ⥤ CommAlgCat.{0} R)
    (a b : GlobalTheory.CatCoh.H1 F) : cup F a b = - cup F b a := by
  rw [eq_neg_iff_add_eq_zero]
  obtain ⟨a, rfl⟩ := GlobalTheory.CatCoh.H1.mk_surjective F a
  obtain ⟨b, rfl⟩ := GlobalTheory.CatCoh.H1.mk_surjective F b
  rw [cup_mk, cup_mk, ← map_add (f := _)]
  refine GlobalTheory.CatCoh.H2.mk_eq_zero.2 ⟨fun T T' φ ↦ -(a.1 T T' φ * b.1 T T' φ), ?_⟩
  funext T T' T'' φ ψ
  simp only [d1_apply, Submodule.coe_add, Pi.add_apply, cupZ_apply, Z1.comp a, Z1.comp b, map_mul, map_neg]
  ring

end GlobalTheory.AbCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommAlgFunctorCohomologyCupAnticomm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorSquareOfSymmetricTensorRelations =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorSquareOfSymmetricTensorRelations", "h": "module\n\npublic import Mathlib.LinearAlgebra.ExteriorPower.Basic\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.ExteriorPower.Basis\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.AbLaw GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

theorem exteriorSq_of_symm_relations (K : Type) [Field K] (V W : Type) [AddCommGroup V] [Module K V]
    [AddCommGroup W] [Module K W] [Module.Finite K V] [Module.Finite K W] (β : V →ₗ[K] V →ₗ[K] W)
    (hW : Module.finrank K W ≤ (Module.finrank K V).choose 2)
    (hrel : ∀ t : V ⊗[K] V, TensorProduct.lift β t = 0 → TensorProduct.comm K V V t = t) :
    (∃ e : ⋀[K]^2 V ≃ₗ[K] W, ∀ a b, e (exteriorPower.ιMulti K 2 ![a, b]) = β a b) ∧
      Function.Surjective (TensorProduct.lift β) ∧
      ∀ t : V ⊗[K] V, TensorProduct.comm K V V t = t → TensorProduct.lift β t = 0 := by
  classical
  set n := Module.finrank K V with hn
  have h0 : ∀ a b x : V, Function.update ![a, b] 0 x = ![x, b] := by
    intro a b x; ext i; fin_cases i <;> rfl
  have h1 : ∀ a b x : V, Function.update ![a, b] 1 x = ![a, x] := by
    intro a b x; ext i; fin_cases i <;> rfl
  let wb : V →ₗ[K] V →ₗ[K] ⋀[K]^2 V :=
    LinearMap.mk₂ K (fun a b => exteriorPower.ιMulti K 2 ![a, b])
      (by intro a₁ a₂ b
          rw [← h0 a₁ b (a₁ + a₂), AlternatingMap.map_update_add]; simp only [h0])
      (by intro c a b
          rw [← h0 a b (c • a), AlternatingMap.map_update_smul]; simp only [h0])
      (by intro a b₁ b₂
          rw [← h1 a b₁ (b₁ + b₂), AlternatingMap.map_update_add]; simp only [h1])
      (by intro c a b
          rw [← h1 a b (c • b), AlternatingMap.map_update_smul]; simp only [h1])
  let π : V ⊗[K] V →ₗ[K] ⋀[K]^2 V := TensorProduct.lift wb
  have hπt : ∀ a b, π (a ⊗ₜ b) = exteriorPower.ιMulti K 2 ![a, b] := by
    intro a b; simp [π, wb]
  have hπ : Function.Surjective π := by
    rw [← LinearMap.range_eq_top, eq_top_iff, ← exteriorPower.ιMulti_span K 2 V, Submodule.span_le]
    rintro _ ⟨m, rfl⟩
    refine ⟨m 0 ⊗ₜ m 1, ?_⟩
    rw [hπt]; congr 1; ext i; fin_cases i <;> rfl
  have hswap : ∀ x y : V, exteriorPower.ιMulti K 2 ![x, y] = -exteriorPower.ιMulti K 2 ![y, x] := by
    intro x y
    rw [← (exteriorPower.ιMulti K 2).map_swap ![y, x] (show (0 : Fin 2) ≠ 1 by decide)]
    congr 1; ext i; fin_cases i <;> rfl
  have hdiag : ∀ x : V, exteriorPower.ιMulti K 2 ![x, x] = 0 := by
    intro x
    exact (exteriorPower.ιMulti K 2).map_eq_zero_of_eq ![x, x] (i := 0) (j := 1) rfl (by decide)
  let b := Module.finBasis K V
  let bt := b.tensorProduct b
  let r : V ⊗[K] V →ₗ[K] ⋀[K]^2 V :=
    bt.constr K (fun p => if p.1 < p.2 then exteriorPower.ιMulti K 2 ![b p.1, b p.2] else 0)
  have hrb : ∀ i j, r (b i ⊗ₜ b j) = if i < j then exteriorPower.ιMulti K 2 ![b i, b j] else 0 := by
    intro i j
    rw [← Module.Basis.tensorProduct_apply, Module.Basis.constr_basis]
  have hr : r ∘ₗ (LinearMap.id - (TensorProduct.comm K V V).toLinearMap) = π := by
    apply bt.ext; rintro ⟨i, j⟩
    simp only [bt, Module.Basis.tensorProduct_apply, LinearMap.comp_apply, LinearMap.sub_apply,
      LinearMap.id_apply, LinearEquiv.coe_coe, TensorProduct.comm_tmul, map_sub, hrb, hπt]
    rcases lt_trichotomy i j with h | h | h
    · simp [h, lt_asymm h]
    · subst h; simp [hdiag]
    · simp [h, lt_asymm h, hswap (b i) (b j)]
  have hS : ∀ t, TensorProduct.comm K V V t = t → π t = 0 := by
    intro t ht
    rw [← hr, LinearMap.comp_apply, LinearMap.sub_apply, LinearMap.id_apply, LinearEquiv.coe_coe, ht,
      sub_self, map_zero]
  set L := TensorProduct.lift β with hLdef
  have hle : LinearMap.ker L ≤ LinearMap.ker π := fun t ht => hS t (hrel t ht)
  have hVV : Module.finrank K (V ⊗[K] V) = n * n := Module.finrank_tensorProduct
  have hext : Module.finrank K (⋀[K]^2 V) = n.choose 2 := by rw [exteriorPower.finrank_eq]
  have hπk := LinearMap.finrank_range_add_finrank_ker π
  rw [LinearMap.range_eq_top.mpr hπ, finrank_top, hext, hVV] at hπk
  have hLk := LinearMap.finrank_range_add_finrank_ker L
  rw [hVV] at hLk
  have hLr : Module.finrank K (LinearMap.range L) ≤ Module.finrank K W := Submodule.finrank_le _
  have hNeq : LinearMap.ker L = LinearMap.ker π :=
    Submodule.eq_of_le_of_finrank_le hle (by
      generalize n * n = m at hπk hLk
      generalize n.choose 2 = k at hπk hW
      omega)
  have hL : Function.Surjective L := by
    rw [← LinearMap.range_eq_top]
    apply Submodule.eq_top_of_finrank_eq
    rw [hNeq] at hLk
    generalize n * n = m at hπk hLk
    generalize n.choose 2 = k at hπk hW
    omega
  refine ⟨?_, hL, fun t ht => ?_⟩
  · refine ⟨(π.quotKerEquivOfSurjective hπ).symm.trans
      ((Submodule.quotEquivOfEq _ _ hNeq.symm).trans (L.quotKerEquivOfSurjective hL)), ?_⟩
    intro a c
    rw [← hπt, ← LinearMap.quotKerEquivOfSurjective_apply_mk π hπ, LinearEquiv.trans_apply,
      LinearEquiv.symm_apply_apply, LinearEquiv.trans_apply, Submodule.quotEquivOfEq_mk,
      LinearMap.quotKerEquivOfSurjective_apply_mk, hLdef, TensorProduct.lift.tmul]
  · have : t ∈ LinearMap.ker L := hNeq ▸ hS t ht
    exact this

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorSquareOfSymmetricTensorRelations =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorSquareOfSymmetricTensorRelationsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorSquareOfSymmetricTensorRelationsStatement", "h": "module\n\npublic import Mathlib.LinearAlgebra.ExteriorPower.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorSquareOfSymmetricTensorRelations\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.AbLaw GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorSquareOfSymmetricTensorRelationsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenProductSectionsIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenProductSectionsIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ComparisonMemCechHodgeFiltration\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.AbLaw GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

theorem isAffineOpen_inf_preimage_of_isPullback {S X Y Z : Scheme.{0}} {p : Z ⟶ X} {q : Z ⟶ Y}
    {iX : X ⟶ S} {iY : Y ⟶ S} (H : IsPullback p q iX iY) [IsAffine S] {U : X.Opens}
    {V : Y.Opens} (hU : IsAffineOpen U) (hV : IsAffineOpen V) :
    IsAffineOpen (p ⁻¹ᵁ U ⊓ q ⁻¹ᵁ V) := by
  have : IsAffine _ := isAffineOpen_top S
  have : IsAffine _ := hU
  have : IsAffine _ := hV
  exact .of_isIso (Scheme.Hom.isPullback_resLE H (US := ⊤) (UT := V) (UX := U) le_top le_top
    rfl).isoPullback.hom

theorem appLE_appLE_of_comp {T X Y : Scheme.{0}} (f : T ⟶ X) (g : X ⟶ Y) (h : T ⟶ Y)
    (e : f ≫ g = h) {W : Y.Opens} {U : X.Opens} {N : T.Opens} (h1 : U ≤ g ⁻¹ᵁ W)
    (h2 : N ≤ f ⁻¹ᵁ U) (h3 : N ≤ h ⁻¹ᵁ W) (x : Γ(Y, W)) :
    (f.appLE U N h2).hom ((g.appLE W U h1).hom x) = (h.appLE W N h3).hom x := by
  subst e
  rw [← CommRingCat.comp_apply, Scheme.Hom.appLE_comp_appLE]

theorem functions_on_product_of_affine_opens : ∀ (R : Type) [CommRing R] (X Y : Over (Sp R)) (U : X.left.affineOpens) (V : Y.left.affineOpens), ∃ (W : (X ⊗ Y).left.affineOpens) (h₁ : W.1 ≤ (fst X Y).left ⁻¹ᵁ U.1) (h₂ : W.1 ≤ (snd X Y).left ⁻¹ᵁ V.1) (i₁ : Sec X.hom U.1 →ₐ[R] Sec (X ⊗ Y).hom W.1) (i₂ : Sec Y.hom V.1 →ₐ[R] Sec (X ⊗ Y).hom W.1), W.1 = (fst X Y).left ⁻¹ᵁ U.1 ⊓ (snd X Y).left ⁻¹ᵁ V.1 ∧ (∀ b, i₁ b = ((fst X Y).left.appLE U.1 W.1 h₁).hom b) ∧ (∀ b, i₂ b = ((snd X Y).left.appLE V.1 W.1 h₂).hom b) ∧ Function.Bijective (Algebra.TensorProduct.productMap i₁ i₂) := by
  intro R _ X Y U V
  have H : IsPullback (fst X Y).left (snd X Y).left X.hom Y.hom := .of_hasPullback _ _
  let W : (X ⊗ Y).left.affineOpens :=
    ⟨(fst X Y).left ⁻¹ᵁ U.1 ⊓ (snd X Y).left ⁻¹ᵁ V.1,
      isAffineOpen_inf_preimage_of_isPullback H U.2 V.2⟩
  have h₁ : W.1 ≤ (fst X Y).left ⁻¹ᵁ U.1 := inf_le_left
  have h₂ : W.1 ≤ (snd X Y).left ⁻¹ᵁ V.1 := inf_le_right
  let i₁ : Sec X.hom U.1 →ₐ[R] Sec (X ⊗ Y).hom W.1 :=
    { ((fst X Y).left.appLE U.1 W.1 h₁).hom with
      commutes' := fun r => by
        change ((fst X Y).left.appLE U.1 W.1 h₁).hom ((X.hom.appLE ⊤ U.1 le_top).hom _) =
          ((X ⊗ Y).hom.appLE ⊤ W.1 le_top).hom _
        exact appLE_appLE_of_comp _ _ _ (Over.w _) _ _ _ _ }
  let i₂ : Sec Y.hom V.1 →ₐ[R] Sec (X ⊗ Y).hom W.1 :=
    { ((snd X Y).left.appLE V.1 W.1 h₂).hom with
      commutes' := fun r => by
        change ((snd X Y).left.appLE V.1 W.1 h₂).hom ((Y.hom.appLE ⊤ V.1 le_top).hom _) =
          ((X ⊗ Y).hom.appLE ⊤ W.1 le_top).hom _
        exact appLE_appLE_of_comp _ _ _ (Over.w _) _ _ _ _ }
  refine ⟨W, h₁, h₂, i₁, i₂, rfl, fun b => rfl, fun b => rfl, ?_⟩
  have po := (isIso_pushoutSection_iff H (US := ⊤) (UT := V.1) (UX := U.1) le_top le_top rfl).1
    (isIso_pushoutSection_of_isAffineOpen H _ _ _ (isAffineOpen_top _) V.2 U.2)

  have po' : IsPushout (CommRingCat.ofHom (algebraMap R (Sec X.hom U.1)))
      (CommRingCat.ofHom (algebraMap R (Sec Y.hom V.1)))
      ((fst X Y).left.appLE U.1 W.1 h₁) ((snd X Y).left.appLE V.1 W.1 h₂) := by
    refine po.of_iso (Scheme.ΓSpecIso (CommRingCat.of R)) (Iso.refl (CommRingCat.of (Sec X.hom U.1)))
      (Iso.refl (CommRingCat.of (Sec Y.hom V.1)))
      (Iso.refl (CommRingCat.of (Sec (X ⊗ Y).hom W.1))) ?_ ?_ (by rfl) (by rfl)
    · ext r
      change (X.hom.appLE ⊤ U.1 le_top).hom r = (X.hom.appLE ⊤ U.1 le_top).hom
        ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom r))
      congr 1
      simp
    · ext r
      change (Y.hom.appLE ⊤ V.1 le_top).hom r = (Y.hom.appLE ⊤ V.1 le_top).hom
        ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom r))
      congr 1
      simp
  have h1 := CommRingCat.isPushout_tensorProduct R (Sec X.hom U.1) (Sec Y.hom V.1)
  let e := h1.isoIsPushout _ _ po'
  have he : e.hom = CommRingCat.ofHom (Algebra.TensorProduct.productMap i₁ i₂).toRingHom := by
    refine h1.hom_ext ?_ ?_
    · refine (h1.inl_isoIsPushout_hom _ _ po').trans ?_
      ext x
      exact (Algebra.TensorProduct.productMap_left_apply i₁ i₂ x).symm
    · refine (h1.inr_isoIsPushout_hom _ _ po').trans ?_
      ext x
      exact (Algebra.TensorProduct.productMap_right_apply i₁ i₂ x).symm
  have hb := ConcreteCategory.bijective_of_isIso e.hom
  rw [he] at hb
  exact hb

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenProductSectionsIso =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorAlgebraProductDiagramCompat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorAlgebraProductDiagramCompat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\npublic import Mathlib.LinearAlgebra.Basis.VectorSpace\npublic import Mathlib.LinearAlgebra.TensorProduct.Basis\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.AbLaw GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.CatCoh.KunnethOne

theorem tensor_eq_zero_of_forall {K : Type} [Field K] {V W : Type} [AddCommGroup V] [Module K V]
    [AddCommGroup W] [Module K W] (t : V ⊗[K] W)
    (h : ∀ l : W →ₗ[K] K, TensorProduct.rid K V (LinearMap.lTensor V l t) = 0) : t = 0 := by
  classical
  let b := Module.Free.chooseBasis K W
  have key : ∀ (j : Module.Free.ChooseBasisIndex K W) (s : V ⊗[K] W),
      TensorProduct.equivFinsuppOfBasisRight b s j =
        TensorProduct.rid K V (LinearMap.lTensor V (b.coord j) s) := by
    intro j s
    induction s using TensorProduct.induction_on with
    | zero => simp
    | tmul m n => simp
    | add u v hu hv => simp only [map_add (f := _), Finsupp.add_apply, hu, hv]
  apply (TensorProduct.equivFinsuppOfBasisRight b).injective
  ext j
  rw [key, h, map_zero, Finsupp.zero_apply]

section Contr

variable {K : Type} [Field K] {Q : Type} [Category.{0} Q] (G : Q ⥤ CommAlgCat.{0} K)
  [Fintype Q] [DecidableEq Q] [∀ T T' : Q, Fintype (T ⟶ T')] [∀ T T' : Q, DecidableEq (T ⟶ T')]

def coef (Λ : C1 G →ₗ[K] K) (T T' : Q) (φ : T ⟶ T') : G.obj T' →ₗ[K] K :=
  Λ ∘ₗ LinearMap.single K (fun T => ∀ (T' : Q) (_ : T ⟶ T'), G.obj T') T ∘ₗ
    LinearMap.single K (fun T' => (T ⟶ T') → G.obj T') T' ∘ₗ
    LinearMap.single K (fun _ : T ⟶ T' => G.obj T') φ

def contr (M : Type) [AddCommGroup M] [Module K M] (Λ : C1 G →ₗ[K] K) :
    (∀ (T T' : Q) (_ : T ⟶ T'), M ⊗[K] G.obj T') →ₗ[K] M :=
  ∑ T, ∑ T', ∑ φ : T ⟶ T', (TensorProduct.rid K M).toLinearMap ∘ₗ
    LinearMap.lTensor M (coef G Λ T T' φ) ∘ₗ
    LinearMap.proj (R := K) (φ := fun _ : T ⟶ T' => M ⊗[K] G.obj T') φ ∘ₗ
    LinearMap.proj (R := K) (φ := fun T' => (T ⟶ T') → M ⊗[K] G.obj T') T' ∘ₗ
    LinearMap.proj (R := K) (φ := fun T => ∀ (T' : Q) (_ : T ⟶ T'), M ⊗[K] G.obj T') T

theorem contr_apply (M : Type) [AddCommGroup M] [Module K M] (Λ : C1 G →ₗ[K] K)
    (c : ∀ (T T' : Q) (_ : T ⟶ T'), M ⊗[K] G.obj T') :
    contr G M Λ c = ∑ T, ∑ T', ∑ φ : T ⟶ T',
      TensorProduct.rid K M (LinearMap.lTensor M (coef G Λ T T' φ) (c T T' φ)) := by
  simp [contr, LinearMap.sum_apply]

theorem contr_tmul (M : Type) [AddCommGroup M] [Module K M] (Λ : C1 G →ₗ[K] K) (z : M)
    (h : C1 G) : contr G M Λ (fun T T' φ => z ⊗ₜ[K] h T T' φ) = Λ h • z := by
  rw [contr_apply]
  simp only [LinearMap.lTensor_tmul, TensorProduct.rid_tmul, ← Finset.sum_smul]
  congr 1

  simp only [coef, LinearMap.comp_apply, ← map_sum]
  congr 1
  simp only [LinearMap.single_apply, Finset.univ_sum_single]

theorem contr_natural (M N : Type) [AddCommGroup M] [Module K M] [AddCommGroup N] [Module K N]
    (Λ : C1 G →ₗ[K] K) (h : M →ₗ[K] N) (c : ∀ (T T' : Q) (_ : T ⟶ T'), M ⊗[K] G.obj T') :
    contr G N Λ (fun T T' φ => LinearMap.rTensor (G.obj T') h (c T T' φ)) = h (contr G M Λ c) := by

  simp only [contr_apply, map_sum]
  refine Finset.sum_congr rfl fun T _ => Finset.sum_congr rfl fun T' _ =>
    Finset.sum_congr rfl fun φ _ => ?_
  induction c T T' φ using TensorProduct.induction_on with
  | zero => simp
  | tmul m n => simp
  | add u v hu hv => simp only [map_add (f := _), hu, hv]

theorem kunneth_contraction_d0_vanishes (M : Type) [AddCommGroup M] [Module K M] (Λ : C1 G →ₗ[K] K)
    (hΛ : ∀ g : C0 G, Λ (d0 G g) = 0) (w : ∀ T : Q, M ⊗[K] G.obj T) :
    contr G M Λ (fun T T' φ => LinearMap.lTensor M (mp G φ).toLinearMap (w T) - w T') = 0 := by
  let D : (∀ T : Q, M ⊗[K] G.obj T) →ₗ[K] (∀ (T T' : Q) (_ : T ⟶ T'), M ⊗[K] G.obj T') :=
    LinearMap.pi fun T => LinearMap.pi fun T' => LinearMap.pi fun φ =>
      LinearMap.lTensor M (mp G φ).toLinearMap ∘ₗ
        LinearMap.proj (R := K) (φ := fun T => M ⊗[K] G.obj T) T -
      LinearMap.proj (R := K) (φ := fun T => M ⊗[K] G.obj T) T'
  have hD : contr G M Λ ∘ₗ D = 0 := by
    refine LinearMap.pi_ext fun T₀ x => ?_
    induction x using TensorProduct.induction_on with
    | zero => simp
    | tmul z u =>
      have e : D (Pi.single T₀ (z ⊗ₜ[K] u)) =
          fun T T' φ => z ⊗ₜ[K] (-d0 G (Pi.single T₀ u : C0 G) T T' φ) := by
        funext T T' φ
        simp only [D, LinearMap.pi_apply, LinearMap.sub_apply, LinearMap.comp_apply,
          LinearMap.proj_apply, amitsur_d0_apply, neg_sub, TensorProduct.tmul_sub]
        by_cases h1 : T = T₀ <;> by_cases h2 : T' = T₀
        · subst h1; subst h2; simp
        · subst h1; simp [Pi.single_eq_of_ne h2]
        · subst h2; simp [Pi.single_eq_of_ne h1]
        · simp [Pi.single_eq_of_ne h1, Pi.single_eq_of_ne h2]
      have c := contr_tmul G M Λ z (-d0 G (Pi.single T₀ u : C0 G))
      simp only [Pi.neg_apply] at c
      rw [LinearMap.comp_apply, e, c, map_neg, hΛ, neg_zero, zero_smul, LinearMap.zero_apply]
    | add u v hu hv => simp only [Pi.single_add, map_add (f := _), hu, hv]
  exact LinearMap.congr_fun hD w

end Contr

end GlobalTheory.CatCoh.KunnethOne

namespace GlobalTheory.CatCoh.KunnethOne

theorem sum_tmul_eq_zero_of_cup : ∀ (K : Type) [Field K] (P Q : Type) [Category.{0} P] [Category.{0} Q] [Finite Q] [Quiver.IsThin Q] (F : P ⥤ CommAlgCat.{0} K) (G : Q ⥤ CommAlgCat.{0} K) (E : P × Q ⥤ CommAlgCat.{0} K) (i₁ : ∀ T : P × Q, F.obj T.1 →ₐ[K] E.obj T) (i₂ : ∀ T : P × Q, G.obj T.2 →ₐ[K] E.obj T), (∀ (T T' : P × Q) (a : T ⟶ T') (b : F.obj T.1), i₁ T' (mp F a.1 b) = mp E a (i₁ T b)) → (∀ (T T' : P × Q) (a : T ⟶ T') (b : G.obj T.2), i₂ T' (mp G a.2 b) = mp E a (i₂ T b)) → (∀ T, Function.Bijective (Algebra.TensorProduct.productMap (i₁ T) (i₂ T))) → ∀ (n : ℕ) (x : Fin n → Z1 F) (y : Fin n → Z1 G) (f : C1 E), (∀ (T T' T'' : P × Q) (a : T ⟶ T') (b : T' ⟶ T''), d1 E f T T' T'' a b = ∑ i, mp E b (i₁ T' ((x i).1 _ _ a.1)) * i₂ T'' ((y i).1 _ _ b.2)) → ∑ i, GlobalTheory.CatCoh.H1.mk F (x i) ⊗ₜ[K] GlobalTheory.CatCoh.H1.mk G (y i) = 0 := by
  intro K _ P Q _ _ _ _ F G E i₁ i₂ h₁ h₂ hb n x y f hf
  classical
  haveI := Fintype.ofFinite Q
  haveI : ∀ T T' : Q, Fintype (T ⟶ T') := fun _ _ => Fintype.ofFinite _
  apply tensor_eq_zero_of_forall
  intro l

  simp only [map_sum, LinearMap.lTensor_tmul, TensorProduct.rid_tmul]
  obtain ⟨Λ, hΛ⟩ := LinearMap.exists_extend (l ∘ₗ H1.mk G)
  have hΛy : ∀ z : Z1 G, Λ z.1 = l (H1.mk G z) := fun z => LinearMap.congr_fun hΛ z
  have hΛd : ∀ g : C0 G, Λ (d0 G g) = 0 := fun g => by
    have e := hΛy ⟨d0 G g, commAlgFunctorCoboundaryZero_mem_cocyclesOne G g⟩
    rw [e, H1.mk_eq_zero.2 ⟨g, rfl⟩, map_zero]

  simp only [← hΛy, ← map_smul, ← map_sum]
  rw [H1.mk_eq_zero]
  let β : ∀ T : P × Q, F.obj T.1 ⊗[K] G.obj T.2 ≃ₐ[K] E.obj T :=
    fun T => AlgEquiv.ofBijective _ (hb T)
  have hβ : ∀ (T : P × Q) (z : F.obj T.1) (u : G.obj T.2), β T (z ⊗ₜ u) = i₁ T z * i₂ T u :=
    fun T z u => Algebra.TensorProduct.productMap_apply_tmul _ _ _ _
  have natL : ∀ (p p' : P) (T : Q) (a : p ⟶ p') (t : F.obj p ⊗[K] G.obj T),
      β (p', T) (LinearMap.rTensor (G.obj T) (mp F a).toLinearMap t) =
        mp E ((a, 𝟙 T) : (p, T) ⟶ (p', T)) (β (p, T) t) := by
    intro p p' T a t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul z u =>
      rw [LinearMap.rTensor_tmul, hβ, hβ, map_mul, ← h₁ (p, T) (p', T), ← h₂ (p, T) (p', T)]
      simp [mp_id]
    | add u v hu hv => simp only [map_add (f := _), hu, hv]
  have natR : ∀ (p : P) (T T' : Q) (b : T ⟶ T') (t : F.obj p ⊗[K] G.obj T),
      β (p, T') (LinearMap.lTensor (F.obj p) (mp G b).toLinearMap t) =
        mp E ((𝟙 p, b) : (p, T) ⟶ (p, T')) (β (p, T) t) := by
    intro p T T' b t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul z u =>
      rw [LinearMap.lTensor_tmul, hβ, hβ, map_mul, ← h₁ (p, T) (p, T'), ← h₂ (p, T) (p, T')]
      simp [mp_id]
    | add u v hu hv => simp only [map_add (f := _), hu, hv]
  refine ⟨fun p => contr G (F.obj p) Λ
    (fun T T' φ => (β (p, T')).symm (f (p, T) (p, T') ((𝟙 p, φ) : (p, T) ⟶ (p, T')))), ?_⟩
  funext p p' a
  rw [amitsur_d0_apply]
  simp only [Submodule.coe_sum, Submodule.coe_smul, Finset.sum_apply, Pi.smul_apply]
  have step : ∀ (T T' : Q) (b : T ⟶ T'),
      (β (p', T')).symm (f (p', T) (p', T') ((𝟙 p', b) : (p', T) ⟶ (p', T'))) -
        LinearMap.rTensor (G.obj T') (mp F a).toLinearMap
          ((β (p, T')).symm (f (p, T) (p, T') ((𝟙 p, b) : (p, T) ⟶ (p, T')))) =
      ∑ i, (x i).1 p p' a ⊗ₜ[K] (y i).1 T T' b -
        (LinearMap.lTensor (F.obj p') (mp G b).toLinearMap
            ((β (p', T)).symm (f (p, T) (p', T) ((a, 𝟙 T) : (p, T) ⟶ (p', T)))) -
          (β (p', T')).symm (f (p, T') (p', T') ((a, 𝟙 T') : (p, T') ⟶ (p', T')))) := by
    intro T T' b
    apply (β (p', T')).injective
    have H1 := hf (p, T) (p', T) (p', T') (a, 𝟙 T) (𝟙 p', b)
    have H2 := hf (p, T) (p, T') (p', T') (𝟙 p, b) (a, 𝟙 T')
    rw [d1_apply] at H1 H2
    simp only [prod_comp, Category.comp_id, Category.id_comp] at H1 H2
    simp only [Z1.id, map_zero, zero_mul, Finset.sum_const_zero] at H2
    simp only [← h₁, mp_id] at H1

    simp only [map_sub, map_sum, AlgEquiv.apply_symm_apply, natL, natR, hβ]
    linear_combination H1 - H2
  have nat := contr_natural G (F.obj p) (F.obj p') Λ (mp F a).toLinearMap
    (fun T T' φ => (β (p, T')).symm (f (p, T) (p, T') ((𝟙 p, φ) : (p, T) ⟶ (p, T'))))
  rw [AlgHom.toLinearMap_apply] at nat
  rw [← nat, ← map_sub]
  trans contr G (F.obj p') Λ ((∑ i, fun T T' φ => (x i).1 p p' a ⊗ₜ[K] (y i).1 T T' φ) -
    fun T T' φ => LinearMap.lTensor (F.obj p') (mp G φ).toLinearMap
        ((β (p', T)).symm (f (p, T) (p', T) ((a, 𝟙 T) : (p, T) ⟶ (p', T)))) -
      (β (p', T')).symm (f (p, T') (p', T') ((a, 𝟙 T') : (p, T') ⟶ (p', T'))))
  · congr 1
    funext T T' b
    simp only [Pi.sub_apply, Finset.sum_apply]
    exact step T T' b
  · set_option synthInstance.maxHeartbeats 100000 in
      rw [map_sub, kunneth_contraction_d0_vanishes _ _ _ hΛd, sub_zero, map_sum]
    simp only [contr_tmul]

end GlobalTheory.CatCoh.KunnethOne
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorAlgebraProductDiagramCompat =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KunnethCupTensorInjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.KunnethCupTensorInjective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechPullOneBijectiveLatticeCoverStatement\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ComparisonMemCechHodgeFiltration\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenProductSectionsIso\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAffineCoverInfClosed\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorAlgebraProductDiagramCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.AbLaw GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.Kunneth

section Pairs

variable {R R' : Type} [CommRing R] [CommRing R'] {X X' : Scheme.{0}} {s : X ⟶ Sp R}
  {s' : X' ⟶ Sp R'} {σ : R →+* R'} {φ : X' ⟶ X}
  {C : Type} [Category.{0} C] (A : C ⥤ AffOp X') (B : C ⥤ AffOp X)
  (hle : ∀ T, (A.obj T).unop.1 ≤ φ ⁻¹ᵁ (B.obj T).unop.1)

def toPair : C ⥤ (Pair φ)ᵒᵖ where
  obj T := Opposite.op ⟨((A.obj T).unop, (B.obj T).unop), hle T⟩
  map {T T'} a := (homOfLE (Subtype.coe_le_coe.1
    (Prod.mk_le_mk.2 ⟨leOfHom (A.map a).unop, leOfHom (B.map a).unop⟩) :
      (⟨((A.obj T').unop, (B.obj T').unop), hle T'⟩ : Pair φ) ≤ ⟨((A.obj T).unop, (B.obj T).unop), hle T⟩)).op
  map_id _ := Quiver.Hom.unop_inj (Subsingleton.elim _ _)
  map_comp _ _ := Quiver.Hom.unop_inj (Subsingleton.elim _ _)

theorem restrict_pullHO1 (h : φ ≫ s = s' ≫ spMap σ) (c : HO1 s) :
    (CoefMap.restrict (OAff s') A).pull1 (pullHO1 h c) =
      ((pairPull h).comp (CoefMap.restrict (OPair φ s') (toPair A B hle))).pull1 c := by
  rw [CoefMap.pullCohomologyOne_comp, (isPullO_pullHO1 h c : (pairPull h).pull1 c = (pairRes φ s').pull1 (pullHO1 h c))]
  exact CoefMap.pullCohomologyOne_comp (pairRes φ s') (CoefMap.restrict (OPair φ s') (toPair A B hle)) (pullHO1 h c)

end Pairs

end GlobalTheory.Kunneth

namespace GlobalTheory.Kunneth

def prodFun {J J' : Type} [Preorder J] [Preorder J'] {Z : Scheme.{0}} (W : J × J' → Z.affineOpens)
    (hW : Monotone W) : Jᵒᵖ × J'ᵒᵖ ⥤ AffOp Z where
  obj T := Opposite.op (W (T.1.unop, T.2.unop))
  map a := (homOfLE (hW (Prod.mk_le_mk.2 ⟨leOfHom a.1.unop, leOfHom a.2.unop⟩))).op
  map_id _ := Quiver.Hom.unop_inj (Subsingleton.elim _ _)
  map_comp _ _ := Quiver.Hom.unop_inj (Subsingleton.elim _ _)

theorem cup_tmul_injective : ∀ (K : Type) [Field K] (X Y : Over (Sp K)), IsSeparated X.hom → QuasiCompact X.hom →
    IsSeparated Y.hom → QuasiCompact Y.hom → ∀ (n : ℕ) (x : Fin n → HO1 X.hom) (y : Fin n → HO1 Y.hom),
    ∑ i, cup (OAff (X ⊗ Y).hom) (pO1 (fst X Y) (x i)) (pO1 (snd X Y) (y i)) = 0 →
    ∑ i, x i ⊗ₜ[K] y i = 0 := by
  intro K _ X Y hXs hXq hYs hYq n x y hsum
  obtain ⟨J, _, _, U, hU, hUi, hUc⟩ := GlobalTheory.exists_finite_affine_cover_infClosed K X.left X.hom hXs hXq
  obtain ⟨J', _, _, V, hV, hVi, hVc⟩ := GlobalTheory.exists_finite_affine_cover_infClosed K Y.left Y.hom hYs hYq
  choose Wf h1 h2 i1 i2 hWe hi1 hi2 hbij using fun p : J × J' ↦ _root_.GlobalTheory.functions_on_product_of_affine_opens K X Y (U p.1) (V p.2)
  have hWm : Monotone Wf := fun p q hpq ↦ by
    show (Wf p).1 ≤ (Wf q).1
    rw [hWe p, hWe q]
    exact inf_le_inf (Scheme.Hom.preimage_mono _ (hU hpq.1)) (Scheme.Hom.preimage_mono _ (hV hpq.2))
  haveI : Finite J'ᵒᵖ := Finite.of_equiv J' Opposite.equivToOpposite
  let Ψ := prodFun Wf hWm
  let F := hU.functor.op ⋙ OAff X.hom
  let G := hV.functor.op ⋙ OAff Y.hom
  let E := Ψ ⋙ OAff (X ⊗ Y).hom
  let B₁ : Jᵒᵖ × J'ᵒᵖ ⥤ AffOp X.left := CategoryTheory.Prod.fst Jᵒᵖ J'ᵒᵖ ⋙ hU.functor.op
  let B₂ : Jᵒᵖ × J'ᵒᵖ ⥤ AffOp Y.left := CategoryTheory.Prod.snd Jᵒᵖ J'ᵒᵖ ⋙ hV.functor.op
  have hle₁ : ∀ T, (Ψ.obj T).unop.1 ≤ (fst X Y).left ⁻¹ᵁ (B₁.obj T).unop.1 := fun T ↦ h1 (T.1.unop, T.2.unop)
  have hle₂ : ∀ T, (Ψ.obj T).unop.1 ≤ (snd X Y).left ⁻¹ᵁ (B₂.obj T).unop.1 := fun T ↦ h2 (T.1.unop, T.2.unop)
  let m₁ := (pairPull (ovw (fst X Y))).comp (CoefMap.restrict (OPair (fst X Y).left (X ⊗ Y).hom) (toPair Ψ B₁ hle₁))
  let m₂ := (pairPull (ovw (snd X Y))).comp (CoefMap.restrict (OPair (snd X Y).left (X ⊗ Y).hom) (toPair Ψ B₂ hle₂))
  let j₁ : ∀ T : Jᵒᵖ × J'ᵒᵖ, F.obj T.1 →ₐ[K] E.obj T := fun T ↦ i1 (T.1.unop, T.2.unop)
  let j₂ : ∀ T : Jᵒᵖ × J'ᵒᵖ, G.obj T.2 →ₐ[K] E.obj T := fun T ↦ i2 (T.1.unop, T.2.unop)
  have nat₁ : ∀ (T T' : Jᵒᵖ × J'ᵒᵖ) (a : T ⟶ T') (b : F.obj T.1), j₁ T' (mp F a.1 b) = mp E a (j₁ T b) := by
    intro T T' a b
    refine (hi1 _ _).trans (Eq.trans ?_ (congrArg (mp E a) (hi1 (T.1.unop, T.2.unop) b).symm))
    exact m₁.naturality a b
  have nat₂ : ∀ (T T' : Jᵒᵖ × J'ᵒᵖ) (a : T ⟶ T') (b : G.obj T.2), j₂ T' (mp G a.2 b) = mp E a (j₂ T b) := by
    intro T T' a b
    refine (hi2 _ _).trans (Eq.trans ?_ (congrArg (mp E a) (hi2 (T.1.unop, T.2.unop) b).symm))
    exact m₂.naturality a b
  let n₁ : CoefMap (RingHom.id K) F E :=
    { G := CategoryTheory.Prod.fst Jᵒᵖ J'ᵒᵖ
      α := fun T ↦ (j₁ T).toRingHom
      naturality := fun {T T'} a b ↦ nat₁ T T' a b
      smul := fun T r b ↦ map_smul (j₁ T) r b }
  let n₂ : CoefMap (RingHom.id K) G E :=
    { G := CategoryTheory.Prod.snd Jᵒᵖ J'ᵒᵖ
      α := fun T ↦ (j₂ T).toRingHom
      naturality := fun {T T'} a b ↦ nat₂ T T' a b
      smul := fun T r b ↦ map_smul (j₂ T) r b }
  let rU := CoefMap.restrict (OAff X.hom) hU.functor.op
  let rV := CoefMap.restrict (OAff Y.hom) hV.functor.op
  let rE := CoefMap.restrict (OAff (X ⊗ Y).hom) Ψ
  have key₁ : ∀ a, rE.pull1 (pO1 (fst X Y) a) = n₁.pull1 (rU.pull1 a) := fun a ↦ by
    refine (restrict_pullHO1 Ψ B₁ hle₁ (ovw (fst X Y)) a).trans ?_
    refine (CoefMap.pullCohomologyOne_eq_of_natTrans m₁ (rU.comp n₁) (𝟙 B₁) (fun T b ↦ ?_) a).trans
      (CoefMap.pullCohomologyOne_comp rU n₁ a)
    refine (congrArg ((rU.comp n₁).α T) (mp_id (OAff X.hom) _ b)).trans ?_
    exact hi1 (T.1.unop, T.2.unop) b
  have key₂ : ∀ a, rE.pull1 (pO1 (snd X Y) a) = n₂.pull1 (rV.pull1 a) := fun a ↦ by
    refine (restrict_pullHO1 Ψ B₂ hle₂ (ovw (snd X Y)) a).trans ?_
    refine (CoefMap.pullCohomologyOne_eq_of_natTrans m₂ (rV.comp n₂) (𝟙 B₂) (fun T b ↦ ?_) a).trans
      (CoefMap.pullCohomologyOne_comp rV n₂ a)
    refine (congrArg ((rV.comp n₂).α T) (mp_id (OAff Y.hom) _ b)).trans ?_
    exact hi2 (T.1.unop, T.2.unop) b
  have hbU : Function.Bijective rU.pull1 := GlobalTheory.T.cech_pull_one_bijective_lattice_cover K X.left X.hom J U hU hUi hUc
  have hbV : Function.Bijective rV.pull1 := GlobalTheory.T.cech_pull_one_bijective_lattice_cover K Y.left Y.hom J' V hV hVi hVc
  choose x' hx' using fun i ↦ H1.mk_surjective F (rU.pull1 (x i))
  choose y' hy' using fun i ↦ H1.mk_surjective G (rV.pull1 (y i))
  have hz : H2.mk E (∑ i, cupZ E (n₁.pullbackOneCocycle (x' i)) (n₂.pullbackOneCocycle (y' i))) = 0 := by
    have h0 := congrArg rE.pull2 hsum

    rw [map_zero, map_sum] at h0

    rw [map_sum]
    refine Eq.trans (Finset.sum_congr rfl fun i _ ↦ ?_) h0
    rw [CoefMap.pullCohomologyTwo_cup, key₁, key₂, ← hx', ← hy']
    rfl
  obtain ⟨f, hf⟩ := H2.mk_eq_zero.1 hz
  have e := _root_.GlobalTheory.CatCoh.KunnethOne.sum_tmul_eq_zero_of_cup K Jᵒᵖ J'ᵒᵖ F G E j₁ j₂ nat₁ nat₂ (fun T ↦ hbij (T.1.unop, T.2.unop)) n x' y' f
    (fun T T' T'' a b ↦ by
      rw [hf]
      simp only [Submodule.coe_sum, Finset.sum_apply]
      rfl)
  simp only [hx', hy'] at e
  let eU := LinearEquiv.ofBijective rU.pull1 hbU
  let eV := LinearEquiv.ofBijective rV.pull1 hbV
  apply (TensorProduct.congr eU eV).injective

  rw [map_sum, map_zero]
  exact e

end GlobalTheory.Kunneth
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KunnethCupTensorInjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyWedgeNoPrimitiveH2 =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyWedgeNoPrimitiveH2", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyH1AxesPrimitiveRankStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCohomologyStructureSheafIsoStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechCohomologyTrivialBundleAbelianStatement\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommAlgFunctorCohomologyCupAnticomm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorSquareOfSymmetricTensorRelationsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KunnethCupTensorInjective\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.StructureSheafCohomologyPullbackCompCupIdStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.AbLaw GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.AbCoh

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.AbCoh.WedgeSq

theorem exists_fin_sum_tmul {K V W : Type} [CommRing K] [AddCommGroup V] [Module K V] [AddCommGroup W]
    [Module K W] (t : V ⊗[K] W) : ∃ (n : ℕ) (x : Fin n → V) (y : Fin n → W), t = ∑ i, x i ⊗ₜ[K] y i := by
  induction t using TensorProduct.induction_on with
  | zero => exact ⟨0, Fin.elim0, Fin.elim0, by simp⟩
  | tmul a b => exact ⟨1, fun _ ↦ a, fun _ ↦ b, by simp⟩
  | add s t hs ht =>
    obtain ⟨n, x, y, rfl⟩ := hs
    obtain ⟨m, x', y', rfl⟩ := ht
    exact ⟨n + m, Fin.append x x', Fin.append y y', by simp [Fin.sum_univ_add]⟩

theorem exists_fin_affine_cover {R : Type} [CommRing R] {X : Scheme.{0}} (s : X ⟶ Sp R) [QuasiCompact s] :
    ∃ (n : ℕ) (D : Fin n → X.Opens), (∀ i, IsAffineOpen (D i)) ∧ ⨆ i, D i = ⊤ := by
  have : CompactSpace X := QuasiCompact.compactSpace_of_compactSpace s
  obtain ⟨S, hS, e⟩ := (isCompact_iff_finite_and_eq_biUnion_affineOpens (U := (⊤ : X.Opens))).1 isCompact_univ
  have := hS.fintype
  let q := (Fintype.equivFin S).symm
  refine ⟨_, fun i ↦ (q i).1.1, fun i ↦ (q i).1.2, ?_⟩
  rw [e]
  apply le_antisymm
  · exact iSup_le fun i ↦ le_iSup₂_of_le (q i).1 (q i).2 le_rfl
  · refine iSup₂_le fun U hU ↦ ?_
    obtain ⟨i, hi⟩ := q.surjective ⟨U, hU⟩
    exact le_iSup_of_le i (by simp only [hi]; exact le_rfl)

variable {K : Type} [Field K]

theorem overPullbackStructureSheaf_cohomology_cup {Y A : Over (Sp K)} (f : Y ⟶ A) (a b : HO1 A.hom) :
    structureSheafH2Pullback f (cup (OAff A.hom) a b) = cup (OAff Y.hom) (pO1 f a) (pO1 f b) :=
  ((GlobalTheory.T.structureSheafCohomology_pullback_comp_cup_id).2.1 K K A.left Y.left A.hom Y.hom (RingHom.id K) f.left (ovw f)).1 a b

variable (A : Over (Sp K)) [GrpObj A]

abbrev mixed : HO1 A.hom →ₗ[K] HO1 A.hom →ₗ[K] HO2 (A ⊗ A).hom :=
  (cup (OAff (A ⊗ A).hom)).compl₁₂ (pO1 (fst A A)) (pO1 (snd A A))

theorem defect_eq (hp : StructureSheafH1Primitive A) (t : HO1 A.hom ⊗[K] HO1 A.hom) :
    structureSheafH2Pullback μ[A] (TensorProduct.lift (cup (OAff A.hom)) t) - structureSheafH2Pullback (fst A A) (TensorProduct.lift (cup (OAff A.hom)) t)
      - structureSheafH2Pullback (snd A A) (TensorProduct.lift (cup (OAff A.hom)) t)
      = TensorProduct.lift (mixed A) (t - TensorProduct.comm K _ _ t) := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | tmul a b =>
    simp only [TensorProduct.lift.tmul, TensorProduct.comm_tmul, map_sub, overPullbackStructureSheaf_cohomology_cup, hp a, hp b, map_add (f := _),
      LinearMap.add_apply, LinearMap.compl₁₂_apply]
    rw [_root_.GlobalTheory.AbCoh.cup_anticomm K _ (OAff (A ⊗ A).hom) (pO1 (snd A A) a) (pO1 (fst A A) b)]
    abel
  | add s t hs ht =>
    have e : s + t - TensorProduct.comm K _ _ (s + t)
        = (s - TensorProduct.comm K _ _ s) + (t - TensorProduct.comm K _ _ t) := by
      rw [map_add (f := _)]; abel
    rw [e, map_add (TensorProduct.lift (mixed A)), ← hs, ← ht]
    simp only [map_add (f := _)]
    abel

theorem mixed_injective [IsSeparated A.hom] [QuasiCompact A.hom] (u : HO1 A.hom ⊗[K] HO1 A.hom)
    (hu : TensorProduct.lift (mixed A) u = 0) : u = 0 := by
  obtain ⟨n, x, y, rfl⟩ := exists_fin_sum_tmul u
  refine _root_.GlobalTheory.Kunneth.cup_tmul_injective K A A inferInstance inferInstance inferInstance inferInstance n x y ?_

  simpa [map_sum] using hu

theorem symm_of_prim [IsSeparated A.hom] [QuasiCompact A.hom] (hp : StructureSheafH1Primitive A) (t : HO1 A.hom ⊗[K] HO1 A.hom)
    (ht : structureSheafH2Pullback μ[A] (TensorProduct.lift (cup (OAff A.hom)) t)
      = structureSheafH2Pullback (fst A A) (TensorProduct.lift (cup (OAff A.hom)) t)
        + structureSheafH2Pullback (snd A A) (TensorProduct.lift (cup (OAff A.hom)) t)) :
    TensorProduct.comm K _ _ t = t := by
  have h0 := defect_eq A hp t
  rw [ht, add_sub_cancel_left, sub_self] at h0
  exact (sub_eq_zero.1 (mixed_injective A _ h0.symm)).symm

end GlobalTheory.AbCoh.WedgeSq


open GlobalTheory.AbCoh.WedgeSq in
theorem GlobalTheory.AbCoh.wedgeO_noPrimO2 : ∀ (K : Type) [Field K] [IsAlgClosed K] (A : Over (Sp K)) [GrpObj A] (g : ℕ),
    IsAbelianScheme A → SmoothOfRelativeDimension g A.hom →
    GlobalTheory.AbCoh.WedgeO (OAff A.hom) ∧ GlobalTheory.AbCoh.NoPrimitiveStructureSheafH2 A := by
  intro K _ _ A _ g hab hsm
  haveI : IsProper A.hom := hab.proper
  haveI hsep : IsSeparated A.hom := inferInstance
  haveI hqc : QuasiCompact A.hom := inferInstance
  obtain ⟨-, hprim, -⟩ := GlobalTheory.T.abelian_variety_h1_axes_primitive_rank K A g hab hsm
  obtain ⟨n, D, hD, hcov⟩ := GlobalTheory.AbCoh.WedgeSq.exists_fin_affine_cover A.hom
  obtain ⟨⟨e1⟩, ⟨e2⟩⟩ := GlobalTheory.T.cech_cohomology_structure_sheaf_iso K A.left A.hom (Fin n) D hsep hD hcov
  obtain ⟨hfin, h1, h2⟩ := GlobalTheory.T.cech_cohomology_trivial_bundle_abelian K A g hab hsm (Fin n) D hD hcov
  haveI := hfin 1
  haveI := hfin 2
  haveI : Module.Finite K (HO1 A.hom) := Module.Finite.equiv e1.symm
  haveI : Module.Finite K (HO2 A.hom) := Module.Finite.equiv e2.symm
  have hdim : Module.finrank K (HO2 A.hom) ≤ (Module.finrank K (HO1 A.hom)).choose 2 := by
    rw [e2.finrank_eq, e1.finrank_eq, h1]; exact h2
  have hrel : ∀ t : HO1 A.hom ⊗[K] HO1 A.hom, TensorProduct.lift (cup (OAff A.hom)) t = 0 →
      TensorProduct.comm K _ _ t = t := fun t ht ↦ symm_of_prim A hprim t (by simp [ht])
  obtain ⟨hw, hsurj, hsym⟩ := _root_.GlobalTheory.exteriorSq_of_symm_relations K (HO1 A.hom) (HO2 A.hom) (cup (OAff A.hom)) hdim hrel
  refine ⟨hw, fun z hz ↦ ?_⟩
  obtain ⟨t, rfl⟩ := hsurj z
  exact hsym t (symm_of_prim A hprim t hz)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyWedgeNoPrimitiveH2 =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyWedgeNoPrimitiveH2Statement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyWedgeNoPrimitiveH2Statement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyWedgeNoPrimitiveH2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.AbLaw GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.AbCoh
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyWedgeNoPrimitiveH2Statement =====
