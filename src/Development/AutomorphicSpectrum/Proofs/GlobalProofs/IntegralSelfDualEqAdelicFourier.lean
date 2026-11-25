module

public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing
public import Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd
public import GroundTheory.AutomorphicForms.GL2.GJMatrixAdelic
import GroundTheory.AutomorphicForms.ReductionMeasure
import Mathlib.Tactic.Linter.Style
import GroundTheory.HeightsAndTheta.Theta.AdelicFourierCoord

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.FouCoord

open GroundTheory.Global GroundTheory.Automorphic.GJMatrix GroundTheory.Heights₂.Theta NumberField NumberField.mixedEmbedding
  IsDedekindDomain MeasureTheory Matrix
open scoped NumberField.AdeleRing ENNReal NNReal SchwartzMap nonZeroDivisors Classical

set_option synthInstance.maxSize 1000
set_option maxSynthPendingDepth 1

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι]

section Transfer

variable {V : Type} [AddCommGroup V] [TopologicalSpace V] [IsTopologicalAddGroup V] [MeasurableSpace V]
  [BorelSpace V] [DecidableEq ι] (e : V ≃ₜ+ (ι → 𝔸[K]))

def mu0 : Measure V := (adeleMeasurePi K).map e.symm

theorem measurableEmbedding_symm : MeasurableEmbedding e.symm :=
  e.symm.toHomeomorph.measurableEmbedding

variable (G N : Matrix ι ι K) (χ : V → V → ℂ)

variable {G N χ}

instance isAddHaar_selfDualMeasure : (mu0 e).IsAddHaarMeasure :=
  Measure.isAddHaarMeasure_map _ (e.symm : (ι → 𝔸[K]) ≃+ V).toAddMonoidHom e.symm.continuous
    e.symm.surjective e.symm.toHomeomorph.isClosedEmbedding.tendsto_cocompact

end Transfer

section Coords

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E]

def crd (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] {d : ℕ}
    (b : Module.Basis (Fin d) F E) (M : ℕ) :
    (Fin 1 → Fin M → R ⊗[F] E) ≃ₜ+ (Fin M × Fin d → R) where
  toFun X p := (Algebra.TensorProduct.basis R b).repr (X 0 p.1) p.2
  invFun Y _ i := (GlobalTheory.CompanionTheory.SW.TopK.coordHomeo R b).symm fun k => Y (i, k)
  left_inv X := by
    funext a i
    rw [Subsingleton.elim a 0]
    exact (GlobalTheory.CompanionTheory.SW.TopK.coordHomeo R b).symm_apply_apply (X 0 i)
  right_inv Y := by
    funext p
    obtain ⟨i, k⟩ := p
    exact congrFun ((GlobalTheory.CompanionTheory.SW.TopK.coordHomeo R b).apply_symm_apply fun k => Y (i, k)) k
  map_add' X Y := by
    funext p
    simp
  continuous_toFun := by
    refine continuous_pi fun p => ?_
    exact (continuous_apply p.2).comp ((GlobalTheory.CompanionTheory.SW.TopK.coordHomeo R b).continuous.comp
      ((continuous_apply p.1).comp (continuous_apply 0)))
  continuous_invFun := by
    refine continuous_pi fun a => continuous_pi fun i => ?_
    exact (GlobalTheory.CompanionTheory.SW.TopK.coordHomeo R b).symm.continuous.comp
      (continuous_pi fun k => continuous_apply (i, k))

theorem crd_apply (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] {d : ℕ}
    (b : Module.Basis (Fin d) F E) (M : ℕ) (X : Fin 1 → Fin M → R ⊗[F] E) (p : Fin M × Fin d) :
    crd R b M X p = (Algebra.TensorProduct.basis R b).repr (X 0 p.1) p.2 := rfl

theorem repr_map {R S : Type} [CommRing R] [Algebra F R] [CommRing S] [Algebra F S] (f : R →ₐ[F] S) {d : ℕ}
    (b : Module.Basis (Fin d) F E) (y : R ⊗[F] E) (k : Fin d) :
    (Algebra.TensorProduct.basis S b).repr (Algebra.TensorProduct.map f (AlgHom.id F E) y) k =
      f ((Algebra.TensorProduct.basis R b).repr y k) := by
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul a x =>
    simp [Algebra.TensorProduct.basis_repr_tmul]
  | add x y hx hy => simp [hx, hy]

