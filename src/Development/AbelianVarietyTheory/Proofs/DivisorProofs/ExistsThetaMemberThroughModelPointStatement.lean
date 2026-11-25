module

public import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDegenerationEndomorphismOfAdmissibleBase
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisedCoverPullbackSemiAbelianModel
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FlagSpaceUniqueLiftAnyField
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.PolOfSecondQuotient
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelPullbackIdCompCancel
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PsiCoordExistsUniqueUpToUnitLocal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationAtCompleteTraitOfModel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZarhinModelGenericFibreIsPullbackThetaSystem, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaMemberThroughModelPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaMemberThroughModelPointStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationAtCompleteTraitOfModel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationAtCompleteTraitOfModel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.PolBaseChangeOfRelAmpleLocal\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDegenerationEndomorphismOfAdmissibleBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open Classical

namespace GlobalTheory.Poinc.Sep

theorem pullback_map_left_fst {S S' : Scheme.{0}} (f : S' ⟶ S) (G : Over S) (F : G ⟶ G) :
    ((Over.pullback f).map F).left ≫ pullback.fst G.hom f = pullback.fst G.hom f ≫ F.left :=
  pullback.lift_fst _ _ _

theorem pullback_map_left_snd {S S' : Scheme.{0}} (f : S' ⟶ S) (G : Over S) (F : G ⟶ G) :
    ((Over.pullback f).map F).left ≫ pullback.snd G.hom f = pullback.snd G.hom f :=
  pullback.lift_snd _ _ _



