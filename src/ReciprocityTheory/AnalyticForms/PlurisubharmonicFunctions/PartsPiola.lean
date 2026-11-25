module

public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PartsCalc
public import Mathlib.Analysis.Calculus.FDeriv.Symmetric

@[expose] public section

namespace ReciprocityTheory.AnForm.A

open MeasureTheory ReciprocityTheory.AnForm Matrix Filter Topology

noncomputable section

theorem third_fderiv_symm_one_two {D : ℕ} (φ : (Fin D → ℂ) → ℝ) (z : Fin D → ℂ) (h : ContDiffAt ℝ 3 φ z)
    (u x : Fin D → ℂ) :
    fderiv ℝ (fderiv ℝ (fderiv ℝ φ)) z u x = fderiv ℝ (fderiv ℝ (fderiv ℝ φ)) z x u := by
  have h2 : ContDiffAt ℝ 2 (fderiv ℝ φ) z := h.fderiv_right (by first | norm_num)
  exact h2.isSymmSndFDerivAt (by first | simp) u x

theorem differentiableAt_snd_fderiv {D : ℕ} (φ : (Fin D → ℂ) → ℝ) (z : Fin D → ℂ)
    (h : ContDiffAt ℝ 3 φ z) : DifferentiableAt ℝ (fderiv ℝ (fderiv ℝ φ)) z := by
  have h2 : ContDiffAt ℝ 2 (fderiv ℝ φ) z := h.fderiv_right (by first | norm_num)
  have h1 : ContDiffAt ℝ 1 (fderiv ℝ (fderiv ℝ φ)) z := h2.fderiv_right (by first | norm_num)
  exact h1.differentiableAt (by first | norm_num)

theorem third_fderiv_symm_two_three {D : ℕ} (φ : (Fin D → ℂ) → ℝ) (z : Fin D → ℂ) (h : ContDiffAt ℝ 3 φ z)
    (u x y : Fin D → ℂ) :
    fderiv ℝ (fderiv ℝ (fderiv ℝ φ)) z u x y = fderiv ℝ (fderiv ℝ (fderiv ℝ φ)) z u y x := by
  have hd := differentiableAt_snd_fderiv φ z h
  have key : ∀ x y : Fin D → ℂ,
      fderiv ℝ (⇑(evalL x y) ∘ fderiv ℝ (fderiv ℝ φ)) z =
        (evalL x y).comp (fderiv ℝ (fderiv ℝ (fderiv ℝ φ)) z) :=
    fun x y => ((evalL x y).hasFDerivAt.comp z hd.hasFDerivAt).fderiv
  have h2 : ContDiffAt ℝ 2 φ z := h.of_le (by first | norm_num)
  have hev : ∀ᶠ w in 𝓝 z, ContDiffAt ℝ 2 φ w := h2.eventually (by first | simp)
  have ev : (⇑(evalL x y) ∘ fderiv ℝ (fderiv ℝ φ)) =ᶠ[𝓝 z]
      (⇑(evalL y x) ∘ fderiv ℝ (fderiv ℝ φ)) := by
    filter_upwards [hev] with w hw
    simp only [Function.comp_apply, evalL, ContinuousLinearMap.coe_comp',
      ContinuousLinearMap.apply_apply]
    exact hw.isSymmSndFDerivAt (by first | simp) x y
  have e := Filter.EventuallyEq.fderiv_eq (𝕜 := ℝ) ev
  rw [key x y, key y x] at e
  have e2 := congrArg (fun L => L u) e
  simpa only [evalL, ContinuousLinearMap.coe_comp', Function.comp_apply,
    ContinuousLinearMap.apply_apply] using e2

theorem dzEntry_symm {D : ℕ} (T : (Fin D → ℂ) →L[ℝ] BilinSp D) (hT : ∀ u x, T u x = T x u)
    (j a b : Fin D) :
    (1 / 2 : ℂ) * hessEntry a b (T (Pi.single j 1)) +
        (-(Complex.I / 2)) * hessEntry a b (T (Complex.I • Pi.single j 1)) =
      (1 / 2 : ℂ) * hessEntry j b (T (Pi.single a 1)) +
        (-(Complex.I / 2)) * hessEntry j b (T (Complex.I • Pi.single a 1)) := by
  have e1 := hT (Pi.single j 1) (Pi.single a 1)
  have e2 := hT (Pi.single j 1) (Complex.I • Pi.single a 1)
  have e3 := hT (Complex.I • Pi.single j 1) (Pi.single a 1)
  have e4 := hT (Complex.I • Pi.single j 1) (Complex.I • Pi.single a 1)
  simp only [hessEntry_apply, e1, e2, e3, e4]
  push_cast
  linear_combination
    ((T (Complex.I • Pi.single a 1) (Pi.single j 1) (Complex.I • Pi.single b 1) : ℂ) -
      (T (Pi.single a 1) (Complex.I • Pi.single j 1) (Complex.I • Pi.single b 1) : ℂ)) / 8 *
      Complex.I_sq

