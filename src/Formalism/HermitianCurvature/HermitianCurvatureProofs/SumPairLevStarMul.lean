module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TransferWordEntriesMem

@[expose] public section

open Matrix MeasureTheory
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P5.HerA

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5

section Lev

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]
  {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)} {S : Type} [Fintype S] [DecidableEq S]

def pairLev (μ : Measure (Mt k r)) (i : Fin (r + 1)) (Φ Ψ : RadSp k r z z' π π') (c : Fin r → ℂ) : ℂ :=
  ∫ c' : Cf r i, ((∏ l, ‖c' l‖ ^ (-2 : ℤ) : ℝ) : ℂ) * pairAt μ Φ Ψ (glue i c c')

variable {μ : Measure (Mt k r)} {i : Fin (r + 1)} {U : Submodule ℂ (RadSp k r z z' π π')}

theorem pairLev_swap (Φ Ψ : RadSp k r z z' π π') (c : Fin r → ℂ) :
    pairLev μ i Ψ Φ c = conj (pairLev μ i Φ Ψ c) := by
  unfold pairLev
  rw [← integral_conj]
  congr 1
  funext c'
  rw [pairAt_swap, map_mul, Complex.conj_ofReal]

theorem pairLev_smul_left (Φ Ψ : RadSp k r z z' π π') (c : Fin r → ℂ) (a : ℂ) :
    pairLev μ i (a • Φ) Ψ c = a * pairLev μ i Φ Ψ c := by
  unfold pairLev
  rw [← integral_const_mul]
  congr 1
  funext c'
  rw [pairAt_smul_left]
  ring

theorem pairLev_zero_left (Ψ : RadSp k r z z' π π') (c : Fin r → ℂ) : pairLev μ i 0 Ψ c = 0 := by
  unfold pairLev
  have h0 : ∀ c', pairAt μ (0 : RadSp k r z z' π π') Ψ c' = 0 := fun c' => by
    have := pairAt_smul_left μ (0 : RadSp k r z z' π π') Ψ c' 0
    rwa [zero_smul, zero_mul] at this
  simp [h0]

theorem act_mem_pres (M : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) (hM : ∀ a b, M a b ∈ presAlg U)
    (x : Ix S → RadSp k r z z' π π') (hx : ∀ a, x a ∈ U) (a : Ix S) : act M x a ∈ U := U.sum_mem fun b _ => (hM a b).1 _ (hx b)

end Lev

section Top

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]

end Top

end Formalism.FourierDecayAlt.P5.HerA
