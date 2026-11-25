module

public import Development.WeilBound.CoreStatements.TorusUniformisation.SiegelCompactSupport.ExistsRouteDatumTranslationCombinationGoodPlace
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.AdlEqZeroOfMemNbhd
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open Formalism.IndefR.Mult IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.SplitFlip GlobalTheory.SplitWeil
open ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.SvN

open Matrix
open scoped PositivityTheory.Member.ZakTransform
open PositivityTheory.Member.ZakTransform (schr_tens lift lift_tens lift_schr lift_adm lift_lift lift_one lift_mem psv psv_apply evP offP
  offP_eq evalEmbedding_smul evalPoints_add Indep indep_pure ep ep_mul ep_ep ev_ep at_iff schr_zero schr_mem_SB cont_at spM spM_fst spM_snd
  spM_off mat_ext coB ev_symp map_smul_piW map_cA_piW incM_piW ev_dot stdF stdF_mem sub sub_mem hasSig_det schur
  exists_bump rest_zero tens_at pure_update pure_mem good_std Good)
open PositivityTheory.Member.ZakTransform.Z (psi_re re trace_emb)
open GlobalTheory.EmbChart (atPlace evFin_atPlace)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (AE cA incM UA Spc Model Rep mat UAt At Rest Acts tens piW)

theorem isCharAF_of_isStd {F : Type} [Field F] [NumberField F] {ψ : AddChar (AF F) ℂ}
    (h : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsStd ψ) : IsCharAF F ψ := by
  obtain ⟨K, hK, hx⟩ := Formalism.IndefR.Eqv.G5.adl_cocompact (F := F)
  obtain ⟨C, hC⟩ := hK.exists_bound_of_continuousOn h.1.continuousOn
  have bd : ∀ x, ‖ψ x‖ ≤ C := fun x => by
    obtain ⟨a, ha⟩ := hx x
    have e : ψ x = ψ (x - algebraMap F _ a) := by
      have : x = (x - algebraMap F _ a) + algebraMap F _ a := by ring
      conv_lhs => rw [this, AddChar.map_add_eq_mul, h.2.1 a, mul_one]
    rw [e]
    exact hC _ ha
  have le1 : ∀ x, ‖ψ x‖ ≤ 1 := fun x => by
    by_contra hlt
    obtain ⟨m, hm⟩ := pow_unbounded_of_one_lt C (not_le.1 hlt)
    have := bd (m • x)
    rw [AddChar.map_nsmul_eq_pow, norm_pow] at this
    linarith
  have hn : ∀ x, ‖ψ x‖ = 1 := fun x => by
    have e : ‖ψ x‖ * ‖ψ (-x)‖ = 1 := by
      rw [← norm_mul, ← AddChar.map_add_eq_mul, add_neg_cancel, AddChar.map_zero_eq_one, norm_one]
    nlinarith [le1 x, le1 (-x), norm_nonneg (ψ x), norm_nonneg (ψ (-x))]
  refine ⟨h.1, hn, h.2.1, ?_⟩
  have hN : ((Module.finrank ℚ F : ℕ) : ℝ) ≠ 0 := by
    exact_mod_cast (Module.finrank_pos (R := ℚ) (M := F)).ne'
  have tr1 : Algebra.trace ℝ (mixedEmbedding.mixedSpace F) 1 = (Module.finrank ℚ F : ℝ) := by
    have := trace_emb (F := F) 1
    have e1 : Algebra.trace ℚ F 1 = (Module.finrank ℚ F : ℚ) := by
      have := Algebra.trace_algebraMap (S := F) (1 : ℚ)
      simpa using this
    rw [map_one, e1] at this
    simpa using this
  refine ⟨re F (((2 * (Module.finrank ℚ F : ℝ))⁻¹ : ℝ) • (1 : mixedEmbedding.mixedSpace F)), ?_⟩
  rw [psi_re h, map_smul, tr1, smul_eq_mul]
  have : ((2 * (Module.finrank ℚ F : ℝ))⁻¹ * (Module.finrank ℚ F : ℝ)) = (2⁻¹ : ℝ) := by
    field_simp
  rw [this]
  push_cast
  have e : -(2 * (Real.pi : ℂ) * Complex.I) * 2⁻¹ = -(Real.pi * Complex.I) := by ring
  rw [e, Complex.exp_neg, Complex.exp_pi_mul_I]
  norm_num

section Inverse

end Inverse

section Local

variable {F : Type} [Field F] [NumberField F] {v : HeightOneSpectrum (𝓞 F)} {n d : ℕ}

variable {I : ((Fin n × Fin d → Fv F v) → ℂ) →ₗ[ℂ] (Matrix (Fin n) (Fin d) (Fv F v) → ℂ)}
  {J : (Matrix (Fin n) (Fin d) (Fv F v) → ℂ) →ₗ[ℂ] ((Fin n × Fin d → Fv F v) → ℂ)}

end Local

section Split

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
  {v : HeightOneSpectrum (𝓞 F)} {n d : ℕ} {X : Spc F E n} {W : Spc F E d}

theorem indep_of {κ : Type} [Fintype κ] {r : (κ → AF F) → ℂ}
    (h : ∀ x z, At (evFin F v) z → r (x + z) = r x) : Indep v r := fun x t =>
  h x _ ((at_iff _).2 (funext fun i => by
    show ep v * atPlace v (t i) = _
    rw [ep_mul, evFin_atPlace]))

end Split

section Main

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
  {v : HeightOneSpectrum (𝓞 F)} {n d : ℕ} {X : Spc F E n} {W : Spc F E d}

end Main

end GlobalTheory.CompanionTheory.Ar.SvN
