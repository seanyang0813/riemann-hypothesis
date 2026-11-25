module

public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.LinearAlgebra.Matrix.PosDef

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.PB

open Matrix
open scoped ComplexOrder

def gramOf {N : ℕ} (hd : Fin N → ℝ) (g : Matrix (Fin N) (Fin N) ℂ) : Matrix (Fin N) (Fin N) ℂ :=
  gᴴ * diagonal (fun i => (hd i : ℂ)) * g

def gramHead {N : ℕ} (hd : Fin N → ℝ) (k : ℕ) (g : Matrix (Fin N) (Fin N) ℂ) :
    Matrix {a : Fin N // (a : ℕ) < k} {a : Fin N // (a : ℕ) < k} ℂ :=
  (gramOf hd g).submatrix Subtype.val Subtype.val

def gramLog {N : ℕ} (hd : Fin N → ℝ) (k : ℕ) (g : Matrix (Fin N) (Fin N) ℂ) : ℝ :=
  (1 / 2) * Real.log ‖(gramHead hd k g).det‖

def sigForm (N j : ℕ) : Fin N → ℝ := fun a => if (a : ℕ) < N - j then -1 else 1

def InFlagDomain (N j : ℕ) (g : Matrix (Fin N) (Fin N) ℂ) : Prop :=
  IsUnit g.det ∧ (-gramHead (sigForm N j) (N - j) g).PosDef

def stepPot (N j : ℕ) (i : Fin N) (g : Matrix (Fin N) (Fin N) ℂ) : ℝ :=
  if (i : ℕ) + 1 ≤ j then gramLog (sigForm N j) (N - j + ((i : ℕ) + 1)) g - gramLog (sigForm N j) (N - j) g
  else gramLog (sigForm N j) N g - gramLog (sigForm N j) (N - j) g + gramLog (sigForm N j) ((i : ℕ) + 1 - j) g

def herm2 (G : Matrix (Fin 2) (Fin 2) ℂ) (u w : Fin 2 → ℂ) : ℂ := star u ⬝ᵥ (G *ᵥ w)

def xiPot (G : Matrix (Fin 2) (Fin 2) ℂ) (a : ℂ) : ℝ :=
  -Real.log (herm2 G ![1, a] ![1, a]).re + (1 / 2) * Real.log G.det.re

def logSin (G : Matrix (Fin 2) (Fin 2) ℂ) (a₀ a₁ : ℂ) : ℝ :=
  (1 / 2) * Real.log (1 - ‖herm2 G ![1, a₀] ![1, a₁]‖ ^ 2 /
    ((herm2 G ![1, a₀] ![1, a₀]).re * (herm2 G ![1, a₁] ![1, a₁]).re))

end GlobalTheory.CompanionTheory.Ar.PB
