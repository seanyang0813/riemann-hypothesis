module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ConnectionKillsSeries
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.ConnectionKillsSeries
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.GaugeBilinearTermEqNegDoubleSum

@[expose] public section

noncomputable section

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

namespace ReciprocityTheory.ChartRestriction.G.TB.WickVanishing.Val

open ReciprocityTheory.ChartRestriction.G.TB.WickVanishing.Nab


private theorem mvPowerSeries_subst_C {σ τ k : Type} [CommRing k] {a : σ → MvPowerSeries τ k} (hs : HasSubst a) (c : k) :
    subst a (C c : MvPowerSeries σ k) = (C c : MvPowerSeries τ k) := by
  have e : ∀ (ρ : Type), (C c : MvPowerSeries ρ k) = c • (1 : MvPowerSeries ρ k) := fun ρ => by
    first
    | rw [MvPowerSeries.smul_eq_C_mul, mul_one]
  rw [e σ, e τ, ← coe_substAlgHom hs, map_smul, map_one]

theorem const_subst {σ τ k : Type} [CommRing k] [Finite σ] {a : σ → MvPowerSeries τ k}
    (ha : ∀ s, constantCoeff (a s) = 0) (G : MvPowerSeries σ k) : constantCoeff (subst a G) = constantCoeff G := by
  have hs : HasSubst a := MvPowerSeries.hasSubst_of_constantCoeff_zero ha
  have h0 : constantCoeff (G - C (constantCoeff G)) = 0 := by simp
  have h1 : constantCoeff (subst a (G - C (constantCoeff G))) = 0 := by
    first
    | (apply constantCoeff_subst_eq_zero <;> assumption)
  have e : subst a (G - C (constantCoeff G)) = subst a G - C (constantCoeff G) := by
    rw [← coe_substAlgHom hs, map_sub, coe_substAlgHom hs, mvPowerSeries_subst_C hs]
  rw [e, map_sub, constantCoeff_C, sub_eq_zero] at h1
  exact h1

variable {R : Type} [CommRing R] {d : ℕ} {O : Type} [CommRing O] [StarRing O]
variable (k : Type) [CommRing k] [Algebra ℚ k] [Algebra R k]

def bE (h : PS k 2 d) : Fin d ⊕ Fin d → PS k 1 d := Sum.elim (fun j => X ((0 : Fin 1), j)) (fun i => sgOf k h i)

