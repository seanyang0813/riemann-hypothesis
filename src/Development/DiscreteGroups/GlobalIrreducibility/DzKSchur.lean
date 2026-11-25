module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LabelDatum
public import Mathlib.RepresentationTheory.FinGroupCharZero

@[expose] public section

open CategoryTheory

noncomputable section

namespace DiscreteGroups.sglob.DzType.Kon

variable {G : Type} [Group G] [Fintype G]

theorem simple_of_isIrr (τ : FDRep ℂ G) (h : GlobalTheory.GLq.IsIrr τ.character) : Simple τ := by
  obtain ⟨V, hV, hch⟩ := h
  rw [FDRep.simple_iff_char_is_norm_one] at hV ⊢
  simpa only [hch] using hV

end DiscreteGroups.sglob.DzType.Kon