theorem dzbEntry_symm {D : ℕ} (T : (Fin D → ℂ) →L[ℝ] BilinSp D)
    (hT : ∀ u x y, T u x y = T y x u) (k a b : Fin D) :
    (1 / 2 : ℂ) * hessEntry a b (T (Pi.single k 1)) +
        (Complex.I / 2) * hessEntry a b (T (Complex.I • Pi.single k 1)) =
      (1 / 2 : ℂ) * hessEntry a k (T (Pi.single b 1)) +
        (Complex.I / 2) * hessEntry a k (T (Complex.I • Pi.single b 1)) := by
  have e1 := hT (Pi.single b 1) (Pi.single a 1) (Pi.single k 1)
  have e2 := hT (Pi.single b 1) (Complex.I • Pi.single a 1) (Complex.I • Pi.single k 1)
  have e3 := hT (Pi.single b 1) (Pi.single a 1) (Complex.I • Pi.single k 1)
  have e4 := hT (Pi.single b 1) (Complex.I • Pi.single a 1) (Pi.single k 1)
  have e5 := hT (Complex.I • Pi.single b 1) (Pi.single a 1) (Pi.single k 1)
  have e6 := hT (Complex.I • Pi.single b 1) (Complex.I • Pi.single a 1)
    (Complex.I • Pi.single k 1)
  have e7 := hT (Complex.I • Pi.single b 1) (Pi.single a 1) (Complex.I • Pi.single k 1)
  have e8 := hT (Complex.I • Pi.single b 1) (Complex.I • Pi.single a 1) (Pi.single k 1)
  simp only [hessEntry_apply, e1, e2, e3, e4, e5, e6, e7, e8]
  push_cast
  linear_combination
    ((T (Pi.single k 1) (Complex.I • Pi.single a 1) (Complex.I • Pi.single b 1) : ℂ) -
      (T (Complex.I • Pi.single k 1) (Complex.I • Pi.single a 1) (Pi.single b 1) : ℂ)) / 8 *
      Complex.I_sq

theorem piolaStatement_statement : PiolaStatement := by
  intro n φ U hU hφ z hz
  have hφz : ∀ i, ContDiffAt ℝ 3 (φ i) z := fun i => (hφ i).contDiffAt (hU.mem_nhds hz)
  have hdiff : ∀ i, DifferentiableAt ℝ (fderiv ℝ (fderiv ℝ (φ i))) z :=
    fun i => differentiableAt_snd_fderiv _ z (hφz i)
  set T : Fin n → (Fin (n + 1) → ℂ) →L[ℝ] BilinSp (n + 1) :=
    fun i => fderiv ℝ (fderiv ℝ (fderiv ℝ (φ i))) z with hTdef
  set H : Fin n → Matrix (Fin (n + 1)) (Fin (n + 1)) ℂ := fun l => hessC (φ l) z with hH
  constructor
  · intro k
    have hj : ∀ j, dz j (fun y => hessCof φ y j k) z = ∑ i, mdisc (Function.update
        (Function.update (Fin.cons 0 H) 0 (Matrix.single j k 1)) i.succ
        ((1 / 2 : ℂ) • hessMat (T i (Pi.single j 1)) +
          (-(Complex.I / 2)) • hessMat (T i (Complex.I • Pi.single j 1)))) := by
      intro j
      obtain ⟨_, hD⟩ := hessCof_hasDeriv φ z hdiff j k
      rw [Fin.update_cons_zero]
      simp only [mdisc_update_comb, Finset.sum_add_distrib, ← Finset.mul_sum]
      show (fderiv ℝ _ z _ - Complex.I * fderiv ℝ _ z _) / 2 = _
      rw [hD, hD]; ring
    rw [Finset.sum_congr rfl fun j _ => hj j, Finset.sum_comm]
    refine Finset.sum_eq_zero fun i _ => ?_
    refine mdisc_sum_row _ 0 i.succ (Fin.succ_ne_zero i).symm k _ fun j a b => ?_
    simp only [Matrix.add_apply, Matrix.smul_apply, hessMat_apply, smul_eq_mul]
    exact dzEntry_symm (T i) (third_fderiv_symm_one_two _ z (hφz i)) j a b
  · intro j
    have hk : ∀ k, dzb k (fun y => hessCof φ y j k) z = ∑ i, mdisc (Function.update
        (Function.update (Fin.cons 0 H) 0 (Matrix.single j k 1)) i.succ
        ((1 / 2 : ℂ) • hessMat (T i (Pi.single k 1)) +
          (Complex.I / 2) • hessMat (T i (Complex.I • Pi.single k 1)))) := by
      intro k
      obtain ⟨_, hD⟩ := hessCof_hasDeriv φ z hdiff j k
      rw [Fin.update_cons_zero]
      simp only [mdisc_update_comb, Finset.sum_add_distrib, ← Finset.mul_sum]
      show (fderiv ℝ _ z _ + Complex.I * fderiv ℝ _ z _) / 2 = _
      rw [hD, hD]; ring
    rw [Finset.sum_congr rfl fun k _ => hk k, Finset.sum_comm]
    refine Finset.sum_eq_zero fun i _ => ?_
    refine mdisc_sum_col _ 0 i.succ (Fin.succ_ne_zero i).symm j _ fun k a b => ?_
    simp only [Matrix.add_apply, Matrix.smul_apply, hessMat_apply, smul_eq_mul]
    refine dzbEntry_symm (T i) (fun u x y => ?_) k a b
    rw [third_fderiv_symm_one_two _ z (hφz i), third_fderiv_symm_two_three _ z (hφz i), third_fderiv_symm_one_two _ z (hφz i)]

