module

public import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion
import Mathlib.Tactic.Linter.Style

@[expose] public section

universe u

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry

namespace FunctorialResolution.Blowup

theorem range_coprod_inr_eq_compl (X Y : Scheme.{u}) :
    Set.range ⇑(coprod.inr : Y ⟶ X ⨿ Y).base
      = (Set.range ⇑(coprod.inl : X ⟶ X ⨿ Y).base)ᶜ := by
  have h : IsCompl (Set.range ⇑(coprod.inl : X ⟶ X ⨿ Y).base)
      (Set.range ⇑(coprod.inr : Y ⟶ X ⨿ Y).base) := isCompl_range_inl_inr ..
  exact h.compl_eq.symm

theorem isClosed_range_coprod_inl (X Y : Scheme.{u}) :
    IsClosed (Set.range ⇑(coprod.inl : X ⟶ X ⨿ Y).base) := by
  have h : IsCompl (Set.range ⇑(coprod.inl : X ⟶ X ⨿ Y).base)
      (Set.range ⇑(coprod.inr : Y ⟶ X ⨿ Y).base) := isCompl_range_inl_inr X Y
  have hopen : IsOpen (Set.range ⇑(coprod.inr : Y ⟶ X ⨿ Y).base) :=
    (coprod.inr : Y ⟶ X ⨿ Y).isOpenEmbedding.isOpen_range
  rw [← isOpen_compl_iff, h.compl_eq]
  exact hopen

instance instIsClosedImmersionCoprodInl (X Y : Scheme.{u}) :
    IsClosedImmersion (coprod.inl : X ⟶ X ⨿ Y) := by
  constructor
  exact ⟨(coprod.inl : X ⟶ X ⨿ Y).isOpenEmbedding.toIsEmbedding,
    isClosed_range_coprod_inl X Y⟩

instance instQuasiCompactCoprodInl (X Y : Scheme.{u}) :
    QuasiCompact (coprod.inl : X ⟶ X ⨿ Y) := by
  constructor
  intro U _ hU
  exact (coprod.inl : X ⟶ X ⨿ Y).isClosedEmbedding.isCompact_preimage hU

section

variable {ι : Type u} (X : ι → Scheme.{u}) [HasCoproduct X]

theorem sigmaι_base_ne {i j : ι} (hij : i ≠ j) (x : ↥(X i)) (y : ↥(X j)) :
    (Sigma.ι X i).base x ≠ (Sigma.ι X j).base y := by
  intro h
  exact hij (congrArg Sigma.fst ((sigmaι_eq_iff X i j x y).mp h))

theorem isClosed_range_sigmaι (j : ι) : IsClosed (Set.range ⇑(Sigma.ι X j).base) := by
  rw [← isOpen_compl_iff, isOpen_iff_forall_mem_open]
  intro x hx
  rw [Set.mem_compl_iff] at hx
  obtain ⟨⟨i, y⟩, hxy⟩ := (sigmaMk X).surjective x
  obtain rfl : (Sigma.ι X i).base y = x := (sigmaMk_mk X i y).symm.trans hxy
  have hij : i ≠ j := by
    intro h
    subst h
    exact hx ⟨y, rfl⟩
  refine ⟨Set.range ⇑(Sigma.ι X i).base, ?_,
    (Sigma.ι X i).isOpenEmbedding.isOpen_range, Set.mem_range_self y⟩
  intro u hu
  obtain ⟨z, rfl⟩ := hu
  rw [Set.mem_compl_iff]
  intro hmem
  obtain ⟨w, hw⟩ := hmem
  exact sigmaι_base_ne X hij z w hw.symm

theorem quasiCompact_sigmaι (j : ι) : QuasiCompact (Sigma.ι X j) := by
  constructor
  intro U _ hU
  have hce : Topology.IsClosedEmbedding ⇑(Sigma.ι X j).base :=
    ⟨(Sigma.ι X j).isOpenEmbedding.toIsEmbedding, isClosed_range_sigmaι X j⟩
  exact hce.isCompact_preimage hU

instance instQuasiCompactSigmaι (j : ι) : QuasiCompact (Sigma.ι X j) :=
  quasiCompact_sigmaι X j

end

end FunctorialResolution.Blowup
