module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.ResCoeff
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AbsPhi
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.GalOCOkToOC
public import Mathlib.RingTheory.SimpleRing.Principal
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
import Mathlib.RingTheory.RegularLocalRing.Defs
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

open CategoryTheory Limits AlgebraicGeometry TensorProduct
open GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison

structure Res (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) : Type 1 where
  k : Type
  [field : Field k]
  [char : CharP k l]
  [perf : PerfectRing k l]
  ρ : OK l K →+* k
  surj : Function.Surjective ρ
  s : k →+* Ob l
  hs : ∀ x : OK l K, ‖((PreTilt.untilt (s (ρ x)) - okToOC l K x : OC l) : ℂ_[l])‖ < 1

attribute [instance] Res.field Res.char Res.perf

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

def Res.w (r : Res l K) : WittVector l r.k →+* Acris l := (algebraMap (Ainf l) (Acris l)).comp (WittVector.map r.s)

theorem isUnit_witt {k C : Type} [Field k] [CharP k l] [PerfectRing k l] [CommRing C] (g : WittVector l k →+* C) (h : IsUnit (l : C))
    (y : nonZeroDivisors (WittVector l k)) : IsUnit (g y) := by
  obtain ⟨m, b, e⟩ := WittVector.exists_eq_pow_p_mul' y.1 (nonZeroDivisors.coe_ne_zero y)
  rw [e, map_mul, map_pow, map_natCast]
  exact (h.pow m).mul (b.isUnit.map g)

def k₀Lift {k C : Type} [Field k] [CharP k l] [PerfectRing k l] [CommRing C] (g : WittVector l k →+* C) (h : IsUnit (l : C)) :
    Wc.K₀ l k →+* C := IsLocalization.lift (isUnit_witt g h)

def Res.iso (r : Res l K) : Iso l K (Wc.K₀ l r.k) where
  D M j := Wc.D l (B.schFn M.p) r.ρ j

def ResEx : Prop := ∀ (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) [FiniteDimensional ℚ_[l] K],
  Nonempty (Res l K)

end CrystallineSemistableComparison
