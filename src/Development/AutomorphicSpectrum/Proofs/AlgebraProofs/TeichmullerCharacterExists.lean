module

import Development.WeilBound.CoreStatements.HodgeTatePoints.RbFund

public import Mathlib.Basic.NNReal.Defs
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Mathlib.NumberTheory.MulChar.Basic
public import Mathlib.RingTheory.Valuation.Integers
import Mathlib.Tactic.Linter.Style
public import Mathlib.FieldTheory.Finite.GaloisField
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Basic
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots

@[expose] public section

open scoped Matrix TensorProduct
open Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem fund_ex_relay : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∃ σ : MulChar F R, (∀ a b, σ (a + b) - σ a - σ b ∈ Ideal.span {(p : R)}) :=
  @_root_.PositivityTheory.HtPt.Rb.fund_ex

end GlobalTheory.CompanionTheory.Ar.GR
