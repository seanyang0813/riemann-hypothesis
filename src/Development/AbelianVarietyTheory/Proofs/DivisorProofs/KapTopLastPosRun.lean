module

public import Formalism.LocalToGlobal.IndefiniteReal.FWExist
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Rat
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt

@[expose] public section

noncomputable section
open NumberField IsDedekindDomain MeasureTheory Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.L2.Pj Formalism.IndefR.FWT Formalism.IndefR
open scoped TensorProduct
namespace GlobalTheory.LiftWeight

theorem one_le_aPl_last (D : D7) (i : Fin D.R.m) (τ : D.what₂.Tau) (p n : ℕ) (hp : p = D.R.k + i) (hn : n + 1 = p) :
    1 ≤ aPl D i p τ n := by
  subst hp
  have hk : D.R.m + 3 ≤ D.R.k := D.R.m_add_three_le_k
  have hi : (i : ℕ) < D.R.m := i.isLt
  have hlt : n < D.R.k + (i : ℕ) := by omega
  have h1 : ¬ n < D.R.k - 1 := by omega
  have h2 : n - (D.R.k - 1) < D.R.m := by omega
  have hidx : (⟨n - (D.R.k - 1), h2⟩ : Fin D.R.m) = i := Fin.ext (by simp only; omega)
  have hlam : Formalism.L2.NTheta.lamAt (D.hc τ) n = -(D.hc τ).b i := by
    unfold Formalism.L2.NTheta.lamAt
    rw [dite_eq_right h1, dite_eq_left h2, hidx]
  have hg := (D.hc τ).gap_be i
  have hq : ((D.R.k + (i : ℕ) : ℕ) : ℚ) = (n : ℚ) + 1 := by
    rw [← hn]; push_cast; ring
  simp only [aPl, if_pos hlt]
  rw [hlam, hq]
  have hfl : (1 : ℤ) ≤ ⌊-(D.hc τ).b i + (D.hc τ).e i - ((n : ℚ) + 1 - ((n : ℚ) + 1)) - ((D.R.t : ℚ) + 1) / 2⌋ := by
    rw [Int.le_floor]
    push_cast
    linarith
  omega

theorem kapTop_lastPos (D : D7) (i : Fin D.R.m) : (kapTop D i).LastPos := by
  intro τ k hk
  have hi : (i : ℕ) < D.R.m := i.isLt
  have hW := D.sp.W_sigval ((i : ℕ) + 1) (by omega) (by omega) (tauE D τ)
  have hs : ((Wc D i).sig (tauE D τ)).1 = D.R.k + (i : ℕ) := by
    show ((D.sp.W ((i : ℕ) + 1)).sig (tauE D τ)).1 = D.R.k + (i : ℕ)
    rw [hW]
    show D.R.k + ((i : ℕ) + 1) - 1 = D.R.k + (i : ℕ)
    omega
  have hk' : (k : ℕ) + 1 = D.R.k + (i : ℕ) := by
    have hsw : (D.R.sigW ((i : ℕ) + 1)).1 = D.R.k + ((i : ℕ) + 1) - 1 := rfl
    omega
  exact one_le_aPl_last D i τ _ k hs (hk'.trans hs.symm)

end GlobalTheory.LiftWeight
