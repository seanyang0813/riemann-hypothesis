module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DefsRep
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.Unitary
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.BochnerInequality.CasimirGapAtNoncompactWeight
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.CFCoreA
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.SchurA
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.RigidityTheorems.RorthFunctionalEqZero
public import Mathlib.Analysis.InnerProductSpace.Orthogonal

@[expose] public section

noncomputable section

open Finset Matrix

namespace ReciprocityTheory.ChartRestriction.DS

variable {n : ℕ}

section Data

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] {ε : Fin n → Bool}
  {lam : Fin n → ℝ} {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} {D : Submodule ℂ H}
  {E : Fin n → Fin n → Module.End ℂ D} {V : Submodule ℂ D}

private theorem data_genSub_irred_of_highest_weight_mem (hσ : IsURepOn (UJset ε) σ) (hD : IsDerivedOn ε σ D E)
    (hV : IsKIrrHW ε E (lowK ε lam) V)
    (hlow : ∀ {w : D}, w ∈ genSub E V → IsKHWVec ε E (lowK ε lam) w → w ∈ V)
    (N : Submodule ℂ D) (hN : N ≤ genSub E V)
    (hNE : ∀ a b, ∀ x ∈ N, E a b x ∈ N) :
    N = ⊥ ∨ N = genSub E V := by
  have hE := hD.glRep
  have hU := isInfUnitary_of_isDerivedOn hσ hD
  obtain ⟨w, hwV, hw0, hw⟩ := hV.2.2.2
  have hwG : w ∈ genSub E V := rorth_le_genSub hwV
  by_cases hVN : ∃ x ∈ N ⊓ V, x ≠ 0
  · obtain ⟨x, hx, hx0⟩ := hVN
    exact Or.inr (le_antisymm hN (schA_genSub_le hV N hNE hx.2 hx.1 hx0))
  push Not at hVN
  have hNk : IsKStableSub ε E N := fun a b _ x hx => hNE a b x hx
  have hfd : ∀ a, ∀ y ∈ N, (innerₛₗ ℂ w) (E a a y) = (lowK ε lam a : ℂ) * (innerₛₗ ℂ w) y := by
    intro a y _
    have h1 := hU a a w y
    simp only [hw.1 a, inner_smul_left, adjSign, if_true, one_mul, Complex.conj_ofReal] at h1
    simp only [innerₛₗ_apply_apply]
    exact h1.symm
  have hfl : ∀ a b, a < b → ε a = ε b → ∀ y ∈ N, (innerₛₗ ℂ w) (E b a y) = 0 := by
    intro a b hab h y _
    have h1 := hU a b w y
    rw [hw.2 a b hab h, inner_zero_left, show adjSign ε a b = 1 by simp [adjSign, h], one_mul] at h1
    simp only [innerₛₗ_apply_apply]
    exact h1.symm
  have horth : ∀ z ∈ N, inner ℂ z w = 0 := by
    intro z hz
    rw [← inner_eq_zero_symm]
    by_contra hne
    obtain ⟨u, huN, hu, huz, -⟩ :=
      schA_riesz hE hU hV.1 hV.2.1 N hN hNk (innerₛₗ ℂ w) (lowK ε lam) hfd hfl hz
    have huV : u ∈ V := hlow (hN huN) hu
    have := hVN u ⟨huN, huV⟩
    rw [this, inner_zero_left, innerₛₗ_apply_apply] at huz
    exact hne huz.symm
  have hY : ∀ a b, ∀ y ∈ genSub E V ⊓ Nᗮ, E a b y ∈ genSub E V ⊓ Nᗮ := by
    intro a b y hy
    refine ⟨rorth_apply_mem_genSub a b hy.1, (Submodule.mem_orthogonal _ _).2 fun z hz => ?_⟩
    have h1 := hU b a z y
    rw [(Submodule.mem_orthogonal _ _).1 hy.2 _ (hNE b a z hz)] at h1
    calc inner ℂ z (E a b y) = (adjSign ε b a * adjSign ε b a) * inner ℂ z (E a b y) := by
          rw [schA_adjSign_sq, one_mul]
      _ = adjSign ε b a * (adjSign ε b a * inner ℂ z (E a b y)) := by ring
      _ = 0 := by rw [← h1, mul_zero]
  have hle := schA_genSub_le hV _ hY hwV ⟨hwG, (Submodule.mem_orthogonal _ _).2 horth⟩ hw0
  refine Or.inl ((Submodule.eq_bot_iff _).2 fun z hz => ?_)
  exact inner_self_eq_zero.1 ((Submodule.mem_orthogonal _ _).1 (hle (hN hz)).2 z hz)

