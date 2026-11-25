module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.DatPull
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.IsUnitWitt
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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

@[expose] public section

set_option backward.isDefEq.respectTransparency false


noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.Pb

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

def AW (_ : Res l K) : Type := Acris l

instance (r : Res l K) : CommRing (AW r) := inferInstanceAs (CommRing (Acris l))

instance (r : Res l K) : Algebra (WittVector l r.k) (AW r) := r.w.toAlgebra

instance (r : Res l K) : Module (per l K).A (AW r) := inferInstanceAs (Module (Acris l) (Acris l))

instance (r : Res l K) : SMulCommClass (WittVector l r.k) (per l K).A (AW r) :=
  ⟨fun w a x => mul_left_comm (r.w w) (show Acris l from a) (show Acris l from x)⟩

def ofA (r : Res l K) (a : (per l K).A) : AW r := a

abbrev LW (r : Res l K) (M : Model l K) (j : ℕ) : Type 1 := (Wc.HS l (B.schFn M.p) r.ρ j).lim

abbrev HL (M : Model l K) (j : ℕ) : Type 1 := (M.HA true).N j

def phiL (M : Model l K) (j : ℕ) : HL M j →+ HL M j := (M.phiH j).lim.toAddMonoidHom

def galL (M : Model l K) (j : ℕ) (g : K.fixingSubgroup) : HL M j →+ HL M j := (M.HA true).act j g

abbrev AL (r : Res l K) (M : Model l K) (j : ℕ) : Type 1 := AW r ⊗[WittVector l r.k] LW r M j

structure Fac (r : Res l K) (N : ℕ) where
  e : Model l K → ℕ → ℕ
  α : ∀ M j, HL M j →+ AL r M j
  β : ∀ M j, AL r M j →ₗ[(per l K).A] HL M j
  galT : ∀ M j, K.fixingSubgroup → AL r M j →+ AL r M j
  galT_tmul : ∀ M, M.Sm → ∀ j g (a : (per l K).A) (y : LW r M j), galT M j g (ofA r a ⊗ₜ y) = ofA r ((per l K).σA g a) ⊗ₜ y
  lin : ∀ M, M.Sm → ∀ j (a : (per l K).A) (x : HL M j), α M j (a • x) = ((per l K).φ^[N] a) • α M j x
  fac : ∀ M, M.Sm → ∀ j (x : HL M j), β M j (α M j x) = ((l : (per l K).A) ^ e M j) • (phiL M j)^[N] x
  gal : ∀ M, M.Sm → ∀ j g (x : HL M j), α M j (galL M j g x) = galT M j g (α M j x)
  galβ : ∀ M, M.Sm → ∀ j g (y : LW r M j), galL M j g (β M j ((1 : AW r) ⊗ₜ y)) = β M j ((1 : AW r) ⊗ₜ y)

def perCOf (r : Res l K) (C₀ : Type) [CommRing C₀] (c : Acris l →+* C₀) (ι : C₀ →+* (per l K).B)
    (k : Wc.K₀ l r.k →+* C₀) : PerC (per l K) where
  C := C₀
  K₀ := Wc.K₀ l r.k
  c := c
  ι := ι
  k := k

end CrystallineSemistableComparison.Pb
