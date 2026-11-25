module

import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.MahlerCompactness
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.QuadraticLatticeForms
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.LminorSubmatrixCastSucc

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.FD

namespace CompactEntryBounds

open Matrix NumberField Complex
open scoped ComplexConjugate

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} (X : Data E r)

theorem hermC_expand (τ : E →+* ℂ) (P : Matrix (Fin r) (Fin r) E) (u w : Fin r → ℂ) :
    hermC τ X.Gm ((P.map τ) *ᵥ u) ((P.map τ) *ᵥ w) =
      ∑ k, ∑ l, u k * conj (w l) * τ (herm X.Gm (P *ᵥ Pi.single k 1) (P *ᵥ Pi.single l 1)) := by
  apply GlobalTheory.FlagMahler.hermC_expand

theorem hermC_stab {γ : Matrix (Fin r) (Fin r) E}
    (hγ : ∀ x y, herm X.Gm (γ *ᵥ x) (γ *ᵥ y) = herm X.Gm x y) (τ : E →+* ℂ) (u w : Fin r → ℂ) :
    hermC τ X.Gm ((γ.map τ) *ᵥ u) ((γ.map τ) *ᵥ w) = hermC τ X.Gm u w :=
  GlobalTheory.FlagMahler.hermC_stab X hγ τ u w

theorem gram_stab {γ : Matrix (Fin r) (Fin r) E}
    (hγ : ∀ x y, herm X.Gm (γ *ᵥ x) (γ *ᵥ y) = herm X.Gm x y) (τ : E →+* ℂ)
    (Y : Matrix (Fin r) (Fin r) ℂ) : gram τ X.Gm (γ.map τ * Y) = gram τ X.Gm Y :=
  GlobalTheory.FlagMahler.gram_stab X hγ τ Y

theorem inv_lact (γ : GL (Fin r) E) (τ : E →+* ℂ) (Y : Matrix (Fin r) (Fin r) ℂ) (v : Fin r → E) :
    ((γ : Matrix (Fin r) (Fin r) E).map τ * Y)⁻¹ *ᵥ Data.emb τ v =
      Y⁻¹ *ᵥ Data.emb τ (((γ⁻¹ : GL (Fin r) E) : Matrix (Fin r) (Fin r) E) *ᵥ v) :=
  GlobalTheory.FlagMahler.inv_lact γ τ Y v

theorem entry_bound {τ : E →+* ℂ} {Y : Matrix (Fin r) (Fin r) ℂ} (hY : Y.det ≠ 0)
    (hg : gram τ X.Gm Y = diagonal fun a : Fin r => ((sgn X.p0 (a : ℕ) : ℝ) : ℂ)) (l b : Fin r) :
    ‖Y l b‖ ≤ ∑ k, ‖(X.Gm.map τ)⁻¹ k l‖ * ‖Y⁻¹ b k‖ := by
  apply GlobalTheory.FlagMahler.entry_bound <;> assumption

theorem comp_le_Qy (y : X.Ψ → Matrix (Fin r) (Fin r) ℂ) (τ : X.Ψ) (p : Fin r → E) (b : Fin r) :
    X.c τ * ‖((y τ)⁻¹ *ᵥ Data.emb τ.1 p) b‖ ^ 2 ≤ QuadraticLatticeForms.Qy X y p :=
  GlobalTheory.FlagMahler.comp_le_Qy X y τ p b

theorem comb_bound (y : X.Ψ → Matrix (Fin r) (Fin r) ℂ) (τ : X.Ψ) {ι : Type} [Fintype ι]
    (q : ι → ℚ) (f : ι → Fin r → E) (b : Fin r) :
    ‖((y τ)⁻¹ *ᵥ Data.emb τ.1 (∑ i, q i • f i)) b‖ ≤
      ∑ i, ‖(q i : ℂ)‖ * (1 + QuadraticLatticeForms.Qy X y (f i) / X.c τ) :=
  GlobalTheory.FlagMahler.comb_bound X y τ q f b

def Kset (R : ℝ) : Set (Frame X.Ψ r) :=
  {w | ∀ τ : X.Ψ, gram τ.1 X.Gm (mat w τ) = diagonal (fun a : Fin r => ((sgn X.p0 (a : ℕ) : ℝ) : ℂ)) ∧
    ∀ a c, ‖w τ a c‖ ≤ R}

theorem cont_gram' (τ : X.Ψ) : Continuous fun w : Frame X.Ψ r => gram τ.1 X.Gm (mat w τ) := by
  apply continuous_matrix
  intro a b
  simp only [gram, hermC, col, mat, Matrix.of_apply]
  fun_prop

theorem Kset_compact (R : ℝ) : IsCompact (Kset X R) :=
  GlobalTheory.FlagMahler.Kset_compact X R

theorem det_ne_of_gram {τ : E →+* ℂ} {Y : Matrix (Fin r) (Fin r) ℂ} {p0 : ℕ}
    (hg : gram τ X.Gm Y = diagonal fun a : Fin r => ((sgn p0 (a : ℕ) : ℝ) : ℂ)) : Y.det ≠ 0 :=
  GlobalTheory.FlagMahler.det_ne_of_gram X hg

theorem Kset_sub (R : ℝ) : Kset X R ⊆ X.dom := by
  intro w hw
  refine (X.mem_dom_iff w).2 fun τ => ?_
  have hg := (hw τ).1
  refine ⟨det_ne_of_gram X hg, fun i => ?_⟩
  have hd : dmin X.Gm w τ i = ((psgn X.p0 i : ℝ) : ℂ) := by
    rw [dmin, hg, lminor, Matrix.submatrix_diagonal _ _ (Fin.castLE_injective _),
      Matrix.det_diagonal, psgn, Complex.ofReal_prod]
    exact Fin.prod_univ_eq_prod_range (fun a => ((sgn X.p0 a : ℝ) : ℂ)) i
  rw [hd, Complex.ofReal_re]
  have hne : psgn X.p0 i ≠ 0 := by
    unfold psgn
    exact Finset.prod_ne_zero_iff.2 fun a _ => by unfold sgn; split_ifs <;> norm_num
  exact mul_self_pos.2 hne

end CompactEntryBounds

end ReciprocityTheory.ChartRestriction.G.FD
