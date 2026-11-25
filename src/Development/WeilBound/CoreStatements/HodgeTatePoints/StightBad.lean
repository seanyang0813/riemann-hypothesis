module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub
public import Mathlib.Basic.NNReal.Defs
public import Mathlib.RingTheory.Valuation.Integers
public import Development.WeilBound.CoreStatements.HodgeTatePoints.IsAbFactorTens
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Mathlib.GroupTheory.FiniteAbelian.Duality
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes
public import Mathlib.LinearAlgebra.Dimension.OrzechProperty
public import ReciprocityTheory.DualLattices.CharTableIsUnit
public import ReciprocityTheory.DualLattices.PowMemCarrier
public import Mathlib.FieldTheory.Finite.Basic
public import Development.WeilBound.CoreStatements.HodgeTatePoints.ReBase
public import Development.WeilBound.CoreStatements.HodgeTatePoints.ReTens
public import Development.AutomorphicSpectrum.Statements.AlgebraStatements.HodgeTateDatumStatement
public import Development.AutomorphicSpectrum.Statements.AlgebraStatements.OrdinaryCurveStatement
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsAddEquiv
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductHopfOrdersStatement
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHopfOrderStatement
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
import ReciprocityTheory.DualLattices.CotangentSurjective
import ReciprocityTheory.DualLattices.TensorSpan
import Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import ReciprocityTheory.DualLattices.SqIdeal
import ReciprocityTheory.DualLattices.VIntCastLtOneOfDvd
import Mathlib.RingTheory.PiTensorProduct

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbFactorProdRetract, Development.WeilBound.CoreStatements.HodgeTatePoints.RiEasy, Development.WeilBound.CoreStatements.HodgeTatePoints.HasLenOfSurj, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrdersOfZmodPExtremes, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductTightHopfOrders, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductTightHopfOrdersStatement, Development.WeilBound.CoreStatements.HodgeTatePoints.StightBad

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbFactorProdRetract =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbFactorProdRetract", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.RingTheory.Valuation.Integers\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.IsAbFactorTens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\nimport ReciprocityTheory.DualLattices.CotangentSurjective\nimport ReciprocityTheory.DualLattices.TensorSpan\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem abFactor_prod_retract : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → (∀ (N₁ N₂ : Type) [AddCommGroup N₁] [AddCommGroup N₂] (M₁ : Submodule R (N₁ → C)) (M₂ : Submodule R (N₂ → C)), IsAbFactor p M₁ → IsAbFactor p M₂ → IsAbFactor p (tens M₁ M₂)) ∧ ∀ (N₁ N₂ : Type) [AddCommGroup N₁] [AddCommGroup N₂] (M : Submodule R (N₂ → C)) (i : N₁ →+ N₂) (π : N₂ →+ N₁), (∀ x, π (i x) = x) → (∀ g ∈ M, (fun x => g (i (π x))) ∈ M) → IsAbFactor p M → IsAbFactor p (M.map (LinearMap.funLeft R C (i : N₁ → N₂))) :=
  @PositivityTheory.HtPt.Rg.abfac_prod

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbFactorProdRetract =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RiEasy =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.RiEasy", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.GroupTheory.FiniteAbelian.Duality\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

noncomputable section

namespace PositivityTheory.HtPt.Ri

section
variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C]

lemma mem_pInt (p : ℕ) (z : C) : z ∈ pInt (C := C) R p ↔ ∃ r : R, algebraMap R C (r * p) = z := by
  unfold GlobalTheory.CompanionTheory.Ar.GR.pInt
  rw [Submodule.mem_span_singleton]
  simp only [Algebra.smul_def, map_mul, map_natCast]

lemma alg_mem_pInt (p : ℕ) {r : R} (h : r ∈ Ideal.span {(p : R)}) :
    algebraMap R C r ∈ pInt (C := C) R p := by
  obtain ⟨a, rfl⟩ := Ideal.mem_span_singleton'.1 h
  exact (PositivityTheory.HtPt.Ri.mem_pInt p _).2 ⟨a, rfl⟩

lemma add_nsmul_mem {p : ℕ} {N : Type} [AddCommGroup N] {g : N → C}
    (hg : g ∈ addFun (C := C) R p N) (y : N) (n : ℕ) :
    g (n • y) - n * g y ∈ pInt (C := C) R p := by
  induction n with
  | zero => simpa using PositivityTheory.HtPt.Re.addFun_zero hg
  | succ n ih =>
    have h := (show ∀ x y : N, g (x + y) - g x - g y ∈ GlobalTheory.CompanionTheory.Ar.GR.pInt (C := C) R p
      from hg) (n • y) y
    have hsum := Submodule.add_mem _ h ih
    rw [succ_nsmul]
    convert hsum using 1
    push_cast
    ring

