module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OnePointBasisFundamentalDomainVolume
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PairingTriangular

@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate ENNReal

noncomputable section

open Classical

def PDDual (ω₁ ω₂ : ℂ) (A : ℂ → ℂ) : Prop :=
  ∀ (S : Finset ℂ) (c : ℂ → ℂ), (∀ σ ∈ S, TBB.InDual ω₁ ω₂ σ) →
    0 ≤ (∑ σ ∈ S, ∑ σ' ∈ S, A (σ - σ') * c σ * conj (c σ')).re

def GermAtPD {P : M.Par} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (p : KB.Pl P Wp Wq) (nn : ℝ → ℝ)
    (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (Y : Finset ℝ) (K N : ℕ) : Prop :=
  ∀ b s : ℕ, 1 ≤ b → 2 ≤ s → b + s - 1 ≤ P.r + 1 → ∀ h : C.LPt, D.IsLocPt h (b - 1) → ∀ w, TBB.AdmW P p.l0 Y w →
    w.length + K ≤ N →
    (∀ w', TBB.IsExt P p.l0 Y N K w w' →
      BddAbove (Set.range fun t : {t : ℂ // t ≠ 0} => TBB.Ew p nn F (b + s - 2) w' (h ++ [(s - 1, t.1)]))) →
    ContinuousOn (fun z : ℂ => TBB.Ew p nn F (b + s - 1) w (h ++ [(s, z)])) {0}ᶜ ∧
    Integrable (fun z : ℂ => TBB.Ew p nn F (b + s - 1) w (h ++ [(s, z)])) ∧
    ∀ ω₁ ω₂ : ℂ, (conj ω₁ * ω₂).im ≠ 0 → ∃ A : ℂ → ℂ, PDDual ω₁ ω₂ A ∧
      ∀ σ : ℂ, TBB.InDual ω₁ ω₂ σ →
        (‖(Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv σ z * (TBB.Ew p nn F (b + s - 1) w (h ++ [(s, z)]) : ℂ)) + A σ‖₊ :
            ℝ≥0∞) ≤
          limsup (fun t : ℂ =>
            (‖TBB.NP p nn F (b + s - 2) w (h ++ [(s - 1, t)]) (h ++ [(s - 1, (t⁻¹ + σ)⁻¹)])‖₊ : ℝ≥0∞)) (𝓝[≠] 0)

theorem lp_pd (ω₁ ω₂ : ℂ) (hω : (conj ω₁ * ω₂).im ≠ 0) (A : ℂ → ℂ) (hA : PDDual ω₁ ω₂ A) :
    crystallineComparison.PDOn (crystallineComparison.dualSet (Submodule.span ℤ (Set.range (TBBx5.lp_b ω₁ ω₂ hω))))
      (fun τ : crystallineComparison.V 1 => (Real.pi : ℂ) * A (2 * Real.pi * Complex.I * τ 0)) := by
  intro S c hS
  have hne : (2 * Real.pi * Complex.I : ℂ) ≠ 0 := Complex.two_pi_I_ne_zero

  have hinj : Set.InjOn (fun τ : crystallineComparison.V 1 => 2 * Real.pi * Complex.I * τ 0) (S : Set (crystallineComparison.V 1)) := by
    intro x _ y _ hxy
    funext i
    have hi : i = 0 := Subsingleton.elim _ _
    subst hi
    exact mul_left_cancel₀ hne hxy
  have hc : ∀ τ : crystallineComparison.V 1,
      (fun _ : Fin 1 => (2 * Real.pi * Complex.I * τ 0) / (2 * Real.pi * Complex.I)) = τ := by
    intro τ
    funext i
    have hi : i = 0 := Subsingleton.elim _ _
    subst hi
    exact mul_div_cancel_left₀ _ hne
  have key := hA (S.image fun τ : crystallineComparison.V 1 => 2 * Real.pi * Complex.I * τ 0)
    (fun z => c (fun _ => z / (2 * Real.pi * Complex.I))) (by
      intro σ hσ
      obtain ⟨τ, hτ, rfl⟩ := Finset.mem_image.1 hσ
      exact (TBBx5.lp_dual ω₁ ω₂ hω τ).1 (hS τ hτ))
  rw [Finset.sum_image hinj] at key
  have e : ∀ τ ∈ S, (∑ σ' ∈ S.image (fun τ : crystallineComparison.V 1 => 2 * Real.pi * Complex.I * τ 0),
      A (2 * Real.pi * Complex.I * τ 0 - σ') * c (fun _ => (2 * Real.pi * Complex.I * τ 0) / (2 * Real.pi * Complex.I)) *
        conj (c (fun _ => σ' / (2 * Real.pi * Complex.I)))) =
      ∑ τ' ∈ S, A (2 * Real.pi * Complex.I * τ 0 - 2 * Real.pi * Complex.I * τ' 0) * c τ * conj (c τ') := by
    intro τ _
    rw [Finset.sum_image hinj]
    refine Finset.sum_congr rfl fun τ' _ => ?_
    rw [hc τ, hc τ']
  rw [Finset.sum_congr rfl e] at key
  have e2 : (∑ σ ∈ S, ∑ σ' ∈ S, (Real.pi : ℂ) * A (2 * Real.pi * Complex.I * (σ - σ') 0) * c σ *
      starRingEnd ℂ (c σ')) = (Real.pi : ℂ) * ∑ τ ∈ S, ∑ τ' ∈ S,
        A (2 * Real.pi * Complex.I * τ 0 - 2 * Real.pi * Complex.I * τ' 0) * c τ * conj (c τ') := by
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun τ _ => ?_
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun τ' _ => ?_
    rw [Pi.sub_apply, mul_sub]
    ring
  rw [e2, Complex.re_ofReal_mul]
  exact mul_nonneg Real.pi_pos.le key

theorem lattice_poissonPD (E : ℂ → ℝ) (hE0 : ∀ z, 0 ≤ E z) (hEl : LowerSemicontinuous E) (hEi : Integrable E)
    (ω₁ ω₂ z₀ : ℂ) (hω : (conj ω₁ * ω₂).im ≠ 0) (A : ℂ → ℂ) (hA : PDDual ω₁ ω₂ A) :
    ENNReal.ofReal (|(conj ω₁ * ω₂).im| / Real.pi) *
        ∑' ab : ℤ × ℤ, ENNReal.ofReal (E (z₀ + (ab.1 : ℂ) * ω₁ + (ab.2 : ℂ) * ω₂)) ≤
      ∑' σ : {σ : ℂ // TBB.InDual ω₁ ω₂ σ},
        (‖(Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv σ.1 z * (E z : ℂ)) + A σ.1‖₊ : ℝ≥0∞) := by
  classical
  by_cases hsum : Summable (fun σ : {σ : ℂ // TBB.InDual ω₁ ω₂ σ} =>
      ‖(Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv σ.1 z * (E z : ℂ)) + A σ.1‖)
  swap
  ·
    have htop : (∑' σ : {σ : ℂ // TBB.InDual ω₁ ω₂ σ},
        (‖(Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv σ.1 z * (E z : ℂ)) + A σ.1‖₊ : ℝ≥0∞)) = ⊤ := by
      by_contra hne
      exact hsum ((NNReal.summable_coe.2 (ENNReal.tsum_coe_ne_top_iff_summable.1 hne)).congr
        fun σ => coe_nnnorm _)
    rw [htop]
    exact le_top
  have hpi : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.2 Real.pi_ne_zero
  have hNl : LowerSemicontinuous (fun z : crystallineComparison.V 1 => E (z 0)) :=
    fun z y hy => ((continuous_apply 0).tendsto z).eventually (hEl (z 0) y hy)
  have hNi : Integrable (fun z : crystallineComparison.V 1 => E (z 0)) := by
    have hmp := MeasureTheory.volume_preserving_funUnique (Fin 1) ℂ
    exact (hmp.integrable_comp_emb (MeasurableEquiv.measurableEmbedding _)).2 hEi
  have hPD := lp_pd ω₁ ω₂ hω A hA

  have hrel : ∀ τ : crystallineComparison.dualSet (Submodule.span ℤ (Set.range (TBBx5.lp_b ω₁ ω₂ hω))),
      ‖crystallineComparison.fourier (fun z : crystallineComparison.V 1 => E (z 0)) τ + (Real.pi : ℂ) * A (2 * Real.pi * Complex.I * (τ : crystallineComparison.V 1) 0)‖ =
        Real.pi * ‖(Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv ((TBBx5.lp_eqv ω₁ ω₂ hω).symm τ).1 z * (E z : ℂ)) +
          A ((TBBx5.lp_eqv ω₁ ω₂ hω).symm τ).1‖ := by
    intro τ
    have e1 : crystallineComparison.fourier (fun z : crystallineComparison.V 1 => E (z 0)) τ +
        (Real.pi : ℂ) * A (2 * Real.pi * Complex.I * (τ : crystallineComparison.V 1) 0) =
        (Real.pi : ℂ) * ((Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv ((TBBx5.lp_eqv ω₁ ω₂ hω).symm τ).1 z * (E z : ℂ)) +
          A ((TBBx5.lp_eqv ω₁ ω₂ hω).symm τ).1) := by
      rw [TBBx5.lp_fourier, mul_add, ← mul_assoc, mul_inv_cancel₀ hpi, one_mul]
      rfl
    rw [e1, norm_mul, Complex.norm_real, Real.norm_of_nonneg Real.pi_pos.le]
  have hsumm : Summable (fun τ : crystallineComparison.dualSet (Submodule.span ℤ (Set.range (TBBx5.lp_b ω₁ ω₂ hω))) =>
      ‖crystallineComparison.fourier (fun z : crystallineComparison.V 1 => E (z 0)) τ +
        (fun τ : crystallineComparison.V 1 => (Real.pi : ℂ) * A (2 * Real.pi * Complex.I * τ 0)) τ‖) := by
    refine Summable.congr ?_ fun τ => (hrel τ).symm
    refine ((TBBx5.lp_eqv ω₁ ω₂ hω).summable_iff).1 ?_
    refine (hsum.mul_left Real.pi).congr fun σ => ?_
    simp only [Function.comp_apply, Equiv.symm_apply_apply]
  have hR : (∑' τ : crystallineComparison.dualSet (Submodule.span ℤ (Set.range (TBBx5.lp_b ω₁ ω₂ hω))),
      ‖crystallineComparison.fourier (fun z : crystallineComparison.V 1 => E (z 0)) τ +
        (fun τ : crystallineComparison.V 1 => (Real.pi : ℂ) * A (2 * Real.pi * Complex.I * τ 0)) τ‖) =
      Real.pi * ∑' σ : {σ : ℂ // TBB.InDual ω₁ ω₂ σ},
        ‖(Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv σ.1 z * (E z : ℂ)) + A σ.1‖ := by
    rw [tsum_congr hrel, ← tsum_mul_left]
    exact (TBBx5.lp_eqv ω₁ ω₂ hω).symm.tsum_eq
      (fun σ : {σ : ℂ // TBB.InDual ω₁ ω₂ σ} =>
        Real.pi * ‖(Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv σ.1 z * (E z : ℂ)) + A σ.1‖)
  have key := Formalism.FourierDecayAlt.P.latticeHerglotzBound_statement 1 (Submodule.span ℤ (Set.range (TBBx5.lp_b ω₁ ω₂ hω)))
    (fun z : crystallineComparison.V 1 => E (z 0)) (fun τ : crystallineComparison.V 1 => (Real.pi : ℂ) * A (2 * Real.pi * Complex.I * τ 0))
    (fun z => hE0 _) hNl hNi hPD hsumm
  rw [hR, TBBx5.lp_covol] at key

  have hRHS : (∑' σ : {σ : ℂ // TBB.InDual ω₁ ω₂ σ},
      (‖(Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv σ.1 z * (E z : ℂ)) + A σ.1‖₊ : ℝ≥0∞)) =
      ENNReal.ofReal (∑' σ : {σ : ℂ // TBB.InDual ω₁ ω₂ σ},
        ‖(Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv σ.1 z * (E z : ℂ)) + A σ.1‖) := by
    rw [ENNReal.ofReal_tsum_of_nonneg (fun _ => norm_nonneg _) hsum]
    refine tsum_congr fun σ => ?_
    rw [← coe_nnnorm, ENNReal.ofReal_coe_nnreal]
  rw [hRHS, ENNReal.tsum_eq_iSup_sum, ENNReal.mul_iSup]
  refine iSup_le fun T => ?_
  have hinj : Set.InjOn (fun ab : ℤ × ℤ => fun _ : Fin 1 => z₀ + (ab.1 : ℂ) * ω₁ + (ab.2 : ℂ) * ω₂)
      (T : Set (ℤ × ℤ)) := by
    intro x _ y _ hxy
    have h0 := congrFun hxy 0
    simp only at h0
    have hli : LinearIndependent ℝ ![(fun _ : Fin 1 => ω₁), (fun _ : Fin 1 => ω₂)] := by
      rw [← TBBx5.lp_b_apply ω₁ ω₂ hω]
      exact (TBBx5.lp_b ω₁ ω₂ hω).linearIndependent
    obtain ⟨h1, h2⟩ := LinearIndependent.pair_iff.1 hli ((x.1 - y.1 : ℤ) : ℝ) ((x.2 - y.2 : ℤ) : ℝ) (by
      funext i
      simp only [Pi.add_apply, Pi.smul_apply, Complex.real_smul, Pi.zero_apply]
      push_cast
      linear_combination h0)
    exact Prod.ext (sub_eq_zero.1 (Int.cast_eq_zero.1 h1)) (sub_eq_zero.1 (Int.cast_eq_zero.1 h2))
  have k2 := key (fun _ => z₀)
    (T.image fun ab : ℤ × ℤ => fun _ : Fin 1 => z₀ + (ab.1 : ℂ) * ω₁ + (ab.2 : ℂ) * ω₂) (by
      intro z hz
      obtain ⟨ab, _, rfl⟩ := Finset.mem_image.1 hz
      rw [TBBx5.lp_mem]
      exact ⟨ab.1, ab.2, by funext i; simp only [Pi.sub_apply]; ring⟩)
  rw [Finset.sum_image hinj] at k2
  have hE : ∀ ab ∈ T, 0 ≤ E (z₀ + (ab.1 : ℂ) * ω₁ + (ab.2 : ℂ) * ω₂) := fun ab _ => hE0 _
  rw [← ENNReal.ofReal_sum_of_nonneg hE, ← ENNReal.ofReal_mul (div_nonneg (abs_nonneg _) Real.pi_pos.le)]
  refine ENNReal.ofReal_le_ofReal ?_
  rw [div_mul_eq_mul_div, div_le_iff₀ Real.pi_pos]
  have k3 : |(conj ω₁ * ω₂).im| * ∑ ab ∈ T, E (z₀ + (ab.1 : ℂ) * ω₁ + (ab.2 : ℂ) * ω₂) ≤
      Real.pi * ∑' σ : {σ : ℂ // TBB.InDual ω₁ ω₂ σ},
        ‖(Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv σ.1 z * (E z : ℂ)) + A σ.1‖ := k2
  linarith [k3]

theorem block_growth_bound_of_positive_germ {P : M.Par} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]
    (p : KB.Pl P Wp Wq) (nn : ℝ → ℝ) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (Y : Finset ℝ) (K N : ℕ)
    (hP : TBB.PosAt p nn F Y N) (hG : GermAtPD p nn F Y K N) : TBB.BlockGrowthBound p nn F Y K N := by
  intro b s hb hs hbs h hh w hw hwl hB ω₁ ω₂ z₀ hω
  obtain ⟨hc, hi, hpd⟩ := hG b s hb hs hbs h hh w hw hwl hB
  obtain ⟨A, hA, hAb⟩ := hpd ω₁ ω₂ hω
  have hE0 : ∀ z : ℂ, 0 ≤ TBB.Ew p nn F (b + s - 1) w (h ++ [(s, z)]) :=
    fun z => hP _ _ _ hw (by omega)
  have hz : TBB.Ew p nn F (b + s - 1) w (h ++ [(s, 0)]) = 0 := TBBx5.gm_ew_zero p nn F _ w h s

  have hl : LowerSemicontinuous (fun z : ℂ => TBB.Ew p nn F (b + s - 1) w (h ++ [(s, z)])) := by
    intro z y hy
    by_cases hz0 : z = 0
    · subst hz0
      simp only [hz] at hy
      exact Filter.Eventually.of_forall fun z' => lt_of_lt_of_le hy (hE0 z')
    · exact (hc.continuousAt (isOpen_compl_singleton.mem_nhds hz0)).lowerSemicontinuousAt y hy
  exact ⟨fun σ => (Real.pi⁻¹ : ℂ) * (∫ z : ℂ, P5.fsv σ z * (TBB.Ew p nn F (b + s - 1) w (h ++ [(s, z)]) : ℂ)) + A σ,
    lattice_poissonPD _ hE0 hl hi ω₁ ω₂ z₀ hω A hA, fun σ hσ => hAb σ hσ⟩

end

end Formalism.FourierDecayAlt.P.CutBP

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ComplexConjugate ENNReal

noncomputable section

end

end Formalism.FourierDecayAlt.P.CutBP
