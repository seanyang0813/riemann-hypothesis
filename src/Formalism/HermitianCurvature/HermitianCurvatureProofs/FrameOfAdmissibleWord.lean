module

public import Formalism.HermitianCurvature.StatementFr
public import Mathlib.CategoryTheory.Category.Basic
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionInsertionDiagonalCompat
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.QEFirstMulSecondEqSwap
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuasiDeterminantFromEntries
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CommuteInvLeft
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdmissibleRecOfAdmissibleWord
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CommuteLevelZeroElement
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.EmbedLoweringConstant
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FreeOf2RmatrixTranspose
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.KroneckerEmbedMulApply
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.LegendreSymbol
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.FreeOf2OfFourEntries, Formalism.HermitianCurvature.HermitianCurvatureProofs.GaussFormMinusLetter, Formalism.HermitianCurvature.HermitianCurvatureProofs.MinusLetterFrameOfData, Formalism.HermitianCurvature.HermitianCurvatureProofs.PlusLetterFrameOfData, Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameOfAdmissibleWord

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FreeOf2OfFourEntries =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FreeOf2OfFourEntries", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementFr\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionInsertionDiagonalCompat\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.QEFirstMulSecondEqSwap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.YangianSpanCharacter.T Formalism.YangianSpanCharacter.Y Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.Fr

namespace Formalism.FourierDecayAlt.P.Fr5
open Formalism.FourierDecayAlt.P.Fr9

section Core

variable {B : Type} [Ring B] [StarRing B] [Algebra ℂ B]


