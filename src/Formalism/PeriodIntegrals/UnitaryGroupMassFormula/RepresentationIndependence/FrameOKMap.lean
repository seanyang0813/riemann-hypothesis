module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RepresentationIndependence.GmapInjective
public import Formalism.SharpRestriction.CuspSpanNormBounds.CntPartners
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RepresentationIndependence.IsFixedConvMap
import Formalism.SharpRestriction.CuspSpanNormBounds.UniformConstantsAndStatements

@[expose] public section

noncomputable section

namespace PI.RepsIndep.Tr

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.UniformConstantsAndStatements

theorem cntCl_equiv {α : Type} (f g : α → α) (hgf : ∀ a, g (f a) = a) (hfg : ∀ a, f (g a) = a)
    (X Y : Set α) (R R' : α → α → Prop)
    (hX : ∀ a, f a ∈ Y ↔ a ∈ X) (hR : ∀ a b, R' (f a) (f b) ↔ R a b) :
    Cnt.cntCl Y R' = Cnt.cntCl X R := by
  have hinj : Function.Injective (fun O : Set α => f ⁻¹' O) := by
    intro O O' h
    ext y
    have := Set.ext_iff.mp h (g y)
    simpa only [Set.mem_preimage, hfg] using this
  have himg : (fun O : Set α => f ⁻¹' O) '' {O | ∃ a ∈ Y, O = {b | b ∈ Y ∧ R' a b}} =
      {O | ∃ a ∈ X, O = {b | b ∈ X ∧ R a b}} := by
    ext O
    constructor
    · rintro ⟨O', ⟨y, hy, rfl⟩, rfl⟩
      refine ⟨g y, (hX (g y)).mp (by rw [hfg]; exact hy), ?_⟩
      ext c
      rw [← hfg y]
      simp only [Set.mem_preimage, Set.mem_setOf_eq, hX, hR, hgf]
    · rintro ⟨a, ha, rfl⟩
      refine ⟨{b | b ∈ Y ∧ R' (f a) b}, ⟨f a, (hX a).mpr ha, rfl⟩, ?_⟩
      ext c
      simp only [Set.mem_preimage, Set.mem_setOf_eq, hX, hR]
  unfold Cnt.cntCl
  rw [← himg, hinj.injOn.encard_image]

variable {D : D7}

theorem XS_map {T : D.host.E} {γ : (VS D).V ≃ₗ[D.host.E] (VS D).V} (hγ : γ ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT)
    (F : FlagG (VS D) D.R.rS T) : XS D (mapF γ hγ F) = Formalism.HermitianLatticesTheory.gmap γ (XS D F) := by
  unfold XS Formalism.HermitianLatticesTheory.gmap
  rw [Submodule.map_span]
  congr 1
  ext y
  simp only [Set.mem_setOf_eq, Set.mem_image]
  constructor
  · rintro ⟨a, x, hx, rfl⟩
    exact ⟨x • F.e a, ⟨a, x, hx, rfl⟩, by simp [mapF]⟩
  · rintro ⟨_, ⟨a, x, hx, rfl⟩, rfl⟩
    exact ⟨a, x, hx, by simp [mapF]⟩

theorem FrameOK_map {T' : D.host.E} {γ : (VS D).V ≃ₗ[D.host.E] (VS D).V} (hγ : γ ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT)
    {Λ : Submodule (𝓞 D.host.E) (VS D).V} {F' : LFlag (D.sp.Y 0) D.R.rS T'} (h : FrameOK D Λ F') :
    FrameOK D (Formalism.HermitianLatticesTheory.gmap γ Λ) (mapL γ hγ F') := by
  unfold FrameOK at h ⊢
  refine ⟨IsFixedConv_map hγ h.1, ?_⟩
  rw [XLam_mapL hγ, h.2]
  exact (XS_map hγ F'.fl).symm

end PI.RepsIndep.Tr

namespace PI.RepsIndep

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.MainNotions.UniformConstantsAndStatements

end PI.RepsIndep
