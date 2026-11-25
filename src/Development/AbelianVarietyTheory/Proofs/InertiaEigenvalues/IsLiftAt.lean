module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain ReciprocityTheory.Aut Formalism.AUTREP Formalism.BasicNotions

namespace GlobalTheory.TypeVec

def rtHom (L : Type) [Field L] [NumberField L] [IsCMField L] (n : ℕ) : GAf L n →* Module.End ℂ (GAf L n → ℂ) where
  toFun h := Formalism.L2.NG.rt L n h
  map_one' := by
    apply LinearMap.ext; intro f; funext g
    simp [Formalism.L2.NG.rt]
  map_mul' a b := by
    apply LinearMap.ext; intro f; funext g
    simp [Formalism.L2.NG.rt, mul_assoc]

def IsLiftAt {L : Type} [Field L] [NumberField L] [IsCMField L] {g : ℕ} [Fact g.Prime] {n : ℕ} (s : SplitPlace L)
    (j : ℚ_[g] ≃+* s.v.adicCompletion (maximalRealSubfield L)) (y : GL (Fin n) ℤ_[g]) (x : GAf L n) : Prop :=
  TrivOutside {s.v} (x : GA L n) ∧ s.loc n x = Matrix.GeneralLinearGroup.map j.toRingHom (GlobalTheory.GLp.inc g n y)

def KFix (D : D7) (s : ∀ k : Fin 2, D.nd.PlG k → SplitPlace D.host.E)
    (j : ∀ k v, ℚ_[D.host.g k] ≃+* (s k v).v.adicCompletion (maximalRealSubfield D.host.E))
    {A : Type} [AddCommGroup A] [Module ℂ A] (ρA : GAf D.host.E D.R.r →* Module.End ℂ A) : Submodule ℂ A :=
  ⨅ (k : Fin 2) (v : D.nd.PlG k) (y : (GlobalTheory.GLp.red (D.host.g k) D.R.r).ker) (x : GAf D.host.E D.R.r)
    (_ : IsLiftAt (s k v) (j k v) (y : GL (Fin D.R.r) ℤ_[D.host.g k]) x), LinearMap.ker (ρA x - LinearMap.id)

end GlobalTheory.TypeVec

end
