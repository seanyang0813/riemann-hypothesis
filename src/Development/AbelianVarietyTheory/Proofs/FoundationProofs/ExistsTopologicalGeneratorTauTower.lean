module

public import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne
public import Mathlib.RingTheory.Smooth.Basic
public import Mathlib.Algebra.TrivSqZeroExt.Basic
public import Mathlib.RingTheory.Etale.Field
public import Mathlib.RingTheory.Etale.Basic
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.SndDualLiftAlgebraMap
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.CompInv
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.Laurent
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdicCompletionValuationRingCompleteValuationDoma
public import Mathlib.FieldTheory.KrullTopology
public import Mathlib.FieldTheory.KummerExtension
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.Linter.Style
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.FieldTheory.Galois.Profinite
import Mathlib.RingTheory.PicardGroup

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FoundationProofs.DerivationEqZeroOfIsAlgebraicOverPadicIntegers, Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsDerivationExtendPadicLaurentToClosure, Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsEqPrimePowMulNotDvdCompletedLaurent, Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMulLinearIndependentAlgebraicOverPadicInte, Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMulMemSpanAlgebraicOverPadicIntegers, Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQDerivationCompletionZp, Development.AbelianVarietyTheory.Proofs.FoundationProofs.PrimeNatCastCompletedLaurentRingOfPrime, Development.AbelianVarietyTheory.Proofs.FoundationProofs.QNotPthPowInClosureAlgebraicPadicInt, Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsTopologicalGeneratorTauTower

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.DerivationEqZeroOfIsAlgebraicOverPadicIntegers =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.DerivationEqZeroOfIsAlgebraicOverPadicIntegers", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

noncomputable section

namespace GlobalTheory.K5.DerAlg

open Polynomial

variable {p : ℕ} [Fact p.Prime] {Ω : Type} [Field Ω] [Algebra (O0 p) Ω]

abbrev phiZ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω] : ℤ_[p] →+* Ω :=
  (algebraMap (O0 p) Ω).comp (algebraMap ℤ_[p] (O0 p))

theorem phiZ_injective [CharZero Ω] : Function.Injective (phiZ p Ω) := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro c hc
  by_contra h0
  rw [PadicInt.unitCoeff_spec h0, map_mul, map_pow, map_natCast] at hc
  have hu : IsUnit (phiZ p Ω (PadicInt.unitCoeff h0 : ℤ_[p])) :=
    (Units.isUnit _).map _
  have hp : ((p : Ω)) ^ c.valuation ≠ 0 :=
    pow_ne_zero _ (by exact_mod_cast (Fact.out : p.Prime).ne_zero)
  exact mul_ne_zero hu.ne_zero hp hc

theorem der_eval₂ (E : Derivation ℤ Ω Ω)
    (hE : ∀ r : ℤ_[p], E (algebraMap (O0 p) Ω (algebraMap ℤ_[p] (O0 p) r)) = 0)
    (x : Ω) (Q : ℤ_[p][X]) :
    E (eval₂ (phiZ p Ω) x Q) = eval₂ (phiZ p Ω) x (derivative Q) * E x := by
  induction Q using Polynomial.induction_on' with
  | add P Q hP hQ => rw [eval₂_add, map_add (f := _), hP, hQ, derivative_add, eval₂_add, add_mul]
  | monomial n c =>
    have hc : E (phiZ p Ω c) = 0 := hE c
    rw [eval₂_monomial, Derivation.leibniz, Derivation.leibniz_pow, hc, smul_zero, add_zero,
      derivative_monomial, eval₂_monomial]
    simp only [smul_eq_mul, nsmul_eq_mul, map_mul, map_natCast]
    ring

theorem der_algZp : ∀ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
    ∀ E : Derivation ℤ Ω Ω, (∀ r : ℤ_[p], E (algebraMap (O0 p) Ω (algebraMap ℤ_[p] (O0 p) r)) = 0) →
    ∀ x : Ω, IsAlgZp (p := p) x → E x = 0 := by
  intro p _ Ω _ _ hC E hE x hx
  haveI : CharZero Ω := GlobalTheory.K5.Basic.charZero_of_isClo hC
  obtain ⟨P, hP0, hPx⟩ := hx
  rw [aeval_def, eval₂_map] at hPx
  change eval₂ (phiZ p Ω) x P = 0 at hPx
  by_contra hEx
  have key : ∀ n, ∀ P : ℤ_[p][X], P.natDegree = n → P ≠ 0 → eval₂ (phiZ p Ω) x P ≠ 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      intro P hn hP hzero
      by_cases hd : P.natDegree = 0
      · rw [eq_C_of_natDegree_eq_zero hd, eval₂_C] at hzero
        have := phiZ_injective (p := p) (Ω := Ω) (hzero.trans (map_zero _).symm)
        exact hP (by rw [eq_C_of_natDegree_eq_zero hd, this, C_0])
      · have hD : derivative P ≠ 0 := fun h => hd (natDegree_eq_zero_of_derivative_eq_zero h)
        have hlt := natDegree_derivative_lt hd
        refine ih _ (hn ▸ hlt) (derivative P) rfl hD ?_
        have h1 := der_eval₂ E hE x P
        rw [hzero, map_zero] at h1
        exact (mul_eq_zero.1 h1.symm).resolve_right hEx
  exact key _ P rfl hP0 hPx

end GlobalTheory.K5.DerAlg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.DerivationEqZeroOfIsAlgebraicOverPadicIntegers =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsDerivationExtendPadicLaurentToClosure =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsDerivationExtendPadicLaurentToClosure", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Mathlib.RingTheory.Smooth.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Algebra.TrivSqZeroExt.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Etale.Field\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Etale.Basic\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

