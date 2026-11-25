module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.DiffProd
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalJacobianType.ContinuousTrESymm
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.HRSumSmulRight

@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.NcVal

open Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.LocVol Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes NumberField IsDedekindDomain
open scoped TensorProduct

def AnnX {D : D7} (X : HidaSetting D) (ψ : AddChar (AF X.B.I.F) ℂ) : Prop :=
  IsCharAF X.B.I.F ψ → IsStdChar ψ → ∀ (v : PlX X) (y : Fv X.B.I.F v ⊗[X.B.I.F] X.B.I.E),
    (∀ x ∈ OEv (E := X.B.I.E) v,
        psiV X.B.I.F ψ v (Algebra.trace (Fv X.B.I.F v) (Fv X.B.I.F v ⊗[X.B.I.F] X.B.I.E) (x * y)) = 1) ↔
      sc (E := X.B.I.E) v (dV v) * y ∈ OEv (E := X.B.I.E) v

namespace TrW

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem trace_eq_add (σ : E →ₐ[F] E) (hinv : ∀ y, σ (σ y) = y) (hnt : ∃ x, σ x ≠ x)
    (hfin : Module.finrank F E = 2) (x : E) :
    algebraMap F E (Algebra.trace F E x) = x + σ x := by
  classical
  haveI : FiniteDimensional F E := Module.finite_of_finrank_eq_succ hfin
  obtain ⟨x0, hx0⟩ := hnt
  let σe : E ≃ₐ[F] E := AlgEquiv.ofAlgHom σ σ (AlgHom.ext hinv) (AlgHom.ext hinv)
  have hne : (1 : E ≃ₐ[F] E) ≠ σe := by
    intro h
    apply hx0
    have := congrArg (fun τ : E ≃ₐ[F] E => τ x0) h
    simpa [σe] using this.symm
  have hle : Fintype.card (E ≃ₐ[F] E) ≤ 2 := hfin ▸ AlgEquiv.card_le
  have huniv : (Finset.univ : Finset (E ≃ₐ[F] E)) = {1, σe} := by
    symm
    apply Finset.eq_of_subset_of_card_le (Finset.subset_univ _)
    rw [Finset.card_univ, Finset.card_pair hne]
    exact hle
  haveI : IsGalois F E := IsGalois.of_card_aut_eq_finrank F E (by
    rw [Nat.card_eq_fintype_card, ← Finset.card_univ, huniv, Finset.card_pair hne, hfin])
  rw [trace_eq_sum_automorphisms, huniv, Finset.sum_pair hne]
  simp [σe]

variable (v : HeightOneSpectrum (𝓞 F))

theorem sc_eq (c : Fv F v) : sc (E := E) v c = algebraMap (Fv F v) (Fv F v ⊗[F] E) c := rfl

theorem inclR_mem' (a : 𝓞 E) : inclR (F := F) (Fv F v) (a : E) ∈ OEv (E := E) v := Submodule.subset_span ⟨a, Set.mem_univ _, rfl⟩

theorem oev_smul' {c : Fv F v} (hc : c ∈ v.adicCompletionIntegers F) {x : Fv F v ⊗[F] E}
    (hx : x ∈ OEv (E := E) v) : c • x ∈ OEv (E := E) v := by
  change x ∈ Submodule.span (v.adicCompletionIntegers F)
    ((fun x : 𝓞 E => inclR (F := F) (Fv F v) (x : E)) '' Set.univ) at hx
  change c • x ∈ Submodule.span (v.adicCompletionIntegers F)
    ((fun x : 𝓞 E => inclR (F := F) (Fv F v) (x : E)) '' Set.univ)
  exact Submodule.smul_mem _ (⟨c, hc⟩ : v.adicCompletionIntegers F) hx

theorem one_mem : (1 : Fv F v ⊗[F] E) ∈ OEv (E := E) v := by
  simpa using inclR_mem' (F := F) (E := E) v (1 : 𝓞 E)

theorem alg_mem {c : Fv F v} (hc : c ∈ v.adicCompletionIntegers F) :
    algebraMap (Fv F v) (Fv F v ⊗[F] E) c ∈ OEv (E := E) v := by
  rw [Algebra.algebraMap_eq_smul_one]
  exact oev_smul' v hc (one_mem v)

theorem inclR_alg (a : F) : inclR (F := F) (Fv F v) (algebraMap F E a) =
    algebraMap (Fv F v) (Fv F v ⊗[F] E) (algebraMap F (Fv F v) a) := by
  change (Algebra.TensorProduct.includeRight : E →ₐ[F] Fv F v ⊗[F] E) (algebraMap F E a) = _
  rw [AlgHom.commutes, ← IsScalarTower.algebraMap_apply F (Fv F v) (Fv F v ⊗[F] E)]

