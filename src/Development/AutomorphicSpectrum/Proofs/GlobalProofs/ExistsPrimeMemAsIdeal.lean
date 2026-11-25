module

public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas
public import ReciprocityTheory.Hypotheses.GalCoh
public import Formalism.GaloisCohomology.StatementLoc
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DecompositionGroupMulEquivLocalGaloisCyclotomic
public import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmp
public import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohField
public import GroundTheory.ProfiniteCohomology.LocalTateDuality.TensorHomDualRepRootsOfUnityIsoCartierPairing
public import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.Transport
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.LocalRingCardinality.SpanPowerMembership.Places

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaD, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsPrimeMemAsIdeal

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaD =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaD", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Bl.FirstLemmaD

end Bl.FirstLemmaD
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaD =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsPrimeMemAsIdeal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsPrimeMemAsIdeal", "h": "module\n\npublic import ReciprocityTheory.Hypotheses.GalCoh\npublic import Formalism.GaloisCohomology.StatementLoc\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DecompositionGroupMulEquivLocalGaloisCyclotomic\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaD\npublic import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmp\npublic import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohField\npublic import GroundTheory.ProfiniteCohomology.LocalTateDuality.TensorHomDualRepRootsOfUnityIsoCartierPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.Transport\nimport Formalism.LocalRingCardinality.SpanPowerMembership.Places\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory GroundTheory.ProfCoh ReciprocityTheory.Gal ValuativeRel Formalism.GaloisCohomology NumberField IsDedekindDomain Formalism.ConjugateSelfDual

namespace GlobalTheory.CompanionTheory.Hypotheses₂

theorem exists_prime_mem_asIdeal {F : Type} [Field F] [NumberField F]
    (v : HeightOneSpectrum (𝓞 F)) : ∃ p : ℕ, p.Prime ∧ ((p : ℕ) : 𝓞 F) ∈ v.asIdeal :=
  _root_.Formalism.BasicNotions.Examples₂.PlacesToy.exists_prime_mem v

theorem finCd2_GK (p : ℕ) [Fact p.Prime] (K : IntermediateField ℚ_[p] (PadicAlgCl p))
    (hK : FiniteDimensional ℚ_[p] K) (R : Type) [CommRing R] (M : Type) [AddCommGroup M]
    [Module R M] [Finite M] [TopologicalSpace M] [DiscreteTopology M]
    (rho : Representation R (GK p K) M) (hrho : ContAction rho) :
    Finite (H0 rho) ∧ Finite (H1 rho) ∧ Finite (H2 rho) ∧
      ∀ n, 3 ≤ n → Subsingleton (Hn rho n) := by
  obtain ⟨hsep, _, _, hloc, -⟩ := CompanionTheory.LocalTateOrthogonality.Gcoh.gcField p K hK
  have : CharZero K := algebraRat.charZero K
  obtain ⟨A, _, e, he⟩ := CompanionTheory.LocalTateOrthogonality.Gcoh.gcRep (GK p K) R M rho hrho
  have : Finite A := Finite.of_equiv _ e.toEquiv
  have hn : ((Nat.card A : ℕ) : K) ≠ 0 := Nat.cast_ne_zero.2 Nat.card_pos.ne'
  obtain ⟨e0, -⟩ := CompanionTheory.LocalTateOrthogonality.Gcoh.gc0 (GK p K) R M rho A e he
  obtain ⟨e1, -⟩ := CompanionTheory.LocalTateOrthogonality.Gcoh.gc1 (GK p K) R M rho A e he
  obtain ⟨e2, -⟩ := CompanionTheory.LocalTateOrthogonality.Gcoh.gc2 (GK p K) R M rho A e he
  have := finite_cohomology_localField A hn 0
  have := finite_cohomology_localField A hn 1
  have := finite_cohomology_localField A hn 2
  refine ⟨Finite.of_equiv _ e0.symm.toEquiv, Finite.of_equiv _ e1.symm.toEquiv,
    Finite.of_equiv _ e2.symm.toEquiv, fun n h => ?_⟩
  obtain ⟨en⟩ := CompanionTheory.LocalTateOrthogonality.Gcoh.gcn (GK p K) R M rho A e he n
  have := subsingleton_cohomology_localField A hn n h
  exact en.toEquiv.subsingleton

theorem localFiniteness : ReciprocityTheory.Gal.LocalFiniteness := by
  intro F Ω _ _ _ _ _ l _ r M _ _ _ _ _ A rho v _ hA hc
  obtain ⟨p, hp, hpv⟩ := exists_prime_mem_asIdeal v
  haveI : Fact p.Prime := ⟨hp⟩
  obtain ⟨K, hK, e, he, he', -⟩ := GlobalTheory.DecLocal.exists_mulEquiv_cyc F Ω p v A hpv hA
  let E : GK p K ≃ₜ* Dec (F := F) A :=
    { e.symm with continuous_toFun := he', continuous_invFun := he }
  have h : ReciprocityTheory.Neutral.Bridge.FinCd2 (rho.comp (E : GK p K →* Dec (F := F) A)) :=
    finCd2_GK p K hK _ M _ (ReciprocityTheory.Neutral.Bridge.contAction_comp E hc)
  exact ReciprocityTheory.Neutral.Bridge.FinCd2.of_comp E h

end GlobalTheory.CompanionTheory.Hypotheses₂
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsPrimeMemAsIdeal =====
