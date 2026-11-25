module

public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Basis.Basic
public import Mathlib.LinearAlgebra.Basis.VectorSpace
public import Mathlib.LinearAlgebra.Dimension.StrongRankCondition
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Algebra.Field.Defs
public import Mathlib.Algebra.Ring.Hom.Defs
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Over
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero
public import Development.AbelianVarietyTheory.Definitions.Divisors.KeyPBIff
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal
public import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.ExistsIsLocalModelOfIntegral
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIsLieBasisBaseChange
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsLieBasis
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
public import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.ExistsPrincipalPolarizationSectionNonzeroNearTwoStatement
public import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.LieFreeNearTwoPrimesStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarizationSectionFirstPower
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsUniqueThetaConst
public import Development.AbelianVarietyTheory.Definitions.Uniformization.PsiScal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.HasArcDataIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.JetFiltrationSectionCombination
public import Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsUniqueSecIsFnAt
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ValRConstHom
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsJetsChangeSectionBasis
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold
public import Development.AbelianVarietyTheory.Definitions.Uniformization.SmulOneSecEqZeroIff
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.BaseOver
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SpanEqTopOfFunctionals
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExistsGenOfSection
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThetaPt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThetaVV
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsIsGenOfInvariant
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AbelianSectionsIrreducibleThetaGroup
public import Development.AbelianVarietyTheory.Proofs.ThetaFamilyOrigin.IsThetaPtOverMove
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTwistSections
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumBaseChangeThetaJets
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
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
import Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective
import Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt
import Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen
import Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.MemNonzeroLocusOfPull
import Development.AbelianVarietyTheory.Statements.FundamentalDomains.ExistsIsAddFundamentalDomain
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaCore
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.TangentLinearity.ConstPullback
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsIffCommIsOfAndLiftSubsingleton
import Development.AbelianVarietyTheory.Statements.TorsionEndomorphisms.ExistsGeneratorOfIsField
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.HolomorphicHomDetermined
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.GenProd
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsAddEquivOfSurjectiveOfKerIff
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ThetaGrpActsLinearly
import Mathlib.Algebra.Order.Star.Int
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LocGenOfTrivial
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralCoefficients, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumFibreOfGrpPullback, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumPolarisedAbelianLocalDomain, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsScalarMatrixBetweenKeyData, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaConstantsJetsLocalDomain, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLinearSectionValueAbelianPower, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SectionsLineBundlePowSeparateFirstJetsOrigin, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulOfTwistedPullbacksSameBundle, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulOfTwistedPullbacksSameBundleStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedPullbackNonvanishingOfPulledSection, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedPullbackNonvanishingOfPulledSectionStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemNonzeroLocusOfIsTwistPull, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslateThetaPullbackNeZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpanThetaTranslatesTorsionEqTop, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsFirstJetsLinearIndependent, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsJetsBaseChangePolarisedDatum, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKeyValueTwoFibresLocalRing, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKeyValueTwoFibresLocalRingStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralCoefficients =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralCoefficients", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Basis.Basic\npublic import Mathlib.LinearAlgebra.Basis.VectorSpace\npublic import Mathlib.LinearAlgebra.Dimension.StrongRankCondition\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.NonzeroDeterminantIntegrality

open Matrix

theorem exists_det_ne_zero {K I Λ : Type} [Field K] [Fintype Λ] [DecidableEq Λ] (v : I → Λ → K)
    (h : ∀ c : Λ → K, (∀ i, ∑ l, c l * v i l = 0) → c = 0) :
    ∃ f : Λ → I, (Matrix.of fun a l => v (f a) l).det ≠ 0 := by
  have hspan : Submodule.span K (Set.range v) = ⊤ := by
    by_contra hne
    obtain ⟨φ, hφ, hle⟩ := Submodule.exists_le_ker_of_lt_top _ (lt_top_iff_ne_top.mpr hne)
    have hexp : ∀ x : Λ → K, φ x = ∑ l, φ (Pi.single l 1) * x l := by
      intro x
      conv_lhs => rw [pi_eq_sum_univ' x]

      rw [map_sum]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [map_smul, smul_eq_mul, mul_comm]
    have hc := h (fun l => φ (Pi.single l 1)) (fun i => by
      rw [← hexp]
      exact hle (Submodule.subset_span ⟨i, rfl⟩))
    apply hφ
    refine LinearMap.ext fun x => ?_
    rw [hexp]
    refine Finset.sum_eq_zero fun l _ => ?_
    have := congrFun hc l
    simp only [Pi.zero_apply] at this
    rw [this, zero_mul]
  obtain ⟨κ, a, -, hsp, hli⟩ := exists_linearIndependent' K v
  let b : Module.Basis κ K (Λ → K) := Module.Basis.mk hli (by rw [hsp, hspan])
  let e : Λ ≃ κ := (Pi.basisFun K Λ).indexEquiv b
  refine ⟨fun l => a (e l), ?_⟩
  have hli' : LinearIndependent K (Matrix.of fun x l => v (a (e x)) l).row :=
    hli.comp e e.injective
  have := Matrix.linearIndependent_rows_iff_isUnit.mp hli'
  exact ((Matrix.isUnit_iff_isUnit_det _).mp this).ne_zero

theorem integral_coefficients : ∀ (W : Type) [CommRing W] [IsDomain W] (K₀ K₁ : Type) [Field K₀] [Field K₁]
    (i₀ : W →+* K₀) (i₁ : W →+* K₁), Function.Injective i₀ → (∀ a : W, i₁ a ≠ 0 → IsUnit a) →
    ∀ (I Λ : Type) [Fintype Λ] (u : I → Λ → W),
    (∀ c : Λ → K₁, (∀ i : I, ∑ l : Λ, c l * i₁ (u i l) = 0) → c = 0) →
    ∀ (w : I → W) (z : Λ → K₀), (∀ i : I, i₀ (w i) = ∑ l : Λ, z l * i₀ (u i l)) →
    ∃ z₀ : Λ → W, (∀ l : Λ, i₀ (z₀ l) = z l) ∧ ∀ i : I, w i = ∑ l : Λ, z₀ l * u i l := by
  intro W _ _ K₀ K₁ _ _ i₀ i₁ hinj hunit I Λ _ u hu w z hz
  classical
  obtain ⟨f, hf⟩ := exists_det_ne_zero (fun i l => i₁ (u i l)) hu
  let M : Matrix Λ Λ W := Matrix.of fun a l => u (f a) l
  have hdet : IsUnit M.det := by
    apply hunit
    rw [RingHom.map_det]
    exact hf
  let z₀ : Λ → W := M⁻¹ *ᵥ (fun a => w (f a))
  have hM : M *ᵥ z₀ = fun a => w (f a) := by
    simp only [z₀]
    rw [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hdet, Matrix.one_mulVec]
  have hdet₀ : IsUnit (i₀.mapMatrix M).det := by
    rw [← RingHom.map_det]
    exact hdet.map i₀
  have key : (fun l => i₀ (z₀ l)) = z := by
    apply Matrix.mulVec_injective_of_isUnit ((Matrix.isUnit_iff_isUnit_det _).mpr hdet₀)
    funext a
    have h1 := congrArg i₀ (congrFun hM a)
    rw [hz] at h1

    simp only [Matrix.mulVec, dotProduct, map_sum, map_mul] at h1 ⊢
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply]
    rw [h1]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [mul_comm]
    rfl
  refine ⟨z₀, fun l => congrFun key l, fun i => hinj ?_⟩

  rw [hz, map_sum]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [map_mul, ← congrFun key l]

end GlobalTheory.NonzeroDeterminantIntegrality
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralCoefficients =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumFibreOfGrpPullback =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumFibreOfGrpPullback", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.KeyPBIff\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal\npublic import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.ExistsIsLocalModelOfIntegral\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIsLieBasisBaseChange\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.MemNonzeroLocusOfPull\nimport Development.AbelianVarietyTheory.Statements.FundamentalDomains.ExistsIsAddFundamentalDomain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaCore\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.MBLow

theorem exists_keyAtMap_of_isGrpPullback : ∀ (R K : Type) [CommRing R] [Field K] (f : R →+* K) (y : KeyIn R)
    (P : PolAV (Sp K)) (φ : P.A.left ⟶ y.P.A.left) (hp : 1 ≤ P.g) (rig : LB.Gen (P.L.pull (eSec P.A)))
    (hr : rig.IsGen), P.g = y.P.g → IsGrpPullback P.A y.P.A (spMap f) φ → LBIso P.L (y.P.L.pull φ) →
    ∃ th hth v hv, KeyAtMap ⟨P, hp, rig, hr, th, hth, v, hv⟩ y f φ := by
  intro R K _ _ f y P φ hp rig hr hg h hI
  obtain ⟨w, hw0⟩ := hI
  have hw := (isGen_iff w).1 hw0
  have he : eSec P.A ≫ φ = spMap f ≫ eSec y.P.A := PolBaseChange.eSec_comm h
  have := P.isAb.comm
  have := y.P.isAb.comm
  have := y.P.isAb.smooth
  obtain ⟨w', g', m'⟩ := KeyPow.exists_rescale y.P.isLB P.isLB hw (p := P.A.hom) (Over.w η[P.A]) he hr y.rig_gen
  obtain ⟨th', hth'⟩ := sec_pull_down g' y.P.isLB P.isLB y.th
  have := P.isAb.comm
  obtain ⟨v', hb', hv'⟩ := exists_isLieBasis_baseChange R K f y.P.A P.A φ h y.P.isAb.smooth y.P.g y.v y.basis
  have hb : ∀ {n : ℕ} (e : n = y.P.g), IsLieBasis fun i : Fin n => v' (i.cast e) := fun e => by
    subst e
    exact hb'
  refine ⟨th', SectionBaseChange.fibre_nonzero_of_pull P.isLB hth' h.1 y.th_ne, _, hb hg, he, w', hg,
    Chart.dualMapR f, h, (isGen_iff _).2 g',
    (maps_iff w' _ (fun _ => eSec y.P.A) _ rig y.rig _ _ (rigPull_le φ _ he y.P.L) (fun _ => rfl)).2 m',
    KeyPow.appLE_eq_of_stalk _ y.th th' (hth' _ (𝟙 _)), fun a => ?_, ?_, fun i => hv' _⟩
  · ext <;> simp [Chart.dualMapR, TrivSqZeroExt.algebraMap_eq_inl]
  · ext <;> simp [Chart.dualMapR]

end GlobalTheory.MBLow
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumFibreOfGrpPullback =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumPolarisedAbelianLocalDomain =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumPolarisedAbelianLocalDomain", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsLieBasis\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\npublic import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.ExistsPrincipalPolarizationSectionNonzeroNearTwoStatement\npublic import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.LieFreeNearTwoPrimesStatement\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIsLieBasisBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.TangentLinearity.ConstPullback\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.MBLow

theorem exists_keyIn_local : ∀ (W : Type) [CommRing W] [IsDomain W] [IsNoetherianRing W] [IsLocalRing W]
    (P : PolAV (Sp W)), 1 ≤ P.g → ∃ y : KeyIn W, y.P = P := by
  intro W _ _ _ _ P hg
  have hL := GlobalTheory.abelianSchemeLaws_all
  let m : PrimeSpectrum W := IsLocalRing.closedPoint W
  obtain ⟨th, a, ha, -, hth⟩ := GlobalTheory.T.exists_principalPolarization_section_nonzero_near_two_primes hL.1 hL.2 W P m m
  have c : IsCommMonObj P.A := P.isAb.comm
  obtain ⟨b, hb, -, v, hv⟩ := GlobalTheory.T.exists_lieBasis_away_avoiding_two_primes W P.A P.g P.smoothDim m m
  have hbu : IsUnit b := (IsLocalRing.mem_maximalIdeal b).not.mp hb |> not_not.mp
  let g : Localization.Away b →+* W := IsLocalization.Away.lift (g := RingHom.id W) b hbu
  have hgf : g.comp (algebraMap W (Localization.Away b)) = RingHom.id W := by
    ext x; simp [g]
  have h₁ := isGrpPullback_pullback P.A (spMap (algebraMap W (Localization.Away b)))
  have hA₁ := Out.TLinPf.isAb_pullback (spMap (algebraMap W (Localization.Away b))) P.A P.isAb
  have c₁ := hA₁.comm
  have e : spMap g ≫ spMap (algebraMap W (Localization.Away b)) = 𝟙 (Sp W) := by
    rw [← Spec.map_comp, ← CommRingCat.ofHom_comp, hgf, CommRingCat.ofHom_id, Spec.map_id]
  have w₁ : 𝟙 P.A.left ≫ P.A.hom = (P.A.hom ≫ spMap g) ≫ spMap (algebraMap W (Localization.Away b)) := by
    rw [Category.assoc, e]; simp
  haveI : IsMonHom (Iso.refl P.A).hom := inferInstanceAs (IsMonHom (𝟙 P.A))
  have hid : IsGrpPullback P.A P.A (𝟙 _) (𝟙 P.A.left) := isGrpPullback_of_iso (Iso.refl P.A)
  have h₂ : IsGrpPullback P.A _ (spMap g) (h₁.1.lift _ _ w₁) :=
    IsGrpPullback.cancel h₁ (hid.congr e.symm (h₁.1.lift_fst _ _ w₁).symm) (h₁.1.lift_snd _ _ w₁)
  obtain ⟨v', hb', -⟩ := exists_isLieBasis_baseChange _ W g _ P.A _ h₂ hA₁.smooth P.g v hv
  obtain ⟨rig, hr⟩ := P.rigid
  refine ⟨⟨P, hg, rig, hr, th, fun s => hth s fun h => ?_, v', hb'⟩, rfl⟩
  have hs : s.asIdeal ≤ IsLocalRing.maximalIdeal W := IsLocalRing.le_maximalIdeal s.isPrime.ne_top
  exact ha (hs h)

end GlobalTheory.MBLow
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumPolarisedAbelianLocalDomain =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsScalarMatrixBetweenKeyData =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsScalarMatrixBetweenKeyData", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsLieBasis\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaCore\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.MBLow.TwoData