set_option backward.isDefEq.respectTransparency false in
theorem exists_unif_trait : ∀ (X₁ : GlobalTheory.GSep.GSet) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (O : ZHOut X₁.ρ Y U₀ EE) (V : Type) [CommRing V] [IsDomain V] [IsDiscreteValuationRing V], IsAdicComplete (maximalIdeal V) V → CharZero V → ∀ (ξ : Sp V ⟶ Y.Z) (e : X₁.Ω₁ →+* FractionRing V), jK V ≫ ξ = spMap e ≫ Y.pt → (ξ ⁻¹' abLocus O.G).Nonempty → ∃ (D : DegData V (maximalIdeal V)) (A : PolAV (Sp (FractionRing V))) (U : Unif (maximalIdeal V) D A ((Over.pullback ξ).obj O.G)) (β : A.A.left ⟶ ((Over.pullback Y.pt).obj O.G).left), IsGrpPullback A.A ((Over.pullback Y.pt).obj O.G) (spMap e) β ∧ LBIso A.L ((O.L.L.pull (pullback.fst O.G.hom Y.pt)).pull β) ∧ ∀ F : O.G ⟶ O.G, IsMonHom F → ∃ E : EndU U.toUnifPre, E.aA.left ≫ β = β ≫ ((Over.pullback Y.pt).map F).left := by
  intro X₁ Y U₀ EE O V _ _ _ hc hch ξ e he hab
  obtain ⟨D, A, U, hl, -⟩ := O.unif V inferInstance inferInstance hc ξ hab
  haveI := U.gen_hom
  haveI : IsMonHom U.gen.symm.hom := inferInstanceAs (IsMonHom U.gen.inv)
  let κ : A.A.left ⟶ ((Over.pullback ξ).obj O.G).left :=
    U.gen.inv.left ≫ pullback.fst ((Over.pullback ξ).obj O.G).hom (jK V)
  have hκ : IsGrpPullback A.A ((Over.pullback ξ).obj O.G) (jK V) κ :=
    ((ReciprocityTheory.ChartRestriction.G.Geo.Tor.isGrpPullback_of_iso U.gen.symm).comp
      (isGrpPullback_pullback ((Over.pullback ξ).obj O.G) (jK V))).congr (Category.id_comp _) rfl
  have hm : IsGrpPullback A.A O.G (spMap e ≫ Y.pt) (κ ≫ pullback.fst O.G.hom ξ) :=
    (hκ.comp (isGrpPullback_pullback O.G ξ)).congr he rfl
  have hp := isGrpPullback_pullback O.G Y.pt
  have w : (κ ≫ pullback.fst O.G.hom ξ) ≫ O.G.hom = (A.A.hom ≫ spMap e) ≫ Y.pt :=
    hm.1.w.trans (Category.assoc _ _ _).symm
  let β : A.A.left ⟶ pullback O.G.hom Y.pt := pullback.lift _ _ w
  have hβf : β ≫ pullback.fst O.G.hom Y.pt = κ ≫ pullback.fst O.G.hom ξ := pullback.lift_fst _ _ _
  have hβs : β ≫ pullback.snd O.G.hom Y.pt = A.A.hom ≫ spMap e := pullback.lift_snd _ _ _
  have hio : U.gen.inv.left ≫ U.gen.hom.left = 𝟙 A.A.left := by
    rw [← Over.comp_left, Iso.inv_hom_id, Over.id_left]
  have hoi : U.gen.hom.left ≫ U.gen.inv.left = 𝟙 _ := by
    rw [← Over.comp_left, Iso.hom_inv_id, Over.id_left]
  refine ⟨D, A, U, β, hp.cancel (hm.congr rfl hβf.symm) hβs, ?_, fun F hF => ?_⟩
  · have h₁ : LBIso A.L (A.L.pull (𝟙 A.A.left)) :=
      (GlobalTheory.PolBaseChange.lbIso_refl A.isLB).chartPull (chartPullId A.L)
        (ReciprocityTheory.ChartRestriction.G.Geo.Tor.chartPullPull A.L _ _ rfl)
    have h₂ : LBIso (A.L.pull (𝟙 A.A.left)) (U.LG.L.pull κ) :=
      GlobalTheory.GenSpread.lbIso_pull_comp U.gen.inv.left hio.symm rfl U.ext
    have h₃ : LBIso (U.LG.L.pull κ) (O.L.L.pull (κ ≫ pullback.fst O.G.hom ξ)) :=
      GlobalTheory.GenSpread.lbIso_pull_of_lbIso hl κ rfl
    have h₄ : LBIso (O.L.L.pull (κ ≫ pullback.fst O.G.hom ξ)) ((O.L.L.pull (pullback.fst O.G.hom Y.pt)).pull β) :=
      GlobalTheory.GenSpread.lbIso_pull_pull O.L.isLB β hβf.symm
    exact LBIso.trans A.isLB (pull_isLB A.isLB _) (pull_isLB (pull_isLB O.L.isLB _) _) h₁
      (LBIso.trans (pull_isLB A.isLB _) (pull_isLB U.LG.isLB _) (pull_isLB (pull_isLB O.L.isLB _) _) h₂
        (LBIso.trans (pull_isLB U.LG.isLB _) (pull_isLB O.L.isLB _) (pull_isLB (pull_isLB O.L.isLB _) _) h₃ h₄))
  · obtain ⟨E, -, hE⟩ := exists_degenerationEndomorphism_of_admissibleBase V _ ⟨inferInstance, inferInstance, inferInstance, hc⟩ D A _
      (IsSemiAbelian.pullback _ _ O.semi) U ((Over.pullback ξ).map F)
      (U.gen.inv ≫ (Over.pullback (jK V)).map ((Over.pullback ξ).map F) ≫ U.gen.hom) inferInstance inferInstance
      (by rw [Iso.hom_inv_id_assoc])
    refine ⟨E, ?_⟩
    have n₁ := pullback_map_left_fst (jK V) ((Over.pullback ξ).obj O.G) ((Over.pullback ξ).map F)
    have n₂ := pullback_map_left_fst ξ O.G F
    have n₃ := pullback_map_left_fst Y.pt O.G F
    have n₄ := pullback_map_left_snd Y.pt O.G F
    have a₁ : E.aA.left ≫ κ = κ ≫ ((Over.pullback ξ).map F).left := by
      rw [hE]
      show (U.gen.inv.left ≫ ((Over.pullback (jK V)).map ((Over.pullback ξ).map F)).left ≫ U.gen.hom.left) ≫
        U.gen.inv.left ≫ pullback.fst ((Over.pullback ξ).obj O.G).hom (jK V) =
        (U.gen.inv.left ≫ pullback.fst ((Over.pullback ξ).obj O.G).hom (jK V)) ≫ _
      rw [Category.assoc, Category.assoc, ← Category.assoc U.gen.hom.left, hoi, Category.id_comp, n₁, Category.assoc]
    apply pullback.hom_ext
    · calc (E.aA.left ≫ β) ≫ pullback.fst O.G.hom Y.pt = (E.aA.left ≫ κ) ≫ pullback.fst O.G.hom ξ := by
            exact (Category.assoc _ _ _).trans ((congrArg (E.aA.left ≫ ·) hβf).trans (Category.assoc _ _ _).symm)
        _ = (κ ≫ pullback.fst O.G.hom ξ) ≫ F.left := by
            rw [a₁]; exact (Category.assoc _ _ _).trans ((congrArg (κ ≫ ·) n₂).trans (Category.assoc _ _ _).symm)
        _ = (β ≫ ((Over.pullback Y.pt).map F).left) ≫ pullback.fst O.G.hom Y.pt := by
            rw [← hβf]; exact (Category.assoc _ _ _).trans ((congrArg (β ≫ ·) n₃.symm).trans (Category.assoc _ _ _).symm)
    · calc (E.aA.left ≫ β) ≫ pullback.snd O.G.hom Y.pt = A.A.hom ≫ spMap e := by
            rw [Category.assoc, hβs, ← Category.assoc, Over.w]
        _ = (β ≫ ((Over.pullback Y.pt).map F).left) ≫ pullback.snd O.G.hom Y.pt := by
            exact hβs.symm.trans ((congrArg (β ≫ ·) n₄.symm).trans (Category.assoc _ _ _).symm)

end GlobalTheory.Poinc.Sep
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationAtCompleteTraitOfModel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZarhinModelGenericFibreIsPullbackThetaSystem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZarhinModelGenericFibreIsPullbackThetaSystem", "h": "module\n\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsProjectiveModel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR
open Classical

noncomputable section
namespace GlobalTheory.ZH.GenFib

theorem genFib_pullback : ∀ (X₁ : GlobalTheory.GSep.GSet) (Y : RatModel X₁.o₁ X₁.Ω₁) (U₀ : Y.Z.Opens) (EE : Y.Lat X₁.S.J) (O : ZHOut X₁.ρ Y U₀ EE), X₁.S.Over₀ Y U₀ → ∃ ψ : ((Over.pullback Y.pt).obj O.G).left ⟶ X₁.ρ.P.A.left, IsGrpPullback ((Over.pullback Y.pt).obj O.G) X₁.ρ.P.A (spMap X₁.S.R.val.toRingHom) ψ ∧ LBIso (O.L.L.pull (pullback.fst O.G.hom Y.pt)) (X₁.ρ.P.L.pull ψ) ∧ ∀ f : X₁.ρ.P.A ⟶ X₁.ρ.P.A, IsMonHom f → ∃ F : O.G ⟶ O.G, IsMonHom F ∧ ((Over.pullback Y.pt).map F).left ≫ ψ = ψ ≫ f.left := by
  intro X₁ Y U₀ EE O hO
  have hcov := (top_le_preimage_iff _ _).1 (Y.top_le_preimage_pt hO.ne)
  let x : Sp X₁.Ω₁ ⟶ U₀.toScheme := IsOpenImmersion.lift U₀.ι Y.pt (by rw [Scheme.Opens.range_ι]; exact hcov)
  have hx : x ≫ U₀.ι = Y.pt := IsOpenImmersion.lift_fac _ _ _
  have hxu : x ≫ O.u₀ = spMap X₁.S.R.val.toRingHom := O.u₀_gen x hx
  have hc : pullback.fst O.G.hom Y.pt ≫ O.G.hom = (pullback.snd O.G.hom Y.pt ≫ x) ≫ U₀.ι := by
    rw [pullback.condition, Category.assoc, hx]
  let κ : pullback O.G.hom Y.pt ⟶ pullback X₁.ρ.P.A.hom O.u₀ := O.cart.1.lift _ _ hc
  have hκ₁ : κ ≫ O.φ = pullback.fst O.G.hom Y.pt := O.cart.1.lift_fst _ _ hc
  have hκ₂ : κ ≫ ((Over.pullback O.u₀).obj X₁.ρ.P.A).hom = ((Over.pullback Y.pt).obj O.G).hom ≫ x :=
    O.cart.1.lift_snd _ _ hc
  have n : IsGrpPullback ((Over.pullback Y.pt).obj O.G) O.G (x ≫ U₀.ι) (κ ≫ O.φ) :=
    (isGrpPullback_pullback O.G Y.pt).congr hx.symm hκ₁.symm
  have h₁ : IsGrpPullback ((Over.pullback Y.pt).obj O.G) ((Over.pullback O.u₀).obj X₁.ρ.P.A) x κ :=
    O.cart.cancel n hκ₂
  have hP : IsGrpPullback ((Over.pullback Y.pt).obj O.G) X₁.ρ.P.A (spMap X₁.S.R.val.toRingHom)
      (κ ≫ pullback.fst X₁.ρ.P.A.hom O.u₀) :=
    (h₁.comp (isGrpPullback_pullback X₁.ρ.P.A O.u₀)).congr hxu rfl
  refine ⟨κ ≫ pullback.fst X₁.ρ.P.A.hom O.u₀, hP, ?_, ?_⟩
  · exact GlobalTheory.GenSpread.lbIso_pull_comp κ hκ₁.symm rfl ⟨O.w, O.w_gen⟩
  · intro f hf
    obtain ⟨e, he, he'⟩ := grpPullback_iso hP (isGrpPullback_pullback X₁.ρ.P.A (spMap X₁.S.R.val.toRingHom))
    let f' := e.hom ≫ (Over.pullback (spMap X₁.S.R.val.toRingHom)).map f ≫ e.inv
    have hf' : IsMonHom f' := by infer_instance
    obtain ⟨F, ⟨hF, hFf⟩, -⟩ := O.endo f' hf'
    refine ⟨F, hF, ?_⟩
    rw [hFf]
    show (e.hom ≫ (Over.pullback (spMap X₁.S.R.val.toRingHom)).map f ≫ e.inv).left ≫ (κ ≫ pullback.fst X₁.ρ.P.A.hom O.u₀) = _
    have hie : e.inv.left ≫ e.hom.left = 𝟙 _ := by rw [← Over.comp_left, e.inv_hom_id, Over.id_left]
    rw [← he']
    simp only [Over.comp_left, Category.assoc]
    rw [reassoc_of% hie]
    congr 1
    exact pullback.lift_fst _ _ _

end GlobalTheory.ZH.GenFib
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZarhinModelGenericFibreIsPullbackThetaSystem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaMemberThroughModelPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaMemberThroughModelPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.PolOfSecondQuotient\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisationAtCompleteTraitOfModel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniformisedCoverPullbackSemiAbelianModel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZarhinModelGenericFibreIsPullbackThetaSystem\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FlagSpaceUniqueLiftAnyField\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelPullbackIdCompCancel\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PsiCoordExistsUniqueUpToUnitLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

namespace GlobalTheory.GSep.Thru

theorem spMap_stalkHom {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (M : RatModel o Ω) (z : M.Z) :
    spMap (M.stalkHom z) ≫ M.Z.fromSpecStalk z = M.pt := by
  have h1 := Scheme.Spec_stalkClosedPointTo_fromSpecStalk (R := CommRingCat.of Ω) M.pt
  have h2 := Scheme.SpecMap_stalkSpecializes_fromSpecStalk (M.pt_specializes (IsLocalRing.closedPoint Ω) z)
  refine Eq.trans ?_ h1
  rw [← h2, ← Category.assoc, ← Spec.map_comp]
  rfl

theorem isFractionRing_stalk {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (M : RatModel o Ω) (z : M.Z) :
    letI : Algebra (M.Z.presheaf.stalk z) Ω := (M.stalkHom z).toAlgebra
    IsFractionRing (M.Z.presheaf.stalk z) Ω := by
  letI : Algebra (M.Z.presheaf.stalk z) Ω := (M.stalkHom z).toAlgebra
  have : FaithfulSMul (M.Z.presheaf.stalk z) Ω :=
    (faithfulSMul_iff_algebraMap_injective _ _).2 (M.stalkHom_injective z)
  refine IsFractionRing.of_field _ _ fun x => ?_
  obtain ⟨a, b, -, hx⟩ := IsFractionRing.div_surjective (A := M.O z) x
  refine ⟨(M.stalkEquiv z).symm a, (M.stalkEquiv z).symm b, ?_⟩
  have h : ∀ c : M.O z, algebraMap (M.Z.presheaf.stalk z) Ω ((M.stalkEquiv z).symm c) = c := fun c => by
    change M.stalkHom z _ = _
    rw [← RatModel.coe_stalkEquiv, RingEquiv.apply_symm_apply]
  rw [h, h, ← hx]
  rfl

theorem exists_cdvr_thru {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] [IsNoetherianRing o] [CharZero Ω]
    (M : RatModel o Ω) (z : M.Z) :
    ∃ (V : Type) (_ : CommRing V) (_ : IsDomain V) (_ : IsDiscreteValuationRing V) (φ : M.Z.presheaf.stalk z →+* V)
      (e : Ω →+* FractionRing V), IsAdicComplete (maximalIdeal V) V ∧ CharZero V ∧ IsLocalHom φ ∧
      (∀ r, e (M.stalkHom z r) = algebraMap V (FractionRing V) (φ r)) ∧
      jK V ≫ spMap φ ≫ M.Z.fromSpecStalk z = spMap e ≫ M.pt := by
  letI : Algebra (M.Z.presheaf.stalk z) Ω := (M.stalkHom z).toAlgebra
  haveI := isFractionRing_stalk M z
  haveI : CharZero (M.Z.presheaf.stalk z) := (M.stalkHom z).charZero
  haveI := M.lft
  haveI : IsLocallyNoetherian (Sp o) := inferInstanceAs (IsLocallyNoetherian (Spec (CommRingCat.of o)))
  haveI : IsLocallyNoetherian M.Z := LocallyOfFiniteType.isLocallyNoetherian M.s
  obtain ⟨V₀, _, _, _, φ₀, ⟨hdvr, hcpl, hchar⟩, hinj₀, hmax⟩ :=
    GlobalTheory.ClosedPol.exists_cdvr (M.Z.presheaf.stalk z) (maximalIdeal _)
  have hl : IsLocalHom φ₀ := ((IsLocalRing.local_hom_tfae φ₀).out 1 5).2 hmax
  have hg₀ : Function.Injective ((algebraMap V₀ (FractionRing V₀)).comp φ₀) :=
    (IsFractionRing.injective V₀ (FractionRing V₀)).comp hinj₀
  let emb : Ω →+* FractionRing V₀ := IsFractionRing.lift (A := M.Z.presheaf.stalk z) hg₀
  have hemb : ∀ r, emb (M.stalkHom z r) = algebraMap V₀ (FractionRing V₀) (φ₀ r) := fun r =>
    IsFractionRing.lift_algebraMap (A := M.Z.presheaf.stalk z) hg₀ r
  refine ⟨V₀, inferInstance, inferInstance, hdvr, φ₀, emb, hcpl, hchar, hl, hemb, ?_⟩
  rw [← spMap_stalkHom, ← Category.assoc, ← Category.assoc]
  congr 1
  rw [show jK V₀ = spMap (algebraMap V₀ (FractionRing V₀)) from rfl, _root_.Formalism.L2.Pj.spMap_comp_ring, _root_.Formalism.L2.Pj.spMap_comp_ring]
  congr 1
  ext r
  exact (hemb r).symm

theorem exists_gMem_of_trait : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)), GlobalTheory.GSep.IsAct X₁ act → ∀ (Y : RatModel X₁.o₁ X₁.Ω₁) (πY : Y.Z ⟶ X₁.M.Z), GlobalTheory.GSep.ZHAbove X₁ Y πY → ∀ (V : Type) [CommRing V] [IsDomain V] [IsDiscreteValuationRing V], IsAdicComplete (maximalIdeal V) V → CharZero V → ∀ (ev : X₁.M.Z.presheaf.stalk z₁ →+* V), IsLocalHom ev → ∀ (ξ : Sp V ⟶ Y.Z) (e : X₁.Ω₁ →+* FractionRing V), ξ ≫ πY = spMap ev ≫ X₁.M.Z.fromSpecStalk z₁ → jK V ≫ ξ = spMap e ≫ Y.pt → ∃ (X : Type) (_ : AddCommGroup X) (t : X → V) (δ : I → X → X), Nonempty (GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) := by
  intro I X₁ z₁ act hact Y πY hY V _ _ _ hcpl hchar ev hev ξ e hξ hjξ
  obtain ⟨U₀, EE, ⟨O⟩, hO, -, hhom, -⟩ := hY
  have hπ : Y.pt ≫ πY = X₁.M.pt :=
    hhom.trans ((congrArg (· ≫ X₁.M.pt) (Spec.map_id _)).trans (Category.id_comp _))
  obtain ⟨ψ, hψ, hψL, hψE⟩ := _root_.GlobalTheory.ZH.GenFib.genFib_pullback X₁ Y U₀ EE O hO
  have hab : (ξ ⁻¹' abLocus O.G).Nonempty := by
    refine ⟨jK V (closedPoint (FractionRing V)), ?_⟩
    have e1 : ξ (jK V (closedPoint (FractionRing V))) = Y.pt (spMap e (closedPoint (FractionRing V))) :=
      congrArg (fun f : Sp (FractionRing V) ⟶ Y.Z => f (closedPoint (FractionRing V))) hjξ
    rw [Set.mem_preimage, e1]
    exact GlobalTheory.Mum.CoverPull.pt_mem_abLocus _ _ X₁.S X₁.ρ Y U₀ EE hO O _
  obtain ⟨D, A, U, β, hβ, hβL, hβE⟩ := _root_.GlobalTheory.Poinc.Sep.exists_unif_trait X₁ Y U₀ EE O V hcpl hchar ξ e hjξ hab
  have hpt : jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk z₁ = spMap e ≫ X₁.M.pt := by
    rw [← hξ, ← Category.assoc, hjξ, Category.assoc, hπ]
  have hend : ∀ a, ∃ E : EndU U.toUnifPre, E.aA.left ≫ (β ≫ ψ) = (β ≫ ψ) ≫ (act a).left := by
    intro a
    obtain ⟨F, hF, hFψ⟩ := hψE (act a) (hact a)
    obtain ⟨E, hE⟩ := hβE F hF
    refine ⟨E, ?_⟩
    rw [← Category.assoc, hE, Category.assoc, hFψ, Category.assoc]
  choose E hE using hend
  have hV : IsCN V := ⟨inferInstance, inferInstance, hcpl, hchar⟩
  have hpsi : ∀ mu : D.toPre.X, ∃ r : V, Formalism.L2.Pj.PsiCoord D.toPre mu r := fun mu => by
    obtain ⟨r, hr, -⟩ := (PsiCoordLocal.main V D hV.2.1 mu).1
    exact ⟨r, hr⟩
  choose t ht using hpsi
  obtain ⟨wl, hwl⟩ := LBIso.trans A.isLB (pull_isLB (pull_isLB O.L.isLB _) _) (pull_isLB X₁.ρ.P.isLB _) hβL
    (lbIso_pull_comp hψL β)
  refine ⟨D.toPre.X, inferInstance, t, fun a => (E a).h, ⟨{
    cn := hV
    loc := hev
    reg := fun a _ => ?_
    yK := e.comp X₁.S.R.val.toRingHom
    yK_eq := fun a => ?_
    D := D
    e₈ := AddEquiv.refl _
    G := (Over.pullback ξ).obj O.G
    semi := IsSemiAbelian.pullback _ _ O.semi
    A := A
    U := U
    φ := β ≫ ψ
    cart := (hβ.comp hψ).congr (_root_.Formalism.L2.Pj.spMap_comp_ring e X₁.S.R.val.toRingHom) rfl
    wl := wl
    wl_gen := hwl
    equiv := fun a => ⟨E a, hE a, fun _ => rfl⟩
    psi := fun mu => ⟨1, by simpa using ht mu⟩ }⟩⟩
  · rw [hpt]
    change a ∈ X₁.M.O (X₁.M.pt ((spMap e) (closedPoint (FractionRing V))))
    rw [X₁.M.pt_apply, RatModel.O_genericPoint]
    trivial
  · rw [hpt, GlobalTheory.FieldPts.val_spMap, RatModel.val_pt]
    rfl

theorem exists_gMem_thru : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)), GlobalTheory.GSep.IsAct X₁ act → ∀ (Y : RatModel X₁.o₁ X₁.Ω₁) (πY : Y.Z ⟶ X₁.M.Z), GlobalTheory.GSep.ZHAbove X₁ Y πY → ∀ y : Y.Z, πY y = z₁ → ∃ (V : Type) (_ : CommRing V) (_ : IsDomain V) (_ : IsLocalRing V) (_ : IsDiscreteValuationRing V) (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) (_ : AddCommGroup X) (t : X → V) (δ : I → X → X) (𝔫 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (ξ : Sp V ⟶ Y.Z), ξ ≫ πY = spMap ev ≫ X₁.M.Z.fromSpecStalk z₁ ∧ ξ (closedPoint V) = y ∧ Function.Injective ev := by
  intro I X₁ z₁ act hact Y πY hY y hy
  subst hy
  haveI : CharZero X₁.Ω₁ := X₁.ar.char
  haveI : IsDedekindDomain X₁.o₁ := X₁.ar.ded
  obtain ⟨V, _, _, hdvr, φ₀, emb, hcpl, hchar, hl₀, -, hptY⟩ := exists_cdvr_thru Y y
  have hπ : Y.pt ≫ πY = X₁.M.pt := by
    obtain ⟨-, -, -, -, -, hhom, -⟩ := hY
    refine Eq.trans hhom ?_
    exact (congrArg (· ≫ X₁.M.pt) (Spec.map_id _)).trans (Category.id_comp _)
  let s : X₁.M.Z.presheaf.stalk (πY y) →+* Y.Z.presheaf.stalk y := (πY.stalkMap y).hom
  have hs : spMap s ≫ X₁.M.Z.fromSpecStalk (πY y) = Y.Z.fromSpecStalk y ≫ πY :=
    Scheme.SpecMap_stalkMap_fromSpecStalk πY
  haveI hsl : IsLocalHom s := inferInstanceAs (IsLocalHom (πY.stalkMap y).hom)
  let ev : X₁.M.Z.presheaf.stalk (πY y) →+* V := φ₀.comp s
  have hξ : (spMap φ₀ ≫ Y.Z.fromSpecStalk y) ≫ πY = spMap ev ≫ X₁.M.Z.fromSpecStalk (πY y) := by
    rw [Category.assoc, ← hs, ← Category.assoc, _root_.Formalism.L2.Pj.spMap_comp_ring]
  have hjξ : jK V ≫ spMap φ₀ ≫ Y.Z.fromSpecStalk y = spMap emb ≫ Y.pt := hptY
  have hpt' : jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk (πY y) = spMap emb ≫ X₁.M.pt := by
    calc jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk (πY y) = jK V ≫ (spMap φ₀ ≫ Y.Z.fromSpecStalk y) ≫ πY := by rw [hξ]
      _ = (jK V ≫ spMap φ₀ ≫ Y.Z.fromSpecStalk y) ≫ πY := by simp only [Category.assoc]
      _ = (spMap emb ≫ Y.pt) ≫ πY := by rw [hjξ]
      _ = spMap emb ≫ X₁.M.pt := by rw [Category.assoc, hπ]
  have hinj : Function.Injective ev := by
    have h1 : spMap ((algebraMap V (FractionRing V)).comp ev) ≫ X₁.M.Z.fromSpecStalk (πY y) =
        spMap (emb.comp (X₁.M.stalkHom (πY y))) ≫ X₁.M.Z.fromSpecStalk (πY y) := by
      rw [← _root_.Formalism.L2.Pj.spMap_comp_ring (algebraMap V (FractionRing V)) ev, ← _root_.Formalism.L2.Pj.spMap_comp_ring emb (X₁.M.stalkHom (πY y)), Category.assoc,
        Category.assoc, spMap_stalkHom]
      exact hpt'
    have h2 := (cancel_mono _).1 h1
    have h3 : (algebraMap V (FractionRing V)).comp ev = emb.comp (X₁.M.stalkHom (πY y)) :=
      congrArg CommRingCat.Hom.hom (Spec.map_injective h2)
    intro a b hab
    apply X₁.M.stalkHom_injective
    apply emb.injective
    have ha := RingHom.congr_fun h3 a
    have hb := RingHom.congr_fun h3 b
    simp only [RingHom.comp_apply] at ha hb
    rw [← ha, ← hb, hab]
  obtain ⟨X, _, t, δ, ⟨𝔫⟩⟩ := exists_gMem_of_trait I X₁ (πY y) act hact Y πY hY V hcpl hchar ev
    (RingHom.isLocalHom_comp _ _) _ emb hξ hjξ
  refine ⟨V, inferInstance, inferInstance, inferInstance, hdvr, ev, X, inferInstance, t, δ, 𝔫,
    spMap φ₀ ≫ Y.Z.fromSpecStalk y, hξ, ?_, hinj⟩
  change Y.Z.fromSpecStalk y (spMap φ₀ (closedPoint V)) = y
  have : spMap φ₀ (closedPoint V) = closedPoint (Y.Z.presheaf.stalk y) := IsLocalRing.comap_closedPoint φ₀
  rw [this]
  exact Scheme.fromSpecStalk_closedPoint

end GlobalTheory.GSep.Thru
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaMemberThroughModelPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaMemberThroughModelPointStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaMemberThroughModelPointStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaMemberThroughModelPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaMemberThroughModelPointStatement =====
