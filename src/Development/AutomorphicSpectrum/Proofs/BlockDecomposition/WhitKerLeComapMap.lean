module

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

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.LocGL

namespace GlobalTheory.CompanionTheory.BZNuPair

section
variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def firstEmb (d : Fin 2 → ℕ) : GL (Fin (d 0)) k →* Levi k (fun a => Fin (d a)) :=
  MonoidHom.mulSingle (fun a => GL (Fin (d a)) k) 0

def secondEmb (d : Fin 2 → ℕ) : GL (Fin (d 1)) k →* Levi k (fun a => Fin (d a)) :=
  MonoidHom.mulSingle (fun a => GL (Fin (d a)) k) 1

theorem firstEmb_comm (d : Fin 2 → ℕ) (g : GL (Fin (d 0)) k) (h : GL (Fin (d 1)) k) :
    firstEmb d g * secondEmb d h = secondEmb d h * firstEmb d g :=
  Pi.mulSingle_commute (f := fun a => GL (Fin (d a)) k) (by decide : (0 : Fin 2) ≠ 1) g h

variable {X Y : Type} [AddCommGroup X] [Module ℂ X] [AddCommGroup Y] [Module ℂ Y]

abbrev whitKer (ψ : AddChar k Circle) (d : Fin 2 → ℕ) (J : Representation ℂ (Levi k fun a => Fin (d a)) X) :
    Submodule ℂ X :=
  twKer (J.comp (secondEmb d)) (unipB k (Fin (d 1))) (whitChar ψ (d 1))

theorem whitKer_le_comap (ψ : AddChar k Circle) (d : Fin 2 → ℕ) (J : Representation ℂ (Levi k fun a => Fin (d a)) X)
    (g : GL (Fin (d 0)) k) : whitKer ψ d J ≤ (whitKer ψ d J).comap (J (firstEmb d g)) := by
  refine Submodule.span_le.2 ?_
  rintro w ⟨u, v, rfl⟩
  refine Submodule.subset_span ⟨u, J (firstEmb d g) v, ?_⟩
  simp only [map_sub, map_smul, MonoidHom.comp_apply]
  rw [← Module.End.mul_apply, ← Module.End.mul_apply, ← map_mul, ← map_mul, firstEmb_comm]

def whit2 (ψ : AddChar k Circle) (d : Fin 2 → ℕ) (J : Representation ℂ (Levi k fun a => Fin (d a)) X) :
    Representation ℂ (GL (Fin (d 0)) k) (X ⧸ whitKer ψ d J) where
  toFun g := (whitKer ψ d J).mapQ (whitKer ψ d J) (J (firstEmb d g)) (whitKer_le_comap ψ d J g)
  map_one' := by
    ext v
    simp
  map_mul' a b := by
    ext v
    simp

theorem whit2_mk (ψ : AddChar k Circle) (d : Fin 2 → ℕ) (J : Representation ℂ (Levi k fun a => Fin (d a)) X)
    (g : GL (Fin (d 0)) k) (v : X) :
    whit2 ψ d J g (Submodule.Quotient.mk v) = Submodule.Quotient.mk (J (firstEmb d g) v) := rfl

end

end GlobalTheory.CompanionTheory.BZNuPair

end
