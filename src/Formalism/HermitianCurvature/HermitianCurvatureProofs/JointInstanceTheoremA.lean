module

import Formalism.HermitianCurvature.HermitianCurvatureProofs.OutsideSystemsBound
public import Formalism.HermitianCurvature.StatementJ
public import Mathlib.Analysis.Matrix.Order

@[expose] public section

open Finset NumberField Formalism.FourierDecayAlt Formalism.FourierDecayAlt.J

namespace Formalism.FourierDecayAlt.P.Jx7

section main
open scoped ComplexOrder

theorem jn_nonneg {E W : Type} [Field E] (D : TB.Data E W) (jn : ℝ) (hG : D.GramPSD) (hE : D.EstE jn) :
    0 ≤ jn := by
  have hmem : D.emp ∈ D.Wb D.Ntop := by
    unfold TB.Data.Wb
    rw [Finset.mem_filter]
    exact ⟨D.emp_mem, by rw [D.cnt_emp]; exact Nat.zero_le _⟩
  have ht := hE D.emp hmem
  refine ge_of_tendsto ht ?_
  refine eventually_nhdsWithin_of_forall ?_
  intro ε hε
  have hp := hG ε hε 0 D.emp {([] : TB.Pt E)}
  unfold TB.PSDOn at hp
  have hd := hp.diag_nonneg (i := ⟨[], by simp⟩)
  have hre : 0 ≤ (D.gram ε 0 D.emp [] []).re := by
    have := (Complex.le_def.1 hd).1
    simpa using this
  rw [D.wt_emp, div_one]; exact hre

end main

section kernels
open scoped ComplexOrder ComplexConjugate Matrix
section psd
variable {α : Type} {F : Finset α}

theorem psd_congr {k k' : α → α → ℂ} (h : ∀ x ∈ F, ∀ y ∈ F, k x y = k' x y) (hk : TB.PSDOn F k) :
    TB.PSDOn F k' :=
  Jx8.psd_congr h hk

theorem psd_zero : TB.PSDOn F (fun _ _ : α => (0 : ℂ)) := by
  unfold TB.PSDOn; exact Matrix.PosSemidef.zero

