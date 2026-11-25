module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ZinvBound
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DminStarPd
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open Matrix Set
open scoped ComplexConjugate ContDiff Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.AdmissibleLieWords

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.P.BetaSesquilinearity PI.UnitaryCorollaryDerivatives.CRH

open scoped Matrix.Norms.Elementwise

variable {k r : ℕ}

section fac

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

lemma ubl_epart (D : RealPlaceData k r Wp Wq) {nf : ℕ} (fib : Fin nf → Mat k r → C6.EndH Wp Wq)
    (hfib : ∀ j, C6.FibBound D (fib j)) {ε : ℝ} (hε : 0 < ε) {S : Set (Mat k r)}
    (hS : ∀ g ∈ S, g ∈ GV k r ∧ ε ≤ Gf k r D.z D.z' g) (n : ℕ) :
    ∀ es : List (Fin nf × List (Mat k r)), (∀ e ∈ es, ∀ X ∈ e.2, inLie k r X) →
      UBL (C6.Epart fib es) S n (3 * (r + 1) * (es.map fun e => e.2.length).sum) (3 * (r + 1)) := by
  have hSG : S ⊆ GV k r := fun g hg => (hS g hg).1
  intro es
  induction es with
  | nil =>
    intro _
    have e0 : C6.Epart fib ([] : List (Fin nf × List (Mat k r))) = fun _ => 1 := by
      funext g
      simp [C6.Epart]
    rw [e0]
    simpa using ubl_const (1 : C6.EndH Wp Wq) hSG n (3 * (r + 1))
  | cons e es ih =>
    intro hes
    have hA := ubl_fib D (fib e.1) (hfib e.1) hε hS e.2 (hes e (by simp)) n
    have hB := ih (fun e' he' => hes e' (List.mem_cons_of_mem _ he'))
    have hL := ubl_clm ((ContinuousLinearMap.mul ℂ (C6.EndH Wp Wq)).restrictScalars ℝ) hSG hA
    have hAB := ubl_app hSG hL hB
    have e1 : C6.Epart fib (e :: es) =
        fun g => ((ContinuousLinearMap.mul ℂ (C6.EndH Wp Wq)).restrictScalars ℝ
          (Rw e.2 (fib e.1) g)) (C6.Epart fib es g) := by
      funext g
      simp [C6.Epart]
    rw [e1]
    convert hAB using 2
    simp only [List.map_cons, List.sum_cons]
    ring

lemma ubl_coefP (D : RealPlaceData k r Wp Wq) {nf : ℕ} (fib : Fin nf → Mat k r → C6.EndH Wp Wq)
    (hfib : ∀ j, C6.FibBound D (fib j)) (L : Finset (Fin (r + 2))) {κ : ℕ} (P : Mat k r → ℂ)
    (a b : Fin (r + 2) → ℕ) (c : ℕ) (es : List (Fin nf × List (Mat k r))) (hP : U.IsPolyDeg κ P)
    (hab : ∀ l, l ∉ L → l ≠ Fin.last (r + 1) → a l = 0 ∧ b l = 0) (hes : ∀ e ∈ es, ∀ X ∈ e.2, inLie k r X)
    {ε : ℝ} (hε : 0 < ε) {S : Set (Mat k r)} (hS : ∀ g ∈ S, g ∈ GV k r ∧ ε ≤ Gf k r D.z D.z' g)
    {c₀ : ℝ} (hc₀ : 0 < c₀)
    (hSD : ∀ g ∈ S, ∀ l, (l ∈ L ∨ l = Fin.last (r + 1)) → c₀ ≤ Complex.normSq (Dmin k r D.z D.z' g l))
    (hSGf : ∀ g ∈ S, c₀ ≤ Complex.normSq ((Gf k r D.z D.z' g : ℝ) : ℂ)) (n : ℕ) :
    UBL (fun g => (P g * C6.monoM D a b c g) • C6.Epart fib es g) S n
      (κ + 3 * (r + 1) * (es.map fun e => e.2.length).sum) (3 * (r + 1)) := by
  have hSG : S ⊆ GV k r := fun g hg => (hS g hg).1
  have hP' := ubl_poly hP S hSG n (3 * (r + 1))
  have hM := ubl_mono hSG (ubl_monoM D L a b c hab hSG hc₀ hSD hSGf n) le_rfl
    (show 2 * r + 2 ≤ 3 * (r + 1) by omega)
  have hPM := ubl_mul hSG hP' hM
  have hE := ubl_epart D fib hfib hε hS n es hes
  let Lm : ℂ →L[ℝ] (C6.EndH Wp Wq →L[ℂ] C6.EndH Wp Wq) :=
    (ContinuousLinearMap.smulRight (ContinuousLinearMap.id ℂ ℂ)
      (ContinuousLinearMap.id ℂ (C6.EndH Wp Wq))).restrictScalars ℝ
  have hA := ubl_clm Lm hSG hPM
  have hAE := ubl_app hSG hA hE
  have e1 : (fun g => (P g * C6.monoM D a b c g) • C6.Epart fib es g) =
      fun g => Lm (P g * C6.monoM D a b c g) (C6.Epart fib es g) := by
    funext g
    simp [Lm]
  rw [e1]
  simpa using hAE

end fac

section cut

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

end cut

end Formalism.FourierDecayAlt.P.AdmissibleLieWords