theorem data_genSub_irred (hgap : StdGap ε lam) (hσ : IsURepOn (UJset ε) σ) (hD : IsDerivedOn ε σ D E)
    (hV : IsKIrrHW ε E (lowK ε lam) V) (hc : ∀ v ∈ V, casimir E v = (casVal lam : ℂ) • v)
    (hVK : ∀ k ∈ Kset ε, ∀ v ∈ V, ∃ w ∈ V, (w : H) = σ k v) (N : Submodule ℂ D) (hN : N ≤ genSub E V)
    (hNE : ∀ a b, ∀ x ∈ N, E a b x ∈ N) (hNK : ∀ k ∈ Kset ε, ∀ x ∈ N, ∃ y ∈ N, (y : H) = σ k x) :
    N = ⊥ ∨ N = genSub E V := by
  exact data_genSub_irred_of_highest_weight_mem hσ hD hV
    (khw_lowK_mem hD.glRep (isInfUnitary_of_isDerivedOn hσ hD) hV hc hgap) N hN hNE

private theorem data_end_scalar_of_highest_weight_mem (hσ : IsURepOn (UJset ε) σ) (hD : IsDerivedOn ε σ D E)
    (hV : IsKIrrHW ε E (lowK ε lam) V)
    (hlow : ∀ {w : D}, w ∈ genSub E V → IsKHWVec ε E (lowK ε lam) w → w ∈ V)
    (A : D →ₗ[ℂ] D) (hA : ∀ x ∈ genSub E V, A x ∈ genSub E V)
    (hAE : ∀ a b, ∀ x ∈ genSub E V, A (E a b x) = E a b (A x)) :
    ∃ c : ℂ, ∀ x ∈ genSub E V, A x = c • x := by
  have hE := hD.glRep
  have hU := isInfUnitary_of_isDerivedOn hσ hD
  obtain ⟨w, hwV, hw0, hw⟩ := hV.2.2.2
  have hwG : w ∈ genSub E V := rorth_le_genSub hwV
  have hAw : IsKHWVec ε E (lowK ε lam) (A w) := by
    refine ⟨fun a => ?_, fun a b hab h => ?_⟩
    · rw [← hAE a a w hwG, hw.1 a, map_smul]
    · rw [← hAE a b w hwG, hw.2 a b hab h, map_zero]
  have hAwV : A w ∈ V := hlow (hA w hwG) hAw
  obtain ⟨c, hc'⟩ := khw_line_of_kIrrHW hE hU hV hAwV hwV hAw hw hw0
  have hk : ∀ x, x ∈ LinearMap.ker (A - c • (1 : Module.End ℂ D)) ↔ A x = c • x := fun x => by
    simp [sub_eq_zero]
  have hX : ∀ a b, ∀ x ∈ genSub E V ⊓ LinearMap.ker (A - c • (1 : Module.End ℂ D)),
      E a b x ∈ genSub E V ⊓ LinearMap.ker (A - c • (1 : Module.End ℂ D)) := by
    intro a b x hx
    refine ⟨rorth_apply_mem_genSub a b hx.1, (hk _).2 ?_⟩
    rw [hAE a b x hx.1, (hk x).1 hx.2, map_smul]
  have hle := schA_genSub_le hV _ hX hwV ⟨hwG, (hk w).2 hc'⟩ hw0
  exact ⟨c, fun x hx => (hk x).1 (hle hx).2⟩