theorem psd_add {k k' : α → α → ℂ} (hk : TB.PSDOn F k) (hk' : TB.PSDOn F k') :
    TB.PSDOn F (fun x y => k x y + k' x y) := by
  unfold TB.PSDOn at *
  exact hk.add hk'

theorem psd_sum {ι : Type} (s : Finset ι) (k : ι → α → α → ℂ) (hk : ∀ i ∈ s, TB.PSDOn F (k i)) :
    TB.PSDOn F (fun x y => ∑ i ∈ s, k i x y) := by
  unfold TB.PSDOn
  convert Matrix.posSemidef_sum (x := fun i => Matrix.of fun x y : F => k i x y) s hk using 1
  ext x y
  simp [Matrix.sum_apply]
end psd

theorem t_ProductLemma (hS : SchurProduct) (hD : ProductDomination) : ProductLemma := by
  classical
  intro E α P _ _ S F hok
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro t t' ht ht' h hh h' hh' hne
    simp only [prodSys] at hne ⊢
    rw [AddSubgroup.mem_iInf]
    intro p
    exact (hok p).1 t t' ht ht' h hh h' hh' (fun h0 => hne (Finset.prod_eq_zero (Finset.mem_univ p) h0))
  · intro t ht
    exact hS α P F (fun p => (S p).N t t) (fun p => (hok p).2.1 t ht)
  · intro t t' htt h hh h' hh'
    simp only [prodSys] at htt ⊢
    rw [AddSubgroup.mem_iInf] at htt
    exact Finset.prod_congr rfl (fun p _ => (hok p).2.2.1 t t' (htt p) h hh h' hh')
  · intro t
    exact hS α P F (fun p => (S p).Th t) (fun p => (hok p).2.2.2.1 t)
  · intro t ht
    exact hD α P F (fun p => (S p).N t t) (fun p => (S p).Th t) (fun p => (hok p).2.1 t ht)
      (fun p => (hok p).2.2.2.2.1 t ht)
  · intro R hR
    simp only [prodSys] at hR ⊢

    let ρ : P → E → E := fun p t => ((t : E ⧸ (S p).L)).out
    have hρ : ∀ p t, t - ρ p t ∈ (S p).L := by
      intro p t
      have h1 : ((ρ p t : E) : E ⧸ (S p).L) = (t : E ⧸ (S p).L) := Quotient.out_eq' _
      have h2 := (QuotientAddGroup.eq (s := (S p).L)).1 h1
      have : t - ρ p t = -ρ p t + t := by abel
      rw [this]; exact h2
    have hρeq : ∀ p t t', ρ p t - ρ p t' ∈ (S p).L → ρ p t = ρ p t' := by
      intro p t t' h
      have h1 : ((ρ p t : E) : E ⧸ (S p).L) = ((ρ p t' : E) : E ⧸ (S p).L) := by
        rw [QuotientAddGroup.eq]
        have : -ρ p t + ρ p t' = -(ρ p t - ρ p t') := by abel
        rw [this]; exact neg_mem h
      have h2 : ((ρ p t : E) : E ⧸ (S p).L) = (t : E ⧸ (S p).L) := Quotient.out_eq' _
      have h3 : ((ρ p t' : E) : E ⧸ (S p).L) = (t' : E ⧸ (S p).L) := Quotient.out_eq' _
      show ((t : E ⧸ (S p).L)).out = ((t' : E ⧸ (S p).L)).out
      rw [← h2, ← h3, h1]
    let T : P → Finset E := fun p => R.image (ρ p)
    let ι : E → (P → E) := fun t p => ρ p t
    have hιinj : Set.InjOn ι R := by
      intro t ht t' ht' h
      apply hR t ht t' ht'
      rw [AddSubgroup.mem_iInf]
      intro p
      have h1 : ρ p t = ρ p t' := congrFun h p
      have h2 := hρ p t
      have h3 := hρ p t'
      have : t - t' = (t - ρ p t) - (t' - ρ p t') := by rw [h1]; abel
      rw [this]; exact sub_mem h2 h3
    have hιmem : R.image ι ⊆ Fintype.piFinset T := by
      intro τ hτ
      obtain ⟨t, ht, rfl⟩ := Finset.mem_image.1 hτ
      exact Fintype.mem_piFinset.2 (fun p => Finset.mem_image_of_mem _ ht)
    have hTinc : ∀ p, ∀ x ∈ T p, ∀ y ∈ T p, x - y ∈ (S p).L → x = y := by
      intro p x hx y hy hxy
      obtain ⟨t, _, rfl⟩ := Finset.mem_image.1 hx
      obtain ⟨t', _, rfl⟩ := Finset.mem_image.1 hy
      exact hρeq p t t' hxy

    have hA : TB.PSDOn F (fun h h' => ∏ p, (S p).B h h' - ∏ p, ∑ x ∈ T p, (S p).Th x h h') :=
      hD α P F (fun p h h' => ∑ x ∈ T p, (S p).Th x h h') (fun p => (S p).B)
        (fun p => psd_sum (T p) (fun x => (S p).Th x) (fun x _ => (hok p).2.2.2.1 x))
        (fun p => (hok p).2.2.2.2.2 (T p) (hTinc p))

    have hB : ∀ Q : Finset (P → E), TB.PSDOn F (fun h h' => ∑ τ ∈ Q, ∏ p, (S p).Th (τ p) h h') := by
      intro Q
      apply psd_sum Q (fun τ h h' => ∏ p, (S p).Th (τ p) h h')
      intro τ _
      exact hS α P F (fun p => (S p).Th (τ p)) (fun p => (hok p).2.2.2.1 (τ p))
    refine psd_congr ?_ (psd_add hA (hB (Fintype.piFinset T \ R.image ι)))
    intro h hh h' hh'
    have h1 : ∑ t ∈ R, ∏ p, (S p).Th t h h' = ∑ τ ∈ R.image ι, ∏ p, (S p).Th (τ p) h h' := by
      rw [Finset.sum_image hιinj]
      apply Finset.sum_congr rfl
      intro t _
      exact Finset.prod_congr rfl (fun p _ => (hok p).2.2.1 t (ρ p t) (hρ p t) h hh h' hh')
    have h2 : ∏ p, ∑ x ∈ T p, (S p).Th x h h' = ∑ τ ∈ Fintype.piFinset T, ∏ p, (S p).Th (τ p) h h' :=
      Finset.prod_univ_sum T (fun p x => (S p).Th x h h')
    have h3 := Finset.sum_sdiff (f := fun τ => ∏ p, (S p).Th (τ p) h h') hιmem
    rw [h1, h2, ← h3]
    ring

section schur
variable {α : Type} {F : Finset α}

theorem psd_mul {k k' : α → α → ℂ} (hk : TB.PSDOn F k) (hk' : TB.PSDOn F k') :
    TB.PSDOn F (fun x y => k x y * k' x y) := by
  unfold TB.PSDOn at *
  exact hk.hadamard hk'

theorem psd_one : TB.PSDOn F (fun _ _ : α => (1 : ℂ)) :=
  Jx8.ones_psd F

theorem psd_prod {P : Type} (s : Finset P) (k : P → α → α → ℂ) (hk : ∀ p ∈ s, TB.PSDOn F (k p)) :
    TB.PSDOn F (fun x y => ∏ p ∈ s, k p x y) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using psd_one
  | insert a s ha ih =>
    have h1 := psd_mul (hk a (Finset.mem_insert_self a s))
      (ih (fun i hi => hk i (Finset.mem_insert_of_mem hi)))
    refine psd_congr ?_ h1
    intro x _ y _
    rw [Finset.prod_insert ha]

theorem psd_prod_dom {P : Type} (s : Finset P) (k K : P → α → α → ℂ) (hk : ∀ p ∈ s, TB.PSDOn F (k p))
    (hd : ∀ p ∈ s, TB.PSDOn F (fun x y => K p x y - k p x y)) :
    TB.PSDOn F (fun x y => ∏ p ∈ s, K p x y - ∏ p ∈ s, k p x y) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using psd_zero
  | insert a s ha ih =>
    have hka := hk a (Finset.mem_insert_self a s)
    have hda := hd a (Finset.mem_insert_self a s)
    have hKa : TB.PSDOn F (K a) := psd_congr (fun x _ y _ => by ring) (psd_add hda hka)
    have h1 := psd_mul hKa (ih (fun i hi => hk i (Finset.mem_insert_of_mem hi))
      (fun i hi => hd i (Finset.mem_insert_of_mem hi)))
    have h2 := psd_mul hda (psd_prod s k (fun i hi => hk i (Finset.mem_insert_of_mem hi)))
    refine psd_congr ?_ (psd_add h1 h2)
    intro x _ y _
    rw [Finset.prod_insert ha, Finset.prod_insert ha]; ring
end schur

theorem t_SchurProduct : SchurProduct := by
  intro α P _ F k hk
  exact psd_prod univ k (fun p _ => hk p)

theorem t_ProductDomination : ProductDomination := by
  intro α P _ F k K hk hd
  exact psd_prod_dom univ k K (fun p _ => hk p) (fun p _ => hd p)

theorem t_ProductLemma' : ProductLemma := t_ProductLemma t_SchurProduct t_ProductDomination

theorem t_DiagScale : DiagScale := by
  apply Formalism.FourierDecayAlt.P.Jx8.t_DiagScale

end kernels

end Formalism.FourierDecayAlt.P.Jx7

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