def mx (ι : Type) : (ι → Ainf F) ≃ₜ+ (ι → mixedSpace F) where
  toFun u i := homeomorphMixedSpace F (u i)
  invFun u i := (homeomorphMixedSpace F).symm (u i)
  left_inv u := by
    funext i
    exact (homeomorphMixedSpace F).symm_apply_apply _
  right_inv u := by
    funext i
    exact (homeomorphMixedSpace F).apply_symm_apply _
  map_add' u v := by
    funext i
    simp only [Pi.add_apply, homeomorphMixedSpace_apply]
    exact map_add (InfiniteAdeleRing.ringEquiv_mixedSpace F) (u i) (v i)
  continuous_toFun := continuous_pi fun i =>
    (homeomorphMixedSpace F).continuous.comp (continuous_apply i)
  continuous_invFun := continuous_pi fun i =>
    (homeomorphMixedSpace F).symm.continuous.comp (continuous_apply i)

def crdInf {d : ℕ} (b : Module.Basis (Fin d) F E) (M : ℕ) :
    (Fin 1 → Fin M → Ainf F ⊗[F] E) ≃ₜ+ (Fin M × Fin d → mixedSpace F) :=
  (crd (Ainf F) b M).trans (mx _)

theorem infPartPi_crd {d : ℕ} (b : Module.Basis (Fin d) F E) {M : ℕ}
    (X : Fin 1 → Fin M → AF F ⊗[F] E) :
    infPartPi (crd (AF F) b M X) = crdInf b M (projInf X) := by
  funext p
  show homeomorphMixedSpace F ((crd (AF F) b M X p).1) =
    homeomorphMixedSpace F (crd (Ainf F) b M (projInf X) p)
  rw [crd_apply, crd_apply]
  exact congrArg _ (repr_map (fstA F) b (X 0 p.1) p.2).symm

theorem finPartPi_crd {d : ℕ} (b : Module.Basis (Fin d) F E) {M : ℕ}
    (X : Fin 1 → Fin M → AF F ⊗[F] E) :
    finPartPi (crd (AF F) b M X) = crd (Af F) b M (projFin X) := by
  funext p
  rw [crd_apply]
  exact (repr_map (sndA F) b (X 0 p.1) p.2).symm

