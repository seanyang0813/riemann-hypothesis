module

public import Mathlib.Algebra.Field.Defs
public import Mathlib.Algebra.Group.AddChar
public import Mathlib.Algebra.Group.End
public import Mathlib.LinearAlgebra.Dimension.Constructions
public import Mathlib.LinearAlgebra.Dimension.Finite
public import Mathlib.NumberTheory.LegendreSymbol.AddCharacter
public import Mathlib.Basic.NNReal.Defs
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Mathlib.NumberTheory.MulChar.Basic
public import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots
public import Mathlib.RingTheory.Valuation.Integers
public import ReciprocityTheory.DualLattices.SumInvMulTrace
public import Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RiRank
public import ReciprocityTheory.DualLattices.ImportsAlt
public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Data.Fintype.Pi
public import Mathlib.Algebra.BigOperators.Group.Finset.Basic
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
public import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterIdealPrincipalEigen
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
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
import Mathlib.Tactic.Linter.HaveILetI
import Development.WeilBound.CoreStatements.HodgeTatePoints.RaTlog
import Mathlib.Algebra.GroupWithZero.Torsion
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsExtraFurther, Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardLe, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussSumValuationTeichmuller, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsSplitIdempotentConjugation, Development.WeilBound.CoreStatements.HodgeTatePoints.PmonoCount, Development.WeilBound.CoreStatements.HodgeTatePoints.ProdDigits

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsExtraFurther =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsExtraFurther", "h": "module\n\npublic import Mathlib.Algebra.Field.Defs\npublic import Mathlib.Algebra.Group.AddChar\npublic import Mathlib.Algebra.Group.End\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dimension.Constructions\npublic import Mathlib.LinearAlgebra.Dimension.Finite\npublic import Mathlib.NumberTheory.LegendreSymbol.AddCharacter\n\n"}
section -- clump:auto
@[expose] public section

namespace UpperTheory.Reformulated.B.AddCharacterCount.Helpers

private lemma card_le {C F : Type} [Field C] [Fintype F] [AddCommGroup F] :
    Finite (AddChar F C) ∧ Nat.card (AddChar F C) ≤ Nat.card F := by
  have li : LinearIndependent C (M := Multiplicative F → C)
      ((fun f => f : (Multiplicative F →* C) → Multiplicative F → C) ∘ AddChar.toMonoidHomEquiv) :=
    (linearIndependent_monoidHom (Multiplicative F) C).comp _ AddChar.toMonoidHomEquiv.injective
  have h1 := li.cardinalMk_le_finrank
  rw [Module.finrank_fintype_fun_eq_card] at h1
  have hlt : Cardinal.mk (AddChar F C) < Cardinal.aleph0 :=
    lt_of_le_of_lt h1 Cardinal.natCast_lt_aleph0
  have hfin : Finite (AddChar F C) := Cardinal.lt_aleph0_iff_finite.mp hlt
  refine ⟨hfin, ?_⟩
  have : Nat.card (AddChar F C) ≤ Fintype.card (Multiplicative F) := by
    have h2 := Cardinal.toNat_le_toNat h1 Cardinal.natCast_lt_aleph0
    simpa only [Cardinal.toNat_mk, Cardinal.toNat_natCast] using h2
  simpa [Nat.card_eq_fintype_card] using this

end UpperTheory.Reformulated.B.AddCharacterCount.Helpers

