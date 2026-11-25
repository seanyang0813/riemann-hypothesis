module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.CuspidalExponentialDecay
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.EmbeddingHermitianPairs
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FinrankEqTwoMulHalfDegree
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FlowDomainCriterionHolds
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.LminorSubmatrixCastSucc
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.M3bNormHolds
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MajPos
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MaximumBoundField
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.PeriodicSchwarzLemma

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.FD

open NumberField Complex Filter
open scoped ComplexConjugate Topology Real

variable {E : Type} [Field E] [NumberField E] [NumberField.IsCMField E]

theorem maxBound_holds : MaxBoundStatement (E := E) := by
  classical
  intro r X la P M w hP hM hw hw0 htr z0 hz0 hhalf hpos v hv hv0
  by_contra hcon
  push Not at hcon
  have hf : (1 : ℝ) ≤ (fdeg E : ℝ) := one_le_field_half_degree (E := E)
  have hk0 : 0 < X.k0 := X.minWeight_pos
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  have hD : 0 < M * ((fdeg E : ℝ) * w + 2) * X.k0 * Real.log 2 := by positivity
  set ε : ℝ := epStar M (fdeg E) w X.k0
  have hε1 : ε ≤ 1 := min_le_left _ _
  have hε2 : ε * (M * ((fdeg E : ℝ) * w + 2) * X.k0 * Real.log 2) ≤ π :=
    (le_div_iff₀ hD).mp (min_le_right _ _)
  have hεpos : 0 < ε := lt_min one_pos (div_pos Real.pi_pos hD)

  let ev : X.Ψ → Fin r → ℂ := fun τ => Data.emb τ.1 v
  let φ : ℂ → _ := fun ζ => X.flow v (fun _ => ζ) z0
  let μ : X.Ψ → ℝ := fun τ => X.k0 * X.maj z0 τ (ev τ)

  have hvv : herm X.Gm v v = 0 :=
    flowTermNormDecay.herm_eq_zero X hz0 hv fun τ => (hcon τ).trans_le hε1
  have hemb0 : ∀ τ : X.Ψ, ev τ ≠ 0 := fun τ h => hv0 <| funext fun a => by
    simpa [ev, Data.emb] using congrFun h a
  have hIsoV : X.IsIsoV ev := fun τ =>
    ⟨by show hermC τ.1 X.Gm (ev τ) (ev τ) = 0; rw [hermC_emb, hvv, map_zero], hemb0 τ⟩
  have hμpos : ∀ τ : X.Ψ, 0 < μ τ :=
    fun τ => mul_pos hk0 (Data.maj_pos (X := X.toData) hz0 τ (hemb0 τ))
  have hμlt : ∀ τ : X.Ψ, μ τ < X.k0 * ε := fun τ => mul_lt_mul_of_pos_left (hcon τ) hk0
  have httV : ∀ (s : ℂ) (τ : X.Ψ), s.im / X.ttV ev z0 τ = s.im * μ τ := fun s τ => by
    have hc : X.c τ = X.k0 := by show 2 * ‖τ.1 X.ξ0‖ = X.k0; rw [X.ξ0_abs τ]; ring
    show s.im / (1 / (X.c τ * X.maj z0 τ (ev τ))) = _
    rw [hc, one_div, div_inv_eq_mul]
  have hdomiff : ∀ ζ : ℂ, φ ζ ∈ X.dom ↔ ∀ τ : X.Ψ, 0 < 1 + ζ.im * μ τ := fun ζ => by
    have h := (flowDomainCriterion_holds (E := E) r X.toData ev hIsoV z0 hz0 (fun _ => ζ)).1
    rw [show φ ζ = X.flowV ev (fun _ => ζ) z0 from rfl, h]
    exact forall_congr' fun τ => by rw [httV ζ τ]

  obtain ⟨γ, hγΓ, hχ, hγmap⟩ := htr v hv hvv 1 (by simp [cc]) isIntegral_one
  have hSecD := hP.1.1.1
  have hSecΓ := hP.1.1.2.2
  have hshift : ∀ ζ : ℂ, φ (ζ + (M : ℂ)) = lact γ (φ ζ) := fun ζ => funext fun τ => by
    show X.flowMat v τ (ζ + (M : ℂ)) * mat z0 τ =
      (γ : Matrix (Fin r) (Fin r) E).map τ.1 * (X.flowMat v τ ζ * mat z0 τ)
    rw [hγmap τ, map_one, mul_one, ← Matrix.mul_assoc,
      EmbeddingHermitianPairs.flowMat_mul (X := X.toData) hvv τ (M : ℂ) ζ, add_comm]

  let G : ℂ → ℂ := fun ζ => if ∀ τ : X.Ψ, 0 < 1 + ζ.im * μ τ then P (φ ζ) else 0
  have hGper : Function.Periodic G (M : ℂ) := fun ζ => by
    dsimp only [G]
    simp only [Complex.add_im, Complex.ofReal_im, add_zero]
    split_ifs with hcond
    · rw [hshift ζ, hSecΓ γ hγΓ _ ((hdomiff ζ).2 hcond), hχ, one_mul]
    · rfl

  let t : ℝ := 1 / (2 * X.k0 * ε)
  let T : ℝ := 1 / (X.k0 * ε)
  have hkε : 0 < X.k0 * ε := mul_pos hk0 hεpos
  have htpos : 0 < t := by positivity
  have hTpos : 0 < T := by positivity
  have htT : t < T := one_div_lt_one_div_of_lt hkε (by linarith)
  have hTk : T * (X.k0 * ε) = 1 := by dsimp only [T]; field_simp
  have htk : t * (X.k0 * ε) = 1 / 2 := by dsimp only [t]; field_simp
  have hcondT : ∀ ζ : ℂ, -T < ζ.im → ∀ τ : X.Ψ, 0 < 1 + ζ.im * μ τ := fun ζ hζ τ => by
    nlinarith [mul_pos (show 0 < ζ.im + T by linarith) (hμpos τ),
      mul_pos hTpos (show 0 < X.k0 * ε - μ τ by linarith [hμlt τ])]
  have hdom0 : ∀ ζ : ℂ, 0 ≤ ζ.im → φ ζ ∈ X.dom :=
    fun ζ hζ => (hdomiff ζ).2 (hcondT ζ (by linarith))

  have hφd : Differentiable ℂ φ := by
    rw [differentiable_pi]; intro τ
    rw [differentiable_pi]; intro a
    rw [differentiable_pi]; intro b
    simp only [φ, Data.flow, Data.flowMat, mat, Matrix.mul_apply, Matrix.of_apply]
    fun_prop
  have hdiff : ∀ z : ℂ, -T < z.im → DifferentiableAt ℂ G z := fun z hz => by
    have hU : IsOpen {ζ : ℂ | -T < ζ.im} := isOpen_lt continuous_const Complex.continuous_im
    have hmem : ∀ ζ : ℂ, -T < ζ.im → φ ζ ∈ X.dom := fun ζ h => (hdomiff ζ).2 (hcondT ζ h)
    have h1 : DifferentiableWithinAt ℂ (fun ζ => P (φ ζ)) {ζ : ℂ | -T < ζ.im} z :=
      (hSecD _ (hmem z hz)).comp z (hφd z).differentiableWithinAt hmem
    refine (h1.differentiableAt (hU.mem_nhds hz)).congr_of_eventuallyEq ?_
    filter_upwards [hU.mem_nhds hz] with ζ hζ
    simp [G, hcondT ζ hζ]
  have hzero : Tendsto G (comap im atTop) (𝓝 0) :=
    flowTermNormDecay.tendsto_zero X la P hP hz0 hv hvv hv0 hdom0 G fun ζ hζ => by
      simp [G, φ, hcondT ζ (by linarith)]

  have hnf_nonneg : ∀ x, 0 ≤ X.nfac la x := fun x =>
    Finset.prod_nonneg fun _ _ => Finset.prod_nonneg fun _ _ => Real.rpow_nonneg (norm_nonneg _) _
  have hN0 : 0 < X.nfac la z0 := (hnf_nonneg z0).lt_of_ne' fun h => by
    have h0 : 0 < ‖P z0‖ * X.nfac la z0 := hpos
    rw [h, mul_zero] at h0; exact lt_irrefl 0 h0
  have hK : ∀ z : ℂ, z.im = -t →
      ‖G z‖ ≤ 2 * X.pnorm la P z0 * (2 : ℝ) ^ (w / 2) / X.nfac la z0 := fun z hz => by
    have hcz := hcondT z (by linarith)
    have hy := (hdomiff z).2 hcz
    have hGz : G z = P (φ z) := by simp [G, hcz]
    rw [hGz]
    have hN := m3bNorm_holds (E := E) r X.toData ev hIsoV la z0 hz0 (fun _ => z) hy
    dsimp only at hN
    let q : X.Ψ → ℝ := fun τ => 1 + z.im / X.ttV ev z0 τ
    have hq : ∀ τ : X.Ψ, 1 / 2 < q τ ∧ q τ ≤ 1 := fun τ => by
      have hq' : q τ = 1 + (-t) * μ τ := by dsimp only [q]; rw [httV z τ, hz]
      rw [hq']
      exact ⟨by nlinarith [mul_lt_mul_of_pos_left (hμlt τ) htpos],
        by nlinarith [mul_pos htpos (hμpos τ)]⟩
    have hmax : ∏ τ : X.Ψ, max (q τ) (q τ)⁻¹ ^ (X.spread la τ / 2) ≤ (2 : ℝ) ^ (w / 2) :=
      calc _ ≤ ∏ τ : X.Ψ, (2 : ℝ) ^ (X.spread la τ / 2) :=
            Finset.prod_le_prod₀
              (fun τ _ => Real.rpow_nonneg (le_trans (by linarith [(hq τ).1]) (le_max_left _ _)) _)
              fun τ _ => by
                obtain ⟨h1, h2⟩ := hq τ
                refine Real.rpow_le_rpow (le_trans (by linarith) (le_max_left _ _)) ?_
                  (div_nonneg (flowTermNormDecay.spread_nonneg' X.toData la τ) (by norm_num))
                exact max_le (by linarith) ((inv_le_comm₀ (by linarith) (by norm_num)).2 (by linarith))
        _ = (2 : ℝ) ^ (∑ τ : X.Ψ, X.spread la τ / 2) :=
            (Real.rpow_sum_of_pos (by norm_num) _ _).symm
        _ ≤ (2 : ℝ) ^ (w / 2) :=
            Real.rpow_le_rpow_of_exponent_le (by norm_num) (by rw [← Finset.sum_div]; linarith)
    have hmin : 0 < ∏ τ : X.Ψ, min (q τ) (q τ)⁻¹ ^ (X.spread la τ / 2) :=
      Finset.prod_pos fun τ _ =>
        Real.rpow_pos_of_pos (lt_min (by linarith [(hq τ).1]) (inv_pos.mpr (by linarith [(hq τ).1]))) _
    have hNy : 0 < X.nfac la (φ z) := (hnf_nonneg (φ z)).lt_of_ne' fun h => by
      have hratio : 0 < X.nfac la z0 / X.nfac la (φ z) := hmin.trans_le hN.1
      rw [h, div_zero] at hratio; exact lt_irrefl 0 hratio
    have hN0le : X.nfac la z0 ≤ (2 : ℝ) ^ (w / 2) * X.nfac la (φ z) :=
      (div_le_iff₀ hNy).mp (hN.2.trans hmax)
    have hPy : ‖P (φ z)‖ * X.nfac la (φ z) ≤ 2 * X.pnorm la P z0 := hhalf _ hy
    rw [le_div_iff₀ hN0]
    nlinarith [mul_le_mul_of_nonneg_left hN0le (norm_nonneg (P (φ z))),
      mul_le_mul_of_nonneg_left hPy (show (0 : ℝ) ≤ (2 : ℝ) ^ (w / 2) by positivity)]

  have hS := PeriodicSchwarzLemma.periodic_schwarz hM htpos htT hGper hdiff hzero hK
  have hG0 : G 0 = P z0 := by
    rw [show G 0 = P (φ 0) by simp [G]]
    congr 1; funext τ
    show X.flowMat v τ 0 * mat z0 τ = z0 τ
    rw [EmbeddingHermitianPairs.flowMat_zero (X := X.toData) v τ, Matrix.one_mul]; rfl
  rw [hG0] at hS
  have h1 : X.pnorm la P z0 ≤
      Real.exp (-2 * π * t / M) * (2 * X.pnorm la P z0 * (2 : ℝ) ^ (w / 2)) :=
    calc X.pnorm la P z0 = ‖P z0‖ * X.nfac la z0 := rfl
      _ ≤ _ := mul_le_mul_of_nonneg_right hS hN0.le
      _ = _ := by rw [mul_assoc, div_mul_cancel₀ _ hN0.ne']
  have h2 : 1 ≤ Real.exp (-2 * π * t / M) * (2 * (2 : ℝ) ^ (w / 2)) := by
    by_contra hh; push Not at hh; nlinarith [mul_lt_mul_of_pos_left hh hpos]
  have hkey : ((fdeg E : ℝ) * w + 2) * Real.log 2 ≤ 2 * π * t / M := by
    rw [show 2 * π * t / M = π / (M * X.k0 * ε) by dsimp only [t]; field_simp,
      le_div_iff₀ (by positivity)]
    linarith
  have hfin : Real.exp (-2 * π * t / M) * (2 * (2 : ℝ) ^ (w / 2)) < 1 := by
    rw [Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 2),
      show (2 : ℝ) * Real.exp (Real.log 2 * (w / 2)) =
        Real.exp (Real.log 2) * Real.exp (Real.log 2 * (w / 2)) by rw [Real.exp_log (by norm_num)],
      ← Real.exp_add, ← Real.exp_add]
    refine (Real.exp_lt_exp.mpr ?_).trans_eq Real.exp_zero
    have hneg : -2 * π * t / M = -(2 * π * t / M) := by ring
    rw [hneg]
    nlinarith [hkey, mul_le_mul_of_nonneg_right hf (mul_pos hw0 hlog2).le, mul_pos hw0 hlog2]
  exact absurd h2 (not_le.mpr hfin)

end ReciprocityTheory.ChartRestriction.G.FD
