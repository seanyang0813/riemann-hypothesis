module

public import Mathlib.Algebra.Category.ModuleCat.Abelian
public import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import GroundTheory.ProfiniteCohomology.FilteredHomology
public import Mathlib.RepresentationTheory.Rep.Basic
public import GroundTheory.GlobalFields.HerbrandQuotients.CycTateNegOneOrbitEquivSymmMk
public import GroundTheory.ProfiniteCohomology.ContinuousCochains.Functoriality
public import GroundTheory.ProfiniteCohomology.DiscreteModules.IsDiscreteRepIffForallExistsOpenNormalSubgroup
public import GroundTheory.ProfiniteCohomology.ShapiroDefs
public import GroundTheory.ProfiniteCohomology.CohomologyFunctoriality.Naturality
import GroundTheory.ProfiniteCohomology.Shapiro

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleCohomology.Product, GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleCohomology.IsDiscreteRepCoindStabRep

-- ===== clump member: GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleCohomology.Product =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleCohomology.Product", "h": "module\n\npublic import Mathlib.Algebra.Category.ModuleCat.Abelian\npublic import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import GroundTheory.ProfiniteCohomology.FilteredHomology\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RepresentationTheory.Rep.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory Limits

universe u

section Complex

variable {R : Type u} [Ring R] {ι' : Type*} {c : ComplexShape ι'} {ι : Type*}
  {K : HomologicalComplex (ModuleCat.{u} R) c} {L : ι → HomologicalComplex (ModuleCat.{u} R) c}

