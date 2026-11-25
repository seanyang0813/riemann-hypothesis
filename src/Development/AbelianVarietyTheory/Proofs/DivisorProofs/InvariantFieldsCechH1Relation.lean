module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasisRaynaudTangentInvariantFields
public import Development.AbelianVarietyTheory.Statements.FundamentalDomains.ExistsIsAddFundamentalDomain
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull
public import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsCobOfIsAffineOpen
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage
public import Mathlib.LinearAlgebra.Basis.Defs
public import Mathlib.RingTheory.LocalRing.Defs
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictCapFBijective
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeStructureSheafCohomologyNoetherianStatement
public import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne
public import Development.AbelianVarietyTheory.Definitions.Divisors.ComparisonMemCechHodgeFiltration
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivativesCoboundaryCoeffsMemMaximalIdeal
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsFiniteAffineCharts
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCechOneCoboundaryOfMixedOverlaps
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsPolarisationDescentMulOddVeryDense
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeG
import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.CategoryTheory.Monoidal.Cartesian.Over
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Topology.Sheaves.Init
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
import Mathlib.Topology.Sheaves.Presheaf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.BaseChangeKernels.SurjOfCover
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HtArith
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import Mathlib.Tactic.Basify
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLocalDerivationExtensionOfAffine
import Mathlib.AlgebraicGeometry.QuasiAffine
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BasisTangentModuleAbelianSchemeOfRelDim, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechOneCocycleOnAffineCoverMixed, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSubfamilyUniqueReprOfSpanningLocalRing, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechOneCochainToPosetCochainCoboundaryExists, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechOneCochainToPosetCochainMemCocycles, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechToPosetPosetToCechSubCoboundary, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCechOneCocyclePosetOneCochainToCechCochain, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosetOneCochainToCechCochainCoboundary, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosetToCechCechToPosetCocycleEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianCechH1BasisCocycles, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianCechH1BasisCocyclesStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivativesCoboundaryCoeffsMemMaximalIdealStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldsBasisTangent, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldsCechH1Relation

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BasisTangentModuleAbelianSchemeOfRelDim =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.BasisTangentModuleAbelianSchemeOfRelDim", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasisRaynaudTangentInvariantFields\npublic import Development.AbelianVarietyTheory.Statements.FundamentalDomains.ExistsIsAddFundamentalDomain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeG\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\n\n"}
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

namespace GlobalTheory.TanBasisDim