theorem exists_schwartz_of_arch {d : ℕ} (b : Module.Basis (Fin d) F E) {M : ℕ}
    {P : (Fin 1 → Fin M → Ainf F ⊗[F] E) → ℂ} (hP : IsSchwartzArch P) :
    ∃ φ : 𝓢(Fin M × Fin d → mixedSpace F, ℂ), ∀ X, φ (crdInf b M X) = P X := by
  obtain ⟨N, e', c1, c2, f, hf⟩ := hP
  let L : (Fin M × Fin d → mixedSpace F) ≃+ (Fin N → ℝ) :=
    ((crdInf b M).symm : (Fin M × Fin d → mixedSpace F) ≃+ _).trans e'
  have hL : Continuous L := c1.comp (crdInf b M).symm.continuous
  have hL' : Continuous L.symm := (crdInf b M).continuous.comp c2
  refine ⟨SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (L.toRealLinearEquiv hL hL') f, fun X => ?_⟩
  rw [hf X]
  show f (e' ((crdInf b M).symm (crdInf b M X))) = _
  rw [ContinuousAddEquiv.symm_apply_apply]

theorem isSchwartzArch_of_schwartz {d : ℕ} (b : Module.Basis (Fin d) F E) {M : ℕ}
    (φ : 𝓢(Fin M × Fin d → mixedSpace F, ℂ)) : IsSchwartzArch fun X => φ (crdInf b M X) := by
  let eB := (Module.finBasis ℝ (Fin M × Fin d → mixedSpace F)).equivFunL
  let e' : (Fin 1 → Fin M → Ainf F ⊗[F] E) ≃+ _ :=
    ((crdInf b M : _ ≃+ (Fin M × Fin d → mixedSpace F))).trans eB.toLinearEquiv.toAddEquiv
  refine ⟨_, e', eB.continuous.comp (crdInf b M).continuous,
    (crdInf b M).symm.continuous.comp eB.symm.continuous,
    SchwartzMap.compCLMOfContinuousLinearEquiv ℂ eB.symm φ, fun X => ?_⟩
  show _ = φ (eB.symm (eB (crdInf b M X)))
  rw [ContinuousLinearEquiv.symm_apply_apply]

variable {M n : ℕ}

theorem sb_zero : IsSchwartzBruhat (0 : (Fin n → Fin M → AF F ⊗[F] E) → ℂ) :=
  ⟨0, Fin.elim0, Fin.elim0, fun i => i.elim0, fun i => i.elim0, fun X => by simp⟩

theorem sb_add {Φ Ψ : (Fin n → Fin M → AF F ⊗[F] E) → ℂ} (h : IsSchwartzBruhat Φ)
    (h' : IsSchwartzBruhat Ψ) : IsSchwartzBruhat (Φ + Ψ) := by
  obtain ⟨k, a, c, ha, hc, hs⟩ := h
  obtain ⟨k', a', c', ha', hc', hs'⟩ := h'
  refine ⟨k + k', Fin.append a a', Fin.append c c', fun i => ?_, fun i => ?_, fun X => ?_⟩
  · refine Fin.addCases (fun i => ?_) (fun i => ?_) i
    · rw [Fin.append_left]; exact ha i
    · rw [Fin.append_right]; exact ha' i
  · refine Fin.addCases (fun i => ?_) (fun i => ?_) i
    · rw [Fin.append_left]; exact hc i
    · rw [Fin.append_right]; exact hc' i
  · simp only [Fin.sum_univ_add, Fin.append_left, Fin.append_right, Pi.add_apply, hs, hs']

theorem sb_smul (c : ℂ) {Φ : (Fin n → Fin M → AF F ⊗[F] E) → ℂ} (h : IsSchwartzBruhat Φ) :
    IsSchwartzBruhat (c • Φ) := by
  obtain ⟨k, a, g, ha, hg, hs⟩ := h
  refine ⟨k, a, fun i => c • g i, ha, fun i => ⟨(hg i).1.comp (c • ·),
    (hg i).2.comp_left (smul_zero c)⟩, fun X => ?_⟩
  simp only [Pi.smul_apply, smul_eq_mul, hs, Finset.mul_sum]
  exact Finset.sum_congr rfl fun i _ => by ring

variable [NumberField E]

theorem isSchwartzBruhat_iff {d : ℕ} (b : Module.Basis (Fin d) F E)
    (Φ : (Fin 1 → Fin M → AF F ⊗[F] E) → ℂ) :
    IsSchwartzBruhat Φ ↔ Φ ∘ (crd (AF F) b M).symm ∈ schwartzBruhatPi (K := F) (ι := Fin M × Fin d) := by
  constructor
  · rintro ⟨k, Φinf, Φf, hi, hf, hs⟩
    choose φ hφ using fun i => exists_schwartz_of_arch b (hi i)
    have hg : ∀ i, Φf i ∘ (crd (Af F) b M).symm ∈ finiteSchwartzBruhatPi F := fun i =>
      (mem_finiteSchwartzBruhatPi F).2 ⟨(hf i).1.comp_continuous (crd (Af F) b M).symm.continuous,
        (hf i).2.comp_homeomorph (crd (Af F) b M).symm.toHomeomorph⟩
    have key : Φ ∘ (crd (AF F) b M).symm =
        ∑ i, schwartzBruhatTensorPi (φ i) (Φf i ∘ (crd (Af F) b M).symm) := by
      funext x
      obtain ⟨X, rfl⟩ := (crd (AF F) b M).surjective x
      simp only [Function.comp_apply, ContinuousAddEquiv.symm_apply_apply, Finset.sum_apply,
        schwartzBruhatTensorPi, infPartPi_crd, finPartPi_crd, hφ, hs]
    rw [key]
    exact Submodule.sum_mem _ fun i _ => schwartzBruhatTensorPi_mem _ (hg i)
  · intro h
    have main : ∀ f ∈ schwartzBruhatPi (K := F) (ι := Fin M × Fin d),
        IsSchwartzBruhat (f ∘ crd (AF F) b M) := by
      intro f hf
      induction hf using Submodule.span_induction with
      | mem G hG =>
        obtain ⟨φ, g, hg, rfl⟩ := hG
        obtain ⟨g1, g2⟩ := (mem_finiteSchwartzBruhatPi F).1 hg
        refine isSchwartzBruhat_of_prod (isSchwartzArch_of_schwartz b φ)
          (Φf := g ∘ crd (Af F) b M) ⟨g1.comp_continuous (crd (Af F) b M).continuous,
            g2.comp_homeomorph (crd (Af F) b M).toHomeomorph⟩ fun X => ?_
        simp only [Function.comp_apply, schwartzBruhatTensorPi, infPartPi_crd, finPartPi_crd]
      | zero => exact sb_zero
      | add G H _ _ hG hH => exact sb_add hG hH
      | smul c G _ hG => exact sb_smul c hG
    have := main _ h
    convert this using 1
    funext x
    simp only [Function.comp_apply, ContinuousAddEquiv.symm_apply_apply]

end Coords

section Main

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV
open scoped TensorProduct

end Main

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.FouCoord