theorem int_mem (r : 𝓞 F) : algebraMap F (Fv F v) (r : F) ∈ v.adicCompletionIntegers F := by
  exact v.coe_mem_adicCompletionIntegers r

theorem mul_mem {x y : Fv F v ⊗[F] E} (hx : x ∈ OEv (E := E) v) (hy : y ∈ OEv (E := E) v) :
    x * y ∈ OEv (E := E) v := by
  first | exact _root_.PI.OmLocU.oEv_mul | (apply _root_.PI.OmLocU.oEv_mul <;> assumption)

theorem trace_mem {x : Fv F v ⊗[F] E} (hx : x ∈ OEv (E := E) v) :
    Algebra.trace (Fv F v) (Fv F v ⊗[F] E) x ∈ v.adicCompletionIntegers F := by
  simp only [OEv, SetLike.mem_coe] at hx
  induction hx using Submodule.span_induction with
  | mem z hz =>
    obtain ⟨a, -, rfl⟩ := hz
    rw [PI.UnitaryGroupMassFormula.LocJacTyp.Sd.trace_inclR (v := v)]
    have hi : IsIntegral ℤ (Algebra.trace F E (a : E)) :=
      Algebra.isIntegral_trace (RingOfIntegers.isIntegral_coe a)
    exact int_mem (F := F) v ⟨_, hi⟩
  | zero => rw [map_zero]; exact zero_mem _
  | add x z _ _ hx hz => rw [map_add]; exact add_mem hx hz
  | smul c x _ hx =>
    show Algebra.trace (Fv F v) (Fv F v ⊗[F] E) ((c : Fv F v) • x) ∈ _
    rw [map_smul, smul_eq_mul]
    exact MulMemClass.mul_mem c.2 hx

theorem trace_v (σ : E →ₐ[F] E) (hinv : ∀ y, σ (σ y) = y) (hnt : ∃ x, σ x ≠ x)
    (hfin : Module.finrank F E = 2) (w : Fv F v ⊗[F] E) :
    algebraMap (Fv F v) (Fv F v ⊗[F] E) (Algebra.trace (Fv F v) (Fv F v ⊗[F] E) w) =
      w + sigR (Fv F v) σ w := by
  haveI : FiniteDimensional F E := Module.finite_of_finrank_pos (by omega)
  have h1 : ∀ e : E, algebraMap (Fv F v) (Fv F v ⊗[F] E)
      (Algebra.trace (Fv F v) (Fv F v ⊗[F] E) ((1 : Fv F v) ⊗ₜ e)) =
      (1 : Fv F v) ⊗ₜ e + (1 : Fv F v) ⊗ₜ σ e := by
    intro e
    have ht : Algebra.trace (Fv F v) (Fv F v ⊗[F] E) ((1 : Fv F v) ⊗ₜ e) =
        algebraMap F (Fv F v) (Algebra.trace F E e) := by
      rw [Algebra.trace_apply, Algebra.trace_apply]
      have h : Algebra.lmul (Fv F v) (Fv F v ⊗[F] E) ((1 : Fv F v) ⊗ₜ e) =
          (Algebra.lmul F E e).baseChange (Fv F v) := by
        ext k
        simp
      rw [h, LinearMap.trace_baseChange]
    rw [ht, ← inclR_alg v, trace_eq_add σ hinv hnt hfin e, map_add (f := _)]
    rfl
  have hL : (Algebra.linearMap (Fv F v) (Fv F v ⊗[F] E)) ∘ₗ
        (Algebra.trace (Fv F v) (Fv F v ⊗[F] E)) =
      LinearMap.id + σ.toLinearMap.baseChange (Fv F v) := by
    ext e
    simpa using h1 e
  have hw := LinearMap.congr_fun hL w
  simp only [LinearMap.comp_apply, Algebra.linearMap_apply, LinearMap.add_apply,
    LinearMap.id_apply] at hw
  rw [hw]
  congr 1