section DzCalc

variable {D : ℕ} {j : Fin D} {f g : (Fin D → ℂ) → ℂ} {z : Fin D → ℂ}

theorem dz_congr (h : f =ᶠ[𝓝 z] g) : dz j f z = dz j g z := by
  have e : fderiv ℝ f z = fderiv ℝ g z := Filter.EventuallyEq.fderiv_eq h
  unfold dz
  rw [e]

theorem dzb_congr (h : f =ᶠ[𝓝 z] g) : dzb j f z = dzb j g z := by
  have e : fderiv ℝ f z = fderiv ℝ g z := Filter.EventuallyEq.fderiv_eq h
  unfold dzb
  rw [e]

theorem dz_add (hf : DifferentiableAt ℝ f z) (hg : DifferentiableAt ℝ g z) :
    dz j (fun y => f y + g y) z = dz j f z + dz j g z := by
  have e : fderiv ℝ (fun y => f y + g y) z = fderiv ℝ f z + fderiv ℝ g z := by
    first
    | (exact (hf.hasFDerivAt.add hg.hasFDerivAt).fderiv)
  unfold dz
  rw [e, ContinuousLinearMap.add_apply, ContinuousLinearMap.add_apply]
  ring

theorem dz_mul (hf : DifferentiableAt ℝ f z) (hg : DifferentiableAt ℝ g z) :
    dz j (fun y => f y * g y) z = dz j f z * g z + f z * dz j g z := by
  have e : fderiv ℝ (fun y => f y * g y) z = f z • fderiv ℝ g z + g z • fderiv ℝ f z := by
    first
    | (exact (hf.hasFDerivAt.mul hg.hasFDerivAt).fderiv)
  unfold dz
  rw [e]
  simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
  ring

theorem dz_of_eventually_zero (h : f =ᶠ[𝓝 z] fun _ => 0) : dz j f z = 0 := by
  rw [dz_congr h]
  unfold dz
  simp

theorem dzb_of_eventually_zero (h : f =ᶠ[𝓝 z] fun _ => 0) : dzb j f z = 0 := by
  rw [dzb_congr h]
  unfold dzb
  simp

theorem differentiableAt_dzb (hf : ContDiffAt ℝ 2 f z) : DifferentiableAt ℝ (dzb j f) z := by
  have hd : DifferentiableAt ℝ (fderiv ℝ f) z :=
    (hf.fderiv_right (m := 1) (by first | norm_num)).differentiableAt (by first | norm_num)
  have h1 : DifferentiableAt ℝ (fun y => fderiv ℝ f y (Pi.single j 1)) z :=
    hd.clm_apply (differentiableAt_const _)
  have h2 : DifferentiableAt ℝ (fun y => fderiv ℝ f y (Complex.I • Pi.single j 1)) z :=
    hd.clm_apply (differentiableAt_const _)
  have h3 : DifferentiableAt ℝ (fun y => Complex.I * fderiv ℝ f y (Complex.I • Pi.single j 1)) z :=
    (differentiableAt_const _).mul h2
  have h4 : DifferentiableAt ℝ (fun y => fderiv ℝ f y (Pi.single j 1) +
      Complex.I * fderiv ℝ f y (Complex.I • Pi.single j 1)) z := h1.add h3
  have h5 : DifferentiableAt ℝ (fun y => (fderiv ℝ f y (Pi.single j 1) +
      Complex.I * fderiv ℝ f y (Complex.I • Pi.single j 1)) / 2) z := by
    first
      | (simpa only [div_eq_mul_inv] using h4.mul_const (2⁻¹ : ℂ))
  exact h5

end DzCalc