theorem data_end_scalar (hgap : StdGap ε lam) (hσ : IsURepOn (UJset ε) σ) (hD : IsDerivedOn ε σ D E)
    (hV : IsKIrrHW ε E (lowK ε lam) V) (hc : ∀ v ∈ V, casimir E v = (casVal lam : ℂ) • v)
    (hVK : ∀ k ∈ Kset ε, ∀ v ∈ V, ∃ w ∈ V, (w : H) = σ k v) (A : D →ₗ[ℂ] D) (hA : ∀ x ∈ genSub E V, A x ∈ genSub E V)
    (hAE : ∀ a b, ∀ x ∈ genSub E V, A (E a b x) = E a b (A x))
    (hAK : ∀ k ∈ Kset ε, ∀ x ∈ genSub E V, ∀ y ∈ genSub E V, (y : H) = σ k x → (A y : H) = σ k (A x)) :
    ∃ c : ℂ, ∀ x ∈ genSub E V, A x = c • x := by
  exact data_end_scalar_of_highest_weight_mem hσ hD hV
    (khw_lowK_mem hD.glRep (isInfUnitary_of_isDerivedOn hσ hD) hV hc hgap) A hA hAE

theorem data_form_scalar (hgap : StdGap ε lam) (hσ : IsURepOn (UJset ε) σ) (hD : IsDerivedOn ε σ D E)
    (hV : IsKIrrHW ε E (lowK ε lam) V) (hc : ∀ v ∈ V, casimir E v = (casVal lam : ℂ) • v)
    (hVK : ∀ k ∈ Kset ε, ∀ v ∈ V, ∃ w ∈ V, (w : H) = σ k v) (b : D →ₗ⋆[ℂ] D →ₗ[ℂ] ℂ)
    (hbE : ∀ a c, ∀ x ∈ genSub E V, ∀ y ∈ genSub E V, b (E a c x) y = adjSign ε a c * b x (E c a y))
    (hbK : ∀ k ∈ Kset ε, ∀ x ∈ genSub E V, ∀ y ∈ genSub E V, ∀ x' ∈ genSub E V, ∀ y' ∈ genSub E V,
      (x' : H) = σ k x → (y' : H) = σ k y → b x' y' = b x y) :
    ∃ c : ℂ, ∀ x ∈ genSub E V, ∀ y ∈ genSub E V, b x y = c * inner ℂ (x : H) (y : H) := by
  have hE := hD.glRep
  have hU := isInfUnitary_of_isDerivedOn hσ hD
  obtain ⟨w, hwV, hw0, hw⟩ := hV.2.2.2
  have hwG : w ∈ genSub E V := rorth_le_genSub hwV
  have hww : inner ℂ w w ≠ 0 := inner_self_ne_zero.2 hw0
  set cc : ℂ := b w w / inner ℂ w w with hcdef
  set f : D →ₗ[ℂ] ℂ := b w - cc • innerₛₗ ℂ w with hf
  have hfapp : ∀ y, f y = b w y - cc * inner ℂ w y := fun y => by simp [hf]
  have hfw : f w = 0 := by rw [hfapp, hcdef, div_mul_cancel₀ _ hww, sub_self]
  have hfd : ∀ a, ∀ y ∈ genSub E V, f (E a a y) = (lowK ε lam a : ℂ) * f y := by
    intro a y hy
    have h1 := hbE a a w hwG y hy
    have h2 := hU a a w y
    simp only [hw.1 a, adjSign, if_true, one_mul, map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul,
      Complex.conj_ofReal, inner_smul_left] at h1 h2
    rw [hfapp, hfapp, ← h1, ← h2]
    ring
  have hfl : ∀ a b', a < b' → ε a = ε b' → ∀ y ∈ genSub E V, f (E b' a y) = 0 := by
    intro a b' hab h y hy
    have h1 := hbE a b' w hwG y hy
    have h2 := hU a b' w y
    rw [hw.2 a b' hab h, map_zero, LinearMap.zero_apply,
      show adjSign ε a b' = 1 by simp [adjSign, h], one_mul] at h1
    rw [hw.2 a b' hab h, inner_zero_left, show adjSign ε a b' = 1 by simp [adjSign, h], one_mul] at h2
    rw [hfapp, ← h1, ← h2]
    simp
  have hfz : ∀ y ∈ genSub E V, f y = 0 := by
    intro y hy
    by_contra hne
    obtain ⟨u, huG, hu, huy, huV'⟩ := schA_riesz hE hU hV.1 hV.2.1 (genSub E V) le_rfl
      (fun a b _ x hx => rorth_apply_mem_genSub a b hx) f (lowK ε lam) hfd hfl hy
    have huV : u ∈ V := khw_lowK_mem hE hU hV hc hgap huG hu
    obtain ⟨c', hc'⟩ := khw_line_of_kIrrHW hE hU hV huV hwV hu hw hw0
    have h3 := huV' w ⟨hwG, hwV⟩
    rw [hfw, hc', inner_smul_left] at h3
    have hc0 : c' = 0 := by
      rcases mul_eq_zero.1 h3 with h | h
      · simpa using h
      · exact absurd h hww
    rw [hc', hc0, zero_smul, inner_zero_left] at huy
    exact hne huy.symm
  let X : Submodule ℂ D :=
    { carrier := {x | x ∈ genSub E V ∧ ∀ y ∈ genSub E V, b x y = cc * inner ℂ x y}
      add_mem' := fun {x x'} hx hx' => ⟨(genSub E V).add_mem hx.1 hx'.1, fun y hy => by
        rw [map_add (f := _), LinearMap.add_apply, hx.2 y hy, hx'.2 y hy, inner_add_left, mul_add]⟩
      zero_mem' := ⟨(genSub E V).zero_mem, fun y _ => by simp⟩
      smul_mem' := fun r x hx => ⟨(genSub E V).smul_mem r hx.1, fun y hy => by
        rw [map_smulₛₗ, LinearMap.smul_apply, hx.2 y hy, inner_smul_left, smul_eq_mul]; ring⟩ }
  have hX : ∀ a c, ∀ x ∈ X, E a c x ∈ X := by
    intro a c x hx
    refine ⟨rorth_apply_mem_genSub a c hx.1, fun y hy => ?_⟩
    rw [hbE a c x hx.1 y hy, hx.2 _ (rorth_apply_mem_genSub c a hy), hU]
    ring
  have hwX : w ∈ X := ⟨hwG, fun y hy => by
    have := hfz y hy
    rw [hfapp, sub_eq_zero] at this
    exact this⟩
  have hle := schA_genSub_le hV X hX hwV hwX hw0
  exact ⟨cc, fun x hx y hy => (hle hx).2 y hy⟩

end Data

section Two

variable {ε : Fin n → Bool}
  {H₁ : Type*} [NormedAddCommGroup H₁] [InnerProductSpace ℂ H₁] [CompleteSpace H₁] {lam₁ : Fin n → ℝ}
  {σ₁ : Matrix (Fin n) (Fin n) ℂ → (H₁ →L[ℂ] H₁)} {D₁ : Submodule ℂ H₁}
  {E₁ : Fin n → Fin n → Module.End ℂ D₁} {V₁ : Submodule ℂ D₁}
  {H₂ : Type*} [NormedAddCommGroup H₂] [InnerProductSpace ℂ H₂] [CompleteSpace H₂] {lam₂ : Fin n → ℝ}
  {σ₂ : Matrix (Fin n) (Fin n) ℂ → (H₂ →L[ℂ] H₂)} {D₂ : Submodule ℂ H₂}
  {E₂ : Fin n → Fin n → Module.End ℂ D₂} {V₂ : Submodule ℂ D₂}

end Two

end ReciprocityTheory.ChartRestriction.DS
