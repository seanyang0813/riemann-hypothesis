module

public import Formalism.HermitianCurvature.StatementM
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstEmbeddingOne
public import Formalism.YangianSpanCharacter.YangianRTTProofs.RttRelation
public import Formalism.YangianSpanCharacter.YangianRTTProofs.TransposeSymplecticShift
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open Formalism.FourierDecayAlt.M Formalism.FourierDecayAlt.Fr Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.W Formalism.YangianSpanCharacter.T Formalism.FourierDecayAlt Matrix Finset

namespace Formalism.FourierDecayAlt.P.Mx8

section Abstract

variable {A : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A]

theorem kronecker_E1_smul (s : ℂ) (M : M2 A) : E1 (s • M) = s • E1 M := by
  ext ik jl
  simp only [E1, Matrix.of_apply, Matrix.smul_apply]
  split_ifs <;> simp

theorem eval_two_smul (s : ℂ) (M : M2 A) : E2 (s • M) = s • E2 M := by
  ext ik jl
  simp only [E2, Matrix.of_apply, Matrix.smul_apply]
  split_ifs <;> simp

theorem isStart_smul (QQ : ℂ → M2 A) (q : ℂ → ℂ) (s : ℂ) (hs : s * s = 1) (hs' : star s = s)
    (h : IsStart QQ q) : IsStart (fun Y => s • QQ Y) q := by
  refine ⟨fun Y hY => ?_, fun Y Y' => ?_, fun Y => ?_, h.q_real⟩
  · rw [Matrix.conjTranspose_smul, hs', h.herm Y hY]
  · have := h.rtt Y Y'
    simp only [kronecker_E1_smul, eval_two_smul, Matrix.mul_smul, Matrix.smul_mul, smul_smul, hs, one_smul]
    exact this
  · have := h.det Y
    simp only [Matrix.transpose_smul, Matrix.mul_smul, Matrix.smul_mul, smul_smul, hs, one_smul]
    exact this

def sStar (σ : Site A) : Site A := ⟨star σ.p, -star σ.ci, -star σ.c⟩

theorem Ts_conj (σ : Site A) (Y : ℂ) : (Ts σ (star Y))ᴴ = Ts (sStar σ) Y := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Ts, Tm, sStar, Matrix.conjTranspose_apply]
  rw [starRingEnd_apply, ← algebraMap_star_comm, star_star]

theorem weyl_ci {p c ci : A} (h : WeylRel p c ci) : p * ci = ci * p - ci := by
  obtain ⟨h1, h2, h3⟩ := h
  have key : ci * p = p * ci + ci := by
    have e := congrArg (fun x => ci * x * ci) h3
    simp only [mul_add, add_mul, ← mul_assoc, h2, one_mul] at e
    rw [mul_assoc (ci * p), h1, mul_one] at e
    exact e
  rw [key]; abel

theorem weyl_star {σ : Site A} (h : WeylRel σ.p σ.c σ.ci) :
    WeylRel (sStar σ).p (sStar σ).c (sStar σ).ci := by
  have key := weyl_ci h
  unfold WeylRel at h ⊢
  obtain ⟨h1, h2, _⟩ := h
  refine ⟨?_, ?_, ?_⟩
  · simp only [sStar, neg_mul_neg, ← star_mul, h1, star_one]
  · simp only [sStar, neg_mul_neg, ← star_mul, h2, star_one]
  · simp only [sStar, mul_neg, neg_mul, ← star_mul, key, star_sub]
    abel

theorem isRTT_Tm {p c ci : A} (h : WeylRel p c ci) : IsRTT (fun Y : ℂ => Tm Y p c ci) :=
  fun Y Y' => Formalism.YangianSpanCharacter.P.rttRelation ℂ A p c ci Y Y' h

theorem isDet_Tm {p c ci : A} (h : WeylRel p c ci) : IsDet (fun Y : ℂ => Tm Y p c ci) (fun _ => 1) := by
  intro Y
  refine ⟨?_, ?_⟩
  · rw [map_one, one_smul]
    exact Formalism.YangianSpanCharacter.P.transposeSymplecticShift ℂ A p c ci Y h
  · rw [map_one, one_smul]
    obtain ⟨h1, h2, h3⟩ := h
    have hc : algebraMap ℂ A Y * c = c * algebraMap ℂ A Y := Algebra.commutes _ _
    ext a b
    fin_cases a <;> fin_cases b
    · simp [Tm, Formalism.YangianSpanCharacter.T.J, Matrix.mul_apply, Fin.sum_univ_two, add_mul, mul_add, h3, hc]
      abel
    · simp [Tm, Formalism.YangianSpanCharacter.T.J, Matrix.mul_apply, Fin.sum_univ_two, h1]
    · simp [Tm, Formalism.YangianSpanCharacter.T.J, Matrix.mul_apply, Fin.sum_univ_two, h2]
    · simp [Tm, Formalism.YangianSpanCharacter.T.J, Matrix.mul_apply, Fin.sum_univ_two]

theorem Ts_comm (σ : Site A) (x : A) (hp : Commute x σ.p) (hc : Commute x σ.c) (hci : Commute x σ.ci)
    (Y : ℂ) (a b : Fin 2) : Commute x (Ts σ Y a b) := by
  fin_cases a <;> fin_cases b
  · show Commute x (algebraMap ℂ A Y + σ.p)
    exact Commute.add_right (Algebra.commutes Y x).symm hp
  · show Commute x (-σ.c)
    exact hc.neg_right
  · show Commute x σ.ci
    exact hci
  · show Commute x 0
    exact Commute.zero_right x

theorem isStart_step (σ : Site A) (QQ : ℂ → M2 A) (q : ℂ → ℂ) (hσ : IsSite σ)
    (hc : QQCommutes QQ σ) (h : IsStart QQ q) :
    IsStart (fun Y => (Ts σ (star Y))ᴴ * QQ Y * Ts σ Y) q := by
  obtain ⟨hW, hH⟩ := hσ
  have mp : σ.p ∈ hol σ := by simp [hol]
  have mc : σ.c ∈ hol σ := by simp [hol]
  have mci : σ.ci ∈ hol σ := by simp [hol]
  have c1 : EntriesCommute (fun Y : ℂ => Ts (sStar σ) Y) QQ := by
    intro Y Y' i j k l
    refine (Ts_comm (sStar σ) (QQ Y' k l) ?_ ?_ ?_ Y i j).symm
    · exact hc Y' k l (star σ.p) (Or.inr (by rw [star_star]; exact mp))
    · exact (hc Y' k l (star σ.ci) (Or.inr (by rw [star_star]; exact mci))).neg_right
    · exact (hc Y' k l (star σ.c) (Or.inr (by rw [star_star]; exact mc))).neg_right
  have c2 : EntriesCommute QQ (fun Y : ℂ => Ts σ Y) := by
    intro Y Y' i j k l
    exact Ts_comm σ (QQ Y i j) (hc Y i j _ (Or.inl mp)) (hc Y i j _ (Or.inl mc)) (hc Y i j _ (Or.inl mci)) Y' k l
  have c3 : EntriesCommute (fun Y : ℂ => Ts (sStar σ) Y) (fun Y : ℂ => Ts σ Y) := by
    intro Y Y' i j k l
    have key : ∀ x ∈ hol σ, Commute (Ts (sStar σ) Y i j) x := fun x hx =>
      (Ts_comm (sStar σ) x (hH x hx _ mp) (hH x hx _ mci).neg_right (hH x hx _ mc).neg_right Y i j).symm
    exact Ts_comm σ _ (key _ mp) (key _ mc) (key _ mci) Y' k l
  have hF := Formalism.FourierDecayAlt.P.W.wordFusion_list (R := ℂ) (B := A)
    [(fun Y : ℂ => Ts (sStar σ) Y, fun _ => 1), (QQ, q), (fun Y : ℂ => Ts σ Y, fun _ => 1)]
    (by
      intro x hx
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hx
      rcases hx with rfl | rfl | rfl
      · exact ⟨isRTT_Tm (weyl_star hW), isDet_Tm (weyl_star hW)⟩
      · exact ⟨h.rtt, h.det⟩
      · exact ⟨isRTT_Tm hW, isDet_Tm hW⟩)
    (by
      simp only [List.pairwise_cons, List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq,
        IsEmpty.forall_iff, implies_true, List.Pairwise.nil, and_true]
      exact ⟨⟨c1, c3⟩, c2⟩)
  have e1 : (fun Y => (Ts σ (star Y))ᴴ * QQ Y * Ts σ Y) = fun Y =>
      (([(fun Y : ℂ => Ts (sStar σ) Y, fun _ => 1), (QQ, q), (fun Y : ℂ => Ts σ Y, fun _ => 1)] :
        List ((ℂ → Matrix (Fin 2) (Fin 2) A) × (ℂ → ℂ))).map (fun x => x.1 Y)).prod := by
    funext Y
    rw [Ts_conj]
    simp [mul_assoc]
  have e2 : q = fun Y =>
      (([(fun Y : ℂ => Ts (sStar σ) Y, fun _ => 1), (QQ, q), (fun Y : ℂ => Ts σ Y, fun _ => 1)] :
        List ((ℂ → Matrix (Fin 2) (Fin 2) A) × (ℂ → ℂ))).map (fun x => x.2 Y)).prod := by
    funext Y
    simp
  refine ⟨fun Y hY => ?_, ?_, ?_, h.q_real⟩
  · simp only [hY, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, h.herm Y hY, mul_assoc]
  · rw [e1]; exact hF.1
  · rw [e1]
    have := hF.2
    rwa [← e2] at this

end Abstract

section Lev

variable {A : Type} [Ring A] [Algebra ℂ A] {r : ℕ} (L : LevelData A r)

theorem fn_cancel : L.ζb * L.ζi * L.GGi * (L.ζ * L.ζbi) = L.GGi := by
  have c1 : L.GGi * L.ζ = L.ζ * L.GGi := L.fns_comm _ (by simp) _ (by simp)
  have c3 : L.ζb * L.GGi = L.GGi * L.ζb := L.fns_comm _ (by simp) _ (by simp)
  calc L.ζb * L.ζi * L.GGi * (L.ζ * L.ζbi) = L.ζb * (L.ζi * (L.GGi * L.ζ)) * L.ζbi := by
        simp only [mul_assoc]
    _ = L.ζb * ((L.ζi * L.ζ) * L.GGi) * L.ζbi := by rw [c1]; simp only [mul_assoc]
    _ = L.GGi * (L.ζb * L.ζbi) := by rw [L.ζi_ζ, one_mul, c3, mul_assoc]
    _ = L.GGi := by rw [L.ζb_ζbi, mul_one]

end Lev

theorem sgn_sq (P : Par) (l : ℕ) : sgn P l * sgn P l = 1 := by
  simp only [sgn, ← mul_pow, neg_one_mul, neg_neg, one_pow]

theorem sgn_star (P : Par) (l : ℕ) : star (sgn P l) = sgn P l := by
  simp [sgn]

theorem coordinate_real (P : Par) (l : ℕ) (π : Ty P) (Y : ℂ) (hY : star Y = Y) :
    star (x0 P l π Y) = x0 P l π Y := by
  have hY' : (starRingEnd ℂ) Y = Y := hY
  show (starRingEnd ℂ) (x0 P l π Y) = x0 P l π Y
  simp [x0, map_prod, hY']

def Ent {A : Type} [Ring A] [Algebra ℂ A] (C : Subalgebra ℂ A) (M : M2 A) : Prop := ∀ a b, M a b ∈ C

section Ent

variable {A : Type} [Ring A] [Algebra ℂ A] {C : Subalgebra ℂ A}

end Ent

end Formalism.FourierDecayAlt.P.Mx8

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
