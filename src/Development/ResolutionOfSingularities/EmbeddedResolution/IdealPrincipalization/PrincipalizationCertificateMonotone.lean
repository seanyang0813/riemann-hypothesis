module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.PrincipalizationCertificate

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

private theorem forall_resolutionCertificate_of_subset {k : Type u} [Field k] {isOrder : Bool}
    {W : Scheme.{u}} {p : W ⟶ Spec (CommRingCat.of k)} {I : W.IdealSheafData} {m : ℕ}
    {Mem : Set ↥W} {Z : W.IdealSheafData} (h : ResolutionCertificate isOrder W p I m Mem Z) :
    ∀ Mem' : Set ↥W, Mem ⊆ Mem' → ResolutionCertificate isOrder W p I m Mem' Z := by
  refine ResolutionCertificate.rec
    (motive := fun isOrder W p I m Mem Z _ =>
      ∀ Mem' : Set ↥W, Mem ⊆ Mem' → ResolutionCertificate isOrder W p I m Mem' Z)
    ?_ ?_ ?_ ?_ ?_ h
  · intro isOrder W p I m Mem Z hmem Mem' hsub
    exact ResolutionCertificate.memory (Set.Subset.trans hmem hsub)
  · intro isOrder W p I m Mem Z hm Mem' _
    exact ResolutionCertificate.large hm
  · intro W p I m Mem Z M N μ hI hM hmu hZ _ ih Mem' hsub
    exact ResolutionCertificate.toOrder M N μ hI (Set.Subset.trans hM hsub) hmu hZ (ih Mem' hsub)
  · intro isOrder W p I m Mem Z U hU _ ih Mem' hsub
    exact ResolutionCertificate.localize U hU fun z hz =>
      ih z hz ((U z hz).ι.base ⁻¹' Mem') (Set.preimage_mono hsub)
  · intro W p N μ Mem Z U hU H hH hNsubH hZH J hJnone hJcomp hJloc _ ih Mem' hsub
    refine ResolutionCertificate.descend U hU H hH hNsubH hZH J hJnone hJcomp ?_ ?_
    · intro z hz Jz hJz x hx
      exact hJloc z hz Jz hJz x fun hmem => hx (hsub hmem)
    · intro z hz Jz hJz
      exact ih z hz Jz hJz (((H z hz).subschemeι ≫ (U z hz).ι).base ⁻¹' Mem')
        (Set.preimage_mono hsub)

theorem principalizationCertificate_mono_of_subset {k : Type u} [Field k] {W : Scheme.{u}}
    {p : W ⟶ Spec (CommRingCat.of k)} {I : W.IdealSheafData} {m : ℕ}
    {Mem Mem' : Set ↥W} {Z : W.IdealSheafData} (hsub : Mem ⊆ Mem')
    (h : PrincipalizationCertificate W p I m Mem Z) :
    PrincipalizationCertificate W p I m Mem' Z :=
  forall_resolutionCertificate_of_subset h Mem' hsub

theorem orderCertificate_mono_of_subset {k : Type u} [Field k] {W : Scheme.{u}}
    {p : W ⟶ Spec (CommRingCat.of k)} {N : W.IdealSheafData} {μ : ℕ}
    {Mem Mem' : Set ↥W} {Z : W.IdealSheafData} (hsub : Mem ⊆ Mem')
    (h : OrderCertificate W p N μ Mem Z) :
    OrderCertificate W p N μ Mem' Z :=
  forall_resolutionCertificate_of_subset h Mem' hsub

end FunctorialResolution.EmbeddedResolution