theorem maDens_cons_eq {n : ℕ} (φ : Fin n → (Fin (n + 1) → ℂ) → ℝ) (v : (Fin (n + 1) → ℂ) → ℝ)
    (z : Fin (n + 1) → ℂ) :
    maDens (Fin.cons v φ) z = ((n + 1).factorial : ℝ) * (2 / Real.pi) ^ (n + 1) *
      (mdisc (Fin.cons (hessC v z) fun i => hessC (φ i) z)).re := by
  have e : (fun k => hessC ((Fin.cons v φ : Fin (n + 1) → (Fin (n + 1) → ℂ) → ℝ) k) z) =
      Fin.cons (hessC v z) fun i => hessC (φ i) z := by
    funext k
    refine Fin.cases ?_ (fun i => ?_) k <;> simp
  rw [maDens, e]

theorem monge_ampere_density_cofactor : MaDensCofStatement := by
  intro n φ v U hU hv z hz
  have hs : ∀ j k : Fin (n + 1), hessC v z j k = dz j (dzb k (cplx v)) z := by
    intro j k
    have hv2 : ContDiffAt ℝ 2 v z := hv.contDiffAt (hU.mem_nhds hz)
    have hDv : DifferentiableAt ℝ (fderiv ℝ v) z :=
      (hv2.fderiv_right (m := 1) (by first | norm_num)).differentiableAt (by first | norm_num)
    have hw : ∀ w : Fin (n + 1) → ℂ, HasFDerivAt (fun y => ((fderiv ℝ v y w : ℝ) : ℂ))
        (Complex.ofRealCLM.comp
          ((ContinuousLinearMap.apply ℝ ℝ w).comp (fderiv ℝ (fderiv ℝ v) z))) z :=
      fun w => Complex.ofRealCLM.hasFDerivAt.comp z
        ((ContinuousLinearMap.apply ℝ ℝ w).hasFDerivAt.comp z hDv.hasFDerivAt)
    have hg : HasFDerivAt (fun y => (1 / 2 : ℂ) * (((fderiv ℝ v y (Pi.single k 1) : ℝ) : ℂ) +
        Complex.I * ((fderiv ℝ v y (Complex.I • Pi.single k 1) : ℝ) : ℂ)))
        ((1 / 2 : ℂ) • (Complex.ofRealCLM.comp ((ContinuousLinearMap.apply ℝ ℝ (Pi.single k 1)).comp
            (fderiv ℝ (fderiv ℝ v) z)) +
          Complex.I • Complex.ofRealCLM.comp
            ((ContinuousLinearMap.apply ℝ ℝ (Complex.I • Pi.single k 1)).comp
              (fderiv ℝ (fderiv ℝ v) z)))) z := by
      first
        | (exact ((hw _).add ((hw _).const_mul Complex.I)).const_mul (1 / 2 : ℂ))
    have heq : dzb k (cplx v) =ᶠ[𝓝 z] fun y => (1 / 2 : ℂ) *
        (((fderiv ℝ v y (Pi.single k 1) : ℝ) : ℂ) +
          Complex.I * ((fderiv ℝ v y (Complex.I • Pi.single k 1) : ℝ) : ℂ)) := by
      filter_upwards [hU.mem_nhds hz] with y hy
      have hdy : DifferentiableAt ℝ v y :=
        (hv.contDiffAt (hU.mem_nhds hy)).differentiableAt (by first | norm_num)
      have hf : fderiv ℝ (cplx v) y = Complex.ofRealCLM.comp (fderiv ℝ v y) :=
        (Complex.ofRealCLM.hasFDerivAt.comp y hdy.hasFDerivAt).fderiv
      unfold dzb
      rw [hf]
      simp only [ContinuousLinearMap.coe_comp', Function.comp_apply, Complex.ofRealCLM_apply]
      ring
    rw [dz_congr heq]
    unfold dz
    rw [hg.fderiv]
    simp only [hessC, ContinuousLinearMap.smul_apply, ContinuousLinearMap.add_apply,
      ContinuousLinearMap.coe_comp', Function.comp_apply, ContinuousLinearMap.apply_apply,
      Complex.ofRealCLM_apply, smul_eq_mul]
    push_cast
    linear_combination ((fderiv ℝ (fderiv ℝ v) z (Complex.I • Pi.single j 1)
      (Complex.I • Pi.single k 1) : ℝ) : ℂ) / 4 * Complex.I_sq
  rw [maDens_cons_eq, _root_.ReciprocityTheory.AnForm.A.mdisc_cons_eq_sum]
  have hsum : (∑ j, ∑ k, hessC v z j k * mixedCof (fun i => hessC (φ i) z) j k) =
      ∑ j, ∑ k, hessCof φ z j k * dz j (dzb k (cplx v)) z := by
    refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun k _ => ?_
    rw [hs j k]
    simp only [hessCof]
    ring
  rw [hsum]

end

end ReciprocityTheory.AnForm.A