lemma core (F Fi d τ τi τ' τi' l RR T00 T01 T10 T11 U10 U11 : B) (q : ℂ)
    (hRR : RR = star F * d * F) (hF : F * Fi = 1) (hF' : Fi * F = 1)
    (hdτ : star (d * τ) = d * τ) (hτ : τi * τ = 1) (hτ1 : τ' * τi' = 1) (hτ2 : τi' * τ' = 1)
    (h11 : F * T11 = τ * F) (h10 : F * T10 = τ * l * F) (hU : F * U11 = τ' * F)
    (herm : star (RR * T10) = RR * T01)
    (quantum_determinant_shifted : T00 * U11 - T01 * U10 = q • (1 : B)) (upper_block_det_one : T10 * U11 = T11 * U10) :
    RR * T11 = star F * (d * τ) * F ∧ RR * T10 = star F * (d * τ * l) * F ∧
      RR * T01 = star F * (star l * (d * τ)) * F ∧
      RR * T00 = star F * (q • (d * τi') + star l * (d * τ) * l) * F := by
  have hFl : ∀ X : B, X * F * Fi = X := fun X => by rw [mul_assoc, hF, mul_one]
  have h3l : ∀ X : B, X * τ' * τi' = X := fun X => by rw [mul_assoc, hτ1, mul_one]
  have hT11 : RR * T11 = star F * (d * τ) * F := by
    rw [hRR, mul_assoc (star F * d) F T11, h11]
    simp only [mul_assoc]
  have hT10 : RR * T10 = star F * (d * τ * l) * F := by
    rw [hRR, mul_assoc (star F * d) F T10, h10]
    simp only [mul_assoc]
  have hT01 : RR * T01 = star F * (star l * (d * τ)) * F := by
    rw [← herm, hT10, star_mul, star_mul, star_star, star_mul, hdτ]
    simp only [mul_assoc]
  have hU11 : U11 = Fi * τ' * F := by
    calc U11 = Fi * F * U11 := by rw [hF', one_mul]
      _ = Fi * τ' * F := by rw [mul_assoc Fi F U11, hU, ← mul_assoc]
  have hUi : U11 * (Fi * τi' * F) = 1 := by
    rw [hU11]
    simp only [← mul_assoc, hFl, h3l, hF']
  have hFU10 : F * U10 = l * F * U11 := by
    have e : τ * (F * U10) = τ * (l * F * U11) := by
      calc τ * (F * U10) = F * T11 * U10 := by rw [h11, mul_assoc]
        _ = F * T10 * U11 := by rw [mul_assoc F T11 U10, ← upper_block_det_one, ← mul_assoc]
        _ = τ * (l * F * U11) := by rw [h10]; simp only [mul_assoc]
    calc F * U10 = τi * τ * (F * U10) := by rw [hτ, one_mul]
      _ = τi * (τ * (l * F * U11)) := by rw [mul_assoc τi τ (F * U10), e]
      _ = l * F * U11 := by rw [← mul_assoc τi τ, hτ, one_mul]
  have e2 : T00 * U11 = q • (1 : B) + T01 * U10 := by rw [← quantum_determinant_shifted, sub_add_cancel]
  have hT00 : T00 = (q • (1 : B) + T01 * U10) * (Fi * τi' * F) := by
    calc T00 = T00 * (U11 * (Fi * τi' * F)) := by rw [hUi, mul_one]
      _ = (q • (1 : B) + T01 * U10) * (Fi * τi' * F) := by rw [← mul_assoc T00, e2]
  have hA : RR * (q • (1 : B)) * (Fi * τi' * F) = star F * (q • (d * τi')) * F := by
    rw [mul_smul_comm, mul_one, smul_mul_assoc, mul_smul_comm, smul_mul_assoc, hRR]
    congr 1
    simp only [← mul_assoc, hFl]
  have hB : RR * (T01 * U10) * (Fi * τi' * F) = star F * (star l * (d * τ) * l) * F := by
    rw [← mul_assoc RR T01 U10, hT01, mul_assoc (star F * (star l * (d * τ))) F U10, hFU10,
      mul_assoc (star F * (star l * (d * τ))) (l * F * U11), mul_assoc (l * F) U11, hUi, mul_one]
    simp only [mul_assoc]
  refine ⟨hT11, hT10, hT01, ?_⟩
  rw [hT00, ← mul_assoc RR, mul_add, add_mul, hA, hB, mul_add, add_mul]

end Core

section Slots

variable {A S : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A] [Fintype S] [DecidableEq S]

lemma io_mul (x y : A) : (io (x * y) : SlopeTestRemainingChoices S A) = io x * io y := by
  first
  | exact map_mul (Matrix.scalar (Ix S)) x y

lemma io_one : (io (1 : A) : SlopeTestRemainingChoices S A) = 1 := by
  first
  | exact map_one (Matrix.scalar (Ix S))

lemma io_star (x : A) : star (io x : SlopeTestRemainingChoices S A) = io (star x) := by
  first
  | exact Matrix.diagonal_conjTranspose (fun _ : Ix S => x)


private lemma mul_scalar_comm_of_entries_zero_or_one {n : Type} [Fintype n] [DecidableEq n] (M : Matrix n n A) (x : A)
    (hM : ∀ k l, M k l = 0 ∨ M k l = 1) : M * Matrix.scalar n x = Matrix.scalar n x * M := by
  ext k l
  rw [Matrix.scalar_apply, Matrix.mul_diagonal, Matrix.diagonal_mul]
  rcases hM k l with h | h <;> rw [h] <;> simp

lemma free_io (a : S) (x : A) : FreeOf a (io x : SlopeTestRemainingChoices S A) := by
  intro i j
  exact mul_scalar_comm_of_entries_zero_or_one (eU a i j) x (fun k l => by
    first
    | (simp only [eU, Matrix.of_apply]; split_ifs <;> simp))

lemma free_mul {a : S} {x y : SlopeTestRemainingChoices S A} (hx : FreeOf a x) (hy : FreeOf a y) : FreeOf a (x * y) := fun i j => (hx i j).mul_right (hy i j)



lemma free_zero (a : S) : FreeOf a (0 : SlopeTestRemainingChoices S A) := fun _ _ => Commute.zero_right _

lemma free_one (a : S) : FreeOf a (1 : SlopeTestRemainingChoices S A) := fun _ _ => Commute.one_right _


private lemma star_eU_eq_eU_swap (a : S) (i j : Fin 2) : star (eU a i j : SlopeTestRemainingChoices S A) = eU a j i := by
  have key : ∀ k l : Ix S, star ((eU a i j : SlopeTestRemainingChoices S A) l k) = (eU a j i : SlopeTestRemainingChoices S A) k l := by
    intro k l
    simp only [eU, Matrix.of_apply]
    by_cases h1 : l a = i ∧ k a = j ∧ ∀ b, b ≠ a → l b = k b
    · have h2 : k a = j ∧ l a = i ∧ ∀ b, b ≠ a → k b = l b :=
        ⟨h1.2.1, h1.1, fun b hb => (h1.2.2 b hb).symm⟩
      rw [if_pos h1, if_pos h2, star_one]
    · have h2 : ¬ (k a = j ∧ l a = i ∧ ∀ b, b ≠ a → k b = l b) :=
        fun h => h1 ⟨h.2.1, h.1, fun b hb => (h.2.2 b hb).symm⟩
      rw [if_neg h1, if_neg h2, star_zero]
  exact Matrix.ext key


lemma freeOf2_of_four_entries {a : S} {x y z w : SlopeTestRemainingChoices S A} (hx : FreeOf a x) (hy : FreeOf a y) (hz : FreeOf a z)
    (hw : FreeOf a w) : FreeOf2 a !![x, y; z, w] := by
  intro i j
  fin_cases i <;> fin_cases j <;> first | exact hx | exact hy | exact hz | exact hw

private lemma d0_eq_diagonal (b : SlopeTestRemainingChoices S A) : d0 b = !![b, 0; 0, b] := by
  first
  | (refine Matrix.ext fun i j => ?_
     fin_cases i <;> fin_cases j <;> rfl)

lemma gauss_entries (Fs dd ls l p t F : SlopeTestRemainingChoices S A) :
    d0 Fs * !![1, ls; 0, 1] * d0 dd * !![p, 0; 0, t] * !![1, 0; l, 1] * d0 F =
      !![Fs * (dd * p + ls * (dd * t) * l) * F, Fs * (ls * (dd * t)) * F;
        Fs * (dd * t * l) * F, Fs * (dd * t) * F] := by
  first
  | (simp only [d0_eq_diagonal, Matrix.mul_fin_two, mul_one, mul_zero, zero_mul, add_zero, zero_add,
      mul_add, add_mul, mul_assoc]; done)

lemma lam_conj (l : SlopeTestRemainingChoices S A) : (!![1, 0; l, 1] : M2 (SlopeTestRemainingChoices S A))ᴴ = !![1, star l; 0, 1] := by
  first
  | (refine Matrix.ext fun i j => ?_
     fin_cases i <;> fin_cases j <;> simp)

lemma diag_conj (x y : SlopeTestRemainingChoices S A) : (!![x, 0; 0, y] : M2 (SlopeTestRemainingChoices S A))ᴴ = !![star x, 0; 0, star y] := by
  first
  | (refine Matrix.ext fun i j => ?_
     fin_cases i <;> fin_cases j <;> simp)

end Slots

section Level

variable {A S : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A] [Fintype S] [DecidableEq S] {r : ℕ}

lemma fn_comm (L : LevelData A r) {g h : A} (hg : g ∈ zfns L) (hh : h ∈ zfns L) : g * h = h * g := by
  first
  | exact L.16 g (Set.mem_union_right _ hg) h (Set.mem_union_right _ hh)

lemma mem_ζ (L : LevelData A r) : L.ζ ∈ zfns L := by
  simp [zfns]
lemma mem_ζi (L : LevelData A r) : L.ζi ∈ zfns L := by
  simp [zfns]
lemma mem_ζb (L : LevelData A r) : L.ζb ∈ zfns L := by
  simp [zfns]
lemma mem_ζbi (L : LevelData A r) : L.ζbi ∈ zfns L := by
  simp [zfns]
lemma mem_GG (L : LevelData A r) : L.GG ∈ zfns L := by
  simp [zfns]
lemma mem_GGi (L : LevelData A r) : L.GGi ∈ zfns L := by
  simp [zfns]


lemma star_ζi {L : LevelData A r} (h : IsStarLevel L) : star L.ζi = L.ζbi := by
  have h' : star L.ζ = L.ζb ∧ star L.nab = L.nabs ∧ star L.TT = L.TT := h
  calc star L.ζi = star L.ζi * (L.ζb * L.ζbi) := by rw [L.ζb_ζbi, mul_one]
    _ = star (L.ζ * L.ζi) * L.ζbi := by rw [star_mul, h'.1, mul_assoc]
    _ = L.ζbi := by rw [L.ζ_ζi, star_one, one_mul]

lemma star_ζbi {L : LevelData A r} (h : IsStarLevel L) : star L.ζbi = L.ζi := by
  rw [← star_ζi h, star_star]




lemma wt_eq (L : LevelData A r) : (wt L : SlopeTestRemainingChoices S A) = io L.ζ * io L.ζb * io L.GGi := by
  show (io (L.ζ * L.ζb * L.GGi) : SlopeTestRemainingChoices S A) = _
  rw [io_mul, io_mul]

lemma comm_wt (L : LevelData A r) {b : SlopeTestRemainingChoices S A} (h : ∀ g ∈ zfns L, Commute b (io g)) : Commute b (wt L) := by
  rw [wt_eq]
  exact ((h _ (mem_ζ L)).mul_right (h _ (mem_ζb L))).mul_right (h _ (mem_GGi L))

lemma io_fn_comm (L : LevelData A r) {g : A} (hg : g ∈ zfns L) :
    ∀ h ∈ zfns L, Commute (io g : SlopeTestRemainingChoices S A) (io h) := fun _ hh => io_comm (fn_comm L hg hh)

lemma free_wt (L : LevelData A r) (a : S) : FreeOf a (wt L : SlopeTestRemainingChoices S A) := free_io a _

lemma free_l (L : LevelData A r) (f : FrameData S A) {a : S} (h : f.Free a) (Y : ℂ) : FreeOf a (f.l L Y) := by
  obtain ⟨-, -, -, -, -, -, -, -, hee⟩ := h
  exact free_add (free_io a _) (free_mul (free_io a _) (hee Y))

lemma free_d (L : LevelData A r) (f : FrameData S A) {a : S} (h : f.Free a) : FreeOf a (f.d L) := by
  obtain ⟨-, -, -, -, -, -, hc, -, -⟩ := h
  exact free_mul (free_pow (free_wt L a) _) hc


lemma comm_d (L : LevelData A r) (f : FrameData S A) {b : SlopeTestRemainingChoices S A} (h1 : ∀ g ∈ zfns L, Commute b (io g))
    (h2 : Commute b f.c) : Commute b (f.d L) := by
  have e : f.d L = wt L ^ f.N * f.c := rfl
  rw [e]
  exact ((comm_wt L h1).pow_right f.N).mul_right h2

end Level

section Main

variable {A S : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A] [Fintype S] [DecidableEq S] {r : ℕ}

theorem gaussFormPlus (L : LevelData A r) (f : FrameData S A) (a : S) (Ya : ℂ) (H : PlusHyp L f a Ya) :
    f.RR * ins a (f.TT Ya) = star (ins a !![1, 0; f.l L Ya, 1] * f.F) *
      (f.d L * ins a !![f.q Ya • (io L.GGi * f.xi (Ya + 1)), 0; 0, io L.GG * f.x Ya]) *
      (ins a !![1, 0; f.l L Ya, 1] * f.F) := by
  obtain ⟨hs, h, hfree, hreal, hYa, hYa1, hq⟩ := H
  obtain ⟨fRR, fTT, fF, fFi, fx, fxi, fc, fci, fee⟩ := hfree
  have hfree : f.Free a := ⟨fRR, fTT, fF, fFi, fx, fxi, fc, fci, fee⟩
  have rYa := h.inv_reg hYa
  have rYa1 := h.inv_reg hYa1

  have hGx : ∀ Y, Commute (io L.GG) (f.x Y) := fun Y => (h.x_fn Y _ (mem_GG L)).symm
  have hτs : star (io L.GG * f.x Ya) = io L.GG * f.x Ya := by
    rw [star_mul, io_star, star_GG hs, h.x_star Ya hreal]; exact (hGx Ya).eq.symm
  have hτd : Commute (io L.GG * f.x Ya) (f.d L) :=
    (comm_d L f (io_fn_comm L (mem_GG L)) (h.c_fn _ (mem_GG L)).symm).mul_left
      (comm_d L f (h.x_fn Ya) (h.x_c Ya))
  have hdτ : star (f.d L * (io L.GG * f.x Ya)) = f.d L * (io L.GG * f.x Ya) := by
    rw [star_mul, hτs, star_d hs h]; exact hτd.eq
  have hGG1 : (io L.GG : SlopeTestRemainingChoices S A) * io L.GGi = 1 := by rw [← io_mul, L.GG_GGi, io_one]
  have hGG2 : (io L.GGi : SlopeTestRemainingChoices S A) * io L.GG = 1 := by rw [← io_mul, L.GGi_GG, io_one]
  have hinv1 : ∀ Y ∈ f.inv, (io L.GGi * f.xi Y) * (io L.GG * f.x Y) = 1 := by
    intro Y hY
    calc (io L.GGi * f.xi Y) * (io L.GG * f.x Y) = io L.GGi * f.xi Y * (f.x Y * io L.GG) := by rw [(hGx Y).eq]
      _ = io L.GGi * (f.xi Y * f.x Y) * io L.GG := by simp only [mul_assoc]
      _ = 1 := by rw [(h.x_xi Y hY).2, mul_one, hGG2]
  have hinv2 : ∀ Y ∈ f.inv, (io L.GG * f.x Y) * (io L.GGi * f.xi Y) = 1 := by
    intro Y hY
    calc (io L.GG * f.x Y) * (io L.GGi * f.xi Y) = f.x Y * (io L.GG * io L.GGi) * f.xi Y := by
          rw [(hGx Y).eq]; simp only [mul_assoc]
      _ = 1 := by rw [hGG1, mul_one, (h.x_xi Y hY).1]

  have herm : star (f.RR * f.TT Ya 1 0) = f.RR * f.TT Ya 0 1 := by
    have e := congrFun (congrFun (h.module.herm Ya rYa hreal) 0) 1
    unfold d0 at e
    rwa [Matrix.conjTranspose_apply, Matrix.diagonal_mul, Matrix.diagonal_mul] at e
  have hdet := (h.module.det Ya rYa rYa1).2
  have quantum_determinant_shifted : f.TT Ya 0 0 * f.TT (Ya + 1) 1 1 - f.TT Ya 0 1 * f.TT (Ya + 1) 1 0 = f.q Ya • (1 : SlopeTestRemainingChoices S A) := by
    have e := congrFun (congrFun hdet 0) 1
    simp only [Matrix.mul_apply, Fin.sum_univ_two, Formalism.YangianSpanCharacter.T.J, Matrix.transpose_apply, Matrix.smul_apply] at e
    simp at e
    rw [Algebra.smul_def, mul_one, ← e]; abel
  have upper_block_det_one : f.TT Ya 1 0 * f.TT (Ya + 1) 1 1 = f.TT Ya 1 1 * f.TT (Ya + 1) 1 0 := by
    have e := congrFun (congrFun hdet 1) 1
    simp only [Matrix.mul_apply, Fin.sum_univ_two, Formalism.YangianSpanCharacter.T.J, Matrix.transpose_apply, Matrix.smul_apply] at e
    simp at e
    rw [← sub_eq_zero, ← e]; abel
  obtain ⟨e11, e10, e01, e00⟩ := core f.F f.Fi (f.d L) (io L.GG * f.x Ya) (io L.GGi * f.xi Ya)
    (io L.GG * f.x (Ya + 1)) (io L.GGi * f.xi (Ya + 1)) (f.l L Ya) f.RR (f.TT Ya 0 0) (f.TT Ya 0 1) (f.TT Ya 1 0)
    (f.TT Ya 1 1) (f.TT (Ya + 1) 1 0) (f.TT (Ya + 1) 1 1) (f.q Ya) h.form h.F_Fi h.Fi_F hdτ (hinv1 Ya hYa)
    (hinv2 _ hYa1) (hinv1 _ hYa1) (h.frame_τ Ya rYa) (h.frame_l Ya hYa hYa1) (h.frame_τ _ rYa1) herm quantum_determinant_shifted upper_block_det_one

  have fl := free_l L f hfree Ya
  have fd := free_d L f hfree
  have fΛ : FreeOf2 a !![1, 0; f.l L Ya, 1] := freeOf2_of_four_entries (free_one a) (free_zero a) fl (free_one a)
  have fΛs : FreeOf2 a !![1, star (f.l L Ya); 0, 1] :=
    freeOf2_of_four_entries (free_one a) (free_star fl) (free_zero a) (free_one a)
  have fD : FreeOf2 a !![f.q Ya • (io L.GGi * f.xi (Ya + 1)), 0; 0, io L.GG * f.x Ya] :=
    freeOf2_of_four_entries (free_smul _ (free_mul (free_io a _) (fxi _))) (free_zero a) (free_zero a)
      (free_mul (free_io a _) (fx _))
  have f1 := Wd4.freeOf_diagScalar (free_star fF)
  have f2 := Wd4.freeOf2_mul f1 fΛs
  have f3 := Wd4.freeOf2_mul f2 (Wd4.freeOf_diagScalar fd)
  have f4 := Wd4.freeOf2_mul f3 fD
  have f5 := Wd4.freeOf2_mul f4 fΛ
  have R : star (ins a !![1, 0; f.l L Ya, 1] * f.F) *
      (f.d L * ins a !![f.q Ya • (io L.GGi * f.xi (Ya + 1)), 0; 0, io L.GG * f.x Ya]) *
      (ins a !![1, 0; f.l L Ya, 1] * f.F) =
      ins a (d0 (star f.F) * !![1, star (f.l L Ya); 0, 1] * d0 (f.d L) *
        !![f.q Ya • (io L.GGi * f.xi (Ya + 1)), 0; 0, io L.GG * f.x Ya] * !![1, 0; f.l L Ya, 1] * d0 f.F) := by
    rw [Wd1.ins_mul a _ _ f5, Wd1.ins_mul a _ _ f4, Wd1.ins_mul a _ _ f3, Wd1.ins_mul a _ _ f2,
      Wd1.ins_mul a _ _ f1, Wd1.insert_diagonal_extract, Wd1.insert_diagonal_extract, Wd1.insert_diagonal_extract, star_mul, Wd1.ins_star a _ fΛ, lam_conj]
    simp only [mul_assoc]
  have Lh : f.RR * ins a (f.TT Ya) = ins a (d0 f.RR * f.TT Ya) := by
    rw [Wd1.ins_mul a _ _ (Wd4.freeOf_diagScalar fRR), Wd1.insert_diagonal_extract]
  rw [R, Lh, gauss_entries]
  congr 1
  refine Matrix.ext fun i j => ?_
  unfold d0
  rw [Matrix.diagonal_mul]
  fin_cases i <;> fin_cases j
  · simpa [mul_smul_comm] using e00
  · simpa using e01
  · simpa using e10
  · simpa using e11

lemma w1 (L : LevelData A r) : L.ζbi * (L.ζ * L.ζb * L.GGi) * L.ζi = L.GGi := by
  have c1 : L.ζbi * L.ζ = L.ζ * L.ζbi := fn_comm L (mem_ζbi L) (mem_ζ L)
  have c2 : L.GGi * L.ζi = L.ζi * L.GGi := fn_comm L (mem_GGi L) (mem_ζi L)
  calc L.ζbi * (L.ζ * L.ζb * L.GGi) * L.ζi = L.ζ * (L.ζbi * L.ζb) * (L.GGi * L.ζi) := by
        rw [← mul_assoc L.ζbi, ← mul_assoc L.ζbi, c1]; simp only [mul_assoc]
    _ = L.GGi := by rw [L.ζbi_ζb, mul_one, c2, ← mul_assoc, L.ζ_ζi, one_mul]

lemma w2 (L : LevelData A r) : L.GG * L.ζi * (L.ζ * L.ζb * L.GGi) * (L.ζbi * L.GG) = L.GG := by
  have c3 : L.ζb * L.GGi = L.GGi * L.ζb := fn_comm L (mem_ζb L) (mem_GGi L)
  calc L.GG * L.ζi * (L.ζ * L.ζb * L.GGi) * (L.ζbi * L.GG)
        = L.GG * (L.ζi * L.ζ) * (L.ζb * L.GGi) * (L.ζbi * L.GG) := by simp only [mul_assoc]
    _ = L.GG * L.GGi * (L.ζb * L.ζbi) * L.GG := by rw [L.ζi_ζ, mul_one, c3]; simp only [mul_assoc]
    _ = L.GG := by rw [L.GG_GGi, L.ζb_ζbi, one_mul, one_mul]

lemma diag_entries (p1 p2 w c1 c2 e1 e2 : SlopeTestRemainingChoices S A) :
    !![p1, 0; 0, p2] * d0 w * !![c1, 0; 0, c2] * !![e1, 0; 0, e2] =
      !![p1 * w * c1 * e1, 0; 0, p2 * w * c2 * e2] := by
  first
  | (simp only [d0_eq_diagonal, Matrix.mul_fin_two, mul_zero, zero_mul, add_zero, zero_add,
      mul_assoc]; done)

theorem plusForm (L : LevelData A r) (f : FrameData S A) (a : S) (Ya : ℂ) (H : PlusHyp L f a Ya) :
    (f.plus L a Ya).RR = star (f.plus L a Ya).F * (f.plus L a Ya).d L * (f.plus L a Ya).F := by
  have hG := gaussFormPlus L f a Ya H
  have hfree0 := H.2.2.1
  obtain ⟨hs, hf, hfree, hY, hYi, hY1i, -⟩ := H
  obtain ⟨-, -, -, -, fx, fxi, fc, -, -⟩ := hfree0
  obtain ⟨hx1, hx1'⟩ := hf.x_xi (Ya + 1) hY1i
  have hd : f.d L = (wt L : SlopeTestRemainingChoices S A) ^ f.N * f.c := rfl
  have gW : ∀ g ∈ zfns L, Commute (io g : SlopeTestRemainingChoices S A) (wt L) := fun g hg => comm_wt L (io_fn_comm L hg)
  have gc : ∀ g ∈ zfns L, Commute (io g : SlopeTestRemainingChoices S A) f.c := fun g hg => (hf.c_fn g hg).symm
  have cW : Commute f.c (wt L : SlopeTestRemainingChoices S A) := comm_wt L hf.c_fn
  have xiζi : Commute (f.xi (Ya + 1)) (io L.ζi) := comm_inv hx1 hx1' (hf.x_fn (Ya + 1) _ (mem_ζi L))
  have xζbi : Commute (f.x Ya) (io L.ζbi) := hf.x_fn Ya _ (mem_ζbi L)
  have xG : Commute (f.x Ya) (io L.GG) := hf.x_fn Ya _ (mem_GG L)
  have cb1 : Commute L.ζbi L.ζ := fn_comm L (mem_ζbi L) (mem_ζ L)
  have cb2 : Commute L.ζbi L.ζb := fn_comm L (mem_ζbi L) (mem_ζb L)
  have cb3 : Commute L.ζbi L.GGi := fn_comm L (mem_ζbi L) (mem_GGi L)
  have k1 : L.ζ * L.ζb * L.GGi * L.ζbi * L.ζi = L.GGi := by
    rw [← ((cb1.mul_right cb2).mul_right cb3).eq]
    exact w1 L
  have hw : (wt L : SlopeTestRemainingChoices S A) * io L.ζbi * io L.ζi = io L.GGi := by
    show (io (L.ζ * L.ζb * L.GGi) : SlopeTestRemainingChoices S A) * io L.ζbi * io L.ζi = io L.GGi
    rw [← io_mul, ← io_mul, k1]
  have hw2 : (io L.GG : SlopeTestRemainingChoices S A) * (io L.ζi * (wt L * (io L.ζbi * io L.GG))) = io L.GG := by
    show (io L.GG : SlopeTestRemainingChoices S A) * (io L.ζi * (io (L.ζ * L.ζb * L.GGi) * (io L.ζbi * io L.GG))) = io L.GG
    rw [← io_mul, ← io_mul, ← io_mul, ← io_mul]
    congr 1
    rw [← mul_assoc L.GG L.ζi, ← mul_assoc (L.GG * L.ζi)]
    exact w2 L
  have E1 : io L.ζbi * (wt L ^ (f.N + 1) * f.c) * (f.q Ya • f.xi (Ya + 1)) * io L.ζi =
      f.d L * (f.q Ya • (io L.GGi * f.xi (Ya + 1))) := by
    rw [mul_smul_comm, smul_mul_assoc, mul_smul_comm]
    congr 1
    rw [hd, pow_succ]
    simp only [mul_assoc]
    rw [((gW _ (mem_ζbi L)).pow_right f.N).left_comm, (gW _ (mem_ζbi L)).left_comm,
      (gc _ (mem_ζbi L)).left_comm, cW.symm.left_comm, xiζi.eq]
    rw [← mul_assoc (io L.ζbi) (io L.ζi) (f.xi (Ya + 1)),
      ← mul_assoc (wt L) (io L.ζbi * io L.ζi) (f.xi (Ya + 1)), ← mul_assoc (wt L) (io L.ζbi) (io L.ζi), hw]
  have E2 : io L.GG * io L.ζi * (wt L ^ (f.N + 1) * f.c) * f.x Ya * (io L.ζbi * io L.GG) =
      f.d L * (io L.GG * f.x Ya) := by
    rw [hd, pow_succ]
    simp only [mul_assoc]
    rw [xζbi.left_comm, xG.eq]
    rw [((gW _ (mem_ζi L)).pow_right f.N).left_comm, ((gW _ (mem_GG L)).pow_right f.N).left_comm]
    rw [cW.symm.left_comm, (gc _ (mem_ζi L)).left_comm, (gc _ (mem_GG L)).left_comm]
    rw [← mul_assoc (io L.ζbi) (io L.GG) (f.x Ya), ← mul_assoc (wt L) (io L.ζbi * io L.GG) (f.x Ya),
      ← mul_assoc (io L.ζi) (wt L * (io L.ζbi * io L.GG)) (f.x Ya),
      ← mul_assoc (io L.GG) (io L.ζi * (wt L * (io L.ζbi * io L.GG))) (f.x Ya), hw2]
  have fd : FreeOf a (f.d L) := free_d L f hfree
  have fX : FreeOf a ((wt L : SlopeTestRemainingChoices S A) ^ (f.N + 1) * f.c) := free_mul (free_pow (free_wt L a) _) fc
  have fd0 : ∀ X : SlopeTestRemainingChoices S A, FreeOf a X → FreeOf2 a (d0 X) := fun X hX => by
    rw [d0_eq_diagonal]; exact freeOf2_of_four_entries hX (free_zero a) (free_zero a) hX
  have fZ2 : FreeOf2 a !![(io L.ζi : SlopeTestRemainingChoices S A), 0; 0, io L.ζbi * io L.GG] :=
    freeOf2_of_four_entries (free_io a _) (free_zero a) (free_zero a) (free_mul (free_io a _) (free_io a _))
  have fZh : FreeOf2 a !![(io L.ζbi : SlopeTestRemainingChoices S A), 0; 0, io L.GG * io L.ζi] :=
    freeOf2_of_four_entries (free_io a _) (free_zero a) (free_zero a) (free_mul (free_io a _) (free_io a _))
  have fC : FreeOf2 a !![f.q Ya • f.xi (Ya + 1), 0; 0, f.x Ya] :=
    freeOf2_of_four_entries (free_smul _ (fxi _)) (free_zero a) (free_zero a) (fx _)
  have key : ins a !![(io L.ζbi : SlopeTestRemainingChoices S A), 0; 0, io L.GG * io L.ζi] *
      (wt L ^ (f.N + 1) * (f.c * ins a !![f.q Ya • f.xi (Ya + 1), 0; 0, f.x Ya])) *
      ins a !![io L.ζi, 0; 0, io L.ζbi * io L.GG] =
      f.d L * ins a !![f.q Ya • (io L.GGi * f.xi (Ya + 1)), 0; 0, io L.GG * f.x Ya] := by
    rw [← mul_assoc ((wt L : SlopeTestRemainingChoices S A) ^ (f.N + 1)) f.c, ← Wd1.insert_diagonal_extract a ((wt L : SlopeTestRemainingChoices S A) ^ (f.N + 1) * f.c),
      ← Wd1.insert_diagonal_extract a (f.d L)]
    simp only [mul_assoc]
    rw [← Wd1.ins_mul a _ _ fC, ← Wd1.ins_mul a _ _ (fd0 _ fX), ← Wd1.ins_mul a _ _ fZh,
      ← Wd1.ins_mul a _ _ (fd0 _ fd)]
    congr 1
    simp only [← mul_assoc]
    rw [diag_entries, d0_eq_diagonal, Matrix.mul_fin_two]
    simp only [mul_zero, zero_mul, add_zero, zero_add]
    rw [E1, E2]
  have key' : ∀ Y : SlopeTestRemainingChoices S A, ins a !![(io L.ζbi : SlopeTestRemainingChoices S A), 0; 0, io L.GG * io L.ζi] *
      (wt L ^ (f.N + 1) * (f.c * (ins a !![f.q Ya • f.xi (Ya + 1), 0; 0, f.x Ya] *
      (ins a !![io L.ζi, 0; 0, io L.ζbi * io L.GG] * Y)))) =
      f.d L * (ins a !![f.q Ya • (io L.GGi * f.xi (Ya + 1)), 0; 0, io L.GG * f.x Ya] * Y) := by
    intro Y
    have e := congrArg (· * Y) key
    simp only [mul_assoc] at e
    exact e
  have hZ : (!![io L.ζi, 0; 0, io L.ζbi] * !![1, 0; io L.GG * f.l L Ya, io L.GG] : M2 (SlopeTestRemainingChoices S A)) =
      !![io L.ζi, 0; 0, io L.ζbi * io L.GG] * !![1, 0; f.l L Ya, 1] := by
    rw [Matrix.mul_fin_two, Matrix.mul_fin_two]
    simp only [mul_one, mul_zero, zero_mul, add_zero, zero_add, mul_assoc]
  show f.RR * ins a (f.TT Ya) =
    star (ins a (!![io L.ζi, 0; 0, io L.ζbi] * !![1, 0; io L.GG * f.l L Ya, io L.GG]) * f.F) *
      ((wt L : SlopeTestRemainingChoices S A) ^ (f.N + 1) * (f.c * ins a !![f.q Ya • f.xi (Ya + 1), 0; 0, f.x Ya])) *
      (ins a (!![io L.ζi, 0; 0, io L.ζbi] * !![1, 0; io L.GG * f.l L Ya, io L.GG]) * f.F)
  rw [hG, hZ, Wd1.ins_mul a _ _ fZ2, star_mul, star_mul, star_mul, Wd1.ins_star a _ fZ2, diag_conj,
    io_star, star_mul, io_star, io_star, star_ζi hs, star_GG hs, star_ζbi hs]
  simp only [mul_assoc]
  rw [key']

end Main

end Formalism.FourierDecayAlt.P.Fr5

namespace Formalism.FourierDecayAlt.P

theorem plus_letter_form : Formalism.FourierDecayAlt.Fr.PlusForm := by
  intro A S _ _ _ _ _ _ r L f a Ya H
  exact Fr5.plusForm L f a Ya H

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FreeOf2OfFourEntries =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GaussFormMinusLetter =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.GaussFormMinusLetter", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementFr\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionInsertionDiagonalCompat\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuasiDeterminantFromEntries\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.YangianSpanCharacter.T Formalism.YangianSpanCharacter.Y Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.Fr

namespace Formalism.FourierDecayAlt.P.Fr8
open Formalism.FourierDecayAlt.P.Fr9

section Mon

variable {M : Type} [Monoid M]

theorem mon1 {z zi w wi gi : M} (hz : z * zi = 1) (hw : w * wi = 1) (c1 : Commute gi zi)
    (c2 : Commute w zi) (c3 : Commute gi wi) : z * w * gi * zi * wi = gi := by
  calc z * w * gi * zi * wi = z * (w * (gi * zi)) * wi := by simp only [mul_assoc]
    _ = z * (w * zi * gi) * wi := by rw [c1.eq, ← mul_assoc w zi gi]
    _ = z * zi * (w * (gi * wi)) := by rw [c2.eq]; simp only [mul_assoc]
    _ = gi := by rw [hz, one_mul, c3.eq, ← mul_assoc w wi gi, hw, one_mul]

theorem mon2 {z zi w wi g gi : M} (hz : z * zi = 1) (hw : w * wi = 1) (hg : gi * g = 1) :
    z * w * gi * (g * wi) * (zi * g) = g := by
  simp only [mul_assoc]
  rw [← mul_assoc gi g, hg, one_mul, ← mul_assoc w wi, hw, one_mul, ← mul_assoc z zi, hz, one_mul]

theorem mon3 {z zi w wi g gi : M} (hz : zi * z = 1) (hw : wi * w = 1) (hg : g * gi = 1)
    (c : Commute wi z) : g * zi * wi * (z * w * gi) = 1 := by
  simp only [mul_assoc]
  rw [← mul_assoc wi z, c.eq, mul_assoc z wi, ← mul_assoc zi z, hz, one_mul, ← mul_assoc wi w, hw, one_mul, hg]


end Mon

theorem star_inv {R : Type} [Ring R] [StarRing R] {a b a' b' : R} (h1 : a * b = 1) (h : star a = a')
    (h2 : a' * b' = 1) : star b = b' := by
  calc star b = star b * (a' * b') := by rw [h2, mul_one]
    _ = b' := by rw [← mul_assoc, ← h, ← star_mul, h1, star_one, one_mul]

section Slots

variable {A S : Type} [Ring A] [Fintype S] [DecidableEq S]

theorem io_mul (x y : A) : (io (x * y) : SlopeTestRemainingChoices S A) = io x * io y := by
  simp only [Formalism.FourierDecayAlt.Wd.io, map_mul]

theorem io_one : (io (1 : A) : SlopeTestRemainingChoices S A) = 1 := by
  simp only [Formalism.FourierDecayAlt.Wd.io, map_one]

theorem io_star [StarRing A] (x : A) : star (io x : SlopeTestRemainingChoices S A) = io (star x) := by
  simp only [Formalism.FourierDecayAlt.Wd.io]
  refine Matrix.ext fun i j => ?_
  simp only [Matrix.star_apply, Matrix.scalar_apply, Matrix.diagonal_apply]
  by_cases hij : i = j
  · subst hij; simp
  · simp [hij, Ne.symm hij]

theorem free_io (c : S) (x : A) : FreeOf c (io x : SlopeTestRemainingChoices S A) := by
  unfold Formalism.FourierDecayAlt.Wd.FreeOf
  intro i j
  show Formalism.FourierDecayAlt.Wd.eU c i j * Formalism.FourierDecayAlt.Wd.io x = Formalism.FourierDecayAlt.Wd.io x * Formalism.FourierDecayAlt.Wd.eU c i j
  simp only [Formalism.FourierDecayAlt.Wd.io, Matrix.scalar_apply]
  refine Matrix.ext fun u v => ?_
  simp only [Matrix.mul_diagonal, Matrix.diagonal_mul, Formalism.FourierDecayAlt.Wd.eU, Matrix.of_apply]
  split_ifs <;> simp

theorem free_one (c : S) : FreeOf c (1 : SlopeTestRemainingChoices S A) := by
  unfold FreeOf
  exact fun i j => Commute.one_right _

theorem free_zero (c : S) : FreeOf c (0 : SlopeTestRemainingChoices S A) := by
  unfold FreeOf
  exact fun i j => Commute.zero_right _

theorem free_mul {c : S} {b b' : SlopeTestRemainingChoices S A} (h : FreeOf c b) (h' : FreeOf c b') : FreeOf c (b * b') := by
  unfold FreeOf at h h' ⊢
  exact fun i j => (h i j).mul_right (h' i j)





theorem free2 {c : S} {p q r s : SlopeTestRemainingChoices S A} (hp : FreeOf c p) (hq : FreeOf c q) (hr : FreeOf c r)
    (hs : FreeOf c s) : FreeOf2 c !![p, q; r, s] := by
  unfold Formalism.FourierDecayAlt.Wd.FreeOf2
  intro i j
  fin_cases i <;> fin_cases j <;> simp [hp, hq, hr, hs]

theorem ins2 (a : S) (p q r s : SlopeTestRemainingChoices S A) :
    ins a !![p, q; r, s] = eU a 0 0 * p + eU a 0 1 * q + eU a 1 0 * r + eU a 1 1 * s := by
  simp [Formalism.FourierDecayAlt.Wd.ins, Fin.sum_univ_two, add_assoc]

theorem ins_conj (a : S) (M : M2 (SlopeTestRemainingChoices S A)) (P Q : SlopeTestRemainingChoices S A) (hP : FreeOf a P) :
    ins a (M.map fun b => P * b * Q) = P * ins a M * Q := by
  unfold Formalism.FourierDecayAlt.Wd.FreeOf at hP
  simp only [Formalism.FourierDecayAlt.Wd.ins, Matrix.map_apply, Finset.mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [show Formalism.FourierDecayAlt.Wd.eU a i j * (P * M i j * Q) = Formalism.FourierDecayAlt.Wd.eU a i j * P * M i j * Q by
    simp only [mul_assoc], (hP i j).eq]
  simp only [mul_assoc]

end Slots

section Level

variable {A S : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A] [Fintype S] [DecidableEq S] {r : ℕ}

theorem pow_inv {M : Type} [Monoid M] {a b : M} (h : a * b = 1) (n : ℕ) : a ^ n * b ^ n = 1 := by
  induction n with
  | zero => simp
  | succ n ih => rw [pow_succ, pow_succ', mul_assoc, ← mul_assoc a b, h, one_mul, ih]

theorem fcomm (L : LevelData A r) {x y : A} (hx : x ∈ zfns L) (hy : y ∈ zfns L) : Commute x y := by
  obtain ⟨p, pb, c, ci, cb, cbi, ζ, ζi, ζb, ζbi, GG, GGi, nab, nabs, TT, hc⟩ := L
  exact hc x (Set.mem_union_right _ hx) y (Set.mem_union_right _ hy)

theorem io_comm {x y : A} (h : Commute x y) : Commute (io x : SlopeTestRemainingChoices S A) (io y) := by
  simp only [Formalism.FourierDecayAlt.Wd.io]
  exact h.map _

theorem mGG (L : LevelData A r) : L.GG ∈ zfns L := by
  simp [Formalism.FourierDecayAlt.Fr.zfns]
theorem mGGi (L : LevelData A r) : L.GGi ∈ zfns L := by
  simp [Formalism.FourierDecayAlt.Fr.zfns]




theorem star_ζi {L : LevelData A r} (h : IsStarLevel L) : star L.ζi = L.ζbi := by
  exact star_inv L.ζ_ζi h.1 L.ζb_ζbi

theorem star_ζbi {L : LevelData A r} (h : IsStarLevel L) : star L.ζbi = L.ζi := star_inv L.ζb_ζbi (star_ζb h) L.ζ_ζi

theorem wt_eq (L : LevelData A r) : (wt L : SlopeTestRemainingChoices S A) = io L.ζ * io L.ζb * io L.GGi := by
  simp only [Formalism.FourierDecayAlt.Fr.wt, io_mul]


theorem wt_fn (L : LevelData A r) {g : A} (hg : g ∈ zfns L) : Commute (wt L : SlopeTestRemainingChoices S A) (io g) := by
  simpa only [Formalism.FourierDecayAlt.Fr.wt] using io_comm (((fcomm L (mζ L) hg).mul_left (fcomm L (mζb L) hg)).mul_left (fcomm L (mGGi L) hg))


variable {L : LevelData A r} {f : FrameData S A}




private theorem gaussMinusFrameModel (hf : IsFrame L f) :
    ModHyp (FrameData.hatT f) (fun Y => io L.GGi * f.xi Y) (FrameData.hatQ f) f.inv ∧
      ∀ Y ∈ f.inv, Y + 1 ∈ f.inv → lf (FrameData.hatT f) (fun Y => io L.GGi * f.xi Y) Y = f.l L Y := by
  have hLeft (M N : M2 (SlopeTestRemainingChoices S A)) (i j : Fin 2) :
      (Mᵀ * YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) * N) i j =
        M 0 i * N 1 j - M 1 i * N 0 j := by
    simp [Matrix.mul_apply, Fin.sum_univ_two, YangianSpanCharacter.T.J] <;> noncomm_ring
  have hRight (M N : M2 (SlopeTestRemainingChoices S A)) (i j : Fin 2) :
      (M * YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) * Nᵀ) i j =
        M i 0 * N j 1 - M i 1 * N j 0 := by
    simp [Matrix.mul_apply, Fin.sum_univ_two, YangianSpanCharacter.T.J] <;> noncomm_ring
  have hGG1 : (io L.GG : SlopeTestRemainingChoices S A) * io L.GGi = 1 := by
    rw [← io_mul, L.GG_GGi, io_one]
  have hGG2 : (io L.GGi : SlopeTestRemainingChoices S A) * io L.GG = 1 := by
    rw [← io_mul, L.GGi_GG, io_one]
  have hFFi := hf.F_Fi
  have hFiF := hf.Fi_F
  have hc_mul : ∀ a b : SlopeTestRemainingChoices S A, f.F * a * f.Fi * (f.F * b * f.Fi) = f.F * (a * b) * f.Fi := by
    intro a b
    calc f.F * a * f.Fi * (f.F * b * f.Fi) = f.F * a * (f.Fi * f.F) * b * f.Fi := by
          simp only [mul_assoc]
      _ = f.F * (a * b) * f.Fi := by rw [hFiF, mul_one, mul_assoc f.F]
  have hT : ∀ Y ∈ f.reg, f.hatT Y = (f.TT Y).map (fun b => f.F * b * f.Fi) := by
    intro Y hY
    unfold Formalism.FourierDecayAlt.Fr.FrameData.hatT
    rw [ite_eq_left hY]
  have hT0 : ∀ Y, Y ∉ f.reg → f.hatT Y = 0 := by
    intro Y hY
    unfold Formalism.FourierDecayAlt.Fr.FrameData.hatT
    rw [ite_eq_right hY]
  have hτ11 : ∀ Y ∈ f.reg, f.hatT Y 1 1 = io L.GG * f.x Y := by
    intro Y hY
    rw [hT Y hY, Matrix.map_apply, hf.frame_τ Y hY, mul_assoc, hFFi, mul_one]
  have hxiG (Y : ℂ) (hY : Y ∈ f.inv) (g : A) (hg : g ∈ zfns L) :
      Commute (f.xi Y) (io g) := by
    obtain ⟨h1, h2⟩ := hf.x_xi Y hY
    exact comm_inv h1 h2 (hf.x_fn Y g hg)
  have hq : ∀ Y, Y ∈ f.reg → Y + 1 ∈ f.reg → f.hatQ Y = f.q Y := by
    intro Y h1 h2
    unfold Formalism.FourierDecayAlt.Fr.FrameData.hatQ
    rw [ite_eq_left ⟨h1, h2⟩]
  have hq0 : ∀ Y, ¬ (Y ∈ f.reg ∧ Y + 1 ∈ f.reg) → f.hatQ Y = 0 := by
    intro Y h
    unfold Formalism.FourierDecayAlt.Fr.FrameData.hatQ
    rw [ite_eq_right h]
  have hJ : ∀ i j : Fin 2, f.F * Formalism.YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) i j * f.Fi = Formalism.YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) i j := by
    intro i j
    fin_cases i <;> fin_cases j <;> simp [Formalism.YangianSpanCharacter.T.J, hFFi]
  have h1 : ∀ (u v : ℂ) (i j k l : Fin 2),
      (u - v) • (f.hatT u i j * f.hatT v k l - f.hatT v k l * f.hatT u i j) =
        f.hatT u k j * f.hatT v i l - f.hatT v k j * f.hatT u i l := by
    intro u v i j k l
    by_cases hu : u ∈ f.reg
    · by_cases hv : v ∈ f.reg
      · have hR := rtt_relation_entries ℂ (SlopeTestRemainingChoices S A) f.TT v u (hf.module.rtt v hv u hu) i j k l
        simp only [hT u hu, hT v hv, Matrix.map_apply, hc_mul]
        simp only [← sub_mul, ← mul_sub]
        rw [← smul_mul_assoc, ← mul_smul_comm, hR]
      · simp [hT0 v hv]
    · simp [hT0 u hu]
  have h2 : ∀ Y, (f.hatT (Y + 1))ᵀ * Formalism.YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) * f.hatT Y =
      f.hatQ Y • Formalism.YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) := by
    intro Y
    by_cases hY : Y ∈ f.reg ∧ Y + 1 ∈ f.reg
    · rw [hq Y hY.1 hY.2]
      have hD := (hf.module.det Y hY.1 hY.2).1
      ext i j : 1
      have e := congrFun (congrFun hD i) j
      rw [hLeft] at e ⊢
      rw [hT Y hY.1, hT (Y + 1) hY.2]
      simp only [Matrix.map_apply, hc_mul]
      simp only [← sub_mul, ← mul_sub]
      rw [e]
      simp only [Matrix.smul_apply, smul_eq_mul]
      rw [← Algebra.smul_def, mul_smul_comm, smul_mul_assoc, hJ]
    · rw [hq0 Y hY, zero_smul]
      by_cases h1 : Y ∈ f.reg
      · have h2' : Y + 1 ∉ f.reg := fun h => hY ⟨h1, h⟩
        rw [hT0 _ h2']
        simp
      · rw [hT0 _ h1]
        simp
  have h3 : ∀ Y, f.hatT Y * Formalism.YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) * (f.hatT (Y + 1))ᵀ =
      f.hatQ Y • Formalism.YangianSpanCharacter.T.J (SlopeTestRemainingChoices S A) := by
    intro Y
    by_cases hY : Y ∈ f.reg ∧ Y + 1 ∈ f.reg
    · rw [hq Y hY.1 hY.2]
      have hD := (hf.module.det Y hY.1 hY.2).2
      ext i j : 1
      have e := congrFun (congrFun hD i) j
      rw [hRight] at e ⊢
      rw [hT Y hY.1, hT (Y + 1) hY.2]
      simp only [Matrix.map_apply, hc_mul]
      simp only [← sub_mul, ← mul_sub]
      rw [e]
      simp only [Matrix.smul_apply, smul_eq_mul]
      rw [← Algebra.smul_def, mul_smul_comm, smul_mul_assoc, hJ]
    · rw [hq0 Y hY, zero_smul]
      by_cases h1 : Y ∈ f.reg
      · have h2' : Y + 1 ∉ f.reg := fun h => hY ⟨h1, h⟩
        rw [hT0 _ h2']
        simp
      · rw [hT0 _ h1]
        simp
  have h4 : ∀ u ∈ f.inv, f.hatT u 1 1 * (io L.GGi * f.xi u) = 1 ∧
      io L.GGi * f.xi u * f.hatT u 1 1 = 1 := by
    intro u hu
    rw [hτ11 u (hf.inv_reg hu)]
    obtain ⟨hx1, hx2⟩ := hf.x_xi u hu
    have hc1 := (hf.x_fn u L.GGi (mGGi L)).eq
    have hc2 := (hxiG u hu L.GG (mGG L)).eq
    constructor
    · calc io L.GG * f.x u * (io L.GGi * f.xi u) = io L.GG * (f.x u * io L.GGi) * f.xi u := by
            simp only [mul_assoc]
        _ = io L.GG * (io L.GGi * f.x u) * f.xi u := by rw [hc1]
        _ = (io L.GG * io L.GGi) * (f.x u * f.xi u) := by simp only [mul_assoc]
        _ = 1 := by rw [hGG1, hx1, one_mul]
    · calc io L.GGi * f.xi u * (io L.GG * f.x u) = io L.GGi * (f.xi u * io L.GG) * f.x u := by
            simp only [mul_assoc]
        _ = io L.GGi * (io L.GG * f.xi u) * f.x u := by rw [hc2]
        _ = (io L.GGi * io L.GG) * (f.xi u * f.x u) := by simp only [mul_assoc]
        _ = 1 := by rw [hGG2, hx2, one_mul]
  have h5 : ∀ u v, Commute (f.hatT u 1 1) (f.hatT v 1 1) := by
    intro u v
    by_cases hu : u ∈ f.reg
    · by_cases hv : v ∈ f.reg
      · rw [hτ11 u hu, hτ11 v hv]
        have hGGx : ∀ w, Commute (io L.GG : SlopeTestRemainingChoices S A) (f.x w) := fun w => (hf.x_fn w L.GG (mGG L)).symm
        exact Commute.mul_left ((Commute.refl _).mul_right (hGGx v))
          (((hGGx u).symm).mul_right (hf.x_commute u v))
      · rw [hT0 v hv]
        simp
    · rw [hT0 u hu]
      simp
  have h6 : ∀ u v, Commute (f.hatT u 1 0) (f.hatT v 1 0) := by
    intro u v
    by_cases hu : u ∈ f.reg
    · by_cases hv : v ∈ f.reg
      · rw [hT u hu, hT v hv, Matrix.map_apply, Matrix.map_apply]
        show _ * _ = _ * _
        rw [hc_mul, hc_mul, (hf.lowerLeftEntry_commute u hu v hv).eq]
      · rw [hT0 v hv]
        simp
    · rw [hT0 u hu]
      simp
  refine ⟨⟨h1, h2, h3, h4, h5, h6⟩, ?_⟩
  intro Y hY hY1
  have hr := hf.inv_reg hY
  unfold lf
  rw [hT Y hr, Matrix.map_apply, hf.frame_l Y hY hY1]
  obtain ⟨hx1, hx2⟩ := hf.x_xi Y hY
  have hc2 := (hxiG Y hY L.GG (mGG L)).eq
  calc io L.GGi * f.xi Y * (io L.GG * f.x Y * f.l L Y * f.F * f.Fi)
      = io L.GGi * (f.xi Y * io L.GG) * f.x Y * f.l L Y * (f.F * f.Fi) := by simp only [mul_assoc]
    _ = io L.GGi * (io L.GG * f.xi Y) * f.x Y * f.l L Y * (f.F * f.Fi) := by rw [hc2]
    _ = (io L.GGi * io L.GG) * (f.xi Y * f.x Y) * f.l L Y * (f.F * f.Fi) := by simp only [mul_assoc]
    _ = f.l L Y := by simp only [hGG2, hx2, hFFi, one_mul, mul_one]

theorem d_m (hS : IsStarLevel L) (h : IsFrame L f) (Yb : ℂ) (hr : star Yb = Yb) (h0 : Yb ∈ f.inv)
    (h1 : Yb - 1 ∈ f.inv) :
    f.d L * mf (FrameData.hatT f) (fun Y => io L.GGi * f.xi Y) Yb =
      star (f.l L (Yb - 1)) * f.d L := by
  obtain ⟨H, Hl⟩ := gaussMinusFrameModel h
  have h1' : Yb - 1 + 1 ∈ f.inv := by rwa [sub_add_cancel]
  have hr1 : star (Yb - 1) = Yb - 1 := by rw [star_sub, hr, star_one]
  have hreg := h.inv_reg h1
  have hT : ∀ i j, f.hatT (Yb - 1) i j = f.F * f.TT (Yb - 1) i j * f.Fi := by
    intro i j; simp [FrameData.hatT, hreg]
  have sF : star f.Fi * star f.F = 1 := by rw [← star_mul, h.F_Fi, star_one]
  have key : ∀ i j, f.d L * f.hatT (Yb - 1) i j = star f.Fi * (f.RR * f.TT (Yb - 1) i j) * f.Fi := by
    intro i j
    rw [hT, h.form]
    calc f.d L * (f.F * f.TT (Yb - 1) i j * f.Fi)
        = (star f.Fi * star f.F) * f.d L * f.F * f.TT (Yb - 1) i j * f.Fi := by
          rw [sF, one_mul]; simp only [mul_assoc]
      _ = _ := by simp only [mul_assoc]
  have herm := h.module.herm _ hreg hr1
  have he : ∀ i j, star (f.RR * f.TT (Yb - 1) i j) = f.RR * f.TT (Yb - 1) j i := by
    intro i j
    have := congrFun (congrFun herm j) i
    simpa [Matrix.conjTranspose_apply, d0, Matrix.diagonal_mul] using this
  have hh : ∀ i j, star (f.d L * f.hatT (Yb - 1) i j) = f.d L * f.hatT (Yb - 1) j i := by
    intro i j
    rw [key, key, star_mul, star_mul, star_star, he]
    simp only [mul_assoc]
  have e := adjoint_l_shift_relation ℂ (SlopeTestRemainingChoices S A) (FrameData.hatT f) _ (FrameData.hatQ f) f.inv (f.d L) H (star_d hS h) (Yb - 1) h1 h1' hh
  rw [sub_add_cancel, Hl (Yb - 1) h1 h1'] at e
  exact e

end Level

theorem ct2 {R : Type} [Star R] (a b c d : R) :
    (!![a, b; c, d] : Matrix (Fin 2) (Fin 2) R)ᴴ = !![star a, star c; star b, star d] := by
  refine Matrix.ext fun i j => ?_
  fin_cases i <;> fin_cases j <;> simp [Matrix.conjTranspose_apply]

theorem asm {R : Type} [Ring R] [StarRing R] {F Fi d U D Λ : R} (hFFi : F * Fi = 1)
    (hU : d * U = star Λ * d) :
    star F * d * F * (Fi * (U * D * Λ) * F) = star (Λ * F) * (d * D) * (Λ * F) := by
  rw [star_mul]
  calc star F * d * F * (Fi * (U * D * Λ) * F) = star F * d * (F * Fi) * U * D * Λ * F := by
        simp only [mul_assoc]
    _ = star F * (d * U) * D * Λ * F := by rw [hFFi, mul_one]; simp only [mul_assoc]
    _ = star F * star Λ * (d * D) * (Λ * F) := by rw [hU]; simp only [mul_assoc]

theorem gaussFormMinus : GaussFormMinus := by
  intro A S _ _ _ _ _ _ r L f b Yb hyp
  obtain ⟨hS, h, hF, hr, h0, -, h1, -⟩ := hyp
  obtain ⟨H, Hl⟩ := gaussMinusFrameModel h
  obtain ⟨-, -, -, fFi, fx, fxi, fc, fci, fee⟩ := hF
  have h1' : Yb - 1 + 1 ∈ f.inv := by rwa [sub_add_cancel]
  have hdm := d_m hS h Yb hr h0 h1
  have hm : mf (FrameData.hatT f) (fun Y => io L.GGi * f.xi Y) Yb = f.m L Yb := by
    unfold FrameData.m
    rw [mul_assoc, ← hdm, ← mul_assoc, di_d h, one_mul]
  have G := gauss_decomp_minus_letter ℂ (SlopeTestRemainingChoices S A) (FrameData.hatT f) _ (FrameData.hatQ f) f.inv H Yb h0 h1
  have hQ : f.hatQ (Yb - 1) = f.q (Yb - 1) := by
    simp [FrameData.hatQ, h.inv_reg h1, h.inv_reg h0]
  have hτ : f.hatT Yb 1 1 = io L.GG * f.x Yb := by
    have : f.hatT Yb 1 1 = f.F * f.TT Yb 1 1 * f.Fi := by simp [FrameData.hatT, h.inv_reg h0]
    rw [this, h.frame_τ Yb (h.inv_reg h0), mul_assoc, h.F_Fi, mul_one]
  rw [hm, Hl (Yb - 1) h1 h1', hQ, hτ] at G
  rw [hm] at hdm
  have hT : (f.TT Yb)ᵀ = (f.hatT Yb)ᵀ.map (fun c => f.Fi * c * f.F) := by
    refine Matrix.ext fun i j => ?_
    have : f.hatT Yb j i = f.F * f.TT Yb j i * f.Fi := by simp [FrameData.hatT, h.inv_reg h0]
    rw [Matrix.map_apply, Matrix.transpose_apply, Matrix.transpose_apply, this]
    calc f.TT Yb j i = (f.Fi * f.F) * f.TT Yb j i * (f.Fi * f.F) := by rw [h.Fi_F, one_mul, mul_one]
      _ = _ := by simp only [mul_assoc]

  have fd : FreeOf b (f.d L) := free_mul (free_pow (free_io b _) _) fc
  have fdi : FreeOf b (f.di L) := free_mul fci (free_pow (free_io b _) _)
  have fl : FreeOf b (f.l L (Yb - 1)) := free_add (free_io b _) (free_mul (free_io b _) (fee _))
  have fm : FreeOf b (f.m L Yb) := free_mul (free_mul fdi (free_star fl)) fd
  have fU : FreeOf2 b !![1, f.l L (Yb - 1); 0, 1] := free2 (free_one b) fl (free_zero b) (free_one b)
  have fD : FreeOf2 b !![f.q (Yb - 1) • (io L.GGi * f.xi (Yb - 1)), 0; 0, io L.GG * f.x Yb] :=
    free2 (free_smul _ (free_mul (free_io b _) (fxi _))) (free_zero b) (free_zero b)
      (free_mul (free_io b _) (fx _))
  have fΛ : FreeOf2 b !![1, 0; f.m L Yb, 1] := free2 (free_one b) (free_zero b) fm (free_one b)
  have fUD : FreeOf2 b (!![1, f.l L (Yb - 1); 0, 1] *
      !![f.q (Yb - 1) • (io L.GGi * f.xi (Yb - 1)), 0; 0, io L.GG * f.x Yb]) := by
    intro i j k l
    rw [Matrix.mul_apply]
    exact Commute.sum_right _ _ _ fun m _ => (fU i m k l).mul_right (fD m j k l)
  have hsm : star (f.m L Yb) * f.d L = f.d L * f.l L (Yb - 1) := by
    have := congrArg star hdm
    rw [star_mul, star_mul, star_star, star_d hS h] at this
    exact this
  have hΛH : (!![1, 0; f.m L Yb, 1] : M2 (SlopeTestRemainingChoices S A))ᴴ = !![1, star (f.m L Yb); 0, 1] := by
    rw [ct2, star_one, star_zero]
  have hU : f.d L * ins b !![1, f.l L (Yb - 1); 0, 1] = star (ins b !![1, 0; f.m L Yb, 1]) * f.d L := by
    rw [Wd1.ins_star b _ fΛ, hΛH, ins2, ins2]
    simp only [mul_one, mul_zero, add_zero, mul_add, add_mul]
    rw [(fd 0 0).eq, (fd 1 1).eq, mul_assoc (eU b 0 1), hsm, ← mul_assoc, ← mul_assoc, (fd 0 1).eq]
  rw [hT, ins_conj b _ _ _ fFi, G, Wd1.ins_mul b _ _ fUD, Wd1.ins_mul b _ _ fU, h.form]
  exact asm h.F_Fi hU

theorem diag_mul {R : Type} [Ring R] (a b c d : R) :
    (!![a, 0; 0, b] : Matrix (Fin 2) (Fin 2) R) * !![c, 0; 0, d] = !![a * c, 0; 0, b * d] := by
  rw [Matrix.mul_fin_two]
  simp

theorem minusForm : MinusForm := by
  intro A S _ _ _ _ _ _ r L f b Yb hyp
  have G := gaussFormMinus A S r L f b Yb hyp
  obtain ⟨hS, h, hF, hr, h0, -, h1, -⟩ := hyp
  obtain ⟨-, -, -, -, fx, fxi, fc, -, -⟩ := hF
  show f.RR * ins b (f.TT Yb)ᵀ =
    star (ins b (!![io L.ζbi, 0; 0, io L.ζi] * !![1, 0; io L.GG * f.m L Yb, io L.GG]) * f.F) *
      (wt L ^ (f.N + 1) * (f.c * ins b !![f.q (Yb - 1) • f.xi (Yb - 1), 0; 0, f.x Yb])) *
      (ins b (!![io L.ζbi, 0; 0, io L.ζi] * !![1, 0; io L.GG * f.m L Yb, io L.GG]) * f.F)
  rw [G]
  have hEG : (!![io L.ζbi, 0; 0, io L.ζi] * !![1, 0; io L.GG * f.m L Yb, io L.GG] : M2 (SlopeTestRemainingChoices S A)) =
      !![io L.ζbi, 0; 0, io L.ζi * io L.GG] * !![1, 0; f.m L Yb, 1] := by
    refine Matrix.ext fun i j => ?_
    fin_cases i <;> fin_cases j <;> simp [Matrix.mul_apply, Fin.sum_univ_two, mul_assoc]
  have fE : FreeOf2 b (!![io L.ζbi, 0; 0, io L.ζi * io L.GG] : M2 (SlopeTestRemainingChoices S A)) :=
    free2 (free_io b _) (free_zero b) (free_zero b) (free_mul (free_io b _) (free_io b _))
  have fEH : FreeOf2 b (!![io L.ζi, 0; 0, io L.GG * io L.ζbi] : M2 (SlopeTestRemainingChoices S A)) :=
    free2 (free_io b _) (free_zero b) (free_zero b) (free_mul (free_io b _) (free_io b _))
  have fW : FreeOf2 b (!![wt L, 0; 0, wt L] : M2 (SlopeTestRemainingChoices S A)) :=
    free2 (free_io b _) (free_zero b) (free_zero b) (free_io b _)
  have hEH : (!![io L.ζbi, 0; 0, io L.ζi * io L.GG] : M2 (SlopeTestRemainingChoices S A))ᴴ =
      !![io L.ζi, 0; 0, io L.GG * io L.ζbi] := by
    rw [ct2, star_zero, star_mul, io_star, io_star, io_star, star_ζbi hS, star_ζi hS, star_GG hS]
  have hW : ins b (!![wt L, 0; 0, wt L] : M2 (SlopeTestRemainingChoices S A)) = wt L := by
    have e : (!![wt L, 0; 0, wt L] : M2 (SlopeTestRemainingChoices S A)) = d0 (wt L) := by
      refine Matrix.ext fun i j => ?_
      fin_cases i <;> fin_cases j <;> simp [d0]
    rw [e, Wd1.insert_diagonal_extract]

  have dg : ∀ g ∈ zfns L, Commute (wt L ^ (f.N + 1) * f.c) (io g) := fun g hg =>
    ((wt_fn L hg).pow_left _).mul_left (h.c_fn g hg)
  have cE : Commute (wt L ^ (f.N + 1) * f.c) (ins b (!![io L.ζi, 0; 0, io L.GG * io L.ζbi] : M2 (SlopeTestRemainingChoices S A))) := by
    refine Wd1.ins_comm b _ _ (free_mul (free_pow (free_io b _) _) fc) ?_
    intro i j
    fin_cases i <;> fin_cases j
    · exact dg _ (mζi L)
    · exact Commute.zero_right _
    · exact Commute.zero_right _
    · exact (dg _ (mGG L)).mul_right (dg _ (mζbi L))

  have iz : (io L.ζ : SlopeTestRemainingChoices S A) * io L.ζi = 1 := by rw [← io_mul, L.ζ_ζi, io_one]
  have iw : (io L.ζb : SlopeTestRemainingChoices S A) * io L.ζbi = 1 := by rw [← io_mul, L.ζb_ζbi, io_one]
  have ig : (io L.GGi : SlopeTestRemainingChoices S A) * io L.GG = 1 := by rw [← io_mul, L.GGi_GG, io_one]
  obtain ⟨x1, x2⟩ := h.x_xi _ h1
  have e00 : wt L * io L.ζi * (f.q (Yb - 1) • f.xi (Yb - 1)) * io L.ζbi =
      f.q (Yb - 1) • (io L.GGi * f.xi (Yb - 1)) := by
    rw [mul_smul_comm, smul_mul_assoc, mul_assoc, (comm_inv x1 x2 (h.x_fn _ _ (mζbi L))).eq, ← mul_assoc,
      wt_eq, mon1 iz iw (io_comm (fcomm L (mGGi L) (mζi L))) (io_comm (fcomm L (mζb L) (mζi L)))
        (io_comm (fcomm L (mGGi L) (mζbi L)))]
  have e11 : wt L * (io L.GG * io L.ζbi) * f.x Yb * (io L.ζi * io L.GG) = io L.GG * f.x Yb := by
    rw [mul_assoc, ((h.x_fn Yb _ (mζi L)).mul_right (h.x_fn Yb _ (mGG L))).eq, ← mul_assoc, wt_eq,
      mon2 iz iw ig]
  have key : f.d L * ins b !![f.q (Yb - 1) • (io L.GGi * f.xi (Yb - 1)), 0; 0, io L.GG * f.x Yb] =
      star (ins b !![io L.ζbi, 0; 0, io L.ζi * io L.GG]) *
        (wt L ^ (f.N + 1) * (f.c * ins b !![f.q (Yb - 1) • f.xi (Yb - 1), 0; 0, f.x Yb])) *
        ins b !![io L.ζbi, 0; 0, io L.ζi * io L.GG] := by
    rw [Wd1.ins_star b _ fE, hEH, ← e00, ← e11, ← diag_mul, ← diag_mul, ← diag_mul]
    have f1 : FreeOf2 b (!![wt L, 0; 0, wt L] * !![io L.ζi, 0; 0, io L.GG * io L.ζbi] : M2 (SlopeTestRemainingChoices S A)) := by
      rw [diag_mul]
      exact free2 (free_mul (free_io b _) (free_io b _)) (free_zero b) (free_zero b)
        (free_mul (free_io b _) (free_mul (free_io b _) (free_io b _)))
    have f2 : FreeOf2 b (!![wt L, 0; 0, wt L] * !![io L.ζi, 0; 0, io L.GG * io L.ζbi] *
        !![f.q (Yb - 1) • f.xi (Yb - 1), 0; 0, f.x Yb] : M2 (SlopeTestRemainingChoices S A)) := by
      rw [diag_mul, diag_mul]
      exact free2 (free_mul (free_mul (free_io b _) (free_io b _)) (free_smul _ (fxi _))) (free_zero b)
        (free_zero b) (free_mul (free_mul (free_io b _) (free_mul (free_io b _) (free_io b _))) (fx _))
    rw [Wd1.ins_mul b _ _ f2, Wd1.ins_mul b _ _ f1, Wd1.ins_mul b _ _ fW, hW]
    unfold FrameData.d
    generalize ins b (!![io L.ζi, 0; 0, io L.GG * io L.ζbi] : M2 (SlopeTestRemainingChoices S A)) = EH at cE ⊢
    generalize ins b (!![f.q (Yb - 1) • f.xi (Yb - 1), 0; 0, f.x Yb] : M2 (SlopeTestRemainingChoices S A)) = C
    generalize ins b (!![io L.ζbi, 0; 0, io L.ζi * io L.GG] : M2 (SlopeTestRemainingChoices S A)) = E
    calc wt L ^ f.N * f.c * (wt L * EH * C * E) = wt L ^ f.N * (f.c * wt L) * EH * C * E := by
          simp only [mul_assoc]
      _ = (wt L ^ f.N * wt L * f.c) * EH * C * E := by rw [(c_wt h).eq]; simp only [mul_assoc]
      _ = (wt L ^ (f.N + 1) * f.c) * EH * C * E := by rw [pow_succ]
      _ = EH * (wt L ^ (f.N + 1) * f.c) * C * E := by rw [cE.eq]
      _ = EH * (wt L ^ (f.N + 1) * (f.c * C)) * E := by simp only [mul_assoc]
  rw [hEG, Wd1.ins_mul b _ _ fE, key]
  simp only [star_mul, mul_assoc]

end Formalism.FourierDecayAlt.P.Fr8

namespace Formalism.FourierDecayAlt.P

theorem minus_letter_form : Formalism.FourierDecayAlt.Fr.MinusForm := Formalism.FourierDecayAlt.P.Fr8.minusForm

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GaussFormMinusLetter =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MinusLetterFrameOfData =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.MinusLetterFrameOfData", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementFr\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CommuteInvLeft\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionInsertionDiagonalCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.YangianSpanCharacter.T Formalism.YangianSpanCharacter.Y Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.Fr

namespace Formalism.FourierDecayAlt.P.Fr10
open Formalism.FourierDecayAlt.P.Fr9

open Formalism.FourierDecayAlt.P.Wd1

section Gen

variable {B : Type} [Ring B]


lemma star_inv [StarRing B] {x xi : B} (h1 : x * xi = 1) (h : star x = x) : star xi = xi := by
  have h3 : star xi * x = 1 := by
    simpa only [star_mul, star_one, h] using congrArg star h1
  exact left_inv_eq_right_inv h3 h1

lemma t21_commutator_identity [Algebra ℂ B] (a c a' c' : B) (Y Y' Yb : ℂ) (hne : Y ≠ Y')
    (h1 : (Y - Y') • (a * c' - c' * a) = c * a' - c' * a)
    (h2 : (Y' - Y) • (a' * c - c * a') = c' * a - c * a') :
    -a * ((Yb - Y') • c') + ((Yb - Y - 1) • c) * (-a') = -a' * ((Yb - Y) • c) + ((Yb - Y' - 1) • c') * (-a) := by
  have hXZ : a * c' - c' * a + (c * a' - a' * c) = 0 := by
    have h : (Y - Y') • (a * c' - c' * a + (c * a' - a' * c)) = 0 := by
      linear_combination (norm := module) h1 + h2
    exact (smul_eq_zero.mp h).resolve_left (sub_ne_zero.mpr hne)
  simp only [neg_mul, mul_neg, mul_smul_comm, smul_mul_assoc]
  linear_combination (norm := module) (-(Yb - Y)) • hXZ - h1

end Gen

variable {A S : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A] [Fintype S] [DecidableEq S]

lemma io_mul (x y : A) : (io (x * y) : SlopeTestRemainingChoices S A) = io x * io y := (Matrix.scalar (Ix S)).map_mul x y

lemma io_one : (io (1 : A) : SlopeTestRemainingChoices S A) = 1 := (Matrix.scalar (Ix S)).map_one


lemma free_io (c : S) (x : A) : FreeOf c (io x : SlopeTestRemainingChoices S A) := by
  intro i j
  show (eU c i j : SlopeTestRemainingChoices S A) * io x = io x * eU c i j
  ext u v
  simp only [io, Matrix.scalar_apply, Matrix.mul_diagonal, Matrix.diagonal_mul, eU, Matrix.of_apply]
  split_ifs <;> simp

lemma free_one (c : S) : FreeOf c (1 : SlopeTestRemainingChoices S A) := fun _ _ => Commute.one_right _

lemma free_zero (c : S) : FreeOf c (0 : SlopeTestRemainingChoices S A) := fun _ _ => Commute.zero_right _

lemma free_mul {c : S} {b b' : SlopeTestRemainingChoices S A} (h : FreeOf c b) (h' : FreeOf c b') : FreeOf c (b * b') :=
  fun i j => (h i j).mul_right (h' i j)






lemma freeOf2_of_entries {c : S} {p q r s : SlopeTestRemainingChoices S A} (hp : FreeOf c p) (hq : FreeOf c q) (hr : FreeOf c r)
    (hs : FreeOf c s) : FreeOf2 c !![p, q; r, s] := by
  intro i j
  fin_cases i <;> fin_cases j
  exacts [hp, hq, hr, hs]

lemma comm_lit {w p q r s : SlopeTestRemainingChoices S A} (hp : Commute w p) (hq : Commute w q) (hr : Commute w r)
    (hs : Commute w s) : ∀ i j, Commute w ((!![p, q; r, s] : M2 (SlopeTestRemainingChoices S A)) i j) := by
  intro i j
  fin_cases i <;> fin_cases j
  exacts [hp, hq, hr, hs]

lemma freeOf2_mul {c : S} {M N : M2 (SlopeTestRemainingChoices S A)} (hM : FreeOf2 c M) (hN : FreeOf2 c N) :
    FreeOf2 c (M * N) := by
  intro i j k l
  simpa only [Matrix.mul_apply] using Commute.sum_right _ _ _ fun m _ => (hM i m k l).mul_right (hN m j k l)

lemma ins_comm_ins {a : S} {M N : M2 (SlopeTestRemainingChoices S A)} (fM : FreeOf2 a M) (fN : FreeOf2 a N) (h : M * N = N * M) :
    Commute (ins a M) (ins a N) := by
  show ins a M * ins a N = ins a N * ins a M
  rw [← ins_mul a M N fM, ← ins_mul a N M fN, h]

lemma comm_mul_ins {a : S} {u v : SlopeTestRemainingChoices S A} {M N : M2 (SlopeTestRemainingChoices S A)} (fu : FreeOf a u) (fv : FreeOf a v)
    (fM : FreeOf2 a M) (fN : FreeOf2 a N) (huv : Commute u v) (huN : ∀ i j, Commute u (N i j))
    (hvM : ∀ i j, Commute v (M i j)) (hMN : M * N = N * M) : Commute (u * ins a M) (v * ins a N) :=
  Commute.mul_left (huv.mul_right (ins_comm a N u fu huN))
    ((ins_comm a M v fv hvM).symm.mul_right (ins_comm_ins fM fN hMN))

lemma comm_mul_ins_one {a : S} {u w : SlopeTestRemainingChoices S A} {M : M2 (SlopeTestRemainingChoices S A)} (fw : FreeOf a w) (huw : Commute u w)
    (hwM : ∀ i j, Commute w (M i j)) : Commute (u * ins a M) w :=
  Commute.mul_left huw (ins_comm a M w fw hwM).symm

lemma inv_mul_ins {a : S} {u ui : SlopeTestRemainingChoices S A} {M Mi : M2 (SlopeTestRemainingChoices S A)} (fui : FreeOf a ui) (fM : FreeOf2 a M)
    (h : u * ui = 1) (hc : ∀ i j, Commute ui (M i j)) (hM : M * Mi = 1) :
    u * ins a M * (ui * ins a Mi) = 1 := by
  calc u * ins a M * (ui * ins a Mi) = u * (ins a M * ui) * ins a Mi := by simp only [mul_assoc]
    _ = u * (ui * ins a M) * ins a Mi := by rw [(ins_comm a M ui fui hc).eq]
    _ = (u * ui) * (ins a M * ins a Mi) := by simp only [mul_assoc]
    _ = 1 := by rw [h, one_mul, ← ins_mul a M Mi fM, hM, ins_one]

lemma star_mul_ins {a : S} {u : SlopeTestRemainingChoices S A} {M : M2 (SlopeTestRemainingChoices S A)} (fu : FreeOf a u) (fM : FreeOf2 a M)
    (hu : star u = u) (hc : ∀ i j, Commute u (M i j)) (hM : Mᴴ = M) : star (u * ins a M) = u * ins a M := by
  rw [star_mul, ins_star a M fM, hM, hu, (ins_comm a M u fu hc).eq]

lemma diag_mul (p s p' s' : SlopeTestRemainingChoices S A) :
    (!![p, 0; 0, s] * !![p', 0; 0, s'] : M2 (SlopeTestRemainingChoices S A)) = !![p * p', 0; 0, s * s'] := by
  simp

lemma diag_star (p s : SlopeTestRemainingChoices S A) : (!![p, 0; 0, s] : M2 (SlopeTestRemainingChoices S A))ᴴ = !![star p, 0; 0, star s] := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [Matrix.conjTranspose_apply]

lemma diag_one : (!![1, 0; 0, 1] : M2 (SlopeTestRemainingChoices S A)) = 1 := Matrix.one_fin_two.symm

lemma Rht0_mul_10 (b : S) (d : ℂ) (M : M2 (SlopeTestRemainingChoices S A)) :
    (Rht0 b d * M : M2 (SlopeTestRemainingChoices S A)) 1 0 = (d - 1)⁻¹ • ins b !![d • M 1 0, 0; -M 0 0, (d - 1) • M 1 0] := by
  have h := sum_eU_diag (A := A) b
  rw [Fin.sum_univ_two] at h
  have h0 : (eU b 0 0 : SlopeTestRemainingChoices S A) = 1 - eU b 1 1 := eq_sub_of_add_eq h
  unfold Rht0 ins Q0
  rw [Matrix.smul_mul, Matrix.smul_apply, Matrix.mul_apply]
  congr 1
  simp only [Fin.sum_univ_two, Matrix.sub_apply, Matrix.smul_apply, Matrix.of_apply, Matrix.one_apply_eq]
  simp [h0, sub_mul, mul_sub, sub_smul]
  module

section Frame

variable {r : ℕ} (L : LevelData A r) (f : FrameData S A)



lemma tri_mul (m : SlopeTestRemainingChoices S A) :
    (!![io L.ζbi, 0; 0, io L.ζi] * !![1, 0; io L.GG * m, io L.GG]) *
      (!![1, 0; -m, io L.GGi] * !![io L.ζb, 0; 0, io L.ζ]) = (1 : M2 (SlopeTestRemainingChoices S A)) := by
  have h1 : (!![1, 0; io L.GG * m, io L.GG] * !![1, 0; -m, io L.GGi] : M2 (SlopeTestRemainingChoices S A)) = 1 := by
    rw [Matrix.mul_fin_two, ← diag_one]
    simp [← io_mul, L.GG_GGi, io_one]
  calc _ = !![io L.ζbi, 0; 0, io L.ζi] * ((!![1, 0; io L.GG * m, io L.GG] * !![1, 0; -m, io L.GGi]) *
        !![io L.ζb, 0; 0, io L.ζ]) := by simp only [Matrix.mul_assoc]
    _ = 1 := by rw [h1, Matrix.one_mul, diag_mul, ← io_mul, ← io_mul, L.ζbi_ζb, L.ζi_ζ, io_one, diag_one]

lemma tri_mul' (m : SlopeTestRemainingChoices S A) :
    (!![1, 0; -m, io L.GGi] * !![io L.ζb, 0; 0, io L.ζ]) *
      (!![io L.ζbi, 0; 0, io L.ζi] * !![1, 0; io L.GG * m, io L.GG]) = (1 : M2 (SlopeTestRemainingChoices S A)) := by
  have h1 : (!![1, 0; -m, io L.GGi] * !![1, 0; io L.GG * m, io L.GG] : M2 (SlopeTestRemainingChoices S A)) = 1 := by
    rw [Matrix.mul_fin_two, ← diag_one]
    simp [← mul_assoc, ← io_mul, L.GGi_GG, io_one]
  calc _ = !![1, 0; -m, io L.GGi] * ((!![io L.ζb, 0; 0, io L.ζ] * !![io L.ζbi, 0; 0, io L.ζi]) *
        !![1, 0; io L.GG * m, io L.GG]) := by simp only [Matrix.mul_assoc]
    _ = 1 := by rw [diag_mul, ← io_mul, ← io_mul, L.ζb_ζbi, L.ζ_ζi, io_one, diag_one, Matrix.one_mul, h1]

end Frame

lemma freeOf2_diag_scalar (b : S) (α : ℂ) : FreeOf2 b (!![α • 1, 0; 0, 1] : M2 (SlopeTestRemainingChoices S A)) :=
  freeOf2_of_entries (free_smul _ (free_one b)) (free_zero b) (free_zero b) (free_one b)

lemma comm_sc (w : SlopeTestRemainingChoices S A) (α : ℂ) : ∀ i j, Commute w ((!![α • 1, 0; 0, 1] : M2 (SlopeTestRemainingChoices S A)) i j) :=
  comm_lit ((Commute.one_right w).smul_right α) (Commute.zero_right w) (Commute.zero_right w)
    (Commute.one_right w)

lemma sc_comm_diag (α : ℂ) (p s : SlopeTestRemainingChoices S A) :
    (!![α • 1, 0; 0, 1] * !![p, 0; 0, s] : M2 (SlopeTestRemainingChoices S A)) = !![p, 0; 0, s] * !![α • 1, 0; 0, 1] := by
  rw [diag_mul, diag_mul]
  simp

lemma lit_congr {p q r s p' q' r' s' : SlopeTestRemainingChoices S A} (hp : p = p') (hq : q = q') (hr : r = r') (hs : s = s') :
    (!![p, q; r, s] : M2 (SlopeTestRemainingChoices S A)) = !![p', q'; r', s'] := by
  rw [hp, hq, hr, hs]

lemma sc_inv {α β : ℂ} (h : α * β = 1) :
    (!![α • 1, 0; 0, 1] * !![β • 1, 0; 0, 1] : M2 (SlopeTestRemainingChoices S A)) = 1 := by
  rw [diag_mul, ← diag_one]
  simp [smul_smul, mul_comm β α, h]

theorem minusStep_of (hLM : LetterMinus) (hRTT : RTTEntries) (hForm : MinusForm) (hTau : MinusTau)
    (hL : MinusL) : MinusStep := by
  intro A S _ _ _ _ _ _ r L f b Yb h
  obtain ⟨hSL, hF, hFree, hYb, hb, hb1, hbm, hq⟩ := h
  have hFree' := hFree
  obtain ⟨fRR, fTT, fF, fFi, fx, fxi, fc, fci, fee⟩ := hFree
  obtain ⟨xb1, xb2⟩ := hF.x_xi Yb hb
  obtain ⟨xm1, xm2⟩ := hF.x_xi (Yb - 1) hbm
  have hYm : star (Yb - 1) = Yb - 1 := by rw [star_sub, hYb, star_one]

  have fC : FreeOf2 b (!![f.q (Yb - 1) • f.xi (Yb - 1), 0; 0, f.x Yb] : M2 (SlopeTestRemainingChoices S A)) :=
    freeOf2_of_entries (free_smul _ (fxi _)) (free_zero b) (free_zero b) (fx _)
  have fCi : FreeOf2 b (!![(f.q (Yb - 1))⁻¹ • f.x (Yb - 1), 0; 0, f.xi Yb] : M2 (SlopeTestRemainingChoices S A)) :=
    freeOf2_of_entries (free_smul _ (fx _)) (free_zero b) (free_zero b) (fxi _)
  have cC : ∀ w : SlopeTestRemainingChoices S A, (∀ Y, Commute (f.x Y) w) →
      ∀ i j, Commute w ((!![f.q (Yb - 1) • f.xi (Yb - 1), 0; 0, f.x Yb] : M2 (SlopeTestRemainingChoices S A)) i j) := fun w hw =>
    comm_lit ((comm_inv xm1 xm2 (hw _)).symm.smul_right _) (Commute.zero_right w) (Commute.zero_right w)
      (hw _).symm
  have cCi : ∀ w : SlopeTestRemainingChoices S A, (∀ Y, Commute (f.x Y) w) →
      ∀ i j, Commute w ((!![(f.q (Yb - 1))⁻¹ • f.x (Yb - 1), 0; 0, f.xi Yb] : M2 (SlopeTestRemainingChoices S A)) i j) := fun w hw =>
    comm_lit ((hw _).symm.smul_right _) (Commute.zero_right w) (Commute.zero_right w)
      (comm_inv xb1 xb2 (hw _)).symm
  have x_ci : ∀ Y, Commute (f.x Y) f.ci := fun Y => (comm_inv hF.c_ci.1 hF.c_ci.2 (hF.x_c Y).symm).symm
  have fE : FreeOf2 b (!![io L.ζbi, 0; 0, io L.ζi] * !![1, 0; io L.GG * f.m L Yb, io L.GG] : M2 (SlopeTestRemainingChoices S A)) :=
    freeOf2_mul (freeOf2_of_entries (free_io b _) (free_zero b) (free_zero b) (free_io b _))
      (freeOf2_of_entries (free_one b) (free_zero b) (free_mul (free_io b _) (free_m hFree' _)) (free_io b _))
  have fEi : FreeOf2 b (!![1, 0; -f.m L Yb, io L.GGi] * !![io L.ζb, 0; 0, io L.ζ] : M2 (SlopeTestRemainingChoices S A)) :=
    freeOf2_mul (freeOf2_of_entries (free_one b) (free_zero b) (free_neg (free_m hFree' _)) (free_io b _))
      (freeOf2_of_entries (free_io b _) (free_zero b) (free_zero b) (free_io b _))
  refine
    { module := hLM ℂ A S f.reg f.RR f.TT f.q b Yb hF.module fRR fTT (hF.inv_reg hb) hYb
      lowerLeftEntry_commute := ?_
      inv_reg := fun Y hY => ⟨hF.inv_reg hY.1, hY.2.2⟩
      F_Fi := ?_
      Fi_F := ?_
      x_xi := ?_
      c_ci := ⟨?_, ?_⟩
      x_commute := ?_
      x_c := ?_
      x_fn := ?_
      x_nab := ?_
      c_fn := ?_
      x_star := ?_
      c_star := ?_
      ee_fn := ?_
      form := hForm A S r L f b Yb ⟨hSL, hF, hFree', hYb, hb, hb1, hbm, hq⟩
      frame_τ := hTau A S r L f b Yb ⟨hSL, hF, hFree', hYb, hb, hb1, hbm, hq⟩
      frame_l := hL A S r L f b Yb ⟨hSL, hF, hFree', hYb, hb, hb1, hbm, hq⟩ }
  ·
    intro Y hY Y' hY'
    show Commute ((Rht0 b (Yb - Y) * f.TT Y : M2 (SlopeTestRemainingChoices S A)) 1 0) ((Rht0 b (Yb - Y') * f.TT Y' : M2 (SlopeTestRemainingChoices S A)) 1 0)
    by_cases hne : Y = Y'
    · subst hne; exact Commute.refl _
    rw [Rht0_mul_10, Rht0_mul_10]
    refine (Commute.smul_right ?_ _).smul_left _
    have ht := hF.lowerLeftEntry_commute Y hY.1 Y' hY'.1
    have r1 := hRTT ℂ (SlopeTestRemainingChoices S A) f.TT Y' Y (hF.module.rtt Y' hY'.1 Y hY.1) 0 0 1 0
    have r2 := hRTT ℂ (SlopeTestRemainingChoices S A) f.TT Y Y' (hF.module.rtt Y hY.1 Y' hY'.1) 0 0 1 0
    refine ins_comm_ins
      (freeOf2_of_entries (free_smul _ (fTT _ _ _)) (free_zero b) (free_neg (fTT _ _ _)) (free_smul _ (fTT _ _ _)))
      (freeOf2_of_entries (free_smul _ (fTT _ _ _)) (free_zero b) (free_neg (fTT _ _ _)) (free_smul _ (fTT _ _ _))) ?_
    rw [Matrix.mul_fin_two, Matrix.mul_fin_two]
    have e10 := t21_commutator_identity (f.TT Y 0 0) (f.TT Y 1 0) (f.TT Y' 0 0) (f.TT Y' 1 0) Y Y' Yb hne r1 r2
    refine lit_congr ?_ (by simp) e10 ?_
    · simp only [zero_mul, add_zero]
      exact ((ht.smul_left _).smul_right _).eq
    · simp only [mul_zero, zero_add]
      exact ((ht.smul_left _).smul_right _).eq
  · show ins b _ * f.F * (f.Fi * ins b _) = 1
    calc _ = ins b (!![io L.ζbi, 0; 0, io L.ζi] * !![1, 0; io L.GG * f.m L Yb, io L.GG]) * (f.F * f.Fi) *
          ins b (!![1, 0; -f.m L Yb, io L.GGi] * !![io L.ζb, 0; 0, io L.ζ]) := by simp only [mul_assoc]
      _ = 1 := by rw [hF.F_Fi, mul_one, ← ins_mul b _ _ fE, tri_mul, ins_one]
  · show f.Fi * ins b _ * (ins b _ * f.F) = 1
    calc _ = f.Fi * (ins b (!![1, 0; -f.m L Yb, io L.GGi] * !![io L.ζb, 0; 0, io L.ζ]) *
          ins b (!![io L.ζbi, 0; 0, io L.ζi] * !![1, 0; io L.GG * f.m L Yb, io L.GG])) * f.F := by
            simp only [mul_assoc]
      _ = 1 := by rw [← ins_mul b _ _ fEi, tri_mul', ins_one, mul_one, hF.Fi_F]
  · rintro Y ⟨hYi, h0, h1⟩
    obtain ⟨a1, a2⟩ := hF.x_xi Y hYi
    have h0' : Yb - Y ≠ 0 := h0
    have h1' : Yb - Y - 1 ≠ 0 := sub_ne_zero.mpr h1
    exact ⟨inv_mul_ins (fxi Y) (freeOf2_diag_scalar b _) a1 (comm_sc _ _) (sc_inv (by field_simp)),
      inv_mul_ins (fx Y) (freeOf2_diag_scalar b _) a2 (comm_sc _ _) (sc_inv (by field_simp))⟩
  · refine inv_mul_ins fci fC hF.c_ci.1 (cC f.ci x_ci) ?_
    rw [diag_mul, ← diag_one, xb1, smul_mul_smul_comm, xm2, mul_inv_cancel₀ hq, one_smul]
  · refine inv_mul_ins fc fCi hF.c_ci.2 (cCi f.c hF.x_c) ?_
    rw [diag_mul, ← diag_one, xb2, smul_mul_smul_comm, xm1, inv_mul_cancel₀ hq, one_smul]
  · intro Y Y'
    exact comm_mul_ins (fx Y) (fx Y') (freeOf2_diag_scalar b _) (freeOf2_diag_scalar b _) (hF.x_commute Y Y') (comm_sc _ _) (comm_sc _ _)
      (sc_comm_diag _ _ _)
  · intro Y
    exact comm_mul_ins (fx Y) fc (freeOf2_diag_scalar b _) fC (hF.x_c Y) (cC (f.x Y) (fun Y' => hF.x_commute Y' Y)) (comm_sc _ _)
      (sc_comm_diag _ _ _)
  · intro Y g hg
    exact comm_mul_ins_one (free_io b g) (hF.x_fn Y g hg) (comm_sc _ _)
  · intro Y
    exact comm_mul_ins_one (free_io b _) (hF.x_nab Y) (comm_sc _ _)
  · intro g hg
    exact comm_mul_ins_one (free_io b g) (hF.c_fn g hg) (cC (io g) (fun Y => hF.x_fn Y g hg))
  · intro Y hY
    refine star_mul_ins (fx Y) (freeOf2_diag_scalar b _) (hF.x_star Y hY) (comm_sc _ _) ?_
    rw [diag_star, star_smul, star_one, star_div₀, star_sub, star_sub, star_sub, hY, hYb, star_one]
  · refine star_mul_ins fc fC hF.c_star (cC f.c hF.x_c) ?_
    rw [diag_star, star_smul, hF.module.q_real _ hYm, star_inv xm1 (hF.x_star _ hYm), hF.x_star _ hYb]
  · intro Y g hg
    have gx : ∀ Y, Commute (io g) (f.x Y) := fun Y => (hF.x_fn Y g hg).symm
    have gb : Commute (io g) (f.xi Yb) := (comm_inv xb1 xb2 (hF.x_fn Yb g hg)).symm
    have gm : Commute (io g) (f.xi (Yb - 1)) := (comm_inv xm1 xm2 (hF.x_fn (Yb - 1) g hg)).symm
    have ge : ∀ Y, Commute (io g) (f.ee Y) := fun Y => (hF.ee_fn Y g hg).symm
    have gD : Commute (io g) (f.DD Y Yb) := ((ge Y).sub_right (ge Yb)).smul_right _
    have gt : Commute (io g : SlopeTestRemainingChoices S A) (tz L) := by
      have hz : L.ζbi ∈ zfns L := by simp [zfns]
      refine io_comm ?_
      rw [mul_smul_comm, smul_mul_assoc, L.fns_comm g (Or.inr hg) L.ζbi (Or.inr hz)]
    exact (ins_comm b _ (io g) (free_io b g) (comm_lit (ge Y) (Commute.zero_right _)
      ((gb.mul_right gm).smul_right _).neg_right
      ((((gb.mul_right (ge Y)).mul_right (gx Yb)).sub_right gD).add_right gt))).symm

end Formalism.FourierDecayAlt.P.Fr10

namespace Formalism.FourierDecayAlt.P

theorem minus_letter_frame_of_data : Formalism.FourierDecayAlt.Fr.MinusAssemble :=
  fun _ _ _ _ hLM hRTT hForm hTau hL => Fr10.minusStep_of hLM hRTT hForm hTau hL

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MinusLetterFrameOfData =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PlusLetterFrameOfData =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PlusLetterFrameOfData", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementFr\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionInsertionDiagonalCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.YangianSpanCharacter.T Formalism.YangianSpanCharacter.Y Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.Fr

namespace Formalism.FourierDecayAlt.P.Fr7
open Formalism.FourierDecayAlt.P.Fr9

open Formalism.FourierDecayAlt.P.Wd1

theorem comm_inv {B : Type} [Monoid B] {x xi b : B} (h1 : x * xi = 1) (h2 : xi * x = 1)
    (h : Commute x b) : Commute xi b := by
  show xi * b = b * xi
  calc xi * b = xi * b * (x * xi) := by rw [h1, mul_one]
    _ = xi * (x * b) * xi := by rw [h.eq]; simp only [mul_assoc]
    _ = b * xi := by rw [← mul_assoc, h2, one_mul]

theorem star_inv {B : Type} [Monoid B] [StarMul B] {x xi : B} (h1 : x * xi = 1)
    (h : star x = x) : star xi = xi := by
  have h2 : star xi * x = 1 := by
    simpa only [star_mul, h, star_one] using congrArg star h1
  rw [← mul_one (star xi), ← h1, ← mul_assoc, h2, one_mul]

theorem mul_mul_one {B : Type} [Monoid B] {c ci d di : B} (h1 : c * ci = 1) (h2 : d * di = 1)
    (h : Commute d ci) : c * d * (ci * di) = 1 := by
  calc c * d * (ci * di) = c * (d * ci) * di := by simp only [mul_assoc]
    _ = 1 := by rw [h.eq, ← mul_assoc, mul_assoc, h1, h2, one_mul]

theorem mat1 {B : Type} [Ring B] (z zi w wi G Gi l : B) (hz : zi * z = 1) (hw : wi * w = 1)
    (hG : G * Gi = 1) :
    (!![zi, 0; 0, wi] * !![1, 0; G * l, G]) * (!![1, 0; -l, Gi] * !![z, 0; 0, w]) = 1 := by
  rw [Matrix.mul_fin_two, Matrix.mul_fin_two, Matrix.mul_fin_two, Matrix.one_fin_two]
  simp only [mul_one, mul_zero, zero_mul, add_zero, zero_add, one_mul]
  ext i j
  fin_cases i <;> fin_cases j <;> simp
  · exact hz
  · noncomm_ring
  · rw [← mul_assoc, mul_assoc wi G Gi, hG, mul_one, hw]

theorem mat2 {B : Type} [Ring B] (z zi w wi G Gi l : B) (hz : z * zi = 1) (hw : w * wi = 1)
    (hG : Gi * G = 1) :
    (!![1, 0; -l, Gi] * !![z, 0; 0, w]) * (!![zi, 0; 0, wi] * !![1, 0; G * l, G]) = 1 := by
  rw [Matrix.mul_fin_two, Matrix.mul_fin_two, Matrix.mul_fin_two, Matrix.one_fin_two]
  simp only [mul_one, mul_zero, zero_mul, add_zero, zero_add, one_mul]
  ext i j
  fin_cases i <;> fin_cases j <;> simp
  · exact hz
  · rw [mul_assoc l, hz, mul_one, mul_assoc Gi, ← mul_assoc w, hw, one_mul, ← mul_assoc, hG,
      one_mul, neg_add_cancel]
  · rw [mul_assoc Gi, ← mul_assoc w, hw, one_mul, hG]

theorem key_rel {B : Type} [Ring B] [Algebra ℂ B] (b b' t t' : B) (Y Y' Ya : ℂ) (hne : Y ≠ Y')
    (H1 : (Y - Y') • (t * b' - b' * t) = t * b' - t' * b)
    (H2 : (Y' - Y) • (t' * b - b * t') = t' * b - t * b') :
    (Y - Ya - 1) • (b * t') + (Y' - Ya) • (t * b') = (Y' - Ya - 1) • (b' * t) + (Y - Ya) • (t' * b) := by
  have hS : (Y - Y') • (b * t' + t * b' - b' * t - t' * b) = 0 := by
    linear_combination (norm := module) H1 + H2
  have hS0 : b * t' + t * b' - b' * t - t' * b = 0 :=
    (smul_eq_zero.mp hS).resolve_left (sub_ne_zero.mpr hne)
  linear_combination (norm := module) (Y' - Ya - 1) • hS0 + H2

theorem tri_comm {B : Type} [Ring B] [Algebra ℂ B] (b b' t t' e n : B) (D D' : ℂ)
    (hee : e * e = e) (hen : e * n = n) (hne : n * e = 0) (hnn : n * n = 0)
    (eb : e * b = b * e) (eb' : e * b' = b' * e) (et : e * t = t * e) (et' : e * t' = t' * e)
    (nb : n * b = b * n) (nb' : n * b' = b' * n) (nt : n * t = t * n) (nt' : n * t' = t' * n)
    (hbb : b * b' = b' * b)
    (K : (D - 1) • (b * t') + D' • (t * b') = (D' - 1) • (b' * t) + D • (t' * b)) :
    Commute (D • b - b * e - t * n) (D' • b' - b' * e - t' * n) := by
  have eb_x : ∀ x, e * (b * x) = b * (e * x) := fun x => by rw [← mul_assoc, eb, mul_assoc]
  have eb'_x : ∀ x, e * (b' * x) = b' * (e * x) := fun x => by rw [← mul_assoc, eb', mul_assoc]
  have et_x : ∀ x, e * (t * x) = t * (e * x) := fun x => by rw [← mul_assoc, et, mul_assoc]
  have et'_x : ∀ x, e * (t' * x) = t' * (e * x) := fun x => by rw [← mul_assoc, et', mul_assoc]
  have nb_x : ∀ x, n * (b * x) = b * (n * x) := fun x => by rw [← mul_assoc, nb, mul_assoc]
  have nb'_x : ∀ x, n * (b' * x) = b' * (n * x) := fun x => by rw [← mul_assoc, nb', mul_assoc]
  have nt_x : ∀ x, n * (t * x) = t * (n * x) := fun x => by rw [← mul_assoc, nt, mul_assoc]
  have nt'_x : ∀ x, n * (t' * x) = t' * (n * x) := fun x => by rw [← mul_assoc, nt', mul_assoc]
  have bb_x : ∀ x, b * (b' * x) = b' * (b * x) := fun x => by rw [← mul_assoc, hbb, mul_assoc]
  have Kn := congrArg (· * n) K
  simp only [add_mul, smul_mul_assoc, mul_assoc] at Kn
  show _ * _ = _ * _
  simp only [sub_mul, mul_sub, smul_mul_assoc, mul_smul_comm, mul_assoc, smul_sub, eb_x, eb'_x,
    et_x, et'_x, nb_x, nb'_x, nt_x, nt'_x, bb_x, eb, eb', nb, nb', hee, hen, hne, hnn, hbb, mul_zero,
    sub_zero]
  linear_combination (norm := module) (-1 : ℂ) • Kn

section Slots

variable {A S : Type} [Ring A] [StarRing A] [Algebra ℂ A] [Fintype S] [DecidableEq S] {a : S}

theorem io_mul (x y : A) : (io (x * y) : SlopeTestRemainingChoices S A) = io x * io y :=
  (Matrix.scalar (Ix S)).map_mul x y

theorem io_one : (io (1 : A) : SlopeTestRemainingChoices S A) = 1 :=
  (Matrix.scalar (Ix S)).map_one

theorem io_inv {x y : A} (h : x * y = 1) : (io x : SlopeTestRemainingChoices S A) * io y = 1 := by
  rw [← io_mul, h, io_one]


theorem free_io (a : S) (x : A) : FreeOf a (io x : SlopeTestRemainingChoices S A) := by
  intro i j
  show eU a i j * io x = io x * eU a i j
  ext p q
  simp only [io, Matrix.scalar_apply, Matrix.mul_diagonal, Matrix.diagonal_mul, eU, Matrix.of_apply]
  split_ifs <;> simp

theorem free_one : FreeOf a (1 : SlopeTestRemainingChoices S A) :=
  fun _ _ => Commute.one_right _

theorem free_zero : FreeOf a (0 : SlopeTestRemainingChoices S A) :=
  fun _ _ => Commute.zero_right _

theorem free_mul {x y : SlopeTestRemainingChoices S A} (hx : FreeOf a x) (hy : FreeOf a y) : FreeOf a (x * y) :=
  fun i j => (hx i j).mul_right (hy i j)

theorem free_add {x y : SlopeTestRemainingChoices S A} (hx : FreeOf a x) (hy : FreeOf a y) : FreeOf a (x + y) :=
  fun i j => (hx i j).add_right (hy i j)

theorem free_smul (c : ℂ) {x : SlopeTestRemainingChoices S A} (hx : FreeOf a x) : FreeOf a (c • x) :=
  fun i j => (hx i j).smul_right c




theorem free2 {p q s t : SlopeTestRemainingChoices S A} (hp : FreeOf a p) (hq : FreeOf a q) (hs : FreeOf a s) (ht : FreeOf a t) :
    FreeOf2 a !![p, q; s, t] := by
  intro i j
  fin_cases i <;> fin_cases j <;> simpa

theorem freeOf2_mul {M N : M2 (SlopeTestRemainingChoices S A)} (hM : FreeOf2 a M) (hN : FreeOf2 a N) : FreeOf2 a (M * N) := by
  intro i j
  rw [Matrix.mul_apply, Fin.sum_univ_two]
  exact free_add (free_mul (hM i 0) (hN 0 j)) (free_mul (hM i 1) (hN 1 j))

theorem comm2 {b p q s t : SlopeTestRemainingChoices S A} (hp : Commute b p) (hq : Commute b q) (hs : Commute b s) (ht : Commute b t) :
    ∀ i j, Commute b ((!![p, q; s, t] : M2 (SlopeTestRemainingChoices S A)) i j) := by
  intro i j
  fin_cases i <;> fin_cases j <;> simpa

theorem dg_mul {p q p' q' : SlopeTestRemainingChoices S A} (hp : FreeOf a p) (hq : FreeOf a q) :
    ins a !![p, 0; 0, q] * ins a !![p', 0; 0, q'] = ins a !![p * p', 0; 0, q * q'] := by
  rw [← ins_mul a _ _ (free2 hp free_zero free_zero hq)]
  congr 1
  rw [Matrix.mul_fin_two]
  simp

theorem dg_one : ins a !![(1 : SlopeTestRemainingChoices S A), 0; 0, 1] = 1 := by
  simpa only [← Matrix.one_fin_two] using ins_one a

theorem dg_comm {p q p' q' : SlopeTestRemainingChoices S A} (hp : FreeOf a p) (hq : FreeOf a q) (hp' : FreeOf a p')
    (hq' : FreeOf a q') (h1 : Commute p p') (h2 : Commute q q') :
    Commute (ins a !![p, 0; 0, q]) (ins a !![p', 0; 0, q']) := by
  show _ * _ = _ * _
  rw [dg_mul hp hq, dg_mul hp' hq', h1.eq, h2.eq]

theorem dg_star {p q : SlopeTestRemainingChoices S A} (hp : FreeOf a p) (hq : FreeOf a q) :
    star (ins a !![p, 0; 0, q]) = ins a !![star p, 0; 0, star q] := by
  rw [ins_star a _ (free2 hp free_zero free_zero hq)]
  congr 1
  ext i j
  fin_cases i <;> fin_cases j <;> simp [Matrix.conjTranspose_apply]

theorem comm_dg {b p q : SlopeTestRemainingChoices S A} (hb : FreeOf a b) (h1 : Commute b p) (h2 : Commute b q) :
    Commute b (ins a !![p, 0; 0, q]) :=
  ins_comm a _ b hb (comm2 h1 (Commute.zero_right b) (Commute.zero_right b) h2)

theorem comm_sc {b : SlopeTestRemainingChoices S A} (hb : FreeOf a b) (φ : ℂ) :
    Commute b (ins a !![φ • (1 : SlopeTestRemainingChoices S A), 0; 0, 1]) :=
  comm_dg hb ((Commute.one_right b).smul_right φ) (Commute.one_right b)

theorem freeOf_smul_one (φ : ℂ) : FreeOf a (φ • (1 : SlopeTestRemainingChoices S A)) :=
  free_smul φ free_one

theorem mul_rh0_apply_one_zero (M : M2 (SlopeTestRemainingChoices S A)) (D : ℂ) :
    (M * Rh0 a D : M2 (SlopeTestRemainingChoices S A)) 1 0 = (D - 1)⁻¹ • (D • M 1 0 - M 1 0 * eU a 0 0 - M 1 1 * eU a 0 1) := by
  simp only [Rh0, P0, Matrix.mul_apply, Fin.sum_univ_two, Matrix.smul_apply, Matrix.sub_apply,
    Matrix.one_apply, Matrix.of_apply, mul_smul_comm, mul_sub, smul_sub]
  simp
  module

end Slots

section Step

variable {A S : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A] [Fintype S] [DecidableEq S] {r : ℕ}

theorem zfns_comm (L : LevelData A r) {g h : A} (hg : g ∈ zfns L) (hh : h ∈ zfns L) : g * h = h * g :=
  L.fns_comm g (Set.mem_union_right _ hg) h (Set.mem_union_right _ hh)

theorem plusStep_of (hLP : LetterPlus) (hRTT : RTTEntries) (hForm : PlusForm) (hTau : PlusTau) (hPL : PlusL)
    (L : LevelData A r) (f : FrameData S A) (a : S) (Ya : ℂ) (h : PlusHyp L f a Ya) :
    IsFrame L (f.plus L a Ya) := by
  have hH := h
  obtain ⟨hstar, hf, hfree, hYa, hYaI, hYa1I, hq⟩ := h
  obtain ⟨fRR, fTT, fF, fFi, fx, fxi, fc, fci, fee⟩ := hfree
  have xiYa := hf.x_xi Ya hYaI
  have xiYa1 := hf.x_xi (Ya + 1) hYa1I
  have hYaR : Ya ∈ f.reg := hf.inv_reg hYaI
  have xi_c : ∀ Y ∈ f.inv, Commute (f.xi Y) f.c := fun Y hY =>
    comm_inv (hf.x_xi Y hY).1 (hf.x_xi Y hY).2 (hf.x_c Y)
  have x_ci : ∀ Y, Commute (f.x Y) f.ci := fun Y =>
    (comm_inv hf.c_ci.1 hf.c_ci.2 (hf.x_c Y).symm).symm
  have xi_ci : ∀ Y ∈ f.inv, Commute (f.xi Y) f.ci := fun Y hY =>
    (comm_inv hf.c_ci.1 hf.c_ci.2 (xi_c Y hY).symm).symm
  have xi_x : ∀ Y ∈ f.inv, ∀ Y', Commute (f.xi Y) (f.x Y') := fun Y hY Y' =>
    comm_inv (hf.x_xi Y hY).1 (hf.x_xi Y hY).2 (hf.x_commute Y Y')
  have xi_fn : ∀ Y ∈ f.inv, ∀ g ∈ zfns L, Commute (f.xi Y) (io g) := fun Y hY g hg =>
    comm_inv (hf.x_xi Y hY).1 (hf.x_xi Y hY).2 (hf.x_fn Y g hg)
  have hl : FreeOf a (f.l L Ya) := by
    simp only [FrameData.l, kapL]
    exact free_add (free_io a _) (free_mul (free_io a _) (fee Ya))
  have hs : ∀ (u v : SlopeTestRemainingChoices S A) (c d : ℂ), (c • u) * (d • v) = (c * d) • (u * v) := fun u v c d => by
    rw [smul_mul_assoc, mul_smul_comm, smul_smul]
  have hD12 : ins a !![f.q Ya • f.xi (Ya + 1), 0; 0, f.x Ya] *
      ins a !![(f.q Ya)⁻¹ • f.x (Ya + 1), 0; 0, f.xi Ya] = 1 := by
    rw [dg_mul (free_smul _ (fxi _)) (fx _), hs, mul_inv_cancel₀ hq, one_smul, xiYa1.2, xiYa.1,
      dg_one]
  have hD21 : ins a !![(f.q Ya)⁻¹ • f.x (Ya + 1), 0; 0, f.xi Ya] *
      ins a !![f.q Ya • f.xi (Ya + 1), 0; 0, f.x Ya] = 1 := by
    rw [dg_mul (free_smul _ (fx _)) (fxi _), hs, inv_mul_cancel₀ hq, one_smul, xiYa1.1, xiYa.2,
      dg_one]
  have diagonalShiftOneMinus : Commute f.c (ins a !![f.q Ya • f.xi (Ya + 1), 0; 0, f.x Ya]) :=
    comm_dg fc ((xi_c (Ya + 1) hYa1I).symm.smul_right _) (hf.x_c Ya).symm
  have ciD1 : Commute f.ci (ins a !![f.q Ya • f.xi (Ya + 1), 0; 0, f.x Ya]) :=
    comm_dg fci ((xi_ci (Ya + 1) hYa1I).symm.smul_right _) (x_ci Ya).symm
  have cD2 : Commute f.c (ins a !![(f.q Ya)⁻¹ • f.x (Ya + 1), 0; 0, f.xi Ya]) :=
    comm_dg fc ((hf.x_c (Ya + 1)).symm.smul_right _) (xi_c Ya hYaI).symm
  have assoc4 : ∀ u v w x : SlopeTestRemainingChoices S A, u * v * (w * x) = u * (v * w) * x := fun _ _ _ _ => by
    simp only [mul_assoc]
  refine
    { module := hLP ℂ A S f.reg f.RR f.TT f.q a Ya hf.module fRR fTT hYaR hYa
      lowerLeftEntry_commute := ?_
      inv_reg := fun Y hY => ⟨hf.inv_reg hY.1, hY.2.2⟩
      F_Fi := ?_
      Fi_F := ?_
      x_xi := ?_
      c_ci := ⟨mul_mul_one hf.c_ci.1 hD12 ciD1.symm, mul_mul_one hf.c_ci.2 hD21 cD2.symm⟩
      x_commute := ?_
      x_c := ?_
      x_fn := ?_
      x_nab := ?_
      c_fn := ?_
      x_star := ?_
      c_star := ?_
      ee_fn := ?_
      form := hForm A S r L f a Ya hH
      frame_τ := hTau A S r L f a Ya hH
      frame_l := hPL A S r L f a Ya hH }
  · intro Y hY Y' hY'
    show Commute ((f.TT Y * Rh0 a (Y - Ya) : M2 (SlopeTestRemainingChoices S A)) 1 0)
      ((f.TT Y' * Rh0 a (Y' - Ya) : M2 (SlopeTestRemainingChoices S A)) 1 0)
    rw [mul_rh0_apply_one_zero, mul_rh0_apply_one_zero]
    by_cases hYY : Y = Y'
    · subst hYY
      exact Commute.refl _
    have hee : (eU a 0 0 : SlopeTestRemainingChoices S A) * eU a 0 0 = eU a 0 0 := by rw [eU_mul_eU]; simp
    have hen : (eU a 0 0 : SlopeTestRemainingChoices S A) * eU a 0 1 = eU a 0 1 := by rw [eU_mul_eU]; simp
    have hne : (eU a 0 1 : SlopeTestRemainingChoices S A) * eU a 0 0 = 0 := by rw [eU_mul_eU]; simp
    have hnn : (eU a 0 1 : SlopeTestRemainingChoices S A) * eU a 0 1 = 0 := by rw [eU_mul_eU]; simp
    have K := key_rel _ _ _ _ Y Y' Ya hYY
      (hRTT ℂ (SlopeTestRemainingChoices S A) f.TT Y' Y (hf.module.rtt Y' hY'.1 Y hY.1) 1 1 1 0)
      (hRTT ℂ (SlopeTestRemainingChoices S A) f.TT Y Y' (hf.module.rtt Y hY.1 Y' hY'.1) 1 1 1 0)
    exact ((tri_comm _ _ _ _ (eU a 0 0) (eU a 0 1) (Y - Ya) (Y' - Ya) hee hen hne hnn
      (fTT Y 1 0 0 0).eq (fTT Y' 1 0 0 0).eq (fTT Y 1 1 0 0).eq (fTT Y' 1 1 0 0).eq
      (fTT Y 1 0 0 1).eq (fTT Y' 1 0 0 1).eq (fTT Y 1 1 0 1).eq (fTT Y' 1 1 0 1).eq
      (hf.lowerLeftEntry_commute Y hY.1 Y' hY'.1).eq K).smul_left _).smul_right _
  · have hM : FreeOf2 a (!![io L.ζi, 0; 0, io L.ζbi] * !![1, 0; io L.GG * f.l L Ya, io L.GG] :
        M2 (SlopeTestRemainingChoices S A)) :=
      freeOf2_mul (free2 (free_io a _) free_zero free_zero (free_io a _))
        (free2 free_one free_zero (free_mul (free_io a _) hl) (free_io a _))
    show ins a _ * f.F * (f.Fi * ins a _) = 1
    rw [assoc4, hf.F_Fi, mul_one, ← ins_mul a _ _ hM,
      mat1 (io L.ζ) (io L.ζi) (io L.ζb) (io L.ζbi) (io L.GG) (io L.GGi) (f.l L Ya)
        (io_inv L.ζi_ζ) (io_inv L.ζbi_ζb) (io_inv L.GG_GGi), ins_one]
  · have hN : FreeOf2 a (!![1, 0; -f.l L Ya, io L.GGi] * !![io L.ζ, 0; 0, io L.ζb] :
        M2 (SlopeTestRemainingChoices S A)) :=
      freeOf2_mul (free2 free_one free_zero (free_neg hl) (free_io a _))
        (free2 (free_io a _) free_zero free_zero (free_io a _))
    show f.Fi * ins a _ * (ins a _ * f.F) = 1
    rw [assoc4, ← ins_mul a _ _ hN,
      mat2 (io L.ζ) (io L.ζi) (io L.ζb) (io L.ζbi) (io L.GG) (io L.GGi) (f.l L Ya)
        (io_inv L.ζ_ζi) (io_inv L.ζb_ζbi) (io_inv L.GGi_GG), ins_one, mul_one, hf.Fi_F]
  · intro Y hY
    obtain ⟨hYI, hY0, hY1⟩ := hY
    have hY1' : Y - Ya - 1 ≠ 0 := sub_ne_zero.mpr hY1
    have hab : ((Y - Ya) / (Y - Ya - 1)) * ((Y - Ya - 1) / (Y - Ya)) = 1 := by
      field_simp
    have hba : ((Y - Ya - 1) / (Y - Ya)) * ((Y - Ya) / (Y - Ya - 1)) = 1 := by
      rw [mul_comm]; exact hab
    have d1 : ins a !![((Y - Ya) / (Y - Ya - 1)) • (1 : SlopeTestRemainingChoices S A), 0; 0, 1] *
        ins a !![((Y - Ya - 1) / (Y - Ya)) • (1 : SlopeTestRemainingChoices S A), 0; 0, 1] = 1 := by
      rw [dg_mul (freeOf_smul_one _) free_one, hs, hab, one_smul, one_mul, dg_one]
    have d2 : ins a !![((Y - Ya - 1) / (Y - Ya)) • (1 : SlopeTestRemainingChoices S A), 0; 0, 1] *
        ins a !![((Y - Ya) / (Y - Ya - 1)) • (1 : SlopeTestRemainingChoices S A), 0; 0, 1] = 1 := by
      rw [dg_mul (freeOf_smul_one _) free_one, hs, hba, one_smul, one_mul, dg_one]
    exact ⟨mul_mul_one (hf.x_xi Y hYI).1 d1 (comm_sc (fxi Y) _).symm,
      mul_mul_one (hf.x_xi Y hYI).2 d2 (comm_sc (fx Y) _).symm⟩
  · intro Y Y'
    exact ((hf.x_commute Y Y').mul_right (comm_sc (fx Y) _)).mul_left
      ((comm_sc (fx Y') _).symm.mul_right (dg_comm (freeOf_smul_one _) free_one (freeOf_smul_one _) free_one
        (((Commute.refl (1 : SlopeTestRemainingChoices S A)).smul_left _).smul_right _) (Commute.refl 1)))
  · intro Y
    exact ((hf.x_c Y).mul_right (comm_dg (fx Y) ((xi_x (Ya + 1) hYa1I Y).symm.smul_right _)
        (hf.x_commute Y Ya))).mul_left
      ((comm_sc fc _).symm.mul_right (dg_comm (freeOf_smul_one _) free_one (free_smul _ (fxi _)) (fx _)
        ((Commute.one_left _).smul_left _) (Commute.one_left _)))
  · intro Y g hg
    exact (hf.x_fn Y g hg).mul_left (comm_sc (free_io a g) _).symm
  · intro Y
    exact (hf.x_nab Y).mul_left (comm_sc (free_io a _) _).symm
  · intro g hg
    exact (hf.c_fn g hg).mul_left (comm_dg (free_io a g)
      ((xi_fn (Ya + 1) hYa1I g hg).symm.smul_right _) (hf.x_fn Ya g hg).symm).symm
  · intro Y hY
    have hα : star ((Y - Ya) / (Y - Ya - 1)) = (Y - Ya) / (Y - Ya - 1) := by
      simp [hY, hYa]
    show star (f.x Y * ins a !![((Y - Ya) / (Y - Ya - 1)) • (1 : SlopeTestRemainingChoices S A), 0; 0, 1]) =
      f.x Y * ins a !![((Y - Ya) / (Y - Ya - 1)) • (1 : SlopeTestRemainingChoices S A), 0; 0, 1]
    rw [star_mul, dg_star (freeOf_smul_one _) free_one, star_smul, star_one, hα, hf.x_star Y hY]
    exact (comm_sc (fx Y) _).eq.symm
  · have hqR : star (f.q Ya) = f.q Ya := hf.module.q_real Ya hYa
    have hxi1 : star (f.xi (Ya + 1)) = f.xi (Ya + 1) :=
      star_inv xiYa1.1 (hf.x_star (Ya + 1) (by simp [hYa]))
    show star (f.c * ins a !![f.q Ya • f.xi (Ya + 1), 0; 0, f.x Ya]) =
      f.c * ins a !![f.q Ya • f.xi (Ya + 1), 0; 0, f.x Ya]
    rw [star_mul, dg_star (free_smul _ (fxi _)) (fx _), star_smul, hqR, hxi1, hf.x_star Ya hYa,
      hf.c_star]
    exact diagonalShiftOneMinus.eq.symm
  · intro Y g hg
    have hz : L.ζbi ∈ zfns L := by simp [zfns]
    have htz : Commute (io g : SlopeTestRemainingChoices S A) (tz L) := by
      unfold tz
      exact io_comm (by rw [mul_smul_comm, smul_mul_assoc, zfns_comm L hg hz])
    have hDD : Commute (io g : SlopeTestRemainingChoices S A) (f.DD Y Ya) := by
      unfold FrameData.DD
      exact ((hf.ee_fn Y g hg).symm.sub_right (hf.ee_fn Ya g hg).symm).smul_right _
    exact (ins_comm a _ (io g) (free_io a g)
      (comm2 (((hf.ee_fn Y g hg).symm.sub_right hDD).add_right htz)
        ((Commute.one_right _).smul_right _).neg_right (Commute.zero_right _)
        (((xi_fn Ya hYaI g hg).symm.mul_right (hf.ee_fn Y g hg).symm).mul_right
          (hf.x_fn Ya g hg).symm))).symm

end Step

end Formalism.FourierDecayAlt.P.Fr7

namespace Formalism.FourierDecayAlt.P

theorem plus_letter_frame_of_data : Formalism.FourierDecayAlt.Fr.PlusAssemble := by
  intro _ _ _ _ hLP hRTT hForm hTau hPL A S _ _ _ _ _ _ r L f a Ya h
  exact Formalism.FourierDecayAlt.P.Fr7.plusStep_of hLP hRTT hForm hTau hPL L f a Ya h

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PlusLetterFrameOfData =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameOfAdmissibleWord =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameOfAdmissibleWord", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementFr\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdmissibleRecOfAdmissibleWord\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CommuteLevelZeroElement\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.EmbedLoweringConstant\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FreeOf2OfFourEntries\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FreeOf2RmatrixTranspose\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GaussFormMinusLetter\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.KroneckerEmbedMulApply\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MinusLetterFrameOfData\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PlusLetterFrameOfData\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionInsertionDiagonalCompat\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.QEFirstMulSecondEqSwap\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.QuasiDeterminantFromEntries\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem plus_letter_maps_frames : Formalism.FourierDecayAlt.Fr.PlusStep :=
  plus_letter_frame_of_data position_insertion_mul_compat position_insertion_star_compat position_insertion_diagonal_compat position_insertion_free_compat letter_module_plus
    rtt_relation_entries plus_letter_form plus_letter_tau plus_letter_l

theorem minus_letter_maps_frames : Formalism.FourierDecayAlt.Fr.MinusStep :=
  minus_letter_frame_of_data position_insertion_mul_compat position_insertion_star_compat position_insertion_diagonal_compat position_insertion_free_compat letter_module_minus
    rtt_relation_entries minus_letter_form minus_letter_tau minus_letter_l

theorem frame_of_admissible_word : Formalism.FourierDecayAlt.Fr.FrameAll :=
  (frame_of_steps start_is_frame initial_module_structure plus_letter_maps_frames minus_letter_maps_frames
    frame_free_of_new_position frame_module_of_word).1

theorem frame_eq_word_module : Formalism.FourierDecayAlt.Fr.FrameWord :=
  (frame_of_steps start_is_frame initial_module_structure plus_letter_maps_frames minus_letter_maps_frames
    frame_free_of_new_position frame_module_of_word).2

theorem frame_of_recursive_word : Formalism.FourierDecayAlt.Fr.FrameAllRec :=
  _root_.Formalism.FourierDecayAlt.P.Fr2.frameRecAssemble start_is_frame initial_module_structure plus_letter_maps_frames minus_letter_maps_frames
    frame_free_of_new_position

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameOfAdmissibleWord =====