noncomputable section

namespace GlobalTheory.K5.DerExt

theorem exists_extend_of_formallySmooth {R S : Type} [CommRing R] [CommRing S] [Algebra R S]
    [Algebra.FormallySmooth R S] [Algebra ℤ R] (D : Derivation ℤ R R) :
    ∃ D' : Derivation ℤ S S, ∀ r, D' (algebraMap R S r) = algebraMap R S (D r) := by
  let g : R →+* TrivSqZeroExt S S :=
    { toFun := fun r ↦ TrivSqZeroExt.inl (algebraMap R S r) + TrivSqZeroExt.inr (algebraMap R S (D r))
      map_one' := by
        ext
        · simp only [TrivSqZeroExt.fst_add, TrivSqZeroExt.fst_inl, TrivSqZeroExt.fst_inr, TrivSqZeroExt.fst_one,
            map_one, add_zero]
        · simp only [TrivSqZeroExt.snd_add, TrivSqZeroExt.snd_inl, TrivSqZeroExt.snd_inr, TrivSqZeroExt.snd_one,
            Derivation.map_one_eq_zero, map_zero, zero_add]
      map_mul' := fun a b ↦ by
        ext
        · simp only [TrivSqZeroExt.fst_add, TrivSqZeroExt.fst_inl, TrivSqZeroExt.fst_inr, TrivSqZeroExt.fst_mul,
            map_mul, add_zero]
        · simp only [TrivSqZeroExt.snd_add, TrivSqZeroExt.snd_inl, TrivSqZeroExt.snd_inr, TrivSqZeroExt.snd_mul,
            TrivSqZeroExt.fst_add, TrivSqZeroExt.fst_inl, TrivSqZeroExt.fst_inr, Derivation.leibniz,
            smul_eq_mul, map_add, map_mul, MulOpposite.smul_eq_mul_unop, MulOpposite.unop_op, zero_add, add_zero]
          ring
      map_zero' := by
        ext
        · simp only [TrivSqZeroExt.fst_add, TrivSqZeroExt.fst_inl, TrivSqZeroExt.fst_inr, TrivSqZeroExt.fst_zero,
            map_zero, add_zero]
        · simp only [TrivSqZeroExt.snd_add, TrivSqZeroExt.snd_inl, TrivSqZeroExt.snd_inr, TrivSqZeroExt.snd_zero,
            map_zero, zero_add]
      map_add' := fun a b ↦ by
        ext
        · simp only [TrivSqZeroExt.fst_add, TrivSqZeroExt.fst_inl, TrivSqZeroExt.fst_inr, map_add (f := _), add_zero]
        · simp only [TrivSqZeroExt.snd_add, TrivSqZeroExt.snd_inl, TrivSqZeroExt.snd_inr, map_add (f := _), zero_add] }
  have hg : ∀ r, (g r).fst = algebraMap R S r ∧ (g r).snd = algebraMap R S (D r) := fun r ↦ by
    constructor
    · change (TrivSqZeroExt.inl (algebraMap R S r) + TrivSqZeroExt.inr (algebraMap R S (D r)) :
        TrivSqZeroExt S S).fst = _
      simp only [TrivSqZeroExt.fst_add, TrivSqZeroExt.fst_inl, TrivSqZeroExt.fst_inr, add_zero]
    · change (TrivSqZeroExt.inl (algebraMap R S r) + TrivSqZeroExt.inr (algebraMap R S (D r)) :
        TrivSqZeroExt S S).snd = _
      simp only [TrivSqZeroExt.snd_add, TrivSqZeroExt.snd_inl, TrivSqZeroExt.snd_inr, zero_add]
  obtain ⟨l, h1, h2⟩ : ∃ l : S →+* TrivSqZeroExt S S, (∀ s, (l s).fst = s) ∧ ∀ r, l (algebraMap R S r) = g r := by
    letI : Algebra R (TrivSqZeroExt S S) := g.toAlgebra
    let π : TrivSqZeroExt S S →ₐ[R] S :=
      { (TrivSqZeroExt.fstHom S S S).toRingHom with commutes' := fun r ↦ (hg r).1 }
    have hs : Function.Surjective π := fun s ↦ ⟨TrivSqZeroExt.inl s, rfl⟩
    have hk : IsNilpotent (RingHom.ker (π : TrivSqZeroExt S S →+* S)) := by
      refine ⟨2, ?_⟩
      rw [pow_two, Submodule.zero_eq_bot, eq_bot_iff, Ideal.mul_le]
      intro x hx y hy
      rw [RingHom.mem_ker] at hx hy
      change x.fst = 0 at hx
      change y.fst = 0 at hy
      rw [Ideal.mem_bot]
      ext
      · simp [hx]
      · simp [TrivSqZeroExt.snd_mul, hx, hy]
    let l := Algebra.FormallySmooth.liftOfSurjective (AlgHom.id R S) π hs hk
    exact ⟨l, fun s ↦ AlgHom.congr_fun (Algebra.FormallySmooth.comp_liftOfSurjective (AlgHom.id R S) π hs hk) s,
      fun r ↦ l.commutes r⟩
  refine ⟨Derivation.mk' (AddMonoidHom.toIntLinearMap
    { toFun := fun s ↦ (l s).snd, map_zero' := by simp, map_add' := fun x y ↦ by rw [map_add (f := _)]; rfl }) fun a b ↦ ?_,
    fun r ↦ ?_⟩
  · change (l (a * b)).snd = a • (l b).snd + b • (l a).snd
    rw [map_mul, TrivSqZeroExt.snd_mul, h1, h1]
    simp [mul_comm]
  · change (l _).snd = _
    rw [h2, (hg r).2]

