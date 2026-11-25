module

public import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdjointEndomorphismsActionUniformisedThick
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusEndOfPadd
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OverExtOfPoints
public import Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndDataSymmAndOfOAct
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraicStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiAdjointGenericFibreOfActsStar
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianHomExtensionHolds
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SplitsAt
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.GenericExistsUniqueOActOfIsGrpPullback
import Development.AbelianVarietyTheory.Counterexamples.UniformisationSurvey.NeTopOfAdmissibleBase
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AbelianPartIsoIsMonHomAndRigidified
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsHomOfPullbackId

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericOfFormal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericEndomorphismMumfordRingAction, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianGenericEndomorphismExtends, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupEndomorphismUniqueOfThickeningAc, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbelia, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbeliaStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericOfFormal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericOfFormal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusEndOfPadd\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OverExtOfPoints\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SplitsAt\npublic import Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Mum.GenericEnd

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
    {A : PolAV (Sp (FractionRing R))} {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G]

theorem eq_of_generic (U : UnifPre I D A G) {g g' : G ⟶ G}
    (h : (Over.pullback (jK R)).map g = (Over.pullback (jK R)).map g') : g = g' := by
  have := U.smooth
  have := U.separated
  have : IsSchemeTheoreticallyDominant (jK R) :=
    schDom_spec_map _ (IsFractionRing.injective R (FractionRing R))
  have : QuasiCompact (jK R) :=
    inferInstanceAs (QuasiCompact (Spec.map (CommRingCat.ofHom (algebraMap R (FractionRing R)))))
  have : IsSchemeTheoreticallyDominant (pullback.fst G.hom (jK R)) :=
    .of_isPullback (IsPullback.of_hasPullback G.hom (jK R)).flip
  ext1
  refine ext_of_schDom G.hom (by rw [Over.w g, Over.w g']) (pullback.fst G.hom (jK R)) ?_
  have e := congrArg (fun k => k.left ≫ pullback.fst G.hom (jK R)) h
  simp only [Over.pullback_map_left, pullback.lift_fst] at e
  exact e

theorem exists_generic_of_formal (U : UnifPre I D A G) (a : D.toPre.P.A ⟶ D.toPre.P.A) (h' : D.toPre.X →+ D.toPre.X)
    (b : ∀ e : ℕ, thickObj R I e G ⟶ thickObj R I e G) (hb : FormalEnd U a h' b) (g : G ⟶ G) (hg : IsMonHom g)
    (hgb : ∀ e, (Over.pullback (thick R I e)).map g = b e) :
    ∃ f : A.A ⟶ A.A, IsMonHom f ∧ ∀ g' : G ⟶ G, IsMonHom g' →
      (Over.pullback (jK R)).map g' ≫ U.gen.hom = U.gen.hom ≫ f → ActsAs U a h' g' := by
  have := U.gen_hom
  refine ⟨U.gen.inv ≫ (Over.pullback (jK R)).map g ≫ U.gen.hom, inferInstance, fun g' _ hg' => ?_⟩
  obtain rfl : g' = g := eq_of_generic U (by
    rw [← cancel_mono U.gen.hom, hg', Iso.hom_inv_id_assoc])
  intro e
  obtain ⟨t, ht, hi⟩ := hb.2.2.2 e
  exact ⟨by rw [hgb]; exact hb.2.2.1 e, t, ht, by rw [hgb]; exact hi⟩

end GlobalTheory.Mum.GenericEnd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericOfFormal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericEndomorphismMumfordRingAction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericEndomorphismMumfordRingAction", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusEndOfPadd\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndDataSymmAndOfOAct\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdjointEndomorphismsActionUniformisedThick\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericOfFormal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraicStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem GlobalTheory.Mum.GenericEnd.main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G) (O : Type) [Ring O] [StarRing O] [Module O D.toPre.X] (o : D.toPre.OAct O) (a : O), ∃ f : A.A ⟶ A.A, IsMonHom f ∧ ∀ g : G ⟶ G, IsMonHom g → (Over.pullback (jK R)).map g ≫ U.gen.hom = U.gen.hom ≫ f → ActsAs U.toUnifPre (o.onB.act a) (fun χ => star a • χ) g := by
  intro R _ _ _ hB D A G _ _ hG U O _ _ _ o a
  have hE := (GlobalTheory.Mum.endData_symm_and_ofOAct R D.toPre).2 O o a
  obtain ⟨b, hb⟩ := _root_.GlobalTheory.Mum.EndThick.formalEnd_exists R hB.1 D A G hG U _ _ _ _ hE
  obtain ⟨g, hg, hgb⟩ := _root_.GlobalTheory.Mum.formalEnd_algebraic R hB D A G hG U _ _ _ _ hE b hb
  obtain ⟨f, hf, hact⟩ := GlobalTheory.Mum.GenericEnd.exists_generic_of_formal U.toUnifPre (o.onB.act a)
    (DistribSMul.toAddMonoidHom D.toPre.X (star a)) b hb g hg hgb
  have hfun : (⇑(DistribSMul.toAddMonoidHom D.toPre.X (star a)) : D.toPre.X → D.toPre.X) = fun χ => star a • χ :=
    funext fun χ => DistribSMul.toAddMonoidHom_apply _ _ χ
  rw [hfun] at hact
  exact ⟨f, hf, hact⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericEndomorphismMumfordRingAction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianGenericEndomorphismExtends =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianGenericEndomorphismExtends", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianHomExtensionHolds\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.GenericExistsUniqueOActOfIsGrpPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem genericEnd_extends : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ f : (Over.pullback (jK R)).obj G ⟶ (Over.pullback (jK R)).obj G, IsMonHom f → ∃ g : G ⟶ G, IsMonHom g ∧ (Over.pullback (jK R)).map g = f := by
  intro R _ _ _ hR G _ _ hG f hf
  obtain ⟨⟨hN, -, hIC, -⟩, -⟩ := hR
  haveI := hN
  haveI := hIC
  haveI := hf
  obtain ⟨g, ⟨hg, hg'⟩, -⟩ := GlobalTheory.Published.SemiAbelianHomExtension.fractionField GlobalTheory.semiAbelianHomExtension_holds R
    (FractionRing R) G G hG hG f
  exact ⟨g, hg, hg'⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianGenericEndomorphismExtends =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupEndomorphismUniqueOfThickeningAc =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupEndomorphismUniqueOfThickeningAc", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusEndOfPadd\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Counterexamples.UniformisationSurvey.NeTopOfAdmissibleBase\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AbelianPartIsoIsMonHomAndRigidified\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsHomOfPullbackId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
namespace GlobalTheory.Mum

theorem actsAs_unique : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G) (b : D.toPre.P.A ⟶ D.toPre.P.A) (h : D.toPre.X → D.toPre.X) (g g' : G ⟶ G), IsMonHom g → IsMonHom g' → ActsAs U.toUnifPre b h g → ActsAs U.toUnifPre b h g' → g = g' := by
  intro R _ _ _ hR D A G _ _ hG U b h g g' hg hg' H H'
  have : IsNoetherianRing R := hR.1.1
  have : Smooth G.hom := hG.smooth
  have : GeometricallyConnected G.hom := hG.geomConnected
  have : IsSeparated G.hom := hG.separated
  refine GlobalTheory.AbelianPartIso.hom_eq_of_map_eq (IsLocalRing.maximalIdeal_le_jacobson _) G g g' fun e => ?_
  obtain ⟨q1, t, ht, i1⟩ := H e
  obtain ⟨q2, t', ht', i2⟩ := H' e
  have htt : t = t' := GlobalTheory.LinearUnifCheck.torusEndOf_unique ht ht'
  have := (U.gt e).i_hom
  exact GlobalTheory.LinearUnifIso.hom_ext_torus (U.gt e) (U.gt e) GlobalTheory.globalFns_holds _ _
    (q1.trans q2.symm) (i1.trans (htt ▸ i2.symm))

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupEndomorphismUniqueOfThickeningAc =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbelia =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbelia", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusEndOfPadd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericEndomorphismMumfordRingAction\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiAdjointGenericFibreOfActsStar\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianGenericEndomorphismExtends\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupEndomorphismUniqueOfThickeningAc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SplitsAt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_oLinear_of_oAct : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (O : Type) [Ring O] [StarRing O] [Module O D.toPre.X] (o : D.toPre.OAct O), ∃ (oA : A.OAct O) (oG : RingAct G O), U.toUnifPre.OLinear O o oA oG := by
  intro R _ _ _ hR D A G _ _ hG U O _ _ _ o
  have hgen : IsMonHom U.gen.hom := U.gen_hom
  have hgeni : IsMonHom U.gen.inv := by infer_instance
  have L1 : ∀ a : O, ∃ g : G ⟶ G, IsMonHom g ∧ ActsAs U.toUnifPre (o.onB.act a) (fun χ => star a • χ) g := by
    intro a
    obtain ⟨f, hf, hfA⟩ := _root_.GlobalTheory.Mum.GenericEnd.main R hR D A G hG U O o a
    obtain ⟨g, hg, hgf⟩ := _root_.GlobalTheory.Mum.genericEnd_extends R hR G hG (U.gen.hom ≫ f ≫ U.gen.inv) inferInstance
    refine ⟨g, hg, hfA g hg ?_⟩
    rw [hgf]; simp
  have L2 := _root_.GlobalTheory.Mum.actsAs_unique R hR D A G hG U
  choose g hg hgA using L1
  have one : g 1 = 𝟙 G := by
    refine L2 _ _ _ _ (hg 1) inferInstance (hgA 1) ?_
    have := actsAs_id U.toUnifPre
    rw [o.onB.map_one]
    convert this using 1
    funext χ; simp
  have mul : ∀ a b : O, g (a * b) = g b ≫ g a := by
    intro a b
    haveI := hg a; haveI := hg b
    refine L2 _ _ _ _ (hg (a * b)) inferInstance (hgA (a * b)) ?_
    have := actsAs_comp U.toUnifPre (hgA b) (hgA a)
    rw [o.onB.map_mul]
    convert this using 1
    funext χ; simp [star_mul, mul_smul]
  have add : ∀ a b : O, g (a + b) = padd G (g a) (g b) := by
    intro a b
    haveI := hg a; haveI := hg b
    have hp : IsMonHom (padd G (g a) (g b)) := by unfold padd; infer_instance
    refine L2 _ _ _ _ (hg (a + b)) hp (hgA (a + b)) ?_
    have := actsAs_padd U.toUnifPre (hgA a) (hgA b)
    rw [o.onB.map_add]
    convert this using 1
    funext χ; simp [star_add, add_smul]
  let oG : RingAct G O := { act := g, hom := hg, map_one := one, map_mul := mul, map_add := add }
  let F := Over.pullback (jK R)
  let fA : O → (A.A ⟶ A.A) := fun a => U.gen.inv ≫ F.map (g a) ≫ U.gen.hom
  let oA : A.OAct O :=
    { act := fA
      hom := fun a => by haveI := hg a; dsimp [fA]; infer_instance
      map_one := by simp [fA, F, one]
      map_mul := fun a b => by simp [fA, F, mul]
      map_add := fun a b => by
        simp only [fA, F, add, pull_padd]
        rw [padd_comp_hom, padd, padd, comp_lift_assoc]
      rosati := fun a => _root_.GlobalTheory.Mum.RosGeneric.rosatiAdj_generic_of_actsAs R hR D A G hG U O o a (g a) (g (star a)) (hg a) (hg (star a)) (hgA a) (hgA (star a)) }
  refine ⟨oA, oG, ⟨fun a => ?_, fun e a => (hgA a e).1, fun e a => (hgA a e).2⟩⟩
  simp [oA, oG, fA, F]
end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbelia =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbeliaStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbeliaStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbelia\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingActionExtensionToUniformisedSemiAbeliaStatement =====