theorem exists_scalar_matrix : ∀ (K : Type) [Field K] (P : PolAV (Sp K)) (th th' : P.L.Sec) (v v' : Fin P.g → (epsR K ⟶ P.A)), (∀ s : Sp K, ∃ z : P.A.left, P.A.hom z = s ∧ z ∈ Out.nonzeroLocus th) → (∀ s : Sp K, ∃ z : P.A.left, P.A.hom z = s ∧ z ∈ Out.nonzeroLocus th') → IsLieBasis v → IsLieBasis v' → ∃ (a : K) (M : Matrix (Fin P.g) (Fin P.g) K), a ≠ 0 ∧ (∀ i, LB.Sec.f th' i = constFn P.A.hom _ a * LB.Sec.f th i) ∧ ∀ i, IsLieComb (M i) v (v' i) := by
  intro K _ P th th' v v' hth hth' hv hv'
  obtain ⟨b, hb⟩ := ReciprocityTheory.ChartRestriction.G.Geo.Tor.principalPolarisation_exists_unique_section GlobalTheory.abelianSchemeLaws_all.2.secTwist P
  obtain ⟨a, ha, -⟩ := hb th
  obtain ⟨a', ha', -⟩ := hb th'
  choose M hM using fun i => (hv.2 _ (hv'.1 i)).exists
  have hne : ∀ (s : P.L.Sec) (c : K), (∀ s' : Sp K, ∃ z : P.A.left, P.A.hom z = s' ∧ z ∈ Out.nonzeroLocus s) →
      (∀ i, s.f i = Geo.Tor.constFn P.A.hom _ c * b.f i) → c ≠ 0 := by
    rintro s c hs hc rfl
    obtain ⟨z, -, hz⟩ := hs (default : PrimeSpectrum K)
    obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.1 hz
    rw [hc i, Geo.Tor.constFn, map_zero, map_zero, zero_mul, Scheme.basicOpen_zero] at hi
    exact hi
  have h0 := hne th a hth ha
  have h0' := hne th' a' hth' ha'
  refine ⟨a' * a⁻¹, M, mul_ne_zero h0' (inv_ne_zero h0), fun i => ?_, hM⟩
  rw [ha' i, ha i, ← _root_.mul_assoc, Geo.Tor.constFn, Geo.Tor.constFn, Geo.Tor.constFn, ← map_mul, ← map_mul, inv_mul_cancel_right₀ h0]

end GlobalTheory.MBLow.TwoData
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsScalarMatrixBetweenKeyData =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaConstantsJetsLocalDomain =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaConstantsJetsLocalDomain", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsIffCommIsOfAndLiftSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarizationSectionFirstPower\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsUniqueThetaConst\nimport Development.AbelianVarietyTheory.Statements.TorsionEndomorphisms.ExistsGeneratorOfIsField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.MBLow.JetEx

open TrivSqZeroExt

variable {W : Type} [CommRing W]

theorem dual_isLocalRing [IsLocalRing W] : IsLocalRing (DualNumber W) := by
  refine IsLocalRing.of_isUnit_or_isUnit_one_sub_self fun a => ?_
  simp only [TrivSqZeroExt.isUnit_iff_isUnit_fst, TrivSqZeroExt.fst_sub, TrivSqZeroExt.fst_one]
  exact IsLocalRing.isUnit_or_isUnit_one_sub_self a.fst

theorem fstHom_isLocalHom : IsLocalHom (TrivSqZeroExt.fstHom W W W).toRingHom :=
  ⟨fun a ha => TrivSqZeroExt.isUnit_iff_isUnit_fst.2 ha⟩

abbrev red (W : Type) [CommRing W] : Sp W ⟶ Sp (DualNumber W) := spMap (TrivSqZeroExt.fstHom W W W).toRingHom

theorem red_closedPoint [IsLocalRing W] :
    letI := dual_isLocalRing (W := W)
    (red W).base (IsLocalRing.closedPoint W) = IsLocalRing.closedPoint (DualNumber W) := by
  letI := dual_isLocalRing (W := W)
  haveI := fstHom_isLocalHom (W := W)
  rw [Spec.map_base]
  exact IsLocalRing.comap_closedPoint _

theorem top_le_of_red [IsLocalRing W] {X : Scheme.{0}} (y : Sp (DualNumber W) ⟶ X) (U : X.Opens)
    (h : ⊤ ≤ (red W ≫ y) ⁻¹ᵁ U) : ⊤ ≤ y ⁻¹ᵁ U := by
  letI := dual_isLocalRing (W := W)
  rw [Scheme.preimage_eq_top_of_closedPoint_mem y (U := U) ?_]
  have := h (show IsLocalRing.closedPoint W ∈ (⊤ : (Sp W).Opens) from trivial)
  rw [← red_closedPoint]
  exact this

theorem valR_fst {X : Scheme.{0}} (y : Sp (DualNumber W) ⟶ X) (U : X.Opens) (h : ⊤ ≤ y ⁻¹ᵁ U) (f : Γ(X, U)) :
    (valR y U f).fst = valR (red W ≫ y) U f := by
  have h' : ⊤ ≤ (red W ≫ y) ⁻¹ᵁ U := by
    rw [Scheme.Hom.comp_preimage]; exact fun p _ => h trivial
  unfold valR
  rw [dif_pos h, dif_pos h', ← Scheme.Hom.appLE_comp_appLE (red W) y U ⊤ ⊤ h le_top]
  have n := congrArg (fun q => q.hom ((y.appLE U ⊤ h).hom f))
    (Scheme.ΓSpecIso_naturality (CommRingCat.ofHom (TrivSqZeroExt.fstHom W W W).toRingHom))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at n
  rw [CommRingCat.hom_comp, RingHom.comp_apply]
  rw [show (red W).appLE ⊤ ⊤ le_top = (red W).appTop from (Scheme.Hom.app_eq_appLE _).symm]
  exact n.symm

end GlobalTheory.MBLow.JetEx

namespace GlobalTheory.MBLow.JetEx

open TrivSqZeroExt

variable {W : Type} [CommRing W]

theorem epsLift_fst {A : Over (Sp W)} [GrpObj A] (u : epsR W ⟶ A) :
    epsLift u ≫ (fst (baseOver (Sp W)) A).left = (epsR W).hom := by
  rw [epsLift, ← Over.comp_left, lift_fst]; rfl

theorem epsLift_snd {A : Over (Sp W)} [GrpObj A] (u : epsR W ⟶ A) :
    epsLift u ≫ (snd (baseOver (Sp W)) A).left = u.left := by
  rw [epsLift, ← Over.comp_left, lift_snd]

theorem red_epsLift {A : Over (Sp W)} [GrpObj A] (v v' : epsR W ⟶ A) (hv : IsTangent v) (hv' : IsTangent v') :
    red W ≫ epsLift v = red W ≫ epsLift v' := by
  apply pullback.hom_ext
  · rw [Category.assoc, Category.assoc, ← Over.fst_left, epsLift_fst, epsLift_fst]
  · rw [Category.assoc, Category.assoc, ← Over.snd_left, epsLift_snd, epsLift_snd]
    exact hv.trans hv'.symm

theorem red_epsLift_snd {A : Over (Sp W)} [GrpObj A] (v : epsR W ⟶ A) (hv : IsTangent v) :
    (red W ≫ epsLift v) ≫ (snd (baseOver (Sp W)) A).left = 𝟙 (Sp W) ≫ eSec A := by
  rw [Category.assoc, epsLift_snd, Category.id_comp]
  exact hv

open Classical in
theorem exists_jets [IsLocalRing W] (P : PolAV (Sp W)) (ρ : LB.Gen (P.L.pull (eSec P.A))) (k : ℕ) {I : Type}
    (t : I → LB.Sec (LPow P.A P.L (k : ℤ) (Over.mk (𝟙 (Sp W))))) {g : ℕ} (v : Fin g → (epsR W ⟶ P.A))
    (hv : ∀ j, IsTangent (v j)) :
    ∃ (i₀ : P.L.ι) (c : Fin g → W) (ϑ : I → W) (J : I → Fin g → W),
      ⊤ ≤ (𝟙 (Sp W) ≫ eSec P.A) ⁻¹ᵁ P.L.U i₀ ∧
      ∀ i j, valR (epsLift (v j)) ((LPow P.A P.L (k : ℤ) (Over.mk (𝟙 (Sp W)))).U fun _ => i₀) ((t i).f fun _ => i₀) =
        TrivSqZeroExt.inl (valR (𝟙 (Sp W)) ((P.L.pull (eSec P.A)).U fun _ => i₀) (ρ.s fun _ => i₀).val ^ k) *
          (TrivSqZeroExt.inl (ϑ i) + TrivSqZeroExt.inr (J i j + c j * ϑ i)) := by
  have hL := P.isLB
  obtain ⟨i₀, hi₀⟩ := exists_chart hL ((eSec P.A : Sp W ⟶ P.A.left).base (IsLocalRing.closedPoint W))
  have htop : ⊤ ≤ (𝟙 (Sp W) ≫ eSec P.A) ⁻¹ᵁ P.L.U i₀ := by
    rw [Category.id_comp, Scheme.preimage_eq_top_of_closedPoint_mem (eSec P.A : Sp W ⟶ P.A.left) hi₀]
  have hρt : ⊤ ≤ (𝟙 (Sp W)) ⁻¹ᵁ ((P.L.pull (eSec P.A)).U fun _ => i₀) := fun p _ =>
    Set.mem_iInter.2 fun _ => by
      have := htop (show p ∈ (⊤ : (Sp W).Opens) from trivial)
      exact this
  set u := valR (𝟙 (Sp W)) ((P.L.pull (eSec P.A)).U fun _ => i₀) (ρ.s fun _ => i₀).val with hu_def
  have hu : IsUnit u := by
    rw [hu_def, valR, dif_pos hρt]
    exact ((ρ.s _).isUnit.map _).map _
  set ui := Ring.inverse (u ^ k)
  have hui : u ^ k * ui = 1 := Ring.mul_inverse_cancel _ (hu.pow k)
  have hch : ∀ j, ⊤ ≤ (epsLift (v j)) ⁻¹ᵁ ((LPow P.A P.L (k : ℤ) (Over.mk (𝟙 (Sp W)))).U fun _ => i₀) := fun j =>
    top_le_of_red _ _ fun p _ => Set.mem_iInter.2 fun _ => by
      have := htop (show p ∈ (⊤ : (Sp W).Opens) from trivial)
      rw [← red_epsLift_snd (v j) (hv j)] at this
      exact this
  refine ⟨i₀, 0, fun i => if hn : Nonempty (Fin g) then
      ui * (valR (epsLift (v hn.some)) ((LPow P.A P.L (k : ℤ) (Over.mk (𝟙 (Sp W)))).U fun _ => i₀)
        ((t i).f fun _ => i₀)).fst else 0,
    fun i j => ui * (valR (epsLift (v j)) ((LPow P.A P.L (k : ℤ) (Over.mk (𝟙 (Sp W)))).U fun _ => i₀)
        ((t i).f fun _ => i₀)).snd, htop, fun i j => ?_⟩
  have hn : Nonempty (Fin g) := ⟨j⟩
  simp only [dif_pos hn]
  have hf : (valR (epsLift (v hn.some)) ((LPow P.A P.L (k : ℤ) (Over.mk (𝟙 (Sp W)))).U fun _ => i₀)
        ((t i).f fun _ => i₀)).fst =
      (valR (epsLift (v j)) ((LPow P.A P.L (k : ℤ) (Over.mk (𝟙 (Sp W)))).U fun _ => i₀) ((t i).f fun _ => i₀)).fst := by
    rw [valR_fst _ _ (hch _), valR_fst _ _ (hch _), red_epsLift _ _ (hv _) (hv j)]
  rw [hf]
  ext
  · simp only [TrivSqZeroExt.fst_mul, TrivSqZeroExt.fst_inl, TrivSqZeroExt.fst_add, TrivSqZeroExt.fst_inr, add_zero]
    rw [← _root_.mul_assoc, hui, _root_.one_mul]
  · simp only [TrivSqZeroExt.snd_mul, TrivSqZeroExt.fst_inl, TrivSqZeroExt.snd_inl, TrivSqZeroExt.fst_add,
      TrivSqZeroExt.snd_add, TrivSqZeroExt.fst_inr, TrivSqZeroExt.snd_inr, add_zero, Pi.zero_apply, zero_mul,
      smul_eq_mul, MulOpposite.smul_eq_mul_unop, zero_add, MulOpposite.unop_op]
    rw [← _root_.mul_assoc, hui, _root_.one_mul]

end GlobalTheory.MBLow.JetEx

namespace GlobalTheory.MBLow.JetEx

variable {W : Type} [CommRing W]

theorem exists_symLift_tr [IsNoetherianRing W] [IsLocalRing W] (P : PolAV (Sp W)) (ρ : LB.Gen (P.L.pull (eSec P.A)))
    (hρ : ρ.IsGen) (m : ℕ) (hm : Odd m) (hmu : IsUnit (m : W))
    (th : LB.Sec (LPow P.A P.L ((1 : ℕ) : ℤ) (Over.mk (𝟙 (Sp W))))) (x : Over.mk (𝟙 (Sp W)) ⟶ P.A)
    (hx : x ^ (m ^ 2) = 1) :
    ∃ (U : ThetaGrp P.A P.L ((m ^ 2 : ℕ) : ℤ) (Over.mk (𝟙 (Sp W))))
      (t : LB.Sec (LPow P.A P.L ((m ^ 2 : ℕ) : ℤ) (Over.mk (𝟙 (Sp W))))),
      SymLift P.A P.L ((m ^ 2 : ℕ) : ℤ) (m ^ 2) x U ∧ Tr P ρ m th U t := by
  have hLaw : Laws := GlobalTheory.abelianSchemeLaws_all.1
  have hL := P.isLB
  let T : Over (Sp W) := Over.mk (𝟙 (Sp W))
  have hu : IsUnit ((m ^ 2 : ℕ) : Γ(Sp W, ⊤)) := by
    let e := (Scheme.ΓSpecIso (CommRingCat.of W)).commRingCatIsoToRingEquiv.symm
    rw [← map_natCast e]
    exact (by rw [Nat.cast_pow]; exact hmu.pow 2 : IsUnit ((m ^ 2 : ℕ) : W)).map e
  obtain ⟨hex, -⟩ := hLaw.symLift _ P (m ^ 2) hm.pow hu T x hx
  obtain ⟨V, hV, θ₀, hθ₀⟩ := hex (IsLocalRing.closedPoint W)
  have hVt : V = ⊤ := Scheme.preimage_eq_top_of_closedPoint_mem (𝟙 (Sp W)) hV
  subst hVt
  let h : T ⟶ overRes (T := T) ⊤ := Over.homMk T.left.topIso.inv (by
    show T.left.topIso.inv ≫ (⊤ : T.left.Opens).ι ≫ T.hom = T.hom
    rw [← Category.assoc, Scheme.toIso_inv_ι, Category.id_comp])
  have hh : h ≫ overResι (T := T) ⊤ = 𝟙 T := Over.OverMorphism.ext T.left.toIso_inv_ι
  obtain ⟨θ, hθ⟩ := GlobalLift.exists_symLift_pull hL h hθ₀
  rw [← Category.assoc, hh, Category.id_comp] at hθ
  obtain ⟨α₀, hα₀⟩ := hLaw.mulPull _ P m
  have e₁ : (snd T P.A).left ≫ (mulA P.A m).left = (snd T P.A ^ m).left := by
    rw [← Over.comp_left, MonObj.comp_pow, Category.comp_id]
  obtain ⟨α₁, hα₁, -⟩ := exists_gen hL (φ' := ![(snd T P.A).left, (snd T P.A ^ m).left])
    (ε' := ![((m ^ 2 : ℕ) : ℤ), -((1 : ℕ) : ℤ)])
    (fun U _ f => by
      refine Finset.prod_congr rfl fun i _ => ?_
      fin_cases i
      · exact congrArg₂ (fun q n => f q ^ n) (Category.comp_id _) (Nat.cast_pow m 2).symm
      · exact congrArg (fun q => f q ^ (-1 : ℤ)) e₁)
    (LB.pullGen P.L ![𝟙 P.A.left, (mulA P.A m).left] ![(m : ℤ) ^ 2, -1] α₀ (snd T P.A).left)
    (DVR.pullGen_isGen _ _ _ _ hα₀ _)
  obtain ⟨α, hα, hn⟩ := GlobalTheory.NormTheta.exists_normalised hL hρ m _ _ (((m ^ 2 : ℕ) : ℤ) - 1) (by simp) α₁ hα₁
  obtain ⟨s₁, hs₁⟩ := ThetaPtExist.exists_isTwistPull hL (mulT P.A T m) (snd T P.A ^ m) (lift_snd _ _)
    ((m ^ 2 : ℕ) : ℤ) ((1 : ℕ) : ℤ) α hα th
  obtain ⟨t, ht⟩ := ThetaPtExist.exists_isTwistPull hL (translT P.A θ.pt) (translPt P.A θ.pt) (lift_snd _ _)
    ((m ^ 2 : ℕ) : ℤ) ((m ^ 2 : ℕ) : ℤ) θ.φ θ.isGen s₁
  exact ⟨θ, t, hθ, α, s₁, hα, hn, hs₁, ht⟩

end GlobalTheory.MBLow.JetEx

namespace GlobalTheory.MBLow

theorem exists_thJet_local : ∀ (W : Type) [CommRing W] [IsDomain W] [IsNoetherianRing W] [IsLocalRing W] (x : KeyIn W)
    (g : ℕ) (hg : x.P.g = g) (m : ℕ), Odd m → IsUnit (m : W) → ∀ (I : Type) (pt : I → (baseOver (Sp W) ⟶ x.P.A)),
    (∀ i, pt i ^ (m ^ 2) = 1) → ∃ ϑ J, ThJet x hg m pt ϑ J := by
  intro W _ _ _ _ x g hg m hm hmu I pt hpt
  choose U t hUt using fun i =>
    JetEx.exists_symLift_tr x.P x.rig x.rig_gen m hm hmu (TrSec.thSec x.P x.th) (pt i) (hpt i)
  obtain ⟨i₀, c, ϑ, J, htop, hval⟩ :=
    JetEx.exists_jets x.P x.rig (m ^ 2) t (fun j => x.v (j.cast hg.symm)) (fun j => x.basis.1 _)
  exact ⟨ϑ, J, TrSec.thSec x.P x.th, TrSec.projectionPullbackSectionBaseProduct_isInverseImage x.P x.th, U, t, i₀, c, fun i => hUt i, htop, hval⟩

end GlobalTheory.MBLow
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaConstantsJetsLocalDomain =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLinearSectionValueAbelianPower =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLinearSectionValueAbelianPower", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PsiScal\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.HasArcDataIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.JetFiltrationSectionCombination\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UU

noncomputable section
namespace GlobalTheory.SecValLin
open GlobalTheory.SecJet.Orders

theorem valR_add' {A : Type} [CommRing A] {X : Scheme.{0}} (x : Sp A ⟶ X) (U : X.Opens) (f g : Γ(X, U)) :
    valR x U (f + g) = valR x U f + valR x U g := by
  by_cases h : ⊤ ≤ x ⁻¹ᵁ U
  · rw [valR_eq x U h, valR_eq x U h, valR_eq x U h, map_add (f := _)]
  · simp only [valR, dif_neg h, add_zero]

theorem valR_scal_mul {R A : Type} [CommRing R] [CommRing A] {X : Scheme.{0}} (ψ : R →+* A) (p : X ⟶ Sp R)
    (x : Sp A ⟶ X) (hx : x ≫ p = spMap ψ) (U : X.Opens) (c : R) (f : Γ(X, U)) :
    valR x U (resTop U (scal p c) * f) = ψ c * valR x U f := by
  by_cases h : ⊤ ≤ x ⁻¹ᵁ U
  · rw [valR_eq x U h, valR_eq x U h, map_mul]
    have e : resTop U (scal p c) = Geo.Tor.constFn p U c := rfl
    rw [e, vh_const ψ p x hx U h c]
  · simp only [valR, dif_neg h, mul_zero]

theorem exists_linear_valR_sec : ∀ (K : Type) [Field K] (x : KeyIn K) (N : ℕ) (i : Fin 1 → x.P.L.ι) (B : Type) [CommRing B] [Algebra K B]
    (y : Sp B ⟶ (baseOver (Sp K) ⊗ x.P.A).left),
    y ≫ (fst (baseOver (Sp K)) x.P.A).left = spMap (algebraMap K B) →
    ∃ f : EA x.P (𝟙 (Sp K)) N →ₗ[K] B, ∀ s : EA x.P (𝟙 (Sp K)) N,
      f s = valR y ((LPow x.P.A x.P.L ((N : ℕ) : ℤ) (baseOver (Sp K))).U i) (s.sec.f i) := by
  intro K _ x N i B _ _ y hy
  refine ⟨⟨⟨fun s => valR y ((LPow x.P.A x.P.L ((N : ℕ) : ℤ) (baseOver (Sp K))).U i) (s.sec.f i),
    fun s t => valR_add' y _ _ _⟩, fun c s => ?_⟩, fun s => rfl⟩
  show valR y _ (resTop _ (scal _ c) * s.sec.f i) = _
  rw [valR_scal_mul (algebraMap K B) _ y hy, RingHom.id_apply, Algebra.smul_def]

end GlobalTheory.SecValLin
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLinearSectionValueAbelianPower =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SectionsLineBundlePowSeparateFirstJetsOrigin =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SectionsLineBundlePowSeparateFirstJetsOrigin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\npublic import Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsUniqueSecIsFnAt\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ValRConstHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.JetFiltrationSectionCombination\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsJetsChangeSectionBasis\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.HolomorphicHomDetermined\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UU

noncomputable section

namespace GlobalTheory.MBLow.JetSep

theorem sep : ∀ (K : Type) [Field K] (x : KeyIn K) (g : ℕ) (hg : x.P.g = g) (N : ℕ), 4 ≤ N → ∀ (i₀ : x.P.L.ι),
    ⊤ ≤ (𝟙 (Sp K) ≫ eSec x.P.A) ⁻¹ᵁ x.P.L.U i₀ → ∀ (j₀ : Fin g) (a : K) (c : Fin g → K),
    (∀ s : LB.Sec (LPow x.P.A x.P.L (N : ℤ) (baseOver (Sp K))),
      a * (valR (epsLift (x.v (j₀.cast hg.symm))) ((LPow x.P.A x.P.L (N : ℤ) (baseOver (Sp K))).U fun _ => i₀)
          (s.f fun _ => i₀)).fst +
        ∑ j, c j * (valR (epsLift (x.v (j.cast hg.symm))) ((LPow x.P.A x.P.L (N : ℤ) (baseOver (Sp K))).U fun _ => i₀)
          (s.f fun _ => i₀)).snd = 0) →
    a = 0 ∧ c = 0 := by
  intro K _ x g hg N hN i₀ hi₀ j₀ a c H
  subst hg
  have := x.P.isAb.comm
  have k₀ : ⊤ ≤ eSec x.P.A ⁻¹ᵁ x.P.L.U i₀ := by simpa using hi₀
  let U' : x.P.A.left.Opens := (lbPow x.P.L N).U fun _ => i₀
  have hU' : ⊤ ≤ eSec x.P.A ⁻¹ᵁ U' :=
    (GlobalTheory.ThetaFn.le_wchart_unique x.P.L (K := PUnit) (eSec x.P.A) (𝟙 _) (fun _ => i₀)).2 (by simpa using k₀)
  let pb : (lbPow x.P.L N).Sec → LB.Sec (LPow x.P.A x.P.L (N : ℤ) (baseOver (Sp K))) := fun s =>
    GlobalTheory.ThetaFn.pullPow x.P.L (K := PUnit) (K' := Fin 1) (snd (baseOver (Sp K)) x.P.A).left
      (Category.comp_id _) (N : ℤ) s
  have hval : ∀ (s : (lbPow x.P.L N).Sec) (w : epsR K ⟶ x.P.A), IsTangent w →
      valR (epsLift w) ((LPow x.P.A x.P.L (N : ℤ) (baseOver (Sp K))).U fun _ => i₀) ((pb s).f fun _ => i₀) =
        valR w.left U' (s.f fun _ => i₀) := by
    intro s w hw
    have h1 : ⊤ ≤ epsLift w ⁻¹ᵁ ((LPow x.P.A x.P.L (N : ℤ) (baseOver (Sp K))).U fun _ => i₀) := by
      refine (GlobalTheory.ThetaFn.le_wchart_unique x.P.L (K := Fin 1) (epsLift w) _ (fun _ => i₀)).2 ?_
      rw [JetUniq.epsLift_snd]
      exact JetUniq.tan_le hw k₀
    refine (GlobalTheory.HolHom.valR_appLE _ _ _ _ _ _ h1).trans ?_
    rw [JetUniq.epsLift_snd]
    rfl
  have Hs : ∀ s : (lbPow x.P.L N).Sec, a * valR (eSec x.P.A) U' (s.f fun _ => i₀) +
      (valR (tanComb c x.v).left U' (s.f fun _ => i₀)).snd = 0 := by
    intro s
    have e := H (pb s)
    simp only [Fin.cast_eq_self] at e
    rw [hval s _ (x.basis.1 j₀), JetUniq.fst_valR (x.basis.1 j₀) hU'] at e
    rw [JetUniq.snd_valR x.basis.1 (isLieComb_tanComb c x.v) hU']
    refine Eq.trans ?_ e
    congr 1
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [hval s _ (x.basis.1 j)]
  obtain ⟨M, sec, hsec⟩ := GlobalTheory.ZH.CrdMove.immBy_lbPow GlobalTheory.allSixLaws.1.ample K x.P N hN
  have key : ∀ d : Fin x.P.g → K, d ≠ 0 → ∃ s₀ s₁ : (lbPow x.P.L N).Sec,
      valR (eSec x.P.A) U' (s₀.f fun _ => i₀) ≠ 0 ∧ valR (eSec x.P.A) U' (s₁.f fun _ => i₀) = 0 ∧
      (valR (tanComb d x.v).left U' (s₁.f fun _ => i₀)).snd ≠ 0 := by
    intro d hd
    have hy := isTangent_tanComb K x.P.A _ x.v d x.basis.1
    obtain ⟨s₀, s₁, h0, h1, h2⟩ := Orders.exists_sep sec hsec hy (Orders.tanComb_ne_one x.basis hd) (fun _ => i₀) hU'
    refine ⟨s₀, s₁, ?_, ?_, ?_⟩
    · rwa [Orders.valR_eq _ _ hU']
    · rwa [Orders.valR_eq _ _ hU']
    · rwa [Orders.valR_eq _ _ (Orders.top_le_tangent hy hU')]
  have hc : c = 0 := by
    by_contra hc
    obtain ⟨-, s₁, -, h1, h2⟩ := key c hc
    have e := Hs s₁
    rw [h1, mul_zero, zero_add] at e
    exact h2 e
  refine ⟨?_, hc⟩
  have hd : (Pi.single j₀ 1 : Fin x.P.g → K) ≠ 0 := fun h => by simpa using congrFun h j₀
  obtain ⟨s₀, -, h0, -, -⟩ := key _ hd
  have e := Hs s₀
  subst hc
  rw [JetUniq.snd_valR x.basis.1 (isLieComb_tanComb 0 x.v) hU'] at e
  simp only [Pi.zero_apply, zero_mul, Finset.sum_const_zero, add_zero] at e
  exact (mul_eq_zero.1 e).resolve_right h0

end GlobalTheory.MBLow.JetSep

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SectionsLineBundlePowSeparateFirstJetsOrigin =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulOfTwistedPullbacksSameBundle =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulOfTwistedPullbacksSameBundle", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.SmulOneSecEqZeroIff\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.BaseOver\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SpanEqTopOfFunctionals\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExistsGenOfSection\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.GenProd\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PsiScal\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UU

namespace GlobalTheory.TwistRatio

theorem exists_smul_of_isTwistPull : ∀ (K : Type) [Field K] [IsAlgClosed K] [CharZero K] (P : PolAV (Sp K)) (m : ℕ), 1 ≤ m →
    ∀ (th : LB.Sec (LPow P.A P.L ((1 : ℕ) : ℤ) (baseOver (Sp K))))
      (α α' : LB.Gen (LB.LinComb P.L (K := Fin 2) ![(snd (baseOver (Sp K)) P.A).left, (snd (baseOver (Sp K)) P.A ^ m).left]
        ![((m ^ 2 : ℕ) : ℤ), -((1 : ℕ) : ℤ)]))
      (s₁ s₁' : LB.Sec (LPow P.A P.L ((m ^ 2 : ℕ) : ℤ) (baseOver (Sp K)))), α.IsGen → α'.IsGen →
    IsTwistPull P.A P.L (mulT P.A (baseOver (Sp K)) m) (snd (baseOver (Sp K)) P.A ^ m) (lift_snd _ _) ((m ^ 2 : ℕ) : ℤ) ((1 : ℕ) : ℤ) α th s₁ →
    IsTwistPull P.A P.L (mulT P.A (baseOver (Sp K)) m) (snd (baseOver (Sp K)) P.A ^ m) (lift_snd _ _) ((m ^ 2 : ℕ) : ℤ) ((1 : ℕ) : ℤ) α' th s₁' →
    ∃ c : K, (SecMod.mk (fst (baseOver (Sp K)) P.A).left s₁' : EA P (𝟙 (Sp K)) (m ^ 2)) = c • SecMod.mk (fst (baseOver (Sp K)) P.A).left s₁ := by
  intro K _ _ _ P m hm th α α' s₁ s₁' hα hα' h h'
  have hG := GlobalTheory.allSixLaws.1.globalFns
  obtain ⟨a, ha⟩ := H1.exists_const P.L P.isLB (fst (baseOver (Sp K)) P.A).left
    (BoxTheta.surj_fst hG P.isAb _)
    (LB.mulGen P.L _ _ _ _ α' (LB.invGen P.L _ _ α))
    (DVR.mulGen_isGen _ _ _ _ _ _ _ hα' (DVR.invGen_isGen _ _ _ _ hα)) (fun U _ h => by
      simp [Fintype.prod_sum_type, Fin.prod_univ_two])
  obtain ⟨c, rfl⟩ := (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (CommRingCat.of K)).inv).2 a
  refine ⟨c, DVR.SecOps.sec_ext fun j => ?_⟩
  refine sec_ext_val P.isLB (fun y J hJ => ?_) j
  have e1 := VVRank.sv_of_isTwistPull P.A h' (𝟙 _) y hJ
  have e0 := VVRank.sv_of_isTwistPull P.A h (𝟙 _) y hJ
  have ev := ha _ (𝟙 _) y J hJ
  rw [val_mul hJ, val_inv] at ev
  have es := SecMod.value_smul hJ (𝟙 _) c (SecMod.mk (fst (baseOver (Sp K)) P.A).left s₁)
  refine e1.trans (Eq.trans ?_ es.symm)
  have eg : gs (𝟙 _) y ⊤ (scal (fst (baseOver (Sp K)) P.A).left c) =
      gs (𝟙 _ ≫ (fst (baseOver (Sp K)) P.A).left) y ⊤
        ((ConcreteCategory.hom (Scheme.ΓSpecIso (CommRingCat.of K)).inv) c) :=
    gs_pull _ _ y ⊤ trivial _
  have eu : (val α' (𝟙 _) y J).val =
      (val α' (𝟙 _) y J * (val α (𝟙 _) y J)⁻¹).val * (val α (𝟙 _) y J).val := by
    rw [← Units.val_mul, inv_mul_cancel_right]
  change _ = _ * VVRank.sv P.A s₁ (𝟙 _) y J
  rw [e0, eg, ← ev, eu, _root_.mul_assoc]

end GlobalTheory.TwistRatio
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulOfTwistedPullbacksSameBundle =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulOfTwistedPullbacksSameBundleStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulOfTwistedPullbacksSameBundleStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.SmulOneSecEqZeroIff\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.BaseOver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulOfTwistedPullbacksSameBundle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PsiScal\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UU


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulOfTwistedPullbacksSameBundleStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedPullbackNonvanishingOfPulledSection =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedPullbackNonvanishingOfPulledSection", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThetaPt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsAddEquivOfSurjectiveOfKerIff\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.TwistNZ

theorem twistPull_nonzero : ∀ {S : Scheme.{0}} {A : Over S} [GrpObj A] {L : LB A.left}, L.IsLB → ∀ {T : Over S} (ψ : T ⊗ A ⟶ T ⊗ A) (m : T ⊗ A ⟶ A) (hm : ψ ≫ snd T A = m) (a b : ℤ) (α : LB.Gen (LB.LinComb L (K := Fin 2) ![(snd T A).left, m.left] ![a, -b])) (s : LB.Sec (LPow A L b T)) (s' : LB.Sec (LPow A L a T)), IsTwistPull A L ψ m hm a b α s s' → ∀ p : (T ⊗ A).left, ψ.left.base p ∈ nonzeroLocus s → p ∈ nonzeroLocus s' := by
  intro S A _ L hL T ψ m hm a b α s s' H p hp
  have hcov : ∀ y : A.left, ∃ i, y ∈ L.U i := fun y => by
    have : y ∈ (⨆ i, L.U i : A.left.Opens) := by rw [hL.cover]; trivial
    simpa [TopologicalSpace.Opens.mem_iSup] using this
  obtain ⟨i0, h0⟩ := hcov ((snd T A).left.base p)
  obtain ⟨i1, h1⟩ := hcov (m.left.base p)
  let j : Fin 2 → L.ι := ![i0, i1]
  have e₀ : ψ.left ≫ (snd T A).left = m.left := by rw [← Over.comp_left, hm]
  have hpj : p ∈ LB.wchart L ![(snd T A).left, m.left] j := by
    refine Set.mem_iInter.2 fun k => ?_
    fin_cases k
    · exact h0
    · exact h1

  have hψ : ψ.left.base p ∈ (LPow A L b T).U (fun _ => j 1) := by
    refine Set.mem_iInter.2 fun _ => ?_
    show ((snd T A).left.base (ψ.left.base p)) ∈ (L.U i1 : Set A.left)
    have : (ψ.left ≫ (snd T A).left).base p = m.left.base p := by rw [e₀]
    rw [Scheme.Hom.comp_base, TopCat.comp_app] at this
    rw [this]; exact h1
  have h2 : ψ.left.base p ∈ (T ⊗ A).left.basicOpen (s.f (fun _ => j 1)) :=
    (_root_.GlobalTheory.Cartier.mem_nonzeroLocus_iff s _ hψ).1 hp
  have h3 : p ∈ (T ⊗ A).left.basicOpen ((ψ.left.app _).hom (s.f (fun _ => j 1))) := by
    rw [← Scheme.preimage_basicOpen]; exact h2
  have e := congrArg (T ⊗ A).left.basicOpen (H j)
  dsimp only at e
  erw [Scheme.basicOpen_mul, Scheme.basicOpen_of_isUnit _ (α.s j).isUnit] at e
  erw [Scheme.basicOpen_res, Scheme.basicOpen_res] at e
  have hp4 := e.ge ⟨hpj, hpj, h3⟩
  exact TopologicalSpace.Opens.mem_iSup.2 ⟨_, hp4.2⟩

end GlobalTheory.TwistNZ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedPullbackNonvanishingOfPulledSection =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedPullbackNonvanishingOfPulledSectionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedPullbackNonvanishingOfPulledSectionStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThetaPt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedPullbackNonvanishingOfPulledSection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsAddEquivOfSurjectiveOfKerIff\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedPullbackNonvanishingOfPulledSectionStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemNonzeroLocusOfIsTwistPull =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemNonzeroLocusOfIsTwistPull", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThetaVV\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedPullbackNonvanishingOfPulledSectionStatement\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.SepticCharacterInjective\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.KeyFormula.KeyRootOfKeyFormula\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.MBLow.TranslateSection

theorem translT_inv_comp {S : Scheme.{0}} (A : Over S) [GrpObj A] {T : Over S} (z : T ⟶ A) :
    translT A z⁻¹ ≫ translT A z = 𝟙 _ := by
  apply CartesianMonoidalCategory.hom_ext
  · simp [translT]
  · simp only [translT, translPt, Category.assoc, lift_snd, Category.id_comp, comp_lift_assoc, lift_fst_assoc]
    change (fst T A ≫ z) * ((fst T A ≫ z⁻¹) * snd T A) = snd T A
    have e : fst T A ≫ z⁻¹ = (fst T A ≫ z)⁻¹ :=
      eq_inv_of_mul_eq_one_left (by rw [← MonObj.comp_mul, inv_mul_cancel, MonObj.comp_one])
    rw [e, mul_inv_cancel_left]

theorem translT_surjective : ∀ {S : Scheme.{0}} (A : Over S) [GrpObj A] {T : Over S} (z : T ⟶ A), Function.Surjective (translT A z).left.base := by
  intro S A _ T z y
  refine ⟨(translT A z⁻¹).left.base y, ?_⟩
  have h := congrArg (fun f : T ⊗ A ⟶ T ⊗ A => f.left y) (translT_inv_comp A z)
  simpa [Scheme.Hom.comp_apply] using h

theorem mulT_eq {S : Scheme.{0}} (A : Over S) [GrpObj A] (m : ℕ) :
    mulT A (baseOver S) m = (λ_ A).hom ≫ mulA A m ≫ (λ_ A).inv := by
  rw [← Category.assoc, Iso.eq_comp_inv, CartesianMonoidalCategory.leftUnitor_hom, mulT]
  refine (lift_snd _ _).trans ?_
  rw [mulA, MonObj.comp_pow, Category.comp_id]
  rfl

theorem mulT_surjective : ∀ {S : Scheme.{0}} [IsLocallyNoetherian S] (P : PolAV S) (m : ℕ), 1 ≤ m → Function.Surjective (mulT P.A (baseOver S) m).left.base := by
  intro S _ P m hm y
  have hLaw : Laws := GlobalTheory.firstFiveLaws.1
  obtain ⟨-, -, hs, -⟩ := hLaw.mulN S P m hm
  obtain ⟨b, hb⟩ := hs.surj ((λ_ P.A).hom.left y)
  refine ⟨(λ_ P.A).inv.left b, ?_⟩
  have h1 := congrArg (fun f : baseOver S ⊗ P.A ⟶ baseOver S ⊗ P.A => f.left ((λ_ P.A).inv.left b)) (mulT_eq P.A m)
  have h2 := congrArg (fun f : baseOver S ⊗ P.A ⟶ baseOver S ⊗ P.A => f.left y) (λ_ P.A).hom_inv_id
  have h3 := congrArg (fun f : P.A ⟶ P.A => f.left b) (λ_ P.A).inv_hom_id
  simp only [Over.comp_left, Scheme.Hom.comp_apply, Over.id_left] at h1 h2 h3
  have h2' : (λ_ P.A).inv.left ((λ_ P.A).hom.left y) = y := h2
  have h3' : (λ_ P.A).hom.left ((λ_ P.A).inv.left b) = b := h3
  rw [h1, h3', hb, h2']

alias mem_nonzeroLocus_of_isTwistPull := _root_.GlobalTheory.TwistNZ.twistPull_nonzero

end GlobalTheory.MBLow.TranslateSection
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemNonzeroLocusOfIsTwistPull =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslateThetaPullbackNeZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslateThetaPullbackNeZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolarizationSectionFirstPower\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.SmulOneSecEqZeroIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemNonzeroLocusOfIsTwistPull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PsiScal\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UU

noncomputable section

namespace GlobalTheory.TransNZ

open GlobalTheory.MBLow.TranslateSection GlobalTheory.MBLow.TrSec

theorem eq_projectionPullbackSection_of_inverseImage {S : Scheme.{0}} (P : PolAV S) (s : P.L.Sec)
    (th : LB.Sec (LPow P.A P.L ((1 : ℕ) : ℤ) (baseOver S))) (h : IsPolAVSectionInverseImage P (baseOver S) s th) :
    th = thSec P s := by
  have key : ∀ j : Fin 1 → P.L.ι, th.f j = (thSec P s).f j := by
    intro j
    have hj : j = fun _ => j 0 := funext fun k => by rw [Subsingleton.elim k 0]
    rw [hj, h (j 0) (chart_le P _), projectionPullbackSectionBaseProduct_isInverseImage P s (j 0) (chart_le P _)]
  cases th; cases hth : thSec P s
  simp only [hth] at key
  congr
  exact funext key

end GlobalTheory.TransNZ


open GlobalTheory.MBLow.TranslateSection GlobalTheory.MBLow.TrSec in
theorem GlobalTheory.TransNZ.exists_ne : ∀ (K : Type) [Field K] [IsAlgClosed K] [CharZero K] (x : KeyIn K) (m : ℕ), Odd m → 3 ≤ m →
    ∀ (I : Type) (pt : I → (baseOver (Sp K) ⟶ x.P.A)), (∀ z : baseOver (Sp K) ⟶ x.P.A, z ^ (m ^ 2) = 1 → ∃ i, pt i = z) →
    ∀ (th : LB.Sec (LPow x.P.A x.P.L ((1 : ℕ) : ℤ) (baseOver (Sp K)))), IsPolAVSectionInverseImage x.P (baseOver (Sp K)) x.th th →
    ∀ (U : I → ThetaGrp x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (baseOver (Sp K)))
      (t : I → LB.Sec (LPow x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (baseOver (Sp K)))),
    (∀ i, SymLift x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (m ^ 2) (pt i) (U i) ∧ Tr x.P x.rig m th (U i) (t i)) →
    ∃ i, (SecMod.mk (fst (baseOver (Sp K)) x.P.A).left (t i) : EA x.P (𝟙 (Sp K)) (m ^ 2)) ≠ 0 := by
  intro K _ _ _ x m hm hm3 I pt hpt th hth U t hUt
  have hm1 : 1 ≤ m := by omega
  obtain ⟨i₀, -⟩ := hpt 1 (one_pow _)
  obtain ⟨-, α, s₁, hα, -, hs₁, ht⟩ := hUt i₀
  obtain ⟨p₀⟩ : Nonempty (Sp K) := inferInstanceAs (Nonempty (PrimeSpectrum K))
  obtain ⟨a, -, ha⟩ := x.th_ne p₀
  have e := GlobalTheory.TransNZ.eq_projectionPullbackSection_of_inverseImage x.P x.th th hth
  have hp₁ := nonzero_thSec x.P x.th a ha
  rw [← e] at hp₁
  obtain ⟨q, hq⟩ := mulT_surjective x.P m hm1 ((λ_ x.P.A).inv.left.base a)
  have hq' := mem_nonzeroLocus_of_isTwistPull x.P.isLB _ _ _ _ _ α th s₁ hs₁ q (hq ▸ hp₁)
  obtain ⟨r, hr⟩ := translT_surjective x.P.A (U i₀).pt q
  have hr' := mem_nonzeroLocus_of_isTwistPull x.P.isLB _ _ _ _ _ (U i₀).φ s₁ (t i₀) ht r (hr ▸ hq')
  refine ⟨i₀, fun h0 => ?_⟩
  obtain ⟨k, hk⟩ := TopologicalSpace.Opens.mem_iSup.1 hr'
  have hz : (t i₀).f k = 0 := (GlobalTheory.UU.SecMod.eq_zero_iff_coord _).1 h0 k
  rw [hz, Scheme.basicOpen_zero] at hk
  exact hk
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslateThetaPullbackNeZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpanThetaTranslatesTorsionEqTop =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpanThetaTranslatesTorsionEqTop", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PsiScal\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsIsGenOfInvariant\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ThetaGrpActsLinearly\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulOfTwistedPullbacksSameBundleStatement\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.SmulOneSecEqZeroIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslateThetaPullbackNeZero\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AbelianSectionsIrreducibleThetaGroup\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UU

namespace GlobalTheory.TSpan

noncomputable def actL {K : Type} [Field K] (P : PolAV (Sp K)) (k : ℕ)
    (ρ : ThetaGrp P.A P.L (k : ℤ) (baseOver (Sp K)) → (SecM P.A P.L (k : ℤ) (baseOver (Sp K)) ≃ₗ[Γ((baseOver (Sp K)).left, ⊤)] SecM P.A P.L (k : ℤ) (baseOver (Sp K))))
    (θ : ThetaGrp P.A P.L (k : ℤ) (baseOver (Sp K))) : EA P (𝟙 (Sp K)) k →ₗ[K] EA P (𝟙 (Sp K)) k where
  toFun w := SecMod.mk _ (SecM.toSec P.A (ρ θ (SecM.ofSec P.A w.sec)))
  map_add' a b := by
    show SecMod.mk _ (SecM.toSec P.A (ρ θ (SecM.ofSec P.A a.sec + SecM.ofSec P.A b.sec))) = _
    rw [map_add (f := _)]; rfl
  map_smul' c w := by
    show SecMod.mk _ (SecM.toSec P.A (ρ θ ((Scheme.ΓSpecIso (CommRingCat.of K)).symm.commRingCatIsoToRingEquiv c • SecM.ofSec P.A w.sec))) = _
    rw [map_smul]; rfl

theorem span_eq_top : ∀ (K : Type) [Field K] [IsAlgClosed K] [CharZero K] (x : KeyIn K) (m : ℕ), Odd m → 3 ≤ m →
    ∀ (I : Type) (pt : I → (baseOver (Sp K) ⟶ x.P.A)), (∀ z : baseOver (Sp K) ⟶ x.P.A, z ^ (m ^ 2) = 1 → ∃ i, pt i = z) →
    ∀ (th : LB.Sec (LPow x.P.A x.P.L ((1 : ℕ) : ℤ) (baseOver (Sp K)))), IsPolAVSectionInverseImage x.P (baseOver (Sp K)) x.th th →
    ∀ (U : I → ThetaGrp x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (baseOver (Sp K)))
      (t : I → LB.Sec (LPow x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (baseOver (Sp K)))),
    (∀ i, SymLift x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (m ^ 2) (pt i) (U i) ∧ Tr x.P x.rig m th (U i) (t i)) →
    Submodule.span K (Set.range fun i =>
      (SecMod.mk (fst (baseOver (Sp K)) x.P.A).left (t i) : EA x.P (𝟙 (Sp K)) (m ^ 2))) = ⊤ := by
  intro K _ _ _ x m hm hm3 I pt hpt th hth U t hUt
  haveI : IsLocallyNoetherian (Sp K) := inferInstanceAs (IsLocallyNoetherian (Spec (CommRingCat.of K)))
  haveI := x.P.isAb.comm
  have hm0 : m ≠ 0 := by omega
  have hN : ((m ^ 2 : ℕ) : K) ≠ 0 := Nat.cast_ne_zero.2 (pow_ne_zero 2 hm0)
  have hN1 : 1 ≤ m ^ 2 := Nat.one_le_iff_ne_zero.2 (pow_ne_zero 2 hm0)
  obtain ⟨-, hirr⟩ := GlobalTheory.ThetaIrred.main GlobalTheory.allSixLaws.1 GlobalTheory.allSixLaws.2.1 (Sp K) x.P K (𝟙 _) (m ^ 2) hN
  obtain ⟨ρ, hact, -, hrat, hmul⟩ := GlobalTheory.thetaGrp_acts_linearly GlobalTheory.allSixLaws.1.globalFns (Sp K) x.P ((m ^ 2 : ℕ) : ℤ)
    (baseOver (Sp K))
  let f := actL x.P (m ^ 2) ρ
  have hf : ∀ θ (a b : LB.Sec (LPow x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (baseOver (Sp K)))), IsActOf x.P.A x.P.L _ θ a b →
      f θ (SecMod.mk _ a) = SecMod.mk _ b := fun θ a b h => by
    show SecMod.mk _ (SecM.toSec x.P.A (ρ θ (SecM.ofSec x.P.A a))) = _
    rw [(hact θ a b).1 h]; rfl
  have hf' : ∀ θ (a : LB.Sec (LPow x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (baseOver (Sp K)))),
      IsActOf x.P.A x.P.L _ θ a (f θ (SecMod.mk _ a)).sec := fun θ a => (hact θ _ _).2 rfl

  have hker : ∀ θ : ThetaGrp x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (baseOver (Sp K)), θ.pt ^ (m ^ 2) = 1 := fun θ =>
    (GlobalTheory.allSixLaws.1.kerPow (Sp K) x.P (m ^ 2) hN1 _ θ.pt).1 fun _ =>
      ⟨⊤, trivial, GlobalTheory.exists_isGen_pull _ θ.φ θ.isGen _⟩
  let Wsp := Submodule.span K (Set.range fun i =>
    (SecMod.mk (fst (baseOver (Sp K)) x.P.A).left (t i) : EA x.P (𝟙 (Sp K)) (m ^ 2)))
  refine (hirr Wsp fun θ hθ v v' hvv' hv => ?_).resolve_left fun h => ?_
  · have e0 : f θ v = v' := hf θ v.sec v'.sec hvv'
    rw [← e0]
    refine (Submodule.span_le.2 ?_ : Wsp ≤ Wsp.comap (f θ)) hv
    rintro _ ⟨i, rfl⟩
    obtain ⟨-, α, s₁, hα, -, htw, ha⟩ := hUt i
    obtain ⟨θ₂, hp₂, hv₂⟩ := hmul θ (U i)
    obtain ⟨k, hk⟩ := hpt (θ.pt * pt i) (by rw [mul_pow, hθ, ← (hUt i).1.pt_eq, hker, _root_.mul_one])
    obtain ⟨-, α', s₁', hα', -, htw', ha'⟩ := hUt k
    obtain ⟨c, hc⟩ := _root_.GlobalTheory.TwistRatio.exists_smul_of_isTwistPull K x.P m (by omega) th α' α s₁' s₁ hα' hα htw' htw
    obtain ⟨d, hd⟩ := hrat (U k) θ₂ (by rw [hp₂, (hUt k).1.pt_eq, (hUt i).1.pt_eq, hk])
    have e : f θ (SecMod.mk _ (t i)) = f θ₂ (SecMod.mk _ s₁) := by
      rw [← hf _ _ _ ha]
      show SecMod.mk _ (SecM.toSec x.P.A (ρ θ _)) = SecMod.mk _ (SecM.toSec x.P.A (ρ θ₂ _))
      rw [hv₂]; rfl
    have e₂ : f θ₂ (SecMod.mk _ s₁) =
        ((Scheme.ΓSpecIso (CommRingCat.of K)).hom.hom (d : Γ((baseOver (Sp K)).left, ⊤))) • f (U k) (SecMod.mk _ s₁) := by
      show SecMod.mk _ (SecM.toSec x.P.A (ρ θ₂ _)) = _
      rw [hd]
      have e3 : (d : Γ((baseOver (Sp K)).left, ⊤)) = (Scheme.ΓSpecIso (CommRingCat.of K)).symm.commRingCatIsoToRingEquiv
          ((Scheme.ΓSpecIso (CommRingCat.of K)).hom.hom (d : Γ((baseOver (Sp K)).left, ⊤))) := by
        simp [Iso.commRingCatIsoToRingEquiv]
      conv_lhs => rw [e3]
      rfl
    show f θ (SecMod.mk _ (t i)) ∈ Wsp
    rw [e, e₂, hc, map_smul, hf _ _ _ ha']
    exact Submodule.smul_mem _ _ (Submodule.smul_mem _ _ (Submodule.subset_span ⟨k, rfl⟩))
  · obtain ⟨i, hi⟩ := _root_.GlobalTheory.TransNZ.exists_ne K x m hm hm3 I pt hpt th hth U t hUt
    exact hi ((Submodule.eq_bot_iff _).1 h _ (Submodule.subset_span ⟨i, rfl⟩))

end GlobalTheory.TSpan
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpanThetaTranslatesTorsionEqTop =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsFirstJetsLinearIndependent =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsFirstJetsLinearIndependent", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.HasArcDataIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLinearSectionValueAbelianPower\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SectionsLineBundlePowSeparateFirstJetsOrigin\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.SmulOneSecEqZeroIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpanThetaTranslatesTorsionEqTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PsiScal\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UU

noncomputable section
namespace GlobalTheory.MBLow.TRank

theorem main : ∀ (K : Type) [Field K] [IsAlgClosed K] [CharZero K] (x : KeyIn K) (g : ℕ) (hg : x.P.g = g) (m : ℕ), Odd m → 3 ≤ m → ∀ (I : Type) (pt : I → (baseOver (Sp K) ⟶ x.P.A)), (∀ z : baseOver (Sp K) ⟶ x.P.A, z ^ (m ^ 2) = 1 → ∃ i, pt i = z) → ∀ ϑ J, ThJet x hg m pt ϑ J → ∀ (c₀ : K) (c : Fin g → K), (∀ i, c₀ * ϑ i + ∑ j, c j * J i j = 0) → c₀ = 0 ∧ c = 0 := by
  intro K _ _ _ x g hg m hm hm3 I pt hpt ϑ J hTJ c₀ c hrel
  obtain ⟨th, hth, U, t, i₀, c', hUt, hi₀, hval⟩ := hTJ
  have hg1 : 1 ≤ g := hg ▸ x.g_pos
  let j₀ : Fin g := ⟨0, hg1⟩
  have hy : ∀ j : Fin g, epsLift (x.v (j.cast hg.symm)) ≫ (fst (baseOver (Sp K)) x.P.A).left =
      spMap (algebraMap K (DualNumber K)) := fun j => by
    rw [epsLift, ← Over.comp_left, lift_fst]; rfl
  choose f hf using fun j : Fin g => _root_.GlobalTheory.SecValLin.exists_linear_valR_sec K x (m ^ 2) (fun _ => i₀) (DualNumber K) _ (hy j)
  set a := c₀ - ∑ j, c j * c' j with ha
  let Φ : EA x.P (𝟙 (Sp K)) (m ^ 2) →ₗ[K] K :=
    a • ((TrivSqZeroExt.fstHom K K K).toLinearMap ∘ₗ f j₀) + ∑ j, c j • (TrivSqZeroExt.sndHom K K ∘ₗ f j)
  have hΦ : ∀ s, Φ s = a * (f j₀ s).fst + ∑ j, c j * (f j s).snd := fun s => by
    rw [LinearMap.add_apply, LinearMap.smul_apply, LinearMap.sum_apply]
    simp only [LinearMap.smul_apply, LinearMap.comp_apply, smul_eq_mul]
    rfl
  have hft : ∀ j i, f j (SecMod.mk (fst (baseOver (Sp K)) x.P.A).left (t i)) =
      valR (epsLift (x.v (j.cast hg.symm))) ((LPow x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (baseOver (Sp K))).U fun _ => i₀)
        ((t i).f fun _ => i₀) := fun j i => hf j _
  have hΦt : ∀ i, Φ (SecMod.mk (fst (baseOver (Sp K)) x.P.A).left (t i)) = 0 := fun i => by
    rw [hΦ]
    simp only [hft, hval]
    set r := valR (𝟙 (Sp K)) ((x.P.L.pull (eSec x.P.A)).U fun _ => i₀) (x.rig.s fun _ => i₀).val ^ (m ^ 2)
    simp only [TrivSqZeroExt.fst_mul, TrivSqZeroExt.snd_mul, TrivSqZeroExt.fst_inl, TrivSqZeroExt.snd_inl,
      TrivSqZeroExt.fst_add, TrivSqZeroExt.snd_add, TrivSqZeroExt.fst_inr, TrivSqZeroExt.snd_inr, smul_eq_mul,
      MulOpposite.smul_eq_mul_unop, MulOpposite.unop_op, add_zero, zero_add, zero_mul]
    have e1 : ∑ j, c j * (r * (J i j + c' j * ϑ i)) = r * ∑ j, c j * J i j + r * ϑ i * ∑ j, c j * c' j := by
      rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun j _ => by ring
    rw [e1, ha]
    linear_combination r * hrel i
  have hspan := _root_.GlobalTheory.TSpan.span_eq_top K x m hm hm3 I pt hpt th hth U t hUt
  have hΦ0 : Φ = 0 := LinearMap.ext_on_range hspan fun i => by rw [hΦt i, LinearMap.zero_apply]
  have hsep := _root_.GlobalTheory.MBLow.JetSep.sep K x g hg (m ^ 2) (by nlinarith) i₀ hi₀ j₀ a c fun s => by
    have h := congrArg (fun F => F (SecMod.mk (fst (baseOver (Sp K)) x.P.A).left s)) hΦ0
    simp only [LinearMap.zero_apply, hΦ] at h
    rw [hf j₀, Finset.sum_congr rfl fun j _ => by rw [hf j]] at h
    exact h
  obtain ⟨h1, h2⟩ := hsep
  refine ⟨?_, h2⟩
  subst h2
  simpa [ha] using h1

end GlobalTheory.MBLow.TRank
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsFirstJetsLinearIndependent =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsJetsBaseChangePolarisedDatum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsJetsBaseChangePolarisedDatum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.KeyPBIff\npublic import Development.AbelianVarietyTheory.Proofs.ThetaFamilyOrigin.IsThetaPtOverMove\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LocGenOfTrivial\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTwistSections\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumBaseChangeThetaJets\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero\nimport Development.AbelianVarietyTheory.Proofs.ToricGeometry.MemSpanOfCardLe\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.MBLow.JetBCGen

open TrivSqZeroExt

theorem spMap_comp_gen {A B C : Type} [CommRing A] [CommRing B] [CommRing C] (a : A →+* B) (b : C →+* A) :
    spMap a ≫ spMap b = spMap (a.comp b) := by
  rw [spMap, spMap, spMap, ← Spec.map_comp]
  rfl

theorem surj_fst (R : Type) [CommRing R] : Function.Surjective (spMap (TrivSqZeroExt.fstHom R R R).toRingHom) := by
  have hs : Function.Surjective (TrivSqZeroExt.fstHom R R R).toRingHom := fun x => ⟨TrivSqZeroExt.inl x, rfl⟩
  intro P
  have : P ∈ Set.range (PrimeSpectrum.comap (TrivSqZeroExt.fstHom R R R).toRingHom) := by
    rw [range_comap_of_surjective _ _ hs]
    intro x hx
    refine (P : PrimeSpectrum (DualNumber R)).2.mem_of_pow_mem 2 ?_
    have hx' : x.fst = 0 := hx
    have : x ^ 2 = 0 := by ext <;> simp [sq, hx']
    rw [this]; exact zero_mem _
  exact this

theorem isLocalRing_dual (k : Type) [Field k] : IsLocalRing (DualNumber k) :=
  IsLocalRing.of_isUnit_or_isUnit_one_sub_self fun x => by
    by_cases h : TrivSqZeroExt.fst x = 0
    · right
      rw [TrivSqZeroExt.isUnit_iff_isUnit_fst]
      simp [h]
    · left
      rw [TrivSqZeroExt.isUnit_iff_isUnit_fst]
      exact isUnit_iff_ne_zero.2 h

theorem map_inl_inr {R K : Type} [CommRing R] [CommRing K] (f : R →+* K) (F : DualNumber R →+* DualNumber K)
    (hF1 : ∀ a, F (algebraMap R _ a) = algebraMap K _ (f a)) (hF2 : F DualNumber.eps = DualNumber.eps) (a b : R) :
    F (inl a) = inl (f a) ∧ F (inr b) = inr (f b) := by
  have h1 : ∀ a, F (inl a) = inl (f a) := fun a => by
    have := hF1 a
    rwa [TrivSqZeroExt.algebraMap_eq_inl, TrivSqZeroExt.algebraMap_eq_inl] at this
  refine ⟨h1 a, ?_⟩
  have e : ∀ {S : Type} [CommRing S] (c : S), (inr c : DualNumber S) = inl c * DualNumber.eps := fun c => by
    rw [DualNumber.eps, TrivSqZeroExt.inl_mul_inr, smul_eq_mul, _root_.mul_one]
  rw [e, map_mul, h1, hF2, ← e]

theorem valR_spMap_comp' {A A' : Type} [CommRing A] [CommRing A'] {Y : Scheme.{0}} (ψ : A →+* A') (x : Sp A ⟶ Y)
    (V : Y.Opens) (h : ⊤ ≤ x ⁻¹ᵁ V) (f : Γ(Y, V)) : valR (spMap ψ ≫ x) V f = ψ (valR x V f) := by
  have h' : ⊤ ≤ (spMap ψ ≫ x) ⁻¹ᵁ V := fun y _ => h (Set.mem_univ ((spMap ψ) y))
  unfold valR
  rw [dite_eq_left h', dite_eq_left h]
  have e : (spMap ψ ≫ x).appLE V ⊤ h' = x.appLE V ⊤ h ≫ (spMap ψ).appTop :=
    (Scheme.Hom.appLE_comp_appLE (spMap ψ) x V ⊤ ⊤ h le_rfl).symm
  have n := Scheme.ΓSpecIso_naturality (CommRingCat.ofHom ψ)
  change ((spMap ψ ≫ x).appLE V ⊤ h' ≫ (Scheme.ΓSpecIso (CommRingCat.of A')).hom).hom f =
    (x.appLE V ⊤ h ≫ (Scheme.ΓSpecIso (CommRingCat.of A)).hom ≫ CommRingCat.ofHom ψ).hom f
  rw [e, Category.assoc, n]

end GlobalTheory.MBLow.JetBCGen

namespace GlobalTheory.MBLow.JetBCGen

open GlobalTheory.ThetaPtMove

theorem pow_eq_one_of_gen {K : Type} [Field K] (P : PolAV (Sp K)) (k : ℕ) {T : Over (Sp K)} (x : T ⟶ P.A)
    (α : LB.Gen (thetaLB P.A P.L ((k : ℕ) : ℤ) x)) (hα : α.IsGen) : x ^ k = 1 := by
  rcases Nat.eq_zero_or_pos k with rfl | hk
  · exact pow_zero x
  refine (GlobalTheory.abelianSchemeLaws_all.1.kerPow (Sp K) P k hk T x).1 fun p => ⟨⊤, trivial, ?_⟩
  exact (GlobalTheory.KerPow.pull_iff _ _ _).2 (GlobalTheory.KerPow.HasGen.pull ⟨α, hα⟩ _ fun _ => rfl)

end GlobalTheory.MBLow.JetBCGen

namespace GlobalTheory.MBLow.JetBCGen

open GlobalTheory.MBLow.JetBC

theorem gs_theta {X X' : Scheme.{0}} {L₀ : LB X} {L₁ : LB X'} {φ : X' ⟶ X} (w : LB.Iso L₁ (L₀.pull φ))
    (θ₀ : L₀.Sec) (θ : L₁.Sec)
    (H : ∀ (j : (L₀.pull φ).ι) (i : L₁.ι) (h : (L₀.pull φ).U j ⊓ L₁.U i ≤ φ ⁻¹ᵁ L₀.U (j PUnit.unit)),
      (φ.appLE _ _ h).hom (θ₀.f (j PUnit.unit)) =
        (show Γ(X', (L₀.pull φ).U j ⊓ L₁.U i) from (w.s (j, i)).val) * resG _ inf_le_right (θ.f i))
    (Z : Scheme.{0}) (r : Z ⟶ X') (z : Z) (j : L₀.ι) (k : L₁.ι) (hj : φ (r z) ∈ L₀.U j) (hk : r z ∈ L₁.U k) :
    gs (r ≫ φ) z _ (θ₀.f j) = (gw w r z j k).val * gs r z _ (θ.f k) := by
  have hV : r z ∈ (L₀.pull φ).U (fun _ => j) ⊓ L₁.U k := ⟨mem_pull.2 hj, hk⟩
  have hle : (L₀.pull φ).U (fun _ => j) ⊓ L₁.U k ≤ φ ⁻¹ᵁ L₀.U j := fun y hy => mem_pull.1 hy.1
  rw [← gs_appLE' φ _ _ hle r z hV, H (fun _ => j) k hle, gs_mul _ _ _ hV]
  congr 1
  · exact gs_unit r z _ hV (w.s (fun _ => j, k))
  · exact gs_res _ _ _ hV _

end GlobalTheory.MBLow.JetBCGen

namespace GlobalTheory.MBLow.JetBCGen

open GlobalTheory.MBLow.JetBC GlobalTheory.ThetaPtMove GlobalTheory.ConstFam GlobalTheory.GlobalLift

theorem tr_move_gen {S S' : Scheme.{0}} {P₀ : PolAV S} {P : PolAV S'} {f : S' ⟶ S} {φ : P.A.left ⟶ P₀.A.left}
    (hp : IsGrpPullback P.A P₀.A f φ) {T : Over S'} {T₀ : Over S} (τ : T.left ⟶ T₀.left)
    (hτ : τ ≫ T₀.hom = T.hom ≫ f) {w : LB.Iso P.L (P₀.L.pull φ)}
    {ρ₀ : LB.Gen (P₀.L.pull (eSec P₀.A))} {ρ : LB.Gen (P.L.pull (eSec P.A))}
    (hw : w.IsGen) (he : eSec P.A ≫ φ = f ≫ eSec P₀.A)
    (hρ : PMaps w (fun _ : PUnit => eSec P.A) (fun _ => eSec P₀.A) (fun _ => 1) ρ ρ₀ f) {m : ℕ}
    {th₀ th t₀ t} (h : SecRel hp τ hτ w th th₀) (ht : SecRel hp τ hτ w t t₀) {U₀ U}
    (hU : ∀ s₀ s₀' s s', SecRel hp τ hτ w s s₀ → SecRel hp τ hτ w s' s₀' →
      IsActOf P₀.A P₀.L ((m ^ 2 : ℕ) : ℤ) U₀ s₀ s₀' → IsActOf P.A P.L ((m ^ 2 : ℕ) : ℤ) U s s')
    (H : Tr P₀ ρ₀ m th₀ U₀ t₀) : Tr P ρ m th U t := by
  obtain ⟨α₀, s₀, hα₀, hn, h₁, h₂⟩ := H
  obtain ⟨α, hα, v⟩ := exists_genThrough₂ hp τ hτ hw P₀.isLB P.isLB (psi_pow hp τ hτ m) α₀ hα₀
  obtain ⟨s, hs⟩ := exists_secRel hp τ hτ hw P₀.isLB P.isLB s₀
  refine ⟨α, s, hα, corr_of_val P.isLB fun y J' hJ' => ?_,
    isTwistPull_move hp τ hτ P₀.isLB P.isLB (psi_pow hp τ hτ m) hα v h hs h₁, hU _ _ _ _ hs ht h₂⟩
  obtain ⟨J, hJ⟩ := exists_good' P₀.isLB y
  have q := val_corr hJ hn (𝟙 _ ≫ τ)
  have q₁ := v _ (𝟙 _ ≫ (ptSecT P.A (1 : T ⟶ P.A)).left) y J J' hJ hJ'
  rw [Category.assoc, psi_ptSec hp τ hτ (over_one hp τ hτ), ← Category.assoc] at q₁
  have q₂ := pmaps_val (fun _ => he) hρ (𝟙 _ ≫ T.hom) hJ hJ'
  rw [Fintype.prod_unique] at q₂
  rw [val_pull hJ, val_rigT' _ _ _ _ _ _ _ _ hJ, Category.assoc _ τ T₀.hom, hτ, ← Category.assoc, q₁, q₂] at q
  rw [val_pull hJ', val_rigT' _ _ _ _ _ _ _ _ hJ']
  have e₁ : (𝟙 _ ≫ (ptSecT P.A (1 : T ⟶ P.A)).left) ≫ (snd T P.A).left = (𝟙 _ ≫ T.hom) ≫ eSec P.A := by
    rw [Category.id_comp, ptSecT_snd, _root_.GlobalTheory.UU.one_left, Category.id_comp]
  have e₂ : (𝟙 _ ≫ (ptSecT P.A (1 : T ⟶ P.A)).left) ≫ (snd T P.A ^ m).left = (𝟙 _ ≫ T.hom) ≫ eSec P.A := by
    rw [Category.id_comp, ← Over.comp_left, MonObj.comp_pow, ← e₁, Category.id_comp, ← Over.comp_left,
      show ptSecT P.A (1 : T ⟶ P.A) ≫ snd T P.A = 1 from lift_snd _ _, one_pow]
  rw [e₁, e₂] at q
  rw [zpow_one, mul_zpow, ← zpow_add] at q
  have e₃ : ((m ^ 2 : ℕ) : ℤ) + -((1 : ℕ) : ℤ) = ((m ^ 2 : ℕ) : ℤ) - 1 := by push_cast; ring
  rw [e₃] at q
  exact mul_left_cancel q

end GlobalTheory.MBLow.JetBCGen

namespace GlobalTheory.MBLow.JetBCGen

open TrivSqZeroExt

theorem one_add_inr_pow {K : Type} [Field K] (e : K) (M : ℕ) :
    ((1 : DualNumber K) + inr e) ^ M = 1 + inr ((M : K) * e) := by
  induction M with
  | zero => ext <;> simp
  | succ n ih => rw [pow_succ, ih]; ext <;> simp <;> ring

theorem dual_solve {K : Type} [Field K] (M : ℕ) (u₁ T' : DualNumber K) (u₀ r a b : K) (hu : u₁.fst = u₀)
    (h0 : u₀ ≠ 0) (h : u₁ ^ M * T' = inl ((u₀ * r) ^ M) * (inl a + inr b)) :
    T' = inl (r ^ M) * (inl a + inr (b - (M : K) * (u₁.snd / u₀) * a)) := by
  have hv : u₁ = inl u₀ * (1 + inr (u₁.snd / u₀)) := by
    ext
    · simp [hu]
    · simp; field_simp
  rw [hv, mul_pow, one_add_inr_pow, mul_pow, inl_mul, inl_pow, _root_.mul_assoc, _root_.mul_assoc] at h
  have hu0 : IsUnit (inl (u₀ ^ M) : DualNumber K) := by
    refine ⟨⟨inl (u₀ ^ M), inl ((u₀ ^ M)⁻¹), ?_, ?_⟩, rfl⟩ <;>
      rw [← inl_mul] <;> simp [pow_ne_zero M h0]
  have h' := hu0.mul_left_cancel h
  have hinv : (1 - inr ((M : K) * (u₁.snd / u₀)) : DualNumber K) * (1 + inr ((M : K) * (u₁.snd / u₀))) = 1 := by
    ext <;> simp
  calc T' = (1 - inr ((M : K) * (u₁.snd / u₀))) * ((1 + inr ((M : K) * (u₁.snd / u₀))) * T') := by
        rw [← _root_.mul_assoc, hinv, _root_.one_mul]
    _ = _ := by rw [h']; ext <;> simp <;> ring

end GlobalTheory.MBLow.JetBCGen

namespace GlobalTheory.MBLow.JetBCGen

open GlobalTheory.MBLow.JetBC GlobalTheory.ThetaPtMove GlobalTheory.ConstFam GlobalTheory.GlobalLift GlobalTheory.ZH.ThetaData

theorem valR_secRel {S S' : Scheme.{0}} {G : Over S} [GrpObj G] {A : Over S'} [GrpObj A] {f : S' ⟶ S}
    {φ : A.left ⟶ G.left} (hp : IsGrpPullback A G f φ) {T : Over S'} {T₀ : Over S} (τ : T.left ⟶ T₀.left)
    (hτ : τ ≫ T₀.hom = T.hom ≫ f) {L₀ : LB G.left} {L₁ : LB A.left} {w : LB.Iso L₁ (L₀.pull φ)}
    (hL₀ : L₀.IsLB) (hL₁ : L₁.IsLB) {k : ℕ} {t₀ : LB.Sec (LPow G L₀ (k : ℤ) T₀)} {t : LB.Sec (LPow A L₁ (k : ℤ) T)}
    (ht : SecRel hp τ hτ w t t₀) {C : Type} [CommRing C] [IsLocalRing C] (y : Sp C ⟶ (T ⊗ A).left)
    (j : L₀.ι) (i : L₁.ι) (hj : φ ((y ≫ (snd T A).left) (IsLocalRing.closedPoint C)) ∈ L₀.U j)
    (hi : (y ≫ (snd T A).left) (IsLocalRing.closedPoint C) ∈ L₁.U i) :
    valR (y ≫ psi hp τ hτ) ((LPow G L₀ (k : ℤ) T₀).U fun _ => j) (t₀.f fun _ => j) =
      valR (y ≫ (snd T A).left) _ (w.s (fun _ => j, i)).val ^ k *
        valR y ((LPow A L₁ (k : ℤ) T).U fun _ => i) (t.f fun _ => i) := by
  have e₀ : (y ≫ psi hp τ hτ) ≫ (snd T₀ G).left = (y ≫ (snd T A).left) ≫ φ := by
    rw [Category.assoc, Category.assoc, psi_snd']
  have m₀ : (y ≫ psi hp τ hτ) (IsLocalRing.closedPoint C) ∈ (LPow G L₀ (k : ℤ) T₀).U fun _ => j :=
    Set.mem_iInter.2 fun _ => by
      show ((y ≫ psi hp τ hτ) ≫ (snd T₀ G).left) (IsLocalRing.closedPoint C) ∈ L₀.U j
      rw [e₀]; exact hj
  have m₁ : y (IsLocalRing.closedPoint C) ∈ (LPow A L₁ (k : ℤ) T).U fun _ => i := Set.mem_iInter.2 fun _ => hi
  have mW : (y ≫ (snd T A).left) (IsLocalRing.closedPoint C) ∈ ((L₀.pull φ).div L₁).U (fun _ => j, i) :=
    ⟨mem_pull.2 hj, hi⟩
  obtain ⟨J', hJ', e'⟩ := exists_good L₁ hL₁ (IsLocalRing.closedPoint C) (fun _ : Unit => y ≫ (snd T A).left)
    (fun _ => i) (fun _ _ _ => rfl) (fun _ => hi)
  obtain ⟨J, hJ, e⟩ := exists_good L₀ hL₀ (IsLocalRing.closedPoint C)
    (fun _ : Unit => (y ≫ (snd T A).left) ≫ φ) (fun _ => j) (fun _ _ _ => rfl) (fun _ => hj)
  have q := ht _ y (IsLocalRing.closedPoint C) J J' hJ hJ'
  have q₀ := (sval_of (φ := fun _ : Fin 1 => (snd T₀ G).left) (ε := fun _ => (k : ℤ)) t₀ _ _ J (fun _ => j)
      (fun _ => by rw [e₀]; exact e ())).symm.trans (q.trans (congrArg (_ * ·)
    (sval_of (φ := fun _ : Fin 1 => (snd T A).left) (ε := fun _ => (k : ℤ)) t _ _ J' (fun _ => i)
      (fun _ => e' ()))))
  clear q
  have hw : GlobalTheory.ConstFam.wVal w (IsLocalRing.closedPoint C) J J' (y ≫ (snd T A).left) =
      gw w (y ≫ (snd T A).left) (IsLocalRing.closedPoint C) j i := by
    show gw w (y ≫ (snd T A).left) (IsLocalRing.closedPoint C) (J _) (J' _) = _
    rw [e (), e' ()]
  rw [valR_eq_gs _ _ m₀, valR_eq_gs _ _ m₁, valR_eq_gs _ _ mW, ← map_pow, ← map_mul]
  congr 1
  refine q₀.trans ?_
  rw [hw, gs_unit _ _ _ mW, zpow_natCast, Units.val_pow_eq_pow_val]
  rfl

end GlobalTheory.MBLow.JetBCGen

namespace GlobalTheory.MBLow.JetBCGen

open GlobalTheory.MBLow.JetBC GlobalTheory.ThetaPtMove GlobalTheory.ZH.ThetaData

theorem valR_rigRel {S S' : Scheme.{0}} {G : Over S} [GrpObj G] {A : Over S'} [GrpObj A] {f : S' ⟶ S}
    {φ : A.left ⟶ G.left} {L₀ : LB G.left} {L₁ : LB A.left} {w : LB.Iso L₁ (L₀.pull φ)}
    {ρ₀ : LB.Gen (L₀.pull (eSec G))} {ρ : LB.Gen (L₁.pull (eSec A))}
    (he : eSec A ≫ φ = f ≫ eSec G)
    (hρ : PMaps w (fun _ : PUnit => eSec A) (fun _ => eSec G) (fun _ => 1) ρ ρ₀ f)
    {C : Type} [CommRing C] [IsLocalRing C] (s : Sp C ⟶ S') (j : L₀.ι) (i : L₁.ι)
    (hj : φ ((s ≫ eSec A) (IsLocalRing.closedPoint C)) ∈ L₀.U j)
    (hi : (s ≫ eSec A) (IsLocalRing.closedPoint C) ∈ L₁.U i) :
    valR (s ≫ f) ((L₀.pull (eSec G)).U fun _ => j) (ρ₀.s fun _ => j).val =
      valR (s ≫ eSec A) _ (w.s (fun _ => j, i)).val * valR s ((L₁.pull (eSec A)).U fun _ => i) (ρ.s fun _ => i).val := by
  have q := hρ _ s (IsLocalRing.closedPoint C) (fun _ => j) (fun _ => i) (fun _ => hj) (fun _ => hi)
  rw [Fintype.prod_unique, zpow_one] at q
  have mW : (s ≫ eSec A) (IsLocalRing.closedPoint C) ∈ ((L₀.pull φ).div L₁).U (fun _ => j, i) :=
    ⟨mem_pull.2 hj, hi⟩
  have m₁ : s (IsLocalRing.closedPoint C) ∈ (L₁.pull (eSec A)).U fun _ => i := mem_pull.2 hi
  have m₀ : (s ≫ f) (IsLocalRing.closedPoint C) ∈ (L₀.pull (eSec G)).U fun _ => j := by
    refine mem_pull.2 ?_
    show ((s ≫ f) ≫ eSec G) (IsLocalRing.closedPoint C) ∈ L₀.U j
    rw [Category.assoc, ← he, ← Category.assoc]
    exact hj
  rw [valR_eq_gs _ _ m₀, valR_eq_gs _ _ mW, valR_eq_gs _ _ m₁, ← map_mul]
  congr 1
  rw [gs_unit _ _ _ m₀, gs_unit _ _ _ mW, gs_unit _ _ _ m₁, ← Units.val_mul]
  exact congrArg Units.val q

end GlobalTheory.MBLow.JetBCGen


open GlobalTheory.MBLow.JetBC GlobalTheory.ThetaPtMove GlobalTheory.MBLow.JetBCGen TrivSqZeroExt in
theorem GlobalTheory.MBLow.thJet_of_keyAtMap : ∀ (R K : Type) [CommRing R] [Field K] (f : R →+* K) (x : KeyIn R) (x' : KeyIn K) (φ : x'.P.A.left ⟶ x.P.A.left), KeyAtMap x' x f φ → ∀ (g : ℕ) (hg : x.P.g = g) (hg' : x'.P.g = g) (m : ℕ) (I : Type) (pt : I → (baseOver (Sp R) ⟶ x.P.A)) (pt' : I → (baseOver (Sp K) ⟶ x'.P.A)) (ϑ : I → R) (J : I → Fin g → R), (∀ i, (pt' i).left ≫ φ = spMap f ≫ (pt i).left) → ThJet x hg m pt ϑ J → ThJet x' hg' m pt' (fun i => f (ϑ i)) (fun i j => f (J i j)) := by
  intro R K _ _ f x x' φ hK g hg hg' m I pt pt' ϑ J hpt ⟨th, hth, H⟩
  obtain ⟨he, w, hgg, F, hp, hw, hrig, hθ, hF1, hF2, hv⟩ := hK
  have := x'.P.isAb.comm
  haveI : IsLocalRing (DualNumber K) := isLocalRing_dual K
  let τ : (baseOver (Sp K)).left ⟶ (baseOver (Sp R)).left := spMap f
  have hτ : τ ≫ (baseOver (Sp R)).hom = (baseOver (Sp K)).hom ≫ spMap f := by simp [τ]
  obtain ⟨U₀, t₀, i₀, c, h₁, h₂, h₃⟩ := H
  obtain ⟨th', hth'⟩ := exists_secRel hp τ hτ hw x.P.isLB x'.P.isLB th
  choose t ht using fun a => exists_secRel hp τ hτ hw x.P.isLB x'.P.isLB (t₀ a)
  have hx : ∀ a, τ ≫ (pt a).left = (pt' a).left ≫ φ := fun a => (hpt a).symm
  have hn : ∀ a, pt' a ^ (m ^ 2) = 1 := fun a => by
    have hx' : τ ≫ (U₀ a).pt.left = (pt' a).left ≫ φ := by rw [(h₁ a).1.pt_eq]; exact hx a
    obtain ⟨α, hα, -⟩ := exists_genThrough₂ hp τ hτ hw x.P.isLB x'.P.isLB (psi_tr' hp τ hτ (pt' a) _ hx')
      (U₀ a).φ (U₀ a).isGen
    exact pow_eq_one_of_gen x'.P (m ^ 2) (pt' a) α hα
  choose U hU hU' using fun a => symLift_move hp τ hτ hw x.P.isLB x'.P.isLB (hx a) (hn a) (h₁ a).1
  have hρ : PMaps w (fun _ : PUnit => eSec x'.P.A) (fun _ => eSec x.P.A) (fun _ => 1) x'.rig x.rig (spMap f) :=
    (maps_iff _ _ _ _ _ _ _ _ (rigPull_le φ (spMap f) he x.P.L) (fun _ => rfl)).1 hrig
  let o : Sp K := IsLocalRing.closedPoint K
  have ho : ∀ p : Sp K, p = o := fun p => Subsingleton.elim _ _
  obtain ⟨i₁, hi₁⟩ := exists_chart x'.P.isLB (eSec x'.P.A o)
  have hR : ∀ p : Sp R, eSec x.P.A p ∈ x.P.L.U i₀ := fun p => by
    have := h₂ (Set.mem_univ p); simpa using this
  have hj₁ : φ (eSec x'.P.A o) ∈ x.P.L.U i₀ := by
    have : (eSec x'.P.A ≫ φ) o ∈ x.P.L.U i₀ := by rw [he]; simpa using hR (spMap f o)
    simpa using this
  have tanU : ∀ j, ∀ p : Sp (DualNumber K), (x'.v j).left p = eSec x'.P.A o := fun j p => by
    obtain ⟨q, rfl⟩ := surj_fst K p
    have h := x'.basis.1 j
    rw [ho q]
    exact congrArg (fun r => r o) h
  have tanD : ∀ j, ∀ p : Sp (DualNumber R), (x.v j).left p ∈ x.P.L.U i₀ := fun j p => by
    obtain ⟨q, rfl⟩ := surj_fst R p
    have h := x.basis.1 j
    have e : (x.v j).left ((spMap (TrivSqZeroExt.fstHom R R R).toRingHom) q) = eSec x.P.A q :=
      congrArg (fun r => r q) h
    rw [e]; exact hR q
  let W := ((x.P.L.pull φ).div x'.P.L).U (fun _ => i₀, i₁)
  have mW : ∀ p : Sp K, eSec x'.P.A p ∈ W := fun p => by rw [ho p]; exact ⟨mem_pull.2 hj₁, hi₁⟩
  let y' : Fin g → (Sp (DualNumber K) ⟶ (baseOver (Sp K) ⊗ x'.P.A).left) :=
    fun j => epsLift (x'.v (j.cast hg'.symm))
  let u₁ : Fin g → DualNumber K :=
    fun j => valR (y' j ≫ (snd (baseOver (Sp K)) x'.P.A).left) W (w.s (fun _ => i₀, i₁)).val
  let u₀ : K := valR (𝟙 (Sp K) ≫ eSec x'.P.A) W (w.s (fun _ => i₀, i₁)).val
  let c' : Fin g → K := fun j => f (c j) - ((m ^ 2 : ℕ) : K) * ((u₁ j).snd / u₀)
  refine ⟨th', polAVSectionInverseImage_chartwisePullback hp τ hτ (gs_theta w x.th x'.th hθ) hth' hth, U, t, i₁, c',
    fun a => ⟨hU a, tr_move_gen hp τ hτ hw he hρ hth' (ht a) (hU' a) (h₁ a).2⟩, ?_, fun a j => ?_⟩
  · intro p _
    rw [ho p]
    exact hi₁
  · let j' : Fin x'.P.g := j.cast hg'.symm
    let j₀ : Fin x.P.g := j.cast hg.symm
    have hvj : (x'.v j').left ≫ φ = spMap F ≫ (x.v j₀).left := by
      have e : j'.cast hgg = j₀ := Fin.ext rfl
      have := hv j'
      rw [e] at this
      exact this
    have ys : y' j ≫ (snd (baseOver (Sp K)) x'.P.A).left = (x'.v j').left := by
      show epsLift _ ≫ _ = _
      rw [epsLift, ← Over.comp_left, lift_snd]
    have yf : y' j ≫ (fst (baseOver (Sp K)) x'.P.A).left = spMap (algebraMap K (DualNumber K)) := by
      show epsLift _ ≫ _ = _
      rw [epsLift, ← Over.comp_left, lift_fst]
      rfl
    have ys₀ : epsLift (x.v j₀) ≫ (snd (baseOver (Sp R)) x.P.A).left = (x.v j₀).left := by
      rw [epsLift, ← Over.comp_left, lift_snd]
    have yf₀ : epsLift (x.v j₀) ≫ (fst (baseOver (Sp R)) x.P.A).left = spMap (algebraMap R (DualNumber R)) := by
      rw [epsLift, ← Over.comp_left, lift_fst]
      rfl
    have hy : y' j ≫ psi hp τ hτ = spMap F ≫ epsLift (x.v j₀) := by
      refine psi_ext ?_ ?_
      · rw [Category.assoc, psi_fst', ← Category.assoc, yf, Category.assoc, yf₀]
        show spMap _ ≫ spMap f = _
        rw [spMap_comp_gen, spMap_comp_gen]
        congr 1
        exact RingHom.ext fun a => (hF1 a).symm
      · rw [Category.assoc, psi_snd', ← Category.assoc, ys, hvj, Category.assoc, ys₀]
    have hFl : ∀ b, F (inl b) = inl (f b) := fun b => (map_inl_inr f F hF1 hF2 b 0).1
    have hFr : ∀ b, F (inr b) = inr (f b) := fun b => (map_inl_inr f F hF1 hF2 0 b).2
    have q := h₃ a j
    have top₀ : ⊤ ≤ (epsLift (x.v j₀)) ⁻¹ᵁ
        ((LPow x.P.A x.P.L ((m ^ 2 : ℕ) : ℤ) (Over.mk (𝟙 (Sp R)))).U fun _ => i₀) :=
      fun p _ => Set.mem_iInter.2 fun _ => by
        show (epsLift (x.v j₀) ≫ (snd (baseOver (Sp R)) x.P.A).left) p ∈ x.P.L.U i₀
        rw [ys₀]
        exact tanD j₀ p
    have qF := congrArg F q
    rw [← valR_spMap_comp' F _ _ top₀, ← hy] at qF
    have hiy : (y' j ≫ (snd (baseOver (Sp K)) x'.P.A).left) (IsLocalRing.closedPoint (DualNumber K)) ∈ x'.P.L.U i₁ := by
      rw [ys]; exact (congrArg (· ∈ x'.P.L.U i₁) (tanU j' _)).mpr hi₁
    have hjy : φ ((y' j ≫ (snd (baseOver (Sp K)) x'.P.A).left) (IsLocalRing.closedPoint (DualNumber K))) ∈ x.P.L.U i₀ := by
      rw [ys]; exact (congrArg (fun p => φ p ∈ x.P.L.U i₀) (tanU j' _)).mpr hj₁
    rw [valR_secRel hp τ hτ x.P.isLB x'.P.isLB (ht a) (y' j) i₀ i₁ hjy hiy] at qF
    rw [map_mul, map_add (f := _), hFl, hFl, hFr, map_pow, map_add (f := _), map_mul] at qF

    have topρ : ⊤ ≤ (𝟙 (Sp R)) ⁻¹ᵁ ((x.P.L.pull (eSec x.P.A)).U fun _ => i₀) :=
      fun p _ => mem_pull.2 (hR p)
    have hr := valR_rigRel he hρ (𝟙 (Sp K)) i₀ i₁ hj₁ hi₁
    rw [Category.id_comp, ← Category.comp_id (spMap f), valR_spMap_comp' f _ _ topρ] at hr
    rw [hr] at qF

    have topW : ⊤ ≤ (y' j ≫ (snd (baseOver (Sp K)) x'.P.A).left) ⁻¹ᵁ W := fun p _ => by
      show (y' j ≫ (snd (baseOver (Sp K)) x'.P.A).left) p ∈ W
      rw [ys]
      exact (congrArg (· ∈ W) (tanU j' _)).mpr (mW o)
    have hu : (u₁ j).fst = u₀ := by
      have e := valR_spMap_comp' (TrivSqZeroExt.fstHom K K K).toRingHom _ W topW (w.s (fun _ => i₀, i₁)).val
      show (TrivSqZeroExt.fstHom K K K).toRingHom (valR (y' j ≫ _) W _) = valR (𝟙 (Sp K) ≫ eSec x'.P.A) W _
      rw [← e, ys, x'.basis.1 j', Category.id_comp]
      rfl
    have h0 : u₀ ≠ 0 := by
      have m₀ : (𝟙 (Sp K) ≫ eSec x'.P.A) (IsLocalRing.closedPoint K) ∈ W := mW o
      have : IsUnit u₀ := by
        show IsUnit (valR _ W _)
        rw [GlobalTheory.ZH.ThetaData.valR_eq_gs _ _ m₀, gs_unit _ _ _ m₀]
        exact (Units.isUnit _).map _
      exact this.ne_zero
    have key := dual_solve (m ^ 2) (u₁ j) _ u₀ _ (f (ϑ a)) (f (J a j) + f (c j) * f (ϑ a)) hu h0 qF
    rw [key]
    congr 3
    simp only [c']
    push_cast
    ring
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsJetsBaseChangePolarisedDatum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKeyValueTwoFibresLocalRing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKeyValueTwoFibresLocalRing", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Algebra.Field.Defs\npublic import Mathlib.Algebra.Ring.Hom.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralCoefficients\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.KeyPBIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumFibreOfGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsLieBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKeyDatumPolarisedAbelianLocalDomain\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsScalarMatrixBetweenKeyData\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaConstantsJetsLocalDomain\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsFirstJetsLinearIndependent\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsJetsBaseChangePolarisedDatum\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsJetsChangeSectionBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section
namespace GlobalTheory.MBLow

theorem frame_coords_lift {W K₀ K₁ : Type} [CommRing W] [IsDomain W] [Field K₀] [Field K₁] (i₀ : W →+* K₀) (i₁ : W →+* K₁)
    (hi₀ : Function.Injective i₀) (hi₁ : ∀ a, i₁ a ≠ 0 → IsUnit a) {I : Type} {g : ℕ} (ϑ ϑ' : I → W)
    (J J' : I → Fin g → W)
    (hind : ∀ (c₀ : K₁) (c : Fin g → K₁), (∀ i, c₀ * i₁ (ϑ' i) + ∑ j, c j * i₁ (J' i j) = 0) → c₀ = 0 ∧ c = 0)
    (a₀ : K₀) (M₀ : Matrix (Fin g) (Fin g) K₀) (c₀ : Fin g → K₀)
    (h0ϑ : ∀ i, i₀ (ϑ i) = a₀ * i₀ (ϑ' i))
    (h0J : ∀ i j, i₀ (J i j) = a₀ * ∑ l, M₀ j l * i₀ (J' i l) + c₀ j * i₀ (ϑ' i))
    (a₁ : K₁) (M₁ : Matrix (Fin g) (Fin g) K₁) (c₁ : Fin g → K₁) (ha₁ : a₁ ≠ 0)
    (h1ϑ : ∀ i, i₁ (ϑ i) = a₁ * i₁ (ϑ' i))
    (h1J : ∀ i j, i₁ (J i j) = a₁ * ∑ l, M₁ j l * i₁ (J' i l) + c₁ j * i₁ (ϑ' i)) :
    ∃ (a : W) (M : Matrix (Fin g) (Fin g) W), i₀ a = a₀ ∧ i₁ a = a₁ ∧ i₀.mapMatrix M = M₀ ∧
      i₁.mapMatrix M = M₁ := by
  let u : I → Option (Fin g) → W := fun i o => Option.elim o (ϑ' i) (J' i)
  have hind' : ∀ c : Option (Fin g) → K₁, (∀ i, ∑ l, c l * i₁ (u i l) = 0) → c = 0 := by
    intro c hc
    obtain ⟨h1, h2⟩ := hind (c none) (fun j => c (some j)) (fun i => by simpa [Fintype.sum_option, u] using hc i)
    funext o
    cases o with
    | none => exact h1
    | some j => exact congrFun h2 j
  obtain ⟨z, hz, hϑz⟩ := _root_.GlobalTheory.NonzeroDeterminantIntegrality.integral_coefficients W K₀ K₁ i₀ i₁ hi₀ hi₁ I (Option (Fin g)) u hind' ϑ
    (fun o => Option.elim o a₀ 0) (fun i => by simp [Fintype.sum_option, u, h0ϑ])
  have hz0 : ∀ j, z (some j) = 0 := fun j => hi₀ (by simpa using hz (some j))
  have ha₀ : i₀ (z none) = a₀ := by simpa using hz none
  have ha : i₁ (z none) = a₁ := by
    have := hind (i₁ (z none) - a₁) 0 (fun i => by
      have e := congrArg i₁ (hϑz i)
      simp only [Fintype.sum_option, hz0, zero_mul, Finset.sum_const_zero, add_zero, map_mul, h1ϑ, u,
        Option.elim_none] at e
      simp only [Pi.zero_apply, zero_mul, Finset.sum_const_zero, add_zero]
      linear_combination -e)
    exact sub_eq_zero.1 this.1
  have hN : ∀ j, ∃ N : Option (Fin g) → W, (∀ o, i₀ (N o) = Option.elim o (c₀ j) (fun l => a₀ * M₀ j l)) ∧
      ∀ i, J i j = ∑ o, N o * u i o := by
    intro j
    exact _root_.GlobalTheory.NonzeroDeterminantIntegrality.integral_coefficients W K₀ K₁ i₀ i₁ hi₀ hi₁ I (Option (Fin g)) u hind' (fun i => J i j) _ (fun i => by
      simp [Fintype.sum_option, u, h0J, Finset.mul_sum, _root_.mul_assoc]; ring)
  choose N hN0 hNJ using hN
  have hN1 : ∀ j l, i₁ (N j (some l)) = a₁ * M₁ j l := by
    intro j
    have := hind (i₁ (N j none) - c₁ j) (fun l => i₁ (N j (some l)) - a₁ * M₁ j l) (fun i => by
      have e := congrArg i₁ (hNJ j i)
      rw [h1J] at e

      simp only [Fintype.sum_option, u, Option.elim_none, Option.elim_some, map_add (f := _), map_sum, map_mul, Finset.mul_sum] at e
      simp only [sub_mul, Finset.sum_sub_distrib, _root_.mul_assoc]
      linear_combination -e)
    intro l
    exact sub_eq_zero.1 (congrFun this.2 l)
  obtain ⟨v, hv⟩ := hi₁ (z none) (by rw [ha]; exact ha₁)
  have hne₀ : a₀ ≠ 0 := by rw [← ha₀, ← hv]; exact (v.map i₀.toMonoidHom).ne_zero
  refine ⟨z none, Matrix.of fun j l => ↑v⁻¹ * N j (some l), ha₀, ha, ?_, ?_⟩
  · ext j l
    have h1 : i₀ (↑v⁻¹ : W) = a₀⁻¹ := by
      rw [← ha₀, ← hv]; exact map_units_inv i₀ v
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, map_mul, h1, Option.elim_some, hN0]
    field_simp
  · ext j l
    have h1 : i₁ (↑v⁻¹ : W) = a₁⁻¹ := by
      rw [← ha, ← hv]; exact map_units_inv i₁ v
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, map_mul, h1, hN1]
    field_simp

theorem thJet_frameChange_castDim {K : Type} [Field K] [CharZero K] (x : KeyIn K) (th : x.P.L.Sec) (hth) (v : Fin x.P.g → (epsR K ⟶ x.P.A)) (hv)
    (a : K) (M : Matrix (Fin x.P.g) (Fin x.P.g) K)
    (hth' : ∀ i, LB.Sec.f x.th i = constFn x.P.A.hom _ a * LB.Sec.f th i) (hv' : ∀ i, IsLieComb (M i) v (x.v i))
    {g : ℕ} (hg : x.P.g = g) (m : ℕ) (hm : Odd m) {I : Type} (pt : I → (baseOver (Sp K) ⟶ x.P.A)) (ϑ ϑ' : I → K)
    (J J' : I → Fin g → K)
    (h1 : ThJet ⟨x.P, x.g_pos, x.rig, x.rig_gen, th, hth, v, hv⟩ hg m pt ϑ J) (h2 : ThJet x hg m pt ϑ' J') :
    (∀ i, ϑ' i = a * ϑ i) ∧ ∃ c : Fin g → K, ∀ i j,
      J' i j = a * ∑ l, M.reindex (finCongr hg) (finCongr hg) j l * J i l + c j * ϑ i := by
  cases x
  subst hg
  have hm0 : (m : K) ≠ 0 := Nat.cast_ne_zero.2 (by rintro rfl; exact (Nat.not_odd_zero hm))
  simpa using _root_.GlobalTheory.MBLow.JetUniq.thJet_change K _ _ _ _ th hth v hv _ _ _ _ a M hth' hv' m hm hm0 I pt ϑ ϑ' J J' h1 h2

theorem keyValue_twoFibres : ∀ κ : Rule, Rule4 κ → ∀ (W : Type) [CommRing W] [IsDomain W] [IsNoetherianRing W] [IsLocalRing W] [IsIntegrallyClosed W] [CharZero W] (K₀ K₁ : Type) [Field K₀] [CharZero K₀] [Field K₁] [IsAlgClosed K₁] [CharZero K₁] (i₀ : W →+* K₀) (i₁ : W →+* K₁), Function.Injective i₀ → (∀ a, i₁ a ≠ 0 → IsUnit a) → ∀ (P : PolAV (Sp W)) (x₀ : KeyIn K₀) (x₁ : KeyIn K₁) (g : ℕ) (h₀ : x₀.P.g = g) (h₁ : x₁.P.g = g) (m : ℕ), P.g = g → Odd m → 3 ≤ m → ∀ (I : Type) (pt : I → (baseOver (Sp W) ⟶ P.A)) (p₀ : I → (baseOver (Sp K₀) ⟶ x₀.P.A)) (p₁ : I → (baseOver (Sp K₁) ⟶ x₁.P.A)) (φ₀ : x₀.P.A.left ⟶ P.A.left) (φ₁ : x₁.P.A.left ⟶ P.A.left), (∀ a, pt a ^ (m ^ 2) = 1) → IsGrpPullback x₀.P.A P.A (spMap i₀) φ₀ → IsGrpPullback x₁.P.A P.A (spMap i₁) φ₁ → LBIso x₀.P.L (P.L.pull φ₀) → LBIso x₁.P.L (P.L.pull φ₁) → (∀ a, (p₀ a).left ≫ φ₀ = spMap i₀ ≫ (pt a).left) → (∀ a, (p₁ a).left ≫ φ₁ = spMap i₁ ≫ (pt a).left) → (∀ z : baseOver (Sp K₁) ⟶ x₁.P.A, z ^ (m ^ 2) = 1 → ∃ a, p₁ a = z) → ∀ (ϑ : I → W) (J : I → Fin g → W) (k : W), ThJet x₀ h₀ m p₀ (fun a => i₀ (ϑ a)) (fun a j => i₀ (J a j)) → ThJet x₁ h₁ m p₁ (fun a => i₁ (ϑ a)) (fun a j => i₁ (J a j)) → (κ K₀ x₀ : K₀) = i₀ k → (κ K₁ x₁ : K₁) = i₁ k := by
  intro κ hκ W _ _ _ _ _ _ K₀ K₁ _ _ _ _ _ i₀ i₁ hi₀ hi₁ P x₀ x₁ g h₀ h₁ m hP hm hm3 I pt p₀ p₁ φ₀ φ₁ hpt hpb₀ hpb₁
    hL₀ hL₁ hc₀ hc₁ hsurj ϑ J k hJ₀ hJ₁ hk
  obtain ⟨hHom, -, -, hFam⟩ := hκ
  have hPg : 1 ≤ P.g := hP ▸ h₀ ▸ x₀.g_pos
  obtain ⟨y, rfl⟩ := _root_.GlobalTheory.MBLow.exists_keyIn_local W P hPg
  have hmu : IsUnit (m : W) := hi₁ _ (by rw [map_natCast]; exact_mod_cast (show m ≠ 0 by omega))
  obtain ⟨ϑ', J', hy⟩ := _root_.GlobalTheory.MBLow.exists_thJet_local W y g hP m hm hmu I pt hpt
  obtain ⟨th₀, hth₀, v₀, hv₀, hA₀⟩ := _root_.GlobalTheory.MBLow.exists_keyAtMap_of_isGrpPullback W K₀ i₀ y x₀.P φ₀ x₀.g_pos x₀.rig x₀.rig_gen (h₀.trans hP.symm) hpb₀ hL₀
  obtain ⟨th₁, hth₁, v₁, hv₁, hA₁⟩ := _root_.GlobalTheory.MBLow.exists_keyAtMap_of_isGrpPullback W K₁ i₁ y x₁.P φ₁ x₁.g_pos x₁.rig x₁.rig_gen (h₁.trans hP.symm) hpb₁ hL₁
  have hJy₀ := _root_.GlobalTheory.MBLow.thJet_of_keyAtMap W K₀ i₀ y ⟨x₀.P, x₀.g_pos, x₀.rig, x₀.rig_gen, th₀, hth₀, v₀, hv₀⟩ φ₀ hA₀ g hP h₀ m I pt p₀ ϑ' J' hc₀ hy
  have hJy₁ := _root_.GlobalTheory.MBLow.thJet_of_keyAtMap W K₁ i₁ y ⟨x₁.P, x₁.g_pos, x₁.rig, x₁.rig_gen, th₁, hth₁, v₁, hv₁⟩ φ₁ hA₁ g hP h₁ m I pt p₁ ϑ' J' hc₁ hy
  obtain ⟨a₀, M₀, ha₀, hth0, hv0⟩ := _root_.GlobalTheory.MBLow.TwoData.exists_scalar_matrix K₀ x₀.P th₀ x₀.th v₀ x₀.v hth₀ x₀.th_ne hv₀ x₀.basis
  obtain ⟨a₁, M₁, ha₁, hth1, hv1⟩ := _root_.GlobalTheory.MBLow.TwoData.exists_scalar_matrix K₁ x₁.P th₁ x₁.th v₁ x₁.v hth₁ x₁.th_ne hv₁ x₁.basis
  obtain ⟨hu0ϑ, c₀, hu0J⟩ := thJet_frameChange_castDim x₀ th₀ hth₀ v₀ hv₀ a₀ M₀ hth0 hv0 h₀ m hm p₀ _ _ _ _ hJy₀ hJ₀
  obtain ⟨hu1ϑ, c₁, hu1J⟩ := thJet_frameChange_castDim x₁ th₁ hth₁ v₁ hv₁ a₁ M₁ hth1 hv1 h₁ m hm p₁ _ _ _ _ hJy₁ hJ₁
  have hind := _root_.GlobalTheory.MBLow.TRank.main K₁ ⟨x₁.P, x₁.g_pos, x₁.rig, x₁.rig_gen, th₁, hth₁, v₁, hv₁⟩ g h₁ m hm hm3 I p₁ hsurj _ _ hJy₁
  obtain ⟨u, hu⟩ := hFam W y
  have hκy₀ := hu K₀ i₀ ⟨x₀.P, x₀.g_pos, x₀.rig, x₀.rig_gen, th₀, hth₀, v₀, hv₀⟩ ⟨φ₀, hA₀⟩
  have hκy₁ := hu K₁ i₁ ⟨x₁.P, x₁.g_pos, x₁.rig, x₁.rig_gen, th₁, hth₁, v₁, hv₁⟩ ⟨φ₁, hA₁⟩
  have hH₀ := hHom K₀ x₀.P x₀.g_pos x₀.rig x₀.rig_gen th₀ hth₀ v₀ hv₀ x₀.th x₀.th_ne x₀.v x₀.basis a₀ M₀ hth0 hv0
  have hH₁ := hHom K₁ x₁.P x₁.g_pos x₁.rig x₁.rig_gen th₁ hth₁ v₁ hv₁ x₁.th x₁.th_ne x₁.v x₁.basis a₁ M₁ hth1 hv1
  obtain ⟨a, M, ha0, ha1, hM0, hM1⟩ := frame_coords_lift i₀ i₁ hi₀ hi₁ ϑ ϑ' J J' hind a₀ _ c₀ hu0ϑ hu0J a₁ _ c₁ ha₁ hu1ϑ hu1J
  have H₀ : a₀ ^ 8 * (κ K₀ x₀ : K₀) = M₀.det ^ 4 * i₀ u := by rw [← hκy₀]; simpa using hH₀
  have H₁ : a₁ ^ 8 * (κ K₁ x₁ : K₁) = M₁.det ^ 4 * i₁ u := by rw [← hκy₁]; simpa using hH₁
  have e0 : a ^ 8 * k = M.det ^ 4 * u := by
    apply hi₀
    rw [map_mul, map_mul, map_pow, map_pow, ha0, RingHom.map_det, hM0, Matrix.det_reindex_self, ← hk, H₀]
  have e1 := congrArg i₁ e0
  rw [map_mul, map_mul, map_pow, map_pow, ha1, RingHom.map_det, hM1, Matrix.det_reindex_self, ← H₁] at e1
  exact (mul_left_cancel₀ (pow_ne_zero 8 ha₁) e1).symm

end GlobalTheory.MBLow
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKeyValueTwoFibresLocalRing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKeyValueTwoFibresLocalRingStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKeyValueTwoFibresLocalRingStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsPolAVSectionInverseImage\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKeyValueTwoFibresLocalRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt\nimport ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.EllipsoidStA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.KeyCl GlobalTheory.Ex GlobalTheory.MBLow GlobalTheory.SecJet
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKeyValueTwoFibresLocalRingStatement =====
