module

public import Development.EtaleCohomology.EtaleTrace.TorsionH0PointOfLocalTwist
public import Development.EtaleCohomology.TateTwists.StrictHenselianAcyclic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleTrace.TwZeroPfGlue, Development.EtaleCohomology.EtaleTrace.TwZeroPf

-- ===== clump member: Development.EtaleCohomology.EtaleTrace.TwZeroPfGlue =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleTrace.TwZeroPfGlue", "h": "module\n\npublic import Development.EtaleCohomology.EtaleTrace.TorsionH0PointOfLocalTwist\npublic import Development.EtaleCohomology.TateTwists.StrictHenselianAcyclic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC Opposite

namespace LateralTheory.EtaleTrace

theorem tz_sec_eq_of_loc {R : Type} [CommRing R] {F : Shv R} {U : Scheme.{0}} (y z : Sec F U)
    (h : Loc U fun V g => Sec.res g y = Sec.res g z) : y = z := by
  obtain ⟨S, hS, hP⟩ := h
  exact Sheaf.isSeparated F U S hS y z (fun _ g hg => hP _ g hg)

theorem tz_twGen_eq_of_pow {q : ℕ} {U : Scheme.{0}} (ζ ξ : Prim q Γ(U, ⊤)) (a : (ZMod q)ˣ)
    (h : ξ.1 = ζ.1 ^ (a : ZMod q).val) : twGen (q := q) 0 ξ = twGen 0 ζ := by
  unfold twGen
  congr 1
  refine (Submodule.Quotient.eq _).2 (Submodule.subset_span ⟨ζ, ξ, a, h, ?_⟩)
  simp
  rfl

def PrimLoc : Prop := ∀ (q : ℕ) [NeZero q] (U : Scheme.{0}) (ζ ξ : Prim q Γ(U, ⊤)),
  Loc U fun V g => ∃ a : (ZMod q)ˣ, (ξ.map g.appTop.hom).1 = (ζ.map g.appTop.hom).1 ^ (a : ZMod q).val

theorem TwZero_of_primLoc (hTw : LateralTheory.EtaleFoundations.CongruenceLocalDecomposition.TwLoc) (hP : PrimLoc) : TwZero := by
  intro q _ U ζ ξ
  obtain ⟨-, -, T3⟩ := hTw q 0
  apply tz_sec_eq_of_loc
  obtain ⟨S, hS, hP'⟩ := hP q U ζ ξ
  refine ⟨S, hS, fun _ g hg => ?_⟩
  obtain ⟨a, ha⟩ := hP' _ g hg
  rw [T3, T3]
  exact (tz_twGen_eq_of_pow _ _ a ha).symm

end LateralTheory.EtaleTrace
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleTrace.TwZeroPfGlue =====

-- ===== clump member: Development.EtaleCohomology.EtaleTrace.TwZeroPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleTrace.TwZeroPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleTrace.TwZeroPfGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC Opposite

namespace LateralTheory.EtaleTrace

def PrimSplit : Prop := ∀ (q : ℕ) [NeZero q] (A : Type) [CommRing A] (ζ ξ : Prim q A), ∃ e : Fin q → A,
  (∀ i, IsIdempotentElem (e i)) ∧ ∑ i, e i = 1 ∧ (∀ i, e i * ξ.1 = e i * ζ.1 ^ (i : ℕ)) ∧ (∀ i : Fin q, ¬ Nat.Coprime (i : ℕ) q → e i = 0)

def SplitLoc : Prop := ∀ (U : Scheme.{0}) (n : ℕ) (e : Fin n → Γ(U, ⊤)), (∀ i, IsIdempotentElem (e i)) → ∑ i, e i = 1 →
  Loc U fun V g => ∃ i, g.appTop.hom (e i) = 1

theorem primLoc_of (hS : PrimSplit) (hL : SplitLoc) : PrimLoc := by
  intro q _ U ζ ξ
  obtain ⟨e, he, hs, hx, hc⟩ := hS q Γ(U, ⊤) ζ ξ
  obtain ⟨S, hSc, hP⟩ := hL U q e he hs
  refine ⟨S, hSc, fun V g hg => ?_⟩
  obtain ⟨i, hi⟩ := hP V g hg
  have key : g.appTop.hom ξ.1 = g.appTop.hom ζ.1 ^ (i : ℕ) := by
    have := congrArg g.appTop.hom (hx i)
    simpa [map_mul, map_pow, hi] using this
  by_cases hcop : Nat.Coprime (i : ℕ) q
  · refine ⟨ZMod.unitOfCoprime i hcop, ?_⟩
    change g.appTop.hom ξ.1 = g.appTop.hom ζ.1 ^ _
    rw [key, ZMod.coe_unitOfCoprime, ZMod.val_natCast, Nat.mod_eq_of_lt i.2]
  · have h0 := hc i hcop
    rw [h0, map_zero] at hi
    have : Subsingleton Γ(V, ⊤) := subsingleton_of_zero_eq_one hi
    exact ⟨1, Subsingleton.elim _ _⟩

theorem TwZero_of (hTw : LateralTheory.EtaleFoundations.CongruenceLocalDecomposition.TwLoc) (hS : PrimSplit) (hL : SplitLoc) : TwZero :=
  TwZero_of_primLoc hTw (primLoc_of hS hL)

end LateralTheory.EtaleTrace
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleTrace.TwZeroPf =====
