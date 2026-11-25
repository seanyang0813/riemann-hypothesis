module

public import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP
public import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.TraceFormTwistIsoOfPullback
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemberBaseChangeInjectiveLocalCompleteNormal
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PointsCarryCommonFlagSpectrumMapFieldExt
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelPullbackIdCompCancel
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationEndomorphismsToCompleteDvr
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

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedMemberBaseChangeInjectiveLocalHom, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedMemberBaseChangeInjectiveLocalHomStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedMemberBaseChangeInjectiveLocalHom =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedMemberBaseChangeInjectiveLocalHom", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.TraceFormTwistIsoOfPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemberBaseChangeInjectiveLocalCompleteNormal\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PointsCarryCommonFlagSpectrumMapFieldExt\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelPullbackIdCompCancel\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UniformisationEndomorphismsToCompleteDvr\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsPelUnifPsiCoord\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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

namespace GlobalTheory.GSep.MemBC

open GlobalTheory.ArcPull GlobalTheory.Poinc.Sep.MemBC

theorem pt_comp (X₁ : GSet) (z₁ : X₁.M.Z) {V V' : Type} [CommRing V] [IsDomain V] [CommRing V'] [IsDomain V']
    (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (j : V →+* V') (hj : Function.Injective j) :
    jK V' ≫ spMap (j.comp ev) ≫ X₁.M.Z.fromSpecStalk z₁ =
      spMap (fracMap hj) ≫ (jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk z₁) := by
  have sq := fracMap_sq hj
  rw [Category.id_comp] at sq
  rw [spMap_comp, Category.assoc, ← Category.assoc (jK V'), sq]
  simp only [genMap, Category.assoc]

theorem regAt_comp (X₁ : GSet) (z₁ : X₁.M.Z) {V V' : Type} [CommRing V] [IsDomain V] [CommRing V'] [IsDomain V']
    (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (j : V →+* V') (hj : Function.Injective j) (h : RegAt X₁ z₁ ev) :
    RegAt X₁ z₁ (j.comp ev) := by
  intro a ha
  rw [pt_comp X₁ z₁ ev j hj]
  convert h a ha using 2
  exact GlobalTheory.FlagBundle.spMap_comp_apply_field (fracMap hj) _ _ _

theorem yK_comp (X₁ : GSet) (z₁ : X₁.M.Z) {V V' : Type} [CommRing V] [IsDomain V] [CommRing V'] [IsDomain V']
    (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (j : V →+* V') (hj : Function.Injective j) (yK : X₁.S.R →+* FractionRing V)
    (h : ∀ a : X₁.S.R, yK a = X₁.M.val (jK V ≫ spMap ev ≫ X₁.M.Z.fromSpecStalk z₁) a) (a : X₁.S.R) :
    (fracMap hj).comp yK a = X₁.M.val (jK V' ≫ spMap (j.comp ev) ≫ X₁.M.Z.fromSpecStalk z₁) a := by
  rw [pt_comp X₁ z₁ ev j hj]
  exact (congrArg (fracMap hj) (h a)).trans (val_spMap_comp_field' X₁.M (fracMap hj) _ _).symm

theorem gMem_baseChange : ∀ (I : Type) (X₁ : GlobalTheory.GSep.GSet) (z₁ : X₁.M.Z) (act : I → (X₁.ρ.P.A ⟶ X₁.ρ.P.A)) (V : Type) [CommRing V] [IsDomain V] [IsLocalRing V] (ev : X₁.M.Z.presheaf.stalk z₁ →+* V) (X : Type) [AddCommGroup X] (t : X → V) (δ : I → X → X) (𝔪 : GlobalTheory.GSep.GMem X₁ z₁ act V ev X t δ) (V' : Type) [CommRing V'] [IsDomain V'] [IsLocalRing V'] (j : V →+* V') (k : FractionRing V →+* FractionRing V'), IsCN V' → Function.Injective j → IsLocalHom j → (∀ v : V, k (algebraMap V (FractionRing V) v) = algebraMap V' (FractionRing V') (j v)) → ∃ 𝔫 : GlobalTheory.GSep.GMem X₁ z₁ act V' (j.comp ev) X (fun i => j (t i)) δ, (∀ r, 𝔫.yK r = k (𝔪.yK r)) ∧ ∀ a mu, 𝔪.YY a mu → 𝔫.YY a mu := by
  intro I X₁ z₁ act V _ _ _ ev X _ t δ 𝔪 V' _ _ _ j kf hV' hj hl hkv
  have hV := 𝔪.cn
  have hkf : fracMap hj = kf :=
    IsLocalization.ringHom_ext (nonZeroDivisors V)
      (RingHom.ext fun v => by
        simp only [RingHom.comp_apply]
        exact (fracMap_algebraMap hj v).trans (hkv v).symm)
  have hAd : AdmBase V (maximalIdeal V) := ⟨hV.1, inferInstance, hV.2.1, hV.2.2.1⟩
  have hAd' : AdmBase V' (maximalIdeal V') := ⟨hV'.1, inferInstance, hV'.2.1, hV'.2.2.1⟩
  have hI : (maximalIdeal V).map j ≤ maximalIdeal V' := map_maximalIdeal_le j
  obtain ⟨D', hD, A', gA, U', hPU, hgA, htA, hrel⟩ := exists_pull_gen hAd hAd' j hj hI 𝔪.semi 𝔪.U
  have hwl : LBIso A'.L (X₁.ρ.P.L.pull (gA ≫ 𝔪.φ)) :=
    LBIso.trans A'.isLB (pull_isLB 𝔪.A.isLB _) (pull_isLB X₁.ρ.P.isLB _) htA (lbIso_pull_comp ⟨𝔪.wl, 𝔪.wl_gen⟩ gA)
  obtain ⟨wl, hwl⟩ := hwl
  haveI := 𝔪.loc
  have hlev : 1 ≤ X₁.S.r * X₁.S.N := Nat.one_le_iff_ne_zero.2 (Nat.mul_ne_zero (by have := X₁.S.r_pos; omega) (by have := X₁.S.N_ge; omega))
  refine ⟨{
    cn := hV'
    loc := inferInstance
    reg := regAt_comp X₁ z₁ ev j hj 𝔪.reg
    yK := (fracMap hj).comp 𝔪.yK
    yK_eq := yK_comp X₁ z₁ ev j hj 𝔪.yK 𝔪.yK_eq
    D := D'
    e₈ := 𝔪.e₈.trans hD.xe.symm
    G := (Over.pullback (specOf j)).obj 𝔪.G
    semi := IsSemiAbelian.pullback _ _ 𝔪.semi
    A := A'
    U := U'
    φ := gA ≫ 𝔪.φ
    cart := (hgA.comp 𝔪.cart).congr (by rw [spMap_comp]) rfl
    wl := wl
    wl_gen := hwl
    equiv := fun a => ?_
    psi := fun mu => ?_ }, fun r => ?_, ?_⟩
  · obtain ⟨E, hE1, hE2⟩ := 𝔪.equiv a
    have := E.homG
    obtain ⟨E', h1, h2, -⟩ := EndBaseChange.exists_end hD hPU E ((Over.pullback (specOf j)).map E.aG)
      ((Category.comp_id _).trans (Category.id_comp _).symm)
    refine ⟨E', ?_, fun mu => ?_⟩
    · rw [← Category.assoc, aA_comm j hj 𝔪.U.toUnifPre U'.toUnifPre gA hgA hrel E E' h1, Category.assoc, hE1,
        Category.assoc]
    · apply hD.xe.injective
      simp only [AddEquiv.trans_apply, AddEquiv.apply_symm_apply, h2, hE2]
  · obtain ⟨u, hu⟩ := 𝔪.psi mu
    have hr : Formalism.L2.Pj.PsiCoord 𝔪.D.toPre (hD.xe (hD.xe.symm (𝔪.e₈ mu))) (u * t mu) := by
      rw [AddEquiv.apply_symm_apply]; exact hu
    obtain ⟨u', hu'⟩ := GlobalTheory.PelCoordPull.psiCoord_pull hD _ _ hr
    refine ⟨u' * Units.map j.toMonoidHom u, ?_⟩
    convert hu' using 1
    · exact AddEquiv.trans_apply _ _ _
    · rw [map_mul]
      simp [_root_.mul_assoc]
  · show (fracMap hj).comp 𝔪.yK r = kf (𝔪.yK r)
    rw [hkf]; rfl
  · rintro a mu ⟨p, x, hpy, hqx, hxφ⟩
    obtain ⟨p', x', σ, hσ, hp'y, hq', hx'⟩ := yy_pull' hV hV' j hj hl 𝔪.semi 𝔪.U D' hD A' gA U' hPU hgA hrel _ hlev p x hqx
    refine ⟨p', x', ?_, hq', ?_⟩
    · show p'.y = (𝔪.e₈.trans hD.xe.symm) mu
      rw [AddEquiv.trans_apply, hp'y, hpy]
    · show x'.left ≫ gA ≫ 𝔪.φ = spMap ((algebraMap (FractionRing V') (AlgebraicClosure (FractionRing V'))).comp
          ((fracMap hj).comp 𝔪.yK)) ≫ (X₁.ρ.pt a).left
      rw [← Category.assoc, hx', Category.assoc, hxφ, ← Category.assoc, ← spMap_comp]
      congr 2
      rw [← RingHom.comp_assoc, hσ, RingHom.comp_assoc]

end GlobalTheory.GSep.MemBC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedMemberBaseChangeInjectiveLocalHom =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedMemberBaseChangeInjectiveLocalHomStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedMemberBaseChangeInjectiveLocalHomStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasTraitsOnOfHasTraitsP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedMemberBaseChangeInjectiveLocalHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedMemberBaseChangeInjectiveLocalHomStatement =====