theorem derivation_extend : ∀ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
    ∀ D : Derivation ℤ (O0 p) (O0 p),
    ∃ E : Derivation ℤ Ω Ω, ∀ x, E (algebraMap (O0 p) Ω x) = algebraMap (O0 p) Ω (D x) := by
  intro p _ Ω _ _ h D
  haveI : IsDomain (O0 p) := h.inj.isDomain _
  haveI : CharZero Ω := Basic.charZero_of_isClo h
  let K := FractionRing (O0 p)
  letI : Algebra K Ω := (IsFractionRing.lift h.inj).toAlgebra
  haveI : IsScalarTower (O0 p) K Ω := IsScalarTower.of_algebraMap_eq fun x ↦ by
    change _ = IsFractionRing.lift h.inj (algebraMap (O0 p) K x)
    rw [IsFractionRing.lift_algebraMap]
  haveI : Algebra.IsAlgebraic (O0 p) Ω := h.alg
  haveI : Algebra.IsAlgebraic K Ω := Algebra.IsAlgebraic.extendScalars (IsFractionRing.injective (O0 p) K)
  haveI : Algebra.IsSeparable K Ω := Algebra.IsSeparable.of_integral K Ω
  haveI : Algebra.FormallyEtale K Ω := Algebra.FormallyEtale.of_isSeparable K Ω
  haveI : Algebra.FormallySmooth (O0 p) K := Algebra.FormallySmooth.of_isLocalization (nonZeroDivisors (O0 p))
  haveI : Algebra.FormallySmooth (O0 p) Ω := Algebra.FormallySmooth.comp (O0 p) K Ω
  exact exists_extend_of_formallySmooth D

end GlobalTheory.K5.DerExt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsDerivationExtendPadicLaurentToClosure =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsEqPrimePowMulNotDvdCompletedLaurent =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsEqPrimePowMulNotDvdCompletedLaurent", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

namespace GlobalTheory.K5.Basic

theorem exists_not_prime_pow_dvd_completedLaurent (p : ℕ) [Fact p.Prime] (x : O0 p) (hx : x ≠ 0) :
    ∃ a : ℕ, ¬ (p : O0 p) ^ a ∣ x := by
  obtain ⟨s, rfl⟩ := AdicCompletion.mk_surjective (pI p) (Lau p) x
  obtain ⟨a, ha⟩ := exists_not_dvd p s hx
  refine ⟨a, ?_⟩
  rintro ⟨z, hz⟩
  apply ha a le_rfl
  have h1 := congrArg (AdicCompletion.evalₐ (pI p) a) hz
  rw [AdicCompletion.evalₐ_mk, map_mul, map_pow, map_natCast,
    ← map_natCast (Ideal.Quotient.mk (pI p ^ a)), ← map_pow] at h1
  have h2 : Ideal.Quotient.mk (pI p ^ a) ((p : Lau p) ^ a) = 0 := by
    rw [Ideal.Quotient.eq_zero_iff_mem, mem_pI_pow]
  rw [h2, zero_mul, Ideal.Quotient.eq_zero_iff_mem, mem_pI_pow] at h1
  exact h1

theorem exists_eq_prime_pow_mul_not_dvd_completedLaurent : ∀ (p : ℕ) [Fact p.Prime], ∀ x : O0 p, x ≠ 0 →
    ∃ (k : ℕ) (y : O0 p), x = (p : O0 p) ^ k * y ∧ ¬ (p : O0 p) ∣ y := by
  intro p _ x hx
  obtain ⟨a, ha⟩ := exists_not_prime_pow_dvd_completedLaurent p x hx
  have hfin : FiniteMultiplicity (p : O0 p) x :=
    ⟨a, fun h => ha ((pow_dvd_pow _ (Nat.le_succ a)).trans h)⟩
  obtain ⟨y, hy, hnd⟩ := hfin.exists_eq_pow_mul_and_not_dvd
  exact ⟨_, y, hy, hnd⟩

end GlobalTheory.K5.Basic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsEqPrimePowMulNotDvdCompletedLaurent =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMulLinearIndependentAlgebraicOverPadicInte =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMulLinearIndependentAlgebraicOverPadicInte", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

namespace GlobalTheory.K5.ReprInd