theorem sg_const (h : PS k 2 d) (hax : ev (n := 1) ![0, pt k d 0] h = 0) (i : Fin d) :
    constantCoeff (sgOf k h i) = 0 := by
  unfold sgOf
  rw [map_neg, neg_eq_zero, ← MvPowerSeries.coeff_zero_eq_constantCoeff_apply, coeff_ev_zero_right,
    Finsupp.embDomain_zero, coeff_pderiv]
  rw [coeff_eq_zero_of_vanish_first_axis h hax _ (fun i' => by simp [Finsupp.single_apply])]
  simp

theorem bE_const (h : PS k 2 d) (hax : ev (n := 1) ![0, pt k d 0] h = 0) : ∀ t, constantCoeff (bE k h t) = 0 := by
  intro t
  rcases t with j | i
  · show constantCoeff (X ((0 : Fin 1), j) : PS k 1 d) = 0
    simp
  · exact sg_const k h hax i

theorem E_liftX (h : PS k 2 d) (hax : ev (n := 1) ![0, pt k d 0] h = 0) (f : PS k 1 d) :
    subst (bE k h) (liftX k f) = f := by
  have hb : HasSubst (bE k h) := MvPowerSeries.hasSubst_of_constantCoeff_zero (bE_const k h hax)
  have hl : HasSubst (fun p : Fin 1 × Fin d => (X (Sum.inl p.2) : AA k d)) := MvPowerSeries.hasSubst_of_constantCoeff_zero (fun p => by simp)
  unfold liftX
  first
  | rw [subst_comp_subst_apply hl hb]
  have e : (fun p : Fin 1 × Fin d => subst (bE k h) (X (Sum.inl p.2) : AA k d)) =
      (X : Fin 1 × Fin d → PS k 1 d) := by
    funext p
    rw [subst_X hb]
    rcases p with ⟨q, j⟩
    have hq : q = 0 := Subsingleton.elim _ _
    subst hq
    rfl
  rw [e]
  first
  | (rw [subst_self]; rfl)

section Inter

variable {k}

theorem E_nabla (B : FB R d O) (h : PS k 2 d) (hax : ev (n := 1) ![0, pt k d 0] h = 0) (m : ℕ) (u : Fin d → k)
    (G : AA k d) : subst (bE k h) (nabla k B h m u 0 G) = Dof (B.FK k) u (subst (bE k h) G) := by
  have hc := bE_const k h hax
  have hb : HasSubst (bE k h) := hasSubst_of_constantCoeff_zero hc
  have hfm : subst (bE k h) (fm k h u) = 0 := by
    unfold fm

    rw [← coe_substAlgHom hb, map_sum]
    refine Finset.sum_eq_zero fun i _ => ?_
    rw [map_mul, map_sub, coe_substAlgHom hb, subst_X hb, E_liftX k h hax]
    simp [bE]
  change subst (bE k h) (Dx k B u G + ∑ i, liftX k (Dof (B.FK k) u (sgOf k h i)) * pderiv (R := k) (Sum.inr i) G +
    ∑ i, C ((0 : Fin d → k) i) * pderiv (R := k) (Sum.inr i) G - (C (m : k) * fm k h u) * G) = _

  rw [← coe_substAlgHom hb, map_sub, map_add, map_add, map_mul, map_mul, coe_substAlgHom hb, hfm]
  simp only [mul_zero, zero_mul, sub_zero]
  unfold Dx
  simp only [← coe_substAlgHom hb]
  simp only [map_sum, map_mul, coe_substAlgHom hb, E_liftX k h hax, Pi.zero_apply,
    map_zero, zero_mul, Finset.sum_const_zero, add_zero]
  unfold Dof
  let Low {τ : Type} (N : ℕ) (p : MvPowerSeries τ k) : Prop :=
    ∀ d : τ →₀ ℕ, d.degree < N → coeff d p = 0
  have low_pderiv {τ : Type} {N : ℕ} {g : MvPowerSeries τ k} (hg : Low (N + 1) g) (t : τ) : Low N (pderiv t g) := by
    intro d hd
    rw [MvPowerSeries.coeff_pderiv, hg, zero_mul]
    have e : Finsupp.degree (d + Finsupp.single t 1) = Finsupp.degree d + 1 := by
      first
      | rw [map_add (f := _), Finsupp.degree_single]
    omega
  have low_mul_lemma {τ : Type} {m n : ℕ} {f g : MvPowerSeries τ k} (hf : Low m f) (hg : Low n g) :
      Low (m + n) (f * g) := by
    classical
    intro d hd
    rw [MvPowerSeries.coeff_mul]
    refine Finset.sum_eq_zero fun x hx => ?_
    first
    | rw [Finset.HasAntidiagonal.mem_antidiagonal] at hx
    have e : Finsupp.degree x.1 + Finsupp.degree x.2 = Finsupp.degree d := by
      rw [← hx]
      first
      | exact (map_add _ _ _).symm
    by_cases h1 : Finsupp.degree x.1 < m
    · rw [hf _ h1, zero_mul]
    · rw [hg _ (by omega), mul_zero]
  have low_pow_lemma_2 {τ : Type} {f : MvPowerSeries τ k} (hf : Low 1 f) (n : ℕ) : Low n (f ^ n) := by
    induction n with
    | zero => intro d hd; omega
    | succ n ih => rw [pow_succ]; exact low_mul_lemma ih hf
  have low_prod_lemma_3 {σ τ : Type} {a : σ → MvPowerSeries τ k} (ha : ∀ s, Low 1 (a s)) (e : σ →₀ ℕ)
      (S : Finset σ) : Low (∑ s ∈ S, e s) (∏ s ∈ S, a s ^ e s) := by
    classical
    refine Finset.induction_on S ?_ ?_
    · intro d hd
      simp at hd
    · intro s S hs ih
      rw [Finset.sum_insert hs, Finset.prod_insert hs]
      exact low_mul_lemma (low_pow_lemma_2 (ha s) _) ih
  have finsupp_apply_le_degree' {ι : Type} (d : ι →₀ ℕ) (i : ι) : d i ≤ d.degree := by
    first
    | exact Finsupp.le_degree i d
  have low_subst_of_low {σ τ : Type} [Finite σ] {a : σ → MvPowerSeries τ k} (ha : ∀ s, Low 1 (a s)) {N : ℕ}
      {g : MvPowerSeries σ k} (hg : Low N g) : Low N (subst a g) := by
    classical
    have hc : ∀ s, constantCoeff (a s) = 0 := fun s => by
      have h0 := ha s 0 (by simp)
      simpa using h0
    intro d hd
    have hS : HasSubst a := by
      exact MvPowerSeries.hasSubst_of_constantCoeff_zero hc
    rw [MvPowerSeries.coeff_subst hS]
    apply finsum_eq_zero_of_forall_eq_zero
    intro e
    by_cases he : e.degree < N
    · exact smul_eq_zero_of_left (hg e he) _
    · have hl : Low e.degree (e.prod fun s n => a s ^ n) := by
        have h := low_prod_lemma_3 ha e e.support
        have hdeg : e.degree = ∑ s ∈ e.support, e s := by
          first
          | rfl
        rw [hdeg]
        exact h
      exact smul_eq_zero_of_right _ (hl d (by omega))
  have pderiv_aeval {σ τ : Type} [Fintype σ] (a : σ → MvPowerSeries τ k) (p : MvPolynomial σ k) (t : τ) :
      pderiv t (MvPolynomial.aeval a p) =
        ∑ s, MvPolynomial.aeval a (MvPolynomial.pderiv s p) * pderiv t (a s) := by
    classical
    induction p using MvPolynomial.induction_on
    next c =>
      simp
    next p q hp hq =>
      simp only [map_add (f := _), hp, hq, add_mul, Finset.sum_add_distrib]
    next p s0 hp =>
      rw [map_mul, MvPolynomial.aeval_X, Derivation.leibniz, hp, smul_eq_mul, smul_eq_mul, Finset.mul_sum]
      simp only [Derivation.leibniz, MvPolynomial.pderiv_X, Pi.single_apply, smul_eq_mul, map_add (f := _), map_mul,
        MvPolynomial.aeval_X, add_mul, Finset.sum_add_distrib, mul_ite, mul_one, mul_zero]
      simp only [apply_ite (MvPolynomial.aeval a), map_zero, ite_mul, zero_mul, Finset.sum_ite_eq,
        Finset.mem_univ, if_true, mul_assoc]
      try ring
  have pderiv_coe_mvPolynomial {σ : Type} (s : σ) (p : MvPolynomial σ k) :
      pderiv s (p : MvPowerSeries σ k) = ((MvPolynomial.pderiv s p : MvPolynomial σ k) : MvPowerSeries σ k) := by
    exact MvPowerSeries.pderiv_coe p
  have Low_finset_sum {τ : Type} {N : ℕ} {ι : Type} (S : Finset ι) (F : ι → MvPowerSeries τ k)
      (h : ∀ i ∈ S, Low N (F i)) : Low N (∑ i ∈ S, F i) := by
    intro d hd

    rw [map_sum]
    exact Finset.sum_eq_zero fun i hi => h i hi d hd
  have pderiv_subst {σ τ : Type} [Fintype σ] {a : σ → MvPowerSeries τ k} (ha : ∀ s, constantCoeff (a s) = 0)
      (f : MvPowerSeries σ k) (t : τ) :
      pderiv t (subst a f) = ∑ s, subst a (pderiv s f) * pderiv t (a s) := by
    classical
    have hS : HasSubst a := MvPowerSeries.hasSubst_of_constantCoeff_zero ha
    have ha1 : ∀ s, Low 1 (a s) := by
      intro s d hd
      have hd0 : d = 0 := Finsupp.ext fun i => by
        have := finsupp_apply_le_degree' d i
        simp only [Finsupp.coe_zero, Pi.zero_apply]
        omega
      subst hd0
      simpa using ha s
    have hpoly : ∀ M : ℕ, ∃ p : MvPolynomial σ k, Low M (f - (p : MvPowerSeries σ k)) := by
      intro M
      refine ⟨MvPowerSeries.trunc' k (Finsupp.equivFunOnFinite.symm fun _ => M) f, ?_⟩
      intro m hm
      rw [map_sub, MvPolynomial.coeff_coe, MvPowerSeries.coeff_trunc', if_pos, sub_self]
      rw [Finsupp.le_def]
      intro s
      have h1 := finsupp_apply_le_degree' m s
      first
      | (change m s ≤ M; omega)
    ext d
    obtain ⟨p, hp⟩ := hpoly (d.degree + 1 + 1)
    have hf : f = (f - (p : MvPowerSeries σ k)) + (p : MvPowerSeries σ k) := (sub_add_cancel _ _).symm
    generalize f - (p : MvPowerSeries σ k) = g at hp hf
    subst hf
    have hpol := pderiv_aeval a p t
    simp only [map_add (f := _), MvPowerSeries.subst_add hS, MvPowerSeries.subst_coe, pderiv_coe_mvPolynomial, add_mul,
      Finset.sum_add_distrib, hpol]
    congr 1
    have h1 : Low (d.degree + 1) (pderiv t (subst a g)) := low_pderiv (low_subst_of_low ha1 hp) t
    have h2 : Low (d.degree + 1 + 0) (∑ s, subst a (pderiv s g) * pderiv t (a s)) :=
      Low_finset_sum _ _ fun s _ => low_mul_lemma (low_subst_of_low ha1 (low_pderiv hp s)) (fun e he => by omega)
    rw [h1 d (by omega), h2 d (by omega)]
  simp only [pderiv_subst hc, Finset.mul_sum]
  simp only [Fintype.sum_sum_type, Finset.sum_add_distrib]
  simp only [bE, Sum.elim_inl, Sum.elim_inr, pderiv_X, Pi.single_apply, mul_ite, mul_zero, mul_one]
  simp only [Prod.mk.injEq, true_and]
  simp only [Finset.sum_ite_eq', Finset.mem_univ, if_true]
  congr 1
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun t _ => ?_
  rw [Finset.sum_mul]
  refine Finset.sum_congr rfl fun j _ => ?_
  ring

theorem E_iter (B : FB R d O) (h : PS k 2 d) (hax : ev (n := 1) ![0, pt k d 0] h = 0) (m : ℕ) (u : Fin d → k)
    (n : ℕ) (G : AA k d) :
    subst (bE k h) ((nabla k B h m u 0)^[n] G) = (Dof (B.FK k) u)^[n] (subst (bE k h) G) := by
  induction n generalizing G with
  | zero => rfl
  | succ n ih =>
    rw [Function.iterate_succ_apply', Function.iterate_succ_apply', E_nabla B h hax m u, ih]

theorem E_foldr (B : FB R d O) (h : PS k 2 d) (hax : ev (n := 1) ![0, pt k d 0] h = 0) (m : ℕ) {ι : Type}
    (u : ι → Fin d → k) (n : ι →₀ ℕ) (L : List ι) (G : AA k d) :
    subst (bE k h) (L.foldr (fun l g => (nabla k B h m (u l) 0)^[n l] g) G) =
      L.foldr (fun l g => (Dof (B.FK k) (u l))^[n l] g) (subst (bE k h) G) := by
  induction L with
  | nil => rfl
  | cons l L ih =>
    simp only [List.foldr_cons]
    rw [E_iter B h hax m (u l) (n l), ih]

theorem E_nablaPoly (B : FB R d O) (h : PS k 2 d) (hax : ev (n := 1) ![0, pt k d 0] h = 0) (m : ℕ) {ι : Type}
    [Fintype ι] (u : ι → Fin d → k) (P : MvPolynomial ι k) (G : AA k d) :
    subst (bE k h) (nablaPoly k B h m u P G) = DpolyOf (B.FK k) u P (subst (bE k h) G) := by
  have hb : HasSubst (bE k h) := MvPowerSeries.hasSubst_of_constantCoeff_zero (bE_const k h hax)
  unfold nablaPoly DpolyOf DmonOf

  rw [← coe_substAlgHom hb, map_sum]
  refine Finset.sum_congr rfl (fun n _ => ?_)
  rw [map_mul, coe_substAlgHom hb, mvPowerSeries_subst_C hb, E_foldr B h hax m u n]

end Inter

theorem harmonic_value_integral : ReciprocityTheory.ChartRestriction.G.TB.ValueSt := by
  intro R _ d O _ _ k _ _ _ B h hax m ι _ u P g
  rw [← const_subst (bE_const k h hax) (nablaPoly k B h m u P (liftX k g)), E_nablaPoly B h hax m u P,
    E_liftX k h hax g]

end ReciprocityTheory.ChartRestriction.G.TB.WickVanishing.Val
