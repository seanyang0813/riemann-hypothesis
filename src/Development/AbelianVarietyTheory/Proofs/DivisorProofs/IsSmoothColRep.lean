module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section

open GlobalTheory.PRep GlobalTheory.SmGL Matrix
open scoped TensorProduct

namespace GlobalTheory.SmGL.RowOneCell

def sz (u v : ℕ) (i j : Bool) : ℕ := cond i (cond j v 1) (cond j u 0)

def extTensorEquiv {G H V W V' W' : Type} [Group G] [Group H] [AddCommGroup V] [Module ℂ V]
    [AddCommGroup W] [Module ℂ W] [AddCommGroup V'] [Module ℂ V'] [AddCommGroup W'] [Module ℂ W']
    {ρ : Representation ℂ G V} {σ : Representation ℂ H W} {ρ' : Representation ℂ G V'}
    {σ' : Representation ℂ H W'} (φ : ρ.Equiv ρ') (ψ : σ.Equiv σ') :
    (extTensor ρ σ).Equiv (extTensor ρ' σ') :=
  .mk (TensorProduct.congr φ.toLinearEquiv ψ.toLinearEquiv) fun g => by
    ext v w
    exact congrArg₂ (fun a b => a ⊗ₜ[ℂ] b) (φ.toIntertwiningMap.isIntertwining _ _ g.1 v)
      (ψ.toIntertwiningMap.isIntertwining _ _ g.2 w)

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def colChar (v : ℕ) (χ₂ : kˣ →* ℂˣ) (j : Bool) : kˣ →* ℂˣ :=
  χ₂ * absPow k (cond j (1 / 2) (-(v : ℂ) / 2))

def colRep (χ₁ χ₂ : kˣ →* ℂˣ) (u v : ℕ) (j : Bool) :
    Representation ℂ (Levi k fun i => Fin (sz u v i j)) (ℂ ⊗[ℂ] ℂ) :=
  (extTensor (detRep (Fin (sz u v false j)) χ₁) (detRep (Fin (sz u v true j)) (colChar v χ₂ j))).comp
    ((Pi.evalMonoidHom (fun i => GL (Fin (sz u v i j)) k) false).prod
      (Pi.evalMonoidHom (fun i => GL (Fin (sz u v i j)) k) true))

end GlobalTheory.SmGL.RowOneCell