theorem dual_mem (σ : E →ₐ[F] E) (hinv : ∀ y, σ (σ y) = y) (hnt : ∃ x, σ x ≠ x)
    (hfin : Module.finrank F E = 2) (θ t : 𝓞 E) (ht : σ (θ : E) = (t : E)) (e : 𝓞 F)
    (he : ((θ : E) - t) ^ 2 = algebraMap F E (e : F)) (hev : e ∉ v.asIdeal) (z : Fv F v ⊗[F] E)
    (hz : ∀ x ∈ OEv (E := E) v,
      Algebra.trace (Fv F v) (Fv F v ⊗[F] E) (x * z) ∈ v.adicCompletionIntegers F) :
    z ∈ OEv (E := E) v := by
  set A := Algebra.trace (Fv F v) (Fv F v ⊗[F] E) z with hAdef
  set B := Algebra.trace (Fv F v) (Fv F v ⊗[F] E) (inclR (F := F) (Fv F v) (θ : E) * z) with hBdef
  have hA : A ∈ v.adicCompletionIntegers F := by simpa using hz 1 (one_mem v)
  have hB : B ∈ v.adicCompletionIntegers F := hz _ (inclR_mem' v θ)
  have tA := trace_v v σ hinv hnt hfin z
  have tB := trace_v v σ hinv hnt hfin (inclR (F := F) (Fv F v) (θ : E) * z)
  have hsθ : sigR (Fv F v) σ (inclR (F := F) (Fv F v) (θ : E)) = inclR (F := F) (Fv F v) (t : E) := by
    simp [sigR, inclR, ht]
  set Δ := inclR (F := F) (Fv F v) ((θ : E) - t) with hΔ
  have key : Δ * z = algebraMap (Fv F v) (Fv F v ⊗[F] E) B -
      inclR (F := F) (Fv F v) (t : E) * algebraMap (Fv F v) (Fv F v ⊗[F] E) A := by
    rw [tA, tB, map_mul, hsθ, hΔ, map_sub]
    ring
  have hΔ2 : Δ * Δ = algebraMap (Fv F v) (Fv F v ⊗[F] E) (algebraMap F (Fv F v) (e : F)) := by
    rw [hΔ, ← map_mul, ← sq, he, inclR_alg]
  have hΔm : Δ ∈ OEv (E := E) v := by
    have := inclR_mem' (E := E) v (θ - t)
    simpa [hΔ] using this
  have hmem : Δ * (algebraMap (Fv F v) (Fv F v ⊗[F] E) B -
      inclR (F := F) (Fv F v) (t : E) * algebraMap (Fv F v) (Fv F v ⊗[F] E) A) ∈ OEv (E := E) v :=
    mul_mem v hΔm (Submodule.sub_mem _ (alg_mem v hB)
      (mul_mem v (inclR_mem' v t) (alg_mem v hA)))
  have hval : Valued.v (algebraMap F (Fv F v) (e : F)) = 1 := by
    have h := HeightOneSpectrum.valuedAdicCompletion_eq_valuation' (R := 𝓞 F) v (algebraMap (𝓞 F) F e)
    rw [HeightOneSpectrum.valuation_of_algebraMap, HeightOneSpectrum.intValuation_eq_one_iff.2 hev] at h
    exact h
  have he0 : algebraMap F (Fv F v) (e : F) ≠ 0 := by
    intro h0; rw [h0, map_zero] at hval; exact zero_ne_one hval
  have hinvm : (algebraMap F (Fv F v) (e : F))⁻¹ ∈ v.adicCompletionIntegers F := by
    rw [HeightOneSpectrum.mem_adicCompletionIntegers, map_inv₀, hval, inv_one]
  have hzeq : z = (algebraMap F (Fv F v) (e : F))⁻¹ • (Δ * (algebraMap (Fv F v) (Fv F v ⊗[F] E) B -
      inclR (F := F) (Fv F v) (t : E) * algebraMap (Fv F v) (Fv F v ⊗[F] E) A)) := by
    rw [← key, ← mul_assoc, hΔ2, ← Algebra.smul_def, smul_smul, inv_mul_cancel₀ he0, one_smul]
  rw [hzeq]
  exact oev_smul' v hinvm hmem

end Gen

end TrW


open TrW in
theorem annX_of {D : D7} (X : HidaSetting D) (ψ : AddChar (AF X.B.I.F) ℂ) (hC : CondAll) : AnnX X ψ := by
  intro hψ hstd v y
  obtain ⟨hun, htr, hdeg, hfix⟩ := X.B.I.cm
  let σ : X.B.I.E →ₐ[X.B.I.F] X.B.I.E :=
    { toRingHom := starRingEnd X.B.I.E
      commutes' := fun a => (hfix _).mpr ⟨a, rfl⟩ }
  have hinv : ∀ a, σ (σ a) = a := fun a => star_star a
  obtain ⟨Q, hQmax, hQv⟩ := Ideal.exists_ideal_over_maximal_of_isIntegral (S := 𝓞 X.B.I.E) v.asIdeal
    (by
      intro x hx
      rw [RingHom.mem_ker] at hx
      have h1 : algebraMap (𝓞 X.B.I.E) X.B.I.E (algebraMap (𝓞 X.B.I.F) (𝓞 X.B.I.E) x) = 0 := by
        rw [hx, map_zero]
      rw [← IsScalarTower.algebraMap_apply (𝓞 X.B.I.F) (𝓞 X.B.I.E) X.B.I.E,
        IsScalarTower.algebraMap_apply (𝓞 X.B.I.F) X.B.I.F X.B.I.E] at h1
      have h2 : algebraMap (𝓞 X.B.I.F) X.B.I.F x = 0 :=
        (algebraMap X.B.I.F X.B.I.E).injective (by rw [h1, map_zero])
      have h3 : x = 0 := RingOfIntegers.coe_eq_zero_iff.mp h2
      rw [h3]
      exact v.asIdeal.zero_mem)
  obtain ⟨θ, t, ht, hθt⟩ := hun.2.2 Q hQmax
  have ht' : (t : X.B.I.E) = star (θ : X.B.I.E) := ht
  have hσθ : σ (θ : X.B.I.E) = t := ht'.symm
  have hnt : ∃ x, σ x ≠ x := by
    refine ⟨(θ : X.B.I.E), fun h => hθt ?_⟩
    have h1 : θ = t := RingOfIntegers.coe_injective (by
      have h' := h
      rw [hσθ] at h'
      exact h'.symm)
    rw [h1, sub_self]
    exact Q.zero_mem
  have hfixd : star (((θ : X.B.I.E) - t) ^ 2) = ((θ : X.B.I.E) - t) ^ 2 := by
    rw [star_pow, star_sub, ← ht', ht', star_star]
    ring
  obtain ⟨f, hf⟩ := (hfix _).mp hfixd
  have hfi : IsIntegral ℤ f := by
    have h1 := RingOfIntegers.isIntegral_coe ((θ - t) ^ 2)
    push_cast at h1
    rw [← hf] at h1
    exact (isIntegral_algebraMap_iff ).mp h1
  let e : 𝓞 X.B.I.F := ⟨f, hfi⟩
  have he : ((θ : X.B.I.E) - t) ^ 2 = algebraMap X.B.I.F X.B.I.E (e : X.B.I.F) := hf.symm
  have hev : e ∉ v.asIdeal := by
    intro hmem
    apply hθt
    rw [← hQv, Ideal.mem_comap] at hmem
    have h2 : algebraMap (𝓞 X.B.I.F) (𝓞 X.B.I.E) e = (θ - t) ^ 2 := by
      apply RingOfIntegers.coe_injective
      rw [← IsScalarTower.algebraMap_apply (𝓞 X.B.I.F) (𝓞 X.B.I.E) X.B.I.E,
        IsScalarTower.algebraMap_apply (𝓞 X.B.I.F) X.B.I.F X.B.I.E]
      push_cast
      exact he.symm
    rw [h2] at hmem
    exact hQmax.isPrime.mem_of_pow_mem 2 hmem
  have hlin : ∀ (c : Fv X.B.I.F v) (x w : Fv X.B.I.F v ⊗[X.B.I.F] X.B.I.E),
      Algebra.trace (Fv X.B.I.F v) _ (x * (algebraMap (Fv X.B.I.F v) _ c * w)) =
        c * Algebra.trace (Fv X.B.I.F v) _ (x * w) := by
    intro c x w
    rw [mul_left_comm, ← Algebra.smul_def, map_smul, smul_eq_mul]
  have hCv := fun x => hC X.B.I.F htr ψ hψ hstd v x
  rw [sc_eq]
  constructor
  · intro h
    refine dual_mem v σ hinv hnt hdeg θ t hσθ e he hev _ (fun x hx => ?_)
    rw [hlin]
    refine (hCv _).mp (fun c hc => ?_)
    rw [mul_comm, ← hlin, ← Algebra.smul_def]
    rw [show x * (c • y) = c • x * y by rw [smul_mul_assoc, mul_smul_comm]]
    exact h _ (oev_smul' v hc hx)
  · intro h x hx
    have h1 : dV v * Algebra.trace (Fv X.B.I.F v) _ (x * y) ∈ v.adicCompletionIntegers X.B.I.F := by
      rw [← hlin]
      exact trace_mem v (mul_mem v hx h)
    have := (hCv _).mpr h1 1 (v.adicCompletionIntegers X.B.I.F).one_mem
    rwa [mul_one] at this

end Formalism.L2.SG.Pf.NcVal
