module

public import Mathlib.Algebra.Module.Projective
public import Mathlib.LinearAlgebra.Dimension.Finrank
public import Mathlib.RingTheory.Finiteness.Defs
public import Mathlib.RingTheory.Ideal.Quotient.Operations
public import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
public import Mathlib.LinearAlgebra.TensorProduct.Quotient
public import Mathlib.RingTheory.Finiteness.Nakayama
public import Mathlib.RingTheory.TensorProduct.Basic
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
public import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartPullbackLineBundleTransitionEqAppLE
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldImageOpenImmersion
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ReductionEqBasePoint
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianTripleMapIsOpenImmersionOpensRange
public import Formalism.LocalToGlobal.ProjectiveLattices.IsChartIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentBasisMovesAlongSemiAbelianTripleMap
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSabCancel
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechKodairaSpencerClassAbelianTriple
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfIsTranslate
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentTranslateLiftsSemiAbelianTripleMapStatement
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ToroidalCompactificationBis
public import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericPointLogKodairaSpencerFrameChange
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerRegularNearRigidBoundaryPointStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLogVectorFieldBasisToroidalModelSnc
public import Mathlib.Algebra.Module.LocalizedModule.Basic
public import Mathlib.GroupTheory.MonoidLocalization.Away
public import Mathlib.RingTheory.Spectrum.Prime.Defs
public import Mathlib.RingTheory.LocalProperties.FinitePresentation
public import Mathlib.Algebra.Module.FinitePresentation
public import Mathlib.RingTheory.Flat.EquationalCriterion
public import Mathlib.RingTheory.Flat.Localization
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtLAlgebraMap
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowSmulEqLogDerivationExtendLocalizationAw
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowSmulEqOfLogDerivationExtendEq
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqZeroOfForallField
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdealStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SymmetricBalancedTensorsFiniteProjectiveRankDimStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidBoundaryChartsForFanUnitaryDatumStatement
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect
import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.NonemptyIsLimitBaseChange
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FramedPointReducedFromTestRing
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemNonzeroLocusIffPowFn
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.RelAmpleOfLocallyOnBase
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Definitions.Degenerations.MorAlgSt
import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.AuxiliaryInertOddPrime
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt
import ReciprocityTheory.AnalyticForms.RegularLocalRings.JacChartA
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfField
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.CubePullbacks.CubePull
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChartFrameBaseHolds
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.RingTheory.TotallySplit
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.FlatBCSec
import Mathlib.Algebra.Azumaya.Basic
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidChartDualNumberDeformation
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateUnique

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BijectiveOfInjectiveModMaximal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualMapComp, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperAmpleKTriv, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PullbackModelArcIntegral, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerInteriorAffineOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerInteriorAffineOpenStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenInfInterior, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerRegularFramedAffine, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteOfLocallyFiniteFreeLocalizations, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalizedModuleRes, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerIsoSmoothSncToroidalModel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToroidalFanKodairaSpencerOfRigidBoundaryCharts, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToroidalCompactificationFanLogKodairaSpencerIso

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BijectiveOfInjectiveModMaximal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.BijectiveOfInjectiveModMaximal", "h": "module\n\npublic import Mathlib.Algebra.Module.Projective\npublic import Mathlib.LinearAlgebra.Dimension.Finrank\npublic import Mathlib.RingTheory.Finiteness.Defs\npublic import Mathlib.RingTheory.Ideal.Quotient.Operations\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas\npublic import Mathlib.LinearAlgebra.TensorProduct.Quotient\npublic import Mathlib.RingTheory.Finiteness.Nakayama\npublic import Mathlib.RingTheory.TensorProduct.Basic\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct

namespace GlobalTheory.ProjBij

