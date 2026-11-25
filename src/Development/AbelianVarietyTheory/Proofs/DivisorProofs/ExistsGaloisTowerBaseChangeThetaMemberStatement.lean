module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationBaseChangeWithThetaCoordinates
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP
public import Development.AbelianVarietyTheory.Counterexamples.UniformisationSurvey.MapPowLeOfIsPullUnif
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDegenerationEndomorphismOfAdmissibleBase
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackUniformisationCharacterMapConjugate
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.TautologicalModel
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrPull
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsFramesOnUniformisedModelFibre
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LiftConnectedOfTrivialUnique
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullIso
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.YKThNeZero
public import Development.AbelianVarietyTheory.Definitions.Divisors.NotTwistSumZeroFamily
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DeeperThetaValueImageEqImageValue
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DeeperThetaValueGaloisConjugateExtension
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoPullbackCommSquareStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsGrpPullbackPasteFactorisationStatement
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsWithoutCohomology
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsFiniteCubeInduction
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsRigidifiedIso
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsPelUnifPsiCoord
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsFramesOnUniformisedFibreThroughIso
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsUniqueWeilIs
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SymmetricLiftOddOrderExistsUnique
import Mathlib.Tactic.Polynomial.Basic
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Development.AbelianVarietyTheory.Proofs.ThetaFamilyOrigin.IsThetaPtOverMove
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsUniqueThickTorusLevelWeightExpansion
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.StalkMapInjectiveOfFlat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationBaseChangeFiniteInjective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionPointsTransportedFrames, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionPointsTransportedFramesStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTowerFramesPullbackConstantRoot, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTowerFramesPullbackConstantRootStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TermsWitnessesBaseChangeAlongTower, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TermsWitnessesBaseChangeAlongTowerStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisTowerThetaMemberTermsBaseChange, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaRingRegularAtExtensionPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValExtensionPointEqImageOfVal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValGaloisConjugateExtensionEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisTowerBaseChangeThetaMember, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisTowerBaseChangeThetaMemberStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationBaseChangeFiniteInjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationBaseChangeFiniteInjective", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationBaseChangeWithThetaCoordinates\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Counterexamples.UniformisationSurvey.MapPowLeOfIsPullUnif\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsWithoutCohomology\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDegenerationEndomorphismOfAdmissibleBase\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackUniformisationCharacterMapConjugate\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.TautologicalModel\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsFiniteCubeInduction\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsRigidifiedIso\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsPelUnifPsiCoord\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

noncomputable section

namespace GlobalTheory.GSep