open UpperTheory.Reformulated.B.AddCharacterCount.Helpers in
theorem UpperTheory.Reformulated.B.AddCharacterCount.main :
    ∀ {C F : Type} [inst : Field C] [inst_1 : Field F] [Fintype F] [DecidableEq F] (ψ : AddChar F C),
      ψ ≠ (1 : AddChar F C) →
        ∃ (e : F ≃ AddChar F C),
          (∀ (h h' : F), (e : F → AddChar F C) (h + h') = (e : F → AddChar F C) h * (e : F → AddChar F C) h') ∧
            ∀ (h a : F), ((e : F → AddChar F C) h : F → C) a = (ψ : F → C) (h * a) := by
  intro C F _ _ _ _ ψ hψ
  have hinj : Function.Injective ψ.mulShift :=
    AddChar.to_mulShift_inj_of_isPrimitive (AddChar.IsPrimitive.of_ne_one hψ)
  obtain ⟨hfin, hc⟩ := card_le (C := C) (F := F)
  have hbij : Function.Bijective ψ.mulShift := hinj.bijective_of_nat_card_le hc
  refine ⟨Equiv.ofBijective _ hbij, ?_, ?_⟩
  · intro h h'
    simp [AddChar.mulShift_mul]
  · intro h a
    simp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsExtraFurther =====

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardLe =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardLe", "h": "module\n\npublic import Mathlib.Algebra.Field.Defs\npublic import Mathlib.Algebra.Group.AddChar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dimension.Constructions\npublic import Mathlib.LinearAlgebra.Dimension.Finite\npublic import Mathlib.NumberTheory.LegendreSymbol.AddCharacter\n\n"}
section -- clump:auto
@[expose] public section

namespace AddCharEqMulShift

private lemma card_le (F K : Type) [Field F] [Fintype F] [Field K] :
    Finite (AddChar F K) ∧ Nat.card (AddChar F K) ≤ Nat.card F := by
  have hli : LinearIndependent K
      (fun ψ : AddChar F K => ((AddChar.toMonoidHomEquiv ψ : Multiplicative F →* K) :
        Multiplicative F → K)) :=
    (linearIndependent_monoidHom (Multiplicative F) K).comp _
      AddChar.toMonoidHomEquiv.injective
  have hfin : Finite (AddChar F K) := hli.finite
  refine ⟨hfin, ?_⟩
  haveI : Fintype (AddChar F K) := Fintype.ofFinite _
  have h := hli.fintype_card_le_finrank
  rw [Module.finrank_fintype_fun_eq_card] at h
  simpa [Nat.card_eq_fintype_card] using h

end AddCharEqMulShift

theorem UpperTheory.Reformulated.B.Yde4.main :
    ∀ {F K : Type} [inst : Field F] [Fintype F] [inst_2 : Field K] (ψ₀ ψ : AddChar F K),
      ψ₀ ≠ (1 : AddChar F K) → ∃ (c : F), ψ = ψ₀.mulShift c := by
  intro F K _ _ _ ψ₀ ψ h
  obtain ⟨hfin, hle⟩ := AddCharEqMulShift.card_le F K
  have hinj : Function.Injective ψ₀.mulShift :=
    AddChar.to_mulShift_inj_of_isPrimitive (AddChar.IsPrimitive.of_ne_one h)
  obtain ⟨c, hc⟩ := (hinj.bijective_of_nat_card_le hle).2 ψ
  exact ⟨c, hc.symm⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardLe =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussSumValuationTeichmuller =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussSumValuationTeichmuller", "h": "module\n\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.RaTlog\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Mathlib.NumberTheory.MulChar.Basic\npublic import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots\npublic import Mathlib.RingTheory.Valuation.Integers\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardLe\nimport Mathlib.Algebra.GroupWithZero.Torsion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.DualLattices.SumInvMulTrace\npublic import Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix TensorProduct
open Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem val_eq_one_of_pow_eq_one {K : Type} [Field K] (v : Valuation K NNReal) {x : K} {n : ℕ}
    (hn : n ≠ 0) (hx : x ^ n = 1) : v x = 1 := by
  have h : v x ^ n = 1 := by rw [← map_pow, hx, map_one]
  exact (pow_left_inj₀ zero_le zero_le_one hn).mp (by simpa using h)

theorem val_sub_one_pow {K : Type} [Field K] (v : Valuation K NNReal) (p : ℕ) [Fact p.Prime]
    {ζ : K} (hζ : IsPrimitiveRoot ζ p) : v (ζ - 1) ^ (p - 1) = v (p : K) := by
  apply PositivityTheory.HtPt.Ra.val_prim <;> assumption

def ltOneIdeal {C : Type} [Field C] (v : Valuation C NNReal) (R : Type) [CommRing R]
    [Algebra R C] (hv : v.Integers R) : Ideal R where
  carrier := {r | v (algebraMap R C r) < 1}
  add_mem' := fun {a b} ha hb => by
    simp only [Set.mem_setOf_eq, map_add (f := _)] at *
    exact v.map_add_lt ha hb
  zero_mem' := by simp
  smul_mem' := fun c x hx => by
    simp only [Set.mem_setOf_eq, smul_eq_mul, map_mul] at *
    exact lt_of_le_of_lt (mul_le_of_le_one_left' (hv.map_le_one c)) hx

theorem mem_ltOneIdeal {C : Type} [Field C] (v : Valuation C NNReal) (R : Type) [CommRing R]
    [Algebra R C] (hv : v.Integers R) (r : R) :
    r ∈ ltOneIdeal v R hv ↔ v (algebraMap R C r) < 1 := Iff.rfl

theorem ltOneIdeal_isPrime {C : Type} [Field C] (v : Valuation C NNReal) (R : Type) [CommRing R]
    [Algebra R C] (hv : v.Integers R) : (ltOneIdeal v R hv).IsPrime := by
  rw [Ideal.isPrime_iff]
  refine ⟨fun h => ?_, fun {a b} hab => ?_⟩
  · have h1 : (1 : R) ∈ ltOneIdeal v R hv := h ▸ Submodule.mem_top
    rw [mem_ltOneIdeal] at h1
    simp at h1
  · rw [mem_ltOneIdeal, map_mul, map_mul] at hab
    by_contra hcon
    push Not at hcon
    simp only [mem_ltOneIdeal, not_lt] at hcon
    have ha : v (algebraMap R C a) = 1 := le_antisymm (hv.map_le_one a) hcon.1
    have hb : v (algebraMap R C b) = 1 := le_antisymm (hv.map_le_one b) hcon.2
    simp [ha, hb] at hab

theorem gauss_value : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → Fintype.card F ≠ 2 → ∀ σ : MulChar F R, (∀ a b, σ (a + b) - σ a - σ b ∈ Ideal.span {(p : R)}) → ∀ ψ : AddChar F C, ψ ≠ 1 → v (∑ a, algebraMap R C (σ⁻¹ a) * ψ a) ^ (p - 1) = v (p : C) := by
  intro p _ C _ _ _ v R _ _ hv hp F _ _ _ _ f hcard hF σ hσ ψ hψ
  have hpp : p.Prime := Fact.out
  haveI : NeZero p := ⟨hpp.ne_zero⟩
  haveI : IsDomain R := hv.hom_inj.isDomain (algebraMap R C)
  haveI hprime : (ltOneIdeal v R hv).IsPrime := ltOneIdeal_isPrime v R hv

  have hpm : (p : R) ∈ ltOneIdeal v R hv := by
    rw [mem_ltOneIdeal, map_natCast]; exact hp
  have hspan : Ideal.span {(p : R)} ≤ ltOneIdeal v R hv :=
    (Ideal.span_singleton_le_iff_mem _).mpr hpm
  let ι : F →+* R ⧸ ltOneIdeal v R hv :=
    { toFun := fun a => Ideal.Quotient.mk _ (σ a)
      map_one' := by simp
      map_mul' := fun a b => by simp
      map_zero' := by simp [MulChar.map_zero]
      map_add' := fun a b => by
        rw [← map_add (f := _), Ideal.Quotient.eq]
        have := hspan (hσ a b)
        rwa [sub_sub] at this }

  obtain ⟨ζ, hζ⟩ := HasEnoughRootsOfUnity.exists_primitiveRoot C p
  have hvζ : v ζ = 1 := val_eq_one_of_pow_eq_one v hpp.ne_zero hζ.pow_eq_one
  obtain ⟨z, rfl⟩ := hv.exists_of_le_one hvζ.le
  have hzp : z ^ p = 1 := hv.hom_inj (by rw [map_pow, hζ.pow_eq_one, map_one])
  letI : Algebra (ZMod p) F := ZMod.algebra F p
  obtain ⟨y, hym, hy⟩ := ReciprocityTheory.PGsh.gaussCongruence p F R (ltOneIdeal v R hv) ι σ z hF hzp
    (fun a => rfl)

  let ψ₀ : AddChar F C := (AddChar.zmodChar p hζ.pow_eq_one).compAddMonoidHom
    (Algebra.trace (ZMod p) F).toAddMonoidHom
  have hψ₀ : ∀ a, ψ₀ a = algebraMap R C z ^ (Algebra.trace (ZMod p) F a).val := fun a => rfl
  have hψ₀1 : ψ₀ ≠ 1 := by
    haveI : Module.Finite (ZMod p) F := Module.Finite.of_finite
    obtain ⟨b, hb⟩ := Algebra.trace_surjective (ZMod p) F 1
    intro h
    have h1 : ψ₀ b = 1 := by rw [h]; simp
    rw [hψ₀] at h1
    have hb0 : (Algebra.trace (ZMod p) F b).val ≠ 0 := by
      rw [hb, Ne, ZMod.val_eq_zero]
      exact one_ne_zero
    exact hζ.pow_ne_one_of_pos_of_lt hb0 (ZMod.val_lt _) h1
  obtain ⟨c, rfl⟩ := _root_.UpperTheory.Reformulated.B.Yde4.main ψ₀ ψ hψ₀1
  have hc : c ≠ 0 := by
    rintro rfl
    exact hψ (AddChar.mulShift_zero _)
  have hσc : σ c * σ⁻¹ c = 1 := by
    rw [MulChar.inv_apply', ← map_mul, mul_inv_cancel₀ hc, map_one]
  have hsum : ∑ a, algebraMap R C (σ⁻¹ a) * AddChar.mulShift ψ₀ c a =
      algebraMap R C (σ c) * ∑ b, algebraMap R C (σ⁻¹ b) * ψ₀ b := by
    rw [Finset.mul_sum]
    refine Fintype.sum_equiv (Equiv.mulLeft₀ c hc) _ _ (fun a => ?_)
    simp only [Equiv.mulLeft₀_apply, AddChar.mulShift_apply, map_mul, ← mul_assoc]
    rw [← map_mul, hσc, map_one, one_mul]
  have hvσ : v (algebraMap R C (σ c)) = 1 := by
    have h1 : v (algebraMap R C (σ c)) * v (algebraMap R C (σ⁻¹ c)) = 1 := by
      rw [← map_mul, ← map_mul, hσc, map_one, map_one]
    refine le_antisymm (hv.map_le_one _) ?_
    calc (1 : NNReal) = v (algebraMap R C (σ c)) * v (algebraMap R C (σ⁻¹ c)) := h1.symm
      _ ≤ v (algebraMap R C (σ c)) := mul_le_of_le_one_right' (hv.map_le_one _)
  have hG : ∑ b, algebraMap R C (σ⁻¹ b) * ψ₀ b =
      (algebraMap R C z - 1) * (algebraMap R C y - 1) := by
    have := congrArg (algebraMap R C) hy

    simp only [map_sum, map_mul, map_pow, map_sub, map_one] at this
    rw [← this]
    exact Finset.sum_congr rfl fun a _ => by rw [hψ₀]
  have hvy : v (algebraMap R C y - 1) = 1 := by
    have h : v (algebraMap R C y) < v (1 : C) := by
      rw [map_one]; exact hym
    rw [Valuation.map_sub_swap, Valuation.map_sub_eq_of_lt_left v h, map_one]
  rw [hsum, hG, map_mul, map_mul, hvσ, hvy, one_mul, mul_one]
  exact val_sub_one_pow v p hζ

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussSumValuationTeichmuller =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsSplitIdempotentConjugation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsSplitIdempotentConjugation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsExtraFurther\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.NumberTheory.MulChar.Basic\npublic import Mathlib.RingTheory.Valuation.Integers\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GaussSumValuationTeichmuller\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RiRank\npublic import ReciprocityTheory.DualLattices.ImportsAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem exists_addChar_ne_one (C F : Type) [Field C] [IsAlgClosed C] [CharZero C] [Field F]
    [Finite F] : ∃ ψ : AddChar F C, ψ ≠ 1 := by
  have hch : ringChar C ≠ ringChar F := by
    rw [ringChar.eq_zero]
    exact (CharP.char_ne_zero_of_finite F (ringChar F)).symm
  let P := AddChar.FiniteField.primitiveChar F C hch
  haveI : NeZero (P.n : ℕ) := ⟨P.n.ne_zero⟩
  haveI : Algebra.IsIntegral C (CyclotomicField P.n C) :=
    IsCyclotomicExtension.integral {(P.n : ℕ)} C _
  let j : CyclotomicField P.n C →ₐ[C] C := (by
    refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
    solve_by_elim* (maxDepth := 2) only [*,
      @_root_.DivisionSemiring.to_moduleIsTorsionFree,
      @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
  let ψ : AddChar F C :=
    { toFun := fun a => j (P.char a)
      map_zero_eq_one' := by simp
      map_add_eq_mul' := fun a b => by simp [AddChar.map_add_eq_mul] }
  refine ⟨ψ, fun h => ?_⟩
  refine P.prim one_ne_zero ?_
  ext a
  have h1 : j (P.char a) = 1 := by
    have := congrArg (fun χ : AddChar F C => χ a) h
    simpa [ψ] using this
  have h2 : P.char a = 1 := j.toRingHom.injective (by simpa using h1)
  simpa [AddChar.mulShift_apply] using h2

open PositivityTheory.HtPt.Ri in
theorem rank_one_sum : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (AA : HopfOrder (C := C) R F), FStable (F := F) AA.carrier → ∃ AD : HopfOrder (C := C) R F, FStable (F := F) AD.carrier ∧ (∀ cN cD, HasColen R v AA.carrier cN → HasColen R v AD.carrier cD → (cN * cD) ^ 2 = v (p : C) ^ (f * p ^ f)) ∧ ∀ τ : MulChar F R, IsFund p τ → ∀ c cD : R, xIdeal AA.carrier τ = Ideal.span {c} → xIdeal AD.carrier τ = Ideal.span {cD} → (v (algebraMap R C c) * v (algebraMap R C cD)) ^ (p - 1) = v (p : C) := by
  intro p _ C _ _ _ v R _ _ hv hvp F _ _ _ _ f hcard AA hFS
  obtain ⟨ψ, hψ⟩ := exists_addChar_ne_one C F
  obtain ⟨e, he, heψ⟩ := _root_.UpperTheory.Reformulated.B.AddCharacterCount.main ψ hψ
  obtain ⟨AD, hAD, -, hcol⟩ := h1 C R v hv F F e he rfl AA
  have hfun : (fun (h a : F) => e h a) = fun (h a : F) => ψ (h * a) := by
    funext h a; exact heψ h a
  rw [hfun] at hAD
  have hGauss : FStable (F := F) AD.carrier ∧
      ∀ χ : MulChar F R, χ ≠ 1 → ∀ c cD : R,
        xIdeal AA.carrier χ = Ideal.span {c} → xIdeal AD.carrier χ = Ideal.span {cD} →
        v (algebraMap R C c) * v (algebraMap R C cD) =
          v (∑ a, algebraMap R C (χ⁻¹ a) * ψ a) := by
    have wsum_one (χ : MulChar F R) {g : F → C} (hg : g ∈ AA.carrier)
        (h0 : wsum χ g 0 = 0) : ∃ r ∈ xIdeal AA.carrier χ, algebraMap R C r = wsum χ g 1 := by
      have hsum : wsum χ g = ∑ a : F, χ⁻¹ a • fun x => g (a • x) := by
        funext x
        simp [wsum, Finset.sum_apply, Algebra.smul_def]
      have hm : wsum χ g ∈ AA.carrier := by
        rw [hsum]
        exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (hFS a g hg)
      obtain ⟨r, hr⟩ := AA.le_int hm 1
      refine ⟨r, (mem_xIdeal _ _ _).2 ?_, hr⟩
      convert hm using 1
      funext a
      rw [wsum_eq χ g h0 a, hr, mul_comm]
    refine ⟨?_, ?_⟩
    · intro b g hg
      rw [hAD] at hg ⊢
      obtain ⟨u, hu, rfl⟩ := Submodule.mem_map.mp hg
      refine Submodule.mem_map.mpr ⟨fun y => ∑ a ∈ Finset.univ.filter (fun a => b * a = y), u a, ?_, ?_⟩
      · intro f' hf'
        obtain ⟨r, hr⟩ : ∃ r : R, algebraMap R C r = ∑ a, u a * f' (b • a) := hu _ (hFS b f' hf')
        refine ⟨r, ?_⟩
        show _ = ∑ y, (∑ a ∈ Finset.univ.filter (fun a => b * a = y), u a) * f' y
        rw [hr, push_sum]
        rfl
      · funext h
        show ∑ y, (∑ a ∈ Finset.univ.filter (fun a => b * a = y), u a) * ψ (h * y) = ∑ a, u a * ψ ((b • h) * a)
        rw [push_sum b u (fun y => ψ (h * y))]
        refine Finset.sum_congr rfl fun a _ => ?_
        rw [smul_eq_mul]
        ring_nf
    · intro χ hχ c cD hc hcD
      set G : C := ∑ a, algebraMap R C (χ⁻¹ a) * ψ a with hG
      have hW : ∀ h : F, ∑ a, algebraMap R C (χ⁻¹ a) * ψ (a * h) = algebraMap R C (χ h) * G := by
        intro h
        have e := wsum_eq χ (fun a => ψ a) (wsum_zero_of_ne hv hχ _) h
        simpa [wsum, G] using e
      have hFt : ∀ t : C, fourier (R := R) (fun h a : F => ψ (h * a)) (fun a => t * algebraMap R C (χ⁻¹ a)) = fun h => t * G * algebraMap R C (χ h) := by
        intro t
        funext h
        show ∑ a, t * algebraMap R C (χ⁻¹ a) * ψ (h * a) = _
        calc ∑ a, t * algebraMap R C (χ⁻¹ a) * ψ (h * a) = t * ∑ a, algebraMap R C (χ⁻¹ a) * ψ (a * h) := by
              rw [Finset.mul_sum]
              refine Finset.sum_congr rfl fun a _ => ?_
              rw [mul_comm h a]
              ring
          _ = _ := by rw [hW h]; ring
      have hq : v ((Fintype.card F : C) - 1) = 1 := v_card_sub_one p hv hvp
      have hcm : (fun a => algebraMap R C c * algebraMap R C (χ a)) ∈ AA.carrier :=
        (mem_xIdeal _ _ _).mp (by rw [hc]; exact Ideal.mem_span_singleton_self c)
      have hDm : (fun a => algebraMap R C cD * algebraMap R C (χ a)) ∈ AD.carrier :=
        (mem_xIdeal _ _ _).mp (by rw [hcD]; exact Ideal.mem_span_singleton_self cD)
      have key : ∀ t : C, (∃ s : R, algebraMap R C s = t * algebraMap R C c) →
          v t * v G ≤ v (algebraMap R C cD) := by
        intro t ⟨s, hs⟩
        have hu : (fun a => t * algebraMap R C (χ⁻¹ a)) ∈ dualLat AA.carrier := by
          intro g hg
          obtain ⟨r, hr, hr1⟩ := wsum_one χ hg (wsum_zero_of_ne hv hχ g)
          rw [hc] at hr
          obtain ⟨k, rfl⟩ := Ideal.mem_span_singleton'.mp hr
          refine ⟨k * s, ?_⟩
          have e : ∑ a, t * algebraMap R C (χ⁻¹ a) * g a = t * wsum χ g 1 := by
            simp only [wsum, mul_one, Finset.mul_sum, mul_assoc]
          show _ = ∑ a, t * algebraMap R C (χ⁻¹ a) * g a
          rw [e, ← hr1, map_mul, map_mul, hs]
          ring
        have hm : (fun h => t * G * algebraMap R C (χ h)) ∈ AD.carrier := by
          rw [hAD, ← hFt]
          exact Submodule.mem_map_of_mem hu
        obtain ⟨s', hs'⟩ : ∃ s' : R, algebraMap R C s' = t * G * algebraMap R C (χ 1) := AD.le_int hm 1
        rw [map_one, map_one, mul_one] at hs'
        have hx : s' ∈ xIdeal AD.carrier χ := by
          rw [mem_xIdeal, hs']
          exact hm
        rw [hcD] at hx
        obtain ⟨k, rfl⟩ := Ideal.mem_span_singleton'.mp hx
        rw [← map_mul, ← hs', map_mul, map_mul]
        calc v (algebraMap R C k) * v (algebraMap R C cD) ≤ 1 * v (algebraMap R C cD) := by
              gcongr
              exact hv.map_le_one k
          _ = _ := one_mul _
      rw [hAD] at hDm
      obtain ⟨u, hu, hFu⟩ := Submodule.mem_map.mp hDm
      obtain ⟨r, hr⟩ : ∃ r : R, algebraMap R C r = ∑ a, u a * (algebraMap R C c * algebraMap R C (χ a)) := hu _ hcm
      have hinv : ∑ h, algebraMap R C (χ⁻¹ h) * fourier (R := R) (fun h a : F => ψ (h * a)) u h =
          G * ∑ a, u a * algebraMap R C (χ a) := by
        have e1 : ∀ h, fourier (R := R) (fun h a : F => ψ (h * a)) u h = ∑ a, u a * ψ (h * a) := fun h => rfl
        simp_rw [e1, Finset.mul_sum]
        rw [Finset.sum_comm]
        refine Finset.sum_congr rfl fun a _ => ?_
        calc ∑ h, algebraMap R C (χ⁻¹ h) * (u a * ψ (h * a)) = u a * ∑ h, algebraMap R C (χ⁻¹ h) * ψ (h * a) := by
              rw [Finset.mul_sum]
              refine Finset.sum_congr rfl fun h _ => ?_
              ring
          _ = _ := by rw [hW a]; ring
      have hL : ∑ h, algebraMap R C (χ⁻¹ h) * fourier (R := R) (fun h a : F => ψ (h * a)) u h =
          algebraMap R C cD * ((Fintype.card F : C) - 1) := by
        rw [hFu, ← sum_inv_mul (C := C) χ, Finset.mul_sum]
        refine Finset.sum_congr rfl fun h _ => ?_
        ring
      have e2 : ∑ a, u a * (algebraMap R C c * algebraMap R C (χ a)) = algebraMap R C c * ∑ a, u a * algebraMap R C (χ a) := by
        rw [Finset.mul_sum]
        refine Finset.sum_congr rfl fun a _ => ?_
        ring
      rw [e2] at hr
      have hmain : G * algebraMap R C r = algebraMap R C c * algebraMap R C cD * ((Fintype.card F : C) - 1) := by
        linear_combination G * hr - algebraMap R C c * hinv + algebraMap R C c * hL
      have hup : v (algebraMap R C c) * v (algebraMap R C cD) ≤ v G := by
        have h2 := congrArg v hmain
        rw [map_mul, map_mul, map_mul, hq, mul_one] at h2
        rw [← h2]
        calc v G * v (algebraMap R C r) ≤ v G * 1 := by
              gcongr
              exact hv.map_le_one r
          _ = v G := mul_one _
      refine le_antisymm hup ?_
      by_cases hc0 : algebraMap R C c = 0
      · have hG0 : G = 0 := by
          by_contra hG0
          have hp0 : (p : C) ≠ 0 := Nat.cast_ne_zero.mpr (Fact.out : p.Prime).ne_zero
          have h3 := key ((p : C) * G)⁻¹ ⟨0, by rw [hc0, mul_zero, map_zero]⟩
          have e3 : ((p : C) * G)⁻¹ * G = (p : C)⁻¹ := by field_simp
          rw [← map_mul, e3, map_inv₀] at h3
          have h4 := h3.trans (hv.map_le_one cD)
          have hvp0 : v (p : C) ≠ 0 := (Valuation.ne_zero_iff v).mpr hp0
          rw [inv_le_one₀ (pos_iff_ne_zero.mpr hvp0)] at h4
          exact absurd hvp (not_lt.mpr h4)
        rw [hG0, hc0]
        simp
      · have h3 := key (algebraMap R C c)⁻¹ ⟨1, by rw [map_one, inv_mul_cancel₀ hc0]⟩
        rw [map_inv₀] at h3
        have hvc : 0 < v (algebraMap R C c) := pos_iff_ne_zero.mpr ((Valuation.ne_zero_iff v).mpr hc0)
        rwa [inv_mul_le_iff₀ hvc] at h3
  obtain ⟨hFD, hdual⟩ := hGauss
  refine ⟨AD, hFD, ?_, ?_⟩
  · intro cN cD hN hD
    rw [hcol cN cD hN hD, hcard, Nat.cast_pow, map_pow, ← pow_mul]
  · intro τ hτ c cD hc hcD
    have hord := (_root_.GlobalTheory.CompanionTheory.Ar.GR.FundGen.main p C v R hv hvp F f hcard τ hτ).1
    by_cases h2 : Fintype.card F = 2
    · have hpf : p ^ f = 2 := hcard.symm.trans h2
      obtain ⟨rfl, rfl⟩ := (Nat.Prime.pow_eq_iff Nat.prime_two).1 hpf
      have ht : τ = 1 := orderOf_eq_one_iff.1 (by rw [hord]; norm_num)
      subst τ
      let points : Fin 2 → F := ![0, 1]
      have points_injective : Function.Injective points := by
        intro i j
        fin_cases i <;> fin_cases j <;> simp [points]
      let indices : Fin 2 ≃ F := Equiv.ofBijective points
        (points_injective.bijective_of_nat_card_le (by simp [Nat.card_eq_fintype_card, h2]))
      have indices_zero : indices 0 = 0 := rfl
      have indices_one : indices 1 = 1 := rfl
      have point_cases (x : F) : x = 0 ∨ x = 1 := by
        obtain ⟨i, rfl⟩ := indices.surjective x
        fin_cases i
        · exact Or.inl indices_zero
        · exact Or.inr indices_one
      have hasColen_of_span (A : HopfOrder (C := C) R F) (d : R)
          (hd : xIdeal A.carrier (1 : MulChar F R) = Ideal.span {d}) :
          HasColen R v A.carrier (v (algebraMap R C d)) := by
        let charVec (s : R) (x : F) := algebraMap R C s * algebraMap R C ((1 : MulChar F R) x)
        have charVec_zero (s : R) : charVec s 0 = 0 := by
          simp [charVec, MulChar.map_nonunit (1 : MulChar F R) not_isUnit_zero]
        have charVec_one (s : R) : charVec s 1 = algebraMap R C s := by
          simp [charVec]
        let M : Matrix (Fin 2) (Fin 2) C := !![1, 0; 1, algebraMap R C d]
        let B := M.submatrix indices.symm indices.symm
        have col_zero : (fun x => B x (indices 0)) = (1 : F → C) := by
          funext x
          obtain ⟨i, rfl⟩ := indices.surjective x
          fin_cases i <;> simp [B, M]
        have col_one : (fun x => B x (indices 1)) = charVec d := by
          funext x
          obtain ⟨i, rfl⟩ := indices.surjective x
          fin_cases i
          · change B (indices 0) (indices 1) = charVec d (indices 0)
            simp only [B, Matrix.submatrix_apply, Equiv.symm_apply_apply]
            simp [M, indices_zero, charVec_zero]
          · change B (indices 1) (indices 1) = charVec d (indices 1)
            simp only [B, Matrix.submatrix_apply, Equiv.symm_apply_apply]
            simp [M, indices_one, charVec_one]
        have one_mem := A.one_mem
        have vec_mem : charVec d ∈ A.carrier := (mem_xIdeal _ _ _).mp
          (hd.symm ▸ Ideal.mem_span_singleton_self d)
        refine ⟨B, le_antisymm ?_ ?_, ?_⟩
        · intro g hg
          obtain ⟨r, hr⟩ := A.le_int hg 0
          obtain ⟨s, hs⟩ := A.le_int hg 1
          have g_sub : g - r • (1 : F → C) = charVec (s - r) := by
            funext x
            rcases point_cases x with rfl | rfl
            · simp [charVec_zero, Algebra.smul_def, hr]
            · simp [charVec_one, Algebra.smul_def, hs, map_sub]
          have hs_mem : s - r ∈ xIdeal A.carrier (1 : MulChar F R) := by
            apply (mem_xIdeal _ _ _).mpr
            change charVec (s - r) ∈ A.carrier
            rw [← g_sub]
            exact A.carrier.sub_mem hg (A.carrier.smul_mem r one_mem)
          rw [hd] at hs_mem
          obtain ⟨k, hk⟩ := Ideal.mem_span_singleton'.mp hs_mem
          have g_eq : g = r • (1 : F → C) + k • charVec d := by
            have hvec : charVec (s - r) = k • charVec d := by
              rw [← hk]
              funext x
              simp [charVec, map_mul, Algebra.smul_def, mul_assoc]
            rw [hvec] at g_sub
            rw [add_comm, ← g_sub, sub_add_cancel]
          rw [g_eq]
          exact Submodule.add_mem _
            (Submodule.smul_mem _ _ (Submodule.subset_span ⟨indices 0, col_zero⟩))
            (Submodule.smul_mem _ _ (Submodule.subset_span ⟨indices 1, col_one⟩))
        · rw [Submodule.span_le]
          rintro _ ⟨j, rfl⟩
          obtain ⟨i, rfl⟩ := indices.surjective j
          fin_cases i
          · change (fun x => B x (indices 0)) ∈ A.carrier
            rw [col_zero]
            exact one_mem
          · change (fun x => B x (indices 1)) ∈ A.carrier
            rw [col_one]
            exact vec_mem
        · rw [show B = _ from rfl, Matrix.det_submatrix_equiv_self]
          simp [M, Matrix.det_fin_two]
      have hN := hasColen_of_span AA c hc
      have hD := hasColen_of_span AD cD hcD
      have key := hcol _ _ hN hD
      rw [h2] at key
      have := (pow_left_inj₀ zero_le zero_le two_ne_zero).1 key
      simpa using this
    · have hne : τ ≠ 1 := by
        rintro rfl
        rw [orderOf_one] at hord
        apply h2
        rw [hcard]
        have : 1 ≤ p ^ f := Nat.one_le_pow _ _ (Fact.out : p.Prime).pos
        omega
      rw [hdual τ hne c cD hc hcD]
      exact _root_.GlobalTheory.CompanionTheory.Ar.GR.gauss_value p C v R hv hvp F f hcard h2 τ hτ ψ hψ

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsSplitIdempotentConjugation =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.PmonoCount =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.PmonoCount", "h": "module\n\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.Data.Fintype.Pi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Basic\npublic import Mathlib.Algebra.Order.BigOperators.Group.Finset\npublic import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix TensorProduct
open Matrix

namespace PositivityTheory.HtPt.Pmono

lemma prod_digits_sq (p f : ℕ) (P : NNReal) (y : Fin f → NNReal) (hy : ∀ n, y n ^ (p - 1) = P) :
    (∏ d : Fin f → Fin p, ∏ n, y n ^ (d n : ℕ)) ^ 2 = P ^ (f * p ^ f) := by
  have hrev : ∏ d : Fin f → Fin p, ∏ n, y n ^ ((Fin.rev (d n) : Fin p) : ℕ) =
      ∏ d : Fin f → Fin p, ∏ n, y n ^ (d n : ℕ) :=
    Fintype.prod_equiv (Equiv.piCongrRight fun _ => Fin.revPerm) _ _ (fun d => rfl)
  rw [sq]
  nth_rewrite 2 [← hrev]
  rw [← Finset.prod_mul_distrib]
  have hterm : ∀ d : Fin f → Fin p,
      (∏ n, y n ^ (d n : ℕ)) * ∏ n, y n ^ ((Fin.rev (d n) : Fin p) : ℕ) = P ^ f := by
    intro d
    rw [← Finset.prod_mul_distrib]
    have h : ∀ n, y n ^ (d n : ℕ) * y n ^ ((Fin.rev (d n) : Fin p) : ℕ) = P := by
      intro n
      rw [← pow_add, Fin.val_rev, ← hy n]
      congr 1
      have := (d n).isLt
      omega
    rw [Finset.prod_congr rfl (fun n _ => h n)]
    simp
  rw [Finset.prod_congr rfl (fun d _ => hterm d)]
  simp [← pow_mul]

lemma eq_of_prod_eq {ι : Type} [Fintype ι] [DecidableEq ι] (a b : ι → NNReal) (ha : ∀ i, 0 < a i)
    (hab : ∀ i, a i ≤ b i) (h : ∏ i, b i = ∏ i, a i) (i : ι) : b i = a i := by
  refine le_antisymm ?_ (hab i)
  have hQ : 0 < ∏ j ∈ Finset.univ.erase i, a j := Finset.prod_pos (fun j _ => ha j)
  have h1 : ∏ j ∈ Finset.univ.erase i, a j ≤ ∏ j ∈ Finset.univ.erase i, b j :=
    Finset.prod_le_prod' (fun j _ => hab j)
  have h2 : b i * ∏ j ∈ Finset.univ.erase i, a j ≤ a i * ∏ j ∈ Finset.univ.erase i, a j :=
    calc b i * ∏ j ∈ Finset.univ.erase i, a j ≤ b i * ∏ j ∈ Finset.univ.erase i, b j :=
          mul_le_mul' le_rfl h1
      _ = ∏ j, b j := Finset.mul_prod_erase _ _ (Finset.mem_univ i)
      _ = ∏ j, a j := h
      _ = a i * ∏ j ∈ Finset.univ.erase i, a j := (Finset.mul_prod_erase _ _ (Finset.mem_univ i)).symm
  exact le_of_mul_le_mul_right h2 hQ

theorem count : ∀ (p f : ℕ), 2 ≤ p → ∀ (P : NNReal), P ≠ 0 → ∀ (x xD : Fin f → NNReal) (X XD : (Fin f → Fin p) → NNReal), (∀ n, (x n * xD n) ^ (p - 1) = P) → (∀ d, ∏ n, x n ^ (d n : ℕ) ≤ X d) → (∀ d, ∏ n, xD n ^ (d n : ℕ) ≤ XD d) → (∏ d, X d * XD d) ^ 2 = P ^ (f * p ^ f) → ∀ d, X d = ∏ n, x n ^ (d n : ℕ) ∧ XD d = ∏ n, xD n ^ (d n : ℕ) := by
  intro p f hp P hP x xD X XD hxy hX hXD hprod d
  have hne : ∀ n, x n ≠ 0 ∧ xD n ≠ 0 := by
    intro n
    have hmul : x n * xD n ≠ 0 := by
      intro h0
      have h := hxy n
      rw [h0, zero_pow (by omega)] at h
      exact hP h.symm
    exact ⟨left_ne_zero_of_mul hmul, right_ne_zero_of_mul hmul⟩
  have hApos : ∀ d : Fin f → Fin p, 0 < ∏ n, x n ^ (d n : ℕ) :=
    fun d => Finset.prod_pos (fun n _ => pow_pos (pos_iff_ne_zero.mpr (hne n).1) _)
  have hBpos : ∀ d : Fin f → Fin p, 0 < ∏ n, xD n ^ (d n : ℕ) :=
    fun d => Finset.prod_pos (fun n _ => pow_pos (pos_iff_ne_zero.mpr (hne n).2) _)
  have hsq : (∏ d : Fin f → Fin p, (∏ n, x n ^ (d n : ℕ)) * ∏ n, xD n ^ (d n : ℕ)) ^ 2 =
      P ^ (f * p ^ f) := by
    rw [← PositivityTheory.HtPt.Pmono.prod_digits_sq p f P (fun n => x n * xD n) hxy]
    congr 1
    refine Finset.prod_congr rfl fun d _ => ?_
    rw [← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl fun n _ => (mul_pow _ _ _).symm
  have heq : ∏ d, X d * XD d = ∏ d : Fin f → Fin p, (∏ n, x n ^ (d n : ℕ)) * ∏ n, xD n ^ (d n : ℕ) :=
    (pow_left_inj₀ (by positivity) (by positivity) two_ne_zero).mp (hprod.trans hsq.symm)
  have hd := PositivityTheory.HtPt.Pmono.eq_of_prod_eq
    (fun d : Fin f → Fin p => (∏ n, x n ^ (d n : ℕ)) * ∏ n, xD n ^ (d n : ℕ))
    (fun d => X d * XD d) (fun d => mul_pos (hApos d) (hBpos d))
    (fun d => mul_le_mul' (hX d) (hXD d)) heq d
  have hXDpos : 0 < XD d := lt_of_lt_of_le (hBpos d) (hXD d)
  have hXpos : 0 < X d := lt_of_lt_of_le (hApos d) (hX d)
  constructor
  · refine le_antisymm ?_ (hX d)
    have h1 : X d * XD d ≤ (∏ n, x n ^ (d n : ℕ)) * XD d :=
      hd.le.trans (mul_le_mul' le_rfl (hXD d))
    exact le_of_mul_le_mul_right h1 hXDpos
  · refine le_antisymm ?_ (hXD d)
    have h1 : X d * XD d ≤ X d * ∏ n, xD n ^ (d n : ℕ) :=
      hd.le.trans (mul_le_mul' (hX d) le_rfl)
    exact le_of_mul_le_mul_left h1 hXpos

end PositivityTheory.HtPt.Pmono
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.PmonoCount =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.ProdDigits =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.ProdDigits", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterIdealPrincipalEigen\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsSplitIdempotentConjugation\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.PmonoCount\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.RiRank\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Pmono

section
variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C]
  {F : Type} [Field F] [Fintype F] [DecidableEq F]

omit [Fintype F] [DecidableEq F] in
lemma mem_xIdeal (M : Submodule R (F → C)) (χ : MulChar F R) (r : R) :
    r ∈ xIdeal M χ ↔ (fun a => algebraMap R C (r * χ a)) ∈ M := by
  have : (fun a => algebraMap R C (r * χ a)) = r • fun a => algebraMap R C (χ a) := by
    funext a
    simp [Algebra.smul_def]
  rw [this]
  rfl

lemma pow_mem (AA : HopfOrder (C := C) R F) {g : F → C} (hg : g ∈ AA.carrier) (k : ℕ) :
    g ^ k ∈ AA.carrier := by
  induction k with
  | zero => rw [pow_zero]; exact AA.one_mem
  | succ k ih => rw [pow_succ]; exact AA.mul_mem _ _ ih hg

lemma mono_mem (AA : HopfOrder (C := C) R F) (σ : MulChar F R) {p f : ℕ} (hp : p ≠ 0)
    (c : ℕ → R) (hc : ∀ n, c n ∈ xIdeal AA.carrier (σ ^ p ^ n)) (e : Fin f → ℕ)
    (he : ∑ n : Fin f, e n * p ^ (n : ℕ) ≠ 0) :
    ∏ n : Fin f, c n ^ e n ∈ xIdeal AA.carrier (σ ^ (∑ n : Fin f, e n * p ^ (n : ℕ))) := by
  rw [mem_xIdeal]
  have hmem : (∏ n : Fin f, (fun a => algebraMap R C (c n * (σ ^ p ^ (n : ℕ)) a)) ^ e n) ∈
      AA.carrier :=
    Finset.prod_induction _ (fun g => g ∈ AA.carrier) (fun a b ha hb => AA.mul_mem a b ha hb)
      AA.one_mem fun n _ => pow_mem AA ((mem_xIdeal _ _ _).1 (hc n)) _
  have hfun : (fun a => algebraMap R C ((∏ n : Fin f, c n ^ e n) *
      (σ ^ (∑ n : Fin f, e n * p ^ (n : ℕ))) a)) =
      ∏ n : Fin f, (fun a => algebraMap R C (c n * (σ ^ p ^ (n : ℕ)) a)) ^ e n := by
    funext a
    rw [Finset.prod_apply, MulChar.pow_apply' _ he, ← Finset.prod_pow_eq_pow_sum,
      ← Finset.prod_mul_distrib, map_prod]
    refine Finset.prod_congr rfl fun n _ => ?_
    rw [Pi.pow_apply, MulChar.pow_apply' _ (pow_ne_zero _ hp), ← map_pow (algebraMap R C), mul_pow,
      ← pow_mul,
      mul_comm (e n)]
  rw [hfun]
  exact hmem

end

lemma prod_digits {p f : ℕ} (hp : p ≠ 0) (w : ℕ → NNReal) :
    (∏ d : Fin f → Fin p, if ∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ) = 0 then 1
      else w (∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ))) = ∏ m ∈ Finset.Icc 1 (p ^ f - 1), w m := by
  have h1 : (∏ d : Fin f → Fin p, if ∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ) = 0 then 1
      else w (∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ))) =
      ∏ i : Fin (p ^ f), if (i : ℕ) = 0 then 1 else w i :=
    Fintype.prod_equiv finFunctionFinEquiv _ _ fun d => by rw [finFunctionFinEquiv_apply]
  have hq : 0 < p ^ f := pow_pos (Nat.pos_of_ne_zero hp) _
  have h2 : Finset.range (p ^ f) = insert 0 (Finset.Icc 1 (p ^ f - 1)) := by
    ext m
    simp only [Finset.mem_range, Finset.mem_insert, Finset.mem_Icc]
    omega
  rw [h1, Fin.prod_univ_eq_prod_range (fun i => if i = 0 then 1 else w i), h2,
    Finset.prod_insert (by simp), if_pos rfl, one_mul]
  refine Finset.prod_congr rfl fun m hm => if_neg ?_
  have := (Finset.mem_Icc.1 hm).1
  omega

theorem r_mono : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (AA : HopfOrder (C := C) R F), FStable (F := F) AA.carrier → ∀ σ : MulChar F R, IsFund p σ → ∀ c : ℕ → R, (∀ n, xIdeal AA.carrier (σ ^ p ^ n) = Ideal.span {c n}) → (∀ n, v (p : C) ≤ v (algebraMap R C (c n)) ^ (p - 1)) ∧ ∀ d : Fin f → Fin p, (∃ n, (d n : ℕ) ≠ 0) → xIdeal AA.carrier (σ ^ (∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ))) = Ideal.span {∏ n : Fin f, c n ^ (d n : ℕ)} := by
  intro p hpp C _ _ _ v R _ _ hv hvp F _ _ _ _ f hf AA hst σ hσ c hc
  have hp0 : p ≠ 0 := hpp.out.ne_zero
  obtain ⟨AD, hstD, hcol, hfund⟩ := rank_one_sum p C v R hv hvp F f hf AA hst
  obtain ⟨-, -, hpow, -, -⟩ := GlobalTheory.CompanionTheory.Ar.GR.FundGen.main p C v R hv hvp F f hf σ hσ
  choose g hg0 hg using fun m : ℕ => (eig_rank_one p C v R hv hvp F f hf AA hst (σ ^ m)).1
  choose gD hgD0 hgD using fun m : ℕ => (eig_rank_one p C v R hv hvp F f hf AD hstD (σ ^ m)).1
  have hx : ∀ n : ℕ, (v (algebraMap R C (c n)) * v (algebraMap R C (gD (p ^ n)))) ^ (p - 1) =
      v (p : C) := fun n => hfund (σ ^ p ^ n) (hpow n) _ _ (hc n) (hgD _)
  have hle : ∀ (BB : HopfOrder (C := C) R F) (γ b : ℕ → R),
      (∀ m, xIdeal BB.carrier (σ ^ m) = Ideal.span {γ m}) →
      (∀ n, xIdeal BB.carrier (σ ^ p ^ n) = Ideal.span {b n}) →
      ∀ d : Fin f → Fin p, ∏ n : Fin f, v (algebraMap R C (b n)) ^ (d n : ℕ) ≤
        if ∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ) = 0 then 1
        else v (algebraMap R C (γ (∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ)))) := by
    intro BB γ b hγ hb d
    split_ifs with h
    · exact Finset.prod_le_one' fun n _ => pow_le_one' (hv.map_le_one _) _
    · have hm := mono_mem BB σ hp0 b
        (fun n => by rw [hb n]; exact Ideal.mem_span_singleton_self _) (fun n => (d n : ℕ)) h
      rw [hγ, Ideal.mem_span_singleton, hv.dvd_iff_le] at hm
      simpa only [map_prod, map_pow] using hm
  refine ⟨fun n => ?_, fun d hd => ?_⟩
  · rw [← hx n]
    exact pow_le_pow_left' (mul_le_of_le_one_right' (hv.map_le_one _)) _
  · have hN := (PositivityTheory.HtPt.Ri.r_decomp p C v R hv hvp F f hf AA hst σ hσ g hg).2.2
    have hD := (PositivityTheory.HtPt.Ri.r_decomp p C v R hv hvp F f hf AD hstD σ hσ gD hgD).2.2
    have hP : v (p : C) ≠ 0 := by
      rw [Ne, map_eq_zero]
      exact_mod_cast hp0
    have key := (count p f hpp.out.two_le (v (p : C)) hP (fun n => v (algebraMap R C (c n)))
      (fun n => v (algebraMap R C (gD (p ^ (n : ℕ))))) _ _ (fun n => hx n) (hle AA g c hg hc)
      (hle AD gD (fun n => gD (p ^ n)) hgD fun n => hgD _)
      (by
        rw [Finset.prod_mul_distrib, prod_digits hp0 fun m => v (algebraMap R C (g m)),
          prod_digits hp0 fun m => v (algebraMap R C (gD m))]
        exact hcol _ _ hN hD) d).1
    have hne : ∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ) ≠ 0 := by
      obtain ⟨n, hn⟩ := hd
      intro h
      exact mul_ne_zero hn (pow_ne_zero _ hp0)
        (Finset.sum_eq_zero_iff.1 h n (Finset.mem_univ n))
    rw [if_neg hne] at key
    rw [hg]
    have hval : v (algebraMap R C (∏ n : Fin f, c n ^ (d n : ℕ))) =
        v (algebraMap R C (g (∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ)))) := by
      rw [key]
      simp only [map_prod, map_pow]
    exact le_antisymm (Ideal.span_singleton_le_span_singleton.2 (hv.dvd_of_le hval.ge))
      (Ideal.span_singleton_le_span_singleton.2 (hv.dvd_of_le hval.le))

end PositivityTheory.HtPt.Pmono
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.ProdDigits =====