theorem eq_bot_of_forall_le_smul {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    (K : Submodule R M) (hK : K.FG) (h : ∀ m : Ideal R, m.IsMaximal → K ≤ m • K) : K = ⊥ := by
  rw [← Submodule.annihilator_eq_top_iff]
  by_contra hne
  obtain ⟨m, hm, hle⟩ := Ideal.exists_le_maximal _ hne
  obtain ⟨r, hr, hr0⟩ :=
    Submodule.exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul m K hK (h m hm)
  have h1 : r ∈ m := hle (Submodule.mem_annihilator.2 hr0)
  apply hm.ne_top
  rw [Ideal.eq_top_iff_one]
  have := m.sub_mem h1 hr
  simpa using this

theorem one_tmul_eq_zero_iff {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    (m : Ideal R) (x : M) :
    ((1 : R ⧸ m) ⊗ₜ[R] x : (R ⧸ m) ⊗[R] M) = 0 ↔ x ∈ m • (⊤ : Submodule R M) := by
  rw [← (TensorProduct.quotTensorEquivQuotSMul M m).map_eq_zero_iff,
    TensorProduct.quotTensorEquivQuotSMul_mk_one_tmul, Submodule.Quotient.mk_eq_zero]

theorem exists_one_tmul {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    (m : Ideal R) (y : (R ⧸ m) ⊗[R] M) : ∃ x : M, (1 : R ⧸ m) ⊗ₜ[R] x = y :=
  TensorProduct.mk_surjective R M (R ⧸ m) Ideal.Quotient.mk_surjective y

theorem bijective_of_injective_mod_maximal
    (R M N : Type) [CommRing R] [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]
    [Module.Finite R M] [Module.Projective R M] [Module.Finite R N] [Module.Projective R N]
    (f : M →ₗ[R] N)
    (hrk : ∀ m : Ideal R, m.IsMaximal →
      Module.finrank (R ⧸ m) ((R ⧸ m) ⊗[R] M) = Module.finrank (R ⧸ m) ((R ⧸ m) ⊗[R] N))
    (hinj : ∀ m : Ideal R, m.IsMaximal → ∀ x, f x ∈ m • (⊤ : Submodule R N) →
      x ∈ m • (⊤ : Submodule R M)) :
    Function.Bijective f := by
  have hsurj : Function.Surjective f := by
    have key : (⊤ : Submodule R (N ⧸ LinearMap.range f)) = ⊥ := by
      apply eq_bot_of_forall_le_smul _ Module.Finite.fg_top
      intro m hm y _
      letI := Ideal.Quotient.field m
      have hi : Function.Injective (f.baseChange (R ⧸ m)) := by
        set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
        intro z hz
        obtain ⟨x, rfl⟩ := exists_one_tmul m z
        rw [LinearMap.baseChange_tmul, one_tmul_eq_zero_iff] at hz
        exact (one_tmul_eq_zero_iff m x).2 (hinj m hm x hz)
      have hs := (LinearMap.injective_iff_surjective_of_finrank_eq_finrank (hrk m hm)).1 hi
      obtain ⟨n, rfl⟩ := Submodule.Quotient.mk_surjective _ y
      obtain ⟨z, hz⟩ := hs (1 ⊗ₜ n)
      obtain ⟨x, rfl⟩ := exists_one_tmul m z
      rw [LinearMap.baseChange_tmul, ← sub_eq_zero, ← TensorProduct.tmul_sub,
        one_tmul_eq_zero_iff] at hz
      have h2 := Submodule.mem_map_of_mem (f := (LinearMap.range f).mkQ) hz
      rw [Submodule.map_smul''] at h2
      have h3 := Submodule.smul_mono (le_refl m) le_top h2
      have h4 : (LinearMap.range f).mkQ (f x) = 0 :=
        (Submodule.Quotient.mk_eq_zero _).2 (LinearMap.mem_range_self f x)
      rw [map_sub, h4, zero_sub] at h3
      exact (Submodule.neg_mem_iff _).1 h3
    intro n
    have : (Submodule.Quotient.mk n : N ⧸ LinearMap.range f) ∈ (⊥ : Submodule R _) := by
      rw [← key]; trivial
    rw [Submodule.mem_bot, Submodule.Quotient.mk_eq_zero] at this
    exact this
  refine ⟨?_, hsurj⟩
  obtain ⟨s, hs⟩ := Module.projective_lifting_property f LinearMap.id hsurj
  have hs' : ∀ n, f (s n) = n := fun n => LinearMap.congr_fun hs n
  let p : M →ₗ[R] M := LinearMap.id - s ∘ₗ f
  have hp : Submodule.map p ⊤ = LinearMap.ker f := by
    apply le_antisymm
    · rintro _ ⟨x, -, rfl⟩
      simp [p, hs']
    · intro x hx
      exact ⟨x, trivial, by simp [p, LinearMap.mem_ker.1 hx]⟩
  rw [← LinearMap.ker_eq_bot]
  apply eq_bot_of_forall_le_smul
  · rw [← hp]; exact Module.Finite.fg_top.map p
  · intro m hm x hx
    have hx0 : f x = 0 := hx
    have h1 := hinj m hm x (by rw [hx0]; exact Submodule.zero_mem _)
    have h2 := Submodule.mem_map_of_mem (f := p) h1
    rw [Submodule.map_smul'', hp] at h2
    simpa [p, hx0] using h2

end GlobalTheory.ProjBij
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BijectiveOfInjectiveModMaximal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualMapComp =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualMapComp", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\nimport Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.NonemptyIsLimitBaseChange\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FramedPointReducedFromTestRing\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.LogKSUp

theorem chart_res' {X : Scheme.{0}} (U W : X.affineOpens) (h : W.1 ≤ U.1) :
    spMap (X.presheaf.map (homOfLE h).op).hom ≫ GlobalTheory.LogKS.chart U = GlobalTheory.LogKS.chart W :=
  U.2.map_fromSpec W.2 (homOfLE h).op

theorem exists_factor {X : Scheme.{0}} (U W : X.affineOpens) (h : W.1 ≤ U.1) {S : Type} [CommRing S]
    (φ : Γ(X, U.1) →+* S) (hr : ∀ z, (spMap φ ≫ GlobalTheory.LogKS.chart U) z ∈ W.1) :
    ∃ φ' : Γ(X, W.1) →+* S, φ = φ'.comp (X.presheaf.map (homOfLE h).op).hom := by
  have hr' : Set.range (spMap φ ≫ GlobalTheory.LogKS.chart U) ⊆ Set.range (GlobalTheory.LogKS.chart W) := by
    show _ ⊆ Set.range (IsAffineOpen.fromSpec W.2)
    rw [W.2.range_fromSpec]
    rintro _ ⟨z, rfl⟩
    exact hr z
  have : IsOpenImmersion (GlobalTheory.LogKS.chart W) := W.2.isOpenImmersion_fromSpec
  have : IsOpenImmersion (GlobalTheory.LogKS.chart U) := U.2.isOpenImmersion_fromSpec
  obtain ⟨ψ, hψ⟩ : ∃ ψ : Sp S ⟶ Sp Γ(X, W.1), ψ ≫ GlobalTheory.LogKS.chart W = spMap φ ≫ GlobalTheory.LogKS.chart U :=
    ⟨IsOpenImmersion.lift (GlobalTheory.LogKS.chart W) _ hr', IsOpenImmersion.lift_fac _ _ _⟩
  refine ⟨(Spec.preimage ψ).hom, ?_⟩
  have hfac : spMap (Spec.preimage ψ).hom ≫ GlobalTheory.LogKS.chart W = spMap φ ≫ GlobalTheory.LogKS.chart U := by
    simp only [spMap, CommRingCat.ofHom_hom, Spec.map_preimage]
    exact hψ
  rw [← chart_res' U W h, ← Category.assoc, _root_.GlobalTheory.spMap_comp_ring] at hfac
  have h2 := Spec.map_inj.1 ((cancel_mono (GlobalTheory.LogKS.chart U)).1 hfac)
  simpa using (congrArg CommRingCat.Hom.hom h2).symm

end GlobalTheory.LogKSUp

namespace GlobalTheory.LogKSUp

theorem isKS_of_inf : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Scheme.{0}) (t : SAB H X) (V : X.Opens) (U W : X.affineOpens) (hW : W.1 = U.1 ⊓ V) (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(X, U.1)) ⟶ t.G.left)) (D : Γ(X, U.1) → Γ(X, U.1)) (DW : Γ(X, W.1) → Γ(X, W.1)) (Θ : Matrix (Fin n) (Fin n) Γ(X, U.1)), (∀ r, DW ((X.presheaf.map (homOfLE (hW.le.trans inf_le_left)).op).hom r) = (X.presheaf.map (homOfLE (hW.le.trans inf_le_left)).op).hom (D r)) → IsKS t V W (fun i => spMap (dualMap (X.presheaf.map (homOfLE (hW.le.trans inf_le_left)).op).hom) ≫ v i) DW ((X.presheaf.map (homOfLE (hW.le.trans inf_le_left)).op).hom.mapMatrix Θ) → IsKS t V U v D Θ := by
  intro E _ _ _ H X t V U W hW n v D DW Θ hD ⟨J, Wc, j, d, hsup, hj, hfld, hcomp, htest⟩
  have hWU : W.1 ≤ U.1 := hW.le.trans inf_le_left
  have hWW : ∀ i, Wc i ≤ t.G.hom ⁻¹ᵁ W.1 := fun i =>
    (le_iSup Wc i).trans (hsup.le.trans (t.G.hom.preimage_mono inf_le_left))
  refine ⟨J, Wc, j, d, ?_, hj, hfld, fun i h r => ?_, fun i i' O hO f S _ φ g₀ w hg₀ hO' hw => ?_⟩
  · rw [hsup, hW, inf_assoc, inf_idem]
  · have e : ∀ r : Γ(X, U.1), (t.G.hom.appLE U.1 (Wc i) h).hom r =
        (t.G.hom.appLE W.1 (Wc i) (hWW i)).hom ((X.presheaf.map (homOfLE hWU).op).hom r) := by
      intro r
      exact (congrArg (fun k => k.hom r) (t.G.hom.map_appLE (hWW i) (homOfLE hWU).op)).symm
    rw [e, e, hcomp i (hWW i), hD]
  · have hr : ∀ z, (spMap φ ≫ GlobalTheory.LogKS.chart U) z ∈ W.1 := by
      intro z
      rw [← hg₀]
      have hz : g₀ z ∈ O := hO' (show z ∈ (⊤ : (Sp S).Opens) from trivial)
      exact hWW i (inf_le_left (a := Wc i) (b := Wc i') (hO hz))
    obtain ⟨φ', hfac⟩ := exists_factor U W hWU φ hr
    have hg₀' : g₀ ≫ t.G.hom = spMap φ' ≫ GlobalTheory.LogKS.chart W := by
      rw [hg₀, hfac, ← _root_.GlobalTheory.spMap_comp_ring, Category.assoc, chart_res']
    have := htest i i' O hO f S φ' g₀ w hg₀' hO' fun a => by
      obtain ⟨g', v', h₁, h₂, h₃⟩ := hw a
      refine ⟨g', v', h₁, ?_, h₃⟩
      rw [h₂, ← Category.assoc, _root_.GlobalTheory.spMap_comp_ring, _root_.GlobalTheory.Frames.Glue.dual_comp, ← hfac]
    rw [this]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
    rw [hfac]
    rfl

end GlobalTheory.LogKSUp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualMapComp =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperAmpleKTriv =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperAmpleKTriv", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemNonzeroLocusIffPowFn\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.RelAmpleOfLocallyOnBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.KSObj

def chartPullComp {X X' Y' : Scheme.{0}} (L : LB X) (F : X' ⟶ X) (h : Y' ⟶ X') :
    ChartPull (L.pull (h ≫ F)) (L.pull F) h :=
  have hm : ∀ (y : Y') (J : PUnit → L.ι), y ∈ (L.pull (h ≫ F)).U J → h y ∈ (L.pull F).U J := fun y J hy =>
    (mem_pull (L := L) (F := F) (x := h y) (J := J)).2 ((mem_pull (L := L) (F := h ≫ F) (x := y) (J := J)).1 hy)
  { idx := fun J => J
    le := fun J y hy => hm y J hy
    g := fun y J J' hj hj' => (gm_pull_g L (h ≫ F) (𝟙 _) y J J' hj hj').trans
      (by rw [Category.id_comp]; exact (gm_pull_g L F h y J J' (hm y J hj) (hm y J' hj')).symm) }

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem relAmple_of_map {S X : Scheme.{0}} {t : SAB H X} {u : SAB H S} {f : X ⟶ S} (m : SABMap t u f)
    (hp : IsProper u.G.hom) (hA : Out.RelAmple u.G u.PP.L) : Out.RelAmple t.G t.PP.L := by
  have hpt : IsProper t.G.hom := MorphismProperty.of_isPullback m.cart.1 hp
  obtain ⟨w, hw, -⟩ := m.lin
  refine GlobalTheory.AmpleLocal.relAmple_of_locally X t.G t.PP.L t.PP.isLB inferInstance inferInstance fun x => ?_
  obtain ⟨V, hV, hx, -⟩ := exists_isAffineOpen_mem_and_subset (X := S) (U := ⊤) (x := f x) trivial
  refine ⟨f ⁻¹ᵁ V, hx, ?_⟩
  have Hp : IsPullback ((t.G.hom ⁻¹ᵁ (f ⁻¹ᵁ V)).ι ≫ m.φ) (t.G.hom ∣_ (f ⁻¹ᵁ V)) u.G.hom ((f ⁻¹ᵁ V).ι ≫ f) :=
    (isPullback_morphismRestrict t.G.hom (f ⁻¹ᵁ V)).flip.paste_horiz m.cart.1
  obtain ⟨w', hw'⟩ : LBIso (t.PP.L.pull (t.G.hom ⁻¹ᵁ (f ⁻¹ᵁ V)).ι)
      (u.PP.L.pull ((t.G.hom ⁻¹ᵁ (f ⁻¹ᵁ V)).ι ≫ m.φ)) :=
    LBIso.chartPull (chartPullPull t.PP.L _) (chartPullComp u.PP.L m.φ _) ⟨w, hw⟩
  exact relAmple_pull (A' := Over.mk (t.G.hom ∣_ (f ⁻¹ᵁ V))) Hp u.PP.isLB (pull_isLB t.PP.isLB _)
    ((isGen_iff w').1 hw') V hV (fun y => y.2) hA

theorem proper_ample_kTriv {Dw : Datum H} {l : Geo.Tor.Level H} {B : Type} [CommRing B] {b : Base l B}
    {S : Scheme.{0}} {s : S ⟶ Sp B} (o : Obj Dw l b s) {X : Scheme.{0}} {t : SAB H X} {f : X ⟶ S}
    (m : SABMap t o.t f) :
    IsProper t.G.hom ∧ Out.RelAmple t.G t.PP.L ∧ Out.KTriv t.G t.PP.L := by
  obtain ⟨w, hw, -⟩ := m.lin
  exact ⟨MorphismProperty.of_isPullback m.cart.1 o.proper, relAmple_of_map m o.proper o.ample,
    kTriv_pull m.cart o.t.PP.isLB t.PP.isLB ((isGen_iff w).1 hw) o.ktriv⟩

end GlobalTheory.KSObj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperAmpleKTriv =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PullbackModelArcIntegral =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PullbackModelArcIntegral", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSabCancel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.MorAlgSt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.ModuliSpaces.AuxiliaryInertOddPrime\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\nimport ReciprocityTheory.AnalyticForms.RegularLocalRings.JacChartA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits NumberField IsLocalRing TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R Formalism.L2.Pj
open GlobalTheory.Toroidal GlobalTheory.Models GlobalTheory.LN GlobalTheory.ShFam GlobalTheory.LocM GlobalTheory.TorRef
open MonoidalCategory CartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.ArcChartExt

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem sabMap_cast_φ {S S' : Scheme.{0}} {t : SAB H S} {t' : SAB H S'} {f₁ f₂ : S' ⟶ S} (h : f₁ = f₂)
    (n : SABMap t' t f₁) : (h ▸ n).φ = n.φ := by
  subst h; rfl

theorem exists_sab_cancel_id {S S' : Scheme.{0}} {t : SAB H S} {t' t'' : SAB H S'} {f : S' ⟶ S}
    (m : SABMap t' t f) (n : SABMap t'' t f) : ∃ m' : SABMap t'' t' (𝟙 S'), n.φ = m'.φ ≫ m.φ := by
  obtain ⟨m', hm'⟩ := GlobalTheory.ObjMaps.exists_sab_cancel (g := 𝟙 S') m ((Category.id_comp f).symm ▸ n)
  exact ⟨m', (sabMap_cast_φ (Category.id_comp f).symm n).symm.trans hm'⟩

end GlobalTheory.ArcChartExt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PullbackModelArcIntegral =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerInteriorAffineOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerInteriorAffineOpen", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartPullbackLineBundleTransitionEqAppLE\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechKodairaSpencerClassAbelianTriple\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldImageOpenImmersion\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfIsTranslate\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperAmpleKTriv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ReductionEqBasePoint\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianTripleMapIsOpenImmersionOpensRange\npublic import Formalism.LocalToGlobal.ProjectiveLattices.IsChartIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentBasisMovesAlongSemiAbelianTripleMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentTranslateLiftsSemiAbelianTripleMapStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PullbackModelArcIntegral\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.CubePullbacks.CubePull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.KSInterior

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem exists_sab_chartPull {S S' : Scheme.{0}} (f : S' ⟶ S) (t : SAB H S) :
    ∃ (t' : SAB H S') (m : SABMap t' t f), Nonempty (ChartPull t'.PP.L t.PP.L m.φ) :=
  _root_.GlobalTheory.KSOpen.exists_pull_chart f t

end GlobalTheory.KSInterior

namespace GlobalTheory.KSInterior

theorem exists_derivation_transport {A B : Type} [CommRing A] [CommRing B] (e : A ≃+* B) (D : Derivation ℤ A A) :
    ∃ D' : Derivation ℤ B B, ∀ r, D' (e r) = e (D r) := by
  let f : B →ₗ[ℤ] B :=
    { toFun := fun b => e (D (e.symm b)), map_add' := fun a b => by simp, map_smul' := fun k b => by simp }
  refine ⟨{ toLinearMap := f, map_one_eq_zero' := by simp [f], leibniz' := fun a b => ?_ }, fun r => by simp [f]⟩
  simp only [f, LinearMap.coe_mk, AddHom.coe_mk, map_mul, Derivation.leibniz, smul_eq_mul, map_add (f := _),
    RingEquiv.apply_symm_apply]

end GlobalTheory.KSInterior

namespace GlobalTheory.KSInterior

theorem isKS_transport : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X X' : Scheme.{0}) (t : SAB H X) (t' : SAB H X') (j : X' ⟶ X) [IsOpenImmersion j] (m : SABMap t' t j), Nonempty (ChartPull t'.PP.L t.PP.L m.φ) → ∀ (V : X.Opens) (W : X.affineOpens) (W' : X'.affineOpens) (hW' : W'.1 = j ⁻¹ᵁ W.1), Function.Bijective (j.appLE W.1 W'.1 hW'.le).hom → W.1 ≤ V → W.1 ≤ j.opensRange → ∀ (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(X, W.1)) ⟶ t.G.left)) (v' : Fin n → (Sp (DualNumber Γ(X', W'.1)) ⟶ t'.G.left)), (∀ i, IsTanAtG t (chart W) (v i)) → (∀ i, IsTanAtG t' (chart W') (v' i)) → (∀ i, v' i ≫ m.φ = spMap (dualMap (j.appLE W.1 W'.1 hW'.le).hom) ≫ v i) → ∀ (D : Γ(X, W.1) → Γ(X, W.1)) (D' : Γ(X', W'.1) → Γ(X', W'.1)), (∀ r, D' ((j.appLE W.1 W'.1 hW'.le).hom r) = (j.appLE W.1 W'.1 hW'.le).hom (D r)) → ∀ Θ' : Matrix (Fin n) (Fin n) Γ(X', W'.1), IsKS t' ⊤ W' v' D' Θ' → ∃ Θ, IsKS t V W v D Θ := by
  intro E _ _ _ H X X' t t' j _ m hcp V W W' hW' hbij hWV hWr n v v' hv hv't hvv D D' hD Θ' hKS
  obtain ⟨cp⟩ := hcp
  obtain ⟨J, Wc, jj, d, hsup, hj, hfld, hcomp, htest⟩ := hKS
  obtain ⟨hφo, hφr⟩ := _root_.GlobalTheory.sabMap_isOpenImmersion_opensRange E H X X' t t' j m
  set ψ := j.appLE W.1 W'.1 hW'.le with hψ
  let e := RingEquiv.ofBijective ψ.hom hbij
  have sq : m.φ ≫ t.G.hom = t'.G.hom ≫ j := m.cart.1.w
  have hx : chart W' ≫ j = spMap ψ.hom ≫ chart W :=
    (IsAffineOpen.SpecMap_appLE_fromSpec j W.2 W'.2 hW'.le).symm
  have hWc : ∀ i, Wc i ≤ t'.G.hom ⁻¹ᵁ W'.1 := fun i =>
    (le_iSup Wc i).trans (hsup.le.trans (t'.G.hom.preimage_mono inf_le_left))
  choose d₂ hd₂F hd₂ using fun i => _root_.GlobalTheory.LogKS.isField_image _ _ m.φ (Wc i) (d i) (hfld i)
  have hpi : ∀ i, m.φ ⁻¹ᵁ (m.φ ''ᵁ Wc i) = Wc i := fun i => m.φ.preimage_image_eq (Wc i)
  have cong : ∀ {A B : Scheme.{0}} {f g : A ⟶ B} (_ : f = g) (U : B.Opens) (U' : A.Opens) (p₁ : U' ≤ f ⁻¹ᵁ U)
      (p₂ : U' ≤ g ⁻¹ᵁ U), f.appLE U U' p₁ = g.appLE U U' p₂ := by
    intros; subst_vars; rfl
  have happ : ∀ (O : t.G.left.Opens) (h : O ≤ t.G.hom ⁻¹ᵁ W.1) (h' : m.φ ⁻¹ᵁ O ≤ t'.G.hom ⁻¹ᵁ W'.1)
      (r : Γ(X, W.1)), (m.φ.app O).hom ((t.G.hom.appLE W.1 O h).hom r) =
        (t'.G.hom.appLE W'.1 (m.φ ⁻¹ᵁ O) h').hom (ψ.hom r) := by
    intro O h h' r
    rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, Scheme.Hom.app_eq_appLE, hψ,
      Scheme.Hom.appLE_comp_appLE, Scheme.Hom.appLE_comp_appLE, cong sq]
  have vpull : ∀ {A : Type} [CommRing A] (z : Sp A ⟶ t'.G.left) (U₁ : t.G.left.Opens) (U₂ : t'.G.left.Opens)
      (le : U₂ ≤ m.φ ⁻¹ᵁ U₁), ⊤ ≤ z ⁻¹ᵁ U₂ → ∀ y, valR z U₂ ((m.φ.appLE U₁ U₂ le).hom y) = valR (z ≫ m.φ) U₁ y := by
    intro A _ z U₁ U₂ le hz y
    have e : (m.φ.appLE U₁ U₂ le).hom y = resG _ le ((m.φ.app U₁).hom y) := rfl
    rw [e, GlobalTheory.CechKS.valR_resG z le hz, GlobalTheory.CechKS.valR_comp_app]
  refine ⟨e.symm.toRingHom.mapMatrix Θ', J, fun i => m.φ ''ᵁ Wc i, fun i => cp.idx (jj i), d₂, ?_, ?_, hd₂F, ?_, ?_⟩
  · rw [← Scheme.Hom.image_iSup, hsup, inf_top_eq, inf_eq_left.2 hWV, hW']
    have e1 : t'.G.hom ⁻¹ᵁ (j ⁻¹ᵁ W.1) = m.φ ⁻¹ᵁ (t.G.hom ⁻¹ᵁ W.1) := by
      rw [← Scheme.Hom.comp_preimage, ← Scheme.Hom.comp_preimage, sq]
    rw [e1, Scheme.Hom.image_preimage_eq_opensRange_inf, hφr, ← Scheme.Hom.preimage_inf, inf_eq_right.2 hWr]
  · intro i y hy
    obtain ⟨x, hx, rfl⟩ := hy
    exact cp.le _ (hj i hx)
  · intro i h r
    apply (ConcreteCategory.bijective_of_isIso (m.φ.app (m.φ ''ᵁ Wc i))).1
    have hle : m.φ ⁻¹ᵁ (m.φ ''ᵁ Wc i) ≤ Wc i := (hpi i).le
    rw [hd₂ i _ le_rfl, happ _ h (hle.trans (hWc i)), happ _ h (hle.trans (hWc i)),
      ← GlobalTheory.KSRechart.resG_appLE t'.G.hom W'.1 (hWc i) hle, ← GlobalTheory.KSRechart.resG_appLE t'.G.hom W'.1 (hWc i) hle,
      (hfld i).2.2 (Wc i) _ hle le_rfl, hcomp i (hWc i), hD]
  · intro i i' O hO f S _ φS g₀ w hg₀ hO' hw
    have hOr : ∀ y ∈ O, ∃ x, m.φ.base x = y := fun y hy => by
      obtain ⟨x, -, hx⟩ := (hO hy).1
      exact ⟨x, hx⟩
    have hg₀r : Set.range g₀.base ⊆ Set.range m.φ.base := by
      rintro _ ⟨p, rfl⟩
      exact hOr _ (hO' (Set.mem_univ p))
    set g₀' := IsOpenImmersion.lift m.φ g₀ hg₀r with hg₀'def
    have hg₀'φ : g₀' ≫ m.φ = g₀ := IsOpenImmersion.lift_fac _ _ _
    let φS' : Γ(X', W'.1) →+* S := φS.comp e.symm.toRingHom
    have hφS : φS'.comp ψ.hom = φS := by
      ext r
      show φS (e.symm (ψ.hom r)) = φS r
      congr 1
      exact e.symm_apply_apply r
    have spc : spMap φS' ≫ spMap ψ.hom = spMap (φS'.comp ψ.hom) := by
      rw [← Spec.map_comp, ← CommRingCat.ofHom_comp]
    have hg₀' : g₀' ≫ t'.G.hom = spMap φS' ≫ chart W' := by
      rw [← cancel_mono j, Category.assoc, ← sq, ← Category.assoc, hg₀'φ, hg₀, Category.assoc, hx,
        ← Category.assoc, spc, hφS]
    have hw' : ∀ a, ∃ w', w' ≫ m.φ = w a ∧ IsTranslate t' φS' g₀' (v' a) w' := fun a =>
      GlobalTheory.T.tangentTranslate_lifts_semiAbelianTripleMap E H X X' t t' j m _ _ ψ.hom (chart W) (chart W') hx (v a) (v' a) (hv a) (hv't a) (hvv a) S φS'
        g₀' hg₀' (w a) (by rw [hφS, hg₀'φ]; exact hw a)
    choose w' hw'φ hw'T using hw'
    have hOi : m.φ ⁻¹ᵁ O ≤ Wc i ⊓ Wc i' :=
      le_inf ((m.φ.preimage_mono (hO.trans inf_le_left)).trans (hpi i).le)
        ((m.φ.preimage_mono (hO.trans inf_le_right)).trans (hpi i').le)
    have hO'' : ⊤ ≤ g₀' ⁻¹ᵁ (m.φ ⁻¹ᵁ O) := by
      rw [← Scheme.Hom.comp_preimage, hg₀'φ]
      exact hO'
    have key := htest i i' (m.φ ⁻¹ᵁ O) hOi ((m.φ.app O).hom f) S φS' g₀' w' hg₀' hO'' hw'T
    rw [← hg₀'φ, GlobalTheory.CechKS.valR_comp_app, map_sub, hd₂ i O (hO.trans inf_le_left),
      hd₂ i' O (hO.trans inf_le_right), key]
    have hU' : ⊤ ≤ g₀' ⁻¹ᵁ (t'.PP.L.U (jj i) ⊓ t'.PP.L.U (jj i')) :=
      hO''.trans (g₀'.preimage_mono (hOi.trans (inf_le_inf (hj i) (hj i'))))
    have hgp := _root_.GlobalTheory.chartPull_g_appLE _ _ t'.PP.L t.PP.L m.φ cp (jj i) (jj i')
    set le₀ : t'.PP.L.U (jj i) ⊓ t'.PP.L.U (jj i') ≤ m.φ ⁻¹ᵁ (t.PP.L.U (cp.idx (jj i)) ⊓ t.PP.L.U (cp.idx (jj i'))) :=
      le_inf (inf_le_left.trans (cp.le (jj i))) (inf_le_right.trans (cp.le (jj i')))
    have hgi : ((t'.PP.L.g (jj i) (jj i'))⁻¹ : Γ(t'.G.left, _)ˣ).val =
        (m.φ.appLE _ _ le₀).hom ((t.PP.L.g (cp.idx (jj i)) (cp.idx (jj i')))⁻¹ : Γ(t.G.left, _)ˣ).val := by
      refine Units.inv_eq_of_mul_eq_one_right ?_
      rw [hgp, ← map_mul, Units.mul_inv, map_one]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
    have hred := _root_.GlobalTheory.LogKS.IsTranslate.fst_comp E H X' t' _ _ φS' (chart W') g₀' (v' b) (w' b) hg₀' (hv't b) (hw'T b)
    have hwU : ⊤ ≤ w' b ⁻¹ᵁ (t'.PP.L.U (jj i) ⊓ t'.PP.L.U (jj i')) := GlobalTheory.CechKS.le_preimage_of_red hred hU'
    rw [hgp, hgi, vpull _ _ _ le₀ hwU, vpull _ _ _ le₀ hU', hw'φ, hg₀'φ, ← hw'φ a, ← GlobalTheory.CechKS.valR_comp_app]
    rfl

end GlobalTheory.KSInterior

namespace GlobalTheory.KSInterior

theorem exists_isKS_interior : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)) (W : Y.X.affineOpens), W.1 ≤ interior Y → ∀ (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(Y.X, W.1)) ⟶ Y.t.G.left)), (∀ i, IsTanAtG Y.t (chart W) (v i)) → (∀ w, IsTanAtG Y.t (chart W) w → ∃! cf : Fin n → Γ(Y.X, W.1), IsCombAtG Y.t (chart W) v cf w) → ∀ D : Derivation ℤ Γ(Y.X, W.1) Γ(Y.X, W.1), ∃ Θ, IsKS Y.t (interior Y) W v D Θ := by
  intro E _ _ _ H Dw l Xo c Y W hW n v hv hb D
  obtain ⟨t', m, hcp⟩ := exists_sab_chartPull Y.j Y.t
  obtain ⟨m', -⟩ := GlobalTheory.ArcChartExt.exists_sab_cancel_id Y.m m
  obtain ⟨hP, hA, hK⟩ := GlobalTheory.KSObj.proper_ample_kTriv Y.oF m'
  have hWr : W.1 ≤ Y.j.opensRange := hW
  let W' : (Xo.XF c).affineOpens := ⟨Y.j ⁻¹ᵁ W.1, W.2.preimage_of_isOpenImmersion _ hWr⟩
  have hW' : W'.1 = Y.j ⁻¹ᵁ W.1 := rfl
  let ψ := Y.j.appLE W.1 W'.1 hW'.le
  have hx : chart W' ≫ Y.j = spMap ψ.hom ≫ chart W := (IsAffineOpen.SpecMap_appLE_fromSpec Y.j W.2 W'.2 hW'.le).symm
  have hbij : Function.Bijective ψ.hom := by
    have e : Y.j ''ᵁ (Y.j ⁻¹ᵁ W.1) = W.1 := by
      rw [Scheme.Hom.image_preimage_eq_opensRange_inf, inf_eq_right.2 hWr]
    have key : ψ = Y.X.presheaf.map (eqToHom e).op ≫ (Y.j.appIso (Y.j ⁻¹ᵁ W.1)).hom := by
      rw [Scheme.Hom.appIso_hom', Scheme.Hom.map_appLE]
    rw [key]
    exact ConcreteCategory.bijective_of_isIso _
  obtain ⟨v', hv'φ, hv't, hv'b⟩ := _root_.GlobalTheory.SabTan.tanBasis_sabMap E H _ _ Y.t t' Y.j m _ _ ψ.hom (chart W) (chart W') hx n v hv hb
  obtain ⟨D', hD'⟩ := exists_derivation_transport (RingEquiv.ofBijective ψ.hom hbij) D
  obtain ⟨Θ', hΘ'⟩ := _root_.GlobalTheory.KSExists.exists_isKS E H _ t' hP hA hK W' n v' hv't hv'b D'
  exact isKS_transport E H _ _ Y.t t' Y.j m hcp (interior Y) W W' hW' hbij hW hWr n v v' hv hv't hv'φ D D'
    (fun r => hD' r) Θ' hΘ'

end GlobalTheory.KSInterior
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerInteriorAffineOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerInteriorAffineOpenStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerInteriorAffineOpenStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerInteriorAffineOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.exists_kodairaSpencer_interior_affine_open : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)) (W : Y.X.affineOpens), W.1 ≤ interior Y → ∀ (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(Y.X, W.1)) ⟶ Y.t.G.left)), (∀ i, IsTanAtG Y.t (chart W) (v i)) → (∀ w, IsTanAtG Y.t (chart W) w → ∃! cf : Fin n → Γ(Y.X, W.1), IsCombAtG Y.t (chart W) v cf w) → ∀ D : Derivation ℤ Γ(Y.X, W.1) Γ(Y.X, W.1), ∃ Θ, IsKS Y.t (interior Y) W v D Θ := by
  first | exact @GlobalTheory.KSInterior.exists_isKS_interior
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerInteriorAffineOpenStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenInfInterior =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenInfInterior", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ToroidalCompactificationBis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.AffOff

theorem isAffineOpen_inf_interior : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)), ReciprocityTheory.AnForm.R.FinalTheorems.Snc (genBdIdeal Y) → ∀ U : Y.X.affineOpens, IsAffineOpen (U.1 ⊓ interior Y) := by
  intro E _ _ _ H Dw l Xo c Y h U
  have hs := snc_gen_iff.1 h
  unfold boundary at hs
  set V := interior Y with hVdef
  have key : ∀ y : Y.X, ∃ W : Y.X.Opens, y ∈ W ∧ IsAffineOpen W ∧ IsAffineOpen (V.ι ⁻¹ᵁ W) := by
    intro y
    obtain ⟨-, W, hy, n, f, J, -, hI⟩ := hs y
    have e : W.1 ⊓ V = Y.X.basicOpen (∏ i ∈ J, f i) := by
      ext z
      constructor
      · rintro ⟨hW, hV⟩
        by_contra hz
        have : z ∈ (Scheme.IdealSheafData.vanishingIdeal V.compl).support := by
          rw [Scheme.IdealSheafData.mem_support_iff_of_mem hW, hI, Scheme.zeroLocus_span, Scheme.zeroLocus_singleton]
          exact hz
        rw [← SetLike.mem_coe, Scheme.IdealSheafData.coe_support_vanishingIdeal] at this
        exact this hV
      · intro hz
        have hW : z ∈ W.1 := Y.X.basicOpen_le _ hz
        refine ⟨hW, by_contra fun hV ↦ ?_⟩
        have : z ∈ (Scheme.IdealSheafData.vanishingIdeal V.compl).support := by
          rw [← SetLike.mem_coe, Scheme.IdealSheafData.coe_support_vanishingIdeal]
          exact hV
        rw [Scheme.IdealSheafData.mem_support_iff_of_mem hW, hI, Scheme.zeroLocus_span,
          Scheme.zeroLocus_singleton] at this
        exact this hz
    refine ⟨W.1, hy, W.2, ?_⟩
    rw [← V.ι.isAffineOpen_iff_of_isOpenImmersion, Scheme.Hom.image_preimage_eq_opensRange_inf,
      Scheme.Opens.opensRange_ι, inf_comm, e]
    exact W.2.basicOpen _
  have : IsAffineHom V.ι := isAffineHom_of_forall_exists_isAffineOpen _ key
  have h2 := U.2.preimage V.ι
  rw [← V.ι.isAffineOpen_iff_of_isOpenImmersion, Scheme.Hom.image_preimage_eq_opensRange_inf,
    Scheme.Opens.opensRange_ι] at h2
  rwa [inf_comm]

end GlobalTheory.AffOff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenInfInterior =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerRegularFramedAffine =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerRegularFramedAffine", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualMapComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerInteriorAffineOpenStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericPointLogKodairaSpencerFrameChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenInfInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerRegularNearRigidBoundaryPointStatement\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChartFrameBaseHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.KReg

theorem exists_res_eq {X : Scheme.{0}} (U W : X.affineOpens) (V : X.Opens) (hW : W.1 = U.1 ⊓ V) (θ : Γ(X, W.1))
    (h : ∀ m : Ideal Γ(X, U.1), m.IsMaximal → (∃ x ∈ U.1, (∀ f ∈ m, x ∉ X.basicOpen f) ∧ x ∉ V) →
      ∃ g ∉ m, ∃ s : Γ(X, U.1), (X.presheaf.map (homOfLE (hW.le.trans inf_le_left)).op).hom s =
        (X.presheaf.map (homOfLE (hW.le.trans inf_le_left)).op).hom g * θ) :
    ∃ s : Γ(X, U.1), (X.presheaf.map (homOfLE (hW.le.trans inf_le_left)).op).hom s = θ := by
  have hWU : W.1 ≤ U.1 := hW.le.trans inf_le_left
  obtain ⟨ρ, hρ⟩ : ∃ ρ, ρ = (X.presheaf.map (homOfLE hWU).op).hom := ⟨_, rfl⟩
  have hres : ∀ {A B C : X.Opens} (h1 : B ≤ A) (h2 : C ≤ B) (h3 : C ≤ A) (z : Γ(X, A)),
      (X.presheaf.map (homOfLE h2).op).hom ((X.presheaf.map (homOfLE h1).op).hom z) =
        (X.presheaf.map (homOfLE h3).op).hom z := fun h1 h2 h3 z => by
    rw [← CommRingCat.comp_apply, ← Functor.map_comp]; rfl
  let J : Ideal Γ(X, U.1) :=
    { carrier := {g | ∃ s : Γ(X, U.1), ρ s = ρ g * θ}
      zero_mem' := ⟨0, by simp⟩
      add_mem' := fun {g g'} ⟨s, hs⟩ ⟨s', hs'⟩ => ⟨s + s', by rw [map_add (f := _), map_add (f := _), hs, hs', add_mul]⟩
      smul_mem' := fun r g ⟨s, hs⟩ => ⟨r * s, by rw [smul_eq_mul, map_mul, map_mul, hs, _root_.mul_assoc]⟩ }
  have hJ : J = ⊤ := by
    by_contra hne
    obtain ⟨m, hm, hJm⟩ := Ideal.exists_le_maximal J hne
    let p : PrimeSpectrum Γ(X, U.1) := ⟨m, hm.isPrime⟩
    have hxU : U.2.fromSpec p ∈ U.1 := by
      have : U.2.fromSpec p ∈ Set.range U.2.fromSpec := ⟨p, rfl⟩
      rwa [U.2.range_fromSpec] at this
    have hxf : ∀ f, U.2.fromSpec p ∈ X.basicOpen f ↔ f ∉ m := fun f => by
      change p ∈ U.2.fromSpec ⁻¹ᵁ X.basicOpen f ↔ _
      rw [U.2.fromSpec_preimage_basicOpen]; rfl
    by_cases hxV : U.2.fromSpec p ∈ V
    · obtain ⟨g, hgW, hxg⟩ := U.2.exists_basicOpen_le (V := W.1) ⟨U.2.fromSpec p, hW ▸ ⟨hxU, hxV⟩⟩ hxU
      have hgm : g ∉ m := (hxf g).1 hxg
      apply hgm
      haveI := U.2.isLocalization_basicOpen g
      obtain ⟨⟨s, ⟨_, N, rfl⟩⟩, hs⟩ := IsLocalization.surj (Submonoid.powers g)
        ((X.presheaf.map (homOfLE hgW).op).hom θ)
      have hbo : X.basicOpen (ρ g) ≤ X.basicOpen g := by
        rw [hρ, Scheme.basicOpen_res]; exact inf_le_right
      have e3 : ∀ z, (X.presheaf.map (homOfLE hgW).op).hom (ρ z) =
          algebraMap Γ(X, U.1) Γ(X, X.basicOpen g) z := fun z => by
        rw [hρ]; exact hres hWU hgW (hgW.trans hWU) z
      have hz : (X.presheaf.map (homOfLE hgW).op).hom (ρ g ^ N * θ - ρ s) = 0 := by
        rw [map_sub, map_mul, map_pow, e3, e3, ← map_pow, mul_comm, hs, sub_self]
      have hz' : (X.presheaf.map (homOfLE (X.basicOpen_le (ρ g))).op).hom (ρ g ^ N * θ - ρ s) = 0 := by
        have := congrArg (X.presheaf.map (homOfLE hbo).op).hom hz
        rwa [map_zero, hres hgW hbo (X.basicOpen_le (ρ g))] at this
      obtain ⟨M, hM⟩ := AlgebraicGeometry.exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact X
        W.2.isCompact (ρ g ^ N * θ - ρ s) (ρ g) hz'
      refine hm.isPrime.mem_of_pow_mem (M + N) (hJm ⟨g ^ M * s, ?_⟩)
      rw [map_mul, map_pow, map_pow, pow_add]
      linear_combination (-1 : Γ(X, W.1)) * hM
    · obtain ⟨g, hgm, s, hs⟩ := h m hm ⟨_, hxU, fun f hf hx => (hxf f).1 hx hf, hxV⟩
      exact hgm (hJm ⟨s, hρ ▸ hs⟩)
  obtain ⟨s, hs⟩ : (1 : Γ(X, U.1)) ∈ J := hJ ▸ Submodule.mem_top
  exact ⟨s, by rw [← hρ, hs, map_one, _root_.one_mul]⟩

theorem exists_der_res {X : Scheme.{0}} (U W : X.affineOpens) (hW : W.1 ≤ U.1) (D : Derivation ℤ Γ(X, U.1) Γ(X, U.1)) :
    ∃ DW : Derivation ℤ Γ(X, W.1) Γ(X, W.1), ∀ r, DW ((X.presheaf.map (homOfLE hW).op).hom r) =
      (X.presheaf.map (homOfLE hW).op).hom (D r) := by
  set ρ := (X.presheaf.map (homOfLE hW).op).hom with hρ
  letI : Algebra Γ(X, U.1) Γ(X, W.1) := ρ.toAlgebra
  have h1 : IsOpenImmersion (chart W) := W.2.isOpenImmersion_fromSpec
  have e : Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U.1) Γ(X, W.1))) ≫ chart U = chart W :=
    _root_.GlobalTheory.LogKSLoc.spMap_res_chart U W hW
  have : IsOpenImmersion (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U.1) Γ(X, W.1))) ≫ chart U) := e ▸ h1
  have : IsOpenImmersion (chart U) := U.2.isOpenImmersion_fromSpec
  have : IsOpenImmersion (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U.1) Γ(X, W.1)))) :=
    IsOpenImmersion.of_comp _ (chart U)
  have hs : Smooth (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U.1) Γ(X, W.1)))) := inferInstance
  rw [HasRingHomProperty.Spec_iff (P := @Smooth)] at hs
  have : Algebra.Smooth Γ(X, U.1) Γ(X, W.1) := RingHom.smooth_algebraMap.1 hs
  let g : Γ(X, U.1) →+* DualNumber Γ(X, W.1) :=
    { toFun := fun r => TrivSqZeroExt.inl (ρ r) + TrivSqZeroExt.inr (ρ (D r))
      map_one' := by ext <;> simp
      map_zero' := by ext <;> simp
      map_add' := fun a b => by ext <;> simp
      map_mul' := fun a b => by ext <;> simp [Derivation.leibniz] <;> ring }
  letI : Algebra Γ(X, U.1) (DualNumber Γ(X, W.1)) := g.toAlgebra
  let π : DualNumber Γ(X, W.1) →ₐ[Γ(X, U.1)] Γ(X, W.1) :=
    { (TrivSqZeroExt.fstHom Γ(X, W.1) Γ(X, W.1) Γ(X, W.1)).toRingHom with
      commutes' := fun r => by simp [g, RingHom.algebraMap_toAlgebra] }
  have hsur : Function.Surjective π := fun s => ⟨TrivSqZeroExt.inl s, rfl⟩
  have hk : IsNilpotent (RingHom.ker (π : DualNumber Γ(X, W.1) →+* Γ(X, W.1))) := by
    refine ⟨2, ?_⟩
    rw [Submodule.zero_eq_bot, eq_bot_iff, pow_two]
    refine Submodule.mul_le.2 fun a ha b hb => ?_
    have ha' : a.fst = 0 := ha
    have hb' : b.fst = 0 := hb
    rw [Submodule.mem_bot]
    ext <;> simp [ha', hb']
  let l := Algebra.FormallySmooth.liftOfSurjective (AlgHom.id Γ(X, U.1) Γ(X, W.1)) π hsur hk
  have hl1 : ∀ s, (l s).fst = s := fun s =>
    AlgHom.congr_fun (Algebra.FormallySmooth.comp_liftOfSurjective (AlgHom.id Γ(X, U.1) Γ(X, W.1)) π hsur hk) s
  have hl2 : ∀ r, l (ρ r) = g r := fun r => l.commutes r
  refine ⟨Derivation.mk' (AddMonoidHom.toIntLinearMap
    { toFun := fun s => (l s).snd, map_zero' := by simp, map_add' := fun x y => by rw [map_add (f := _)]; rfl }) fun a b => ?_,
    fun r => ?_⟩
  · change (l (a * b)).snd = a • (l b).snd + b • (l a).snd
    rw [map_mul, TrivSqZeroExt.snd_mul, hl1, hl1]
    simp [smul_eq_mul, mul_comm]
  · change (l (ρ r)).snd = _
    rw [hl2]
    simp [g]

theorem exists_isKS_regular : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)), 1 ≤ Dw.p + Dw.q → SmoothOfRelativeDimension Dw.dim (genStr Y) → ReciprocityTheory.AnForm.R.FinalTheorems.Snc (genBdIdeal Y) → (∀ x ∈ genBd Y, IsClosed ({x} : Set (gen Y)) → HasRigidChart Y x) → ∀ (U : Y.X.affineOpens) (n : ℕ) (v : Fin n → (Sp (DualNumber Γ(Y.X, U.1)) ⟶ Y.t.G.left)) (A : 𝓞 E → Matrix (Fin n) (Fin n) Γ(Y.X, U.1)), (∀ i, IsTanAtG Y.t (chart U) (v i)) → (∀ w, IsTanAtG Y.t (chart U) w → ∃! cf : Fin n → Γ(Y.X, U.1), IsCombAtG Y.t (chart U) v cf w) → (∀ a i, IsCombAtG Y.t (chart U) v (A a i) (v i ≫ (Y.t.act.act a).left)) → ∀ D : logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U, ∃ Θ, IsKS Y.t (interior Y) U v D.1 Θ := by
  intro E _ _ _ H Dw l Xo c Y hpq hsm hsnc hrig U n v A hv hb hA D
  obtain ⟨W, hW⟩ : ∃ W : Y.X.affineOpens, W.1 = U.1 ⊓ interior Y := ⟨⟨_, GlobalTheory.AffOff.isAffineOpen_inf_interior E H Dw l Xo c Y hsnc U⟩, rfl⟩
  have hWU : W.1 ≤ U.1 := hW.le.trans inf_le_left
  obtain ⟨DW, hDW⟩ := exists_der_res U W hWU D.1
  obtain ⟨hv', hb'⟩ := GlobalTheory.LocM.FrameBase.tanBasis_baseChange Y.t (Y.X.presheaf.map (homOfLE hWU).op).hom
    (chart U) n v hv hb
  rw [GlobalTheory.LogKSDiv.GenChange.chart_res U W hWU] at hv' hb'
  obtain ⟨ΘW, hΘW⟩ := GlobalTheory.T.exists_kodairaSpencer_interior_affine_open E H Dw l Xo c Y W (hW.le.trans inf_le_right) n _ hv' hb' DW
  have key := fun (m : Ideal Γ(Y.X, U.1)) (hm : m.IsMaximal) hx =>
    GlobalTheory.T.kodairaSpencer_regular_near_rigid_boundary_point E H Dw l Xo c Y hpq hsm hsnc hrig U W hW n v hv hb D DW ΘW hDW hΘW m hm hx
  choose Θ hΘ using fun a b => exists_res_eq U W (interior Y) hW (ΘW a b) fun m hm hx =>
    (key m hm hx).imp fun g hg => ⟨hg.1, hg.2 a b⟩
  refine ⟨Θ, GlobalTheory.LogKSUp.isKS_of_inf E H Y.X Y.t (interior Y) U W hW n v D.1 DW Θ hDW ?_⟩
  convert hΘW using 1
  ext a b
  exact hΘ a b

end GlobalTheory.KReg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerRegularFramedAffine =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteOfLocallyFiniteFreeLocalizations =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteOfLocallyFiniteFreeLocalizations", "h": "module\n\npublic import Mathlib.Algebra.Module.LocalizedModule.Basic\npublic import Mathlib.Algebra.Module.Projective\npublic import Mathlib.GroupTheory.MonoidLocalization.Away\npublic import Mathlib.RingTheory.Finiteness.Defs\npublic import Mathlib.RingTheory.Spectrum.Prime.Defs\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.LocalProperties.FinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Module.FinitePresentation\npublic import Mathlib.RingTheory.Flat.EquationalCriterion\npublic import Mathlib.RingTheory.Flat.Localization\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LocFreeProj

theorem finite_projective_of_locally_free : ∀ (R : Type) [CommRing R] (M : Type) [AddCommGroup M] [Module R M], (∀ q : PrimeSpectrum R, ∃ r : R, r ∉ q.asIdeal ∧ ∃ (F : Type) (_ : AddCommGroup F) (_ : Module R F) (_ : Module (Localization.Away r) F) (_ : IsScalarTower R (Localization.Away r) F) (_ : Module.Finite (Localization.Away r) F) (_ : Module.Free (Localization.Away r) F) (ϕ : M →ₗ[R] F), IsLocalizedModule (Submonoid.powers r) ϕ) → Module.Finite R M ∧ Module.Projective R M := by
  intro R _ M _ _ h
  let s : Set R := {r | ∃ (F : Type) (_ : AddCommGroup F) (_ : Module R F)
    (_ : Module (Localization.Away r) F) (_ : IsScalarTower R (Localization.Away r) F)
    (_ : Module.Finite (Localization.Away r) F) (_ : Module.Free (Localization.Away r) F)
    (ϕ : M →ₗ[R] F), IsLocalizedModule (Submonoid.powers r) ϕ}
  have hs : Ideal.span s = ⊤ := by
    by_contra hne
    obtain ⟨m, hm, hsm⟩ := Ideal.exists_le_maximal _ hne
    obtain ⟨r, hr, hP⟩ := h ⟨m, hm.isPrime⟩
    exact hr (hsm (Ideal.subset_span hP))
  have hg : ∀ g : s, g.1 ∈ s := fun g => g.2
  choose F iA iM iL iT iFin iFree ϕ hϕ using hg
  letI := iA
  letI := iM
  letI := iL
  haveI := iT
  haveI := iFin
  haveI := iFree
  haveI := hϕ
  haveI (g : s) : Module.Flat R (F g) := by
    haveI : Module.Flat R (Localization.Away g.1) :=
      IsLocalization.flat _ (Submonoid.powers g.1)
    exact Module.Flat.trans R (Localization.Away g.1) (F g)
  haveI hfp : Module.FinitePresentation R M :=
    Module.FinitePresentation.of_localizationSpan' s hs (Mₚ := F)
      (Rₚ := fun g : s => Localization.Away g.1) ϕ
      fun _ => Module.finitePresentation_of_projective _ _
  haveI : Module.Flat R M :=
    Module.flat_of_isLocalized_span R M s hs F ϕ fun _ => inferInstance
  exact ⟨inferInstance, Module.Flat.projective_of_finitePresentation⟩

end GlobalTheory.LocFreeProj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteOfLocallyFiniteFreeLocalizations =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalizedModuleRes =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalizedModuleRes", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtLAlgebraMap\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLogVectorFieldBasisToroidalModelSnc\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowSmulEqLogDerivationExtendLocalizationAw\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowSmulEqOfLogDerivationExtendEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteOfLocallyFiniteFreeLocalizations\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ToroidalCompactificationBis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.FlatBCSec\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\nimport Mathlib.Algebra.Azumaya.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.LogDerProj

namespace GlobalTheory.LogDerProj

theorem isLocalizedModule_res : ∀ {k R S : Type} [Field k] [CommRing R] [CommRing S] [Algebra R S] (f : R) [IsLocalization.Away f S] (φ : k →+* R), φ.FiniteType → ∀ J : Ideal R, IsLocalizedModule (Submonoid.powers f) (res (S := S) f φ J) := by
  intro k R S _ _ _ _ f _ φ hφ J
  refine IsLocalizedModule.mk (fun x => ?_) (_root_.GlobalTheory.LogDerProj.exists_pow_smul_eq_res f φ hφ J) (_root_.GlobalTheory.LogDerProj.exists_pow_smul_eq_of_res_eq f φ hφ J _ _)
  have hu : IsUnit (algebraMap R S x) := IsLocalization.map_units S x
  rw [Module.End.isUnit_iff]
  constructor
  · intro n n' h
    have h' : algebraMap R S x • n.1 = algebraMap R S x • n'.1 := by
      simpa [algebraMap_smul] using congrArg Subtype.val h
    exact Subtype.ext ((hu.smul_left_cancel).1 h')
  · intro n
    refine ⟨⟨((hu.unit⁻¹ : Sˣ) : S) • n.1, (show _ ∈ logSub ((algebraMap R S).comp φ) (J.map (algebraMap R S)) from
      Submodule.smul_mem _ _ n.2)⟩, Subtype.ext ?_⟩
    change (x : R) • (((hu.unit⁻¹ : Sˣ) : S) • n.1) = n.1
    rw [← algebraMap_smul S (x : R), smul_smul, IsUnit.mul_val_inv, one_smul]

theorem finrank_fibre : ∀ {R M : Type} [CommRing R] [AddCommGroup M] [Module R M] (f : R) (d : ℕ) (ϕ : M →ₗ[R] (Fin d → Localization.Away f)), IsLocalizedModule (Submonoid.powers f) ϕ → ∀ m : Ideal R, m.IsMaximal → f ∉ m → Module.finrank (R ⧸ m) ((R ⧸ m) ⊗[R] M) = d := by
  intro R M _ _ _ f d ϕ hϕ m hm hf
  letI := Ideal.Quotient.field m
  have hu : IsUnit (algebraMap R (R ⧸ m) f) := by
    rw [isUnit_iff_ne_zero, Ne, Ideal.Quotient.algebraMap_eq, Ideal.Quotient.eq_zero_iff_mem]
    exact hf
  letI : Algebra (Localization.Away f) (R ⧸ m) := (IsLocalization.Away.lift f hu).toAlgebra
  haveI : IsScalarTower R (Localization.Away f) (R ⧸ m) := IsScalarTower.of_algebraMap_eq fun r => by
    rw [RingHom.algebraMap_toAlgebra, IsLocalization.Away.lift, IsLocalization.lift_eq]
  have hbc : IsBaseChange (Localization.Away f) ϕ := IsLocalizedModule.isBaseChange (Submonoid.powers f) _ ϕ
  let e1 := hbc.equiv
  let e2 := TensorProduct.AlgebraTensorModule.cancelBaseChange R (Localization.Away f) (R ⧸ m) (R ⧸ m) M
  let e3 := LinearEquiv.baseChange (Localization.Away f) (R ⧸ m) _ _ e1
  rw [← e2.finrank_eq, e3.finrank_eq, Module.finrank_eq_card_basis
    (Algebra.TensorProduct.basis (R ⧸ m) (Pi.basisFun (Localization.Away f) (Fin d))), Fintype.card_fin]

end GlobalTheory.LogDerProj



theorem GlobalTheory.LogDerProj.main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)), 1 ≤ Dw.p + Dw.q → SmoothOfRelativeDimension Dw.dim (genStr Y) → ReciprocityTheory.AnForm.R.FinalTheorems.Snc (genBdIdeal Y) → ∀ U : Y.X.affineOpens, Module.Finite Γ(Y.X, U.1) (logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U) ∧ Module.Projective Γ(Y.X, U.1) (logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U) ∧ ∀ m : Ideal Γ(Y.X, U.1), m.IsMaximal → Module.finrank (Γ(Y.X, U.1) ⧸ m) ((Γ(Y.X, U.1) ⧸ m) ⊗[Γ(Y.X, U.1)] (logDer Y.s (Scheme.IdealSheafData.vanishingIdeal (interior Y).compl) U)) = Dw.dim := by
  intro E _ _ _ H Dw l Xo c Y h1 hsm hsnc U
  haveI : SmoothOfRelativeDimension Dw.dim Y.s := smooth_gen_iff.1 hsm
  haveI : Smooth Y.s := SmoothOfRelativeDimension.smooth Dw.dim _
  set I := Scheme.IdealSheafData.vanishingIdeal (interior Y).compl with hI
  let φ : c.F →+* Γ(Y.X, U.1) := ReciprocityTheory.ChartRestriction.G.DVR.FlatBC.algX Y.s U.1
  have hφ : φ.FiniteType := by
    have h1 : (Y.s.appLE ⊤ U.1 (by simp)).hom.FiniteType :=
      HasRingHomProperty.appLE @LocallyOfFiniteType Y.s inferInstance ⟨⊤, isAffineOpen_top _⟩ U _
    exact h1.comp (RingHom.FiniteType.of_surjective _
      (Scheme.ΓSpecIso (CommRingCat.of c.F)).symm.commRingCatIsoToRingEquiv.surjective)
  have hM : logDer Y.s I U = GlobalTheory.LogDerProj.logSub φ (I.ideal U) := rfl
  have loc : ∀ q : PrimeSpectrum Γ(Y.X, U.1), ∃ r ∉ q.asIdeal,
      ∃ ϕ : GlobalTheory.LogDerProj.logSub φ (I.ideal U) →ₗ[Γ(Y.X, U.1)] (Fin Dw.dim → Localization.Away r),
        IsLocalizedModule (Submonoid.powers r) ϕ := by
    intro q
    have hU : IsAffineOpen U.1 := U.2
    have hxU : hU.fromSpec q ∈ U.1 := by
      change _ ∈ (U.1 : Set Y.X)
      rw [← hU.range_fromSpec]
      exact ⟨q, rfl⟩
    have key := _root_.GlobalTheory.LogBasis.exists_logDer_basis E H Dw l Xo c Y h1 hsm hsnc U (hU.fromSpec q) hxU
    obtain ⟨f, W, hW, m, t, b, hxW, hWf, -⟩ := key
    have hq : f ∉ q.asIdeal := by
      have : q ∈ hU.fromSpec ⁻¹ᵁ Y.X.basicOpen f := by rw [← hWf]; exact hxW
      rw [hU.fromSpec_preimage_basicOpen] at this
      exact this
    letI : Algebra Γ(Y.X, U.1) Γ(Y.X, W.1) := (Y.X.presheaf.map (homOfLE hW).op).hom.toAlgebra
    have hloc : ∀ (V : Y.X.Opens) (hV : V ≤ U.1), V = Y.X.basicOpen f →
        letI := (Y.X.presheaf.map (homOfLE hV).op).hom.toAlgebra; IsLocalization.Away f Γ(Y.X, V) := by
      rintro V hV rfl
      exact U.2.isLocalization_basicOpen f
    haveI : IsLocalization.Away f Γ(Y.X, W.1) := hloc W.1 hW hWf
    have hc : ∀ a, algebraMap Γ(Y.X, U.1) Γ(Y.X, W.1) (φ a) = constFn Y.s W.1 a :=
      fun a => congr(($(Scheme.Hom.appLE_map Y.s (U := ⊤) (V := U.1) (fun _ _ => trivial) (homOfLE hW).op)).hom
        ((Scheme.ΓSpecIso (CommRingCat.of c.F)).inv.hom a))
    have hid : (I.ideal U).map (algebraMap Γ(Y.X, U.1) Γ(Y.X, W.1)) = I.ideal W := I.map_ideal (U := W) (V := U) hW
    have hN : logDer Y.s I W = GlobalTheory.LogDerProj.logSub
        ((algebraMap Γ(Y.X, U.1) Γ(Y.X, W.1)).comp φ) ((I.ideal U).map (algebraMap _ _)) := by
      ext D
      rw [GlobalTheory.LogDerProj.mem_logSub, hid]
      simp only [RingHom.comp_apply, hc]
      rfl
    let b' := b.map (LinearEquiv.ofEq _ _ hN)
    let e := (b'.equivFun.restrictScalars Γ(Y.X, U.1)).trans (LinearEquiv.piCongrRight fun _ =>
      (IsLocalization.algEquiv (Submonoid.powers f) Γ(Y.X, W.1) (Localization.Away f)).toLinearEquiv)
    haveI := GlobalTheory.LogDerProj.isLocalizedModule_res (S := Γ(Y.X, W.1)) f φ hφ (I.ideal U)
    exact ⟨f, hq, e.toLinearMap ∘ₗ GlobalTheory.LogDerProj.res (S := Γ(Y.X, W.1)) f φ (I.ideal U),
      IsLocalizedModule.of_linearEquiv (Submonoid.powers f) (GlobalTheory.LogDerProj.res (S := Γ(Y.X, W.1)) f φ (I.ideal U)) e⟩
  rw [hM]
  obtain ⟨hfin, hproj⟩ := GlobalTheory.LocFreeProj.finite_projective_of_locally_free _ _ fun q => by
    obtain ⟨r, hr, ϕ, hϕ⟩ := loc q
    exact ⟨r, hr, Fin Dw.dim → Localization.Away r, inferInstance, inferInstance, inferInstance, inferInstance,
      inferInstance, inferInstance, ϕ, hϕ⟩
  refine ⟨hfin, hproj, fun m hm => ?_⟩
  obtain ⟨r, hr, ϕ, hϕ⟩ := loc ⟨m, hm.isPrime⟩
  exact GlobalTheory.LogDerProj.finrank_fibre r Dw.dim ϕ hϕ m hm hr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalizedModuleRes =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerIsoSmoothSncToroidalModel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerIsoSmoothSncToroidalModel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BijectiveOfInjectiveModMaximal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqZeroOfForallField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKodairaSpencerRegularFramedAffine\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalizedModuleRes\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerInjectiveModMaximalIdealStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidChartDualNumberDeformation\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SymmetricBalancedTensorsFiniteProjectiveRankDimStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.LogKSAssembly