theorem GMem.exists_baseChange : ∀ {I : Type} (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X] (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (V' : Type) [CommRing V'] [IsDomain V'] [IsLocalRing V'] (io : V →+* V') (f : FractionRing V →+* FractionRing V'), (∀ v, f (algebraMap V (FractionRing V) v) = algebraMap V' (FractionRing V') (io v)) → IsCN V' → Function.Injective io → io.Finite → ∃ (D' : DegData V' (maximalIdeal V')) (e₈' : X ≃+ D'.toPre.X) (G' : Over (Sp V')) (_ : GrpObj G') (_ : IsCommMonObj G') (A' : PolAV (Sp (FractionRing V'))) (U' : Unif (maximalIdeal V') D' A' G') (ψ : A'.A.left ⟶ 𝔪.A.A.left) (hD : IsPullDeg io 𝔪.D.toPre D'.toPre) (bc : G' ≅ (Over.pullback (spMap io)).obj 𝔪.G), IsSemiAbelian G' ∧ IsGrpPullback A'.A 𝔪.A.A (spMap f) ψ ∧ (∃ w : LB.Iso A'.L (𝔪.A.L.pull ψ), w.IsGen) ∧ IsMonHom bc.hom ∧ IsPullUnif io hD bc 𝔪.U U' ∧ (∀ mu, hD.xe (e₈' mu) = 𝔪.e₈ mu) ∧ U'.gen.hom.left ≫ ψ ≫ 𝔪.U.gen.inv.left ≫ pullback.fst 𝔪.G.hom (jK V) = pullback.fst G'.hom (jK V') ≫ bc.hom.left ≫ pullback.fst 𝔪.G.hom (spMap io) ∧ (∀ E : EndU 𝔪.U.toUnifPre, ∃ E' : EndU U'.toUnifPre, E'.aA.left ≫ ψ = ψ ≫ E.aA.left ∧ ∀ χ, hD.xe (E'.h χ) = E.h (hD.xe χ)) ∧ ∀ mu, ∃ u : V'ˣ, Formalism.L2.Pj.PsiCoord D'.toPre (e₈' mu) (u * io (t mu)) := by
  intro I X₁ z₁ act V _ _ _ ev X _ t δ 𝔪 V' _ _ _ io f hf hcn hinj hfin
  exact GlobalTheory.UnifBaseChange.exists_with_theta_coordinates V 𝔪.cn t 𝔪.D 𝔪.A 𝔪.G
    𝔪.semi 𝔪.U 𝔪.e₈ 𝔪.psi V' io f hf hcn hinj hfin

end GlobalTheory.GSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationBaseChangeFiniteInjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionPointsTransportedFrames =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionPointsTransportedFrames", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsFramesOnUniformisedFibreThroughIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep.BaseTerms

noncomputable section

namespace GlobalTheory.GSep

theorem exists_points_frames : ∀ {I : Type} (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (V : Type) [CommRing V] [IsDomain V]
    [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X] (t : X → V) (δ : I → X → X)
    (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ), ∃ (x : X₁.S.Gam → (TFK (R := V) (FractionRing V) ⟶ 𝔪.A.A)) (fr : ∀ a, FrAt (x a)),
    (∀ a, (x a).left ≫ 𝔪.φ = spMap 𝔪.yK ≫ (X₁.ρ.pt a).left) ∧
      (∀ a, (fr a).IsGen ∧ ∀ z J J', Good X₁.ρ.P.L z J → Good 𝔪.A.L z J' →
        Geo.Tor.gw 𝔪.wl (x a).left z (J ((x a).left ≫ 𝔪.φ)) (J' (x a).left) * val (fr a) (𝟙 _) z J' =
          val (X₁.ρ.fr a) (show (TFK (R := V) (FractionRing V)).left ⟶ (baseOver (Sp X₁.S.R)).left from spMap 𝔪.yK) z J) := by
  intro I X₁ z₁ act V _ _ _ ev X _ t δ 𝔪
  have hj : (TFK (R := V) (FractionRing V)).hom = 𝟙 _ := by
    show Spec.map (CommRingCat.ofHom (algebraMap (FractionRing V) (FractionRing V))) = _
    rw [Algebra.algebraMap_self]
    exact Spec.map_id _
  have gp := 𝔪.cart
  have hsq : ∀ a, (spMap 𝔪.yK ≫ (X₁.ρ.pt a).left) ≫ X₁.ρ.P.A.hom = (TFK (R := V) (FractionRing V)).hom ≫ spMap 𝔪.yK := by
    intro a
    rw [Category.assoc, Over.w (X₁.ρ.pt a), hj]
    simp
  let x : X₁.S.Gam → (TFK (R := V) (FractionRing V) ⟶ 𝔪.A.A) := fun a =>
    Over.homMk (gp.1.lift _ _ (hsq a)) (gp.1.lift_snd _ _ _)
  have hx : ∀ a, (x a).left ≫ 𝔪.φ = spMap 𝔪.yK ≫ (X₁.ρ.pt a).left := fun a => gp.1.lift_fst _ _ _
  obtain ⟨rig, fr, hrig, -, hfr⟩ := GlobalTheory.exists_frames_move_through (T := baseOver (Sp X₁.S.R))
    (T' := TFK (R := V) (FractionRing V)) (h := spMap 𝔪.yK) gp 𝔪.wl_gen X₁.ρ.rig_gen hx X₁.ρ.fr_tors
  refine ⟨x, fr, hx, fun a => ⟨(hfr a).1.2.1, fun z J J' hJ hJ' => ?_⟩⟩
  have e := (hfr a).2 _ (𝟙 _) z J J' hJ hJ'
  rw [Fin.prod_univ_one, zpow_one, Category.id_comp, Category.id_comp] at e
  exact e.symm

end GlobalTheory.GSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionPointsTransportedFrames =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionPointsTransportedFramesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionPointsTransportedFramesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionPointsTransportedFrames\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep.BaseTerms


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionPointsTransportedFramesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTowerFramesPullbackConstantRoot =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTowerFramesPullbackConstantRoot", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrPull\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsFramesOnUniformisedModelFibre\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsUniqueWeilIs\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SymmetricLiftOddOrderExistsUnique\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LiftConnectedOfTrivialUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep.BaseTerms

noncomputable section

namespace GlobalTheory.GSep.TowerFrames

open GlobalTheory.ConstFam GlobalTheory.FrameMove

section General

variable {S : Scheme.{0}} {P : PolAV S} {T : Over S}

theorem torsFrame_vals {rig : LB.Gen (P.L.pull (eSec P.A))} {n : ℕ} {x : T ⟶ P.A} {τ} (H : IsTorsFrame P rig n x τ) :
    ∃ α : LB.Gen (LB.LinComb P.L (K := Fin 2) ![𝟙 P.A.left, (mulA P.A n).left] ![(n : ℤ) ^ 2, -1]), α.IsGen ∧
      ∀ (y : T.left) J, Good P.L y J → val τ (𝟙 _) y J ^ ((n : ℤ) ^ 2) = val α x.left y J * rval rig T.hom y J ∧
        val α (T.hom ≫ eSec P.A) y J = rval rig T.hom y J ^ ((n : ℤ) ^ 2) * (rval rig T.hom y J)⁻¹ := by
  obtain ⟨-, -, α, hα, hN, hc⟩ := H
  refine ⟨α, hα, fun y J hJ => ⟨?_, ?_⟩⟩
  · have a : val τ (𝟙 _) y J ^ ((n : ℤ) ^ 2) = val α (𝟙 _ ≫ x.left) y J * rval rig (𝟙 _ ≫ T.hom) y J ^ (1 : ℤ) :=
      (map_zpow _ _ _).symm.trans ((val_corr hJ hc (𝟙 _)).trans ((val_mul hJ _ _ _).trans
        (congrArg₂ (· * ·) (val_pull hJ _ _ _) (val_rigT _ _ _ hJ))))
    rwa [Category.id_comp, Category.id_comp, zpow_one] at a
  · exact (val_pull hJ α (eSec P.A) T.hom).symm.trans ((val_corr hJ hN T.hom).trans ((val_mul hJ _ _ _).trans
      (congrArg₂ (· * ·) (map_zpow _ _ _) (val_inv _ _))))

theorem torsFrame_ratio_pow [IsLocallyNoetherian S] {rig₁ rig₂ : LB.Gen (P.L.pull (eSec P.A))} {n d : ℕ} {x : T ⟶ P.A}
    {τ₁ τ₂} (H₁ : IsTorsFrame P rig₁ n x τ₁) (H₂ : IsTorsFrame P rig₂ (n * d) x τ₂) (y : T.left) (J)
    (hJ : Good P.L y J) : (val τ₂ (𝟙 _) y J * (val τ₁ (𝟙 _) y J)⁻¹) ^ ((n * d) ^ 2) =
      (rval rig₂ T.hom y J * (rval rig₁ T.hom y J)⁻¹) ^ ((n * d) ^ 2) := by
  obtain ⟨α₁, h₁, v₁⟩ := torsFrame_vals H₁
  obtain ⟨α₂, h₂, v₂⟩ := torsFrame_vals H₂
  obtain ⟨β, hβ⟩ := GlobalTheory.abelianSchemeLaws_all.1.mulPull S P d
  have e : (mulA P.A n).left ≫ (mulA P.A d).left = (mulA P.A (n * d)).left := by
    rw [comp_mulA, ← pow_mul]
  obtain ⟨a, ha⟩ := SymLiftOdd.exists_const P.isLB P.A.hom (eSec P.A) (Over.w η[P.A])
    (GlobalTheory.abelianSchemeLaws_all.1.globalFns S P.A P.isAb).2 (fun U _ h => by
      simp only [Fintype.prod_sum_type, Fin.prod_univ_two, Sum.elim_inl, Sum.elim_inr,
        Matrix.cons_val_zero, Matrix.cons_val_one, e, Category.comp_id]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_zpow, ofMul_one]
      module)
    (DVR.mulGen_isGen _ _ _ _ _ _ _ (DVR.invGen_isGen _ _ _ _ h₂) (DVR.mulGen_isGen _ _ _ _ _ _ _
      (DVR.powGen_isGen _ _ _ _ h₁ (d ^ 2)) (DVR.pullGen_isGen _ _ _ _ hβ (mulA P.A n).left)))
  have p : ∀ r : T.left ⟶ P.A.left, val (GeneratorPullback.powGen P.L _ _ α₁ (d ^ 2)) r y J = val α₁ r y J ^ (d ^ 2) :=
    fun r => map_pow _ _ _
  have c₁ := ha _ x.left y J hJ
  have c₂ := ha _ (T.hom ≫ eSec P.A) y J hJ
  have e₀ : (T.hom ≫ eSec P.A) ≫ P.A.hom = T.hom := Over.w (1 : T ⟶ P.A)
  rw [val_mul hJ, val_mul hJ, val_inv, val_pull hJ, p] at c₁ c₂
  rw [comp_mulA, H₁.1, Over.w x] at c₁
  rw [e₀, Category.assoc, eSec_mulA] at c₂
  have c := c₁.trans c₂.symm
  have c' : (val α₂ x.left y J)⁻¹ * val α₁ x.left y J ^ (d ^ 2) =
      (val α₂ (T.hom ≫ eSec P.A) y J)⁻¹ * val α₁ (T.hom ≫ eSec P.A) y J ^ (d ^ 2) := by
    rw [← _root_.mul_assoc, ← _root_.mul_assoc] at c
    exact mul_right_cancel c
  obtain ⟨a₁, b₁⟩ := v₁ y J hJ
  obtain ⟨a₂, b₂⟩ := v₂ y J hJ
  apply Additive.ofMul.injective
  replace a₁ := congrArg Additive.ofMul a₁
  replace a₂ := congrArg Additive.ofMul a₂
  replace b₁ := congrArg Additive.ofMul b₁
  replace b₂ := congrArg Additive.ofMul b₂
  replace c' := congrArg Additive.ofMul c'
  simp only [ofMul_mul, ofMul_inv, ofMul_zpow, ofMul_pow] at a₁ a₂ b₁ b₂ c' ⊢
  linear_combination (norm := module) a₂ - (d ^ 2) • a₁ - c' + b₂ - (d ^ 2) • b₁

variable {X X' Y Y' : Scheme.{0}} {L : LB X} {L' : LB X'} {F : X' ⟶ X}

theorem transport_ext (hL : L.IsLB) (hL' : L'.IsLB) {w : LB.Iso L' (L.pull F)} (hw : w.IsGen) {x' : Y' ⟶ X'} {x : Y ⟶ X}
    {h : Y' ⟶ Y} (hx : x' ≫ F = h ≫ x) {t : LB.Gen (LB.LinComb L (K := Fin 1) (fun _ => x) (fun _ => 1))} (ht : t.IsGen)
    {a : LB.Gen (LB.LinComb L' (K := Fin 1) (fun _ => x') (fun _ => 1))}
    (H : ∀ z J J', Good L z J → Good L' z J' → wVal w z J J' x' * val a (𝟙 _) z J' = val t h z J)
    {Z : Scheme.{0}} (r : Z ⟶ Y') (z : Z) (J J') (hJ : Good L z J) (hJ' : Good L' z J') :
    wVal w z J J' (r ≫ x') * val a r z J' = val t (r ≫ h) z J := by
  obtain ⟨b, -, hb⟩ := exists_gen_through (φ' := fun _ : Fin 1 => x') (h := h) hw hL hL' (fun _ => hx) t ht
  have c : LB.Gen.Corr L' _ _ _ _ a b := corr_of_val hL' fun y I' hI' => by
    obtain ⟨I, hI⟩ := exists_good' hL y
    have e := hb _ (𝟙 _) y I I' hI hI'
    rw [Fin.prod_univ_one, zpow_one, Category.id_comp, Category.id_comp, ← H y I I' hI hI'] at e
    exact mul_left_cancel e
  rw [val_corr hJ' c r, hb _ r z J J' hJ hJ', Fin.prod_univ_one, zpow_one]

theorem exists_square_unit {X₁ X₂ X₃ : Scheme.{0}} {L₁ : LB X₁} {L₂ : LB X₂} {L₃ : LB X₃} {F₁ : X₁ ⟶ X} {F₂ : X₂ ⟶ X}
    {G₁ : X₃ ⟶ X₁} {G₂ : X₃ ⟶ X₂} (e : G₁ ≫ F₁ = G₂ ≫ F₂) (hL : L.IsLB) (h₁ : L₁.IsLB) (h₂ : L₂.IsLB) (h₃ : L₃.IsLB)
    {w₁ : LB.Iso L₁ (L.pull F₁)} {w₂ : LB.Iso L₂ (L.pull F₂)} {v₁ : LB.Iso L₃ (L₁.pull G₁)} {v₂ : LB.Iso L₃ (L₂.pull G₂)}
    (g₁ : w₁.IsGen) (g₂ : w₂.IsGen) (k₁ : v₁.IsGen) (k₂ : v₂.IsGen) :
    ∃ u : Γ(X₃, ⊤)ˣ, ∀ (Z : Scheme.{0}) (r : Z ⟶ X₃) (z : Z) J J₁ J₂ J₃, Good L z J → Good L₁ z J₁ → Good L₂ z J₂ →
      Good L₃ z J₃ → wVal w₁ z J J₁ (r ≫ G₁) * wVal v₁ z J₁ J₃ r =
        gm r z ⊤ u * (wVal w₂ z J J₂ (r ≫ G₂) * wVal v₂ z J₂ J₃ r) := by
  rw [isGen_iff] at g₁ g₂ k₁ k₂
  obtain ⟨s₁, T₁⟩ := exists_comp h₁ w₁ v₁ g₁ k₁ hL h₃
  obtain ⟨s₂, T₂⟩ := exists_comp h₂ w₂ v₂ g₂ k₂ hL h₃
  have key : ∀ (H H' : X₃ ⟶ X) (_ : H = H') (s : LB.Iso L₃ (L.pull H)) (s' : LB.Iso L₃ (L.pull H')), PGen s → PGen s' →
      ∃ u : Γ(X₃, ⊤)ˣ, ∀ (Z : Scheme.{0}) (r : Z ⟶ X₃) (y : Z) (j : L.ι) (k : L₃.ι), H (r y) ∈ L.U j → r y ∈ L₃.U k →
        Geo.Tor.gw s r y j k = gm r y ⊤ u * Geo.Tor.gw s' r y j k := by
    rintro H _ rfl s s' hs hs'
    exact TrivDescentCompare.exists_iso_ratio hL h₃ ((isGen_iff _).2 hs) ((isGen_iff _).2 hs')
  obtain ⟨u, hu⟩ := key _ _ e s₁ s₂ (T₁.pgen_comp h₁ g₁ k₁) (T₂.pgen_comp h₂ g₂ k₂)
  refine ⟨u, fun Z r z J J₁ J₂ J₃ hJ hJ₁ hJ₂ hJ₃ => ?_⟩
  have e' : (r ≫ G₂) ≫ F₂ = (r ≫ G₁) ≫ F₁ := by rw [Category.assoc, Category.assoc, e]
  have a := T₁ Z r z _ _ _ (hJ ((r ≫ G₁) ≫ F₁)) (hJ₁ (r ≫ G₁)) (hJ₃ r)
  have b := T₂ Z r z _ _ _ (hJ ((r ≫ G₂) ≫ F₂)) (hJ₂ (r ≫ G₂)) (hJ₃ r)
  have c := hu Z r z _ _ (hJ ((r ≫ G₁) ≫ F₁)) (hJ₃ r)
  refine a.symm.trans (c.trans (congrArg (_ * ·) (Eq.trans ?_ b)))
  rw [e']

end General

theorem exists_root_ratio {R₁ R₂ : Type} [CommRing R₁] [CommRing R₂] [IsDomain R₂] [IsNoetherianRing R₂] {P₁ : PolAV (Sp R₁)}
    {P₂ : PolAV (Sp R₂)} {f : Sp R₂ ⟶ Sp R₁} {φ : P₂.A.left ⟶ P₁.A.left} (gp : IsGrpPullback P₂.A P₁.A f φ)
    {w : LB.Iso P₂.L (P₁.L.pull φ)} (hw : w.IsGen) {rig₁ : LB.Gen (P₁.L.pull (eSec P₁.A))} (h₁ : rig₁.IsGen)
    {rig₂ : LB.Gen (P₂.L.pull (eSec P₂.A))} (h₂ : rig₂.IsGen) {n d : ℕ} (hn : 0 < n * d) {ζ : R₂}
    (hζ : IsPrimitiveRoot ζ ((n * d) ^ 2)) : ∃ u : R₂ˣ,
    ∀ (x₁ : baseOver (Sp R₁) ⟶ P₁.A) (x₂ : baseOver (Sp R₂) ⟶ P₂.A) τ₁ τ₂, x₂.left ≫ φ = f ≫ x₁.left →
      IsTorsFrame P₁ rig₁ n x₁ τ₁ → IsTorsFrame P₂ rig₂ (n * d) x₂ τ₂ → ∃ k : ℕ,
      ∀ (Z : Scheme.{0}) (r : Z ⟶ (baseOver (Sp R₂)).left) (z : Z) J J', Good P₁.L z J → Good P₂.L z J' →
        (wVal w z J J' (r ≫ x₂.left) * val τ₂ r z J').val =
          gs r z ⊤ (fn (u * ζ ^ k)) * (val τ₁ (r ≫ (f : (baseOver (Sp R₂)).left ⟶ (baseOver (Sp R₁)).left)) z J).val := by
  have : IsLocallyNoetherian (Sp R₂) := inferInstanceAs (IsLocallyNoetherian (Spec (CommRingCat.of R₂)))
  obtain ⟨rig', hrig', Hr⟩ := exists_gen_through (K := PUnit) (φ' := fun _ => eSec P₂.A) (φ := fun _ => eSec P₁.A)
    (ε := fun _ => 1) (h := f) hw P₁.isLB P₂.isLB (fun _ => PolBaseChange.eSec_comm gp) rig₁ h₁
  have hr : ∀ (Z : Scheme.{0}) (r : Z ⟶ (𝟙_ (Over (Sp R₂))).left) (z : Z) J J', Good P₁.L z J → Good P₂.L z J' →
      rval rig₁ (r ≫ f) z J = wVal w z J J' (r ≫ eSec P₂.A) * rval rig' r z J' := fun Z r z J J' hJ hJ' =>
    (Hr Z r z J J' hJ hJ').trans (congrArg (· * _) ((Fintype.prod_unique _).trans (zpow_one _)))
  obtain ⟨u, hu⟩ := CommutatorPairing.exists_ratio (K := PUnit) (K' := PUnit) (φ := fun _ => eSec P₂.A)
    (φ' := fun _ => eSec P₂.A) (ε := fun _ => 1) (ε' := fun _ => 1) P₂.isLB (fun _ _ _ => rfl) (𝟙 _) (𝟙 _)
    (Category.id_comp _) (fun a => ⟨a, by simp⟩) h₂ hrig'
  let E : Γ((baseOver (Sp R₂)).left, ⊤) ≃+* R₂ := (Scheme.ΓSpecIso (CommRingCat.of R₂)).commRingCatIsoToRingEquiv
  let E' : Γ((baseOver (Sp R₂)).left, ⊤)ˣ →* R₂ˣ := Units.map E.toRingHom.toMonoidHom
  refine ⟨E' u, fun x₁ x₂ τ₁ τ₂ hx H₁ H₂ => ?_⟩
  obtain ⟨τ', hτ', Hτ⟩ := exists_gen_through (φ' := fun _ : Fin 1 => x₂.left)
    (h := (f : (baseOver (Sp R₂)).left ⟶ (baseOver (Sp R₁)).left)) hw P₁.isLB P₂.isLB (fun _ => hx) τ₁ H₁.2.1
  have H' : IsTorsFrame P₂ rig' n x₂ τ' := isTorsFrame_move gp hw hr hx H₁ hτ' fun z J J' hJ hJ' => by
    have := Hτ _ (𝟙 _) z J J' hJ hJ'
    rwa [Fin.prod_univ_one, zpow_one, Category.id_comp, Category.id_comp] at this
  obtain ⟨v, hv⟩ := CommutatorPairing.exists_ratio P₂.isLB (fun _ _ _ => rfl) (𝟙 _) (𝟙 _)
    (Category.id_comp _) (fun a => ⟨a, by simp⟩) H₂.2.1 hτ'
  have e : v ^ ((n * d) ^ 2) = (show Γ((baseOver (Sp R₂)).left, ⊤)ˣ from u) ^ ((n * d) ^ 2) := unit_ext fun y _ => by
    obtain ⟨J, hJ⟩ := exists_good' P₂.isLB y
    have a := torsFrame_ratio_pow H' H₂ y J hJ
    have b : rval rig₂ (baseOver (Sp R₂)).hom y J = rval rig' (baseOver (Sp R₂)).hom y J * gm (𝟙 _ ≫ 𝟙 _) y ⊤ u :=
      hu _ (𝟙 _) y J hJ
    rw [hv _ _ y J hJ, b, mul_inv_cancel_comm, mul_inv_cancel_comm, Category.id_comp] at a
    rw [map_pow, map_pow]
    exact a.trans (congrArg (fun q => gm q y ⊤ u ^ ((n * d) ^ 2)) (Category.id_comp (𝟙 (Sp R₂))))
  have e' : ((E' v * (E' u)⁻¹ : R₂ˣ) : R₂) ^ ((n * d) ^ 2) = 1 := by
    rw [← Units.val_pow_eq_pow_val, mul_pow, inv_pow, ← map_pow, ← map_pow, e, mul_inv_cancel, Units.val_one]
  have : NeZero ((n * d) ^ 2) := ⟨pow_ne_zero _ hn.ne'⟩
  obtain ⟨k, -, hk⟩ := hζ.eq_pow_of_pow_eq_one e'
  have hv' : fn ((E' u : R₂) * ζ ^ k) = v.val := by
    rw [hk, ← Units.val_mul, mul_comm, inv_mul_cancel_right]
    exact E.symm_apply_apply v.val
  refine ⟨k, fun Z r z J J' hJ hJ' => ?_⟩
  rw [hv', Hτ Z r z J J' hJ hJ', hv Z r z J' hJ', Fin.prod_univ_one, zpow_one, Category.comp_id, gs_unit r z ⊤ trivial,
    ← Units.val_mul, ← _root_.mul_assoc, mul_comm]

theorem tfk_hom (V : Type) [CommRing V] [IsDomain V] : (TFK (R := V) (FractionRing V)).hom = 𝟙 _ := Spec.map_id _

end GlobalTheory.GSep.TowerFrames

namespace GlobalTheory.GSep

open TowerFrames GlobalTheory.ConstFam GlobalTheory.FrameMove

theorem exists_frPull_tower : ∀ {I : Type} (X₁ : GlobalTheory.GSep.GSet) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (𝔗 : GlobalTheory.GSep.Tower X₁ act), ∃ k : X₁.S.Gam → ℕ,
    ∀ (z₁ : X₁.M.Z) (z₂ : 𝔗.X₂.M.Z), 𝔗.p z₂ = z₁ →
    ∀ (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X]
      (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ)
      (V' : Type) [CommRing V'] [IsDomain V'] [IsLocalRing V'] (io : V →+* V') (f : FractionRing V →+* FractionRing V'),
      (∀ v, f (algebraMap V (FractionRing V) v) = algebraMap V' (FractionRing V') (io v)) →
    ∀ (ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V') (X' : Type) [AddCommGroup X'] (t' : X' → V')
      (δ' : I → X' → X') (𝔪₂ : GlobalTheory.GSep.GMem 𝔗.X₂ z₂ 𝔗.act₂ V' ev₂ X' t' δ') (ψ : 𝔪₂.A.A.left ⟶ 𝔪.A.A.left)
      (w : LB.Iso 𝔪₂.A.L (𝔪.A.L.pull ψ)), w.IsGen → 𝔗.Ext ev io ev₂ → 𝔪₂.yK.comp 𝔗.om = f.comp 𝔪.yK →
      IsGrpPullback 𝔪₂.A.A 𝔪.A.A (spMap f) ψ → 𝔪₂.φ ≫ 𝔗.φ = ψ ≫ 𝔪.φ →
    ∀ (x : X₁.S.Gam → (TFK (R := V) (FractionRing V) ⟶ 𝔪.A.A)) (fr : ∀ a, FrAt (x a)),
      (∀ a, (x a).left ≫ 𝔪.φ = spMap 𝔪.yK ≫ (X₁.ρ.pt a).left) →
      (∀ a, (fr a).IsGen ∧ ∀ z J J', Good X₁.ρ.P.L z J → Good 𝔪.A.L z J' →
        Geo.Tor.gw 𝔪.wl (x a).left z (J ((x a).left ≫ 𝔪.φ)) (J' (x a).left) * val (fr a) (𝟙 _) z J' =
          val (X₁.ρ.fr a) (show (TFK (R := V) (FractionRing V)).left ⟶ (baseOver (Sp X₁.S.R)).left from spMap 𝔪.yK) z J) →
    ∀ (x₂ : 𝔗.X₂.S.Gam → (TFK (R := V') (FractionRing V') ⟶ 𝔪₂.A.A)) (fr₂ : ∀ a, FrAt (x₂ a)),
      (∀ a, (x₂ a).left ≫ 𝔪₂.φ = spMap 𝔪₂.yK ≫ (𝔗.X₂.ρ.pt a).left) →
      (∀ a, (fr₂ a).IsGen ∧ ∀ z J J', Good 𝔗.X₂.ρ.P.L z J → Good 𝔪₂.A.L z J' →
        Geo.Tor.gw 𝔪₂.wl (x₂ a).left z (J ((x₂ a).left ≫ 𝔪₂.φ)) (J' (x₂ a).left) * val (fr₂ a) (𝟙 _) z J' =
          val (𝔗.X₂.ρ.fr a) (show (TFK (R := V') (FractionRing V')).left ⟶ (baseOver (Sp 𝔗.X₂.S.R)).left from spMap 𝔪₂.yK) z J) →
    ∃ c : (FractionRing V')ˣ, ∀ b, FrPull w f (x₂ (𝔗.lam b)) (fr₂ (𝔗.lam b)) (x b) (fr b)
      ((c : FractionRing V') * 𝔪₂.yK ⟨algebraMap 𝔗.X₂.o₁ 𝔗.X₂.Ω₁ 𝔗.X₂.S.ζ, 𝔗.X₂.S.R.algebraMap_mem _⟩ ^ k b) := by
  intro I X₁ act 𝔗
  have := X₁.ar.ded
  have := 𝔗.X₂.ar.ded
  have : IsNoetherianRing 𝔗.X₂.o₁ := by
    have := 𝔗.X₂.ar.ft
    exact Algebra.FiniteType.isNoetherianRing ℤ _
  have : IsNoetherianRing 𝔗.X₂.S.R := isNoetherianRing_of_fg 𝔗.X₂.S.fg
  obtain ⟨w₀, hw₀⟩ := 𝔗.lb
  have hζ : IsPrimitiveRoot (⟨algebraMap 𝔗.X₂.o₁ 𝔗.X₂.Ω₁ 𝔗.X₂.S.ζ, 𝔗.X₂.S.R.algebraMap_mem _⟩ : 𝔗.X₂.S.R)
      ((X₁.S.r * X₁.S.N * 𝔗.d) ^ 2) := by
    rw [← 𝔗.lev]
    exact IsPrimitiveRoot.of_map_of_injective (f := 𝔗.X₂.S.R.val) (𝔗.X₂.S.prim.map_of_injective 𝔗.X₂.ar.inj)
      Subtype.val_injective
  have hn : 0 < X₁.S.r * X₁.S.N * 𝔗.d :=
    Nat.mul_pos (Nat.mul_pos X₁.S.r_pos (lt_of_lt_of_le two_pos X₁.S.N_ge)) 𝔗.d_pos
  obtain ⟨u, hu⟩ := exists_root_ratio 𝔗.cart hw₀ X₁.ρ.rig_gen 𝔗.X₂.ρ.rig_gen hn hζ
  choose k hk using fun b => hu _ _ _ _ (𝔗.lam_pt b) (X₁.ρ.fr_tors b) (by
    rw [← 𝔗.lev]; exact 𝔗.X₂.ρ.fr_tors (𝔗.lam b))
  refine ⟨k, ?_⟩
  intro z₁ z₂ _ V _ _ _ ev X _ t δ 𝔪 V' _ _ _ io f _ ev₂ X' _ t' δ' 𝔪₂ ψ w hw _ hy gp hφ x fr hx hfr x₂ fr₂ hx₂ hfr₂
  obtain ⟨a, ha⟩ := exists_square_unit hφ.symm X₁.ρ.P.isLB 𝔪.A.isLB 𝔗.X₂.ρ.P.isLB 𝔪₂.A.isLB 𝔪.wl_gen hw₀ hw 𝔪₂.wl_gen
  obtain ⟨a₀, ha₀⟩ := (GlobalTheory.abelianSchemeLaws_all.1.globalFns _ 𝔪₂.A.A 𝔪₂.A.isAb).2 a.val
  obtain ⟨c₀, rfl⟩ := (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (CommRingCat.of (FractionRing V'))).inv).2 a₀
  have hc : ∀ (p : TFK (R := V') (FractionRing V') ⟶ 𝔪₂.A.A) z,
      (gm p.left z ⊤ a).val = GlobalTheory.UT.cst (R := V') (FractionRing V') z c₀ := fun p z => by
    refine (gs_unit _ z ⊤ trivial a).symm.trans ((congrArg (gs p.left z ⊤) ha₀.symm).trans
      ((gs_pull p.left 𝔪₂.A.A.hom z ⊤ trivial _).trans ?_))
    rw [Over.w p, tfk_hom]
    rfl
  have hc₀ : c₀ ≠ 0 := by
    rintro rfl
    let z : (TFK (R := V') (FractionRing V')).left := (⊥ : PrimeSpectrum (FractionRing V'))
    refine (gm (1 : TFK (R := V') (FractionRing V') ⟶ 𝔪₂.A.A).left z ⊤ a).ne_zero ((hc 1 z).trans ?_)
    exact (gs_eq (𝟙 _) z ⊤ trivial _).trans (by simp only [map_zero])
  refine ⟨Units.mk0 c₀ hc₀ * Units.map 𝔪₂.yK.toMonoidHom u, fun b z J J' hJ hJ' => ?_⟩
  obtain ⟨J₁, hJ₁⟩ := exists_good' X₁.ρ.P.isLB z
  obtain ⟨J₂, hJ₂⟩ := exists_good' 𝔗.X₂.ρ.P.isLB z
  have hs : spMap 𝔪₂.yK ≫ spMap 𝔗.om = spMap f ≫ spMap 𝔪.yK := by
    rw [← Geo.Tor.spMap_comp, ← Geo.Tor.spMap_comp, hy]
  have hp : (x₂ (𝔗.lam b)).left ≫ ψ =
      (show (TFK (R := V') (FractionRing V')).left ⟶ (TFK (R := V) (FractionRing V)).left from spMap f) ≫ (x b).left := by
    refine 𝔪.cart.1.hom_ext ?_ ?_
    · have e₁ : ((x₂ (𝔗.lam b)).left ≫ ψ) ≫ 𝔪.φ = spMap 𝔪₂.yK ≫ (𝔗.X₂.ρ.pt (𝔗.lam b)).left ≫ 𝔗.φ := by
        rw [Category.assoc, ← hφ, ← Category.assoc, hx₂]
        exact Category.assoc _ _ _
      refine e₁.trans ((congrArg (_ ≫ ·) (𝔗.lam_pt b)).trans ((Category.assoc _ _ _).symm.trans
        ((congrArg (· ≫ _) hs).trans ((Category.assoc _ _ _).trans ((congrArg (_ ≫ ·) (hx b).symm).trans
          (Category.assoc _ _ _).symm)))))
    · rw [Category.assoc, Category.assoc, gp.1.w, Over.w (x b), ← Category.assoc, Over.w (x₂ _), tfk_hom, tfk_hom]
      exact (Category.id_comp _).trans (Category.comp_id _).symm
  have q₁ := transport_ext X₁.ρ.P.isLB 𝔪.A.isLB 𝔪.wl_gen (hx b) (X₁.ρ.fr_tors b).2.1 (hfr b).2
    (show (TFK (R := V') (FractionRing V')).left ⟶ (TFK (R := V) (FractionRing V)).left from spMap f) z J₁ J hJ₁ hJ
  have q₂ : wVal 𝔪₂.wl z J₂ J' (x₂ (𝔗.lam b)).left * _ = _ := (hfr₂ (𝔗.lam b)).2 z J₂ J' hJ₂ hJ'
  have q₃ := hk b _ (show (TFK (R := V') (FractionRing V')).left ⟶ (baseOver (Sp 𝔗.X₂.S.R)).left from spMap 𝔪₂.yK)
    z J₁ J₂ hJ₁ hJ₂
  have q₄ := ha _ (x₂ (𝔗.lam b)).left z J₁ J J₂ J' hJ₁ hJ hJ₂ hJ'
  rw [← hp] at q₁
  have q₅ := (congrArg (fun q => val (X₁.ρ.fr b) q z J₁) hs).trans q₁.symm
  have q₆ := congrArg (fun q => wVal w₀ z J₁ J₂ q) (hx₂ (𝔗.lam b))
  have q₇ := ((congrArg₂ (fun s t => (s * t).val) q₆ q₂).trans q₃).trans
    (congrArg₂ (fun s t => s * Units.val t) (gs_spMap 𝔪₂.yK z _) q₅)
  have m : ∀ s t, GlobalTheory.UT.cst (R := V') (FractionRing V') z (s * t) =
      GlobalTheory.UT.cst (R := V') (FractionRing V') z s * GlobalTheory.UT.cst (R := V') (FractionRing V') z t := fun s t =>
    (congrArg (gs _ z ⊤) (map_mul _ _ _)).trans (gs_mul _ z ⊤ trivial _ _)
  have m' : GlobalTheory.UT.cst (R := V') (FractionRing V') z (((Units.mk0 c₀ hc₀ * Units.map 𝔪₂.yK.toMonoidHom u :
      (FractionRing V')ˣ) : FractionRing V') *
        𝔪₂.yK ⟨algebraMap 𝔗.X₂.o₁ 𝔗.X₂.Ω₁ 𝔗.X₂.S.ζ, 𝔗.X₂.S.R.algebraMap_mem _⟩ ^ k b) = _ * _ :=
    (congrArg _ (by rw [map_mul, map_pow, Units.val_mul, _root_.mul_assoc]; rfl)).trans (m c₀
      (𝔪₂.yK (u * ⟨algebraMap 𝔗.X₂.o₁ 𝔗.X₂.Ω₁ 𝔗.X₂.S.ζ, 𝔗.X₂.S.R.algebraMap_mem _⟩ ^ k b)))
  have key : ∀ {O : Type} [CommRing O] (Wl W W₀ W₂ A F F₂ : Oˣ) (C U : O), Wl * W = A * (W₀ * W₂) → A.val = C →
      (W₀ * (W₂ * F₂)).val = U * (Wl * F).val → W.val * F₂.val = C * U * F.val := by
    intro O _ Wl W W₀ W₂ A F F₂ C U h₁ h₂ h₃
    refine (Units.mul_right_inj Wl).1 ?_
    replace h₁ := congrArg Units.val h₁
    simp only [Units.val_mul] at h₁ h₃
    rw [← h₂]
    linear_combination F₂.val * h₁ + A.val * h₃
  exact (key _ _ _ _ _ _ _ _ _ q₄ (hc _ z) q₇).trans (congrArg (· * _) m'.symm)

end GlobalTheory.GSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTowerFramesPullbackConstantRoot =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTowerFramesPullbackConstantRootStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTowerFramesPullbackConstantRootStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrPull\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTowerFramesPullbackConstantRoot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep.BaseTerms


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTowerFramesPullbackConstantRootStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TermsWitnessesBaseChangeAlongTower =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TermsWitnessesBaseChangeAlongTower", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrPull\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullIso\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsFramesOnUniformisedModelFibre\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.YKThNeZero\nimport Development.AbelianVarietyTheory.Proofs.ThetaFamilyOrigin.IsThetaPtOverMove\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsUniqueThickTorusLevelWeightExpansion\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.StalkMapInjectiveOfFlat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep.BaseTerms

noncomputable section

namespace GlobalTheory.GSep.TermsTrans

open GlobalTheory.TermsMove GlobalTheory.FieldBaseChange GlobalTheory.TorsionExt GlobalTheory.ArcPull

theorem tfk_hom (V : Type) [CommRing V] [IsDomain V] : (TFK (R := V) (FractionRing V)).hom = 𝟙 _ := by
  show Spec.map (CommRingCat.ofHom (algebraMap (FractionRing V) (FractionRing V))) = _
  rw [Algebra.algebraMap_self]
  exact Spec.map_id _

theorem gw_stalk {X X' Y Z : Scheme.{0}} {L : LB X} {L' : LB X'} {F : X' ⟶ X} (w : LB.Iso L' (L.pull F)) (r : Z ⟶ Y)
    (g : Y ⟶ X') (z : Z) {j : L.ι} {k : L'.ι} (hj : F (g (r z)) ∈ L.U j) (hk : g (r z) ∈ L'.U k) :
    (Geo.Tor.gw w (r ≫ g) z j k).val = (r.stalkMap z).hom (Geo.Tor.gw w g (r z) j k).val := by
  have hm : g (r z) ∈ (L.pull F).U (fun _ => j) ⊓ L'.U k := ⟨mem_pull.2 hj, hk⟩
  exact (gs_unit (r ≫ g) z _ hm _).symm.trans ((LiftTest.gs_comp r g z _ hm _).trans
    (congrArg _ (gs_unit g (r z) _ hm _)))

theorem exists_theta {I : Type} {X₁ : GSet} {z₁ : X₁.M.Z} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)} {V : Type} [CommRing V]
    [IsDomain V] [IsLocalRing V] {ev : X₁.M.Z.presheaf.stalk z₁ →+* V} {X : Type} [AddCommGroup X] {t : X → V}
    {δ : I → X → X} (𝔪 : GMem X₁ z₁ act V ev X t δ) (x : X₁.S.Gam → (TFK (R := V) (FractionRing V) ⟶ 𝔪.A.A))
    (fr : ∀ a, FrAt (x a)) (hx : ∀ a, (x a).left ≫ 𝔪.φ = spMap 𝔪.yK ≫ (X₁.ρ.pt a).left)
    (hfr : ∀ a z J J', Good X₁.ρ.P.L z J → Good 𝔪.A.L z J' →
      Geo.Tor.gw 𝔪.wl (x a).left z (J ((x a).left ≫ 𝔪.φ)) (J' (x a).left) * val (fr a) (𝟙 _) z J' =
        val (X₁.ρ.fr a) (show (TFK (R := V) (FractionRing V)).left ⟶ (baseOver (Sp X₁.S.R)).left from spMap 𝔪.yK) z J) :
    ∃ th : SecA 𝔪.A (FractionRing V) 1, ∀ a, ValAt th (x a) (fr a) (𝔪.yK ⟨X₁.S.th a, X₁.S.th_mem a⟩) := by
  have gp := 𝔪.cart
  have hτ : (spMap 𝔪.yK : (TFK (R := V) (FractionRing V)).left ⟶ (baseOver (Sp X₁.S.R)).left) ≫
      (baseOver (Sp X₁.S.R)).hom = (TFK (R := V) (FractionRing V)).hom ≫ spMap 𝔪.yK := by
    rw [tfk_hom]; simp
  obtain ⟨th, hth⟩ := GlobalTheory.ThetaPtMove.exists_secRel (T := TFK (R := V) (FractionRing V))
    (T₀ := baseOver (Sp X₁.S.R)) (τ := spMap 𝔪.yK) gp hτ (w := 𝔪.wl) 𝔪.wl_gen X₁.ρ.P.isLB 𝔪.A.isLB (a := 1) X₁.ρ.th₁
  refine ⟨th, fun a => ?_⟩
  have H : GlobalTheory.ThetaPtMove.GenThrough 𝔪.wl _ _ _ (fr a) (X₁.ρ.fr a)
      (show (TFK (R := V) (FractionRing V)).left ⟶ (baseOver (Sp X₁.S.R)).left from spMap 𝔪.yK) := by
    intro Z r z J J' hJ hJ'
    have e := congrArg (fun u => (r.stalkMap z).hom (Units.val u))
      (hfr a (r z) _ _ (LevelExpansion.good_comp r hJ) (LevelExpansion.good_comp r hJ'))
    rw [Fin.prod_univ_one, zpow_one]
    refine Units.ext ((LevelExpansion.val_comp _ r _ hJ).trans (e.symm.trans ((map_mul _ _ _).trans
      (congrArg₂ (· * ·) ?_ ?_))))
    · refine (gw_stalk 𝔪.wl r (x a).left z (hJ (r ≫ (x a).left ≫ 𝔪.φ)) (hJ' (r ≫ (x a).left))).symm.trans ?_
      rw [← Category.assoc]
      rfl
    · exact (LevelExpansion.val_comp _ r (𝟙 _) hJ').symm.trans (by rw [Category.comp_id])
  have hv := GlobalTheory.ThetaPtMove.isValueAt_move (T := TFK (R := V) (FractionRing V))
    (T₀ := baseOver (Sp X₁.S.R)) (τ := spMap 𝔪.yK) gp hτ (w := 𝔪.wl) X₁.ρ.P.isLB 𝔪.A.isLB (a := 1)
    (x := x a) (x₀ := X₁.ρ.pt a) (hx a).symm (ρ₀ := X₁.ρ.fr a) (ρ := fr a) H (s₀ := X₁.ρ.th₁) (s := th) hth
    (X₁.ρ.th_val a)
  intro z J hJ
  have e := GlobalTheory.FrameMove.sval_valueAt hv (𝟙 _) hJ
  rw [Category.id_comp] at e
  refine e.trans ?_
  rw [GlobalTheory.FrameMove.val_powFrame, Nat.cast_one, zpow_one]
  congr 1
  exact (gs_pull (𝟙 _) (spMap 𝔪.yK) z ⊤ trivial _).trans
    ((congrArg (fun q => gs q z ⊤ _) (Category.id_comp _)).trans (GlobalTheory.FrameMove.gs_spMap 𝔪.yK z _))

theorem exists_moved {R R' : Type} [CommRing R] [IsDomain R] [CommRing R'] [IsDomain R'] {φ : R →+* R'}
    [Algebra (FractionRing R) (FractionRing R')] {I : Ideal R} {I' : Ideal R'} {D : DegData R I} {D' : DegData R' I'}
    {hD : IsPullDeg φ D.toPre D'.toPre} {A : PolAV (Sp (FractionRing R))} {A' : PolAV (Sp (FractionRing R'))}
    {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G] {G' : Over (Sp R')} [GrpObj G'] [IsCommMonObj G']
    {Φ : A'.A.left ⟶ A.A.left} {v : LB.Iso A'.L (A.L.pull Φ)} {U : Unif I D A G} {U' : Unif I' D' A' G'}
    {bc : G' ≅ (Over.pullback (specOf φ)).obj G} (hI : I.map φ ≤ I') (hbc : IsMonHom bc.hom)
    (hU : IsPullUnif φ hD bc U U') (hF : Compat φ (FractionRing R'))
    (gΦ : IsPullback Φ A'.A.hom A.A.hom (spMap (algebraMap (FractionRing R) (FractionRing R')))) (hv : v.IsGen)
    (hΦ : U'.gen.hom.left ≫ Φ ≫ U.gen.inv.left ≫ pullback.fst G.hom (jK R) =
      pullback.fst G'.hom (jK R') ≫ bc.hom.left ≫ pullback.fst G.hom (specOf φ))
    {w₀ : W0 U.toUnifPre} (hw₀ : w₀.IsGen) {th : SecA A (FractionRing R) 1} {s : Fam D.toPre (FractionRing R) 1}
    (hE : U.ExpandsF (FractionRing R) 1 w₀ th s) :
    ∃ (w₀' : W0 U'.toUnifPre) (th' : SecA A' (FractionRing R') 1) (s' : Fam D'.toPre (FractionRing R') 1),
      w₀'.IsGen ∧ U'.ExpandsF (FractionRing R') 1 w₀' th' s' ∧
      (∀ (x : TFK (R := R) (FractionRing R) ⟶ A.A) (fr : FrAt x) (x' : TFK (R := R') (FractionRing R') ⟶ A'.A)
        (fr' : FrAt x') (ρ : (FractionRing R')ˣ) (c : FractionRing R),
        x'.left ≫ Φ = spMap (algebraMap (FractionRing R) (FractionRing R')) ≫ x.left →
        FrPull v (algebraMap _ _) x' fr' x fr ρ → ValAt th x fr c →
        ValAt th' x' fr' (algebraMap (FractionRing R) (FractionRing R') c * (ρ⁻¹).val)) ∧
      ∀ (g : GtPtF D.toPre (FractionRing R)) (w : GlobalTheory.UT.Frm D.toPre (FractionRing R) 1 g.b) (ρ : (FractionRing R')ˣ),
        w.IsGen → ∃ (g' : GtPtF D'.toPre (FractionRing R')) (w' : GlobalTheory.UT.Frm D'.toPre (FractionRing R') 1 g'.b), w'.IsGen ∧
        (∀ n, (∃ o, GtPtF.IsNsmul n g o ∧ o.IsZero) → ∃ o, GtPtF.IsNsmul n g' o ∧ o.IsZero) ∧
        (∀ α, coef s' g' w' α * ρ = algebraMap (FractionRing R) (FractionRing R') (coef s g w (hD.xe α))) ∧
        ∀ (x : TFK (R := R) (FractionRing R) ⟶ A.A) (fr : FrAt x) (x' : TFK (R := R') (FractionRing R') ⟶ A'.A)
          (fr' : FrAt x'), fr.IsGen → x'.left ≫ Φ = spMap (algebraMap (FractionRing R) (FractionRing R')) ≫ x.left →
          FrPull v (algebraMap _ _) x' fr' x fr ρ → LiesOver U.toUnifPre (FractionRing R) w₀ g w x fr →
          LiesOver U'.toUnifPre (FractionRing R') w₀' g' w' x' fr' := by
  have hG : GlobalFnsSt := GlobalTheory.abelianSchemeLaws_all.1.globalFns
  obtain ⟨κ, κ', hκ⟩ := exists_isFibreIso hD hF
  have hg₂ : jFK (R := R') (FractionRing R') ≫ spMap (algebraMap (FractionRing R) (FractionRing R')) =
      jFK (R := R) (FractionRing R') := by
    rw [show jFK (R := R') (FractionRing R') = 𝟙 _ from tfk_hom R']
    exact Category.id_comp _
  obtain ⟨w₀', hw₀', Ω, h₁, h₂, H⟩ := exists_expand hG hbc hU hF hg₂ gΦ hv hΦ hw₀ hκ
  obtain ⟨th', s', E', up, fup⟩ := (H 1 le_rfl).1 _ _ (expandsF_pull (F := FractionRing R') U.toUnifPre hG hE)
  have frup : ∀ {x : TFK (R := R) (FractionRing R) ⟶ A.A} {fr : FrAt x} {x' : TFK (R := R') (FractionRing R') ⟶ A'.A}
      {fr' : FrAt x'} {ρ : (FractionRing R')ˣ}, FrPull v (algebraMap _ _) x' fr' x fr ρ →
      FrUp v fr' (frExt (FractionRing R') fr) ρ := fun {x fr x' fr' ρ} h z J J' hJ hJ' => by
    refine (h z J J' hJ hJ').trans (congrArg₂ (· * ·) rfl (congrArg Units.val ?_))
    exact ((val_frExt fr (𝟙 _) hJ).trans (by rw [Category.id_comp])).symm
  refine ⟨w₀', th', s', hw₀', E', fun x fr x' fr' ρ c hx hp hc => ?_, fun g w ρ hw => ?_⟩
  · have := valAt_pull h₁ h₂ up (x := fieldMap (R := R) (FractionRing R) (FractionRing R') ≫ x) hx (frup hp)
      (valAt_ext hc)
    rwa [pow_one] at this
  obtain ⟨g₁, w₁, hw₁, t₁, c₁, l₁⟩ := exists_ext (F := FractionRing R') hG U hw₀ g hw
  obtain ⟨g', w', hw', t₂, c₂, l₂⟩ := exists_point hG hI hF hκ h₁ h₂ (fun k hk => (H k hk).2) g₁ hw₁ ρ
  refine ⟨g', w', hw', fun n h => t₂ n (t₁ n h), fun α => (c₂ _ _ fup α).trans (c₁ s _),
    fun x fr x' fr' gen hx hp hl => ?_⟩
  have a := l₁ x fr gen hl
  have b : (frExt (FractionRing R') fr).IsGen := pullGen_isGen _ _ _ _ gen _
  exact l₂ x' fr' (fieldMap (R := R) (FractionRing R) (FractionRing R') ≫ x) (frExt (FractionRing R') fr) b hx (frup hp) a

theorem terms_witnesses_baseChange : ∀ {I : Type} (X₁ : GlobalTheory.GSep.GSet) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (𝔗 : GlobalTheory.GSep.Tower X₁ act) (z₁ : X₁.M.Z)
    (z₂ : 𝔗.X₂.M.Z), 𝔗.p z₂ = z₁ → ∀ x₀ : X₁.S.Gam, X₁.M.Div X₁.S.th x₀ z₁ →
    ∀ (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X]
      (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (C : Type)
      (lab : C → X₁.S.Gam)
      (x : X₁.S.Gam → (TFK (R := V) (FractionRing V) ⟶ 𝔪.A.A)) (fr : ∀ a, FrAt (x a)) (th : SecA 𝔪.A (FractionRing V) 1)
      (w₀ : W0 𝔪.U.toUnifPre) (s : Fam 𝔪.D.toPre (FractionRing V) 1) (g' : C → GtPtF 𝔪.D.toPre (FractionRing V))
      (w : ∀ c, GlobalTheory.UT.Frm 𝔪.D.toPre (FractionRing V) 1 (g' c).b),
      (∀ a, (x a).left ≫ 𝔪.φ = spMap 𝔪.yK ≫ (X₁.ρ.pt a).left) →
      (∀ a, (fr a).IsGen ∧ ∀ z J J', Good X₁.ρ.P.L z J → Good 𝔪.A.L z J' →
        Geo.Tor.gw 𝔪.wl (x a).left z (J ((x a).left ≫ 𝔪.φ)) (J' (x a).left) * val (fr a) (𝟙 _) z J' =
          val (X₁.ρ.fr a) (show (TFK (R := V) (FractionRing V)).left ⟶ (baseOver (Sp X₁.S.R)).left from spMap 𝔪.yK) z J) →
      (∀ a, ValAt th (x a) (fr a) (𝔪.yK ⟨X₁.S.th a, X₁.S.th_mem a⟩)) → w₀.IsGen →
      𝔪.U.ExpandsF (FractionRing V) 1 w₀ th s →
      (∀ c, (∃ o, GtPtF.IsNsmul (X₁.S.r * X₁.S.N) (g' c) o ∧ o.IsZero) ∧ (w c).IsGen ∧
        𝔪.Over' w₀ (g' c) (w c) (x (lab c)) (fr (lab c))) →
    ∀ (V' : Type) [CommRing V'] [IsDomain V'] [IsLocalRing V'] (io : V →+* V') (f : FractionRing V →+* FractionRing V'),
      (∀ v, f (algebraMap V (FractionRing V) v) = algebraMap V' (FractionRing V') (io v)) → Function.Injective io → io.Finite →
    ∀ (ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V') (𝔪₂ : GlobalTheory.GSep.GMem 𝔗.X₂ z₂ 𝔗.act₂ V' ev₂ X (fun k => io (t k)) δ)
      (ψ : 𝔪₂.A.A.left ⟶ 𝔪.A.A.left) (hD : IsPullDeg io 𝔪.D.toPre 𝔪₂.D.toPre)
      (bc : 𝔪₂.G ≅ (Over.pullback (spMap io)).obj 𝔪.G), 𝔗.Ext ev io ev₂ → 𝔪₂.yK.comp 𝔗.om = f.comp 𝔪.yK →
      IsGrpPullback 𝔪₂.A.A 𝔪.A.A (spMap f) ψ → ∀ (wψ : LB.Iso 𝔪₂.A.L (𝔪.A.L.pull ψ)), wψ.IsGen →
      𝔪₂.φ ≫ 𝔗.φ = ψ ≫ 𝔪.φ → IsMonHom bc.hom → IsPullUnif io hD bc 𝔪.U 𝔪₂.U →
      (∀ mu, hD.xe (𝔪₂.e₈ mu) = 𝔪.e₈ mu) →
      𝔪₂.U.gen.hom.left ≫ ψ ≫ 𝔪.U.gen.inv.left ≫ pullback.fst 𝔪.G.hom (jK V) =
        pullback.fst 𝔪₂.G.hom (jK V') ≫ bc.hom.left ≫ pullback.fst 𝔪.G.hom (spMap io) →
    ∀ (x₂ : 𝔗.X₂.S.Gam → (TFK (R := V') (FractionRing V') ⟶ 𝔪₂.A.A)) (fr₂ : ∀ a, FrAt (x₂ a)),
      (∀ a, (x₂ a).left ≫ 𝔪₂.φ = spMap 𝔪₂.yK ≫ (𝔗.X₂.ρ.pt a).left) →
      (∀ a, (fr₂ a).IsGen ∧ ∀ z J J', Good 𝔗.X₂.ρ.P.L z J → Good 𝔪₂.A.L z J' →
        Geo.Tor.gw 𝔪₂.wl (x₂ a).left z (J ((x₂ a).left ≫ 𝔪₂.φ)) (J' (x₂ a).left) * val (fr₂ a) (𝟙 _) z J' =
          val (𝔗.X₂.ρ.fr a) (show (TFK (R := V') (FractionRing V')).left ⟶ (baseOver (Sp 𝔗.X₂.S.R)).left from spMap 𝔪₂.yK) z J) →
    ∀ ρ : X₁.S.Gam → (FractionRing V')ˣ, (∀ b, FrPull wψ f (x₂ (𝔗.lam b)) (fr₂ (𝔗.lam b)) (x b) (fr b) (ρ b)) →
    ∃ (th₂ : SecA 𝔪₂.A (FractionRing V') 1) (w₀₂ : W0 𝔪₂.U.toUnifPre) (s₂ : Fam 𝔪₂.D.toPre (FractionRing V') 1)
      (g'₂ : C → GtPtF 𝔪₂.D.toPre (FractionRing V')) (w₂ : ∀ c, GlobalTheory.UT.Frm 𝔪₂.D.toPre (FractionRing V') 1 (g'₂ c).b)
      (K : FractionRing V'),
      (∀ a, ValAt th₂ (x₂ a) (fr₂ a) (𝔪₂.yK ⟨𝔗.X₂.S.th a, 𝔗.X₂.S.th_mem a⟩)) ∧ w₀₂.IsGen ∧
      𝔪₂.U.ExpandsF (FractionRing V') 1 w₀₂ th₂ s₂ ∧
      (∀ c, (∃ o, GtPtF.IsNsmul (𝔗.X₂.S.r * 𝔗.X₂.S.N) (g'₂ c) o ∧ o.IsZero) ∧ (w₂ c).IsGen ∧
        𝔪₂.Over' w₀₂ (g'₂ c) (w₂ c) (x₂ (𝔗.lam (lab c))) (fr₂ (𝔗.lam (lab c)))) ∧
      (∀ mu c, coef s₂ (g'₂ c) (w₂ c) (𝔪₂.e₈ mu) * (ρ (lab c) : FractionRing V') = K * f (coef s (g' c) (w c) (𝔪.e₈ mu))) ∧
      ∀ b, 𝔪₂.yK ⟨𝔗.X₂.S.th (𝔗.lam b), 𝔗.X₂.S.th_mem _⟩ * (ρ b : FractionRing V') = K * f (𝔪.yK ⟨X₁.S.th b, X₁.S.th_mem b⟩) := by
  intro I X₁ act 𝔗 z₁ z₂ _ x₀ hdiv V _ _ _ ev X _ t δ 𝔪 C lab x fr th w₀ s g' w hx hfr hth hw₀ hE hc V' _ _ _ io f hf hinj hfin
    ev₂ 𝔪₂ ψ hD bc _ hy gψ wψ hwψ hφ hbc hU hxe hgen x₂ fr₂ hx₂ hfr₂ ρ hρ
  letI : Algebra (FractionRing V) (FractionRing V') := f.toAlgebra
  have hG : GlobalFnsSt := GlobalTheory.abelianSchemeLaws_all.1.globalFns
  have hI : (maximalIdeal V).map io ≤ maximalIdeal V' := by
    have := RingHom.IsIntegral.isLocalHom hfin.to_isIntegral hinj
    exact Ideal.map_le_iff_le_comap.2 fun v hv => map_nonunit io v hv
  obtain ⟨w₀₂, th', s', hw₀₂, E', hval, hpt⟩ := exists_moved (v := wψ) hI hbc hU hf gψ.1 hwψ hgen hw₀ hE
  have hxx : ∀ b, (x₂ (𝔗.lam b)).left ≫ ψ = spMap f ≫ (x b).left := fun b => by
    refine 𝔪.cart.1.hom_ext ?_ ?_
    · have e : spMap 𝔪₂.yK ≫ spMap 𝔗.om = spMap f ≫ spMap 𝔪.yK :=
        (Spec.map_comp (CommRingCat.ofHom 𝔗.om) (CommRingCat.ofHom 𝔪₂.yK)).symm.trans
          ((congrArg spMap hy).trans (Spec.map_comp (CommRingCat.ofHom 𝔪.yK) (CommRingCat.ofHom f)))
      rw [Category.assoc, ← hφ, ← Category.assoc, hx₂, Category.assoc, Category.assoc, hx]
      exact (congrArg (_ ≫ ·) (𝔗.lam_pt b)).trans ((Category.assoc _ _ _).symm.trans ((congrArg (· ≫ _) e).trans
        (Category.assoc _ _ _)))
    · rw [Category.assoc, gψ.1.w, ← Category.assoc, Over.w (x₂ (𝔗.lam b)), Category.assoc, Over.w (x b), tfk_hom, tfk_hom]
      exact (Category.id_comp _).trans (Category.comp_id _).symm
  have hv' := fun b => hval _ _ _ _ (ρ b) _ (hxx b) (hρ b) (hth b)
  have hne : (show AbSec 𝔪₂.A (FractionRing V') 1 from th') ≠ 0 := fun h => by
    have h₀ := hv' x₀
    rw [show th' = _ from h] at h₀
    exact mul_ne_zero ((map_ne_zero_iff f f.injective).2
      (GlobalTheory.GSep.GMem.yK_th_ne_zero I X₁ z₁ act V ev X t δ 𝔪 x₀ hdiv)) (Units.ne_zero _)
      (valAt_unique h₀ (valAt_zero _ _))
  obtain ⟨th₂, hth₂⟩ := exists_theta 𝔪₂ x₂ fr₂ hx₂ fun a => (hfr₂ a).2
  obtain ⟨K, hK⟩ := exists_eq_smul hne th₂
  choose g₂ w₂ hw₂ ht₂ hc₂ hl₂ using fun c => hpt (g' c) (w c) (ρ (lab c)) (hc c).2.1
  obtain ⟨e, he⟩ := exists_linearEquiv_expandsF hG 𝔪₂.U (FractionRing V') (k := 1) le_rfl w₀₂ hw₀₂
  refine ⟨th₂, w₀₂, K • s', g₂, w₂, K, hth₂, hw₀₂, (he _ _).2 ?_, fun c => ⟨?_, hw₂ c, ?_⟩, fun mu c => ?_, fun b => ?_⟩
  · exact (congrArg e hK).trans ((map_smul e K _).trans (congrArg (K • ·) ((he _ _).1 E')))
  · letI := @TorusExt.gtGroup
    obtain ⟨o, o₁, o₂⟩ := ht₂ c _ (hc c).1
    rw [TorusExt.isNsmul_iff_eq] at o₁
    rw [TorusExt.isZero_iff_eq] at o₂
    refine ⟨0, (TorusExt.isNsmul_iff_eq _ _ _).2 ?_, (TorusExt.isZero_iff_eq _).2 rfl⟩
    rw [𝔗.lev, mul_nsmul, ← o₁, o₂, nsmul_zero]
  · exact hl₂ c _ _ _ _ (hfr _).1 (hxx _) (hρ _) (hc c).2.2
  · rw [coef_smul (hw₂ c), _root_.mul_assoc, hc₂, hxe]
    rfl
  · have a := valAt_lin (hv' b) (valAt_zero _ _) K
    rw [add_zero, add_zero, ← hK] at a
    rw [valAt_unique (hth₂ _) a, _root_.mul_assoc, Units.inv_mul_cancel_right]
    rfl

end GlobalTheory.GSep.TermsTrans
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TermsWitnessesBaseChangeAlongTower =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TermsWitnessesBaseChangeAlongTowerStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TermsWitnessesBaseChangeAlongTowerStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrPull\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TermsWitnessesBaseChangeAlongTower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep.BaseTerms


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TermsWitnessesBaseChangeAlongTowerStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisTowerThetaMemberTermsBaseChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisTowerThetaMemberTermsBaseChange", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotTwistSumZeroFamily\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionPointsTransportedFramesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTowerFramesPullbackConstantRootStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TermsWitnessesBaseChangeAlongTowerStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.Poinc.Sep.BaseTerms

noncomputable section

namespace GlobalTheory.GSep.BaseTerms

theorem terms_baseChange : ∀ {I : Type} (X₁ : GlobalTheory.GSep.GSet) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (𝔗 : GlobalTheory.GSep.Tower X₁ act) (z₁ : X₁.M.Z) (z₂ : 𝔗.X₂.M.Z), 𝔗.p z₂ = z₁ → ∀ x₀ : X₁.S.Gam, X₁.M.Div X₁.S.th x₀ z₁ → ∃ eps : X₁.S.Gam → ℕ, ∀ (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X] (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (C : Type) (lab : C → X₁.S.Gam) (T : X → C → V), 𝔪.Terms x₀ lab T → ∀ (V' : Type) [CommRing V'] [IsDomain V'] [IsLocalRing V'] (io : V →+* V') (f : FractionRing V →+* FractionRing V'), (∀ v, f (algebraMap V (FractionRing V) v) = algebraMap V' (FractionRing V') (io v)) → Function.Injective io → io.Finite → ∀ (ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V') (𝔪₂ : GlobalTheory.GSep.GMem 𝔗.X₂ z₂ 𝔗.act₂ V' ev₂ X (fun k => io (t k)) δ) (ψ : 𝔪₂.A.A.left ⟶ 𝔪.A.A.left) (hD : IsPullDeg io 𝔪.D.toPre 𝔪₂.D.toPre) (bc : 𝔪₂.G ≅ (Over.pullback (spMap io)).obj 𝔪.G), 𝔗.Ext ev io ev₂ → 𝔪₂.yK.comp 𝔗.om = f.comp 𝔪.yK → IsGrpPullback 𝔪₂.A.A 𝔪.A.A (spMap f) ψ → (∃ w : LB.Iso 𝔪₂.A.L (𝔪.A.L.pull ψ), w.IsGen) → 𝔪₂.φ ≫ 𝔗.φ = ψ ≫ 𝔪.φ → IsMonHom bc.hom → IsPullUnif io hD bc 𝔪.U 𝔪₂.U → (∀ mu, hD.xe (𝔪₂.e₈ mu) = 𝔪.e₈ mu) → 𝔪₂.U.gen.hom.left ≫ ψ ≫ 𝔪.U.gen.inv.left ≫ pullback.fst 𝔪.G.hom (jK V) = pullback.fst 𝔪₂.G.hom (jK V') ≫ bc.hom.left ≫ pullback.fst 𝔪.G.hom (spMap io) → ∀ zt : 𝔗.X₂.M.Z.presheaf.stalk z₂, 𝔗.X₂.M.stalkHom z₂ zt = algebraMap 𝔗.X₂.o₁ 𝔗.X₂.Ω₁ 𝔗.X₂.S.ζ → 𝔪₂.Terms (𝔗.lam x₀) (fun c => 𝔗.lam (lab c)) (fun mu c => ev₂ zt ^ eps (lab c) * io (T mu c)) := by
  intro I X₁ act 𝔗 z₁ z₂ hp x₀ hdiv
  obtain ⟨k, hk⟩ := _root_.GlobalTheory.GSep.exists_frPull_tower X₁ act 𝔗
  set M := (𝔗.X₂.S.r * 𝔗.X₂.S.N) ^ 2 with hM
  refine ⟨fun b => k x₀ + (M - 1) * k b, ?_⟩
  intro V _ _ _ ev X _ t δ 𝔪 C lab T hT V' _ _ _ io f hf hinj hfin ev₂ 𝔪₂ ψ hD bc hExt hyK hcart hw hφ hmon hU he₈ hgen zt hzt
  obtain ⟨x, fr, th, w₀, s, g', w, h1, h2, h3, h4, h5, h6, h7⟩ := hT
  obtain ⟨wψ, hwψ⟩ := hw
  obtain ⟨x₂, fr₂, h1', h2'⟩ := _root_.GlobalTheory.GSep.exists_points_frames 𝔗.X₂ z₂ 𝔗.act₂ V' ev₂ X (fun k => io (t k)) δ 𝔪₂
  obtain ⟨c₀, hc₀⟩ := hk z₁ z₂ hp V ev X t δ 𝔪 V' io f hf ev₂ X (fun k => io (t k)) δ 𝔪₂ ψ wψ hwψ hExt hyK hcart hφ
    x fr h1 h2 x₂ fr₂ h1' h2'
  set ζ' : FractionRing V' := 𝔪₂.yK ⟨algebraMap 𝔗.X₂.o₁ 𝔗.X₂.Ω₁ 𝔗.X₂.S.ζ, 𝔗.X₂.S.R.algebraMap_mem _⟩ with hζ'
  have hζM : ζ' ^ M = 1 := by
    rw [hζ', ← map_pow]
    have : (⟨algebraMap 𝔗.X₂.o₁ 𝔗.X₂.Ω₁ 𝔗.X₂.S.ζ, 𝔗.X₂.S.R.algebraMap_mem _⟩ : 𝔗.X₂.S.R) ^ M = 1 := by
      apply Subtype.ext
      simp only [SubmonoidClass.coe_pow, OneMemClass.coe_one]
      rw [← map_pow, hM, 𝔗.X₂.S.prim.pow_eq_one, map_one]
    rw [this, map_one]
  have hMpos : M ≠ 0 := by
    rw [hM]; exact pow_ne_zero _ (Nat.mul_ne_zero (by have := 𝔗.X₂.S.r_pos; omega) (by have := 𝔗.X₂.S.N_ge; omega))
  have hζ0 : ζ' ≠ 0 := by
    intro h0
    rw [h0, zero_pow hMpos] at hζM
    exact zero_ne_one hζM
  let ρ : X₁.S.Gam → (FractionRing V')ˣ := fun b => c₀ * (Units.mk0 ζ' hζ0) ^ k b
  have hρ : ∀ b, FrPull wψ f (x₂ (𝔗.lam b)) (fr₂ (𝔗.lam b)) (x b) (fr b) (ρ b) := by
    intro b
    simpa [ρ] using hc₀ b
  obtain ⟨th₂, w₀₂, s₂, g'₂, w₂, K, h3', h4', h5', h6', hcoef, hval⟩ := _root_.GlobalTheory.GSep.TermsTrans.terms_witnesses_baseChange X₁ act 𝔗 z₁ z₂ hp x₀ hdiv V ev X t δ 𝔪 C lab
    x fr th w₀ s g' w h1 h2 h3 h4 h5 h6 V' io f hf hinj hfin ev₂ 𝔪₂ ψ hD bc hExt hyK hcart wψ hwψ hφ hmon hU he₈ hgen
    x₂ fr₂ h1' h2' ρ hρ
  refine ⟨x₂, fr₂, th₂, w₀₂, s₂, g'₂, w₂, h1', h2', h3', h4', h5', h6', ?_⟩
  intro mu c
  have hz : algebraMap V' (FractionRing V') (ev₂ zt) = ζ' := by
    haveI : IsLocalHom ev₂ := 𝔪₂.loc
    rw [← GlobalTheory.GSep.TwistModel.val_stalkHom (X₁ := 𝔗.X₂) (z₁ := z₂) (V := V') (ev := ev₂) zt, hzt, hζ', 𝔪₂.yK_eq]
  have hF0 : f (𝔪.yK ⟨X₁.S.th x₀, X₁.S.th_mem x₀⟩) ≠ 0 :=
    (map_ne_zero_iff f f.injective).2 (GlobalTheory.GSep.TwistModel.yK_th_ne_zero 𝔪 hdiv)
  have hρc : (ρ (lab c) : FractionRing V') ≠ 0 := (ρ (lab c)).ne_zero
  have e1 := hcoef mu c
  have e2 := hval x₀
  have e3 := h7 mu c
  have eρ : (ρ x₀ : FractionRing V') = ρ (lab c) * ζ' ^ (k x₀ + (M - 1) * k (lab c)) := by
    simp only [ρ, Units.val_mul, Units.val_pow_eq_pow_val, Units.val_mk0]
    rw [_root_.mul_assoc, ← pow_add]
    have hM1 : 1 ≤ M := Nat.one_le_iff_ne_zero.2 hMpos
    have hsum : (M - 1) * k (lab c) + k (lab c) = M * k (lab c) := by
      rw [← Nat.succ_mul, Nat.succ_eq_add_one, Nat.sub_add_cancel hM1]
    rw [show k (lab c) + (k x₀ + (M - 1) * k (lab c)) = k x₀ + ((M - 1) * k (lab c) + k (lab c)) by ring, hsum,
      pow_add, pow_mul, hζM, one_pow, _root_.mul_one]
  have e3' : f (coef s (g' c) (w c) (𝔪.e₈ mu)) =
      algebraMap V' (FractionRing V') (io (T mu c)) * f (𝔪.yK ⟨X₁.S.th x₀, X₁.S.th_mem x₀⟩) := by
    rw [← e3, map_mul, hf]
  show algebraMap V' (FractionRing V') (ev₂ zt ^ (k x₀ + (M - 1) * k (lab c)) * io (T mu c)) *
    𝔪₂.yK ⟨𝔗.X₂.S.th (𝔗.lam x₀), 𝔗.X₂.S.th_mem _⟩ = coef s₂ (g'₂ c) (w₂ c) (𝔪₂.e₈ mu)
  rw [map_mul, map_pow, hz]
  apply mul_right_cancel₀ (mul_ne_zero hρc hF0)
  linear_combination (-(algebraMap V' (FractionRing V') (io (T mu c))) * f (𝔪.yK ⟨X₁.S.th x₀, X₁.S.th_mem x₀⟩) *
      𝔪₂.yK ⟨𝔗.X₂.S.th (𝔗.lam x₀), 𝔗.X₂.S.th_mem _⟩) * eρ +
    (algebraMap V' (FractionRing V') (io (T mu c)) * f (𝔪.yK ⟨X₁.S.th x₀, X₁.S.th_mem x₀⟩)) * e2 -
    f (𝔪.yK ⟨X₁.S.th x₀, X₁.S.th_mem x₀⟩) * e1 - K * f (𝔪.yK ⟨X₁.S.th x₀, X₁.S.th_mem x₀⟩) * e3'

end GlobalTheory.GSep.BaseTerms
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisTowerThetaMemberTermsBaseChange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaRingRegularAtExtensionPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaRingRegularAtExtensionPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

noncomputable section

namespace GlobalTheory.GSep

variable {I : Type} {X₁ : GSet} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)}

theorem Tower.map_mem_O (𝔗 : GlobalTheory.GSep.Tower X₁ act) {w : 𝔗.X₂.M.Z} {x : X₁.Ω₁} (hx : x ∈ X₁.M.O (𝔗.p w)) :
    algebraMap X₁.Ω₁ 𝔗.X₂.Ω₁ x ∈ 𝔗.X₂.M.O w := by
  obtain ⟨U, f, hz, rfl⟩ := hx
  refine ⟨𝔗.p ⁻¹ᵁ U, 𝔗.p.app U f, hz, ?_⟩
  refine (GlobalTheory.Points.valR_comp 𝔗.X₂.M.pt 𝔗.p U f).symm.trans ?_
  rw [𝔗.p_pt]
  exact GlobalTheory.Points.valR_spMap_comp _ X₁.M.pt U (X₁.M.top_le_preimage_pt ⟨_, hz⟩) f

theorem Tower.stalkHom_stalkMap (𝔗 : GlobalTheory.GSep.Tower X₁ act) (z₂ : 𝔗.X₂.M.Z) (x : X₁.M.Z.presheaf.stalk (𝔗.p z₂)) :
    𝔗.X₂.M.stalkHom z₂ ((𝔗.p.stalkMap z₂).hom x) = algebraMap X₁.Ω₁ 𝔗.X₂.Ω₁ (X₁.M.stalkHom (𝔗.p z₂) x) := by
  obtain ⟨U, hz, f, rfl⟩ := X₁.M.Z.presheaf.exists_germ_eq x
  rw [Scheme.Hom.germ_stalkMap_apply, RatModel.stalkHom_germ hz]
  refine (RatModel.stalkHom_germ (U := 𝔗.p ⁻¹ᵁ U) hz _).trans ?_
  refine (GlobalTheory.Points.valR_comp 𝔗.X₂.M.pt 𝔗.p U f).symm.trans ?_
  rw [𝔗.p_pt]
  exact GlobalTheory.Points.valR_spMap_comp _ X₁.M.pt U (X₁.M.top_le_preimage_pt ⟨_, hz⟩) f

theorem Tower.regAt : ∀ {I : Type} {X₁ : GlobalTheory.GSep.GSet} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)} (𝔗 : GlobalTheory.GSep.Tower X₁ act) {z₁ : X₁.M.Z} {z₂ : 𝔗.X₂.M.Z}, 𝔗.p z₂ = z₁ → ∀ {V V' : Type} [CommRing V] [IsDomain V] [CommRing V'] [IsDomain V'] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (io : V →+* V') (ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V'), Function.Injective io → 𝔗.Ext ev io ev₂ → GlobalTheory.GSep.RegAt X₁ z₁ ev → GlobalTheory.GSep.RegAt 𝔗.X₂ z₂ ev₂ := by
  intro I X₁ act 𝔗 z₁ z₂ hz V V' _ _ _ _ ev io ev₂ hio hext hreg
  subst hz
  have key : ev₂.comp (𝔗.p.stalkMap z₂).hom = io.comp ev :=
    RingHom.ext fun x => hext.2 x _ (𝔗.stalkHom_stalkMap z₂ x)
  let fm : FractionRing V →+* FractionRing V' :=
    IsLocalization.map (M := nonZeroDivisors V) (S := FractionRing V) (FractionRing V') io
      (nonZeroDivisors_le_comap_nonZeroDivisors_of_injective io hio)
  have e1 : spMap ev₂ ≫ Spec.map (𝔗.p.stalkMap z₂) = spMap io ≫ spMap ev := by
    rw [← Spec.map_comp, ← Spec.map_comp]
    congr 1
    ext x
    exact congrArg (fun φ : _ →+* V' => φ x) key
  have e2 : jK V' ≫ spMap io = spMap fm ≫ jK V := by
    rw [← Spec.map_comp, ← Spec.map_comp]
    congr 1
    ext x
    show algebraMap V' (FractionRing V') (io x) = fm (algebraMap V (FractionRing V) x)
    exact (IsLocalization.map_eq (M := nonZeroDivisors V) (S := FractionRing V) (T := nonZeroDivisors V')
      (Q := FractionRing V') (nonZeroDivisors_le_comap_nonZeroDivisors_of_injective io hio) x).symm
  have hm : jK V' ≫ spMap ev₂ ≫ 𝔗.X₂.M.Z.fromSpecStalk z₂ ≫ 𝔗.p =
      spMap fm ≫ jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk (𝔗.p z₂) := by
    rw [← Scheme.SpecMap_stalkMap_fromSpecStalk, ← Category.assoc (spMap ev₂), e1, Category.assoc,
      ← Category.assoc (jK V'), e2, Category.assoc]
  have hpt : 𝔗.p ((jK V' ≫ spMap ev₂ ≫ 𝔗.X₂.M.Z.fromSpecStalk z₂) (closedPoint (FractionRing V'))) =
      (jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk (𝔗.p z₂)) (closedPoint (FractionRing V)) := by
    refine (Scheme.Hom.comp_apply _ 𝔗.p _).symm.trans ?_
    rw [Category.assoc, Category.assoc, hm]
    refine (Scheme.Hom.comp_apply (spMap fm) _ _).trans (congrArg _ ?_)
    exact Spec_closedPoint
  intro a ha
  set P₂ := (jK V' ≫ spMap ev₂ ≫ 𝔗.X₂.M.Z.fromSpecStalk z₂) (closedPoint (FractionRing V'))
  haveI := 𝔗.X₂.normal.isIntegrallyClosed_stalk P₂
  haveI : IsIntegrallyClosed (𝔗.X₂.M.O P₂) := IsIntegrallyClosed.of_equiv (𝔗.X₂.M.stalkEquiv P₂)
  have hmem : ∀ c : X₁.S.R, ((algebraMap X₁.Ω₁ 𝔗.X₂.Ω₁).comp X₁.S.R.val.toRingHom) c ∈ 𝔗.X₂.M.O P₂ := fun c =>
    𝔗.map_mem_O (by rw [hpt]; exact hreg c.1 c.2)
  let q : X₁.S.R →+* 𝔗.X₂.M.O P₂ := ((algebraMap X₁.Ω₁ 𝔗.X₂.Ω₁).comp X₁.S.R.val.toRingHom).codRestrict _ hmem
  obtain ⟨p, hmon, hp⟩ := 𝔗.om_fin.to_isIntegral ⟨a, ha⟩
  have hq : (algebraMap (𝔗.X₂.M.O P₂) 𝔗.X₂.Ω₁).comp q = 𝔗.X₂.S.R.val.toRingHom.comp 𝔗.om :=
    RingHom.ext fun c => (𝔗.om_eq c).symm
  have hia : IsIntegral (𝔗.X₂.M.O P₂) a := by
    refine ⟨p.map q, hmon.map q, ?_⟩
    rw [Polynomial.eval₂_map, hq]
    have := Polynomial.hom_eval₂ p 𝔗.om 𝔗.X₂.S.R.val.toRingHom ⟨a, ha⟩
    rw [hp, map_zero] at this
    exact this.symm
  obtain ⟨y, hy⟩ := IsIntegrallyClosed.isIntegral_iff.1 hia
  rw [← hy]
  exact y.2

end GlobalTheory.GSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaRingRegularAtExtensionPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValExtensionPointEqImageOfVal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValExtensionPointEqImageOfVal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DeeperThetaValueImageEqImageValue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

noncomputable section

namespace GlobalTheory.GSep
open GlobalTheory.Points


open GlobalTheory.ZH.RatModel in
theorem Tower.valF_app_p {I : Type} {X₁ : GSet} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)} (𝔗 : Tower X₁ act)
    {U : X₁.M.Z.Opens} (hU : (U : Set X₁.M.Z).Nonempty) (a : Γ(X₁.M.Z, U)) :
    valF 𝔗.X₂.M.pt (𝔗.p ⁻¹ᵁ U) (𝔗.p.app U a) = algebraMap X₁.Ω₁ 𝔗.X₂.Ω₁ (valF X₁.M.pt U a) := by
  refine (valR_comp 𝔗.X₂.M.pt 𝔗.p U a).symm.trans ?_
  rw [𝔗.p_pt]
  exact valR_spMap_comp _ X₁.M.pt U (X₁.M.top_le_preimage_pt hU) a

theorem Tower.stalkHom_stalkMap_p {I : Type} {X₁ : GSet} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)} (𝔗 : Tower X₁ act)
    (z₂ : 𝔗.X₂.M.Z) (x : X₁.M.Z.presheaf.stalk (𝔗.p z₂)) :
    𝔗.X₂.M.stalkHom z₂ (𝔗.p.stalkMap z₂ x) = algebraMap X₁.Ω₁ 𝔗.X₂.Ω₁ (X₁.M.stalkHom (𝔗.p z₂) x) := by
  obtain ⟨U, hz, f, rfl⟩ := X₁.M.Z.presheaf.germ_exist x
  rw [Scheme.Hom.germ_stalkMap_apply, RatModel.stalkHom_germ hz f]
  exact (RatModel.stalkHom_germ (M := 𝔗.X₂.M) (U := 𝔗.p ⁻¹ᵁ U) hz _).trans (𝔗.valF_app_p ⟨_, hz⟩ f)

theorem Tower.val_comp_p {I : Type} {X₁ : GSet} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)} (𝔗 : Tower X₁ act)
    {K : Type} [Field K] (y : Sp K ⟶ 𝔗.X₂.M.Z) (w : Sp K) {x : X₁.Ω₁} (hx : x ∈ X₁.M.O (𝔗.p (y w))) :
    X₁.M.val (y ≫ 𝔗.p) x = 𝔗.X₂.M.val y (algebraMap X₁.Ω₁ 𝔗.X₂.Ω₁ x) := by
  obtain ⟨U, a, hz, rfl⟩ := hx
  have h1 : Set.range y ⊆ (𝔗.p ⁻¹ᵁ U : 𝔗.X₂.M.Z.Opens) := by
    rw [RatModel.range_eq_singleton y w, Set.singleton_subset_iff]
    exact hz
  rw [← 𝔗.valF_app_p ⟨_, hz⟩ a, RatModel.val_valF h1,
    RatModel.val_valF (U := U) (by rintro _ ⟨w', rfl⟩; exact h1 ⟨w', rfl⟩)]
  exact valR_comp y 𝔗.p U a

theorem Tower.val_om_ext : ∀ {I : Type} {X₁ : GlobalTheory.GSep.GSet} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)} (𝔗 : GlobalTheory.GSep.Tower X₁ act) {z₁ : X₁.M.Z} {z₂ : 𝔗.X₂.M.Z}, 𝔗.p z₂ = z₁ → ∀ {V V' : Type} [CommRing V] [IsDomain V] [CommRing V'] [IsDomain V'] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (io : V →+* V') (ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V') (f : FractionRing V →+* FractionRing V'), (∀ v, f (algebraMap V (FractionRing V) v) = algebraMap V' (FractionRing V') (io v)) → Function.Injective io → 𝔗.Ext ev io ev₂ → GlobalTheory.GSep.RegAt X₁ z₁ ev → ∀ a : X₁.S.R, 𝔗.X₂.M.val (jK V' ≫ spMap ev₂ ≫ 𝔗.X₂.M.Z.fromSpecStalk z₂) (𝔗.om a) = f (X₁.M.val (jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk z₁) a) := by
  intro I X₁ act 𝔗 z₁ z₂ hz V V' _ _ _ _ ev io ev₂ f hf hio hext hreg a
  subst hz
  have e1 : ev₂.comp (𝔗.p.stalkMap z₂).hom = io.comp ev :=
    RingHom.ext fun x => hext.2 x _ (𝔗.stalkHom_stalkMap_p z₂ x)
  have e2 : jK V' ≫ spMap io = spMap f ≫ jK V := by
    simp only [jK, spMap, ← Spec.map_comp, ← CommRingCat.ofHom_comp]
    congr 2
    ext v
    exact (hf v).symm
  have h1 : (jK V' ≫ spMap ev₂ ≫ 𝔗.X₂.M.Z.fromSpecStalk z₂) ≫ 𝔗.p =
      spMap f ≫ (jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk (𝔗.p z₂)) := by
    have e3 : spMap ev₂ ≫ Spec.map (𝔗.p.stalkMap z₂) = spMap io ≫ spMap ev := by
      show Spec.map (CommRingCat.ofHom ev₂) ≫ Spec.map (CommRingCat.ofHom (𝔗.p.stalkMap z₂).hom) = _
      rw [← Spec.map_comp, ← CommRingCat.ofHom_comp, e1, CommRingCat.ofHom_comp, Spec.map_comp]
    rw [Category.assoc, Category.assoc, ← Scheme.SpecMap_stalkMap_fromSpecStalk, ← Category.assoc (spMap ev₂), e3,
      Category.assoc, ← Category.assoc (jK V'), e2]
    simp only [Category.assoc]
  have hmem := hreg a a.2
  have hp : 𝔗.p ((jK V' ≫ spMap ev₂ ≫ 𝔗.X₂.M.Z.fromSpecStalk z₂) (closedPoint (FractionRing V'))) =
      (jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk (𝔗.p z₂)) (closedPoint (FractionRing V)) := by
    have e := congrArg (fun q : Sp (FractionRing V') ⟶ X₁.M.Z => q (closedPoint (FractionRing V'))) h1
    refine e.trans ?_
    show (jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk (𝔗.p z₂)) ((spMap f) (closedPoint (FractionRing V'))) = _
    rw [Subsingleton.elim ((spMap f) (closedPoint (FractionRing V'))) (closedPoint (FractionRing V))]
  rw [𝔗.om_eq, ← 𝔗.val_comp_p (K := FractionRing V') _ (closedPoint (FractionRing V')) (hp ▸ hmem), h1,
    RatModel.val_spMap_comp_field (K := FractionRing V) f _ (closedPoint (FractionRing V)) hmem]

end GlobalTheory.GSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValExtensionPointEqImageOfVal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValGaloisConjugateExtensionEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValGaloisConjugateExtensionEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DeeperThetaValueGaloisConjugateExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

noncomputable section

namespace GlobalTheory.GSep
open GlobalTheory.Points GlobalTheory.ZH GlobalTheory.Poinc.Sep.GalVal

theorem val_galois_conj : ∀ {I : Type} {X₁ : GlobalTheory.GSep.GSet} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)} (𝔗 : GlobalTheory.GSep.Tower X₁ act) {z₂ : 𝔗.X₂.M.Z} {V' : Type} [CommRing V'] [IsDomain V'] (ev₂ ev₂' : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V') (σ : 𝔗.X₂.Ω₁ ≃ₐ[X₁.Ω₁] 𝔗.X₂.Ω₁), (∀ x x', 𝔗.X₂.M.stalkHom z₂ x' = σ (𝔗.X₂.M.stalkHom z₂ x) → ev₂' x = ev₂ x') → (∀ x, ∃ x', 𝔗.X₂.M.stalkHom z₂ x' = σ (𝔗.X₂.M.stalkHom z₂ x)) → GlobalTheory.GSep.RegAt 𝔗.X₂ z₂ ev₂ → GlobalTheory.GSep.RegAt 𝔗.X₂ z₂ ev₂' → ∀ a : 𝔗.X₂.S.R, 𝔗.X₂.M.val (jK V' ≫ spMap ev₂' ≫ 𝔗.X₂.M.Z.fromSpecStalk z₂) a = 𝔗.X₂.M.val (jK V' ≫ spMap ev₂ ≫ 𝔗.X₂.M.Z.fromSpecStalk z₂) (𝔗.sR σ a) := by

  intro I X₁ act 𝔗 z₂ V' _ _ ev₂ ev₂' σ h1 h2 hr hr' a
  have ha := hr' a a.2
  obtain ⟨x, d, hxd, hd, hu⟩ := exists_mul_eq_stalkHom (specializes_jK ev₂' _) ha
  obtain ⟨x', hx'⟩ := h2 x
  obtain ⟨d', hd'⟩ := h2 d
  have ex := h1 x x' hx'
  have ed := h1 d d' hd'
  have hsp' := RatModel.specializes_of_range_eq
    (RatModel.range_eq_singleton (jK V' ≫ spMap ev₂' ≫ 𝔗.X₂.M.Z.fromSpecStalk z₂) (IsLocalRing.closedPoint _))
  have hsp := RatModel.specializes_of_range_eq
    (RatModel.range_eq_singleton (jK V' ≫ spMap ev₂ ≫ 𝔗.X₂.M.Z.fromSpecStalk z₂) (IsLocalRing.closedPoint _))
  have e1 := RatModel.val_mul hsp' ha hd
  rw [hxd, val_stalkHom, val_stalkHom] at e1
  have hne := (RatModel.val_ne_zero_iff (RatModel.range_eq_singleton _ _) ⟨_, hd⟩).2 hu
  rw [val_stalkHom] at hne
  have hb := hr _ (𝔗.sR σ a).2
  have hd'' := RatModel.O_le_of_specializes (specializes_jK ev₂ (IsLocalRing.closedPoint _))
    (𝔗.X₂.M.stalkEquiv z₂ d').2
  have e2 := RatModel.val_mul hsp hb hd''
  have key : σ (a : 𝔗.X₂.Ω₁) * 𝔗.X₂.M.stalkHom z₂ d' = 𝔗.X₂.M.stalkHom z₂ x' := by
    rw [hd', hx', ← map_mul, hxd]
  rw [RatModel.coe_stalkEquiv, 𝔗.sR_eq, key, val_stalkHom, val_stalkHom, ← ed, ← ex] at e2
  rw [𝔗.sR_eq]
  exact mul_right_cancel₀ hne (e1.symm.trans e2)

end GlobalTheory.GSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValGaloisConjugateExtensionEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisTowerBaseChangeThetaMember =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisTowerBaseChangeThetaMember", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleIsoPullbackCommSquareStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationBaseChangeFiniteInjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisTowerThetaMemberTermsBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsGrpPullbackPasteFactorisationStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaRingRegularAtExtensionPoint\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValExtensionPointEqImageOfVal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValGaloisConjugateExtensionEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

noncomputable section

namespace GlobalTheory.GSep

theorem exists_ringHom_val_of_regAt' : ∀ (X₂ : GSet) (z : X₂.M.Z) {V : Type} [CommRing V] [IsDomain V] (ev : X₂.M.Z.presheaf.stalk z →+* V), RegAt X₂ z ev → ∃ yK : X₂.S.R →+* FractionRing V, ∀ a : X₂.S.R, yK a = X₂.M.val (jK V ≫ spMap ev ≫ X₂.M.Z.fromSpecStalk z) a := by
  intro X₂ z V _ _ ev hr
  have hR : X₂.S.R ≤ X₂.M.O ((jK V ≫ spMap ev ≫ X₂.M.Z.fromSpecStalk z) (IsLocalRing.closedPoint (FractionRing V))) :=
    fun a ha => hr a ha
  exact ⟨(RatModel.valHomOf (jK V ≫ spMap ev ≫ X₂.M.Z.fromSpecStalk z) _
    (RatModel.specializes_of_range_eq (RatModel.range_eq_singleton (M := X₂.M) (jK V ≫ spMap ev ≫ X₂.M.Z.fromSpecStalk z) (IsLocalRing.closedPoint (FractionRing V))))).comp
      (Subalgebra.inclusion hR).toRingHom, fun a => rfl⟩

theorem Tower.comp_act₂_of_comp_act' : ∀ {I : Type} {X₁ : GSet} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)} (𝔗 : Tower X₁ act) {K : Type} [Field K] (A' : Over (Sp K)) (y₂ : 𝔗.X₂.S.R →+* K) (φ₂ : A'.left ⟶ 𝔗.X₂.ρ.P.A.left), φ₂ ≫ 𝔗.X₂.ρ.P.A.hom = A'.hom ≫ spMap y₂ → ∀ (e : A' ⟶ A') (a : I), e.left ≫ φ₂ ≫ 𝔗.φ = φ₂ ≫ 𝔗.φ ≫ (act a).left → e.left ≫ φ₂ = φ₂ ≫ (𝔗.act₂ a).left := by
  intro I X₁ act 𝔗 K _ A' y₂ φ₂ hφ e a h
  refine 𝔗.cart.1.hom_ext ?_ ?_
  · simp only [Category.assoc, 𝔗.act_eq a]
    simpa only [Category.assoc] using h
  · simp only [Category.assoc, Over.w (𝔗.act₂ a), hφ]
    rw [← Category.assoc, Over.w e]

theorem Tower.pt_iff_pt_gl' : ∀ {I : Type} {X₁ : GSet} {act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)} (𝔗 : Tower X₁ act) {K : Type} [Field K] (A' : Over (Sp K)) [GrpObj A'] (ya yb : 𝔗.X₂.S.R →+* K) (φa φb : A'.left ⟶ 𝔗.X₂.ρ.P.A.left) (σ : 𝔗.X₂.Ω₁ ≃ₐ[X₁.Ω₁] 𝔗.X₂.Ω₁), IsGrpPullback A' 𝔗.X₂.ρ.P.A (spMap ya) φa → IsGrpPullback A' 𝔗.X₂.ρ.P.A (spMap yb) φb → φa ≫ 𝔗.φ = φb ≫ 𝔗.φ → ya = yb.comp (𝔗.sR σ) → ∀ {L : Type} [Field L] (j : K →+* L) (x : Sp L ⟶ A'.left), x ≫ A'.hom = spMap j → ∀ a, (x ≫ φa = spMap (j.comp ya) ≫ (𝔗.X₂.ρ.pt a).left ↔ x ≫ φb = spMap (j.comp yb) ≫ (𝔗.X₂.ρ.pt (𝔗.gl σ a)).left) := by
  intro I X₁ act 𝔗 K _ A' _ ya yb φa φb σ ha hb hab hy L _ j x hx a
  have hc := 𝔗.cart.1
  have hsec : ∀ b, (𝔗.X₂.ρ.pt b).left ≫ 𝔗.X₂.ρ.P.A.hom = 𝟙 _ := fun b => Over.w (𝔗.X₂.ρ.pt b)
  have hsp : ∀ y : 𝔗.X₂.S.R →+* K, spMap j ≫ spMap y = spMap (j.comp y) := fun y => by
    rw [← Spec.map_comp, ← CommRingCat.ofHom_comp]
  have hxa : (x ≫ φa) ≫ 𝔗.X₂.ρ.P.A.hom = spMap (j.comp ya) := by
    rw [Category.assoc, ha.1.w, ← Category.assoc, hx, hsp]
  have hxb : (x ≫ φb) ≫ 𝔗.X₂.ρ.P.A.hom = spMap (j.comp yb) := by
    rw [Category.assoc, hb.1.w, ← Category.assoc, hx, hsp]
  have hra : (spMap (j.comp ya) ≫ (𝔗.X₂.ρ.pt a).left) ≫ 𝔗.X₂.ρ.P.A.hom = spMap (j.comp ya) := by
    rw [Category.assoc, hsec]
    exact Category.comp_id _
  have hrb : (spMap (j.comp yb) ≫ (𝔗.X₂.ρ.pt (𝔗.gl σ a)).left) ≫ 𝔗.X₂.ρ.P.A.hom = spMap (j.comp yb) := by
    rw [Category.assoc, hsec]
    exact Category.comp_id _
  have hg : spMap (j.comp yb) ≫ (𝔗.X₂.ρ.pt (𝔗.gl σ a)).left ≫ 𝔗.φ = spMap (j.comp ya) ≫ (𝔗.X₂.ρ.pt a).left ≫ 𝔗.φ := by
    rw [𝔗.gl_pt, ← Category.assoc, ← Spec.map_comp, ← CommRingCat.ofHom_comp, RingHom.comp_assoc, ← hy]
  constructor
  · intro h1
    refine hc.hom_ext ?_ (hxb.trans hrb.symm)
    rw [Category.assoc, ← hab, ← Category.assoc, h1, Category.assoc, Category.assoc, hg]
  · intro h1
    refine hc.hom_ext ?_ (hxa.trans hra.symm)
    rw [Category.assoc, hab, ← Category.assoc, h1, Category.assoc, Category.assoc, hg]

theorem exists_baseChange_gMem_of_tower : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)), GlobalTheory.GSep.IsAct X₁ act → ∀ (𝔗 : GlobalTheory.GSep.Tower X₁ act) (z₂ : 𝔗.X₂.M.Z), 𝔗.p z₂ = z₁ → ∀ x₀ : X₁.S.Gam, X₁.M.Div X₁.S.th x₀ z₁ → ∃ eps : X₁.S.Gam → ℕ, ∀ (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X] (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (C : Type) (lab : C → X₁.S.Gam) (T : X → C → V), 𝔪.Terms x₀ lab T → ∀ (V' : Type) [CommRing V'] [IsDomain V'] [IsLocalRing V'] (io : V →+* V'), IsCN V' → Function.Injective io → io.Finite → ∃ 𝔪₂ : ∀ ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V', 𝔗.Ext ev io ev₂ → GlobalTheory.GSep.GMem 𝔗.X₂ z₂ 𝔗.act₂ V' ev₂ X (fun k => io (t k)) δ, (∀ ev₂ h (zt : 𝔗.X₂.M.Z.presheaf.stalk z₂), 𝔗.X₂.M.stalkHom z₂ zt = algebraMap 𝔗.X₂.o₁ 𝔗.X₂.Ω₁ 𝔗.X₂.S.ζ → (𝔪₂ ev₂ h).Terms (𝔗.lam x₀) (fun c => 𝔗.lam (lab c)) (fun mu c => ev₂ zt ^ eps (lab c) * io (T mu c))) ∧ ∀ ev₂ h ev₂' h' (σ : 𝔗.X₂.Ω₁ ≃ₐ[X₁.Ω₁] 𝔗.X₂.Ω₁), (∀ x x', 𝔗.X₂.M.stalkHom z₂ x' = σ (𝔗.X₂.M.stalkHom z₂ x) → ev₂' x = ev₂ x') → (∀ x, ∃ x', 𝔗.X₂.M.stalkHom z₂ x' = σ (𝔗.X₂.M.stalkHom z₂ x)) → ∀ a mu, (𝔪₂ ev₂' h').YY a mu ↔ (𝔪₂ ev₂ h).YY (𝔗.gl σ a) mu := by
  intro I X₁ z₁ act hact 𝔗 z₂ hz₂ x₀ hdiv
  obtain ⟨eps, heps⟩ := _root_.GlobalTheory.GSep.BaseTerms.terms_baseChange X₁ act 𝔗 z₁ z₂ hz₂ x₀ hdiv
  refine ⟨eps, ?_⟩
  intro V _ _ _ ev X _ t δ 𝔪 C lab T hT V' _ _ _ io hcn hinj hfin
  have hle : nonZeroDivisors V ≤ (nonZeroDivisors V').comap io :=
    nonZeroDivisors_le_comap_nonZeroDivisors_of_injective io hinj
  let f : FractionRing V →+* FractionRing V' := IsLocalization.map (FractionRing V') io hle
  have hf : ∀ v, f (algebraMap V (FractionRing V) v) = algebraMap V' (FractionRing V') (io v) :=
    fun v => IsLocalization.map_eq hle v
  obtain ⟨D', e₈', G', _, _, A', U', ψ, hD, bc, hsemi, hψ, hw, hbc, hPU, hxe, hgen, hE, hpsi⟩ :=
    _root_.GlobalTheory.GSep.GMem.exists_baseChange X₁ z₁ act V ev X t δ 𝔪 V' io f hf hcn hinj hfin
  have hreg : ∀ ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V', 𝔗.Ext ev io ev₂ → RegAt 𝔗.X₂ z₂ ev₂ :=
    fun ev₂ h => _root_.GlobalTheory.GSep.Tower.regAt 𝔗 hz₂ ev io ev₂ hinj h 𝔪.reg
  choose yK hyK using fun (ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V') (h : 𝔗.Ext ev io ev₂) =>
    exists_ringHom_val_of_regAt' 𝔗.X₂ z₂ ev₂ (hreg ev₂ h)
  have hyKc : ∀ ev₂ h, (yK ev₂ h).comp 𝔗.om = f.comp 𝔪.yK := by
    intro ev₂ h
    ext a
    simp only [RingHom.comp_apply]
    rw [hyK, 𝔪.yK_eq]
    exact _root_.GlobalTheory.GSep.Tower.val_om_ext 𝔗 hz₂ ev io ev₂ f hf hinj h 𝔪.reg a
  have hsq : ∀ ev₂ h, spMap (yK ev₂ h) ≫ spMap 𝔗.om = spMap f ≫ spMap 𝔪.yK := by
    intro ev₂ h
    rw [← Spec.map_comp, ← Spec.map_comp, ← CommRingCat.ofHom_comp, ← CommRingCat.ofHom_comp, hyKc ev₂ h]
  choose φ₂ hφ₂ using fun (ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V') (h : 𝔗.Ext ev io ev₂) =>
    GlobalTheory.T.isGrpPullback_paste_factorisation X₁.ρ.P.A 𝔗.X₂.ρ.P.A 𝔪.A.A A'.A (spMap 𝔗.om) (spMap 𝔪.yK) (spMap f) (spMap (yK ev₂ h)) 𝔗.φ 𝔪.φ ψ
      𝔗.cart 𝔪.cart hψ (hsq ev₂ h)
  choose wl hwl using fun (ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V') (h : 𝔗.Ext ev io ev₂) =>
    GlobalTheory.T.exists_lineBundleIso_pullback_commSquare A'.L 𝔪.A.L X₁.ρ.P.L 𝔗.X₂.ρ.P.L ψ 𝔪.φ (φ₂ ev₂ h) 𝔗.φ A'.isLB 𝔪.A.isLB X₁.ρ.P.isLB 𝔗.X₂.ρ.P.isLB
      (hφ₂ ev₂ h).2.symm hw ⟨𝔪.wl, 𝔪.wl_gen⟩ 𝔗.lb
  let 𝔪₂ : ∀ ev₂ : 𝔗.X₂.M.Z.presheaf.stalk z₂ →+* V', 𝔗.Ext ev io ev₂ →
      GMem 𝔗.X₂ z₂ 𝔗.act₂ V' ev₂ X (fun k => io (t k)) δ := fun ev₂ h =>
    { cn := hcn
      loc := h.1
      reg := hreg ev₂ h
      yK := yK ev₂ h
      yK_eq := hyK ev₂ h
      D := D'
      e₈ := e₈'
      G := G'
      semi := hsemi
      A := A'
      U := U'
      φ := φ₂ ev₂ h
      cart := (hφ₂ ev₂ h).1
      wl := wl ev₂ h
      wl_gen := hwl ev₂ h
      equiv := fun a => by
        obtain ⟨E, hE1, hE2⟩ := 𝔪.equiv a
        obtain ⟨E', hE'1, hE'2⟩ := hE E
        refine ⟨E', ?_, fun mu => hD.xe.injective ?_⟩
        · have e2 := (hφ₂ ev₂ h).2
          refine Tower.comp_act₂_of_comp_act' 𝔗 A'.A (yK ev₂ h) (φ₂ ev₂ h) (hφ₂ ev₂ h).1.1.w E'.aA a ?_
          calc E'.aA.left ≫ φ₂ ev₂ h ≫ 𝔗.φ = E'.aA.left ≫ ψ ≫ 𝔪.φ := by rw [e2]
            _ = ψ ≫ E.aA.left ≫ 𝔪.φ := by rw [← Category.assoc, hE'1, Category.assoc]
            _ = ψ ≫ 𝔪.φ ≫ (act a).left := by rw [hE1]
            _ = φ₂ ev₂ h ≫ 𝔗.φ ≫ (act a).left := by rw [← Category.assoc, ← e2, Category.assoc]
        · rw [hE'2, hxe, hE2, hxe]
      psi := hpsi }
  refine ⟨𝔪₂, ?_, ?_⟩
  · intro ev₂ h zt hzt
    exact heps V ev X t δ 𝔪 C lab T hT V' io f hf hinj hfin ev₂ (𝔪₂ ev₂ h) ψ hD bc h (hyKc ev₂ h) hψ hw
      (hφ₂ ev₂ h).2 hbc hPU hxe hgen zt hzt
  · intro ev₂ h ev₂' h' σ h1 h2 a mu
    have hy : yK ev₂' h' = (yK ev₂ h).comp (𝔗.sR σ) := by
      ext b
      simp only [RingHom.comp_apply]
      rw [hyK, hyK]
      exact _root_.GlobalTheory.GSep.val_galois_conj 𝔗 ev₂ ev₂' σ h1 h2 (hreg ev₂ h) (hreg ev₂' h') b
    unfold GMem.YY
    refine exists_congr fun p => exists_congr fun x => and_congr_right fun _ => and_congr_right fun _ => ?_
    exact Tower.pt_iff_pt_gl' 𝔗 A'.A (yK ev₂' h') (yK ev₂ h) (φ₂ ev₂' h') (φ₂ ev₂ h) σ (hφ₂ ev₂' h').1 (hφ₂ ev₂ h).1
      ((hφ₂ ev₂' h').2.trans (hφ₂ ev₂ h).2.symm) hy
      (algebraMap (FractionRing V') (AlgebraicClosure (FractionRing V'))) x.left (Over.w x) a

end GlobalTheory.GSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisTowerBaseChangeThetaMember =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisTowerBaseChangeThetaMemberStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisTowerBaseChangeThetaMemberStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisTowerBaseChangeThetaMember\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisTowerBaseChangeThetaMemberStatement =====