theorem aux {R Ω : Type*} [CommRing R] [IsDomain R] [AddCommGroup Ω] [Module R Ω] (P : Ω → Prop) :
    ∀ (m : ℕ) (a : Fin m → Ω) (f : Fin m → R), (∀ i, P (a i)) →
      ∃ (n : ℕ) (a' : Fin n → Ω) (f' : Fin n → R) (g : R), (∀ i, P (a' i)) ∧
        LinearIndependent R a' ∧ g ≠ 0 ∧ g • (∑ i, f i • a i) = ∑ i, f' i • a' i := by
  intro m
  induction m with
  | zero =>
    intro a f _
    refine ⟨0, a, f, 1, by simp, linearIndependent_empty_type, one_ne_zero, by simp⟩
  | succ m ih =>
    intro a f hP
    by_cases hli : LinearIndependent R a
    · exact ⟨m + 1, a, f, 1, hP, hli, one_ne_zero, one_smul _ _⟩
    · obtain ⟨c, hc, k, hk⟩ := Fintype.not_linearIndependent_iff.mp hli
      obtain ⟨n, a', f', g, hP', hli', hg, heq⟩ := ih (fun j => a (k.succAbove j))
        (fun j => c k * f (k.succAbove j) - f k * c (k.succAbove j)) (fun j => hP _)
      refine ⟨n, a', f', g * c k, hP', hli', mul_ne_zero hg hk, ?_⟩
      have key : c k • (∑ i, f i • a i) =
          ∑ j : Fin m, (c k * f (k.succAbove j) - f k * c (k.succAbove j)) • a (k.succAbove j) := by
        have h1 : c k • (∑ i, f i • a i) = c k • (∑ i, f i • a i) - f k • (∑ i, c i • a i) := by
          rw [hc, smul_zero, sub_zero]
        rw [h1, Finset.smul_sum, Finset.smul_sum, ← Finset.sum_sub_distrib,
          Fin.sum_univ_succAbove _ k]
        simp only [smul_smul, ← sub_smul]
        rw [mul_comm (f k) (c k), sub_self, zero_smul, zero_add]
      rw [mul_smul, key, heq]

theorem main {R Ω : Type*} [CommRing R] [IsDomain R] [Field Ω] [Algebra R Ω] (P : Ω → Prop) :
    ∀ y ∈ Submodule.span R {x : Ω | P x},
    ∃ (n : ℕ) (a : Fin n → Ω) (f : Fin n → R) (g : R), (∀ i, P (a i)) ∧
      LinearIndependent R a ∧ g ≠ 0 ∧
      algebraMap R Ω g * y = ∑ i, algebraMap R Ω (f i) * a i := by
  intro y hy
  obtain ⟨m, f, a, rfl⟩ := Submodule.mem_span_set'.mp hy
  obtain ⟨n, a', f', g, hP', hli', hg, heq⟩ := aux P m (fun i => (a i : Ω)) f (fun i => (a i).2)
  refine ⟨n, a', f', g, hP', hli', hg, ?_⟩
  simpa only [Algebra.smul_def] using heq

end GlobalTheory.K5.ReprInd

theorem GlobalTheory.K5.algSpan_reprInd : ∀ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
    ∀ y ∈ Submodule.span (O0 p) {x : Ω | IsAlgZp (p := p) x},
    ∃ (n : ℕ) (a : Fin n → Ω) (f : Fin n → O0 p) (g : O0 p), (∀ i, IsAlgZp (p := p) (a i)) ∧
      LinearIndependent (O0 p) a ∧ g ≠ 0 ∧
      algebraMap (O0 p) Ω g * y = ∑ i, algebraMap (O0 p) Ω (f i) * a i := by
  intro p _ Ω _ _ _
  exact GlobalTheory.K5.ReprInd.main (fun x => IsAlgZp (p := p) x)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMulLinearIndependentAlgebraicOverPadicInte =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMulMemSpanAlgebraicOverPadicIntegers =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMulMemSpanAlgebraicOverPadicIntegers", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.K5.ReprSpan

open Polynomial

variable {p : ℕ} [Fact p.Prime] {Ω : Type} [Field Ω] [Algebra (O0 p) Ω]

theorem isAlgZp_one : IsAlgZp (p := p) (1 : Ω) :=
  ⟨X - C 1, X_sub_C_ne_zero 1, by simp⟩

theorem isAlgZp_mul {x y : Ω} (hx : IsAlgZp (p := p) x) (hy : IsAlgZp (p := p) y) :
    IsAlgZp (p := p) (x * y) := by
  let : Algebra ℤ_[p] Ω := Algebra.compHom Ω (algebraMap ℤ_[p] (O0 p))
  have : IsScalarTower ℤ_[p] (O0 p) Ω := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  have key : ∀ z : Ω, IsAlgZp (p := p) z ↔ IsAlgebraic ℤ_[p] z := fun z => by
    simp only [IsAlgZp, IsAlgebraic, aeval_map_algebraMap]
  rw [key] at hx hy ⊢
  exact hx.mul hy


variable (p Ω) in
def algZpMonoid : Submonoid Ω where
  carrier := {x | IsAlgZp (p := p) x}
  one_mem' := isAlgZp_one
  mul_mem' := isAlgZp_mul

theorem mem_adjoin_iff (z : Ω) :
    z ∈ Algebra.adjoin (O0 p) {x : Ω | IsAlgZp (p := p) x} ↔
      z ∈ Submodule.span (O0 p) {x : Ω | IsAlgZp (p := p) x} := by
  rw [← Subalgebra.mem_toSubmodule, Algebra.adjoin_eq_span]
  have hcl : (Submonoid.closure {x : Ω | IsAlgZp (p := p) x} : Set Ω) = {x | IsAlgZp (p := p) x} := by
    rw [show {x : Ω | IsAlgZp (p := p) x} = (algZpMonoid (p := p) (Ω := Ω) : Set Ω) from rfl,
      Submonoid.closure_eq]
  rw [hcl]

theorem exists_mul_mem_span : ∀ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
    ∀ b ∈ Subfield.closure (Set.range (algebraMap (O0 p) Ω) ∪ {x | IsAlgZp (p := p) x}),
    ∃ g : O0 p, g ≠ 0 ∧ algebraMap (O0 p) Ω g * b ∈ Submodule.span (O0 p) {x : Ω | IsAlgZp (p := p) x} := by
  intro p _ Ω _ _ h b hb
  set B := Algebra.adjoin (O0 p) {x : Ω | IsAlgZp (p := p) x} with hBdef
  let S : Subfield Ω :=
    { carrier := {b | ∃ g : O0 p, g ≠ 0 ∧ algebraMap (O0 p) Ω g * b ∈ B}
      zero_mem' := ⟨1, one_ne_zero, by rw [mul_zero]; exact B.zero_mem⟩
      one_mem' := ⟨1, one_ne_zero, by rw [map_one, mul_one]; exact B.one_mem⟩
      add_mem' := by
        rintro a c ⟨g, hg, ha⟩ ⟨g', hg', hc⟩
        refine ⟨g * g', mul_ne_zero hg hg', ?_⟩
        have e : algebraMap (O0 p) Ω (g * g') * (a + c) =
            algebraMap (O0 p) Ω g' * (algebraMap (O0 p) Ω g * a) +
              algebraMap (O0 p) Ω g * (algebraMap (O0 p) Ω g' * c) := by
          rw [map_mul]; ring
        rw [e]
        exact B.add_mem (B.mul_mem (B.algebraMap_mem _) ha) (B.mul_mem (B.algebraMap_mem _) hc)
      mul_mem' := by
        rintro a c ⟨g, hg, ha⟩ ⟨g', hg', hc⟩
        refine ⟨g * g', mul_ne_zero hg hg', ?_⟩
        have e : algebraMap (O0 p) Ω (g * g') * (a * c) =
            (algebraMap (O0 p) Ω g * a) * (algebraMap (O0 p) Ω g' * c) := by
          rw [map_mul]; ring
        rw [e]
        exact B.mul_mem ha hc
      neg_mem' := by
        rintro a ⟨g, hg, ha⟩
        exact ⟨g, hg, by rw [mul_neg]; exact B.neg_mem ha⟩
      inv_mem' := by
        rintro a ⟨g, hg, ha⟩
        by_cases ha0 : a = 0
        · exact ⟨1, one_ne_zero, by rw [ha0, inv_zero, mul_zero]; exact B.zero_mem⟩
        have hg0 : algebraMap (O0 p) Ω g ≠ 0 := fun e => hg (h.inj (by rw [e, map_zero]))
        have hy0 : algebraMap (O0 p) Ω g * a ≠ 0 := mul_ne_zero hg0 ha0
        let y : B := ⟨algebraMap (O0 p) Ω g * a, ha⟩
        have halg : IsAlgebraic (O0 p) y :=
          (isAlgebraic_algHom_iff B.val Subtype.val_injective).1 (h.alg.isAlgebraic _)
        have hnz : y ∈ nonZeroDivisors B :=
          mem_nonZeroDivisors_of_ne_zero (fun e => hy0 (congrArg Subtype.val e))
        obtain ⟨r, hr, s, hs⟩ := halg.exists_ne_zero_dvd hnz
        have hs' : algebraMap (O0 p) Ω r = algebraMap (O0 p) Ω g * a * (s : Ω) := by
          have := congrArg Subtype.val hs
          simpa [y] using this
        refine ⟨r, hr, ?_⟩
        have e : algebraMap (O0 p) Ω r * a⁻¹ = algebraMap (O0 p) Ω g * (s : Ω) := by
          rw [hs']; field_simp
        show algebraMap (O0 p) Ω r * a⁻¹ ∈ B
        rw [e]
        exact B.mul_mem (B.algebraMap_mem g) s.2 }
  have hle : Subfield.closure (Set.range (algebraMap (O0 p) Ω) ∪ {x | IsAlgZp (p := p) x}) ≤ S := by
    rw [Subfield.closure_le]
    rintro x (⟨c, rfl⟩ | hx)
    · exact ⟨1, one_ne_zero, by rw [map_one, one_mul]; exact B.algebraMap_mem c⟩
    · exact ⟨1, one_ne_zero, by rw [map_one, one_mul]; exact Algebra.subset_adjoin hx⟩
  obtain ⟨g, hg, hgb⟩ := hle hb
  exact ⟨g, hg, (mem_adjoin_iff _).1 hgb⟩

end GlobalTheory.K5.ReprSpan
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMulMemSpanAlgebraicOverPadicIntegers =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQDerivationCompletionZp =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQDerivationCompletionZp", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.SndDualLiftAlgebraMap\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.CompInv\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.Laurent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

noncomputable section

namespace GlobalTheory.K5.QDer

variable (p : ℕ) [Fact p.Prime]

abbrev qL : Lau p := HahnSeries.single (1 : ℤ) (1 : ℤ_[p])

def thetaFun (f : Lau p) : Lau p := qL p * Formalism.L2.Th1.A.dL f

theorem thetaFun_qL : thetaFun p (qL p) = qL p := by
  have h := Formalism.L2.Th1.A.dL_uPow (R := ℤ_[p]) 1
  simp only [Formalism.L2.Th1.A.uPow] at h
  simp [thetaFun, h, HahnSeries.single_zero_one]

theorem dL_algebraMap (r : ℤ_[p]) : Formalism.L2.Th1.A.dL (algebraMap ℤ_[p] (Lau p) r) = 0 :=
  (Formalism.L2.Th1.A.dLDR ℤ_[p]).map_algebraMap r

def thetaO :=
  letI : Module ℤ_[p] (Lau p) := Algebra.toModule
  GlobalTheory.BK.complDer (k := ℤ_[p]) (pI p)
    { toFun := thetaFun p
      map_add' := fun a b => by simp only [thetaFun, map_add (f := _), mul_add]
      map_smul' := fun r f => by
        simp only [thetaFun, Algebra.smul_def, RingHom.id_apply]
        rw [Formalism.L2.Th1.A.dL_mul, dL_algebraMap p r]
        ring
      map_one_eq_zero' := by
        show thetaFun p 1 = 0
        simp [thetaFun, Formalism.L2.Th1.A.dL_one]
      leibniz' := fun a b => by
        show thetaFun p (a * b) = a • thetaFun p b + b • thetaFun p a
        simp only [thetaFun, smul_eq_mul, Formalism.L2.Th1.A.dL_mul]
        ring }

theorem thetaO_qO : thetaO p (qO p) = qO p := by
  rw [thetaO, qO, GlobalTheory.BK.complDer_algebraMap]
  exact congrArg _ (thetaFun_qL p)

theorem thetaO_algebraMap (r : ℤ_[p]) : thetaO p (algebraMap ℤ_[p] (O0 p) r) = 0 :=
  (thetaO p).map_algebraMap r

def thetaZ : Derivation ℤ (O0 p) (O0 p) where
  toFun := thetaO p
  map_add' := map_add _
  map_smul' := fun r x => by
    simp [Algebra.smul_def, Derivation.leibniz]
  map_one_eq_zero' := (thetaO p).map_one_eq_zero
  leibniz' := (thetaO p).leibniz

theorem exists_qDer : ∀ (p : ℕ) [Fact p.Prime], ∃ D : Derivation ℤ (O0 p) (O0 p), D (qO p) = qO p ∧
    ∀ r : ℤ_[p], D (algebraMap ℤ_[p] (O0 p) r) = 0 := fun p _ =>
  ⟨thetaZ p, thetaO_qO p, thetaO_algebraMap p⟩

end GlobalTheory.K5.QDer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQDerivationCompletionZp =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.PrimeNatCastCompletedLaurentRingOfPrime =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.PrimeNatCastCompletedLaurentRingOfPrime", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdicCompletionValuationRingCompleteValuationDoma\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.K5

variable (p : ℕ) [Fact p.Prime]

theorem natCast_dvd_iff_evalₐ_one (x : O0 p) :
    (p : O0 p) ∣ x ↔ AdicCompletion.evalₐ (pI p) 1 x = 0 := by
  rw [GlobalTheory.ValCompletion.evalₐ_eq_zero_iff rfl, pow_one, map_natCast]

theorem prime_natCast_completedLaurentRing : Prime (p : O0 p) := by
  haveI : (pI p ^ 1).IsPrime := by
    rw [pow_one]; exact (Ideal.span_singleton_prime (Basic.prime_lau p).ne_zero).2 (Basic.prime_lau p)
  refine ⟨?_, Basic.not_isUnit_p p, ?_⟩
  · exact_mod_cast (Nat.Prime.ne_zero Fact.out : p ≠ 0)
  · intro a b h
    rw [natCast_dvd_iff_evalₐ_one, map_mul] at h
    rw [natCast_dvd_iff_evalₐ_one, natCast_dvd_iff_evalₐ_one]
    exact mul_eq_zero.1 h

end GlobalTheory.K5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.PrimeNatCastCompletedLaurentRingOfPrime =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.QNotPthPowInClosureAlgebraicPadicInt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.QNotPthPowInClosureAlgebraicPadicInt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DerivationEqZeroOfIsAlgebraicOverPadicIntegers\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsDerivationExtendPadicLaurentToClosure\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsEqPrimePowMulNotDvdCompletedLaurent\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMulLinearIndependentAlgebraicOverPadicInte\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMulMemSpanAlgebraicOverPadicIntegers\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQDerivationCompletionZp\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PrimeNatCastCompletedLaurentRingOfPrime\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

namespace GlobalTheory.K5.NotPow

theorem repr (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω] (h : IsClo p Ω) :
    ∀ b ∈ Subfield.closure (Set.range (algebraMap (O0 p) Ω) ∪ {x | IsAlgZp p x}),
    ∃ (n : ℕ) (a : Fin n → Ω) (f : Fin n → O0 p) (g : O0 p), (∀ i, IsAlgZp p (a i)) ∧
      LinearIndependent (O0 p) a ∧ g ≠ 0 ∧
      algebraMap (O0 p) Ω g * b = ∑ i, algebraMap (O0 p) Ω (f i) * a i := by
  intro b hb
  obtain ⟨g₁, hg₁, hy⟩ := _root_.GlobalTheory.K5.ReprSpan.exists_mul_mem_span p Ω h b hb
  obtain ⟨n, a, f, g₂, ha, hli, hg₂, he⟩ := _root_.GlobalTheory.K5.algSpan_reprInd p Ω h _ hy
  refine ⟨n, a, f, g₂ * g₁, ha, hli, mul_ne_zero hg₂ hg₁, ?_⟩
  rw [map_mul, mul_assoc, he]

theorem not_eigen (p : ℕ) [Fact p.Prime] (D : Derivation ℤ (O0 p) (O0 p)) (f g : O0 p)
    (hf : f ≠ 0) (hg : g ≠ 0) : (p : O0 p) * (g * D f - f * D g) ≠ g * f := by
  intro heq
  obtain ⟨a, f0, rfl, hf0⟩ := _root_.GlobalTheory.K5.Basic.exists_eq_prime_pow_mul_not_dvd_completedLaurent p f hf
  obtain ⟨c, g0, rfl, hg0⟩ := _root_.GlobalTheory.K5.Basic.exists_eq_prime_pow_mul_not_dvd_completedLaurent p g hg
  have hD : ∀ (k : ℕ) (y : O0 p), D ((p : O0 p) ^ k * y) = (p : O0 p) ^ k * D y := by
    intro k y
    rw [Derivation.leibniz, Derivation.leibniz_pow]
    have : D (p : O0 p) = 0 := by
      have := D.map_algebraMap (p : ℤ)
      simpa using this
    simp [this]
  rw [hD, hD] at heq
  have hp0 : (p : O0 p) ≠ 0 := (_root_.GlobalTheory.K5.prime_natCast_completedLaurentRing p).ne_zero
  have h2 : (p : O0 p) ^ (c + a) * ((p : O0 p) * (g0 * D f0 - f0 * D g0)) =
      (p : O0 p) ^ (c + a) * (g0 * f0) := by
    rw [pow_add]; linear_combination heq
  have h3 := mul_left_cancel₀ (pow_ne_zero _ hp0) h2
  have h4 : (p : O0 p) ∣ g0 * f0 := ⟨_, h3.symm⟩
  rcases (_root_.GlobalTheory.K5.prime_natCast_completedLaurentRing p).dvd_or_dvd h4 with h | h
  · exact hg0 h
  · exact hf0 h

theorem q_not_pow : ∀ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
    ∀ b ∈ Subfield.closure (Set.range (algebraMap (O0 p) Ω) ∪ {x | IsAlgZp p x}),
      b ^ p ≠ algebraMap (O0 p) Ω (qO p) := by
  intro p _ Ω _ _ h b hb hbp
  have hp : p.Prime := Fact.out
  haveI : CharZero Ω := Basic.charZero_of_isClo h
  obtain ⟨D, hDq, hDr⟩ := _root_.GlobalTheory.K5.QDer.exists_qDer p
  obtain ⟨E, hE⟩ := _root_.GlobalTheory.K5.DerExt.derivation_extend p Ω h D
  have hEr : ∀ r : ℤ_[p], E (algebraMap (O0 p) Ω (algebraMap ℤ_[p] (O0 p) r)) = 0 := by
    intro r; rw [hE, hDr, map_zero]
  have hEa := _root_.GlobalTheory.K5.DerAlg.der_algZp p Ω h E hEr
  have hq0 : algebraMap (O0 p) Ω (qO p) ≠ 0 :=
    ((Basic.isUnit_qO p).map (algebraMap (O0 p) Ω)).ne_zero
  have hb0 : b ≠ 0 := by
    rintro rfl; rw [zero_pow hp.ne_zero] at hbp; exact hq0 hbp.symm
  have hpΩ : (p : Ω) ≠ 0 := by exact_mod_cast hp.ne_zero

  have hEb : (p : Ω) * E b = b := by
    have h1 := congrArg E hbp
    rw [Derivation.leibniz_pow, hE, hDq, ← hbp] at h1
    have h2 : b ^ (p - 1) * ((p : Ω) * E b) = b ^ (p - 1) * b := by
      rw [← pow_succ, Nat.sub_add_cancel hp.one_lt.le]
      rw [nsmul_eq_mul, smul_eq_mul] at h1
      linear_combination h1
    exact mul_left_cancel₀ (pow_ne_zero _ hb0) h2
  obtain ⟨n, a, f, g, ha, hli, hg, hrep⟩ := repr p Ω h b hb
  set φ := algebraMap (O0 p) Ω with hφ
  have hEsum := congrArg E hrep

  rw [Derivation.leibniz, map_sum] at hEsum
  simp only [Derivation.leibniz, hEa _ (ha _), zero_add, smul_eq_mul, hE, mul_zero] at hEsum
  let c : Fin n → O0 p := fun i => g * f i + (p : O0 p) * D g * f i - (p : O0 p) * g * D (f i)

  have hc : ∑ i, c i • a i = 0 := by
    simp only [c, Algebra.smul_def, ← hφ, map_add (f := _), map_sub, map_mul, map_natCast]
    have e1 : ∑ i, (φ g * φ (f i) + (p : Ω) * φ (D g) * φ (f i) - (p : Ω) * φ g * φ (D (f i))) * a i
        = (φ g + (p : Ω) * φ (D g)) * ∑ i, φ (f i) * a i - (p : Ω) * φ g * ∑ i, a i * φ (D (f i)) := by
      rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun i _ => by ring
    rw [e1, ← hrep, ← hEsum]
    linear_combination -(φ g * φ g) * hEb
  have hc' := (Fintype.linearIndependent_iff.1 hli) c hc
  have : ∃ i, f i ≠ 0 := by
    by_contra hall
    push_neg at hall
    apply hb0
    have : φ g * b = 0 := by rw [hrep]; simp [hall]
    rcases mul_eq_zero.1 this with h0 | h0
    · exact absurd (h.inj (by rw [h0, map_zero])) hg
    · exact h0
  obtain ⟨i, hi⟩ := this
  apply not_eigen p D (f i) g hi hg
  have := hc' i
  simp only [c] at this
  linear_combination -this

end GlobalTheory.K5.NotPow
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.QNotPthPowInClosureAlgebraicPadicInt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsTopologicalGeneratorTauTower =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsTopologicalGeneratorTauTower", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Mathlib.FieldTheory.KrullTopology\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.QNotPthPowInClosureAlgebraicPadicInt\npublic import Mathlib.FieldTheory.KummerExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5 Polynomial IntermediateField

noncomputable section

namespace GlobalTheory.K5.TauGen

def geoF (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω] : Subfield Ω :=
  Subfield.closure (Set.range (algebraMap (O0 p) Ω) ∪ {x | IsAlgZp (p := p) x})

theorem isOpen_setOf_apply {F Ω : Type} [Field F] [Field Ω] [Algebra F Ω] [Algebra.IsAlgebraic F Ω]
    (x : Ω) (P : Ω → Prop) : IsOpen {σ : Ω ≃ₐ[F] Ω | P (σ x)} := by
  haveI : FiniteDimensional F F⟮x⟯ := adjoin.finiteDimensional (Algebra.IsIntegral.isIntegral (R := F) x)
  rw [isOpen_iff_mem_nhds]
  intro σ hσ
  have hU : IsOpen (((F⟮x⟯).fixingSubgroup : Subgroup (Ω ≃ₐ[F] Ω)) : Set (Ω ≃ₐ[F] Ω)) :=
    IntermediateField.fixingSubgroup_isOpen _
  have hV : IsOpen ((fun τ : Ω ≃ₐ[F] Ω => σ⁻¹ * τ) ⁻¹' ((F⟮x⟯).fixingSubgroup : Set (Ω ≃ₐ[F] Ω))) :=
    hU.preimage (continuous_const.mul continuous_id)
  refine Filter.mem_of_superset (hV.mem_nhds ?_) ?_
  · show σ⁻¹ * σ ∈ (F⟮x⟯).fixingSubgroup
    rw [inv_mul_cancel]; exact one_mem _
  · intro τ hτ
    have h1 := (mem_fixingSubgroup_iff _ _).1 hτ x (mem_adjoin_simple_self F x)
    have h2 : τ x = σ x := by
      have : σ⁻¹ (τ x) = x := h1
      calc τ x = σ (σ⁻¹ (τ x)) := by simp
        _ = σ x := by rw [this]
    show P (τ x)
    rw [h2]; exact hσ

theorem main : ∀ (p : ℕ) [Fact p.Prime], p ≠ 2 → ∀ (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
    ∀ T : Tower p Ω, ∃ τ ∈ Ggeo (p := p) Ω, ∀ n, τ (T.qq n) = T.ζ n * T.qq n := by
  intro p hp hp2 Ω _ _ hΩ T
  haveI := hΩ.clo
  haveI : CharZero Ω := Basic.charZero_of_isClo hΩ
  have hO : ∀ a : O0 p, algebraMap (O0 p) Ω a ∈ geoF p Ω := fun a =>
    Subfield.subset_closure (Or.inl ⟨a, rfl⟩)
  have hA : ∀ x : Ω, IsAlgZp (p := p) x → x ∈ geoF p Ω := fun x hx => Subfield.subset_closure (Or.inr hx)
  let F := geoF p Ω
  let φ : O0 p →+* F := (algebraMap (O0 p) Ω).codRestrict F hO
  have hφ : Function.Injective φ := fun a b h => hΩ.inj (congrArg Subtype.val h)
  have hcomp : (algebraMap F Ω).comp φ = algebraMap (O0 p) Ω := by ext a; rfl
  haveI hal : Algebra.IsAlgebraic F Ω := by
    constructor
    intro x
    obtain ⟨P, hP, hx⟩ := hΩ.alg.isAlgebraic x
    refine ⟨P.map φ, (Polynomial.map_ne_zero_iff hφ).2 hP, ?_⟩
    rw [aeval_def, eval₂_map, hcomp, ← aeval_def, hx]
  haveI : IsAlgClosure F Ω := ⟨inferInstance, hal⟩
  haveI : IsGalois F Ω := {}
  haveI : CompactSpace (Ω ≃ₐ[F] Ω) := inferInstance
  let q' : F := ⟨algebraMap (O0 p) Ω (qO p), hO _⟩
  have hirr : ∀ n, Irreducible (X ^ (p ^ n) - C q') := fun n =>
    irreducible_X_pow_sub_C_of_prime_pow_of_ne_two hp.out hp2 n (fun b hb =>
      _root_.GlobalTheory.K5.NotPow.q_not_pow p Ω hΩ (b : Ω) b.2 (by rw [← SubmonoidClass.coe_pow, hb]))
  have hmin : ∀ n (y : Ω), y ^ (p ^ n) = algebraMap (O0 p) Ω (qO p) → minpoly F y = X ^ (p ^ n) - C q' := by
    intro n y hy
    refine (minpoly.eq_of_irreducible_of_monic (hirr n) ?_ (monic_X_pow_sub_C _ (pow_ne_zero _ hp.out.ne_zero))).symm
    simp only [map_sub, map_pow, aeval_X, aeval_C, hy]
    exact sub_self _
  let S : ℕ → Set (Ω ≃ₐ[F] Ω) := fun n => {σ | σ (T.qq n) = T.ζ n * T.qq n}
  have hne : ∀ n, (S n).Nonempty := by
    intro n
    have h1 := hmin n (T.qq n) (Basic.qq_pow T n)
    have h2 := hmin n (T.ζ n * T.qq n) (by rw [mul_pow, (T.prim n).pow_eq_one, one_mul, Basic.qq_pow T n])
    obtain ⟨σ, hσ⟩ := (Normal.minpoly_eq_iff_mem_orbit (F := F) Ω).1 (h2.trans h1.symm)
    exact ⟨σ, hσ⟩
  have hdec : ∀ n, S (n + 1) ⊆ S n := by
    intro n σ hσ
    show σ (T.qq n) = T.ζ n * T.qq n
    have hσ' : σ (T.qq (n + 1)) = T.ζ (n + 1) * T.qq (n + 1) := hσ
    rw [← T.qpow n, map_pow, hσ', mul_pow, T.ζpow, T.qpow]
  have hcl : ∀ n, IsClosed (S n) := by
    intro n
    rw [← isOpen_compl_iff]
    exact isOpen_setOf_apply (F := F) (T.qq n) (fun y => ¬ y = T.ζ n * T.qq n)
  obtain ⟨σ, hσ⟩ := IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed S hdec hne
    (hcl 0).isCompact hcl
  rw [Set.mem_iInter] at hσ
  let τ : Gal p Ω :=
    { σ.toRingEquiv with
      commutes' := fun a => σ.commutes (⟨algebraMap (O0 p) Ω a, hO a⟩ : F) }
  refine ⟨τ, fun x hx => σ.commutes (⟨x, hA x hx⟩ : F), fun n => hσ n⟩

end GlobalTheory.K5.TauGen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsTopologicalGeneratorTauTower =====
