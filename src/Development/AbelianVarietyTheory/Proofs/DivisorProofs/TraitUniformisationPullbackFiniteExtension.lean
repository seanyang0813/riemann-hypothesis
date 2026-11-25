module

public import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.PullQkSurjective
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullFib
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SecLinOfSecScal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnifTrait
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBaseStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoAlgebraisation
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
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FamilyFibreEqUniformisedPullbackGenericFibre
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsSemiAbelianOfGenericAbelianOfClosedIsGt
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationEndomorphismsToCompleteDvr

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegSquareFourthSide, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitUniformisationPullbackFiniteExtension

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegSquareFourthSide =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegSquareFourthSide", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.PullQkSurjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullFib\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SecLinOfSecScal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.PullSquare

variable {R R' : Type} [CommRing R] [IsDomain R] [CommRing R'] [IsDomain R']

theorem exists_of_eq {θ θ' : R →+* R'} (e : θ = θ') {D : DegPre R} {D' : DegPre R'} (r : IsPullDeg θ D D') :
    ∃ r' : IsPullDeg θ' D D', (∀ x, r'.xe x = r.xe x) ∧
      ∀ (F : Type) [Field F] [Algebra (FractionRing R) F] [Algebra (FractionRing R') F] (g : GtPtF D F)
        (g' : GtPtF D' F), IsPullGtF θ r F g g' → IsPullGtF θ' r' F g g' := by
  subst e
  exact ⟨r, fun _ => rfl, fun _ _ _ _ _ _ h => h⟩

end GlobalTheory.PullSquare

theorem GlobalTheory.Mum.isPullDeg_square : ∀ (R R₁ W W₁ : Type) [CommRing R] [IsDomain R] [CommRing R₁] [IsDomain R₁] [CommRing W] [IsDomain W] [CommRing W₁] [IsDomain W₁] (I : Ideal R) (I₁ : Ideal R₁) (J : Ideal W) (J₁ : Ideal W₁), AdmBase R I → AdmBase R₁ I₁ → AdmBase W J → AdmBase W₁ J₁ → ∀ (ρ : R →+* R₁) (φ : R →+* W) (iw : W →+* W₁) (φ₁ : R₁ →+* W₁), φ₁.comp ρ = iw.comp φ → Function.Injective φ₁ → Function.Injective ρ → Function.Injective φ → Function.Injective iw → ∀ (D : DegData R I) (D₁ : DegData R₁ I₁) (D' : DegData W J) (D'₁ : DegData W₁ J₁) (hρ : IsPullDeg ρ D.toPre D₁.toPre) (hD : IsPullDeg φ D.toPre D'.toPre) (hX : IsPullDeg iw D'.toPre D'₁.toPre), ∃ h : IsPullDeg φ₁ D₁.toPre D'₁.toPre, (∀ x, hρ.xe (h.xe x) = hD.xe (hX.xe x)) ∧ ∀ (F : Type) [Field F] [Algebra (FractionRing R) F] [Algebra (FractionRing R₁) F] [Algebra (FractionRing W) F] [Algebra (FractionRing W₁) F], GlobalTheory.ArcPull.Compat ρ F → GlobalTheory.ArcPull.Compat φ F → GlobalTheory.ArcPull.Compat iw F → GlobalTheory.ArcPull.Compat φ₁ F → ∀ (g : GtPtF D.toPre F) (g₁ : GtPtF D₁.toPre F) (g' : GtPtF D'.toPre F) (g'₁ : GtPtF D'₁.toPre F), IsPullGtF ρ hρ F g g₁ → IsPullGtF φ hD F g g' → IsPullGtF iw hX F g' g'₁ → IsPullGtF φ₁ h F g₁ g'₁ := by
  intro R R₁ W W₁ _ _ _ _ _ _ _ _ I I₁ J J₁ _ _ _ _ ρ φ iw φ₁ hsq hφ₁ hρi hφi hiw D D₁ D' D'₁ hρ hD hX
  obtain ⟨r, Tr⟩ := GlobalTheory.LabTrans.exists_comp hφi hiw hD hX
  obtain ⟨r', hx', hg'⟩ := GlobalTheory.PullSquare.exists_of_eq hsq.symm r
  obtain ⟨h, Th⟩ := GlobalTheory.LabTrans.exists_cancel hρi hφ₁ hρ r'
  refine ⟨h, fun x => ?_, ?_⟩
  · rw [Th.xe_eq, hx', ← Tr.xe_eq]
  · intro F _ _ _ _ _ cρ cφ ci c₁ g g₁ g' g'₁ Hρ HD HX
    have cθ : GlobalTheory.ArcPull.Compat (iw.comp φ) F := fun a => (cφ a).trans (ci (φ a))
    have cθ' : GlobalTheory.ArcPull.Compat (φ₁.comp ρ) F := fun a => (cρ a).trans (c₁ (ρ a))
    have H : IsPullGtF (φ₁.comp ρ) r' F g g'₁ := hg' F g g'₁ (Tr.isPullGtF cθ HD HX)
    obtain ⟨g'', H''⟩ := GlobalTheory.ArcPull.exists_pullGt h GlobalTheory.ExpansionTotal.globalFns c₁ g₁
    have H2 := Th.isPullGtF cθ' Hρ H''
    rwa [GlobalTheory.ArcPull.pullGt_unique r' cθ' H2 H] at H''
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegSquareFourthSide =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitUniformisationPullbackFiniteExtension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitUniformisationPullbackFiniteExtension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnifTrait\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FamilyFibreEqUniformisedPullbackGenericFibre\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteCompleteTraitExtensionOfBaseStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoAlgebraisation\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.PullQkSurjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullDegSquareFourthSide\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsSemiAbelianOfGenericAbelianOfClosedIsGt\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationEndomorphismsToCompleteDvr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.TraitExt

theorem exists_fracHom {R R₁ M : Type} [CommRing R] [IsDomain R] [CommRing R₁] [IsDomain R₁] [Field M] [IsAlgClosed M]
    (ρ : R →+* R₁) (hρ : Function.Injective ρ) (hfin : ρ.Finite) (g : R →+* M) (hg : Function.Injective g) :
    ∃ e : FractionRing R₁ →+* M, ∀ r, e (algebraMap R₁ (FractionRing R₁) (ρ r)) = g r := by
  letI : Algebra R R₁ := ρ.toAlgebra
  letI : Algebra R M := g.toAlgebra
  have hinj : Function.Injective (algebraMap R (FractionRing R₁)) := by
    rw [IsScalarTower.algebraMap_eq R R₁ (FractionRing R₁)]
    exact (IsFractionRing.injective R₁ (FractionRing R₁)).comp hρ
  haveI : Module.IsTorsionFree R (FractionRing R₁) := by
    rw [Module.isTorsionFree_iff_algebraMap_injective]; exact hinj
  haveI : Module.IsTorsionFree R M := by
    rw [Module.isTorsionFree_iff_algebraMap_injective]; exact hg
  haveI : Algebra.IsIntegral R R₁ := ⟨fun x => hfin.to_isIntegral x⟩
  haveI : Algebra.IsAlgebraic R R₁ := Algebra.IsIntegral.isAlgebraic
  haveI : Algebra.IsAlgebraic R (FractionRing R₁) :=
    (IsFractionRing.isAlgebraic_iff' R R₁ (FractionRing R₁)).1 inferInstance
  refine ⟨(IsAlgClosed.lift : FractionRing R₁ →ₐ[R] M).toRingHom, fun r => ?_⟩
  have h := (IsAlgClosed.lift : FractionRing R₁ →ₐ[R] M).commutes r
  rw [IsScalarTower.algebraMap_apply R R₁ (FractionRing R₁)] at h
  exact h

end GlobalTheory.Mum.TraitExt

namespace GlobalTheory.Mum.TraitExt

alias spMap_comp := _root_.GlobalTheory.spMap_comp_ring

theorem unifTrait_pull : ∀ (R R₁ : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [CommRing R₁] [IsDomain R₁] [IsLocalRing R₁]
    (ρ : R →+* R₁), Base R → FinExt ρ → ∀ (D : DegData R (maximalIdeal R)) (D₁ : DegData R₁ (maximalIdeal R₁)),
    Nonempty (IsPullDeg ρ D.toPre D₁.toPre) → ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (G₁ : Over (Sp R₁))
    [GrpObj G₁] [IsCommMonObj G₁] (β₁ : G₁.left ⟶ G.left), IsSemiAbelian G → IsGrpPullback G₁ G (spMap ρ) β₁ →
    ∀ L : LB G.left, L.IsLB → UnifTrait D G L → UnifTrait D₁ G₁ (L.pull β₁) := by
  intro R R₁ _ _ _ _ _ _ ρ hR hfin D D₁ hρD G _ _ G₁ _ _ β₁ hG hpb L hL hU
  obtain ⟨hρD⟩ := hρD
  obtain ⟨W, _, _, _, φ, G', _, _, β, D', A', U', hW, hφi, hφl, hpb', hLB, ⟨hD⟩⟩ := hU
  have hgi : Function.Injective
      ((algebraMap (FractionRing W) (Kb W)).comp ((algebraMap W (FractionRing W)).comp φ)) :=
    (algebraMap (FractionRing W) (Kb W)).injective.comp ((IsFractionRing.injective W (FractionRing W)).comp hφi)
  obtain ⟨e, he⟩ := exists_fracHom ρ hfin.2.1 hfin.2.2 _ hgi
  obtain ⟨W₁, _, _, _, iw, φ₁, -, hW₁, hiwi, -, hiwl, hφ₁i, hφ₁l, hcomm, -, -⟩ :=
    _root_.GlobalTheory.TraitExt.exists_finite_trait_extension R W R₁ hW φ hφi hφl ρ hfin (Kb W) e he
  have hAW : AdmBase W (maximalIdeal W) := by
    haveI := hW.1; exact ⟨inferInstance, inferInstance, inferInstance, hW.2.1⟩
  have hAW₁ : AdmBase W₁ (maximalIdeal W₁) := by
    haveI := hW₁.1; exact ⟨inferInstance, inferInstance, inferInstance, hW₁.2.1⟩
  have hG' : IsSemiAbelian G' := by
    obtain ⟨eI, heI, -⟩ := grpPullback_iso hpb' (isGrpPullback_pullback G (spMap φ))
    haveI := heI
    exact GlobalTheory.isSemiAbelian_of_grpIso eI (IsSemiAbelian.pullback _ G hG)
  obtain ⟨hL5, -, -, h4, h5⟩ := GlobalTheory.firstFiveLaws
  obtain ⟨D'', hD'', A'', U'', hP⟩ := GlobalTheory.UT.EndBaseChange.exists_pull hL5.polBaseChange h4.unifBaseChange
    h5.psiOnExists hAW hAW₁ iw hiwi (map_maximalIdeal_le iw) hG' U'
  have hpb1 : IsGrpPullback ((Over.pullback (specOf iw)).obj G') G' (spMap iw) (pullback.fst G'.hom (specOf iw)) :=
    isGrpPullback_pullback G' (spMap iw)
  have hsp : spMap iw ≫ spMap φ = spMap φ₁ ≫ spMap ρ := by
    rw [spMap_comp, spMap_comp, hcomm]
  have hpb2 := hpb1.comp hpb'
  have hsq : (pullback.fst G'.hom (specOf iw) ≫ β) ≫ G.hom =
      ((Over.pullback (specOf iw)).obj G').hom ≫ spMap φ₁ ≫ spMap ρ := by
    rw [← hsp, Category.assoc, hpb'.1.w, ← Category.assoc, pullback.condition]
    rfl
  set β'' : ((Over.pullback (specOf iw)).obj G').left ⟶ G₁.left :=
    hpb.1.lift (pullback.fst G'.hom (specOf iw) ≫ β) (((Over.pullback (specOf iw)).obj G').hom ≫ spMap φ₁) hsq
    with hβ''
  have hβ1 : β'' ≫ β₁ = pullback.fst G'.hom (specOf iw) ≫ β := hpb.1.lift_fst _ _ _
  have hβ2 : β'' ≫ G₁.hom = ((Over.pullback (specOf iw)).obj G').hom ≫ spMap φ₁ := hpb.1.lift_snd _ _ _
  have hpb3 : IsGrpPullback ((Over.pullback (specOf iw)).obj G') G₁ (spMap φ₁) β'' :=
    hpb.cancel (hpb2.congr hsp hβ1.symm) hβ2
  obtain ⟨h, -, -⟩ := _root_.GlobalTheory.Mum.isPullDeg_square R R₁ W W₁ _ _ _ _ hR.1 hfin.1 hAW hAW₁ ρ φ iw φ₁ hcomm hφ₁i hfin.2.1 hφi hiwi
    D D₁ D' D'' hρD hD hD''
  have hw1 : LBIso U''.LG.L
      (U'.LG.L.pull ((Iso.refl ((Over.pullback (specOf iw)).obj G')).hom.left ≫ pullback.fst G'.hom (specOf iw))) :=
    ⟨hP.lg.choose, hP.lg.choose_spec.1⟩
  have hw2 : LBIso (U'.LG.L.pull ((Iso.refl ((Over.pullback (specOf iw)).obj G')).hom.left ≫
      pullback.fst G'.hom (specOf iw))) (L.pull (pullback.fst G'.hom (specOf iw) ≫ β)) :=
    GlobalTheory.Ex.GenericFibre.lbIso_pull hLB _ (by simp)
  have hw3 : LBIso (L.pull (pullback.fst G'.hom (specOf iw) ≫ β)) ((L.pull β₁).pull β'') :=
    GlobalTheory.AlgUniq.lbIso_pull_comp hL β₁ β'' _ hβ1
  have hw : LBIso U''.LG.L ((L.pull β₁).pull β'') :=
    LBIso.trans U''.LG.isLB (pull_isLB U'.LG.isLB _) (pull_isLB (pull_isLB hL _) _) hw1
      (LBIso.trans (pull_isLB U'.LG.isLB _) (pull_isLB hL _) (pull_isLB (pull_isLB hL _) _) hw2 hw3)
  exact ⟨W₁, inferInstance, inferInstance, inferInstance, φ₁, (Over.pullback (specOf iw)).obj G', inferInstance,
    inferInstance, β'', D'', A'', U'', hW₁, hφ₁i, hφ₁l, hpb3, hw, ⟨h⟩⟩

end GlobalTheory.Mum.TraitExt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitUniformisationPullbackFiniteExtension =====
