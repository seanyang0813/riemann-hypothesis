module

import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenConnectedComponentOfNoetherianSpace
public import Mathlib.AlgebraicGeometry.IdealSheaf.Functorial
public import Mathlib.Combinatorics.Quiver.ReflQuiver
import Mathlib.Tactic.Linter.Style

@[expose] public section

universe u v

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry TopologicalSpace Opposite

namespace FunctorialResolution.Blowup

theorem noetherianSpace_toScheme (X : Scheme.{u}) [NoetherianSpace ↥X] (U : X.Opens) :
    NoetherianSpace ↥(U.toScheme) := by
  have h : Topology.IsInducing (fun x : { y : ↥X // y ∈ U } => (x : ↥X)) := ⟨rfl⟩
  exact h.noetherianSpace

instance instNoetherianSpaceToScheme (X : Scheme.{u}) [NoetherianSpace ↥X] (U : X.Opens) :
    NoetherianSpace ↥(U.toScheme) :=
  noetherianSpace_toScheme X U

private theorem le_comap_map_of_isClosedImmersion {S X : Scheme.{u}} (ι : S ⟶ X)
    [IsClosedImmersion ι] (Z : S.IdealSheafData) : Z ≤ (Z.map ι).comap ι := by
  have hmapdef : Z.map ι = Scheme.Hom.ker (Z.subschemeι ≫ ι) := rfl
  have hcomapdef : (Z.map ι).comap ι
      = Scheme.Hom.ker (pullback.fst ι (Z.map ι).subschemeι) := rfl
  have hle : Scheme.Hom.ker (Z.subschemeι ≫ ι)
      ≤ Scheme.Hom.ker (Z.map ι).subschemeι := by
    rw [Scheme.IdealSheafData.ker_subschemeι, ← hmapdef]
  have hu : IsClosedImmersion.lift (Z.subschemeι ≫ ι) (Z.map ι).subschemeι hle
      ≫ (Z.subschemeι ≫ ι) = (Z.map ι).subschemeι :=
    IsClosedImmersion.lift_fac _ _ hle
  set u := IsClosedImmersion.lift (Z.subschemeι ≫ ι) (Z.map ι).subschemeι hle with hudef
  have hk : (pullback.snd ι (Z.map ι).subschemeι ≫ u) ≫ Z.subschemeι
      = pullback.fst ι (Z.map ι).subschemeι := by
    have h2 : ((pullback.snd ι (Z.map ι).subschemeι ≫ u) ≫ Z.subschemeι) ≫ ι
        = pullback.fst ι (Z.map ι).subschemeι ≫ ι := by
      rw [Category.assoc, Category.assoc, hu]
      exact pullback.condition.symm
    exact (cancel_mono ι).mp h2
  rw [hcomapdef, ← hk, Scheme.Hom.ker_comp]
  calc Z = (⊥ : Z.subscheme.IdealSheafData).map Z.subschemeι := by
        rw [Scheme.IdealSheafData.map_bot, Scheme.IdealSheafData.ker_subschemeι]
    _ ≤ _ := Scheme.IdealSheafData.map_mono Z.subschemeι bot_le

theorem comap_map_of_isClosedImmersion {S X : Scheme.{u}} (ι : S ⟶ X)
    [IsClosedImmersion ι] (Z : S.IdealSheafData) :
    (Z.map ι).comap ι = Z :=
  le_antisymm (Scheme.IdealSheafData.comap_map_le Z ι) (le_comap_map_of_isClosedImmersion ι Z)

theorem isOpen_connectedComponent_of_noetherianSpace (T : Type v) [TopologicalSpace T]
    [TopologicalSpace.NoetherianSpace T] (x : T) : IsOpen (connectedComponent x) := by
  apply CrystallineSemistableComparison.isOpen_connectedComponent_of_noetherianSpace

end FunctorialResolution.Blowup

namespace TopologicalSpace.NoetherianSpace

theorem finite_range_connectedComponent (Y : Type*) [TopologicalSpace Y] [NoetherianSpace Y] :
    (Set.range fun x : Y => connectedComponent x).Finite := by
  classical
  have hfin : (irreducibleComponents Y).Finite :=
    TopologicalSpace.NoetherianSpace.finite_irreducibleComponents
  refine Set.Finite.subset (hfin.image fun Z => ⋃ z ∈ Z, connectedComponent z) ?_
  rintro _ ⟨x, rfl⟩
  refine ⟨irreducibleComponent x, irreducibleComponent_mem_irreducibleComponents x, ?_⟩
  have hsub : irreducibleComponent x ⊆ connectedComponent x :=
    (irreducibleComponent_mem_irreducibleComponents x).1.2.isPreconnected.subset_connectedComponent
      mem_irreducibleComponent
  show (⋃ z ∈ irreducibleComponent x, connectedComponent z) = connectedComponent x
  apply Set.Subset.antisymm
  · intro y hy
    obtain ⟨z, hz, hyz⟩ := Set.mem_iUnion₂.mp hy
    rwa [← connectedComponent_eq (hsub hz)] at hyz
  · intro y hy
    exact Set.mem_biUnion mem_irreducibleComponent hy

theorem isClosed_setOf_connectedComponent_subset (Y : Type*) [TopologicalSpace Y]
    [NoetherianSpace Y] (A : Set Y) : IsClosed {x : Y | connectedComponent x ⊆ A} := by
  classical
  have hfin :
      {C : Set Y | C ∈ Set.range (fun x : Y => connectedComponent x) ∧ C ⊆ A}.Finite := by
    refine (finite_range_connectedComponent Y).subset ?_
    rintro C ⟨hC, -⟩
    exact hC
  have heq : {x : Y | connectedComponent x ⊆ A}
      = ⋃ C ∈ {C : Set Y | C ∈ Set.range (fun x : Y => connectedComponent x) ∧ C ⊆ A}, C := by
    apply Set.Subset.antisymm
    · intro x hx
      have hmem : connectedComponent x ∈
          {C : Set Y | C ∈ Set.range (fun x : Y => connectedComponent x) ∧ C ⊆ A} :=
        ⟨⟨x, rfl⟩, hx⟩
      exact Set.mem_biUnion hmem mem_connectedComponent
    · intro x hx
      obtain ⟨C, hC, hxC⟩ := Set.mem_iUnion₂.mp hx
      obtain ⟨⟨y, hy⟩, hCA⟩ := hC
      have hy' : connectedComponent y = C := hy
      rw [← hy'] at hxC hCA
      show connectedComponent x ⊆ A
      rw [← connectedComponent_eq hxC]
      exact hCA
  rw [heq]
  refine hfin.isClosed_biUnion ?_
  rintro C ⟨⟨x, hx⟩, -⟩
  have hC : C = connectedComponent x := hx.symm
  rw [hC]
  exact isClosed_connectedComponent

end TopologicalSpace.NoetherianSpace

namespace AlgebraicGeometry

namespace Scheme

theorem presheaf_map_eq_of_parallel (X₁ : Scheme.{u}) {A B : (X₁.Opens)ᵒᵖ} (g₁ g₂ : A ⟶ B) :
    X₁.presheaf.map g₁ = X₁.presheaf.map g₂ :=
  congrArg X₁.presheaf.map (Quiver.Hom.unop_inj (Subsingleton.elim _ _))

namespace Hom

theorem appLE_congr_hom {A B : Scheme.{u}} {f g : A ⟶ B} (hfg : f = g) (O : B.Opens)
    (S : A.Opens) (h1 : S ≤ f ⁻¹ᵁ O) (h2 : S ≤ g ⁻¹ᵁ O) :
    Scheme.Hom.appLE f O S h1 = Scheme.Hom.appLE g O S h2 := by
  subst hfg
  rfl

theorem range_comp_base {A B C : Scheme.{u}} (f : A ⟶ B) (g : B ⟶ C) :
    Set.range (f ≫ g).base = g.base '' Set.range f.base := by
  have hcomp : ∀ x : A, (f ≫ g).base x = g.base (f.base x) := fun _ => rfl
  apply Set.Subset.antisymm
  · rintro z ⟨x, rfl⟩
    exact ⟨f.base x, ⟨x, rfl⟩, (hcomp x).symm⟩
  · rintro z ⟨y, ⟨x, rfl⟩, rfl⟩
    exact ⟨x, hcomp x⟩

end Hom

end Scheme

theorem quasiCompact_of_compactSpace_of_subsingleton {W S : Scheme.{u}} (f : W ⟶ S)
    [CompactSpace ↥W] [Subsingleton ↥S] : QuasiCompact f := by
  constructor
  intro U _ _
  rcases Set.eq_empty_or_nonempty (f.base ⁻¹' U) with h | ⟨w, hw⟩
  · rw [h]
    exact isCompact_empty
  · have h2 : f.base ⁻¹' U = Set.univ := by
      refine Set.eq_univ_of_forall fun w' => ?_
      have hww : f.base w' = f.base w := Subsingleton.elim _ _
      show f.base w' ∈ U
      rw [hww]
      exact hw
    rw [h2]
    exact isCompact_univ

end AlgebraicGeometry
