module

import Development.WeilBound.ThetaLifts.LocalTheory.ToralCohomology.ExistsTorus
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels

@[expose] public section

open NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes

noncomputable section

namespace GlobalTheory.CompanionTheory.RealPlaceAdele

open scoped TensorProduct
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.AdelicU

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

def ofInf (c : ∀ w : InfinitePlace F, w.Completion) : AF F := ((c : Ainf F), (0 : Af F))

theorem mul_ofInf (u : AF F) (hu : evI F u = 0) (c : ∀ w : InfinitePlace F, w.Completion) : u * ofInf c = 0 := by
  have h1 : u.1 = 0 := (InfiniteAdeleRing.ringEquiv_mixedSpace F).injective (by rw [map_zero]; exact hu)
  refine Prod.ext ?_ ?_
  · change u.1 * _ = 0
    rw [h1, zero_mul]
  · change u.2 * 0 = 0
    rw [mul_zero]

theorem exists_adele_piInf : ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (emb : ∀ w : InfinitePlace F, GlobalTheory.AdelicU.EmbOver E w)
    (z : InfinitePlace F → ℂ), ∃ x : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E), GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.evI F) x ∧
      ∀ w, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.piInf (emb w) x = z w := by
  apply PositivityTheory.ThKG.CayleyTransformDarboux.exists_inf

end GlobalTheory.CompanionTheory.RealPlaceAdele

end