theorem homologyMap_pi_bijective (p : ∀ i, K ⟶ L i)
    (hp : ∀ m, Function.Bijective fun (x : K.X m) (i : ι) => ((p i).f m).hom x) (n : ι') :
    Function.Bijective fun (x : K.homology n) (i : ι) =>
      (HomologicalComplex.homologyMap (p i) n).hom x := by
  constructor
  · intro x y hxy
    rw [← sub_eq_zero]
    obtain ⟨z, hz⟩ := (ModuleCat.epi_iff_surjective (K.homologyπ n)).1 inferInstance (x - y)
    have h0 : ∀ i, (HomologicalComplex.homologyMap (p i) n).hom (x - y) = 0 := fun i => by
      rw [map_sub, sub_eq_zero]
      exact congrFun hxy i
    rw [← hz] at h0 ⊢
    have hw : ∀ i, ∃ w : (L i).X (c.prev n),
        ((L i).d (c.prev n) n).hom w = ((p i).f n).hom ((K.iCycles n).hom z) := fun i => by
      have h := h0 i
      rw [homologyMap_homologyπ_apply, homologyπ_eq_zero_iff, iCycles_cyclesMap_apply] at h
      exact h
    choose w hw using hw
    obtain ⟨v, hv⟩ := (hp (c.prev n)).2 w
    rw [homologyπ_eq_zero_iff]
    refine ⟨v, (hp n).1 (funext fun i => ?_)⟩
    have hvi : ((p i).f (c.prev n)).hom v = w i := congrFun hv i
    change ((p i).f n).hom ((K.d (c.prev n) n).hom v) = ((p i).f n).hom ((K.iCycles n).hom z)
    rw [hom_f_d_apply, hvi, hw i]
  · intro y
    have hz : ∀ i, ∃ z : (L i).cycles n, ((L i).homologyπ n).hom z = y i := fun i =>
      (ModuleCat.epi_iff_surjective _).1 inferInstance (y i)
    choose z hz using hz
    obtain ⟨x, hx⟩ := (hp n).2 fun i => ((L i).iCycles n).hom (z i)
    have hxi : ∀ i, ((p i).f n).hom x = ((L i).iCycles n).hom (z i) := fun i => congrFun hx i
    have hdx : (K.d n (c.next n)).hom x = 0 := by
      refine (hp (c.next n)).1 (funext fun i => ?_)
      change ((p i).f (c.next n)).hom ((K.d n (c.next n)).hom x) = ((p i).f (c.next n)).hom 0
      rw [map_zero, hom_f_d_apply, hxi]
      exact iCycles_d_apply _ _ _ _
    obtain ⟨w, hw⟩ := exists_iCycles_eq K x hdx
    refine ⟨(K.homologyπ n).hom w, funext fun i => ?_⟩
    change (HomologicalComplex.homologyMap (p i) n).hom ((K.homologyπ n).hom w) = y i
    rw [homologyMap_homologyπ_apply, ← hz i]
    congr 1
    apply (ModuleCat.mono_iff_injective ((L i).iCycles n)).1 inferInstance
    rw [iCycles_cyclesMap_apply, hw, hxi]

end Complex

section GroupCohomology

variable {k G : Type u} [CommRing k] [Group G] {ι : Type*} {P : Rep.{u} k G}
  {A : ι → Rep.{u} k G}

end GroupCohomology

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleCohomology.Product =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleCohomology.IsDiscreteRepCoindStabRep =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleCohomology.IsDiscreteRepCoindStabRep", "h": "module\n\npublic import GroundTheory.GlobalFields.HerbrandQuotients.CycTateNegOneOrbitEquivSymmMk\npublic import GroundTheory.ProfiniteCohomology.ContinuousCochains.Functoriality\npublic import GroundTheory.ProfiniteCohomology.DiscreteModules.IsDiscreteRepIffForallExistsOpenNormalSubgroup\npublic import GroundTheory.ProfiniteCohomology.ShapiroDefs\npublic import GroundTheory.ProfiniteCohomology.CohomologyFunctoriality.Naturality\npublic import GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleCohomology.Product\nimport GroundTheory.ProfiniteCohomology.Shapiro\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory Limits GroundTheory.Global

universe u

section Product

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [DiscreteTopology G]
  {ι : Type*} {P : Rep.{u} k G} {A : ι → Rep.{u} k G}

theorem cohomology_pi_bijective (p : ∀ i, P ⟶ A i)
    (hp : Function.Bijective fun (x : P) (i : ι) => (p i).hom x) (n : ℕ) :
    Function.Bijective fun (x : cohomology P n) (i : ι) =>
      (cohomologyMapAlong (MonoidHom.id G) continuous_id (p i) n).hom x := by
  refine homologyMap_pi_bijective (fun i => cochainsMapAlong (MonoidHom.id G) continuous_id (p i))
    (fun m => ⟨fun f f' h => ?_, fun F => ?_⟩) n
  · apply Subtype.ext
    funext g
    apply hp.1
    funext i
    exact congrFun (congrArg Subtype.val (congrFun h i)) g
  · refine ⟨⟨fun g => Function.surjInv hp.2 (fun i => (F i).1 g), IsLocallyConstant.of_discrete _⟩,
      funext fun i => Subtype.ext (funext fun g => ?_)⟩
    exact congrFun (Function.surjInv_eq hp.2 (fun i => (F i).1 g)) i

end Product

section Stabilizer

variable {k G X : Type u} [CommRing k] [Group G] [MulAction G X]
  {M : X → Type u} [∀ x, AddCommGroup (M x)] [∀ x, Module k (M x)]
  {ρ : Representation k G (∀ x, M x)} (hρ : PermutesFactors ρ) {x₀ : X} {D : Subgroup G}
  (hD : ∀ g, g ∈ D ↔ g • x₀ = x₀)


include hρ in
theorem _root_.GroundTheory.Global.PermutesFactors.apply_base_eq {g : G} (hg : g • x₀ = x₀) {f f' : ∀ x, M x}
    (h : f x₀ = f' x₀) : ρ g f x₀ = ρ g f' x₀ := by
  have := hρ.apply_eq g h
  rwa [hg] at this


variable (ρ x₀ D) in
open Classical in
noncomputable def stabRep : Representation k D (M x₀) where
  toFun d := (LinearMap.proj x₀).comp ((ρ d).comp (LinearMap.single k M x₀))
  map_one' := by
    ext a
    simp
  map_mul' d d' := by
    ext a
    simp only [Subgroup.coe_mul, map_mul, LinearMap.coe_comp, LinearMap.coe_proj,
      Function.comp_apply, Function.eval, LinearMap.coe_single, Module.End.mul_apply]
    exact hρ.apply_base_eq ((hD d).1 d.2) (Pi.single_eq_same x₀ _).symm

open Classical in
theorem stabRep_apply (d : D) (a : M x₀) :
    stabRep ρ hρ x₀ D hD d a = ρ d (Pi.single x₀ a) x₀ :=
  rfl

theorem apply_base_eq_stabRep (d : D) (f : ∀ x, M x) :
    ρ d f x₀ = stabRep ρ hρ x₀ D hD d (f x₀) := by
  classical
  rw [stabRep_apply]
  exact hρ.apply_base_eq ((hD d).1 d.2) (Pi.single_eq_same x₀ _).symm

noncomputable def orbitProj :
    Rep.res D.subtype (Rep.of ρ) ⟶ Rep.of (stabRep ρ hρ x₀ D hD) :=
  Rep.ofHom ⟨LinearMap.proj x₀, fun d => LinearMap.ext fun f =>
    apply_base_eq_stabRep hρ hD d f⟩

noncomputable def toCoindLinear :
    (∀ x, M x) →ₗ[k] Representation.coindV D.subtype (stabRep ρ hρ x₀ D hD) where
  toFun f := ⟨fun h => ρ h f x₀, fun d h => by
    change ρ (d * h) f x₀ = stabRep ρ hρ x₀ D hD d (ρ h f x₀)
    rw [map_mul, Module.End.mul_apply, apply_base_eq_stabRep hρ hD]⟩
  map_add' f f' := by
    apply Subtype.ext
    funext h
    simp only [map_add (f := _), Pi.add_apply, Submodule.coe_add]
  map_smul' c f := by
    apply Subtype.ext
    funext h
    simp only [map_smul, Pi.smul_apply, RingHom.id_apply, Submodule.coe_smul]

variable [MulAction.IsPretransitive G X]

theorem toCoindLinear_bijective : Function.Bijective (toCoindLinear hρ hD) := by
  constructor
  · rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro f hf
    funext y
    obtain ⟨g, rfl⟩ := MulAction.exists_smul_eq G x₀ y
    have h0 : ρ g⁻¹ f x₀ = 0 := congrFun (congrArg Subtype.val hf) g⁻¹
    have := hρ g (ρ g⁻¹ f) x₀ h0
    rwa [Representation.self_inv_apply] at this
  · intro F
    classical
    let r : X → G := fun y => (MulAction.exists_smul_eq G x₀ y).choose
    refine ⟨fun y => ρ (r y) (Pi.single x₀ (F.1 (r y)⁻¹)) y, Subtype.ext (funext fun h => ?_)⟩
    change ρ h (fun y => ρ (r y) (Pi.single x₀ (F.1 (r y)⁻¹)) y) x₀ = F.1 h
    set y := h⁻¹ • x₀ with hy
    have hry : r y • x₀ = y := (MulAction.exists_smul_eq G x₀ y).choose_spec
    have hhy : h • y = x₀ := by rw [hy, smul_inv_smul]
    have key : ∀ {z : X} (hz : h • y = z) {f f' : ∀ x, M x}, f y = f' y → ρ h f z = ρ h f' z := by
      intro z hz f f' hff'
      subst hz
      exact hρ.apply_eq h hff'
    refine (key hhy (f := fun z => ρ (r z) (Pi.single x₀ (F.1 (r z)⁻¹)) z)
      (f' := ρ (r y) (Pi.single x₀ (F.1 (r y)⁻¹))) rfl).trans ?_
    rw [← Module.End.mul_apply, ← map_mul]
    have hd : h * r y ∈ D := (hD _).2 (by rw [mul_smul, hry, hhy])
    have h1 := apply_base_eq_stabRep hρ hD ⟨h * r y, hd⟩ (Pi.single x₀ (F.1 (r y)⁻¹))
    simp only [Pi.single_eq_same] at h1
    rw [h1, ← F.2 ⟨h * r y, hd⟩ (r y)⁻¹]
    simp

noncomputable def orbitCoindIso :
    Rep.of ρ ≅ Rep.coind D.subtype (Rep.of (stabRep ρ hρ x₀ D hD)) :=
  Rep.mkIso (Representation.Equiv.mk
    (LinearEquiv.ofBijective (toCoindLinear hρ hD) (toCoindLinear_bijective hρ hD))
    fun g => LinearMap.ext fun f => Subtype.ext (funext fun h => by
      change ρ h (ρ g f) x₀ = ρ (h * g) f x₀
      rw [map_mul, Module.End.mul_apply]))

end Stabilizer

section Shapiro

variable {k G X : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  [CompactSpace G] [MulAction G X] [MulAction.IsPretransitive G X]
  {M : X → Type u} [∀ x, AddCommGroup (M x)] [∀ x, Module k (M x)]
  {ρ : Representation k G (∀ x, M x)} (hρ : PermutesFactors ρ) {x₀ : X} (U : OpenSubgroup G)
  (hU : ∀ g, g ∈ (U : Subgroup G) ↔ g • x₀ = x₀)
  [IsDiscreteRep (Rep.of ρ)] [IsDiscreteRep (Rep.of (stabRep ρ hρ x₀ (U : Subgroup G) hU))]

instance isDiscreteRep_coind_stabRep :
    IsDiscreteRep (Rep.coind (U : Subgroup G).subtype (Rep.of (stabRep ρ hρ x₀ (U : Subgroup G) hU))) :=
  isDiscreteRep_coind U _

theorem orbitProj_eq_shapiroMap (n : ℕ) :
    cohomologyMapAlong (U : Subgroup G).subtype (continuous_subgroup_subtype _)
      (orbitProj hρ hU) n =
      cohomologyMap (orbitCoindIso hρ hU).hom n ≫
        shapiroMap U (Rep.of (stabRep ρ hρ x₀ (U : Subgroup G) hU)) n := by
  have h : orbitProj hρ hU = (Rep.resFunctor (U : Subgroup G).subtype).map
      (orbitCoindIso hρ hU).hom ≫
      coindEvalOne (U : Subgroup G) (Rep.of (stabRep ρ hρ x₀ (U : Subgroup G) hU)) := by
    ext f
    change f x₀ = ρ 1 f x₀
    rw [map_one, Module.End.one_apply]
  rw [← cohomologyMapAlong_id_eq_cohomologyMap, shapiroMap_eq, ← cohomologyMapAlong_comp, ← h]
  rfl

instance isIso_orbitProj (n : ℕ) :
    IsIso (cohomologyMapAlong (U : Subgroup G).subtype (continuous_subgroup_subtype _)
      (orbitProj hρ hU) n) := by
  rw [orbitProj_eq_shapiroMap]
  have : IsIso (cohomologyMap (orbitCoindIso hρ hU).hom n) :=
    ⟨cohomologyMap (orbitCoindIso hρ hU).inv n, by
      rw [← cohomologyMap_comp, Iso.hom_inv_id, cohomologyMap_id], by
      rw [← cohomologyMap_comp, Iso.inv_hom_id, cohomologyMap_id]⟩
  infer_instance

noncomputable def orbitShapiroIso (n : ℕ) :
    cohomology (Rep.of ρ) n ≅ cohomology (Rep.of (stabRep ρ hρ x₀ (U : Subgroup G) hU)) n :=
  asIso (cohomologyMapAlong (U : Subgroup G).subtype (continuous_subgroup_subtype _)
    (orbitProj hρ hU) n)

end Shapiro

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleCohomology.IsDiscreteRepCoindStabRep =====