lemma val_add_mem (p : ℕ) [NeZero p] (a b : ZMod p) :
    (((a + b).val : R) - (a.val : R) - (b.val : R)) ∈ Ideal.span {(p : R)} := by
  rw [Ideal.mem_span_singleton']
  refine ⟨-(((a.val + b.val) / p : ℕ) : R), ?_⟩
  have h := Nat.mod_add_div (a.val + b.val) p
  have h' : (((a.val + b.val) % p : ℕ) : R) + (p : R) * (((a.val + b.val) / p : ℕ) : R)
      = (a.val : R) + b.val := by
    rw [← Nat.cast_mul, ← Nat.cast_add, ← Nat.cast_add, h]
  rw [ZMod.val_add]
  linear_combination -h'

end

theorem card_addChar (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (N : Type)
    [AddCommGroup N] [Fintype N] : Nat.card (AddChar N C) = Fintype.card N := by
  have hne : Monoid.exponent (Multiplicative N) ≠ 0 := Monoid.exponent_ne_zero_of_finite
  haveI : NeZero (Monoid.exponent (Multiplicative N)) := ⟨hne⟩
  haveI : NeZero (Monoid.exponent (Multiplicative N) : C) := ⟨Nat.cast_ne_zero.2 hne⟩
  rw [Nat.card_congr (AddChar.toMonoidHomEquiv.trans MonoidHom.toHomUnitsMulEquiv.toEquiv),
    CommGroup.card_monoidHom_of_hasEnoughRootsOfUnity, Nat.card_congr Multiplicative.toAdd,
    Nat.card_eq_fintype_card]

end PositivityTheory.HtPt.Ri
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RiEasy =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.HasLenOfSurj =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.HasLenOfSurj", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RiEasy\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Dimension.OrzechProperty\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.DualLattices.CharTableIsUnit\npublic import ReciprocityTheory.DualLattices.PowMemCarrier\nimport ReciprocityTheory.DualLattices.SqIdeal\nimport ReciprocityTheory.DualLattices.VIntCastLtOneOfDvd\npublic import Mathlib.FieldTheory.Finite.Basic\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

noncomputable section

namespace PositivityTheory.HtPt.Ri

section
variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C] {v : Valuation C NNReal}

lemma hasLen_of_surj {M : Type} [AddCommGroup M] [Module R M] (φ : R →ₗ[R] M)
    (hφ : Function.Surjective φ) (c : R) (hk : LinearMap.ker φ = Ideal.span {c}) :
    HasLen v R M (v (algebraMap R C c)) :=
  ⟨1, fun _ => c, ⟨(φ.quotKerEquivOfSurjective hφ).symm.trans
    ((Submodule.quotEquivOfEq _ _ hk).trans (LinearEquiv.funUnique (Fin 1) R _).symm)⟩, by simp⟩

lemma mem_span_alg (hv : v.Integers R) {r c : R}
    (h : algebraMap R C r ∈ Submodule.span R {algebraMap R C c}) : r ∈ Ideal.span {c} := by
  obtain ⟨s, hs⟩ := Submodule.mem_span_singleton.1 h
  refine Ideal.mem_span_singleton'.2 ⟨s, hv.hom_inj ?_⟩
  rw [map_mul, ← hs, Algebra.smul_def]

lemma teich_mod_p (p : ℕ) [hp : Fact p.Prime] (hv : v.Integers R) {t : C} (ht : t ^ p = t) (n : ℕ)
    (h : v (t - n) < 1) : t - n ∈ pInt (C := C) R p := by
  obtain ⟨μ, hμ⟩ := hv.exists_of_le_one h.le
  have ht' : (μ + n) ^ p = μ + n := hv.hom_inj (by
    rw [map_pow, map_add (f := _), hμ, map_natCast, sub_add_cancel, ht])
  obtain ⟨r, hr⟩ := exists_add_pow_prime_eq hp.out μ (n : R)
  obtain ⟨k, hk⟩ : (p : ℤ) ∣ (n : ℤ) ^ p - n := by
    rw [← ZMod.intCast_zmod_eq_zero_iff_dvd]; push_cast; rw [ZMod.pow_card, sub_self]
  have hk' : (n : R) ^ p - n = p * (k : R) := by exact_mod_cast congrArg (Int.cast : ℤ → R) hk
  have hu : IsUnit (1 - μ ^ (p - 1)) := by
    rw [hv.isUnit_iff_valuation_eq_one, map_sub, map_one]
    apply v.map_one_sub_of_lt
    rw [map_pow, map_pow, hμ]
    exact pow_lt_one₀ (by positivity) h (by have := hp.out.two_le; omega)
  have e : μ ^ p = μ * μ ^ (p - 1) := by
    rw [← pow_succ']; congr 1; have := hp.out.two_le; omega
  rw [← hμ]
  apply alg_mem_pInt
  rw [← Ideal.mul_unit_mem_iff_mem _ hu]
  refine Ideal.mem_span_singleton'.2 ⟨k + μ * n * r, ?_⟩
  linear_combination ht' - hr - hk' - e

end

theorem tight_of (p : ℕ) [hp : Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C]
    (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C] (hv : v.Integers R)
    (hpv : v (p : C) < 1) (AA : HopfOrder (C := C) R (ZMod p))
    (hg : ∃ g ∈ AA.carrier, g 0 = 0 ∧ g 1 = p) :
    IsTight v p AA.carrier ∧ ∀ K, GenAF p AA.carrier K := by
  obtain ⟨x, ω, δ, hx, hx0, hωp, hωc, hxω, -, hδ, hA, hI, hI2, hcol⟩ := u3 p C v R hv hpv AA
  have hp2 := hp.out.two_le
  have : Fact (1 < p) := ⟨hp.out.one_lt⟩
  obtain ⟨r1, hr1⟩ := AA.le_int hx 1
  have hxI : x ∈ augIdeal AA.carrier := (mem_aug _ _).2 ⟨hx, hx0⟩
  have hxl : ∀ a : ZMod p, x a - algebraMap R C r1 * (a.val : C) ∈ pInt (C := C) R p := by
    intro a
    have := Submodule.smul_mem _ r1 (teich_mod_p p hv (hωp a) a.val (hωc a))
    convert this using 1
    rw [hxω a, Algebra.smul_def, hr1]; ring
  have hl : (fun a : ZMod p => (a.val : C)) ∈ linFun (C := C) R p (ZMod p) := by
    refine ⟨fun a => ⟨a.val, map_natCast _ _⟩, fun a b => ?_⟩
    have := alg_mem_pInt (C := C) p (val_add_mem (R := R) p a b)
    simpa only [map_sub, map_natCast] using this
  have hxadd : x ∈ addFun (C := C) R p (ZMod p) := by
    intro a b
    have := Submodule.add_mem _
      (Submodule.sub_mem _ (Submodule.sub_mem _ (hxl (a + b)) (hxl a)) (hxl b))
      (Submodule.smul_mem _ r1 (hl.2 a b))
    convert this using 1
    rw [Algebra.smul_def]; ring
  have hev : ∀ f ∈ augIdeal AA.carrier, f 1 ∈ Submodule.span R {algebraMap R C r1} := by
    have : augIdeal AA.carrier ≤ (Submodule.span R {algebraMap R C r1}).comap
        (LinearMap.proj (R := R) (φ := fun _ : ZMod p => C) 1) := by
      rw [hI, Submodule.span_le]
      rintro _ ⟨j, hj, -, rfl⟩
      refine Submodule.mem_span_singleton.2 ⟨r1 ^ (j - 1), ?_⟩
      simp only [LinearMap.proj_apply, Pi.pow_apply, Algebra.smul_def, map_pow, hr1]
      rw [← pow_succ]; congr 1; omega
    exact fun f hf => this hf
  have hpr : pInt (C := C) R p ≤ Submodule.span R {algebraMap R C r1} := by
    obtain ⟨g, hg, hg0, hg1⟩ := hg
    rw [pInt, Submodule.span_le, Set.singleton_subset_iff, ← hg1]
    exact hev g ((mem_aug _ _).2 ⟨hg, hg0⟩)
  constructor
  · refine ⟨v (algebraMap R C r1), _, v (algebraMap R C δ), ?_, hcol, ?_, ?_, ?_⟩
    · refine hasLen_of_surj ((Submodule.mkQ _) ∘ₗ LinearMap.toSpanSingleton R _ ⟨_, hl⟩) ?_ r1 ?_
      · intro y
        obtain ⟨⟨f, hf⟩, rfl⟩ := Submodule.mkQ_surjective _ y
        obtain ⟨r, hr⟩ := hf.1 1
        refine ⟨r, Eq.symm ((Submodule.Quotient.eq _).2 ?_)⟩
        refine Submodule.mem_sup_right (T := pFun R p (ZMod p)) fun a _ => ?_
        have := add_nsmul_mem hf.2 1 a.val
        rw [nsmul_one, ZMod.natCast_zmod_val, ← hr, mul_comm] at this
        simpa [Algebra.smul_def] using this
      · ext r
        simp only [LinearMap.mem_ker, LinearMap.comp_apply, LinearMap.toSpanSingleton_apply,
          Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, Submodule.mem_comap,
          Submodule.subtype_apply, Submodule.coe_smul]
        constructor
        · intro h
          obtain ⟨g, hg, k, hk, e⟩ := Submodule.mem_sup.1 h
          have e1 : g 1 + k 1 = algebraMap R C r := by
            have := congrFun e 1
            simpa only [Pi.add_apply, Pi.smul_apply, Algebra.smul_def, ZMod.val_one, Nat.cast_one,
              mul_one] using this
          apply mem_span_alg hv
          obtain ⟨r0, hr0⟩ := AA.le_int hg.1 0
          have h1 := hev (g - r0 • 1) ((mem_aug _ _).2
            ⟨Submodule.sub_mem _ hg.1 (Submodule.smul_mem _ _ AA.one_mem), by
              simp [Algebra.smul_def, hr0]⟩)
          have h2 := Submodule.add_mem _ (Submodule.add_mem _ h1 (hpr (PositivityTheory.HtPt.Re.addFun_zero hg.2)))
            (hpr (hk 1 trivial))
          convert h2 using 1
          simp [← e1, Algebra.smul_def, hr0]
        · intro h
          obtain ⟨s, rfl⟩ := Ideal.mem_span_singleton'.1 h
          rw [mul_smul]
          refine Submodule.smul_mem _ _ (Submodule.mem_sup.2 ⟨x, ⟨hx, hxadd⟩,
            (r1 • fun a : ZMod p => (a.val : C)) - x, fun a _ => ?_, by abel⟩)
          have := Submodule.neg_mem _ (hxl a)
          simpa [Algebra.smul_def] using this
    · have htop : ⊤ ≤ Submodule.span C (Set.range fun j : Fin p => x ^ (j : ℕ)) := by
        obtain ⟨B, hB, hAB⟩ := AA.lat
        intro u _
        have : u = ∑ j, (B⁻¹ *ᵥ u) j • fun i => B i j := by
          conv_lhs => rw [← Matrix.one_mulVec u, ← Matrix.mul_nonsing_inv B hB,
            ← Matrix.mulVec_mulVec]
          funext i
          simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, mul_comm]
          rfl
        rw [this]
        refine Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ ?_
        apply Submodule.span_subset_span R C
        rw [← hA, hAB]
        exact Submodule.subset_span ⟨j, rfl⟩
      let b := basisOfTopLeSpanOfCardEqFinrank _ htop (by simp)
      have hb : ∀ j : Fin p, b j = x ^ (j : ℕ) := fun j => by simp [b]
      let φ : (ZMod p → C) →ₗ[R] C := (b.coord ⟨1, by omega⟩).restrictScalars R
      have hφ1 : φ x = 1 := by
        have := hb ⟨1, by omega⟩
        rw [pow_one] at this
        simp [φ, ← this]
      have hφ2 : ∀ j, 2 ≤ j → j < p → φ (x ^ j) = 0 := by
        intro j h1 h2
        have := hb ⟨j, h2⟩
        simp only [φ, LinearMap.restrictScalars_apply]
        rw [← this, Module.Basis.coord_apply, Module.Basis.repr_self, Finsupp.single_eq_of_ne]
        intro h
        have := congrArg Fin.val h
        simp at this; omega
      have hδx : (fun a => algebraMap R C δ * x a) = δ • x := by
        funext a; simp [Algebra.smul_def]
      refine hasLen_of_surj ((Submodule.mkQ _) ∘ₗ LinearMap.toSpanSingleton R _ ⟨_, hxI⟩) ?_ δ ?_
      · intro y
        obtain ⟨⟨f, hf⟩, rfl⟩ := Submodule.mkQ_surjective _ y
        have hle : augIdeal AA.carrier ≤
            Submodule.span R {x} ⊔ sqIdeal (augIdeal AA.carrier) := by
          rw [hI2, hI, Submodule.span_le]
          rintro _ ⟨j, hj, hj', rfl⟩
          by_cases h1 : j = 1
          · rw [h1, pow_one]
            exact Submodule.mem_sup_left (Submodule.mem_span_singleton_self x)
          · exact Submodule.mem_sup_right
              (Submodule.subset_span (Or.inr ⟨j, by omega, hj', rfl⟩))
        obtain ⟨y, hy, z, hz, e⟩ := Submodule.mem_sup.1 (hle hf)
        obtain ⟨r, rfl⟩ := Submodule.mem_span_singleton.1 hy
        refine ⟨r, Eq.symm ((Submodule.Quotient.eq _).2 ?_)⟩
        change f - r • x ∈ sqIdeal (augIdeal AA.carrier)
        rw [← e, add_sub_cancel_left]; exact hz
      · ext r
        simp only [LinearMap.mem_ker, LinearMap.comp_apply, LinearMap.toSpanSingleton_apply,
          Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, Submodule.mem_comap,
          Submodule.subtype_apply, Submodule.coe_smul]
        constructor
        · intro h
          have hle : sqIdeal (augIdeal AA.carrier) ≤
              (Submodule.span R {algebraMap R C δ}).comap φ := by
            rw [hI2, Submodule.span_le]
            rintro _ (rfl | ⟨j, h1, h2, rfl⟩)
            · rw [hδx]
              change φ (δ • x) ∈ Submodule.span R {algebraMap R C δ}
              rw [map_smul, hφ1, Algebra.smul_def, mul_one]
              exact Submodule.mem_span_singleton_self _
            · change φ (x ^ j) ∈ Submodule.span R {algebraMap R C δ}
              rw [hφ2 j h1 h2]; exact Submodule.zero_mem _
          have := hle h
          rw [Submodule.mem_comap, map_smul, hφ1, Algebra.smul_def, mul_one] at this
          exact mem_span_alg hv this
        · intro h
          obtain ⟨s, rfl⟩ := Ideal.mem_span_singleton'.1 h
          rw [mul_smul, hI2, ← hδx]
          exact Submodule.smul_mem _ _ (Submodule.subset_span (Or.inl rfl))
    · rw [hr1, ← pow_mul, ZMod.card, Nat.div_mul_cancel (Nat.even_mul_pred_self p).two_dvd]
    · rw [hδ, ← pow_mul, ← pow_mul, ZMod.card,
        Nat.div_mul_cancel (Nat.even_mul_pred_self p).two_dvd, mul_comm]
  · intro K g hg
    by_cases hK : ∀ k ∈ K, k = 0
    · have hxK : x ∈ afFun p (invFun AA.carrier K) :=
        ⟨⟨hx, fun a k hk => by rw [hK k hk, add_zero]⟩, hxadd⟩
      have hg1 := hg.1
      rw [hA] at hg1
      refine (Submodule.span_le.2 ?_) hg1
      rintro _ ⟨j, rfl⟩
      exact Subalgebra.pow_mem _ (Algebra.subset_adjoin hxK) _
    · push Not at hK
      obtain ⟨k, hk, hk0⟩ := hK
      obtain ⟨r, hr⟩ := AA.le_int hg.1 0
      have : g = algebraMap R (ZMod p → C) r := by
        funext a
        have ha : a ∈ K := by
          have := K.nsmul_mem hk (a * k⁻¹).val
          rwa [nsmul_eq_mul, ZMod.natCast_zmod_val, inv_mul_cancel_right₀ hk0] at this
        have := hg.2 0 a ha
        rw [zero_add] at this
        rw [this, ← hr]; rfl
      rw [this]
      exact Subalgebra.algebraMap_mem _ r

theorem inh_af : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → (∃ AA : HopfOrder (C := C) R (ZMod p), AA.carrier = intFun R (ZMod p) ∧ FStable (ZMod p) AA.carrier ∧ IsTight v p AA.carrier ∧ ∀ K, GenAF p AA.carrier K) ∧ (∃ AA : HopfOrder (C := C) R (ZMod p), AA.carrier = Submodule.span R (Set.range fun (ψ : AddChar (ZMod p) C) (x : ZMod p) => ψ x) ∧ AA.carrier ≠ intFun R (ZMod p) ∧ FStable (ZMod p) AA.carrier ∧ IsTight v p AA.carrier ∧ ∀ K, GenAF p AA.carrier K) := by
  intro p hp C _ _ _ v R _ _ hv hpv
  have : Fact (1 < p) := ⟨hp.out.one_lt⟩
  constructor
  · have hc : (constOrder (C := C) (R := R) (N := ZMod p)).carrier = intFun R (ZMod p) := by
      refine le_antisymm constOrder.le_int fun f hf => ?_
      choose r hr using hf
      have : f = ∑ a, r a • (Pi.single a (1 : C) : ZMod p → C) := by
        funext y; simp [Finset.sum_apply, Pi.single_apply, Algebra.smul_def, hr]
      rw [this]
      exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)
    refine ⟨constOrder, hc, ?_, tight_of p C v R hv hpv _ ⟨Pi.single 1 (p : C), ?_, by simp, by simp⟩⟩
    · rw [hc]; exact fun a g hg y => hg _
    · rw [hc]
      intro y
      by_cases hy : y = 1
      · exact ⟨p, by simp [hy]⟩
      · exact ⟨0, by simp [hy]⟩
  · have hcard := card_addChar C (ZMod p)
    have : Finite (AddChar (ZMod p) C) :=
      Nat.finite_of_card_ne_zero (by rw [hcard]; exact Fintype.card_ne_zero)
    let e : ZMod p ≃ AddChar (ZMod p) C :=
      (Finite.card_eq.1 (hcard.trans Nat.card_eq_fintype_card.symm)).some.symm
    have hc : (multOrder' v hv e).carrier =
        Submodule.span R (Set.range fun (ψ : AddChar (ZMod p) C) (x : ZMod p) => ψ x) := by
      change Submodule.span R _ = _
      rw [← e.surjective.range_comp fun (ψ : AddChar (ZMod p) C) (x : ZMod p) => ψ x]
      rfl
    have hmem : ∀ ψ : AddChar (ZMod p) C, (fun x => ψ x) ∈ (multOrder' v hv e).carrier :=
      fun ψ => hc ▸ Submodule.subset_span ⟨ψ, rfl⟩
    have hpow : ∀ ψ : AddChar (ZMod p) C, ψ 1 ^ p = 1 := fun ψ => by
      rw [← AddChar.map_nsmul_eq_pow, nsmul_one, ZMod.natCast_self, AddChar.map_zero_eq_one]
    refine ⟨multOrder' v hv e, hc, ?_, ?_, tight_of p C v R hv hpv _ ?_⟩
    · intro h
      have key : ∀ g ∈ (multOrder' v hv e).carrier, v (g 1 - g 0) < 1 := by
        intro g hg
        rw [hc] at hg
        induction hg using Submodule.span_induction with
        | mem g hg =>
          obtain ⟨ψ, rfl⟩ := hg
          simp only [AddChar.map_zero_eq_one]
          by_cases h1 : ψ 1 = 1
          · simp [h1]
          · have hz : IsPrimitiveRoot (ψ 1) p := by
              have h2 := IsPrimitiveRoot.orderOf (ψ 1)
              rwa [orderOf_eq_prime (hpow ψ) h1] at h2
            have := U3.val_prim_root (v := v) hz
            rw [← this] at hpv
            exact lt_of_not_ge fun hh => absurd hpv (not_lt.2 (one_le_pow₀ hh))
        | zero => simp
        | add f g _ _ hf hg =>
          have : (f + g) 1 - (f + g) 0 = (f 1 - f 0) + (g 1 - g 0) := by
            simp only [Pi.add_apply]; ring
          rw [this]; exact v.map_add_lt hf hg
        | smul r f _ hf =>
          have : (r • f) 1 - (r • f) 0 = algebraMap R C r * (f 1 - f 0) := by
            simp only [Pi.smul_apply, Algebra.smul_def]; ring
          rw [this, map_mul]
          exact lt_of_le_of_lt (mul_le_of_le_one_left' (hv.map_le_one r)) hf
      have := key (Pi.single 1 1) (by
        rw [h]
        intro y
        by_cases hy : y = 1
        · exact ⟨1, by simp [hy]⟩
        · exact ⟨0, by simp [hy]⟩)
      simp at this
    · intro a g hg
      rw [hc] at hg ⊢
      have : Submodule.span R (Set.range fun (ψ : AddChar (ZMod p) C) (x : ZMod p) => ψ x) ≤
          (Submodule.span R (Set.range fun (ψ : AddChar (ZMod p) C) (x : ZMod p) => ψ x)).comap
            (LinearMap.funLeft R C fun x : ZMod p => a • x) := by
        rw [Submodule.span_le]
        rintro _ ⟨ψ, rfl⟩
        exact Submodule.subset_span ⟨ψ.mulShift a, rfl⟩
      exact this hg
    · have : Nontrivial (AddChar (ZMod p) C) := e.symm.nontrivial
      obtain ⟨ψ, hψ⟩ := exists_ne (1 : AddChar (ZMod p) C)
      have h1 : ψ 1 ≠ 1 := by
        intro h
        apply hψ
        ext y
        rw [← ZMod.natCast_zmod_val y, ← nsmul_one, AddChar.map_nsmul_eq_pow, h]
        simp
      refine ⟨∑ i ∈ Finset.range p, (1 - fun x => (ψ ^ i) x), Submodule.sum_mem _ fun i _ =>
        Submodule.sub_mem _ (multOrder' v hv e).one_mem (hmem _), by simp [Finset.sum_apply], ?_⟩
      have e3 := geom_sum_mul (ψ 1) p
      rw [hpow, sub_self, mul_eq_zero] at e3
      simp [Finset.sum_apply, Finset.sum_sub_distrib, e3.resolve_right (sub_ne_zero.2 h1)]

end PositivityTheory.HtPt.Ri
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.HasLenOfSurj =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrdersOfZmodPExtremes =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrdersOfZmodPExtremes", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.HasLenOfSurj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

alias _root_.GlobalTheory.CompanionTheory.Relay.hopf_orders_of_zmod_p_extremes := _root_.PositivityTheory.HtPt.Ri.inh_af
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrdersOfZmodPExtremes =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductTightHopfOrders =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductTightHopfOrders", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.ReBase\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.ReTens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.CompanionTheory.Relay.tensor_product_tight_hopf_orders : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (N₁ : Type) [AddCommGroup N₁] [Fintype N₁] [DecidableEq N₁], ∀ (N₂ : Type) [AddCommGroup N₂] [Fintype N₂] [DecidableEq N₂], ∀ (A₁ : HopfOrder (C := C) R N₁) (A₂ : HopfOrder (C := C) R N₂), (∀ x : N₁, p • x = 0) → (∀ x : N₂, p • x = 0) → IsTight v p A₁.carrier → IsTight v p A₂.carrier → IsTight v p (tens A₁.carrier A₂.carrier) := by
  intro p _ C _ _ _ v R _ _ hv hp N₁ _ _ _ N₂ _ _ _ A₁ A₂ _ _ h1 h2
  unfold IsTight at h1 h2 ⊢
  obtain ⟨a1, c1, o1, hA1, hC1, hO1, e1, f1⟩ := h1
  obtain ⟨a2, c2, o2, hA2, hC2, hO2, e2, f2⟩ := h2
  obtain ⟨AA, hAA, hl, hr, s1, s2, hcol⟩ := PositivityTheory.HtPt.Re.tens_hopf p C v R hv hp N₁ N₂ A₁ A₂
  rw [← hAA]
  have st1 : ∀ g ∈ AA.carrier, (fun x : N₁ × N₂ =>
      g ((AddMonoidHom.inl N₁ N₂) ((AddMonoidHom.fst N₁ N₂) x))) ∈ AA.carrier := by
    intro g hg
    simpa using s1 g hg
  have st2 : ∀ g ∈ AA.carrier, (fun x : N₁ × N₂ =>
      g ((AddMonoidHom.inr N₁ N₂) ((AddMonoidHom.snd N₁ N₂) x))) ∈ AA.carrier := by
    intro g hg
    simpa using s2 g hg
  have hAF := PositivityTheory.HtPt.Re.ret_af p C v R hv hp (N₁ × N₂) AA N₁ N₂ (AddMonoidHom.inl N₁ N₂)
    (AddMonoidHom.fst N₁ N₂) (AddMonoidHom.inr N₁ N₂) (AddMonoidHom.snd N₁ N₂)
    (fun y => by simp) (fun y => by simp) (fun x => by simp) (fun y => by simp) (fun y => by simp)
    st1 st2 a1 a2 (by rw [hl]; exact hA1) (by rw [hr]; exact hA2)
  have hOm := PositivityTheory.HtPt.Re.ret_om hv AA (AddMonoidHom.inl N₁ N₂)
    (AddMonoidHom.fst N₁ N₂) (AddMonoidHom.inr N₁ N₂) (AddMonoidHom.snd N₁ N₂)
    (fun y => by simp) (fun y => by simp) (fun x => by simp) (fun y => by simp) (fun y => by simp)
    st1 st2 o1 o2 (by rw [hl]; exact hO1) (by rw [hr]; exact hO2)
  refine ⟨a1 * a2, c1 ^ Fintype.card N₂ * c2 ^ Fintype.card N₁, o1 * o2, hAF, hcol c1 c2 hC1 hC2, hOm, ?_, ?_⟩
  · rw [Fintype.card_prod, mul_pow]
    have k1 : a1 ^ (Fintype.card N₁ * Fintype.card N₂ * (p - 1)) =
        (a1 ^ (Fintype.card N₁ * (p - 1))) ^ Fintype.card N₂ := by
      rw [← pow_mul]
      congr 1
      ring
    have k2 : a2 ^ (Fintype.card N₁ * Fintype.card N₂ * (p - 1)) =
        (a2 ^ (Fintype.card N₂ * (p - 1))) ^ Fintype.card N₁ := by
      rw [← pow_mul]
      congr 1
      ring
    rw [k1, k2, e1, e2]
    ring
  · rw [Fintype.card_prod, mul_pow]
    have k1 : o1 ^ (Fintype.card N₁ * Fintype.card N₂) = (o1 ^ Fintype.card N₁) ^ Fintype.card N₂ :=
      pow_mul _ _ _
    have k2 : o2 ^ (Fintype.card N₁ * Fintype.card N₂) = (o2 ^ Fintype.card N₂) ^ Fintype.card N₁ := by
      rw [← pow_mul, _root_.mul_comm (Fintype.card N₂)]
    rw [k1, k2, f1, f2]
    ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductTightHopfOrders =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductTightHopfOrdersStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductTightHopfOrdersStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsTight\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsFinFlatSub\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductTightHopfOrders\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.tensor_product_tight_hopf_orders : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (N₁ : Type) [AddCommGroup N₁] [Fintype N₁] [DecidableEq N₁], ∀ (N₂ : Type) [AddCommGroup N₂] [Fintype N₂] [DecidableEq N₂], ∀ (A₁ : HopfOrder (C := C) R N₁) (A₂ : HopfOrder (C := C) R N₂), (∀ x : N₁, p • x = 0) → (∀ x : N₂, p • x = 0) → IsTight v p A₁.carrier → IsTight v p A₂.carrier → IsTight v p (tens A₁.carrier A₂.carrier) := by
  first | exact @GlobalTheory.CompanionTheory.Relay.tensor_product_tight_hopf_orders
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductTightHopfOrdersStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.StightBad =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.StightBad", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.HodgeTateDatumStatement\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.OrdinaryCurveStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AbFactorProdRetract\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsAddEquiv\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrdersOfZmodPExtremes\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductHopfOrdersStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TensorProductTightHopfOrdersStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TorsionPointsHopfOrderStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.HtPt.Stight.BadRed

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

section Transport

variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C]
  {N N' : Type} [AddCommGroup N] [AddCommGroup N']

def tr (e : N ≃+ N') : (N → C) ≃ₗ[R] (N' → C) where
  toFun f := fun y => f (e.symm y)
  invFun g := fun x => g (e x)
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  left_inv f := by ext x; simp
  right_inv g := by ext y; simp

def trS (M : Submodule R (N → C)) (e : N ≃+ N') : Submodule R (N' → C) :=
  M.map (tr e : (N → C) ≃ₗ[R] (N' → C)).toLinearMap

theorem mem_trS (M : Submodule R (N → C)) (e : N ≃+ N') (g : N' → C) :
    g ∈ trS M e ↔ (fun x => g (e x)) ∈ M := by
  constructor
  · rintro ⟨f, hf, rfl⟩
    simpa [tr] using hf
  · intro h
    exact ⟨_, h, by ext y; simp [tr]⟩

theorem trS_intFun (e : N ≃+ N') : trS (intFun (C := C) R N) e = intFun R N' := by
  ext g
  rw [mem_trS]
  constructor
  · intro h y
    simpa using h (e.symm y)
  · intro h x
    exact h (e x)

theorem trS_addFun (q : ℕ) (e : N ≃+ N') : trS (addFun (C := C) R q N) e = addFun R q N' := by
  ext g
  rw [mem_trS]
  constructor
  · intro h x y
    simpa using h (e.symm x) (e.symm y)
  · intro h x y
    simpa using h (e x) (e y)

theorem trS_pFun (q : ℕ) (e : N ≃+ N') : trS (pFun (C := C) R q N) e = pFun R q N' := by
  ext g
  rw [mem_trS]
  simp only [pFun, Submodule.mem_pi, Set.mem_univ, true_imp_iff]
  constructor
  · intro h y
    simpa using h (e.symm y)
  · intro h x
    exact h (e x)

theorem trS_inf (M M' : Submodule R (N → C)) (e : N ≃+ N') :
    trS (M ⊓ M') e = trS M e ⊓ trS M' e := by
  ext g
  simp only [Submodule.mem_inf, mem_trS]

theorem trS_sup (M M' : Submodule R (N → C)) (e : N ≃+ N') :
    trS (M ⊔ M') e = trS M e ⊔ trS M' e := by
  simp only [trS, Submodule.map_sup]

theorem trS_augIdeal (M : Submodule R (N → C)) (e : N ≃+ N') :
    trS (augIdeal M) e = augIdeal (trS M e) := by
  ext g
  simp only [augIdeal, Submodule.mem_inf, mem_trS, LinearMap.mem_ker, LinearMap.proj_apply,
    map_zero]

theorem trS_sqIdeal (I : Submodule R (N → C)) (e : N ≃+ N') :
    trS (sqIdeal I) e = sqIdeal (trS I e) := by
  simp only [trS, sqIdeal, Submodule.map_span]
  congr 1
  ext h
  constructor
  · rintro ⟨_, ⟨f, hf, f', hf', rfl⟩, rfl⟩
    exact ⟨_, Submodule.mem_map_of_mem hf, _, Submodule.mem_map_of_mem hf', by ext y; simp [tr]⟩
  · rintro ⟨_, ⟨a, ha, rfl⟩, _, ⟨b, hb, rfl⟩, rfl⟩
    exact ⟨a * b, ⟨a, ha, b, hb, rfl⟩, by ext y; simp [tr]⟩

def subquotEquiv {V V' : Type} [AddCommGroup V] [AddCommGroup V'] [Module R V] [Module R V']
    (Φ : V ≃ₗ[R] V') (A B : Submodule R V) (A' B' : Submodule R V')
    (hA : A.map Φ.toLinearMap = A') (hB : B.map Φ.toLinearMap = B') :
    (A ⧸ B.comap A.subtype) ≃ₗ[R] (A' ⧸ B'.comap A'.subtype) := by
  subst hA hB
  refine Submodule.Quotient.equiv _ _ (LinearEquiv.ofSubmodules Φ A _ rfl) ?_
  ext ⟨y, hy⟩
  constructor
  · rintro ⟨⟨x, hx⟩, hxB, h⟩
    have h' : Φ x = y := congrArg Subtype.val h
    exact ⟨x, hxB, h'⟩
  · rintro ⟨x, hxB, rfl⟩
    obtain ⟨x', hx', h'⟩ := hy
    have : x' = x := Φ.injective h'
    subst this
    exact ⟨⟨x', hx'⟩, hxB, rfl⟩

theorem hasLen_of_equiv {v : Valuation C NNReal} {X Y : Type} [AddCommGroup X] [Module R X]
    [AddCommGroup Y] [Module R Y] (E : X ≃ₗ[R] Y) {c : NNReal} (h : HasLen v R X c) :
    HasLen v R Y c := by
  obtain ⟨m, d, ⟨f⟩, hd⟩ := h
  exact ⟨m, d, ⟨E.symm.trans f⟩, hd⟩

variable [Fintype N] [DecidableEq N] [Fintype N'] [DecidableEq N']

theorem trS_cols (B : Matrix N N C) (e : N ≃+ N') :
    trS (Submodule.span R (Set.range fun j x => B x j)) e =
      Submodule.span R (Set.range fun j x => (B.submatrix e.symm e.symm) x j) := by
  simp only [trS, Submodule.map_span]
  congr 1
  ext h
  constructor
  · rintro ⟨_, ⟨j, rfl⟩, rfl⟩
    exact ⟨e j, by ext y; simp [tr]⟩
  · rintro ⟨j, rfl⟩
    exact ⟨_, ⟨e.symm j, rfl⟩, by ext y; simp [tr]⟩

theorem isLat_trS {M : Submodule R (N → C)} (e : N ≃+ N') (h : IsLat R M) :
    IsLat R (trS M e) := by
  obtain ⟨B, hB, rfl⟩ := h
  refine ⟨B.submatrix e.symm e.symm, ?_, trS_cols B e⟩
  rw [show (B.submatrix e.symm e.symm) = B.submatrix e.symm.toEquiv e.symm.toEquiv from rfl,
    Matrix.det_submatrix_equiv_self]
  exact hB

theorem hasColen_trS {v : Valuation C NNReal} {M : Submodule R (N → C)} (e : N ≃+ N') {c : NNReal}
    (h : HasColen R v M c) : HasColen R v (trS M e) c := by
  obtain ⟨B, rfl, hB⟩ := h
  refine ⟨B.submatrix e.symm e.symm, trS_cols B e, ?_⟩
  rw [show (B.submatrix e.symm e.symm) = B.submatrix e.symm.toEquiv e.symm.toEquiv from rfl,
    Matrix.det_submatrix_equiv_self]
  exact hB

theorem isTight_trS {v : Valuation C NNReal} {q : ℕ} {M : Submodule R (N → C)} (e : N ≃+ N')
    (h : IsTight v q M) : IsTight v q (trS M e) := by
  obtain ⟨cA, cN, cO, h1, h2, h3, h4, h5⟩ := h
  have hcard : Fintype.card N = Fintype.card N' := Fintype.card_congr e.toEquiv
  refine ⟨cA, cN, cO, ?_, hasColen_trS e h2, ?_, ?_, ?_⟩
  · refine hasLen_of_equiv (subquotEquiv (tr e) _ _ _ _ ?_ ?_) h1
    · exact (trS_inf _ _ e).trans (by rw [trS_intFun, trS_addFun]; rfl)
    · exact (trS_sup _ _ e).trans (by
        rw [trS_pFun, show afFun q M = M ⊓ addFun R q N from rfl, trS_inf, trS_addFun]; rfl)
  · refine hasLen_of_equiv (subquotEquiv (tr e) _ _ _ _ ?_ ?_) h3
    · exact trS_augIdeal M e
    · exact (trS_sqIdeal _ e).trans (by rw [trS_augIdeal])
  · rw [← hcard]; exact h4
  · rw [← hcard]; exact h5

theorem hopf_trS (AA : HopfOrder (C := C) R N) (e : N ≃+ N') :
    ∃ AA' : HopfOrder (C := C) R N', AA'.carrier = trS AA.carrier e := by
  refine ⟨⟨trS AA.carrier e, isLat_trS e AA.lat, ?_, ?_, ?_, ?_, ?_⟩, rfl⟩
  · rw [← trS_intFun e]
    exact Submodule.map_mono AA.le_int
  · rw [mem_trS]; exact AA.one_mem
  · intro f g hf hg
    rw [mem_trS] at *
    exact AA.mul_mem _ _ hf hg
  · intro f hf
    rw [mem_trS] at hf
    have h := AA.comul _ hf
    have key : ∀ F ∈ tensorSpan R AA.carrier,
        (fun q : N' × N' => F (e.symm q.1, e.symm q.2)) ∈ tensorSpan R (trS AA.carrier e) := by
      intro F hF
      induction hF using Submodule.span_induction with
      | mem F hF =>
        obtain ⟨g, hg, h, hh, rfl⟩ := hF
        refine Submodule.subset_span ⟨fun y => g (e.symm y), ?_, fun y => h (e.symm y), ?_, rfl⟩
        · rw [mem_trS]; simpa using hg
        · rw [mem_trS]; simpa using hh
      | zero => exact Submodule.zero_mem _
      | add F G _ _ hF hG => exact Submodule.add_mem _ hF hG
      | smul c F _ hF => exact Submodule.smul_mem _ c hF
    have := key _ h
    convert this using 1
    ext q
    simp [addPull, LinearMap.funLeft]
  · intro f hf
    rw [mem_trS] at *
    simpa using AA.antipode _ hf

end Transport

section Lattices

variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C]

def charLat (R : Type) [CommRing R] [Algebra R C] (N : Type) [AddCommGroup N] :
    Submodule R (N → C) :=
  Submodule.span R (Set.range fun (ψ : AddChar N C) (x : N) => ψ x)

theorem trS_charLat {N N' : Type} [AddCommGroup N] [AddCommGroup N'] (e : N ≃+ N') :
    trS (charLat (C := C) R N) e = charLat R N' := by
  simp only [trS, charLat, Submodule.map_span]
  congr 1
  ext h
  constructor
  · rintro ⟨_, ⟨ψ, rfl⟩, rfl⟩
    exact ⟨ψ.compAddMonoidHom e.symm.toAddMonoidHom, by ext y; simp [tr]⟩
  · rintro ⟨ψ, rfl⟩
    exact ⟨_, ⟨ψ.compAddMonoidHom e.toAddMonoidHom, rfl⟩, by ext y; simp [tr]⟩

theorem charLat_prod (N₁ N₂ : Type) [AddCommGroup N₁] [AddCommGroup N₂] :
    charLat (C := C) R (N₁ × N₂) = tens (charLat R N₁) (charLat R N₂) := by
  apply le_antisymm
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨ψ, rfl⟩
    refine Submodule.subset_span ⟨_, Submodule.subset_span
      ⟨ψ.compAddMonoidHom (AddMonoidHom.inl N₁ N₂), rfl⟩, _, Submodule.subset_span
      ⟨ψ.compAddMonoidHom (AddMonoidHom.inr N₁ N₂), rfl⟩, ?_⟩
    ext z
    simp only [AddChar.compAddMonoidHom_apply, AddMonoidHom.inl_apply, AddMonoidHom.inr_apply,
      ← AddChar.map_add_eq_mul]
    simp
  · have key : ∀ g ∈ charLat (C := C) R N₁, ∀ h ∈ charLat (C := C) R N₂,
        (fun z : N₁ × N₂ => g z.1 * h z.2) ∈ charLat (C := C) R (N₁ × N₂) := by
      intro g hg h hh
      induction hg using Submodule.span_induction with
      | mem g hg =>
        obtain ⟨ψ₁, rfl⟩ := hg
        induction hh using Submodule.span_induction with
        | mem h hh =>
          obtain ⟨ψ₂, rfl⟩ := hh
          refine Submodule.subset_span ⟨⟨fun z => ψ₁ z.1 * ψ₂ z.2, by simp, ?_⟩, rfl⟩
          intro a b
          simp only [Prod.fst_add, Prod.snd_add, AddChar.map_add_eq_mul]
          ring
        | zero =>
          convert Submodule.zero_mem (charLat (C := C) R (N₁ × N₂)) using 1
          ext z; simp
        | add a b _ _ ha hb =>
          convert Submodule.add_mem _ ha hb using 1
          ext z; simp [mul_add]
        | smul c a _ ha =>
          convert Submodule.smul_mem _ c ha using 1
          ext z; simp [Algebra.smul_def]; ring
      | zero =>
        convert Submodule.zero_mem (charLat (C := C) R (N₁ × N₂)) using 1
        ext z; simp
      | add a b _ _ ha hb =>
        convert Submodule.add_mem _ ha hb using 1
        ext z; simp [add_mul]
      | smul c a _ ha =>
        convert Submodule.smul_mem _ c ha using 1
        ext z; simp [Algebra.smul_def]; ring
    refine Submodule.span_le.2 ?_
    rintro _ ⟨g, hg, h, hh, rfl⟩
    exact key g hg h hh

theorem intFun_prod (N₁ N₂ : Type) [Fintype N₁] [DecidableEq N₁] [Fintype N₂] [DecidableEq N₂] :
    intFun (C := C) R (N₁ × N₂) = tens (intFun R N₁) (intFun R N₂) := by
  apply le_antisymm
  · intro f hf
    choose r hr using hf
    have hδ : ∀ {X : Type} [DecidableEq X] (a : X),
        (fun x => if x = a then (1 : C) else 0) ∈ intFun (C := C) R X := by
      intro X _ a x
      by_cases h : x = a
      · exact ⟨1, by simp [h]⟩
      · exact ⟨0, by simp [h]⟩
    have hf' : f = ∑ z : N₁ × N₂, r z • (fun w : N₁ × N₂ =>
        (if w.1 = z.1 then (1 : C) else 0) * (if w.2 = z.2 then (1 : C) else 0)) := by
      ext w
      rw [Finset.sum_apply, Finset.sum_eq_single w]
      · simp [Algebra.smul_def, hr]
      · intro z _ hz
        have : ¬ (w.1 = z.1 ∧ w.2 = z.2) := fun h => hz (Prod.ext h.1.symm h.2.symm)
        by_cases h1 : w.1 = z.1
        · have h2 : ¬ w.2 = z.2 := fun h2 => this ⟨h1, h2⟩
          simp [h2]
        · simp [h1]
      · simp
    rw [hf']
    exact Submodule.sum_mem _ fun z _ => Submodule.smul_mem _ _
      (Submodule.subset_span ⟨_, hδ z.1, _, hδ z.2, rfl⟩)
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨g, hg, h, hh, rfl⟩ z
    obtain ⟨a, ha⟩ := hg z.1
    obtain ⟨b, hb⟩ := hh z.2
    exact ⟨a * b, by simp [ha, hb]⟩

variable {Z : Type} [AddCommGroup Z] [Fintype Z] [DecidableEq Z] [Subsingleton Z]

theorem intFun_eq_cols :
    intFun (C := C) R Z = Submodule.span R (Set.range fun j x => (1 : Matrix Z Z C) x j) := by
  apply le_antisymm
  · intro f hf
    obtain ⟨r, hr⟩ := hf 0
    have : f = r • (fun x => (1 : Matrix Z Z C) x 0) := by
      ext x
      have hx : x = 0 := Subsingleton.elim _ _
      subst hx
      simp [Algebra.smul_def, hr]
    rw [this]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨0, rfl⟩)
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨j, rfl⟩ x
    obtain rfl : x = j := Subsingleton.elim _ _
    exact ⟨1, by simp⟩

theorem charLat_trivial : charLat (C := C) R Z = intFun R Z := by
  apply le_antisymm
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨ψ, rfl⟩ x
    exact ⟨1, by simp [Subsingleton.elim x 0]⟩
  · intro f hf
    obtain ⟨r, hr⟩ := hf 0
    have : f = r • (fun x => (0 : AddChar Z C) x) := by
      ext x
      simp [Subsingleton.elim x 0, Algebra.smul_def, hr]
    rw [this]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨0, rfl⟩)

theorem hopf_trivial : ∃ AA : HopfOrder (C := C) R Z, AA.carrier = intFun R Z := by
  refine ⟨⟨intFun R Z, ⟨1, by simp, intFun_eq_cols⟩, le_rfl, fun _ => ⟨1, by simp⟩, ?_, ?_, ?_⟩, rfl⟩
  · intro f g hf hg x
    obtain ⟨a, ha⟩ := hf x
    obtain ⟨b, hb⟩ := hg x
    exact ⟨a * b, by simp [ha, hb]⟩
  · intro f hf
    obtain ⟨r, hr⟩ := hf 0
    have : addPull R Z f = r • (fun q : Z × Z => (1 : Z → C) q.1 * (1 : Z → C) q.2) := by
      ext q
      simp [addPull, LinearMap.funLeft, Subsingleton.elim (q.1 + q.2) 0, Algebra.smul_def, hr]
    rw [this]
    exact Submodule.smul_mem _ _ (Submodule.subset_span
      ⟨1, fun _ => ⟨1, by simp⟩, 1, fun _ => ⟨1, by simp⟩, rfl⟩)
  · intro f hf x
    exact hf (-x)

theorem isTight_trivial (v : Valuation C NNReal) (q : ℕ) : IsTight v q (intFun (C := C) R Z) := by
  have hzero : ∀ (X : Type) [AddCommGroup X] [Module R X] [Subsingleton X], HasLen v R X 1 :=
    fun X _ _ _ => ⟨0, Fin.elim0, ⟨LinearEquiv.ofSubsingleton _ _⟩, by simp⟩
  have h1 : Subsingleton (AFQuot q (intFun (C := C) R Z)) := by
    refine Submodule.Quotient.subsingleton_iff.2 (eq_top_iff.2 ?_)
    rintro ⟨f, hf⟩ -
    exact Submodule.mem_sup_left ⟨hf.1, hf.2⟩
  have h2 : Subsingleton (OmAA (intFun (C := C) R Z)) := by
    refine Submodule.Quotient.subsingleton_iff.2 (eq_top_iff.2 ?_)
    rintro ⟨f, hf⟩ -
    have : f = 0 := by
      ext x
      have hx : x = 0 := Subsingleton.elim _ _
      subst hx
      exact hf.2
    subst this
    exact Submodule.zero_mem _
  refine ⟨1, 1, 1, hzero _, ⟨1, intFun_eq_cols, by simp⟩, hzero _, by simp, by simp⟩

end Lattices

section Main

variable (p : ℕ) [Fact p.Prime] {C : Type} [Field C] [IsAlgClosed C] [CharZero C]
  (v : Valuation C NNReal) {R : Type} [CommRing R] [Algebra R C]

def Good (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N] (M : Submodule R (N → C)) : Prop :=
  (∃ AA : HopfOrder (C := C) R N, AA.carrier = M) ∧ IsAbFactor p M ∧ IsTight v p M

variable {p v}

theorem good_tens (hv : v.Integers R) (hp : v (p : C) < 1)
    {N₁ N₂ : Type} [AddCommGroup N₁] [Fintype N₁] [DecidableEq N₁]
    [AddCommGroup N₂] [Fintype N₂] [DecidableEq N₂]
    {M₁ : Submodule R (N₁ → C)} {M₂ : Submodule R (N₂ → C)}
    (k₁ : ∀ x : N₁, p • x = 0) (k₂ : ∀ x : N₂, p • x = 0)
    (g₁ : Good p v N₁ M₁) (g₂ : Good p v N₂ M₂) : Good p v (N₁ × N₂) (tens M₁ M₂) := by
  obtain ⟨⟨A₁, rfl⟩, f₁, t₁⟩ := g₁
  obtain ⟨⟨A₂, rfl⟩, f₂, t₂⟩ := g₂
  obtain ⟨AA, hAA, -⟩ := GlobalTheory.T.tensor_product_hopf_orders p C v R hv hp N₁ N₂ A₁ A₂
  exact ⟨⟨AA, hAA⟩, (GlobalTheory.CompanionTheory.Ar.GR.abFactor_prod_retract p C v R hv hp).1 _ _ _ _ f₁ f₂,
    GlobalTheory.T.tensor_product_tight_hopf_orders p C v R hv hp N₁ N₂ A₁ A₂ k₁ k₂ t₁ t₂⟩

theorem good_trS (hv : v.Integers R) (hp : v (p : C) < 1)
    {N N' : Type} [AddCommGroup N] [Fintype N] [DecidableEq N]
    [AddCommGroup N'] [Fintype N'] [DecidableEq N'] {M : Submodule R (N → C)} (e : N ≃+ N')
    (g : Good p v N M) : Good p v N' (trS M e) := by
  obtain ⟨⟨AA, rfl⟩, f, t⟩ := g
  refine ⟨hopf_trS AA e, ?_, isTight_trS e t⟩
  have h := (GlobalTheory.CompanionTheory.Ar.GR.abFactor_prod_retract p C v R hv hp).2 N' N AA.carrier e.symm.toAddMonoidHom e.toAddMonoidHom
    (fun x => by simp) (fun g hg => by simpa using hg) f
  have hm : (tr e : (N → C) ≃ₗ[R] (N' → C)).toLinearMap =
      LinearMap.funLeft R C (e.symm.toAddMonoidHom : N' → N) :=
    LinearMap.ext fun f => funext fun y => rfl
  rw [trS, hm]
  exact h

theorem isAbFactor_self {A : Over (Spec (CommRingCat.of R))} (gA : GrpObj A) (L : LB A.left)
    (ab : IsAbelianScheme A) (lb : L.IsLB) (am : Out.RelAmple A L) (T : TorsRep A p)
    {N : Type} [AddCommGroup N] {pt : N → (sp (R₀ := R) R ⟶ A)} (hpt : IsTorsPts A p pt) :
    IsAbFactor p (torsFun C T pt) := by
  refine ⟨A, gA, L, ab, lb, am, T, N, inferInstance, pt, hpt, AddMonoidHom.id N, AddMonoidHom.id N,
    fun _ => rfl, fun g hg => hg, ?_⟩
  have hm : LinearMap.funLeft R C ((AddMonoidHom.id N : N →+ N) : N → N) = LinearMap.id :=
    LinearMap.ext fun f => rfl
  rw [hm, Submodule.map_id]

theorem good_zmod (hv : v.Integers R) (hp : v (p : C) < 1)
    (hc : IsAdicComplete (Ideal.span {(p : R)}) R) (hOC : OrdinaryCurveStatement) :
    Good p v (ZMod p) (charLat (C := C) R (ZMod p)) ∧ Good p v (ZMod p) (intFun (C := C) R (ZMod p)) := by
  obtain ⟨A, gA, L, ab, lb, am, T, pt, hpt, hE⟩ := hOC p C v R hv hp hc
  obtain ⟨⟨Ae, ce, -, te, -⟩, ⟨Am, cm, -, -, tm, -⟩⟩ := _root_.GlobalTheory.CompanionTheory.Relay.hopf_orders_of_zmod_p_extremes p C v R hv hp
  have cm' : Am.carrier = charLat (C := C) R (ZMod p) := cm
  obtain ⟨AA, hAA, hl, hr, hsl, hsr, -⟩ := GlobalTheory.T.tensor_product_hopf_orders p C v R hv hp (ZMod p) (ZMod p) Am Ae
  have hf : IsAbFactor p AA.carrier := by
    rw [hAA, cm, ce, ← hE]
    exact isAbFactor_self gA L ab lb am T hpt
  have f₁ := (GlobalTheory.CompanionTheory.Ar.GR.abFactor_prod_retract p C v R hv hp).2 (ZMod p) (ZMod p × ZMod p) AA.carrier
    (AddMonoidHom.inl _ _) (AddMonoidHom.fst _ _) (fun _ => rfl) hsl hf
  have f₂ := (GlobalTheory.CompanionTheory.Ar.GR.abFactor_prod_retract p C v R hv hp).2 (ZMod p) (ZMod p × ZMod p) AA.carrier
    (AddMonoidHom.inr _ _) (AddMonoidHom.snd _ _) (fun _ => rfl) hsr hf
  rw [hl] at f₁
  rw [hr] at f₂
  exact ⟨⟨⟨Am, cm'⟩, cm' ▸ f₁, cm' ▸ tm⟩, ⟨⟨Ae, ce⟩, ce ▸ f₂, ce ▸ te⟩⟩

theorem good_trivial (hv : v.Integers R) (hp : v (p : C) < 1)
    (hc : IsAdicComplete (Ideal.span {(p : R)}) R) (hOC : OrdinaryCurveStatement)
    (Z : Type) [AddCommGroup Z] [Fintype Z] [DecidableEq Z] [Subsingleton Z] :
    Good p v Z (intFun (C := C) R Z) := by
  refine ⟨hopf_trivial, ?_, isTight_trivial v p⟩
  obtain ⟨⟨AA, hAA⟩, f, -⟩ := (good_zmod hv hp hc hOC).1
  rw [← hAA] at f
  have h := (GlobalTheory.CompanionTheory.Ar.GR.abFactor_prod_retract p C v R hv hp).2 Z (ZMod p) AA.carrier 0 0
    (fun _ => Subsingleton.elim _ _) ?_ f
  · convert h using 1
    apply le_antisymm
    · intro g hg
      obtain ⟨r, hr⟩ := hg 0
      refine ⟨r • 1, AA.carrier.smul_mem _ AA.one_mem, ?_⟩
      ext x
      simp [LinearMap.funLeft, Subsingleton.elim x 0, Algebra.smul_def, hr]
    · rintro _ ⟨g, hg, rfl⟩ x
      obtain ⟨r, hr⟩ := AA.le_int hg 0
      exact ⟨r, by simpa [LinearMap.funLeft] using hr⟩
  · intro g hg
    obtain ⟨r, hr⟩ := AA.le_int hg 0
    have : (fun x : ZMod p => g ((0 : Z →+ ZMod p) ((0 : ZMod p →+ Z) x))) = r • 1 := by
      ext x
      simp [Algebra.smul_def, hr]
    rw [this]
    exact AA.carrier.smul_mem _ AA.one_mem

def consEquiv (p d : ℕ) : (ZMod p × (Fin d → ZMod p)) ≃+ (Fin (d + 1) → ZMod p) where
  toFun z := Fin.cons z.1 z.2
  invFun f := (f 0, Fin.tail f)
  left_inv z := by simp
  right_inv f := by simp
  map_add' a b := by
    ext i
    refine Fin.cases ?_ (fun j => ?_) i <;> simp

theorem good_pow (L : ∀ (N : Type) [AddCommGroup N], Submodule R (N → C))
    (hv : v.Integers R) (hp : v (p : C) < 1)
    (hprod : ∀ d, L (ZMod p × (Fin d → ZMod p)) = tens (L (ZMod p)) (L (Fin d → ZMod p)))
    (htr : ∀ (N N' : Type) [AddCommGroup N] [AddCommGroup N'] (e : N ≃+ N'), trS (L N) e = L N')
    (h₁ : Good p v (ZMod p) (L (ZMod p))) (h₀ : Good p v (Fin 0 → ZMod p) (L (Fin 0 → ZMod p)))
    (d : ℕ) : Good p v (Fin d → ZMod p) (L (Fin d → ZMod p)) := by
  induction d with
  | zero => exact h₀
  | succ d ih =>
    have h := good_tens hv hp (fun x => by simp) (fun x => by ext i; simp) h₁ ih
    rw [← hprod] at h
    have h' := good_trS hv hp (consEquiv p d) h
    rwa [htr] at h'

theorem good_of_killed (L : ∀ (N : Type) [AddCommGroup N], Submodule R (N → C))
    (hv : v.Integers R) (hp : v (p : C) < 1)
    (hprod : ∀ d, L (ZMod p × (Fin d → ZMod p)) = tens (L (ZMod p)) (L (Fin d → ZMod p)))
    (htr : ∀ (N N' : Type) [AddCommGroup N] [AddCommGroup N'] (e : N ≃+ N'), trS (L N) e = L N')
    (h₁ : Good p v (ZMod p) (L (ZMod p))) (h₀ : Good p v (Fin 0 → ZMod p) (L (Fin 0 → ZMod p)))
    (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N] (hN : ∀ x : N, p • x = 0) :
    Good p v N (L N) := by
  letI : Module (ZMod p) N := AddCommGroup.zmodModule hN
  haveI h₂ : Module.Finite (ZMod p) N := Module.Finite.of_finite
  haveI h₃ : Module.Free (ZMod p) N := Module.Free.of_divisionRing _ _
  have b : Module.Basis (Fin (Module.finrank (ZMod p) N)) (ZMod p) N :=
    @Module.finBasis (ZMod p) N _ _ _ h₃ _ h₂
  have e : (Fin (Module.finrank (ZMod p) N) → ZMod p) ≃+ N := b.equivFun.symm.toAddEquiv
  have h := good_trS hv hp e (good_pow L hv hp hprod htr h₁ h₀ _)
  rwa [htr] at h

theorem main : HodgeTateDatumStatement → OrdinaryCurveStatement → ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → IsAdicComplete (Ideal.span {(p : R)}) R → ∀ (P : Out.PolAV (Spec (CommRingCat.of R))), ∀ (T : TorsRep P.A p) (N : Type) [AddCommGroup N] [Fintype N] [DecidableEq N] (pt : N → (sp (R₀ := R) R ⟶ P.A)), IsTorsPts P.A p pt → ∀ (Nm : Type) [AddCommGroup Nm] [Fintype Nm] [DecidableEq Nm], ∀ (Ne : Type) [AddCommGroup Ne] [Fintype Ne] [DecidableEq Ne], (∀ x : Nm, p • x = 0) → (∀ x : Ne, p • x = 0) → IsAbFactor p (tens (torsFun C T pt) (tens (Submodule.span R (Set.range fun (ψ : AddChar Nm C) (x : Nm) => ψ x)) (intFun (C := C) R Ne))) ∧ IsTight v p (tens (torsFun C T pt) (tens (Submodule.span R (Set.range fun (ψ : AddChar Nm C) (x : Nm) => ψ x)) (intFun (C := C) R Ne))) := by
  intro hHT hOC p _ C _ _ _ v R _ _ hv hp hc P T N _ _ _ pt hpt Nm _ _ _ Ne _ _ _ hNm hNe
  haveI : IsCommMonObj P.A := P.isAb.comm
  obtain ⟨⟨AA, hAA⟩, -, -, -, k⟩ := GlobalTheory.T.torsion_points_hopf_order p C v R hv hp P.A T N pt hpt
  have g₁ : Good p v N (torsFun C T pt) :=
    ⟨⟨AA, hAA⟩, isAbFactor_self P.grp P.L P.isAb P.isLB P.ample T hpt,
      (GlobalTheory.CompanionTheory.Ar.GR.gp_polAV hHT p C v R hv hp hc P T N pt hpt).2⟩
  obtain ⟨zm, ze⟩ := good_zmod (R := R) hv hp hc hOC
  have gm : Good p v Nm (charLat (C := C) R Nm) :=
    good_of_killed (fun N => charLat R N) hv hp (fun d => charLat_prod _ _)
      (fun _ _ _ _ e => trS_charLat e) zm
      (by simpa only [charLat_trivial] using good_trivial hv hp hc hOC (Fin 0 → ZMod p)) Nm hNm
  have ge : Good p v Ne (intFun (C := C) R Ne) :=
    good_of_killed (fun N => intFun R N) hv hp (fun d => intFun_prod _ _)
      (fun _ _ _ _ e => trS_intFun e) ze (good_trivial hv hp hc hOC _) Ne hNe
  have h := good_tens hv hp k (fun x => Prod.ext (hNm x.1) (hNe x.2)) g₁
    (good_tens hv hp hNm hNe gm ge)
  exact ⟨h.2.1, h.2.2⟩

end Main

end PositivityTheory.HtPt.Stight.BadRed
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.StightBad =====