theorem entry_mem_of_mem_smul_top {R : Type} [CommRing R] {n : ℕ} (N : Submodule R (Matrix (Fin n) (Fin n) R))
    (m : Ideal R) (y : N) (hy : y ∈ m • (⊤ : Submodule R N)) (a b : Fin n) : (y : Matrix (Fin n) (Fin n) R) a b ∈ m := by
  refine Submodule.smul_induction_on (p := fun y : N => (y : Matrix (Fin n) (Fin n) R) a b ∈ m) hy ?_ ?_
  · intro r hr x _
    simpa using m.mul_mem_right _ hr
  · intro x y hx hy
    simpa using m.add_mem hx hy

theorem exists_equiv {R L : Type} [CommRing R] [AddCommGroup L] [Module R L] [Module.Finite R L] [Module.Projective R L]
    {n : ℕ} (N : Submodule R (Matrix (Fin n) (Fin n) R)) [Module.Finite R N] [Module.Projective R N]
    (K : L → Matrix (Fin n) (Fin n) R → Prop) (hex : ∀ D, ∃ Θ, K D Θ) (huniq : ∀ D Θ Θ', K D Θ → K D Θ' → Θ = Θ')
    (hlin : ∀ D D' (r : R) Θ Θ', K D Θ → K D' Θ' → K (D + D') (Θ + Θ') ∧ K (r • D) (r • Θ))
    (hN : ∀ D Θ, K D Θ → Θ ∈ N)
    (hrk : ∀ m : Ideal R, m.IsMaximal →
      Module.finrank (R ⧸ m) ((R ⧸ m) ⊗[R] L) = Module.finrank (R ⧸ m) ((R ⧸ m) ⊗[R] N))
    (hfib : ∀ D Θ (m : Ideal R), m.IsMaximal → K D Θ → (∀ a b, Θ a b ∈ m) → D ∈ m • (⊤ : Submodule R L)) :
    ∃ e : L ≃ₗ[R] N, ∀ D Θ, K D Θ ↔ Θ = (e D).1 := by
  classical
  choose Θ hΘ using hex
  let f : L →ₗ[R] N :=
    { toFun := fun D => ⟨Θ D, hN D _ (hΘ D)⟩
      map_add' := fun D D' => Subtype.ext (huniq _ _ _ (hΘ (D + D')) (hlin D D' 1 _ _ (hΘ D) (hΘ D')).1)
      map_smul' := fun r D => Subtype.ext (huniq _ _ _ (hΘ (r • D)) (hlin D D r _ _ (hΘ D) (hΘ D)).2) }
  have hf : Function.Bijective f :=
    GlobalTheory.ProjBij.bijective_of_injective_mod_maximal R L N f hrk
      (fun m hm x hx => hfib x (Θ x) m hm (hΘ x) (entry_mem_of_mem_smul_top N m (f x) hx))
  refine ⟨LinearEquiv.ofBijective f hf, fun D Θ' => ⟨fun h => huniq D Θ' (Θ D) h (hΘ D), fun h => ?_⟩⟩
  rw [h]
  exact hΘ D



theorem hasLogKS : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli Dw l) (c : Coeff l) (Y : Model Xo c (RingHom.id c.F)), 1 ≤ Dw.p + Dw.q → SmoothOfRelativeDimension Dw.dim (genStr Y) → ReciprocityTheory.AnForm.R.FinalTheorems.Snc (genBdIdeal Y) → (∀ x ∈ genBd Y, IsClosed ({x} : Set (gen Y)) → HasRigidChart Y x) → HasLogKS Y.t Y.s (interior Y) := by
  intro E _ _ _ H Dw l Xo c Y hr hsm hsnc hrig
  unfold HasLogKS
  intro U n v A hv hb hA
  obtain ⟨hLf, hLp, hLr⟩ := GlobalTheory.LogDerProj.main E H Dw l Xo c Y hr hsm hsnc U
  obtain ⟨hBf, hBp, hBr⟩ := _root_.GlobalTheory.BalProj.balanced_finite_projective_rank E H Dw l Xo c Y hr hsm hsnc U n v A hv hb hA
  exact exists_equiv (balanced H.bar A) (fun D Θ => IsKS Y.t (interior Y) U v D.1 Θ)
    (_root_.GlobalTheory.KReg.exists_isKS_regular E H Dw l Xo c Y hr hsm hsnc hrig U n v A hv hb hA)
    (GlobalTheory.KSUniq.isKS_unique_model E H Dw l Xo c Y hr hsm hsnc hrig U n v A hv hb hA)
    (GlobalTheory.LogKSLin.isKS_linear E H Dw l Xo c Y U n v A hv hb hA)
    (GlobalTheory.LogKSBal.ksClass_mem_balanced E H Dw l Xo c Y hr hsm hsnc hrig U n v A hv hb hA)
    (fun m hm => (hLr m hm).trans (hBr m hm).symm)
    (_root_.GlobalTheory.logKS_inj_mod_maximal E H Dw l Xo c Y hr hsm hsnc hrig U n v A hv hb hA)

end GlobalTheory.LogKSAssembly
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerIsoSmoothSncToroidalModel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToroidalFanKodairaSpencerOfRigidBoundaryCharts =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToroidalFanKodairaSpencerOfRigidBoundaryCharts", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ToroidalCompactificationBis\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogKodairaSpencerIsoSmoothSncToroidalModel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

theorem GlobalTheory.RigChart.toroidalForFanKS_of_rigidForFan : GlobalTheory.RigChart.RigidForFan → GlobalTheory.Published.ToroidalForFanKS := by
  intro h E _ _ _ H Dw hr φ h₁ h₂ l Xo c
  obtain ⟨Y, BD, d, k, a₁, a₂, a₃, a₄, a₅, a₆, a₇, a₈⟩ := h E H Dw hr φ h₁ h₂ l Xo c
  exact ⟨Y, BD, d, k, a₁, a₂, a₃, a₄, a₅, a₆, a₇, _root_.GlobalTheory.LogKSAssembly.hasLogKS E H Dw l Xo c Y hr a₃ a₄ a₈⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToroidalFanKodairaSpencerOfRigidBoundaryCharts =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToroidalCompactificationFanLogKodairaSpencerIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToroidalCompactificationFanLogKodairaSpencerIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ToroidalCompactificationBis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidBoundaryChartsForFanUnitaryDatumStatement\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToroidalFanKodairaSpencerOfRigidBoundaryCharts\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.TorKSField

theorem toroidalForFanKS : GlobalTheory.Published.ToroidalForFanKS :=
  _root_.GlobalTheory.RigChart.toroidalForFanKS_of_rigidForFan _root_.GlobalTheory.RigChart.rigidForFan_holds

end GlobalTheory.TorKSField
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToroidalCompactificationFanLogKodairaSpencerIso =====
