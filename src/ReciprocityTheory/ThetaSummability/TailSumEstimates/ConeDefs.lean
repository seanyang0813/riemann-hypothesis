module

public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Basic.Real.Basic
public import Mathlib.Data.Fintype.Basic

@[expose] public section

namespace ReciprocityTheory.ThetaSummability.Est

open Finset

def gap {r : ℕ} (x : Fin r → ℝ) (k : Fin r) : ℝ :=
  x k - (if h : k.val + 1 < r then x ⟨k.val + 1, h⟩ else 0)

def tailSum {r : ℕ} (y : Fin r → ℝ) (k : Fin r) : ℝ :=
  ∑ j ∈ univ.filter (fun j : Fin r => k ≤ j), y j

def partialSum {r : ℕ} (s : Fin r → ℝ) (k : Fin r) : ℝ :=
  ∑ i ∈ univ.filter (fun i : Fin r => i ≤ k), s i

def logCone (r : ℕ) (c : ℝ) : Set (Fin r → ℝ) :=
  {x | ∀ k, c ≤ gap x k}

def lowerBox (r : ℕ) (c : ℝ) : Set (Fin r → ℝ) :=
  Set.pi Set.univ (fun _ => Set.Ici c)

end ReciprocityTheory.ThetaSummability.Est
