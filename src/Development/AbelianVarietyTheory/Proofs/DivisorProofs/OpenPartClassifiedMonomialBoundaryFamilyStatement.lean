module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial
public import Development.AbelianVarietyTheory.Definitions.Divisors.GalRigidOfSurjective
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryModuliObjectSpreadNormalDomainStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsProperRelAmpleKTrivOfTrivialisationsGenerateStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ShimuraObjectPullbackCompCancel
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPointStatement
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PolarizationTransferModels
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
import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamily, Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamilyStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamily =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamily", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GalRigidOfSurjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryModuliObjectSpreadNormalDomainStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsProperRelAmpleKTrivOfTrivialisationsGenerateStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ShimuraObjectPullbackCompCancel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPointStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PolarizationTransferModels\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.UCanon.OpenPart

theorem spMap_comp' {A B C : Type} [CommRing A] [CommRing B] [CommRing C] (f : A →+* B) (g : B →+* C) :
    spMap g ≫ spMap f = spMap (g.comp f) := by
  simp only [spMap, CommRingCat.ofHom_comp, Spec.map_comp]

theorem pow_eq_one_of_left_eq {S T : Scheme.{0}} {G : Over S} [GrpObj G] {a b : T ⟶ S} (h : a = b)
    (u : Over.mk a ⟶ G) (v : Over.mk b ⟶ G) (huv : u.left = v.left) {n : ℕ} (hu : u ^ n = 1) : v ^ n = 1 := by
  subst h
  obtain rfl : u = v := Over.OverMorphism.ext huv
  exact hu

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem torsRat_of_point {Dw : Datum H} {l : Geo.Tor.Level H} (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E))
    {A : Type} [CommRing A] [IsDomain A] {K₀ : Type} [Field K₀] (gA : A →+* K₀) (ρ : K₀ →+* FractionRing A)
    (hρ : ρ.comp gA = algebraMap A (FractionRing A)) (tO : SAB H (Sp A)) (tK : SAB H (Sp K₀))
    (k : SABMap tK tO (spMap gA)) (y : Sp K₀ ⟶ Xo.XF c) (mK : SABMap tK Xo.univ.t (y ≫ pullback.fst _ _)) :
    GlobalTheory.TChart.TorsRat tO.G l.M' := by
  intro K _ _ κ x hx
  let κ' : K₀ →+* K := κ.comp ρ
  have e₀ : spMap κ' ≫ spMap gA = spMap κ ≫ jK A := by
    rw [_root_.GlobalTheory.spMap_comp_ring, _root_.GlobalTheory.spMap_comp_ring]
    show spMap (κ.comp (ρ.comp gA)) = _
    rw [hρ]
  have hw : x.left ≫ tO.G.hom = spMap κ' ≫ spMap gA := (Over.w x).trans e₀.symm
  let xK : Over.mk (spMap κ') ⟶ tK.G :=
    Over.homMk (k.cart.1.lift x.left (spMap κ') hw) (k.cart.1.lift_snd _ _ _)
  have hxK : xK ^ l.M' = 1 := by
    have hpush : pushHom k.cart (Over.mk (spMap κ')) xK ^ l.M' = 1 :=
      pow_eq_one_of_left_eq e₀.symm x _ (k.cart.1.lift_fst _ _ _).symm hx
    apply (fun (u v : Over.mk (spMap κ') ⟶ tK.G) (e : pushHom k.cart (Over.mk (spMap κ')) u = pushHom k.cart (Over.mk (spMap κ')) v) =>
      Over.OverMorphism.ext (k.cart.1.hom_ext (congrArg (fun q => q.left) e) (by rw [Over.w, Over.w])))
    rw [map_pow, hpush, map_one]
  let x' := pushHom mK.cart (Over.mk (spMap κ')) xK
  have hx' : x' ^ l.M' = 1 := by rw [← map_pow, hxK, map_one]
  obtain ⟨x₀, -, hx₀⟩ := _root_.GlobalTheory.XFTorsion.torsion_rational Xo c φ K₀ K κ' y x' hx'
  have w₀ : x₀.left ≫ Xo.univ.t.G.hom = 𝟙 _ ≫ (y ≫ pullback.fst _ _) := by
    rw [Category.id_comp]; exact Over.w x₀
  let s₀ := mK.cart.1.lift x₀.left (𝟙 _) w₀
  have hs₀ : s₀ ≫ tK.G.hom = 𝟙 _ := mK.cart.1.lift_snd _ _ _
  have hK : xK.left = spMap κ' ≫ s₀ := by
    apply mK.cart.1.hom_ext
    · rw [Category.assoc, mK.cart.1.lift_fst]
      exact hx₀
    · rw [Category.assoc, hs₀]
      erw [Category.comp_id]
      exact k.cart.1.lift_snd _ _ _
  have hover : (spMap ρ ≫ s₀ ≫ k.φ) ≫ tO.G.hom = jK A := by
    rw [Category.assoc, Category.assoc, k.cart.1.w, ← Category.assoc s₀, hs₀, Category.id_comp, _root_.GlobalTheory.spMap_comp_ring, hρ]
  refine ⟨Over.homMk (spMap ρ ≫ s₀ ≫ k.φ) hover, ?_⟩
  show x.left = spMap κ ≫ spMap ρ ≫ s₀ ≫ k.φ
  have e₁ : spMap κ ≫ spMap ρ = spMap κ' := _root_.GlobalTheory.spMap_comp_ring _ _
  calc x.left = xK.left ≫ k.φ := (k.cart.1.lift_fst _ _ _).symm
    _ = (spMap κ' ≫ s₀) ≫ k.φ := by rw [hK]
    _ = spMap κ ≫ spMap ρ ≫ s₀ ≫ k.φ := by rw [← e₁]; simp only [Category.assoc]

end GlobalTheory.UCanon.OpenPart

namespace GlobalTheory.UCanon.OpenPart

theorem ring_facts {R : Type} [CommRing R] [IsDomain R] (f : R) (hf : f ≠ 0) (A : Type) [CommRing A] [IsDomain A]
    [Algebra R A] [IsLocalization.Away f A] :
    ∃ (gA : A →+* FractionRing R) (ρ : FractionRing R →+* FractionRing A),
      gA.comp (algebraMap R A) = algebraMap R (FractionRing R) ∧ ρ.comp gA = algebraMap A (FractionRing A) ∧
      ∀ g : A →+* FractionRing R, g.comp (algebraMap R A) = algebraMap R (FractionRing R) → g = gA := by
  have hle : Submonoid.powers f ≤ nonZeroDivisors R := powers_le_nonZeroDivisors_of_noZeroDivisors hf
  have hu : IsUnit (algebraMap R (FractionRing R) f) :=
    isUnit_iff_ne_zero.2 ((map_ne_zero_iff _ (IsFractionRing.injective R (FractionRing R))).2 hf)
  have hgA : (IsLocalization.Away.lift f hu : A →+* FractionRing R).comp (algebraMap R A) = algebraMap R (FractionRing R) :=
    IsLocalization.Away.lift_comp _ hu
  have hinj : Function.Injective ((algebraMap A (FractionRing A)).comp (algebraMap R A)) := by
    rw [RingHom.coe_comp]
    exact (IsFractionRing.injective A (FractionRing A)).comp (IsLocalization.injective A hle)
  refine ⟨IsLocalization.Away.lift f hu, IsFractionRing.lift (K := FractionRing R) hinj, hgA, ?_, fun g hg =>
    IsLocalization.ringHom_ext (Submonoid.powers f) (hg.trans hgA.symm)⟩
  apply IsLocalization.ringHom_ext (Submonoid.powers f)
  rw [RingHom.comp_assoc, hgA]
  exact RingHom.ext fun r => by rw [RingHom.comp_apply, IsFractionRing.lift_algebraMap, RingHom.comp_apply]

end GlobalTheory.UCanon.OpenPart

namespace GlobalTheory.UCanon.OpenPart

theorem openCls : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H} (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E)), ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], GlobalTheory.Mum.Base R → ∀ C : MonoFam Xo c φ R, OpenCls C := by
  intro E _ _ _ H Dw l Xo c φ R _ _ _ hR C
  obtain ⟨⟨hN, -, hIC, -⟩, -⟩ := id hR
  have hf0 : (∏ i, C.s i) ≠ 0 := Finset.prod_ne_zero_iff.2 fun i _ => C.s_ne_zero i
  have hle : Submonoid.powers (∏ i, C.s i) ≤ nonZeroDivisors R := powers_le_nonZeroDivisors_of_noZeroDivisors hf0
  haveI : IsDomain (Localization.Away (∏ i, C.s i)) := IsLocalization.isDomain_localization hle
  haveI : IsNoetherianRing (Localization.Away (∏ i, C.s i)) :=
    IsLocalization.isNoetherianRing (Submonoid.powers (∏ i, C.s i)) _ hN
  haveI : IsIntegrallyClosed (Localization.Away (∏ i, C.s i)) :=
    isIntegrallyClosed_of_isLocalization _ (Submonoid.powers (∏ i, C.s i)) hle

  let aR := algebraMap R (Localization.Away (∏ i, C.s i))
  let incl := (IntermediateField.inclusion c.le).toRingHom
  obtain ⟨gA, ρ, hgA, hρ, hgU⟩ := ring_facts _ hf0 (Localization.Away (∏ i, C.s i))
  have eR : spMap gA ≫ spMap aR = jK R := by rw [_root_.GlobalTheory.spMap_comp_ring, hgA]

  obtain ⟨tO, ⟨mO⟩⟩ := GlobalTheory.TraitOrder.exists_pull (spMap aR) C.t
  obtain ⟨hprop, hamp, hkt⟩ := _root_.GlobalTheory.UCanon.Principal.isProper_relAmple_kTriv_of_psiUnitOn R hR C.t C.P (∏ i, C.s i)
    (fun y => C.mono.psiUnitOn y fun p hp => hp) tO mO

  let s' : Sp (FractionRing R) ⟶ Sp (KA l) := (C.y ≫ pullback.fst _ _) ≫ Xo.s
  obtain ⟨oK, ⟨mK⟩⟩ := (GlobalTheory.UCanon.obj_pull_comp_cancel (D := Dw) (l := l)).1 Xo.s Xo.univ (C.y ≫ pullback.fst _ _) s' rfl
  obtain ⟨t', ⟨m₁⟩, ⟨m₂⟩⟩ := C.gen
  obtain ⟨k₁⟩ := GlobalTheory.TraitOrder.cancel (Category.id_comp _) m₂ mK.toSABMap
  obtain ⟨k₂⟩ := GlobalTheory.TraitOrder.comp (Category.id_comp _) m₁ k₁
  obtain ⟨k₃⟩ := GlobalTheory.TraitOrder.cancel eR mO k₂
  have htors := torsRat_of_point Xo c φ gA ρ hρ tO oK.t k₃ C.y mK.toSABMap
  let b' : c.F →+* Localization.Away (∏ i, C.s i) := aR.comp C.b
  have hs' : s' = spMap gA ≫ spMap (b'.comp incl) := by
    show (C.y ≫ pullback.fst _ _) ≫ Xo.s = _
    rw [Category.assoc, pullback.condition, ← Category.assoc, C.y_over, ← eR]
    simp only [spMap_comp']
  obtain ⟨o, ho, ⟨mo⟩⟩ := _root_.GlobalTheory.ObjSpread.exists_obj Dw l c _ b' tO hprop hamp hkt htors (FractionRing R) gA s' oK hs' k₃
  obtain ⟨fX, ⟨hfs, ⟨mf⟩⟩, -⟩ := Xo.rep (Sp (Localization.Away (∏ i, C.s i))) (spMap (b'.comp incl)) inferInstance o
  have hfs' : fX ≫ Xo.s = spMap b' ≫ spMap incl := hfs.trans (_root_.GlobalTheory.spMap_comp_ring _ _).symm
  subst ho
  refine ⟨pullback.lift fX (spMap b') hfs', o.t, ⟨mO⟩, ?_, fun g hg => ?_⟩
  · rw [pullback.lift_fst]
    exact ⟨mf.toSABMap⟩
  obtain ⟨g₀, rfl⟩ := Spec.map_surjective g
  have h₁ : CommRingCat.ofHom (algebraMap R (Localization.Away (∏ i, C.s i))) ≫ g₀ =
      CommRingCat.ofHom (algebraMap R (FractionRing R)) := Spec.map_injective (by rw [Spec.map_comp]; exact hg)
  have hg₀ : g₀ = CommRingCat.ofHom gA := by
    have e := hgU g₀.hom (by
      have := congrArg CommRingCat.Hom.hom h₁
      simpa using this)
    rw [← e]
    rfl
  subst hg₀
  obtain ⟨_, _, huK⟩ := Xo.rep (Sp (FractionRing R)) s' inferInstance oK
  apply pullback.hom_ext
  · rw [Category.assoc, pullback.lift_fst]
    obtain ⟨n₁, -⟩ := ((GlobalTheory.UCanon.obj_pull_comp_cancel (D := Dw) (l := l)).2 Xo.s (spMap (b'.comp incl)) s' Xo.univ o oK
      fX (spMap gA) mf).1 mo
    exact (huK _ ⟨by rw [Category.assoc, hfs]; exact hs'.symm, ⟨n₁⟩⟩).trans (huK _ ⟨rfl, ⟨mK⟩⟩).symm
  · rw [Category.assoc, pullback.lift_snd, C.y_over, ← eR, Category.assoc, _root_.GlobalTheory.spMap_comp_ring C.b aR]

end GlobalTheory.UCanon.OpenPart
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamily =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamilyStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamilyStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamily\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenPartClassifiedMonomialBoundaryFamilyStatement =====
