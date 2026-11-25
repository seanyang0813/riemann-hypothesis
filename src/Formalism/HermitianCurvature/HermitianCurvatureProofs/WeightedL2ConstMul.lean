module

public import Formalism.HermitianCurvature.StatementLE
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LemmaEprimeFromSteps

@[expose] public section

namespace Formalism.FourierDecayAlt.P.LEx1
open Formalism.FourierDecayAlt.LE
open MeasureTheory Filter Topology Finset
open scoped ComplexConjugate

end Formalism.FourierDecayAlt.P.LEx1

namespace Formalism.FourierDecayAlt.P.LEx1
open Formalism.FourierDecayAlt.LE
open MeasureTheory Filter Topology Finset
open scoped ComplexConjugate

end Formalism.FourierDecayAlt.P.LEx1

namespace Formalism.FourierDecayAlt.P.LEx1
open Formalism.FourierDecayAlt.LE
open MeasureTheory Filter Topology Finset
open scoped ComplexConjugate

end Formalism.FourierDecayAlt.P.LEx1

namespace Formalism.FourierDecayAlt.P.LEx1
open Formalism.FourierDecayAlt.LE
open MeasureTheory Filter Topology Finset
open scoped ComplexConjugate

end Formalism.FourierDecayAlt.P.LEx1

namespace Formalism.FourierDecayAlt.P.LEx1
open Formalism.FourierDecayAlt.LE
open MeasureTheory Filter Topology Finset
open scoped ComplexConjugate

theorem cutTheta : CutTheta := by
  intro hC c σ ε h4 hε p
  choose Cc hCc using fun i => cutBound c 1 i le_rfl
  have hexp : ∀ ε₂ x : ℝ, ld p (fun y => c.sc ε₂ 1 y * th ε σ y) x =
      ∑ i ∈ range (p + 1), (p.choose i : ℝ) * ld i (c.sc ε₂ 1) x * ld (p - i) (th ε σ) x := by
    intro ε₂ x
    unfold ld
    have hf : ContDiff ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) (fun u => c.sc ε₂ 1 (Real.exp u)) := smoothLog_sc c ε₂ 1
    have hg : ContDiff ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) (fun u => th ε σ (Real.exp u)) := thetaSmooth ε σ hε
    exact iteratedDeriv_fun_mul (hf.contDiffAt.of_le (by exact_mod_cast le_top))
      (hg.contDiffAt.of_le (by exact_mod_cast le_top))
  refine ⟨∑ i ∈ range (p + 1), (p.choose i : ℝ) * Cc i *
      (Real.exp 1 * (p - i).factorial * (4 * σ) ^ (p - i)), fun ε₂ x h2 hx => ⟨?_, ?_⟩⟩
  · rw [hexp, Finset.sum_mul]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
    rw [abs_mul, abs_mul, Nat.abs_cast]
    have a := (hCc i ε₂ x h2 hx).1
    have b := thetaBound hC σ ε h4 hε (p - i) x hx
    calc (p.choose i : ℝ) * |ld i (c.sc ε₂ 1) x| * |ld (p - i) (th ε σ) x|
        ≤ ((p.choose i : ℝ) * Cc i) * (Real.exp 1 * (p - i).factorial * (4 * σ) ^ (p - i) * th ε σ x) :=
          mul_le_mul (mul_le_mul_of_nonneg_left a (Nat.cast_nonneg _)) b (abs_nonneg _)
            (mul_nonneg (Nat.cast_nonneg _) ((abs_nonneg _).trans a))
      _ = _ := by ring
  · intro hlt
    rw [hexp, Finset.sum_eq_single 0]
    · rw [(hCc 0 ε₂ x h2 hx).2.2 hlt]; simp
    · intro i _ hi
      rw [(hCc i ε₂ x h2 hx).2.2 hlt, if_neg hi]; simp
    · simp

end Formalism.FourierDecayAlt.P.LEx1

namespace Formalism.FourierDecayAlt.P.LEx1
open Formalism.FourierDecayAlt.LE
open MeasureTheory Filter Topology Finset
open scoped ComplexConjugate

end Formalism.FourierDecayAlt.P.LEx1

namespace Formalism.FourierDecayAlt.P.LEx1
open Formalism.FourierDecayAlt.LE
open MeasureTheory Filter Topology Finset
open scoped ComplexConjugate

end Formalism.FourierDecayAlt.P.LEx1
