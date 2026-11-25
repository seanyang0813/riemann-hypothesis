module

public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.Analysis.Complex.ExponentialBounds
public import Mathlib.Data.Nat.Prime.Factorial
public import Mathlib.NumberTheory.Padics.PadicVal.Basic
public import Mathlib.NumberTheory.Primorial
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.SumPrimeLogDivPredLeLogAdd

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.H1

lemma primeLogSum_nat (N : ℕ) (hN : 1 ≤ N) :
    ∑ p ∈ (Finset.Iic N).filter Nat.Prime, Real.log p / ((p : ℝ) - 1) ≤ Real.log N + 2.2 := by
  have h : Finset.Iic N = Finset.range (N + 1) := by ext; simp
  rw [h]
  exact GlobalTheory.PrimeLogSum.sum_log_div_pred_le N

end ReciprocityTheory.ChartRestriction.G.H1