open ReciprocityTheory.ChartRestriction.G.PullbackSections in
theorem basis_tanM_of_dim {R : Type} [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G]
    (d : ℕ) (hG : SmoothOfRelativeDimension d G.hom) :
    Nonempty (Module.Basis (Fin d) R (TanM (𝟙 (Sp R)) G)) := by
  have hS := isGrpPullback_pullback G (𝟙 (Sp R))
  have hsm : SmoothOfRelativeDimension d ((Over.pullback (𝟙 (Sp R))).obj G).hom := by
    show SmoothOfRelativeDimension d (pullback.snd _ _)
    exact (smoothOfRelativeDimension_isStableUnderBaseChange d).of_isPullback (IsPullback.of_hasPullback _ _) hG
  obtain ⟨v, hv⟩ := GlobalTheory.KeyPow.exists_isLieBasis ((Over.pullback (𝟙 (Sp R))).obj G) hsm
  let b : Fin d → TanM (𝟙 (Sp R)) G := fun i =>
    mkT (pushHom hS (epsR R) (v i)) ((isTangent_iff hS _).1 (hv.1 i))
  have hb : ∀ m : TanM (𝟙 (Sp R)) G, ∃! a : Fin d → R, m = ∑ i, a i • b i := fun m => by
    obtain ⟨w', hw'⟩ := push_surj hS (tv m)
    have htan : IsTangent w' := (isTangent_iff hS w').2 (by rw [hw']; exact tv_mem m)
    have key : ∀ a : Fin d → R, IsLieComb a v w' ↔ m = ∑ i, a i • b i := by
      intro a
      rw [isLieComb_iff hS, hw']
      constructor
      · intro h
        apply tanM_ext
        rw [h, GlobalTheory.RayBasis.tv_sum]
        refine Finset.prod_congr rfl fun i _ => ?_
        rw [tv_smul]
        rfl
      · intro h
        rw [h, GlobalTheory.RayBasis.tv_sum]
        refine Finset.prod_congr rfl fun i _ => ?_
        rw [tv_smul]
        rfl
    obtain ⟨C, hC, hCu⟩ := hv.2 w' htan
    exact ⟨C, (key C).1 hC, fun a ha => hCu a ((key a).2 ha)⟩
  refine ⟨Module.Basis.mk (v := b) ?_ ?_⟩
  · rw [Fintype.linearIndependent_iff]
    intro g hg i
    exact congrFun ((hb 0).unique hg.symm (y₂ := 0) (by simp)) i
  · intro m _
    obtain ⟨a, ha, -⟩ := hb m
    rw [ha]
    exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)

theorem basis_tanM_abelian : ∀ (R : Type) [CommRing R] [IsLocalRing R] [IsNoetherianRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (d : ℕ), IsAbelianScheme G → SmoothOfRelativeDimension d G.hom → Nonempty (Module.Basis (Fin d) R (TanM (𝟙 (Sp R)) G)) := by
  intro R _ _ _ G _ _ d _ hG
  exact basis_tanM_of_dim G d hG

end GlobalTheory.TanBasisDim
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BasisTangentModuleAbelianSchemeOfRelDim =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechOneCocycleOnAffineCoverMixed =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechOneCocycleOnAffineCoverMixed", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsCobOfIsAffineOpen\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits
open GlobalTheory.KS (rsT C1 IsCoc IsCob)

namespace GlobalTheory.CechMixed
open GlobalTheory.KS

theorem coc_on {X : Scheme.{0}} {J : Type} {V : J → X.Opens} {z : C1 V} (hz : IsCoc V z) (i j l : J)
    {W : X.Opens} (hi : W ≤ V i) (hj : W ≤ V j) (hl : W ≤ V l) :
    rsT (z i j) W + rsT (z j l) W = rsT (z i l) W := by
  have e : W ≤ V i ⊓ V j ⊓ V l := le_inf (le_inf hi hj) hl
  have h := congrArg (fun s => rsT s W) (hz i j l)
  simp only [rsT_add] at h
  rwa [rsT_rsT inf_le_left e, rsT_rsT (le_inf (inf_le_left.trans inf_le_right) inf_le_right) e,
    rsT_rsT (le_inf (inf_le_left.trans inf_le_left) inf_le_right) e] at h

theorem le_iSup_inf {X : Scheme.{0}} {J : Type} {V : J → X.Opens} (hV : ⨆ i, V i = ⊤) (O : X.Opens) :
    O ≤ ⨆ i, V i ⊓ O := by
  rw [← iSup_inf_eq, hV, top_inf_eq]

theorem exists_split {X : Scheme.{0}} {J : Type} {V : J → X.Opens} (hV : ⨆ i, V i = ⊤) {O : X.Opens}
    (hO : IsAffineOpen O) {z : C1 V} (hz : IsCoc V z) :
    ∃ b : ∀ i, Γ(X, V i ⊓ O), ∀ i i' (W : X.Opens), W ≤ V i → W ≤ V i' → W ≤ O →
      rsT (z i i') W = rsT (b i) W - rsT (b i') W := by
  have hs : ⨆ i, V i ⊓ O = O := by rw [← iSup_inf_eq, hV, top_inf_eq]
  have hle : ∀ i j, V i ⊓ O ⊓ (V j ⊓ O) ≤ V i ⊓ V j := fun i j => inf_le_inf inf_le_left inf_le_left
  obtain ⟨y, hy⟩ := isCob_of_isAffineOpen X J (fun i => V i ⊓ O)
    (fun i j => rsT (z i j) (V i ⊓ O ⊓ (V j ⊓ O))) (hs.symm ▸ hO) (by
      intro i j l
      dsimp only
      rw [rsT_rsT (hle i j) inf_le_left,
        rsT_rsT (hle j l) (le_inf (inf_le_left.trans inf_le_right) inf_le_right),
        rsT_rsT (hle i l) (le_inf (inf_le_left.trans inf_le_left) inf_le_right)]
      exact coc_on hz i j l ((inf_le_left.trans inf_le_left).trans inf_le_left)
        ((inf_le_left.trans inf_le_right).trans inf_le_left) (inf_le_right.trans inf_le_left))
  refine ⟨fun i => - y i, fun i i' W h h' hW => ?_⟩
  have e : W ≤ V i ⊓ O ⊓ (V i' ⊓ O) := le_inf (le_inf h hW) (le_inf h' hW)
  have k := congrArg (fun s => rsT s W) (hy i i')
  simp only [rsT_sub] at k
  rw [rsT_rsT (hle i i') e, rsT_rsT inf_le_right e, rsT_rsT inf_le_left e] at k
  simp only [rsT_neg]
  rw [k]; ring

theorem exists_cocycle_on_affine : ∀ (X : Scheme.{0}) (J K : Type) (V : J → X.Opens) (U : K → X.Opens), ⨆ i, V i = ⊤ → (∀ k, IsAffineOpen (U k)) → ∀ z : C1 V, IsCoc V z → ∃ (z' : C1 U) (b : ∀ i k, Γ(X, V i ⊓ U k)), IsCoc U z' ∧ (∀ i i' k, rsT (z i i') (V i ⊓ V i' ⊓ U k) = rsT (b i k) (V i ⊓ V i' ⊓ U k) - rsT (b i' k) (V i ⊓ V i' ⊓ U k)) ∧ ∀ i k k', rsT (z' k k') (V i ⊓ U k ⊓ U k') = rsT (b i k') (V i ⊓ U k ⊓ U k') - rsT (b i k) (V i ⊓ U k ⊓ U k') := by
  intro X J K V U hV hU z hz
  choose b hb using fun k => exists_split hV (hU k) hz
  have glue : ∀ k k', ∃ t : Γ(X, U k ⊓ U k'), ∀ i, rsT t (V i ⊓ (U k ⊓ U k')) =
      rsT (b k' i) (V i ⊓ (U k ⊓ U k')) - rsT (b k i) (V i ⊓ (U k ⊓ U k')) := by
    intro k k'
    refine exists_rsT_eq (fun i => V i ⊓ (U k ⊓ U k')) (fun i => inf_le_right)
      (le_iSup_inf hV _) _ fun i j => ?_
    simp only [rsT_sub]
    rw [rsT_rsT (inf_le_inf_left _ inf_le_right) inf_le_left,
      rsT_rsT (inf_le_inf_left _ inf_le_left) inf_le_left,
      rsT_rsT (inf_le_inf_left _ inf_le_right) inf_le_right,
      rsT_rsT (inf_le_inf_left _ inf_le_left) inf_le_right]
    have hi : V i ⊓ (U k ⊓ U k') ⊓ (V j ⊓ (U k ⊓ U k')) ≤ V i := inf_le_left.trans inf_le_left
    have hj : V i ⊓ (U k ⊓ U k') ⊓ (V j ⊓ (U k ⊓ U k')) ≤ V j := inf_le_right.trans inf_le_left
    have hk : V i ⊓ (U k ⊓ U k') ⊓ (V j ⊓ (U k ⊓ U k')) ≤ U k ⊓ U k' := inf_le_right.trans inf_le_right
    have h1 := hb k i j _ hi hj (hk.trans inf_le_left)
    have h2 := hb k' i j _ hi hj (hk.trans inf_le_right)
    linear_combination h1 - h2
  choose t ht using glue
  have ht' : ∀ k k' i (W : X.Opens), W ≤ V i → W ≤ U k → W ≤ U k' →
      rsT (t k k') W = rsT (b k' i) W - rsT (b k i) W := by
    intro k k' i W hi hk hk'
    have e : W ≤ V i ⊓ (U k ⊓ U k') := le_inf hi (le_inf hk hk')
    have h := congrArg (fun s => rsT s W) (ht k k' i)
    simp only [rsT_sub] at h
    rwa [rsT_rsT inf_le_right e, rsT_rsT (inf_le_inf_left _ inf_le_right) e,
      rsT_rsT (inf_le_inf_left _ inf_le_left) e] at h
  refine ⟨t, fun i k => b k i, fun k k' k'' => ?_, fun i i' k => hb k i i' _
    (inf_le_left.trans inf_le_left) (inf_le_left.trans inf_le_right) inf_le_right,
    fun i k k' => ht' k k' i _ (inf_le_left.trans inf_le_left) (inf_le_left.trans inf_le_right)
      inf_le_right⟩
  refine eq_of_rsT_eq (fun i => V i ⊓ (U k ⊓ U k' ⊓ U k'')) (fun i => inf_le_right)
    (le_iSup_inf hV _) _ _ fun i => ?_
  have e : V i ⊓ (U k ⊓ U k' ⊓ U k'') ≤ U k ⊓ U k' ⊓ U k'' := inf_le_right
  have e1 := (e.trans inf_le_left).trans inf_le_left
  have e2 := (e.trans inf_le_left).trans inf_le_right
  have e3 := e.trans inf_le_right
  simp only [rsT_add]
  rw [rsT_rsT inf_le_left e, rsT_rsT (le_inf (inf_le_left.trans inf_le_right) inf_le_right) e,
    rsT_rsT (le_inf (inf_le_left.trans inf_le_left) inf_le_right) e,
    ht' k k' i _ inf_le_left e1 e2, ht' k' k'' i _ inf_le_left e2 e3, ht' k k'' i _ inf_le_left e1 e3]
  ring

end GlobalTheory.CechMixed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechOneCocycleOnAffineCoverMixed =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSubfamilyUniqueReprOfSpanningLocalRing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSubfamilyUniqueReprOfSpanningLocalRing", "h": "module\n\npublic import Mathlib.LinearAlgebra.Basis.Defs\npublic import Mathlib.RingTheory.LocalRing.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.BaseChangeKernels.SurjOfCover\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.HtArith\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\n\n"}
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

namespace GlobalTheory

theorem exists_subfamily_unique_repr_of_spanning_localRing
    (R : Type) [CommRing R] [IsLocalRing R] (M : Type) [AddCommGroup M] [Module R M] (d g : ℕ) :
    Nonempty (Module.Basis (Fin d) R M) → ∀ w : Fin g → M,
      (∀ u : M, ∃ cf : Fin g → R, u = ∑ a, cf a • w a) →
      ∃ e : Fin d → Fin g, ∀ u : M, ∃! cf : Fin d → R, u = ∑ a, cf a • w (e a) := by
  rintro ⟨b⟩ w hw
  haveI : Module.Finite R M := Module.Finite.of_basis b
  let V := IsLocalRing.ResidueField R ⊗[R] M
  let v : Fin g → V := fun a => (1 : IsLocalRing.ResidueField R) ⊗ₜ[R] w a
  have hsp : Submodule.span (IsLocalRing.ResidueField R) (Set.range v) = ⊤ := by
    rw [eq_top_iff]
    rintro x -
    induction x using TensorProduct.induction_on with
    | zero => exact Submodule.zero_mem _
    | tmul c m =>
      obtain ⟨cf, rfl⟩ := hw m
      have : c ⊗ₜ[R] (∑ a, cf a • w a) = c • ∑ a, cf a • v a := by
        simp only [v, TensorProduct.tmul_sum, Finset.smul_sum]
        refine Finset.sum_congr rfl fun a _ => ?_
        rw [TensorProduct.tmul_smul, TensorProduct.smul_tmul', TensorProduct.smul_tmul',
          TensorProduct.smul_tmul', smul_comm c (cf a) (1 : IsLocalRing.ResidueField R),
          smul_eq_mul, _root_.mul_one]
      rw [this]
      refine Submodule.smul_mem _ _ (Submodule.sum_mem _ fun a _ => ?_)
      exact Submodule.smul_of_tower_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)
    | add x y hx hy => exact Submodule.add_mem _ hx hy
  obtain ⟨κ, a, ha, hspa, hli⟩ := exists_linearIndependent' (IsLocalRing.ResidueField R) v
  let bk : Module.Basis κ (IsLocalRing.ResidueField R) V :=
    Module.Basis.mk hli (by rw [hspa, hsp])
  let bV : Module.Basis (Fin d) (IsLocalRing.ResidueField R) V :=
    Algebra.TensorProduct.basis (IsLocalRing.ResidueField R) b
  let eq : Fin d ≃ κ := bV.indexEquiv bk
  refine ⟨a ∘ eq, ?_⟩
  have hspR : Submodule.span R (Set.range (w ∘ a ∘ eq)) = ⊤ :=
    IsLocalRing.span_eq_top_of_tmul_eq_basis (w ∘ a ∘ eq) (bk.reindex eq.symm) (fun i => by
      simp [bk, v])
  let f : (Fin d → R) →ₗ[R] M := Fintype.linearCombination R (w ∘ a ∘ eq)
  have hf : Function.Surjective f := by
    rw [← LinearMap.range_eq_top, Fintype.range_linearCombination]
    exact hspR
  have hfi : Function.Injective f :=
    OrzechProperty.injective_of_surjective_of_injective b.equivFun.symm.toLinearMap f
      b.equivFun.symm.injective hf
  intro u
  obtain ⟨cf, hcf⟩ := hf u
  refine ⟨cf, ?_, ?_⟩
  · rw [← hcf]; simp [f, Fintype.linearCombination_apply]
  · intro cf' hcf'
    apply hfi
    rw [hcf]; simp [f, Fintype.linearCombination_apply, hcf']

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSubfamilyUniqueReprOfSpanningLocalRing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechOneCochainToPosetCochainCoboundaryExists =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechOneCochainToPosetCochainCoboundaryExists", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictCapFBijective\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry Opposite
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.KS (rsT IsCoc IsCob)
open GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.CechCmp

namespace GlobalTheory.CechCmp

theorem cechOneCochainToPosetCochain_coboundary_exists : ∀ (I : Type) [Finite I] (X : Scheme.{0}) (R : Type) [CommRing R] (s : X ⟶ Sp R)
    (U : I → X.Opens) (hU : ∀ i, IsAffineOpen (U i))
    (hinf : ∀ V W : X.Opens, IsAffineOpen V → IsAffineOpen W → IsAffineOpen (V ⊓ W)),
    ∀ c : GlobalTheory.KS.C1 U, IsCob U c → ∃ g, d0 (capF s U hU hinf) g = toPos s U hU hinf c := by
  intro I _ X R _ s U hU hinf c hc
  obtain ⟨b, hb⟩ := hc
  refine ⟨fun T => (cv s U hU hinf T).symm (rsT (b T.unop.pt) (cap U T.unop)), ?_⟩
  funext T T' φ
  apply (cv s U hU hinf T').injective
  have hTT' : cap U T'.unop ≤ cap U T.unop := cap_mono U (leOfHom φ.unop)
  have hp : cap U T.unop ≤ U T.unop.pt := cap_le U T.unop.pt_mem
  have hp' : cap U T'.unop ≤ U T'.unop.pt := cap_le U T'.unop.pt_mem
  have hle : cap U T'.unop ≤ U T.unop.pt ⊓ U T'.unop.pt := le_inf (hTT'.trans hp) hp'
  rw [amitsur_d0_apply, map_sub, cv_mp, cv_toPos, RingEquiv.apply_symm_apply, RingEquiv.apply_symm_apply, hb,
    GlobalTheory.KS.rsT_sub, GlobalTheory.KS.rsT_rsT inf_le_right hle, GlobalTheory.KS.rsT_rsT inf_le_left hle, GlobalTheory.KS.rsT_rsT hp hTT']

end GlobalTheory.CechCmp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechOneCochainToPosetCochainCoboundaryExists =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechOneCochainToPosetCochainMemCocycles =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechOneCochainToPosetCochainMemCocycles", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictCapFBijective\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry Opposite
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.KS (rsT IsCoc IsCob)
open GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.CechCmp

namespace GlobalTheory.CechCmp

theorem cechOneCochainToPosetCochain_mem_cocycles : ∀ (I : Type) [Finite I] (X : Scheme.{0}) (R : Type) [CommRing R] (s : X ⟶ Sp R) (U : I → X.Opens) (hU : ∀ i, IsAffineOpen (U i)) (hinf : ∀ V W : X.Opens, IsAffineOpen V → IsAffineOpen W → IsAffineOpen (V ⊓ W)), ∀ c : GlobalTheory.KS.C1 U, IsCoc U c → toPos s U hU hinf c ∈ Z1 (capF s U hU hinf) := by
  intro I _ X R _ s U hU hinf c hc T T' T'' φ ψ
  have h1 : T.unop.set ⊆ T'.unop.set := NE.le_iff.1 (leOfHom φ.unop)
  have h2 : T'.unop.set ⊆ T''.unop.set := NE.le_iff.1 (leOfHom ψ.unop)
  have ha : T.unop.pt ∈ T''.unop.set := h2 (h1 T.unop.pt_mem)
  have hb : T'.unop.pt ∈ T''.unop.set := h2 T'.unop.pt_mem
  have ha' : T.unop.pt ∈ T'.unop.set := h1 T.unop.pt_mem
  have hW : cap U T''.unop ≤ U T.unop.pt ⊓ U T'.unop.pt ⊓ U T''.unop.pt :=
    le_inf (le_inf (cap_le U ha) (cap_le U hb)) (cap_le U T''.unop.pt_mem)
  have hT' : cap U T'.unop ≤ U T.unop.pt ⊓ U T'.unop.pt := le_inf (cap_le U ha') (cap_le U T'.unop.pt_mem)
  have h23 : cap U T''.unop ≤ cap U T'.unop := cap_mono U (leOfHom ψ.unop)
  have key := congrArg (fun x => rsT x (cap U T''.unop)) (hc T.unop.pt T'.unop.pt T''.unop.pt)
  simp only [GlobalTheory.KS.rsT_add] at key
  have e1 : U T.unop.pt ⊓ U T'.unop.pt ⊓ U T''.unop.pt ≤ U T.unop.pt ⊓ U T'.unop.pt := inf_le_left
  have e2 : U T.unop.pt ⊓ U T'.unop.pt ⊓ U T''.unop.pt ≤ U T'.unop.pt ⊓ U T''.unop.pt :=
    le_inf (inf_le_left.trans inf_le_right) inf_le_right
  have e3 : U T.unop.pt ⊓ U T'.unop.pt ⊓ U T''.unop.pt ≤ U T.unop.pt ⊓ U T''.unop.pt :=
    le_inf (inf_le_left.trans inf_le_left) inf_le_right
  rw [GlobalTheory.KS.rsT_rsT e1 hW, GlobalTheory.KS.rsT_rsT e2 hW, GlobalTheory.KS.rsT_rsT e3 hW] at key
  apply (cv s U hU hinf T'').injective
  rw [map_add (f := _), cv_toPos, cv_mp, cv_toPos, cv_toPos, GlobalTheory.KS.rsT_rsT hT' h23]
  exact key.symm

end GlobalTheory.CechCmp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechOneCochainToPosetCochainMemCocycles =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechToPosetPosetToCechSubCoboundary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechToPosetPosetToCechSubCoboundary", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictCapFBijective\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry Opposite
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.KS (rsT IsCoc IsCob)
open GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.CechCmp

noncomputable section

namespace GlobalTheory.CechCmp

theorem cechToPoset_posetToCech_sub_coboundary : ∀ (I : Type) [Finite I] (X : Scheme.{0}) (R : Type) [CommRing R]
    (s : X ⟶ Sp R) (U : I → X.Opens) (hU : ∀ i, IsAffineOpen (U i))
    (hinf : ∀ V W : X.Opens, IsAffineOpen V → IsAffineOpen W → IsAffineOpen (V ⊓ W)),
    ∀ f : GlobalTheory.CatCoh.C1 (capF s U hU hinf), f ∈ Z1 (capF s U hU hinf) →
      ∃ g, d0 (capF s U hU hinf) g = toPos s U hU hinf (toCech s U hU hinf f) - f := by
  intro I _ X R _ s U hU hinf f hf
  have hm : ∀ {S T : NE I}, S.set ⊆ T.set → ((op S : (NE I)ᵒᵖ) ⟶ op T) :=
    fun h => (homOfLE (NE.le_iff.2 h)).op
  have hsg : ∀ T : NE I, (NE.single T.pt).set ⊆ T.set := fun T => by
    rw [NE.set_single]; exact Set.singleton_subset_iff.2 T.pt_mem
  have sub : ∀ {S T : (NE I)ᵒᵖ} (u v : S ⟶ T), u = v := fun u v =>
    Quiver.Hom.unop_inj (Subsingleton.elim _ _)
  refine ⟨fun T => -f (op (NE.single T.unop.pt)) T (hm (hsg T.unop)), ?_⟩
  funext T T' φ
  have hTT : T.unop.set ⊆ T'.unop.set := NE.le_iff.1 (leOfHom φ.unop)
  have ha' : T.unop.pt ∈ T'.unop.set := hTT T.unop.pt_mem
  have hab : (NE.pair T.unop.pt T'.unop.pt).set ⊆ T'.unop.set := by
    rw [NE.set_pair]; exact Set.insert_subset ha' (Set.singleton_subset_iff.2 T'.unop.pt_mem)
  let χ : op (NE.pair T.unop.pt T'.unop.pt) ⟶ T' := hm hab
  let ψa : op (NE.single T.unop.pt) ⟶ op (NE.pair T.unop.pt T'.unop.pt) :=
    (homOfLE (NE.pair_le_single_left T.unop.pt T'.unop.pt)).op
  let ψb : op (NE.single T'.unop.pt) ⟶ op (NE.pair T.unop.pt T'.unop.pt) :=
    (homOfLE (NE.pair_le_single_right T.unop.pt T'.unop.pt)).op
  have c1 := Z1.comp ⟨f, hf⟩ (hm (hsg T.unop)) φ
  have c2 := Z1.comp ⟨f, hf⟩ ψa χ
  have c3 := Z1.comp ⟨f, hf⟩ ψb χ
  rw [sub (hm (hsg T.unop) ≫ φ) (ψa ≫ χ)] at c1
  have e3 : (hm (hsg T'.unop) : op (NE.single T'.unop.pt) ⟶ T') = ψb ≫ χ := sub _ _
  have key : toPos s U hU hinf (toCech s U hU hinf f) T T' φ =
      mp (capF s U hU hinf) χ (f _ _ ψa) - mp (capF s U hU hinf) χ (f _ _ ψb) := by
    apply (cv s U hU hinf T').injective
    have h1 : U T.unop.pt ⊓ U T'.unop.pt ≤ cap U (NE.pair T.unop.pt T'.unop.pt) :=
      (cap_pair U _ _).ge
    have h2 : cap U T'.unop ≤ U T.unop.pt ⊓ U T'.unop.pt :=
      le_inf (cap_le U ha') (cap_le U T'.unop.pt_mem)
    rw [cv_toPos, toCech_apply, map_sub, cv_mp, cv_mp, GlobalTheory.KS.rsT_sub, GlobalTheory.KS.rsT_rsT h1 h2,
      GlobalTheory.KS.rsT_rsT h1 h2]
  simp only [amitsur_d0_apply, Pi.sub_apply, map_neg, key]
  rw [e3]
  simp only at c1 c2 c3
  linear_combination -c3 + c2 - c1

end GlobalTheory.CechCmp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechToPosetPosetToCechSubCoboundary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCechOneCocyclePosetOneCochainToCechCochain =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCechOneCocyclePosetOneCochainToCechCochain", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictCapFBijective\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry Opposite
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.KS (rsT IsCoc IsCob)
open GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.CechCmp

noncomputable section

namespace GlobalTheory.CechCmp

variable {I : Type} [Finite I] {X : Scheme.{0}} {R : Type} [CommRing R] (s : X ⟶ Sp R) (U : I → X.Opens)
  (hU : ∀ i, IsAffineOpen (U i)) (hinf : ∀ V W : X.Opens, IsAffineOpen V → IsAffineOpen W → IsAffineOpen (V ⊓ W))

theorem toCech_cocycle_read (f : GlobalTheory.CatCoh.C1 (capF s U hU hinf)) (hf : f ∈ Z1 (capF s U hU hinf))
    (x : I) (P K : NE I) (hxP : P ≤ NE.single x) (hPK : K ≤ P) (hxK : K ≤ NE.single x)
    (W : X.Opens) (hW : W ≤ cap U K) :
    rsT (cv s U hU hinf (op P) (f (op (NE.single x)) (op P) (homOfLE hxP).op)) W =
      rsT (cv s U hU hinf (op K) (f (op (NE.single x)) (op K) (homOfLE hxK).op)) W -
        rsT (cv s U hU hinf (op K) (f (op P) (op K) (homOfLE hPK).op)) W := by
  have e := Z1.comp ⟨f, hf⟩ (homOfLE hxP).op (homOfLE hPK).op
  have hc : (homOfLE hxP).op ≫ (homOfLE hPK).op = (homOfLE hxK).op := Subsingleton.elim _ _
  rw [hc] at e
  have e' := congrArg (fun b => rsT (cv s U hU hinf (op K) b) W) e
  simp only [map_add (f := _), GlobalTheory.KS.rsT_add] at e'
  rw [cv_mp s U hU hinf (homOfLE hPK).op] at e'
  rw [GlobalTheory.KS.rsT_rsT (O₁ := cap U (op K).unop) (cap_mono U hPK) hW] at e'
  rw [e']
  abel

theorem toCech_isCoc (f : GlobalTheory.CatCoh.C1 (capF s U hU hinf)) (hf : f ∈ Z1 (capF s U hU hinf)) :
    IsCoc U (toCech s U hU hinf f) := by
  intro i j k
  let K : NE I := OrderDual.toDual ⟨{i, j, k}, Set.insert_nonempty i {j, k}⟩
  have hi : i ∈ K.set := Set.mem_insert i _
  have hj : j ∈ K.set := Set.mem_insert_of_mem i (Set.mem_insert j _)
  have hk : k ∈ K.set := Set.mem_insert_of_mem i (Set.mem_insert_of_mem j rfl)
  have sgl : ∀ {a : I}, a ∈ K.set → K ≤ NE.single a := fun ha => NE.le_iff.2 (Set.singleton_subset_iff.2 ha)
  have pr : ∀ {a b : I}, a ∈ K.set → b ∈ K.set → K ≤ NE.pair a b :=
    fun ha hb => NE.le_iff.2 (Set.insert_subset ha (Set.singleton_subset_iff.2 hb))
  have hW : U i ⊓ U j ⊓ U k ≤ cap U K := le_iInf₂ fun x hx => by
    rcases hx with rfl | rfl | rfl
    · exact inf_le_left.trans inf_le_left
    · exact inf_le_left.trans inf_le_right
    · exact inf_le_right
  have hij : U i ⊓ U j ⊓ U k ≤ U i ⊓ U j := inf_le_left
  have hjk : U i ⊓ U j ⊓ U k ≤ U j ⊓ U k := le_inf (inf_le_left.trans inf_le_right) inf_le_right
  have hik : U i ⊓ U j ⊓ U k ≤ U i ⊓ U k := le_inf (inf_le_left.trans inf_le_left) inf_le_right
  simp only [toCech_apply, GlobalTheory.KS.rsT_sub]
  rw [GlobalTheory.KS.rsT_rsT (cap_pair U i j).ge hij, GlobalTheory.KS.rsT_rsT (cap_pair U i j).ge hij,
    GlobalTheory.KS.rsT_rsT (cap_pair U j k).ge hjk, GlobalTheory.KS.rsT_rsT (cap_pair U j k).ge hjk,
    GlobalTheory.KS.rsT_rsT (cap_pair U i k).ge hik, GlobalTheory.KS.rsT_rsT (cap_pair U i k).ge hik]
  rw [toCech_cocycle_read s U hU hinf f hf i _ K _ (pr hi hj) (sgl hi) _ hW,
    toCech_cocycle_read s U hU hinf f hf j _ K _ (pr hi hj) (sgl hj) _ hW,
    toCech_cocycle_read s U hU hinf f hf j _ K _ (pr hj hk) (sgl hj) _ hW,
    toCech_cocycle_read s U hU hinf f hf k _ K _ (pr hj hk) (sgl hk) _ hW,
    toCech_cocycle_read s U hU hinf f hf i _ K _ (pr hi hk) (sgl hi) _ hW,
    toCech_cocycle_read s U hU hinf f hf k _ K _ (pr hi hk) (sgl hk) _ hW]
  abel

theorem isCoc_toCech : ∀ (I : Type) [Finite I] (X : Scheme.{0}) (R : Type) [CommRing R] (s : X ⟶ Sp R) (U : I → X.Opens) (hU : ∀ i, IsAffineOpen (U i)) (hinf : ∀ V W : X.Opens, IsAffineOpen V → IsAffineOpen W → IsAffineOpen (V ⊓ W)), ∀ f : GlobalTheory.CatCoh.C1 (capF s U hU hinf), f ∈ Z1 (capF s U hU hinf) → IsCoc U (toCech s U hU hinf f) :=
  fun _ _ _ _ _ s U hU hinf f hf => toCech_isCoc s U hU hinf f hf

end GlobalTheory.CechCmp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCechOneCocyclePosetOneCochainToCechCochain =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosetOneCochainToCechCochainCoboundary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosetOneCochainToCechCochainCoboundary", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictCapFBijective\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry Opposite
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.KS (rsT IsCoc IsCob)
open GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.CechCmp

noncomputable section

namespace GlobalTheory.CechCmp

theorem posetOneCochainToCechCochain_coboundary : ∀ (I : Type) [Finite I] (X : Scheme.{0}) (R : Type) [CommRing R] (s : X ⟶ Sp R) (U : I → X.Opens) (hU : ∀ i, IsAffineOpen (U i)) (hinf : ∀ V W : X.Opens, IsAffineOpen V → IsAffineOpen W → IsAffineOpen (V ⊓ W)), ∀ g : C0 (capF s U hU hinf), IsCob U (toCech s U hU hinf (d0 (capF s U hU hinf) g)) := by
  intro I _ X R _ s U hU hinf g
  refine ⟨fun i => rsT (cv s U hU hinf (op (NE.single i)) (g (op (NE.single i)))) (U i), fun i j => ?_⟩
  have hp : U i ⊓ U j ≤ cap U (NE.pair i j) := (cap_pair U i j).ge
  have key : ∀ k, k ∈ ({i, j} : Set I) →
      rsT (rsT (cv s U hU hinf (op (NE.single k)) (g (op (NE.single k)))) (cap U (NE.pair i j))) (U i ⊓ U j) =
        rsT (rsT (cv s U hU hinf (op (NE.single k)) (g (op (NE.single k)))) (U k)) (U i ⊓ U j) := by
    intro k hk
    have hk' : U i ⊓ U j ≤ U k := by
      rcases hk with rfl | hk
      · exact inf_le_left
      · rw [Set.mem_singleton_iff.1 hk]; exact inf_le_right
    rw [GlobalTheory.KS.rsT_rsT (cap_mono U (a := NE.pair i j) (b := NE.single k) (NE.le_iff.2 (by rw [NE.set_single, NE.set_pair]; exact Set.singleton_subset_iff.2 hk))) hp,
      GlobalTheory.KS.rsT_rsT (cap_single U k).ge hk']
  rw [toCech_apply, amitsur_d0_apply, amitsur_d0_apply, map_sub, map_sub, cv_mp, cv_mp, GlobalTheory.KS.rsT_sub, GlobalTheory.KS.rsT_sub]
  have e1 := key i (Set.mem_insert i {j})
  have e2 := key j (Set.mem_insert_of_mem i rfl)
  simp only [unop_op] at e1 e2 ⊢
  rw [e1, e2]
  abel

end GlobalTheory.CechCmp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosetOneCochainToCechCochainCoboundary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosetToCechCechToPosetCocycleEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosetToCechCechToPosetCocycleEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictCapFBijective\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry Opposite
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.KS (rsT IsCoc IsCob)
open GlobalTheory.CatCoh GlobalTheory.CechDR GlobalTheory.CechCmp

namespace GlobalTheory.CechCmp

theorem toCech_toPos : ∀ (I : Type) [Finite I] (X : Scheme.{0}) (R : Type) [CommRing R] (s : X ⟶ Sp R) (U : I → X.Opens) (hU : ∀ i, IsAffineOpen (U i)) (hinf : ∀ V W : X.Opens, IsAffineOpen V → IsAffineOpen W → IsAffineOpen (V ⊓ W)), ∀ c : GlobalTheory.KS.C1 U, IsCoc U c → toCech s U hU hinf (toPos s U hU hinf c) = c := by
  intro I _ X R _ s U hU hinf c hc
  funext i j
  rw [toCech_apply, cv_toPos, cv_toPos]
  simp only [unop_op]
  rw [NE.pt_single, NE.pt_single]
  have hk : (NE.pair i j).pt = i ∨ (NE.pair i j).pt = j := by
    have := NE.pt_mem (NE.pair i j)
    rw [NE.set_pair] at this
    simpa using this
  have hi : i ∈ (NE.pair i j).set := by simp [NE.set_pair]
  have hj : j ∈ (NE.pair i j).set := by simp [NE.set_pair]
  have hcap : U i ⊓ U j ≤ cap U (NE.pair i j) := (cap_pair U i j).ge
  rw [GlobalTheory.KS.rsT_rsT (le_inf (cap_le U hi) (cap_le U (NE.pt_mem _))) hcap,
    GlobalTheory.KS.rsT_rsT (le_inf (cap_le U hj) (cap_le U (NE.pt_mem _))) hcap]
  generalize (NE.pair i j).pt = k at hk ⊢
  have hle : U i ⊓ U j ≤ U i ⊓ U j ⊓ U k := by
    refine le_inf le_rfl ?_
    rcases hk with h | h <;> subst h
    exacts [inf_le_left, inf_le_right]
  have h := congrArg (fun t => rsT t (U i ⊓ U j)) (hc i j k)
  simp only [GlobalTheory.KS.rsT_add] at h
  have e₁ : U i ⊓ U j ⊓ U k ≤ U j ⊓ U k := inf_le_inf_right _ inf_le_right
  have e₂ : U i ⊓ U j ⊓ U k ≤ U i ⊓ U k := inf_le_inf_right _ inf_le_left
  rw [GlobalTheory.KS.rsT_rsT inf_le_left hle, GlobalTheory.KS.rsT_self, GlobalTheory.KS.rsT_rsT e₁ hle, GlobalTheory.KS.rsT_rsT e₂ hle] at h
  rw [← h]
  abel

end GlobalTheory.CechCmp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosetToCechCechToPosetCocycleEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianCechH1BasisCocycles =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianCechH1BasisCocycles", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeStructureSheafCohomologyNoetherianStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictCapFBijective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechOneCochainToPosetCochainCoboundaryExists\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechOneCochainToPosetCochainMemCocycles\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechToPosetPosetToCechSubCoboundary\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCechOneCocyclePosetOneCochainToCechCochain\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosetOneCochainToCechCochainCoboundary\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosetToCechCechToPosetCocycleEq\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ComparisonMemCechHodgeFiltration\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CechDR (HO1)

namespace GlobalTheory.CechFree

theorem cech_free : ∀ (A : Type) [CommRing A] [IsLocalRing A] [IsNoetherianRing A] (B : Over (Sp A)) [GrpObj B] [IsCommMonObj B] (g : ℕ) (I : Type) [Finite I] (U : I → B.left.Opens), IsAbelianScheme B → SmoothOfRelativeDimension g B.hom → ⨆ i, U i = ⊤ → (∀ i, IsAffineOpen (U i)) → ∃ b : Fin g → C1 U, (∀ a, IsCoc U (b a)) ∧ ∀ c : C1 U, IsCoc U c → ∃! cc : Fin g → A, IsCob U (fun i j => c i j - ∑ a, constFn B.hom _ (cc a) * b a i j) := by
  intro A _ _ _ B _ _ g I _ U hA hg hcov hU
  classical
  have hinf : ∀ V W : B.left.Opens, IsAffineOpen V → IsAffineOpen W → IsAffineOpen (V ⊓ W) := by
    haveI := hA.proper
    have : B.left.IsSeparated := ⟨by rw [← terminal.comp_from B.hom]; infer_instance⟩
    exact fun V W hV hW => hV.inf hW
  obtain ⟨hfin, hproj, hrk⟩ := (_root_.GlobalTheory.AbCohRing.oStr_noetherian A B g hA hg).1
  haveI := hfin
  haveI := hproj
  haveI : Module.Free A (HO1 B.hom) := Module.free_of_flat_of_isLocalRing
  have hr : Module.finrank A (HO1 B.hom) = g := by
    rw [← hrk (IsLocalRing.closedPoint A), Module.rankAtStalk_eq_finrank_tensorProduct, Module.finrank_baseChange]
  let bH := Module.finBasisOfFinrankEq A (HO1 B.hom) hr
  let F := GlobalTheory.CechCmp.capF B.hom U hU hinf
  let e : HO1 B.hom ≃ₗ[A] CatCoh.H1 F :=
    LinearEquiv.ofBijective (CatCoh.CoefMap.restrict (GlobalTheory.CechDR.OAff B.hom)
      (GlobalTheory.CechCmp.capAff_mono U hU hinf).functor.op).pull1 (GlobalTheory.CechCmp.restrict_capF_bijective B.hom U hU hinf hcov)
  let bP := bH.map e
  choose f hf using fun a => CatCoh.H1.mk_surjective F (bP a)
  let b : Fin g → C1 U := fun a => GlobalTheory.CechCmp.toCech B.hom U hU hinf (f a).1
  have hb : ∀ a, IsCoc U (b a) := fun a => _root_.GlobalTheory.CechCmp.isCoc_toCech I B.left A B.hom U hU hinf _ (f a).2
  have hbP : ∀ a, CatCoh.H1.mk F ⟨GlobalTheory.CechCmp.toPos B.hom U hU hinf (b a),
      _root_.GlobalTheory.CechCmp.cechOneCochainToPosetCochain_mem_cocycles I B.left A B.hom U hU hinf _ (hb a)⟩ = bP a := by
    intro a
    rw [← hf a, CatCoh.H1.mk_eq_mk]
    exact _root_.GlobalTheory.CechCmp.cechToPoset_posetToCech_sub_coboundary I B.left A B.hom U hU hinf _ (f a).2
  have hbb : ∀ a, GlobalTheory.CechCmp.toCech B.hom U hU hinf (GlobalTheory.CechCmp.toPos B.hom U hU hinf (b a)) = b a :=
    fun a => _root_.GlobalTheory.CechCmp.toCech_toPos I B.left A B.hom U hU hinf _ (hb a)

  have hlc : ∀ (cc : Fin g → A) (hm : GlobalTheory.CechCmp.toPos B.hom U hU hinf
      (fun i j => ∑ a, constFn B.hom (U i ⊓ U j) (cc a) * b a i j) ∈ CatCoh.Z1 F),
      CatCoh.H1.mk F ⟨_, hm⟩ = ∑ a, cc a • bP a := by
    intro cc hm
    have : (⟨_, hm⟩ : CatCoh.Z1 F) = ∑ a, cc a • ⟨GlobalTheory.CechCmp.toPos B.hom U hU hinf (b a),
        _root_.GlobalTheory.CechCmp.cechOneCochainToPosetCochain_mem_cocycles I B.left A B.hom U hU hinf _ (hb a)⟩ := by
      apply Subtype.ext
      rw [Submodule.coe_sum]
      simp only [Submodule.coe_smul]
      exact GlobalTheory.CechCmp.toPos_lc B.hom U hU hinf cc b

    rw [this, map_sum]
    exact Finset.sum_congr rfl fun a _ => by rw [map_smul, hbP]
  have hmem : ∀ cc : Fin g → A, GlobalTheory.CechCmp.toPos B.hom U hU hinf
      (fun i j => ∑ a, constFn B.hom (U i ⊓ U j) (cc a) * b a i j) ∈ CatCoh.Z1 F := by
    intro cc
    rw [GlobalTheory.CechCmp.toPos_lc]
    exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (_root_.GlobalTheory.CechCmp.cechOneCochainToPosetCochain_mem_cocycles I B.left A B.hom U hU hinf _ (hb a))
  refine ⟨b, hb, fun c hc => ?_⟩
  have hcm := _root_.GlobalTheory.CechCmp.cechOneCochainToPosetCochain_mem_cocycles I B.left A B.hom U hU hinf c hc
  let x := CatCoh.H1.mk F ⟨_, hcm⟩
  have hex : IsCob U (fun i j => c i j - ∑ a, constFn B.hom (U i ⊓ U j) (bP.repr x a) * b a i j) := by
    let l : C1 U := fun i j => ∑ a, constFn B.hom (U i ⊓ U j) (bP.repr x a) * b a i j
    have hl : GlobalTheory.CechCmp.toCech B.hom U hU hinf (GlobalTheory.CechCmp.toPos B.hom U hU hinf l) = l := by
      rw [GlobalTheory.CechCmp.toPos_lc, GlobalTheory.CechCmp.toCech_lc]
      simp only [hbb, l]
    have h0 : CatCoh.H1.mk F ⟨_, hcm⟩ = CatCoh.H1.mk F ⟨_, hmem (bP.repr x)⟩ := by
      rw [hlc _ (hmem _)]
      exact (bP.sum_repr x).symm
    obtain ⟨g0, hg0⟩ := CatCoh.H1.mk_eq_mk.1 h0
    have key : (fun i j => c i j - l i j) = GlobalTheory.CechCmp.toCech B.hom U hU hinf (CatCoh.d0 F g0) := by
      rw [hg0, GlobalTheory.CechCmp.toCech_sub, _root_.GlobalTheory.CechCmp.toCech_toPos I B.left A B.hom U hU hinf c hc, hl]
      rfl
    show IsCob U (fun i j => c i j - l i j)
    rw [key]
    exact _root_.GlobalTheory.CechCmp.posetOneCochainToCechCochain_coboundary I B.left A B.hom U hU hinf g0
  refine ⟨bP.repr x, hex, fun cc hcc => ?_⟩
  have hcs : ∀ (O : B.left.Opens) (y z : A), constFn B.hom O (y - z) = constFn B.hom O y - constFn B.hom O z :=
    fun O y z => by simp only [constFn, map_sub]
  let δ : Fin g → A := fun a => bP.repr x a - cc a
  have hcob : IsCob U (fun i j => ∑ a, constFn B.hom (U i ⊓ U j) (δ a) * b a i j) := by
    obtain ⟨β₁, h₁⟩ := hcc
    obtain ⟨β₂, h₂⟩ := hex
    refine ⟨fun i => β₁ i - β₂ i, fun i j => ?_⟩
    have e₁ := h₁ i j
    have e₂ := h₂ i j
    simp only [δ, hcs, sub_mul, Finset.sum_sub_distrib, GlobalTheory.KS.rsT_sub] at e₁ e₂ ⊢
    linear_combination e₁ - e₂
  obtain ⟨g1, hg1⟩ := _root_.GlobalTheory.CechCmp.cechOneCochainToPosetCochain_coboundary_exists I B.left A B.hom U hU hinf _ hcob
  have hz : ∑ a, δ a • bP a = 0 := by
    rw [← hlc δ (hmem δ)]
    exact CatCoh.H1.mk_eq_zero.2 ⟨g1, hg1⟩
  have hδ := Fintype.linearIndependent_iff.1 bP.linearIndependent δ hz
  funext a
  exact (sub_eq_zero.1 (hδ a)).symm

end GlobalTheory.CechFree
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianCechH1BasisCocycles =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianCechH1BasisCocyclesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianCechH1BasisCocyclesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianCechH1BasisCocycles\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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

theorem _root_.GlobalTheory.T.abelian_cech_h1_basis_cocycles : ∀ (A : Type) [CommRing A] [IsLocalRing A] [IsNoetherianRing A] (B : Over (Sp A)) [GrpObj B] [IsCommMonObj B] (g : ℕ) (I : Type) [Finite I] (U : I → B.left.Opens), IsAbelianScheme B → SmoothOfRelativeDimension g B.hom → ⨆ i, U i = ⊤ → (∀ i, IsAffineOpen (U i)) → ∃ b : Fin g → C1 U, (∀ a, IsCoc U (b a)) ∧ ∀ c : C1 U, IsCoc U c → ∃! cc : Fin g → A, IsCob U (fun i j => c i j - ∑ a, constFn B.hom _ (cc a) * b a i j) := by
  first | exact @GlobalTheory.CechFree.cech_free
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianCechH1BasisCocyclesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivativesCoboundaryCoeffsMemMaximalIdealStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivativesCoboundaryCoeffsMemMaximalIdealStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivativesCoboundaryCoeffsMemMaximalIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivativesCoboundaryCoeffsMemMaximalIdealStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldsBasisTangent =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldsBasisTangent", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianCechH1BasisCocyclesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivativesCoboundaryCoeffsMemMaximalIdealStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLocalDerivationExtensionOfAffine\n\n"}
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
namespace GlobalTheory.DlogBasis

section Coch

variable {A : Type} [CommRing A] {Y : Scheme.{0}} {I : Type} (q : Y ⟶ Sp A) (U : I → Y.Opens)

def kap (r : A) : C1 U := fun i j => constFn q (U i ⊓ U j) r

theorem rsT_mulc {O₀ O : Y.Opens} (h : O ≤ O₀) (r : A) (s : Γ(Y, O₀)) :
    rsT (constFn q O₀ r * s) O = constFn q O r * rsT s O := by
  rw [_root_.GlobalTheory.KS.rsT_of_le h, _root_.GlobalTheory.KS.rsT_of_le h, map_mul, _root_.GlobalTheory.LocDerExt.res_const q h]

theorem kap_add (r s : A) : kap q U (r + s) = kap q U r + kap q U s := by funext i j; simp [kap, constFn]

theorem kap_mul (r s : A) : kap q U (r * s) = kap q U r * kap q U s := by funext i j; simp [kap, constFn]

theorem kap_zero : kap q U 0 = 0 := by funext i j; simp [kap, constFn]

variable {q U}

theorem isCob_zero : IsCob U 0 := ⟨0, fun i j => by simp only [Pi.zero_apply]; unfold rsT; split_ifs <;> simp⟩

theorem isCob_kap_mul (r : A) {c : C1 U} (hc : IsCob U c) : IsCob U (kap q U r * c) := by
  obtain ⟨b, hb⟩ := hc
  refine ⟨fun i => constFn q (U i) r * b i, fun i j => ?_⟩
  simp only [Pi.mul_apply, hb, kap, rsT_mulc q inf_le_right, rsT_mulc q inf_le_left]
  ring

theorem isCob_sum {n : ℕ} (c : Fin n → C1 U) (hc : ∀ a, IsCob U (c a)) : IsCob U (∑ a, c a) := Finset.sum_induction _ (fun x => IsCob U x) (fun _ _ => _root_.GlobalTheory.KS.IsCob.add) isCob_zero (fun a _ => hc a)

theorem isCob_congr {c d : C1 U} (h : c = d) (hc : IsCob U c) : IsCob U d := h ▸ hc

end Coch

section Coc

theorem pbT_id {X : Scheme.{0}} {O₀ : X.Opens} (s : Γ(X, O₀)) {O : X.Opens} (h : O ≤ O₀) :
    pbT (𝟙 X) s O = resG X h s := by
  unfold pbT
  rw [dite_eq_left (show O ≤ 𝟙 X ⁻¹ᵁ O₀ from h)]
  simp [resG, Scheme.Hom.appLE]
  (erw [Category.id_comp]) <;> rfl

theorem dlg_res {A : Type} [CommRing A] (B : Over (Sp A)) [GrpObj B] [IsCommMonObj B] (L : LB B.left)
    (δ : Fld B.left) (hδ : IsField ⊤ δ) (i j : L.ι) {T : B.left.Opens} (hT : T ≤ L.U i ⊓ L.U j) :
    rsT (dlg B (𝟙 _) L δ i j (L.U i ⊓ L.U j)) T =
      δ T (res hT (L.g i j)).val * (res hT (L.g i j))⁻¹.val := by
  have e : ∀ s : Γ(B.left, L.U i ⊓ L.U j), pbT (𝟙 _) s (L.U i ⊓ L.U j) = s := fun s => by
    rw [pbT_id s le_rfl]; simp [resG]
  simp only [dlg, e]
  rw [_root_.GlobalTheory.KS.rsT_of_le hT, map_mul, ← hδ.2.2 _ _ hT le_top]
  rfl

theorem s1 : ∀ (A : Type) [CommRing A] (B : Over (Sp A)) [GrpObj B] [IsCommMonObj B] (L : LB B.left), L.IsLB → ∀ δ : Fld B.left, IsField ⊤ δ → IsCoc L.U (fun i j => dlg B (𝟙 _) L δ i j (L.U i ⊓ L.U j)) := by
  intro A _ B _ _ L hL δ hδ i j k
  have h1 : L.U i ⊓ L.U j ⊓ L.U k ≤ L.U i ⊓ L.U j := inf_le_left
  have h2 : L.U i ⊓ L.U j ⊓ L.U k ≤ L.U j ⊓ L.U k := le_inf (inf_le_left.trans inf_le_right) inf_le_right
  have h3 : L.U i ⊓ L.U j ⊓ L.U k ≤ L.U i ⊓ L.U k := le_inf (inf_le_left.trans inf_le_left) inf_le_right
  dsimp only
  rw [dlg_res B L δ hδ i j h1, dlg_res B L δ hδ j k h2, dlg_res B L δ hδ i k h3, ← hL.cocycle i j k]
  generalize res h1 (L.g i j) = a
  generalize res h2 (L.g j k) = b
  simp only [Units.val_mul, mul_inv_rev, hδ.2.1 _ le_top]
  linear_combination (-(δ _ ↑b * ↑b⁻¹)) * a.mul_inv + (-(δ _ ↑a * ↑a⁻¹)) * b.mul_inv

end Coc

theorem s2 : ∀ (A : Type) [CommRing A] [IsLocalRing A] [IsNoetherianRing A] (B : Over (Sp A)) [GrpObj B] [IsCommMonObj B] (g : ℕ) (I : Type) [Finite I] (U : I → B.left.Opens), IsAbelianScheme B → SmoothOfRelativeDimension g B.hom → ⨆ i, U i = ⊤ → (∀ i, IsAffineOpen (U i)) → ∃ b : Fin g → C1 U, (∀ a, IsCoc U (b a)) ∧ ∀ c : C1 U, IsCoc U c → ∃! cc : Fin g → A, IsCob U (fun i j => c i j - ∑ a, constFn B.hom _ (cc a) * b a i j) := GlobalTheory.T.abelian_cech_h1_basis_cocycles

section Main

variable {A : Type} [CommRing A] {Y : Scheme.{0}} {I : Type} (q : Y ⟶ Sp A) (U : I → Y.Opens)

def kapH : A →+* C1 U where
  toFun := kap q U
  map_one' := by funext i j; simp [kap, constFn]
  map_mul' := kap_mul q U
  map_zero' := kap_zero q U
  map_add' := kap_add q U

theorem kapH_apply (r : A) (i j : I) : kapH q U r i j = constFn q (U i ⊓ U j) r := rfl

theorem lin_eq {n : ℕ} (c : C1 U) (cc : Fin n → A) (b : Fin n → C1 U) :
    (fun i j => c i j - ∑ a, constFn q (U i ⊓ U j) (cc a) * b a i j) = c - ∑ a, kapH q U (cc a) * b a := by funext i j; simp [Finset.sum_apply, kapH_apply]

theorem cechCochain_sum_sub_sum_constFn_eq_ringHom {n N : ℕ} (c : Fin n → A) (φ : Fin n → C1 U) (t : Fin N → A) (z : Fin N → C1 U) :
    (fun i j => ∑ a, constFn q (U i ⊓ U j) (c a) * φ a i j - ∑ k, constFn q (U i ⊓ U j) (t k) * z k i j) =
      ∑ a, kapH q U (c a) * φ a - ∑ k, kapH q U (t k) * z k := by funext i j; simp [Finset.sum_apply, kapH_apply]

theorem comb_eq {n : ℕ} (φ b : Fin n → C1 U) (P : Matrix (Fin n) (Fin n) A) (c : Fin n → A) :
    ∑ a, kapH q U (c a) * φ a - ∑ k, kapH q U ((c ᵥ* P) k) * b k =
      ∑ a, kapH q U (c a) * (φ a - ∑ k, kapH q U (P a k) * b k) := by

  simp only [Matrix.vecMul, dotProduct, map_sum, map_mul, Finset.sum_mul, mul_sub, Finset.sum_sub_distrib,
  Finset.mul_sum]
  rw [Finset.sum_comm]
  congr 1
  exact Finset.sum_congr rfl fun x _ => Finset.sum_congr rfl fun i _ => mul_assoc _ _ _

end Main


open Classical in
theorem main : ∀ (A : Type) [CommRing A] [IsLocalRing A] [IsNoetherianRing A] (B : Over (Sp A)) [GrpObj B] [IsCommMonObj B] (g : ℕ) (L : LB B.left), IsAbelianScheme B → SmoothOfRelativeDimension g B.hom → L.IsLB → RelAmple B L → KTriv B L → (∀ i, IsAffineOpen (L.U i)) → Finite L.ι → ∀ (v : Fin g → TanM (𝟙 (Sp A)) B) (dd : Fin g → Fld B.left), (∀ a, IsInv B (v a) (dd a)) → (∀ w : TanM (𝟙 (Sp A)) B, ∃! cf : Fin g → A, w = ∑ a, cf a • v a) → ∀ c : C1 L.U, IsCoc L.U c → ∃! cc : Fin g → A, IsCob L.U (fun i j => c i j - ∑ a, constFn B.hom _ (cc a) * dlg B (𝟙 _) L (dd a) i j (L.U i ⊓ L.U j)) := by
  intro A _ _ _ B _ _ g L hab hsm hL hamp hK haff hfin v dd hinv hbasis c hc
  haveI := hfin
  let φ : Fin g → C1 L.U := fun a i j => dlg B (𝟙 _) L (dd a) i j (L.U i ⊓ L.U j)
  obtain ⟨b, -, hb⟩ := _root_.GlobalTheory.CechFree.cech_free A B g L.ι L.U hab hsm hL.cover haff
  have hφ : ∀ a, IsCoc L.U (φ a) := fun a => s1 A B L hL (dd a) (hinv a).1
  choose P hP using fun a => (hb (φ a) (hφ a)).exists
  have key : ∀ y : Fin g → A, IsCob L.U
      (∑ a, kapH B.hom L.U (y a) * φ a - ∑ k, kapH B.hom L.U ((y ᵥ* Matrix.of P) k) * b k) := by
    intro y
    rw [comb_eq]
    exact isCob_sum _ fun a => isCob_kap_mul _ (isCob_congr (lin_eq B.hom L.U (φ a) (P a) b) (hP a))
  have hmem : ∀ y : Fin g → A, (∀ k, (y ᵥ* Matrix.of P) k ∈ maximalIdeal A) → ∀ a, y a ∈ maximalIdeal A := by
    intro y hy
    exact _root_.GlobalTheory.Heat.DlogIndep.mem_maximalIdeal_of_isCob A B g L hab hsm hL hamp hK haff hfin v dd hinv hbasis y g (y ᵥ* Matrix.of P) b hy
      (isCob_congr (cechCochain_sum_sub_sum_constFn_eq_ringHom B.hom L.U y φ (y ᵥ* Matrix.of P) b).symm (key y))
  have hdet : IsUnit (Matrix.of P).det := by
    by_contra hnd
    have h0 : IsLocalRing.residue A (Matrix.of P).det = 0 :=
      (IsLocalRing.residue_eq_zero_iff _).2 ((IsLocalRing.mem_maximalIdeal _).2 (mem_nonunits_iff.2 hnd))
    rw [RingHom.map_det] at h0
    obtain ⟨ybar, hy0, hyP⟩ := Matrix.exists_vecMul_eq_zero_iff.2 h0
    obtain ⟨y, rfl⟩ : ∃ y : Fin g → A, (fun a => IsLocalRing.residue A (y a)) = ybar :=
      ⟨fun a => (IsLocalRing.residue_surjective (ybar a)).choose,
        funext fun a => (IsLocalRing.residue_surjective (ybar a)).choose_spec⟩
    apply hy0
    funext a
    have hk : ∀ k, (y ᵥ* Matrix.of P) k ∈ maximalIdeal A := by
      intro k
      rw [← IsLocalRing.residue_eq_zero_iff]
      have := congrFun hyP k

      simpa [Matrix.vecMul, dotProduct, map_sum, RingHom.mapMatrix_apply, Matrix.map_apply] using this
    simpa [IsLocalRing.residue_eq_zero_iff] using hmem y hk a
  obtain ⟨e, he, heu⟩ := hb c hc
  refine ⟨e ᵥ* (Matrix.of P)⁻¹, ?_, ?_⟩
  · have h1 := key (e ᵥ* (Matrix.of P)⁻¹)
    rw [Matrix.vecMul_vecMul, Matrix.nonsing_inv_mul _ hdet, Matrix.vecMul_one] at h1
    have h2 := _root_.GlobalTheory.KS.IsCob.sub (isCob_congr (lin_eq B.hom L.U c e b) he) h1
    exact isCob_congr (lin_eq B.hom L.U c _ φ).symm (isCob_congr (sub_sub_sub_cancel_right _ _ _) h2)
  · intro cc' hcc'
    have h3 := _root_.GlobalTheory.KS.IsCob.add (isCob_congr (lin_eq B.hom L.U c cc' φ) hcc') (key cc')
    have h4 : IsCob L.U (fun i j => c i j - ∑ a, constFn B.hom (L.U i ⊓ L.U j) ((cc' ᵥ* Matrix.of P) a) * b a i j) :=
      isCob_congr (lin_eq B.hom L.U c _ b).symm (isCob_congr (sub_add_sub_cancel _ _ _) h3)
    have h5 := heu _ h4
    rw [← h5, Matrix.vecMul_vecMul, Matrix.mul_nonsing_inv _ hdet, Matrix.vecMul_one]

end GlobalTheory.DlogBasis
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldsBasisTangent =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldsCechH1Relation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldsCechH1Relation", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsFiniteAffineCharts\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BasisTangentModuleAbelianSchemeOfRelDim\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechOneCocycleOnAffineCoverMixed\npublic import Mathlib.LinearAlgebra.Basis.Defs\npublic import Mathlib.RingTheory.LocalRing.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSubfamilyUniqueReprOfSpanningLocalRing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldsBasisTangent\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCechOneCoboundaryOfMixedOverlaps\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsPolarisationDescentMulOddVeryDense\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
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
namespace GlobalTheory.CoverRefinementPullback

theorem dlg_tri {A : Type} [CommRing A] (B : Over (Sp A)) [GrpObj B] [IsCommMonObj B] (L : LB B.left) (hL : L.IsLB)
    (δ : Fld B.left) (hδ : IsField ⊤ δ) (i j k : L.ι) {T : B.left.Opens} (h₁ : T ≤ L.U i ⊓ L.U j)
    (h₂ : T ≤ L.U j ⊓ L.U k) (h₃ : T ≤ L.U i ⊓ L.U k) :
    rsT (dlg B (𝟙 _) L δ i j (L.U i ⊓ L.U j)) T + rsT (dlg B (𝟙 _) L δ j k (L.U j ⊓ L.U k)) T =
      rsT (dlg B (𝟙 _) L δ i k (L.U i ⊓ L.U k)) T := by
  rw [_root_.GlobalTheory.DlogBasis.dlg_res B L δ hδ i j h₁, _root_.GlobalTheory.DlogBasis.dlg_res B L δ hδ j k h₂, _root_.GlobalTheory.DlogBasis.dlg_res B L δ hδ i k h₃,
    ← FinAffineCharts.cocycle_on hL i j k h₁ h₂ h₃]
  set u := res h₁ (L.g i j)
  set w := res h₂ (L.g j k)
  rw [mul_inv, Units.val_mul, hδ.2.1 _ le_top, Units.val_mul]
  have hu : (u : Γ(B.left, _)) * (u⁻¹ : Γ(B.left, _)ˣ).val = 1 := Units.mul_inv u
  have hw : (w : Γ(B.left, _)) * (w⁻¹ : Γ(B.left, _)ˣ).val = 1 := Units.mul_inv w
  linear_combination (-(δ _ w.val * (w⁻¹).val)) * hu + (-(δ _ u.val * (u⁻¹).val)) * hw

theorem dlg_refine {A : Type} [CommRing A] (B : Over (Sp A)) [GrpObj B] [IsCommMonObj B] (L : LB B.left)
    (δ : Fld B.left) (hδ : IsField ⊤ δ) {κ : Type} (W : κ → B.left.Opens) (c : κ → L.ι) (h : ∀ a, W a ≤ L.U (c a))
    (a b : κ) {T : B.left.Opens} (hT : T ≤ W a ⊓ W b) :
    rsT (dlg B (𝟙 _) (FinAffineCharts.refineLB L W c h) δ a b (W a ⊓ W b)) T =
      rsT (dlg B (𝟙 _) L δ (c a) (c b) (L.U (c a) ⊓ L.U (c b))) T := by
  refine (_root_.GlobalTheory.DlogBasis.dlg_res B (FinAffineCharts.refineLB L W c h) δ hδ a b hT).trans ?_
  rw [_root_.GlobalTheory.DlogBasis.dlg_res B L δ hδ (c a) (c b) (hT.trans (inf_le_inf (h a) (h b)))]
  have e : res hT ((FinAffineCharts.refineLB L W c h).g a b) =
      res (hT.trans (inf_le_inf (h a) (h b))) (L.g (c a) (c b)) := FinAffineCharts.res_res _ _ _
  exact congrArg (fun u : Γ(B.left, T)ˣ => δ T u.val * (u⁻¹).val) e

theorem rsT_cmul {R : Type} [CommRing R] {Y : Scheme.{0}} (q : Y ⟶ Sp R) {O₀ : Y.Opens} (r : R) (s : Γ(Y, O₀))
    (O : Y.Opens) : rsT (constFn q O₀ r * s) O = constFn q O r * rsT s O := by
  by_cases h : O ≤ O₀
  · rw [GlobalTheory.KS.rsT_mul, GlobalTheory.KS.rsT_constFn q h]
  · unfold rsT; simp [h]

theorem sum_reindex {R : Type} [CommRing R] {Y : Scheme.{0}} (q : Y ⟶ Sp R) (O : Y.Opens) {d g : ℕ}
    (cc : Fin d → R) (e : Fin d → Fin g) (X : Fin g → Γ(Y, O)) :
    ∑ a, constFn q O (∑ b, if e b = a then cc b else 0) * X a = ∑ b, constFn q O (cc b) * X (e b) := by
  have h0 : ∀ a, constFn q O (∑ b, if e b = a then cc b else 0) = ∑ b, if e b = a then constFn q O (cc b) else 0 := by
    intro a; simp only [constFn, map_sum]; refine Finset.sum_congr rfl fun b _ => ?_; split_ifs <;> simp
  simp only [h0, Finset.sum_mul, ite_mul, zero_mul]
  rw [Finset.sum_comm]
  simp

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [IsAdicComplete (maximalIdeal R) R] [Algebra ℚ R] (Dd : DegData R (maximalIdeal R)) (g : ℕ) (w : Fin g → TanM (𝟙 (Sp R)) Dd.toPre.P.A) (dd' : Fin g → Fld Dd.toPre.P.A.left), (∀ a, IsInv Dd.toPre.P.A (w a) (dd' a)) → (∀ u : TanM (𝟙 (Sp R)) Dd.toPre.P.A, ∃ cf : Fin g → R, u = ∑ a, cf a • w a) → ∀ (J : Type) (V : J → Dd.toPre.P.A.left.Opens) (j : J → Dd.toPre.P.L.ι), ⨆ i, V i = ⊤ → (∀ i, V i ≤ Dd.toPre.P.L.U (j i)) → ∀ z : C1 V, IsCoc V z → ∃ (c : Fin g → R) (y : ∀ i, Γ(Dd.toPre.P.A.left, V i)), ∀ i i', z i i' = ∑ a, constFn Dd.toPre.P.A.hom _ (c a) * rsT (dlg Dd.toPre.P.A (𝟙 _) Dd.toPre.P.L (dd' a) (j i) (j i') (Dd.toPre.P.L.U (j i) ⊓ Dd.toPre.P.L.U (j i'))) (V i ⊓ V i') + (rsT (y i') (V i ⊓ V i') - rsT (y i) (V i ⊓ V i')) := by
  intro R _ _ _ _ _ _ Dd g w dd' hinv hspan J V j hV hVj z hz
  have hab : IsAbelianScheme Dd.toPre.P.A := Dd.toPre.P.isAb
  haveI : CompactSpace Dd.toPre.P.A.left := by
    have := hab.proper; exact QuasiCompact.compactSpace_of_compactSpace Dd.toPre.P.A.hom
  obtain ⟨κ, hκ, W, c, hWa, hWc, hWcov⟩ :=
    FinAffineCharts.exists_finite_affine_cover Dd.toPre.P.L Dd.toPre.P.isLB
  have hL' := FinAffineCharts.refineLB_isLB Dd.toPre.P.isLB W c hWc hWcov
  have hiso := FinAffineCharts.iso_refineLB Dd.toPre.P.isLB W c hWc
  have hK' := MulDescent.kTriv_of_lbIso Dd.toPre.P.isLB hL' hiso Dd.toPre.P.ktriv
  have hA' : RelAmple Dd.toPre.P.A (FinAffineCharts.refineLB Dd.toPre.P.L W c hWc) := by
    obtain ⟨w0, hw0⟩ : LBIso (FinAffineCharts.refineLB Dd.toPre.P.L W c hWc)
        (Dd.toPre.P.L.pull (𝟙 Dd.toPre.P.A.left)) :=
      hiso.symm.chartPull (chartPullId _) (ReciprocityTheory.ChartRestriction.G.Geo.Tor.chartPullPull Dd.toPre.P.L (𝟙 _) (𝟙 _) rfl)
    exact relAmple_pull IsPullback.of_id_fst Dd.toPre.P.isLB hL' ((isGen_iff w0).1 hw0) ⊤
      (isAffineOpen_top _) (fun _ => trivial) Dd.toPre.P.ample
  obtain ⟨bs⟩ := _root_.GlobalTheory.TanBasisDim.basis_tanM_abelian R Dd.toPre.P.A Dd.toPre.P.g hab Dd.toPre.P.smoothDim
  obtain ⟨e, he⟩ := _root_.GlobalTheory.exists_subfamily_unique_repr_of_spanning_localRing R _ Dd.toPre.P.g g ⟨bs⟩ w hspan
  have hI := _root_.GlobalTheory.DlogBasis.main R Dd.toPre.P.A Dd.toPre.P.g _ hab Dd.toPre.P.smoothDim hL' hA' hK' hWa hκ
    (fun a => w (e a)) (fun a => dd' (e a)) (fun a => hinv (e a)) he
  obtain ⟨z', b, hz'c, hR1, hR2⟩ := _root_.GlobalTheory.CechMixed.exists_cocycle_on_affine _ J κ V W hV hWa z hz
  obtain ⟨cc, ⟨y', hy'⟩, -⟩ := hI z' hz'c

  obtain ⟨φV, hφV⟩ : ∃ φV : Fin g → C1 V, φV = fun a i i' => rsT (dlg Dd.toPre.P.A (𝟙 _) Dd.toPre.P.L (dd' a)
      (j i) (j i') (Dd.toPre.P.L.U (j i) ⊓ Dd.toPre.P.L.U (j i'))) (V i ⊓ V i') := ⟨_, rfl⟩
  obtain ⟨φU, hφU⟩ : ∃ φU : Fin g → C1 W, φU = fun a k k' => dlg Dd.toPre.P.A (𝟙 _)
      (FinAffineCharts.refineLB Dd.toPre.P.L W c hWc) (dd' a) k k' (W k ⊓ W k') := ⟨_, rfl⟩
  obtain ⟨β, hβ⟩ : ∃ β : Fin g → ∀ i k, Γ(Dd.toPre.P.A.left, V i ⊓ W k), β = fun a i k =>
      rsT (dlg Dd.toPre.P.A (𝟙 _) Dd.toPre.P.L (dd' a) (j i) (c k)
        (Dd.toPre.P.L.U (j i) ⊓ Dd.toPre.P.L.U (c k))) (V i ⊓ W k) := ⟨_, rfl⟩

  have hm1 : ∀ a i i' k, rsT (φV a i i') (V i ⊓ V i' ⊓ W k) =
      rsT (β a i k) (V i ⊓ V i' ⊓ W k) - rsT (β a i' k) (V i ⊓ V i' ⊓ W k) := by
    intro a i i' k
    subst hφV hβ
    have t1 : V i ⊓ V i' ⊓ W k ≤ V i ⊓ V i' := inf_le_left
    have t2 : V i ⊓ V i' ⊓ W k ≤ V i ⊓ W k := le_inf (inf_le_left.trans inf_le_left) inf_le_right
    have t3 : V i ⊓ V i' ⊓ W k ≤ V i' ⊓ W k := le_inf (inf_le_left.trans inf_le_right) inf_le_right
    simp only
    rw [GlobalTheory.KS.rsT_rsT (inf_le_inf (hVj i) (hVj i')) t1, GlobalTheory.KS.rsT_rsT (inf_le_inf (hVj i) (hWc k)) t2,
      GlobalTheory.KS.rsT_rsT (inf_le_inf (hVj i') (hWc k)) t3,
      ← dlg_tri _ _ Dd.toPre.P.isLB (dd' a) (hinv a).1 (j i) (j i') (c k)
        (t1.trans (inf_le_inf (hVj i) (hVj i'))) (t3.trans (inf_le_inf (hVj i') (hWc k)))
        (t2.trans (inf_le_inf (hVj i) (hWc k)))]
    abel
  have hm2 : ∀ a i k k', rsT (φU a k k') (V i ⊓ W k ⊓ W k') =
      rsT (β a i k') (V i ⊓ W k ⊓ W k') - rsT (β a i k) (V i ⊓ W k ⊓ W k') := by
    intro a i k k'
    subst hφU hβ
    have t1 : V i ⊓ W k ⊓ W k' ≤ W k ⊓ W k' := le_inf (inf_le_left.trans inf_le_right) inf_le_right
    have t2 : V i ⊓ W k ⊓ W k' ≤ V i ⊓ W k := inf_le_left
    have t3 : V i ⊓ W k ⊓ W k' ≤ V i ⊓ W k' := le_inf (inf_le_left.trans inf_le_left) inf_le_right
    simp only
    rw [dlg_refine _ _ (dd' a) (hinv a).1 W c hWc k k' t1, GlobalTheory.KS.rsT_rsT (inf_le_inf (hVj i) (hWc k)) t2,
      GlobalTheory.KS.rsT_rsT (inf_le_inf (hVj i) (hWc k')) t3,
      ← dlg_tri _ _ Dd.toPre.P.isLB (dd' a) (hinv a).1 (j i) (c k) (c k')
        (t2.trans (inf_le_inf (hVj i) (hWc k))) (t1.trans (inf_le_inf (hWc k) (hWc k')))
        (t3.trans (inf_le_inf (hVj i) (hWc k')))]
    abel

  set q := Dd.toPre.P.A.hom
  have hmix := _root_.GlobalTheory.KS.isCob_of_mixed _ J κ V W hWcov
    (fun i i' => z i i' - ∑ a, constFn q _ (cc a) * φV (e a) i i')
    (fun k k' => z' k k' - ∑ a, constFn q _ (cc a) * φU (e a) k k')
    (fun i k => b i k - ∑ a, constFn q _ (cc a) * β (e a) i k)
    (fun i i' k => by
      simp only [GlobalTheory.KS.rsT_sub, GlobalTheory.KS.rsT_sum, rsT_cmul, hR1, hm1, mul_sub, Finset.sum_sub_distrib]; abel)
    (fun i k k' => by
      simp only [GlobalTheory.KS.rsT_sub, GlobalTheory.KS.rsT_sum, rsT_cmul, hR2, hm2, mul_sub, Finset.sum_sub_distrib]; abel)
    ⟨y', fun k k' => by subst hφU; exact hy' k k'⟩
  obtain ⟨y, hy⟩ := hmix
  refine ⟨fun a => ∑ b, if e b = a then cc b else 0, y, fun i i' => ?_⟩
  have h := hy i i'
  rw [sum_reindex q _ cc e (fun a => rsT (dlg Dd.toPre.P.A (𝟙 _) Dd.toPre.P.L (dd' a) (j i) (j i')
    (Dd.toPre.P.L.U (j i) ⊓ Dd.toPre.P.L.U (j i'))) (V i ⊓ V i'))]
  simp only at h
  rw [← h]
  subst hφV
  simp only
  abel

end GlobalTheory.CoverRefinementPullback
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldsCechH1Relation =====
