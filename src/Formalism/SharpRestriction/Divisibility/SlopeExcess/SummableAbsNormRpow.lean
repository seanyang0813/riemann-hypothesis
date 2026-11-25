module

import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.ZetaEulerProducts.SummablePrimesRpow
public import Mathlib.NumberTheory.LSeries.Basic
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.RingTheory.Ideal.Norm.AbsNorm
public import Formalism.LocalRingCardinality.DataHost
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
public import Mathlib.NumberTheory.LSeries.SumCoeff
import Mathlib.NumberTheory.LucasLehmer
public import Mathlib.NumberTheory.NumberField.Ideal.Asymptotics
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
public import Formalism.LocalRingCardinality.DataSpaces
public import Formalism.SharpRestriction.Divisibility.SchurIrreducible

@[expose] public section

noncomputable section
open NumberField IsDedekindDomain Filter Topology Asymptotics

namespace Formalism.MainNotions.DIV.Proofs.QuadraticNormBounds

section Sum
variable (K : Type) [Field K] [NumberField K]

theorem summable_absNorm_rpow {σ : ℝ} (hσ : 1 < σ) :
    Summable (fun w : HeightOneSpectrum (𝓞 K) => ((Ideal.absNorm w.asIdeal : ℕ) : ℝ) ^ (-σ)) := by
  apply PositivityTheory.Lord.summable_primes_rpow <;> assumption

end Sum

end Formalism.MainNotions.DIV.Proofs.QuadraticNormBounds

namespace Formalism.MainNotions.DIV.Proofs.QuadraticNormBounds
section Euler
variable {ι : Type} (q : ι → ℕ) (ε : ι → ℕ → ℂ) (n : ℕ)

variable {q ε}

variable (hsum : ∀ σ : ℝ, 1 < σ → Summable (fun i => (q i : ℝ) ^ (-σ)))
include hsum

end Euler
end Formalism.MainNotions.DIV.Proofs.QuadraticNormBounds

namespace Formalism.MainNotions.DIV.Proofs.QuadraticNormBounds
open Formalism.MainNotions.SchurIrreducible MeasureTheory

section Tail
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]



end Tail

section Main
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E]
  [Algebra F E] {A B : Formalism.BasicNotions.HSpace E} (O : RFObj F E A B)

end Main
end Formalism.MainNotions.DIV.Proofs.QuadraticNormBounds

namespace Formalism.MainNotions.DIV.Proofs
open Formalism.BasicNotions Formalism.MainNotions.DIV.Proofs.QuadraticNormBounds

end Formalism.MainNotions.DIV.Proofs
