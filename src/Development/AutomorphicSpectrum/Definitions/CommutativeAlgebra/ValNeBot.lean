module

public import Mathlib.Data.EReal.Basic
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation

@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.Ref

open NumberField IsDedekindDomain

noncomputable section

variable {K : Type} [Field K] [NumberField K]

def vl (la : HeightOneSpectrum (𝓞 K)) (x : K) : ℤ := -WithZero.log (la.valuation K x)

structure PtSys (K : Type) [Field K] [NumberField K] (R : Type) [CommRing R] [Algebra K R] where

  Pt : HeightOneSpectrum (𝓞 K) → Type

  val : ∀ {la}, Pt la → R → EReal
  val_zero : ∀ {la} (y : Pt la), val y 0 = ⊤
  val_ne_bot : ∀ {la} (y : Pt la) f, val y f ≠ ⊥
  val_add : ∀ {la} (y : Pt la) f g, min (val y f) (val y g) ≤ val y (f + g)
  val_smul : ∀ {la} (y : Pt la) (a : K) f, a ≠ 0 → val y (a • f) = (((vl la a : ℤ) : ℝ) : EReal) + val y f
  val_mul : ∀ {la} (y : Pt la) f g, val y (f * g) = val y f + val y g

namespace PtSys

variable {R : Type} [CommRing R] [Algebra K R] (S : PtSys K R)

end PtSys

end

end GlobalTheory.CompanionTheory.Ar.Ref
