module

import Development.WeilBound.CoreStatements.GaussianSeminormBounds.RealSeminormFiltration.RLLines
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.CompanionTheory.CMAdele

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

alias exists_moved := _root_.GlobalTheory.AdelicU.exists_cm_conj_ne

theorem im_ne_zero {σ : E →ₐ[F] E} (h : IsCMExt F E σ) {β : E} (hβ : σ β ≠ β) (τ : E →+* ℂ) :
    (τ β).im ≠ 0 :=
  PositivityTheory.RL.im_ne_zero h hβ τ

theorem exists_basis {σ : E →ₐ[F] E} (h : IsCMExt F E σ) {β : E} (hβ : σ β ≠ β) :
    ∃ B : Module.Basis (Fin 2) F E, B 0 = 1 ∧ B 1 = β := by
  apply PositivityTheory.RL.exists_basis <;> assumption

theorem eq_add_tmul (B : Module.Basis (Fin 2) F E) (x : AF F ⊗[F] E) :
    x = (Algebra.TensorProduct.basis (AF F) B).repr x 0 ⊗ₜ[F] B 0 +
      (Algebra.TensorProduct.basis (AF F) B).repr x 1 ⊗ₜ[F] B 1 :=
  PositivityTheory.RL.eq_add_tmul B x

theorem piInf_tmul {w : InfinitePlace F} (τ : GlobalTheory.AdelicU.EmbOver E w) (a : AF F) (y : E) :
    GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.piInf τ (a ⊗ₜ[F] y) =
      InfinitePlace.Completion.extensionEmbedding w (a.1 w) * τ.1 y := rfl

theorem im_extension (hF : IsTotallyReal F) (w : InfinitePlace F) (z : w.Completion) :
    (InfinitePlace.Completion.extensionEmbedding w z).im = 0 :=
  PositivityTheory.RL.im_extension hF w z

theorem eq_zero_of_piInf : ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (emb : ∀ w : InfinitePlace F, GlobalTheory.AdelicU.EmbOver E w) (x : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)), GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.evI F) x → (∀ w, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.piInf (emb w) x = 0) → x = 0 := by
  intro F E _ _ _ _ _ σ h emb x hx hinf
  exact PositivityTheory.RL.eq_zero_of_piInf h emb x hx hinf

end GlobalTheory.CompanionTheory.CMAdele

end
