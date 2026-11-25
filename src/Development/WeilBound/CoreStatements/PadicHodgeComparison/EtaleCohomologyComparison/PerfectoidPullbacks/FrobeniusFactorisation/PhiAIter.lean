module

public import Mathlib.Algebra.DirectSum.Basic
public import Mathlib.Data.Nat.Prime.Defs
public import Mathlib.RingTheory.AdicCompletion.Basic
public import Mathlib.RingTheory.LocalRing.Defs
public import Mathlib.Algebra.Module.PID
public import Mathlib.LinearAlgebra.TensorProduct.Prod
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens
public import Mathlib.RingTheory.Flat.Basic
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp
public import Mathlib.RingTheory.Artinian.Defs
public import Mathlib.RingTheory.Noetherian.Defs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.InstAddCommGroup
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ArtinianLimitLiftOfCompatible
public import Mathlib.RingTheory.FiniteLength
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteLengthOfLseqFirst
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LimitDivisibleOfVanishingLevelStatement
public import Mathlib.RingTheory.AdicCompletion.Functoriality
public import ReciprocityTheory.GroupCohomology.FinGen
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.BWMorL
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.OB
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TeichmullerCongruence
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StableCoverCechVanishing
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StdSomeZero
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.NuPull
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.LsSeqEq
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.SmoothModelFiniteLengthLink
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TensorQuotientTorsionFreeComplete
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
import Mathlib.LinearAlgebra.FreeProduct.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.Tactic.TypeStar
import Mathlib.RingTheory.AdicCompletion.Completeness
import Mathlib.RingTheory.Coalgebra.CoassocSimps
import Mathlib.RingTheory.RegularLocalRing.Defs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAdicCompleteOfPowSmulEqZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AdicCompleteTensorFinite, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatBaseChangeLimitSystem, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.ExistsAlpha, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BoundedCokernelLimitToLevel, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModuleFiniteLimitOfLseq, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrisZeroSurjective, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatAcrisTruncatedWitt, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatAcrisTruncatedWittStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NilpotentIdentityMorphismCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothModelTensorWittComparison, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.BcTens, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PhiAIter

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAdicCompleteOfPowSmulEqZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAdicCompleteOfPowSmulEqZero", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TensorQuotientTorsionFreeComplete\npublic import Mathlib.Algebra.DirectSum.Basic\npublic import Mathlib.Data.Nat.Prime.Defs\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Mathlib.RingTheory.LocalRing.Defs\npublic import Mathlib.Algebra.Module.PID\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.FreeProduct.Basic\npublic import Mathlib.LinearAlgebra.TensorProduct.Prod\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct

noncomputable section

namespace GlobalTheory.CompanionTheory.TensorComplete

section Elementary

variable {A : Type} [CommRing A] (π : A)

theorem isAdicComplete_span_iff {M : Type} [AddCommGroup M] [Module A M] :
    IsAdicComplete (Ideal.span {π}) M ↔
      (∀ x : M, (∀ n : ℕ, ∃ z : M, π ^ n • z = x) → x = 0) ∧
      ∀ u : ℕ → M, (∀ n : ℕ, ∃ z : M, π ^ n • z = u n - u (n + 1)) →
        ∃ L : M, ∀ n : ℕ, ∃ z : M, π ^ n • z = u n - L := by
  apply GlobalTheory.XiQuotient.isAdicComplete_iff

variable {π}

theorem isAdicComplete_of_linearEquiv {M M' : Type} [AddCommGroup M] [Module A M]
    [AddCommGroup M'] [Module A M'] (e : M ≃ₗ[A] M')
    (h : IsAdicComplete (Ideal.span {π}) M) : IsAdicComplete (Ideal.span {π}) M' := by
  obtain ⟨h1, h2⟩ := (isAdicComplete_span_iff π).1 h
  refine (isAdicComplete_span_iff π).2 ⟨fun x hx => ?_, fun u hu => ?_⟩
  · have : e.symm x = 0 := h1 _ fun n => by
      obtain ⟨z, hz⟩ := hx n
      exact ⟨e.symm z, by rw [← map_smul, hz]⟩
    simpa using this
  · obtain ⟨L, hL⟩ := h2 (fun n => e.symm (u n)) fun n => by
      obtain ⟨z, hz⟩ := hu n
      exact ⟨e.symm z, by rw [← map_smul, hz, map_sub]⟩
    refine ⟨e L, fun n => ?_⟩
    obtain ⟨z, hz⟩ := hL n
    exact ⟨e z, by rw [← map_smul, hz, map_sub, LinearEquiv.apply_symm_apply]⟩

theorem isAdicComplete_prod {M M' : Type} [AddCommGroup M] [Module A M]
    [AddCommGroup M'] [Module A M'] (h : IsAdicComplete (Ideal.span {π}) M)
    (h' : IsAdicComplete (Ideal.span {π}) M') : IsAdicComplete (Ideal.span {π}) (M × M') := by
  obtain ⟨h1, h2⟩ := (isAdicComplete_span_iff π).1 h
  obtain ⟨h1', h2'⟩ := (isAdicComplete_span_iff π).1 h'
  refine (isAdicComplete_span_iff π).2 ⟨fun x hx => ?_, fun u hu => ?_⟩
  · refine Prod.ext (h1 _ fun n => ?_) (h1' _ fun n => ?_)
    · obtain ⟨z, hz⟩ := hx n
      exact ⟨z.1, by rw [← hz]; rfl⟩
    · obtain ⟨z, hz⟩ := hx n
      exact ⟨z.2, by rw [← hz]; rfl⟩
  · obtain ⟨L, hL⟩ := h2 (fun n => (u n).1) fun n => by
      obtain ⟨z, hz⟩ := hu n
      exact ⟨z.1, by simpa using congrArg Prod.fst hz⟩
    obtain ⟨L', hL'⟩ := h2' (fun n => (u n).2) fun n => by
      obtain ⟨z, hz⟩ := hu n
      exact ⟨z.2, by simpa using congrArg Prod.snd hz⟩
    refine ⟨(L, L'), fun n => ?_⟩
    obtain ⟨z, hz⟩ := hL n
    obtain ⟨z', hz'⟩ := hL' n
    exact ⟨(z, z'), Prod.ext hz hz'⟩

theorem isAdicComplete_fin_pi {M : Type} [AddCommGroup M] [Module A M]
    (h : IsAdicComplete (Ideal.span {π}) M) (n : ℕ) :
    IsAdicComplete (Ideal.span {π}) (Fin n → M) := by
  obtain ⟨h1, h2⟩ := (isAdicComplete_span_iff π).1 h
  refine (isAdicComplete_span_iff π).2 ⟨fun x hx => ?_, fun u hu => ?_⟩
  · funext i
    refine h1 _ fun k => ?_
    obtain ⟨z, hz⟩ := hx k
    exact ⟨z i, by rw [← hz]; rfl⟩
  · choose z hz using hu
    have key : ∀ i : Fin n, ∃ L : M, ∀ k : ℕ, ∃ w : M, π ^ k • w = u k i - L := fun i =>
      h2 (fun k => u k i) fun k => ⟨z k i, by simpa using congrFun (hz k) i⟩
    choose L hL using key
    refine ⟨L, fun k => ?_⟩
    choose w hw using fun i => hL i k
    exact ⟨w, funext hw⟩

theorem isAdicComplete_of_pow_smul_eq_zero {M : Type} [AddCommGroup M] [Module A M] (E : ℕ)
    (h : ∀ x : M, π ^ E • x = 0) : IsAdicComplete (Ideal.span {π}) M := by
  refine (isAdicComplete_span_iff π).2 ⟨fun x hx => ?_, fun u hu => ?_⟩
  · obtain ⟨z, rfl⟩ := hx E
    exact h z
  · have tel : ∀ n k : ℕ, ∃ z : M, π ^ n • z = u n - u (n + k) := by
      intro n k
      induction k with
      | zero => exact ⟨0, by simp⟩
      | succ k ih =>
        obtain ⟨z, hz⟩ := ih
        obtain ⟨w, hw⟩ := hu (n + k)
        refine ⟨z + π ^ k • w, ?_⟩
        rw [smul_add, smul_smul, ← pow_add, hz, hw, ← add_assoc]
        abel
    refine ⟨u E, fun n => ?_⟩
    obtain ⟨z, hz⟩ := tel n E
    obtain ⟨w, hw⟩ := tel E n
    rw [h w, add_comm E n] at hw
    refine ⟨z, ?_⟩
    rw [hz, ← sub_eq_zero.1 hw.symm]

end Elementary

section Tensor

variable {R : Type} [CommRing R] [IsDomain R] [IsPrincipalIdealRing R] [IsLocalRing R]

theorem irreducible_dvd_of_not_isUnit {q r : R} (hq : Irreducible q) (hr : ¬IsUnit r) : q ∣ r := by
  have hmax : (Ideal.span {q}).IsMaximal := PrincipalIdealRing.isMaximal_of_irreducible hq
  have heq : Ideal.span {q} = IsLocalRing.maximalIdeal R := IsLocalRing.eq_maximalIdeal hmax
  rw [← Ideal.mem_span_singleton, heq]
  exact (IsLocalRing.mem_maximalIdeal r).2 hr

theorem exists_pow_smul_directSum_eq_zero {ι : Type} [Fintype ι] (q : ι → R)
    (hq : ∀ i, Irreducible (q i)) (e : ι → ℕ) {r : R} (hr : ¬IsUnit r) :
    ∃ E : ℕ, ∀ x : DirectSum ι (fun i => R ⧸ Submodule.span R {q i ^ e i}), r ^ E • x = 0 := by
  classical
  refine ⟨∑ i, e i, fun x => ?_⟩
  refine DFinsupp.ext fun i => ?_
  have hmem : r ^ (∑ i, e i) ∈ Submodule.span R {q i ^ e i} := by
    rw [Submodule.mem_span_singleton]
    have h1 : q i ^ e i ∣ r ^ (∑ i, e i) :=
      (pow_dvd_pow_of_dvd (irreducible_dvd_of_not_isUnit (hq i) hr) (e i)).trans
        (pow_dvd_pow r (Finset.single_le_sum (fun _ _ => Nat.zero_le _) (Finset.mem_univ i)))
    obtain ⟨c, hc⟩ := h1
    exact ⟨c, by rw [hc, smul_eq_mul, mul_comm]⟩
  obtain ⟨y, hy⟩ := Submodule.Quotient.mk_surjective _ (x i)
  change r ^ (∑ i, e i) • x i = 0
  rw [← hy, ← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero]
  simpa [smul_eq_mul, mul_comm] using Submodule.smul_mem _ y hmem

theorem pow_natCast_smul_tensor_eq_zero {O T : Type} [CommRing O] [Algebra R O] [AddCommGroup T]
    [Module R T] (p E : ℕ) (h : ∀ x : T, (p : R) ^ E • x = 0) (t : O ⊗[R] T) :
    (p : O) ^ E • t = 0 := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | tmul o x =>
    have h1 : (p : O) ^ E * o = (p : R) ^ E • o := by
      rw [Algebra.smul_def, map_pow, map_natCast]
    rw [TensorProduct.smul_tmul', smul_eq_mul, h1, TensorProduct.smul_tmul, h x,
      TensorProduct.tmul_zero]
  | add a b ha hb => rw [smul_add, ha, hb, add_zero]

end Tensor

theorem isAdicComplete_tensor : ∀ (p : ℕ) [Fact p.Prime] (R O : Type) [CommRing R] [IsDomain R]
    [IsPrincipalIdealRing R] [IsLocalRing R] [CommRing O] [Algebra R O]
    [IsAdicComplete (Ideal.span {(p : O)}) O],
    (p : R) ≠ 0 → ¬IsUnit (p : R) →
    ∀ (N : Type) [AddCommGroup N] [Module R N] [Module.Finite R N],
      IsAdicComplete (Ideal.span {(p : O)}) (O ⊗[R] N) := by
  intro p _ R O _ _ _ _ _ _ _ hp1 hp2 N _ _ _
  obtain ⟨n, ι, _, q, hq, e, ⟨f⟩⟩ := Module.equiv_free_prod_directSum (R := R) (M := N)
  obtain ⟨E, hE⟩ := exists_pow_smul_directSum_eq_zero q hq e hp2
  have hfree : IsAdicComplete (Ideal.span {(p : O)}) (O ⊗[R] (Fin n →₀ R)) :=
    isAdicComplete_of_linearEquiv
      ((Finsupp.linearEquivFunOnFinite O O (Fin n)).symm.trans
        (TensorProduct.finsuppScalarRight R O O (Fin n)).symm)
      (isAdicComplete_fin_pi inferInstance n)
  have htors : IsAdicComplete (Ideal.span {(p : O)})
      (O ⊗[R] DirectSum ι (fun i => R ⧸ Submodule.span R {q i ^ e i})) :=
    isAdicComplete_of_pow_smul_eq_zero E (pow_natCast_smul_tensor_eq_zero p E hE)
  exact isAdicComplete_of_linearEquiv
    ((TensorProduct.prodRight R O O _ _).symm.trans
      (TensorProduct.AlgebraTensorModule.congr (LinearEquiv.refl O O) f).symm)
    (isAdicComplete_prod hfree htors)

end GlobalTheory.CompanionTheory.TensorComplete
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAdicCompleteOfPowSmulEqZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AdicCompleteTensorFinite =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AdicCompleteTensorFinite", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAdicCompleteOfPowSmulEqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct

namespace GlobalTheory.CompanionTheory.TensorCompleteFinite

open GlobalTheory.CompanionTheory.TensorComplete

theorem isAdicComplete_of_linearEquiv_univ {A : Type} [CommRing A] {π : A} {M : Type} {M' : Type 1}
    [AddCommGroup M] [Module A M] [AddCommGroup M'] [Module A M'] (e : M ≃ₗ[A] M')
    (h : IsAdicComplete (Ideal.span {π}) M) : IsAdicComplete (Ideal.span {π}) M' := by
  have hM : ∀ (n : ℕ) (x : M), x ∈ (Ideal.span {π} ^ n • ⊤ : Submodule A M) →
      e x ∈ (Ideal.span {π} ^ n • ⊤ : Submodule A M') := by
    intro n x hx
    have h1 : (Ideal.span {π} ^ n • ⊤ : Submodule A M).map (e : M →ₗ[A] M') ≤
        Ideal.span {π} ^ n • ⊤ := by
      rw [Submodule.map_smul'']
      exact Submodule.smul_mono le_rfl le_top
    exact h1 (Submodule.mem_map_of_mem hx)
  have hM' : ∀ (n : ℕ) (x : M'), x ∈ (Ideal.span {π} ^ n • ⊤ : Submodule A M') →
      e.symm x ∈ (Ideal.span {π} ^ n • ⊤ : Submodule A M) := by
    intro n x hx
    have h1 : (Ideal.span {π} ^ n • ⊤ : Submodule A M').map (e.symm : M' →ₗ[A] M) ≤
        Ideal.span {π} ^ n • ⊤ := by
      rw [Submodule.map_smul'']
      exact Submodule.smul_mono le_rfl le_top
    exact h1 (Submodule.mem_map_of_mem hx)
  refine { haus' := ?_, prec' := ?_ }
  · intro x hx
    have h0 : e.symm x = 0 := by
      refine h.toIsHausdorff.haus' (e.symm x) (fun n => ?_)
      rw [SModEq.sub_mem, sub_zero]
      have hx' := (SModEq.sub_mem).mp (hx n)
      rw [sub_zero] at hx'
      exact hM' n x hx'
    simpa using congrArg e h0
  · intro f hf
    obtain ⟨L, hL⟩ := h.toIsPrecomplete.prec' (fun n => e.symm (f n)) (fun {m n} hmn => by
      rw [SModEq.sub_mem, ← map_sub]
      exact hM' m _ ((SModEq.sub_mem).mp (hf hmn)))
    refine ⟨e L, fun n => ?_⟩
    rw [SModEq.sub_mem]
    have h2 := hM n _ ((SModEq.sub_mem).mp (hL n))
    rwa [map_sub, LinearEquiv.apply_symm_apply] at h2

theorem isAdicComplete_tensor_finite : ∀ (W : Type) [CommRing W] [IsDomain W]
    [IsDiscreteValuationRing W] (l : ℕ), Irreducible (l : W) →
    ∀ (A : Type) [CommRing A] [Algebra W A] [IsAdicComplete (Ideal.span {(l : A)}) A]
      (L : Type 1) [AddCommGroup L] [Module W L] [Module.Finite W L],
      IsAdicComplete (Ideal.span {(l : A)}) (A ⊗[W] L) := by
  intro W _ _ _ l hl A _ _ hA L _ _ _
  have hl0 : l ≠ 0 := by
    rintro rfl
    exact hl.ne_zero Nat.cast_zero
  obtain ⟨p, hpmem, hpu⟩ : ∃ p ∈ l.primeFactorsList, ¬IsUnit (p : W) := by
    by_contra hcon
    push_neg at hcon
    apply hl.1
    rw [← Nat.prod_primeFactorsList hl0, Nat.cast_list_prod]
    refine List.prod_isUnit (fun m hm => ?_)
    obtain ⟨q, hq, rfl⟩ := List.mem_map.mp hm
    exact hcon q hq
  have hp : p.Prime := Nat.prime_of_mem_primeFactorsList hpmem
  obtain ⟨m, hm⟩ := Nat.dvd_of_mem_primeFactorsList hpmem
  have hmu : IsUnit (m : W) := by
    have h := hl.isUnit_or_isUnit (show (l : W) = (p : W) * (m : W) by rw [hm, Nat.cast_mul])
    exact h.resolve_left hpu
  have hmA : IsUnit (m : A) := by
    have h := hmu.map (algebraMap W A)
    rwa [map_natCast] at h
  have hI : Ideal.span {(l : A)} = Ideal.span {(p : A)} := by
    rw [hm, Nat.cast_mul, Ideal.span_singleton_mul_right_unit hmA]
  have hp0 : (p : W) ≠ 0 := by
    intro h
    apply hl.ne_zero
    rw [hm, Nat.cast_mul, h, zero_mul]
  haveI : Fact p.Prime := ⟨hp⟩
  haveI hA' : IsAdicComplete (Ideal.span {(p : A)}) A := by
    rw [← hI]
    exact hA
  obtain ⟨n, f, hf⟩ := Module.Finite.exists_fin' W L
  have hN := isAdicComplete_tensor p W A hp0 hpu ((Fin n → W) ⧸ LinearMap.ker f)
  rw [hI]
  exact isAdicComplete_of_linearEquiv_univ
    (TensorProduct.AlgebraTensorModule.congr (LinearEquiv.refl A A)
      (f.quotKerEquivOfSurjective hf)) hN

end GlobalTheory.CompanionTheory.TensorCompleteFinite
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AdicCompleteTensorFinite =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatBaseChangeLimitSystem =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatBaseChangeLimitSystem", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.Flat.Basic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AdicCompleteTensorFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison CrystallineSemistableComparison.Tw

namespace GlobalTheory.CompanionTheory.TowerExt

section
variable {W : Type} [CommRing W] (l : ℕ) {A : Type} [CommRing A] [Algebra W A]
  {M : Type*} [AddCommGroup M] [Module W M]

theorem pow_smul_tmul (n : ℕ) (a : A) (m : M) :
    ((l : A) ^ n) • (a ⊗ₜ[W] m) = a ⊗ₜ[W] (((l : W) ^ n) • m) := by
  have h : ((l : W) ^ n) • a = (l : A) ^ n * a := by
    rw [Algebra.smul_def, map_pow, map_natCast]
  rw [← TensorProduct.smul_tmul, h, TensorProduct.smul_tmul', smul_eq_mul]

theorem pow_smul_eq_zero (n : ℕ) (h : ∀ x : M, ((l : W) ^ n) • x = 0) (t : A ⊗[W] M) :
    ((l : A) ^ n) • t = 0 := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | tmul a m => rw [pow_smul_tmul, h, TensorProduct.tmul_zero]
  | add x y hx hy => rw [smul_add, hx, hy, add_zero]

theorem lTensor_pow_smul (n : ℕ) (v : A ⊗[W] M) :
    LinearMap.lTensor A (((l : W) ^ n) • (LinearMap.id : M →ₗ[W] M)) v = ((l : A) ^ n) • v := by
  induction v using TensorProduct.induction_on with
  | zero => simp
  | tmul a x =>
    rw [pow_smul_tmul, LinearMap.lTensor_tmul]
    rfl
  | add x y hx hy => rw [map_add (f := _), hx, hy, smul_add]

theorem mem_pow_smul_top {N : Type*} [AddCommGroup N] [Module A N] (n : ℕ) (v : N) :
    v ∈ ((Ideal.span {(l : A)}) ^ n • ⊤ : Submodule A N) ↔ ∃ u : N, v = ((l : A) ^ n) • u := by
  rw [Ideal.span_singleton_pow, Submodule.ideal_span_singleton_smul,
    Submodule.mem_smul_pointwise_iff_exists]
  constructor
  · rintro ⟨u, -, rfl⟩
    exact ⟨u, rfl⟩
  · rintro ⟨u, rfl⟩
    exact ⟨u, Submodule.mem_top, rfl⟩
end

section
variable {W : Type} [CommRing W] (l : ℕ) (S : Sys.{1} W) (A : Type) [CommRing A] [Algebra W A]

theorem r_baseChange_pr (n : ℕ) (w : A ⊗[W] S.lim) :
    (S.r n).baseChange A ((pr S (n + 1)).baseChange A w) = (pr S n).baseChange A w := by
  induction w using TensorProduct.induction_on with
  | zero => simp
  | tmul a x =>
    have hx : S.r n (x.1 (n + 1)) = x.1 n := x.2 n
    simp only [LinearMap.baseChange_tmul]
    change a ⊗ₜ[W] S.r n (x.1 (n + 1)) = a ⊗ₜ[W] x.1 n
    rw [hx]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem exists_eq_pow_smul [Module.Flat W A] (n : ℕ)
    (hkill : ∀ (x : S.M n), ((l : W) ^ n) • x = 0)
    (hker : ∀ (x : S.lim), x.1 n = 0 → ∃ y : S.lim, x = ((l : W) ^ n) • y)
    (w : A ⊗[W] S.lim) (hw : (pr S n).baseChange A w = 0) :
    ∃ v : A ⊗[W] S.lim, w = ((l : A) ^ n) • v := by
  have hex : Function.Exact (((l : W) ^ n) • (LinearMap.id : S.lim →ₗ[W] S.lim)) (pr S n) := by
    intro x
    constructor
    · intro hx
      obtain ⟨y, rfl⟩ := hker x hx
      exact ⟨y, rfl⟩
    · rintro ⟨y, rfl⟩
      change (pr S n) (((l : W) ^ n) • y) = 0
      rw [map_smul]
      exact hkill _
  have hw' : (LinearMap.lTensor A (pr S n)) w = 0 := by
    rw [← LinearMap.baseChange_eq_ltensor]
    exact hw
  obtain ⟨v, rfl⟩ := (Module.Flat.lTensor_exact A hex w).1 hw'
  exact ⟨v, lTensor_pow_smul l n v⟩

theorem baseChange_pr_pow_smul (n : ℕ) (hkill : ∀ (x : S.M n), ((l : W) ^ n) • x = 0)
    (u : A ⊗[W] S.lim) : (pr S n).baseChange A (((l : A) ^ n) • u) = 0 := by
  rw [map_smul]
  exact pow_smul_eq_zero l n hkill _

theorem exists_baseChange_pr_eq (n c : ℕ)
    (hcok : ∀ (x : S.M n), ∃ y : S.lim, y.1 n = ((l : W) ^ c) • x) (t : A ⊗[W] S.M n) :
    ∃ w : A ⊗[W] S.lim, (pr S n).baseChange A w = ((l : A) ^ c) • t := by
  induction t using TensorProduct.induction_on with
  | zero => exact ⟨0, by simp⟩
  | tmul a m =>
    obtain ⟨y, hy⟩ := hcok m
    refine ⟨a ⊗ₜ[W] y, ?_⟩
    rw [pow_smul_tmul, ← hy, LinearMap.baseChange_tmul]
    rfl
  | add x y hx hy =>
    obtain ⟨w₁, h₁⟩ := hx
    obtain ⟨w₂, h₂⟩ := hy
    exact ⟨w₁ + w₂, by rw [map_add (f := _), h₁, h₂, smul_add]⟩

theorem eq_zero_of_baseChange_pr [Module.Flat W A]
    [IsHausdorff (Ideal.span {(l : A)}) (A ⊗[W] S.lim)]
    (hkill : ∀ n (x : S.M n), ((l : W) ^ n) • x = 0)
    (hker : ∀ n (x : S.lim), x.1 n = 0 → ∃ y : S.lim, x = ((l : W) ^ n) • y)
    (w : A ⊗[W] S.lim) (hw : ∀ n, (pr S n).baseChange A w = 0) : w = 0 := by
  refine IsHausdorff.haus (I := Ideal.span {(l : A)}) inferInstance w fun n => ?_
  rw [SModEq.sub_mem, sub_zero, mem_pow_smul_top]
  exact exists_eq_pow_smul l S A n (hkill n) (hker n) w (hw n)

theorem exists_lift [Module.Flat W A]
    [IsPrecomplete (Ideal.span {(l : A)}) (A ⊗[W] S.lim)] (c : ℕ)
    (hkill : ∀ n (x : S.M n), ((l : W) ^ n) • x = 0)
    (hker : ∀ n (x : S.lim), x.1 n = 0 → ∃ y : S.lim, x = ((l : W) ^ n) • y)
    (hcok : ∀ n (x : S.M n), ∃ y : S.lim, y.1 n = ((l : W) ^ c) • x)
    (z : ∀ n, A ⊗[W] S.M n) (hz : ∀ n, (S.r n).baseChange A (z (n + 1)) = z n) :
    ∃ w : A ⊗[W] S.lim, ∀ n, (pr S n).baseChange A w = ((l : A) ^ c) • z n := by
  choose f hf using fun n => exists_baseChange_pr_eq l S A n c (hcok n) (z n)
  have hstep : ∀ n, f n ≡ f (n + 1) [SMOD ((Ideal.span {(l : A)}) ^ n • ⊤ : Submodule A (A ⊗[W] S.lim))] := by
    intro n
    rw [SModEq.sub_mem, mem_pow_smul_top]
    refine exists_eq_pow_smul l S A n (hkill n) (hker n) _ ?_
    rw [map_sub, ← r_baseChange_pr S A n (f (n + 1)), hf (n + 1), map_smul, hz, hf n, sub_self]
  have hmono : ∀ {m n : ℕ}, m ≤ n →
      f m ≡ f n [SMOD ((Ideal.span {(l : A)}) ^ m • ⊤ : Submodule A (A ⊗[W] S.lim))] := by
    intro m n hmn
    induction n, hmn using Nat.le_induction with
    | base => rfl
    | succ n hmn ih =>
      refine ih.trans ?_
      rw [SModEq.sub_mem] at *
      exact Submodule.smul_mono_left (Ideal.pow_le_pow_right hmn) ((SModEq.sub_mem).1 (hstep n))
  obtain ⟨L, hL⟩ := IsPrecomplete.prec (I := Ideal.span {(l : A)}) inferInstance hmono
  refine ⟨L, fun n => ?_⟩
  have h := hL n
  rw [SModEq.sub_mem, mem_pow_smul_top] at h
  obtain ⟨u, hu⟩ := h
  have h0 : (pr S n).baseChange A (f n - L) = 0 := by
    rw [hu]
    exact baseChange_pr_pow_smul l S A n (hkill n) u
  rw [map_sub, sub_eq_zero, hf n] at h0
  exact h0.symm

end

theorem limit_extension_upTo : ∀ (W : Type) [CommRing W] [IsDomain W] [IsDiscreteValuationRing W] (l : ℕ), Irreducible (l : W) → ∀ (S : Sys.{1} W) (c : ℕ), Module.Finite W S.lim → (∀ n (x : S.M n), ((l : W) ^ n) • x = 0) → (∀ n (x : S.lim), x.1 n = 0 → ∃ y : S.lim, x = ((l : W) ^ n) • y) → (∀ n (x : S.M n), ∃ y : S.lim, y.1 n = ((l : W) ^ c) • x) → ∀ (A : Type) [CommRing A] [Algebra W A] [Module.Flat W A] [IsAdicComplete (Ideal.span {(l : A)}) A], (∀ w : A ⊗[W] S.lim, (∀ n, (pr S n).baseChange A w = 0) → w = 0) ∧ ∃ α : (tens A S).lim →ₗ[A] A ⊗[W] S.lim, ∀ z n, (pr S n).baseChange A (α z) = ((l : A) ^ c) • (z.1 n : A ⊗[W] S.M n) := by
  intro W _ _ _ l hl S c hfin hkill hker hcok A _ _ _ _
  haveI hcompl : IsAdicComplete (Ideal.span {(l : A)}) (A ⊗[W] S.lim) :=
    _root_.GlobalTheory.CompanionTheory.TensorCompleteFinite.isAdicComplete_tensor_finite W l hl A S.lim
  have hinj := eq_zero_of_baseChange_pr l S A hkill hker
  refine ⟨hinj, ?_⟩
  have hlift : ∀ z : (tens A S).lim, ∃ w : A ⊗[W] S.lim, ∀ n, (pr S n).baseChange A w =
      ((l : A) ^ c) • (z.1 n : A ⊗[W] S.M n) := fun z =>
    exists_lift l S A c hkill hker hcok (fun n => z.1 n) fun n => z.2 n
  choose g hg using hlift
  refine ⟨{ toFun := g, map_add' := fun x y => ?_, map_smul' := fun a x => ?_ }, hg⟩
  · rw [← sub_eq_zero]
    refine hinj _ fun n => ?_
    rw [map_sub, map_add (f := _), hg, hg, hg]
    exact sub_eq_zero.2 (smul_add ((l : A) ^ c) (x.1 n : A ⊗[W] S.M n) (y.1 n : A ⊗[W] S.M n))
  · rw [← sub_eq_zero]
    refine hinj _ fun n => ?_
    rw [map_sub, RingHom.id_apply, map_smul, hg, hg]
    exact sub_eq_zero.2 (smul_comm ((l : A) ^ c) a (x.1 n : A ⊗[W] S.M n))

end GlobalTheory.CompanionTheory.TowerExt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatBaseChangeLimitSystem =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.ExistsAlpha =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.ExistsAlpha", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.Flat.Basic\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatBaseChangeLimitSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct

namespace CrystallineSemistableComparison.Pb.Fa

variable {W A : Type} [CommRing W] [CommRing A] [Algebra W A]

def ev {L T : Type 1} [AddCommGroup L] [Module W L] [AddCommGroup T] [Module A T] (g : L →+ T)
    (hg : ∀ (w : W) y, g (w • y) = algebraMap W A w • g y) : A ⊗[W] L →+ T :=
  TensorProduct.liftAddHom (AddMonoidHom.mk' (fun a => AddMonoidHom.mk' (fun y => a • g y) fun y y' => by rw [map_add (f := _), smul_add])
    fun a a' => AddMonoidHom.ext fun y => add_smul a a' (g y)) fun w a y => by
      change (w • a) • g y = a • g (w • y)
      rw [hg, Algebra.smul_def, mul_comm, mul_smul]

theorem ev_tmul {L T : Type 1} [AddCommGroup L] [Module W L] [AddCommGroup T] [Module A T] (g : L →+ T)
    (hg : ∀ (w : W) y, g (w • y) = algebraMap W A w • g y) (a : A) (y : L) : ev g hg (a ⊗ₜ y) = a • g y := rfl

theorem ev_smul {L T : Type 1} [AddCommGroup L] [Module W L] [AddCommGroup T] [Module A T] (g : L →+ T)
    (hg : ∀ (w : W) y, g (w • y) = algebraMap W A w • g y) (a : A) (z : A ⊗[W] L) : ev g hg (a • z) = a • ev g hg z := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul b y => rw [TensorProduct.smul_tmul', ev_tmul, ev_tmul, smul_eq_mul, mul_smul]
  | add z z' h h' => rw [smul_add, map_add (f := _), map_add (f := _), h, h', smul_add]

theorem add_ext {L : Type 1} [AddCommGroup L] [Module W L] {T : Type 1} [AddCommGroup T] {f f' : A ⊗[W] L →+ T}
    (h : ∀ a y, f (a ⊗ₜ y) = f' (a ⊗ₜ y)) (z : A ⊗[W] L) : f z = f' z := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul b y => exact h b y
  | add z z' h h' => rw [map_add (f := _), map_add (f := _), h, h']

theorem ev_bij {L T : Type 1} [AddCommGroup L] [Module W L] [AddCommGroup T] [Module A T] (g : L →+ T)
    (hg : ∀ (w : W) y, g (w • y) = algebraMap W A w • g y)
    (h : Tens W (N := fun _ : Unit => A) (M := fun _ => L) (M' := T) fun _ a y => a • g y) : Function.Bijective (ev g hg) := by
  obtain ⟨e, he⟩ := h
  have : ⇑(ev g hg) = e ∘ (fun z => Pi.single () z) := funext fun z =>
    add_ext (f := ev g hg) (f' := e.toAddMonoidHom.comp (AddMonoidHom.single (fun _ : Unit => A ⊗[W] L) ())) (fun a y => (he () a y).symm) z
  rw [this]
  exact e.bijective.comp ⟨Pi.single_injective (M := fun _ : Unit => A ⊗[W] L) (), fun f => ⟨f (), funext fun _ => Pi.single_eq_same _ _⟩⟩

theorem core [IsDomain W] [IsDiscreteValuationRing W] (l : ℕ) (hl : Irreducible (l : W)) (S : Sys.{1} W) (c : ℕ) (h1 : Module.Finite W S.lim)
    (h2 : ∀ n (x : S.M n), ((l : W) ^ n) • x = 0) (h3 : ∀ n (x : S.lim), x.1 n = 0 → ∃ y : S.lim, x = ((l : W) ^ n) • y)
    (h4 : ∀ n (x : S.M n), ∃ y : S.lim, y.1 n = ((l : W) ^ c) • x) [Module.Flat W A] [IsAdicComplete (Ideal.span {(l : A)}) A]
    (T : Sys.{1} A) (g : ∀ n, S.M n →+ T.M n) (hg : ∀ n (w : W) y, g n (w • y) = algebraMap W A w • g n y)
    (hr : ∀ n y, T.r n (g (n + 1) y) = g n (S.r n y))
    (hb : ∀ n, Tens W (N := fun _ : Unit => A) (M := fun _ => S.M n) (M' := T.M n) fun _ a y => a • g n y)
    (g' : ∀ n, S.lim →+ T.M n) (hg' : ∀ n (w : W) y, g' n (w • y) = algebraMap W A w • g' n y) (e : ∀ n y, g' n y = g n (y.1 n)) :
    (∀ w, (∀ n, ev (g' n) (hg' n) w = 0) → w = 0) ∧
      ∀ z : ∀ n, T.M n, (∀ n, T.r n (z (n + 1)) = z n) → ∃ w, ∀ n, ev (g' n) (hg' n) w = (l ^ c) • z n := by
  obtain ⟨hs, α, hα⟩ := _root_.GlobalTheory.CompanionTheory.TowerExt.limit_extension_upTo W l hl S c h1 h2 h3 h4 A
  have hev : ∀ n w, ev (g' n) (hg' n) w = ev (g n) (hg n) ((Tw.pr S n).baseChange A w) := fun n =>
    add_ext (f' := (ev (g n) (hg n)).comp ((Tw.pr S n).baseChange A).toAddMonoidHom) fun a y => by
      rw [ev_tmul, e]; rfl
  have hbij := fun n => ev_bij (g n) (hg n) (hb n)
  refine ⟨fun w hw => hs w fun n => (hbij n).1 (by rw [← hev, hw, map_zero]), fun z hz => ?_⟩
  choose u hu using fun n => (hbij n).2 (z n)
  have hc : ∀ n, (S.r n).baseChange A (u (n + 1)) = u n := fun n => (hbij n).1 (by
    rw [hu, ← hz, ← hu]
    exact add_ext (f := (ev (g n) (hg n)).comp ((S.r n).baseChange A).toAddMonoidHom)
      (f' := (T.r n).toAddMonoidHom.comp (ev (g (n + 1)) (hg (n + 1)))) (fun a y => by
        change a • g n (S.r n y) = T.r n (a • g (n + 1) y)
        rw [map_smul, hr]) _)
  refine ⟨α ⟨u, hc⟩, fun n => ?_⟩
  rw [hev, hα, ev_smul, ← Nat.cast_pow, Nat.cast_smul_eq_nsmul]
  exact congrArg _ (hu n)

theorem exists_alpha {P H : Type 1} [AddCommGroup P] [AddCommGroup H] {T : ℕ → Type 1} [∀ n, AddCommGroup (T n)] (E : ∀ n, P →+ T n)
    (ν : ∀ n, H →+ T n) (k : ℕ) (hs : ∀ w, (∀ n, E n w = 0) → w = 0) (hx : ∀ x, ∃ w, ∀ n, E n w = k • ν n x) :
    ∃ α : H →+ P, ∀ n x, E n (α x) = k • ν n x := by
  choose a ha using hx
  exact ⟨AddMonoidHom.mk' a fun x y => sub_eq_zero.1 (hs _ fun n => by
    rw [map_sub, map_add (f := _), ha, ha, ha, map_add (f := _), nsmul_add, sub_self]), fun n x => ha x n⟩

theorem alpha_op {P H P' H' : Type 1} [AddCommGroup P] [AddCommGroup H] [AddCommGroup P'] [AddCommGroup H'] {T T' : ℕ → Type 1}
    [∀ n, AddCommGroup (T n)] [∀ n, AddCommGroup (T' n)] {E : ∀ n, P →+ T n} {ν : ∀ n, H →+ T n} {k : ℕ} {α : H →+ P}
    (hα : ∀ n x, E n (α x) = k • ν n x) {E' : ∀ n, P' →+ T' n} {ν' : ∀ n, H' →+ T' n} {k' : ℕ} {α' : H' →+ P'}
    (hα' : ∀ n x, E' n (α' x) = k' • ν' n x) (hs : ∀ w, (∀ n, E' n w = 0) → w = 0) (o : ∀ n, T n →+ T' n) (x : H) (x' : H') (w' : P')
    (h1 : ∀ n, E' n w' = o n (E n (α x))) (h2 : ∀ n, ν' n x' = o n (ν n x)) :
    k • α' x' = k' • w' ∧ (k = k' → α' x' = w') :=
  ⟨sub_eq_zero.1 (hs _ fun n => by
      rw [map_sub, map_nsmul, map_nsmul, hα', h1, hα, map_nsmul, h2, smul_comm, sub_self]),
    fun h => sub_eq_zero.1 (hs _ fun n => by rw [map_sub, hα', h1, hα, map_nsmul, h2, h, sub_self])⟩

section Pack
variable {S S' : Sys.{1} W} {T T' H H' : Sys.{1} A}

def E (g : Sys.Hom S T (algebraMap W A)) (n : ℕ) : A ⊗[W] S.lim →+ T.M n :=
  ev (A := A) (AddMonoidHom.mk' (fun y : S.lim => g.f n (y.1 n)) fun _ _ => map_add (g.f n) _ _)
    fun w y => LinearMap.map_smulₛₗ (g.f n) w _

theorem E_tmul (g : Sys.Hom S T (algebraMap W A)) (n : ℕ) (a : A) (y : S.lim) : E g n (a ⊗ₜ y) = a • g.f n (y.1 n) := rfl

theorem E_smul (g : Sys.Hom S T (algebraMap W A)) (n : ℕ) (a : A) (w : A ⊗[W] S.lim) : E g n (a • w) = a • E g n w := ev_smul _ _ a w

theorem E_r (g : Sys.Hom S T (algebraMap W A)) (n : ℕ) (w : A ⊗[W] S.lim) : T.r n (E g (n + 1) w) = E g n w :=
  add_ext (f := (T.r n).toAddMonoidHom.comp (E g (n + 1))) (fun a y => by
    change T.r n (a • g.f (n + 1) (y.1 (n + 1))) = a • g.f n (y.1 n)
    rw [map_smul, g.comm, y.2 n]) w

def nuL {ψ : A →+* A} (ν : Sys.Hom H T ψ) (n : ℕ) : H.lim →+ T.M n :=
  AddMonoidHom.mk' (fun x : H.lim => ν.f n (x.1 n)) fun _ _ => map_add (ν.f n) _ _

def beta (g : Sys.Hom S T (algebraMap W A)) (μ : Sys.Hom T H (RingHom.id A)) : A ⊗[W] S.lim →ₗ[A] H.lim where
  toFun w := ⟨fun n => μ.f n (E g n w), fun n => by rw [μ.comm, E_r]⟩
  map_add' w w' := Subtype.ext (funext fun n => by
    change μ.f n (E g n (w + w')) = μ.f n (E g n w) + μ.f n (E g n w')
    rw [map_add (f := _), map_add (f := _)])
  map_smul' a w := Subtype.ext (funext fun n => by
    change μ.f n (E g n (a • w)) = a • μ.f n (E g n w)
    rw [E_smul, map_smul])

structure Pin (l : ℕ) (g : Sys.Hom S T (algebraMap W A)) {ψ : A →+* A} (ν : Sys.Hom H T ψ) (e : ℕ) (α : H.lim →+ A ⊗[W] S.lim) : Prop where
  sep : ∀ w, (∀ n, E g n w = 0) → w = 0
  pin : ∀ n x, E g n (α x) = (l ^ e) • nuL ν n x

theorem pin_ex [IsDomain W] [IsDiscreteValuationRing W] (l : ℕ) (hl : Irreducible (l : W)) (c : ℕ) (h1 : Module.Finite W S.lim)
    (h2 : ∀ n (x : S.M n), ((l : W) ^ n) • x = 0) (h3 : ∀ n (x : S.lim), x.1 n = 0 → ∃ y : S.lim, x = ((l : W) ^ n) • y)
    (h4 : ∀ n (x : S.M n), ∃ y : S.lim, y.1 n = ((l : W) ^ c) • x) [Module.Flat W A] [IsAdicComplete (Ideal.span {(l : A)}) A]
    (g : Sys.Hom S T (algebraMap W A))
    (hb : ∀ n, Tens W (N := fun _ : Unit => A) (M := fun _ => S.M n) (M' := T.M n) fun _ a y => a • g.f n y)
    {ψ : A →+* A} (ν : Sys.Hom H T ψ) : ∃ α, Pin l g ν c α := by
  obtain ⟨hs, hx⟩ := core l hl S c h1 h2 h3 h4 T (fun n => (g.f n).toAddMonoidHom) (fun n w y => LinearMap.map_smulₛₗ (g.f n) w y)
    (fun n y => g.comm n y) hb (fun n => AddMonoidHom.mk' (fun y : S.lim => g.f n (y.1 n)) fun _ _ => map_add (g.f n) _ _)
    (fun n w y => LinearMap.map_smulₛₗ (g.f n) w _) fun _ _ => rfl
  obtain ⟨α, hα⟩ := exists_alpha (E g) (nuL ν) (l ^ c) hs fun x => hx (fun n => nuL ν n x) fun n => (ν.lim x).2 n
  exact ⟨α, hs, hα⟩

variable {l e e' : ℕ} {g : Sys.Hom S T (algebraMap W A)} {g' : Sys.Hom S' T' (algebraMap W A)} {ψ : A →+* A} {ν : Sys.Hom H T ψ}
  {ν' : Sys.Hom H' T' ψ} {α : H.lim →+ A ⊗[W] S.lim} {α' : H'.lim →+ A ⊗[W] S'.lim}

theorem Pin.lin (h : Pin l g ν e α) (a : A) (x : H.lim) : α (a • x) = ψ a • α x :=
  sub_eq_zero.1 (h.sep _ fun n => by
    rw [map_sub, E_smul, h.pin, h.pin, smul_comm, sub_eq_zero]
    exact congrArg _ (LinearMap.map_smulₛₗ (ν.f n) a _))

theorem Pin.fac (h : Pin l g ν e α) (μ : Sys.Hom T H (RingHom.id A)) (x y : H.lim) (hy : ∀ n, μ.f n (ν.f n (x.1 n)) = y.1 n) :
    beta g μ (α x) = ((l : A) ^ e) • y := Subtype.ext (funext fun n => by
  change μ.f n (E g n (α x)) = ((l : A) ^ e) • y.1 n
  rw [h.pin, map_nsmul, ← hy, ← Nat.cast_pow, Nat.cast_smul_eq_nsmul]; rfl)

theorem Pin.op (h : Pin l g ν e α) (h' : Pin l g' ν' e' α') {τ : A →+* A} (oT : ∀ n, T.M n →ₛₗ[τ] T'.M n) (oS : S.lim → S'.lim)
    (hS : ∀ n y, g'.f n ((oS y).1 n) = oT n (g.f n (y.1 n))) (o : A ⊗[W] S.lim →+ A ⊗[W] S'.lim) (ho : ∀ a y, o (a ⊗ₜ y) = τ a ⊗ₜ oS y)
    (x : H.lim) (x' : H'.lim) (hx : ∀ n, ν'.f n (x'.1 n) = oT n (ν.f n (x.1 n))) :
    ((l : A) ^ e) • α' x' = ((l : A) ^ e') • o (α x) ∧ (e = e' → α' x' = o (α x)) := by
  have := alpha_op h.pin h'.pin h'.sep (fun n => (oT n).toAddMonoidHom) x x' (o (α x)) (fun n =>
    add_ext (f := (E g' n).comp o) (f' := (oT n).toAddMonoidHom.comp (E g n)) (fun a y => by
      change E g' n (o (a ⊗ₜ y)) = oT n (a • g.f n (y.1 n))
      rw [ho, E_tmul, hS, LinearMap.map_smulₛₗ]) _) hx
  rw [← Nat.cast_pow, ← Nat.cast_pow, Nat.cast_smul_eq_nsmul, Nat.cast_smul_eq_nsmul]
  exact ⟨this.1, fun he => this.2 (by rw [he])⟩

def tmap {L L' : Type 1} [AddCommGroup L] [Module W L] [AddCommGroup L'] [Module W L'] (τ : A →+* A) {τW : W →+* W} (o : L →ₛₗ[τW] L')
    (hτ : ∀ w, τ (algebraMap W A w) = algebraMap W A (τW w)) : A ⊗[W] L →+ A ⊗[W] L' :=
  TensorProduct.liftAddHom (AddMonoidHom.mk' (fun a => AddMonoidHom.mk' (fun y => τ a ⊗ₜ[W] o y) fun y y' => by rw [map_add (f := _), tmul_add])
    fun a a' => AddMonoidHom.ext fun y => by
      change τ (a + a') ⊗ₜ[W] o y = τ a ⊗ₜ[W] o y + τ a' ⊗ₜ[W] o y
      rw [map_add (f := _), add_tmul]) fun w a y => by
      change τ (w • a) ⊗ₜ[W] o y = τ a ⊗ₜ[W] o (w • y)
      rw [LinearMap.map_smulₛₗ, Algebra.smul_def, map_mul, hτ, ← Algebra.smul_def, smul_tmul]

end Pack

end CrystallineSemistableComparison.Pb.Fa
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.ExistsAlpha =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BoundedCokernelLimitToLevel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BoundedCokernelLimitToLevel", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens\npublic import Mathlib.RingTheory.Artinian.Defs\npublic import Mathlib.RingTheory.Noetherian.Defs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.InstAddCommGroup\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ArtinianLimitLiftOfCompatible\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison CrystallineSemistableComparison.Tw

namespace GlobalTheory.CompanionTheory.TwCok

theorem pow_torsion_bounded {W : Type} [CommRing W] [IsNoetherianRing W] (r : W) (T : Type 1)
    [AddCommGroup T] [Module W T] [Module.Finite W T] :
    ∃ c : ℕ, ∀ (k : ℕ) (t : T), r ^ k • t = 0 → r ^ c • t = 0 := by
  haveI := isNoetherian_of_isNoetherianRing_of_finite W T
  let f : ℕ →o Submodule W T :=
    ⟨fun k => LinearMap.ker ((r ^ k) • LinearMap.id : T →ₗ[W] T), fun a b hab t ht => by
      simp only [LinearMap.mem_ker, LinearMap.smul_apply, LinearMap.id_apply] at ht ⊢
      obtain ⟨c, rfl⟩ := Nat.exists_eq_add_of_le hab
      rw [pow_add, mul_comm, mul_smul, ht, smul_zero]⟩
  obtain ⟨n, hn⟩ := monotone_stabilizes_iff_noetherian.mpr inferInstance f
  refine ⟨n, fun k t ht => ?_⟩
  rcases le_total k n with hkn | hnk
  · obtain ⟨c, rfl⟩ := Nat.exists_eq_add_of_le hkn
    rw [pow_add, mul_comm, mul_smul, ht, smul_zero]
  · have h1 : t ∈ f k := by
      simp only [f]
      exact ht
    rw [← hn k hnk] at h1
    have h2 : t ∈ LinearMap.ker ((r ^ n) • LinearMap.id : T →ₗ[W] T) := h1
    rw [LinearMap.mem_ker, LinearMap.smul_apply, LinearMap.id_apply] at h2
    exact h2

variable {W : Type} [CommRing W] {l : ℕ} {S S' : Sys.{1} W}

def conn (Q : LSeq l S S') (n : ℕ) (x : S.M n) : S'.lim :=
  ⟨fun a => Q.δ n a x, fun a => Q.δ_r n a x⟩

theorem conn_smul (Q : LSeq l S S') (n : ℕ) (s : W) (x : S.M n) :
    s • conn Q n x = conn Q n (s • x) := by
  apply Subtype.ext
  funext a
  simp [conn]

theorem conn_kill (Q : LSeq l S S') (n : ℕ) (x : S.M n) : ((l : W) ^ n) • conn Q n x = 0 := by
  rw [conn_smul, Q.kill n x]
  apply Subtype.ext
  funext a
  simp [conn]

theorem lift_of_conn_zero (Q : LSeq l S S') (hA : ∀ n, IsArtinian W (S.M n)) (n : ℕ) (x : S.M n)
    (h : ∀ a, Q.δ n a x = 0) : ∃ y : S.lim, y.1 n = x := by
  classical
  have hy : ∀ m, n ≤ m → ∃ u : S.M m, Q.ρ m n u = x := fun m hm =>
    Q.ex₂ (m - n) n m (by omega) x (h _)
  let y : ∀ m, S.M m := fun m => if hm : n ≤ m then (hy m hm).choose else 0
  have hyx : ∀ m (hm : n ≤ m), Q.ρ m n (y m) = x := by
    intro m hm
    simp only [y, dif_pos hm]
    exact (hy m hm).choose_spec
  let N : ∀ m, Submodule W (S.M m) := fun m => if n ≤ m then LinearMap.ker (Q.ρ m n) else ⊤
  have hN : ∀ m (hm : n ≤ m), N m = LinearMap.ker (Q.ρ m n) := fun m hm => if_pos hm
  have hN' : ∀ m (hm : ¬ n ≤ m), N m = ⊤ := fun m hm => if_neg hm
  have hNr : ∀ m, ∀ u ∈ N (m + 1), S.r m u ∈ N m := by
    intro m u hu
    by_cases hm : n ≤ m
    · rw [hN (m + 1) (by omega), LinearMap.mem_ker] at hu
      rw [hN m hm, LinearMap.mem_ker, ← Q.ρ_succ m n hm]
      exact hu
    · rw [hN' m hm]
      exact Submodule.mem_top
  have hyr : ∀ m, S.r m (y (m + 1)) - y m ∈ N m := by
    intro m
    by_cases hm : n ≤ m
    · rw [hN m hm, LinearMap.mem_ker, map_sub, ← Q.ρ_succ m n hm, hyx (m + 1) (by omega), hyx m hm,
        sub_self]
    · rw [hN' m hm]
      exact Submodule.mem_top
  obtain ⟨z, hz⟩ := _root_.GlobalTheory.CompanionTheory.ArtinTower.exists_compatible W S hA N y hNr hyr
  refine ⟨z, ?_⟩
  have h1 := hz n
  rw [hN n le_rfl, LinearMap.mem_ker, map_sub, Q.ρ_self, Q.ρ_self, sub_eq_zero] at h1
  have h2 := hyx n le_rfl
  rw [Q.ρ_self] at h2
  rw [← h2]
  exact h1

theorem lim_cokernel_bounded : ∀ (W : Type) [CommRing W] [IsNoetherianRing W] (l : ℕ) (S S' : Sys.{1} W)
    (_ : LSeq l S S'), (∀ n, IsArtinian W (S.M n)) → Module.Finite W S'.lim →
    ∃ c : ℕ, ∀ n (x : S.M n), ∃ y : S.lim, y.1 n = ((l : W) ^ c) • x := by
  intro W _ _ l S S' Q hA hF
  obtain ⟨c, hc⟩ := pow_torsion_bounded ((l : W)) S'.lim
  refine ⟨c, fun n x => lift_of_conn_zero Q hA n _ (fun a => ?_)⟩
  have h0 : conn Q n ((l : W) ^ c • x) = 0 := by
    rw [← conn_smul]
    exact hc n _ (conn_kill Q n x)
  have h3 := congrArg (fun v : S'.lim => (v : ∀ m, S'.M m) a) h0
  simpa [conn] using h3

end GlobalTheory.CompanionTheory.TwCok
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BoundedCokernelLimitToLevel =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModuleFiniteLimitOfLseq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModuleFiniteLimitOfLseq", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Mathlib.RingTheory.FiniteLength\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteLengthOfLseqFirst\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LimitDivisibleOfVanishingLevelStatement\npublic import Mathlib.RingTheory.AdicCompletion.Functoriality\npublic import ReciprocityTheory.GroupCohomology.FinGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison CrystallineSemistableComparison.Tw

namespace GlobalTheory.CompanionTheory.TowerLim

theorem module_finite_lim : ∀ (W : Type) [CommRing W] (l : ℕ) [IsAdicComplete (Ideal.span {(l : W)}) W]
    (S S' : Sys.{1} W) (_ : LSeq l S S'), IsFiniteLength W (S.M 1) → Module.Finite W S.lim := by
  intro W _ l _ S S' L h1
  have hfl := _root_.GlobalTheory.CompanionTheory.TowerLen.isFiniteLength_level W l S S' L h1
  have hart : ∀ n, IsArtinian W (S.M n) := fun n =>
    (isFiniteLength_iff_isNoetherian_isArtinian.1 (hfl n)).2
  have hinj := GlobalTheory.T.limit_divisible_of_vanishing_level W l S S' L hart

  have hvan : ∀ n, (Ideal.span {(l : W)} ^ n • (⊤ : Submodule W S.lim)) ≤ LinearMap.ker (pr S n) := by
    intro n
    refine Submodule.smul_le.2 fun r hr m _ => ?_
    rw [Ideal.span_singleton_pow] at hr
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 hr
    rw [LinearMap.mem_ker, map_smul, mul_smul]
    rw [L.kill n, smul_zero]
  have hH : IsHausdorff (Ideal.span {(l : W)}) S.lim := by
    refine ⟨fun x hx => Subtype.ext (funext fun n => ?_)⟩
    have hm : x ∈ (Ideal.span {(l : W)} ^ n • (⊤ : Submodule W S.lim)) := by
      simpa [SModEq.zero] using hx n
    exact hvan n hm
  have hmem1 : ∀ x : S.lim, pr S 1 x = 0 → x ∈ Ideal.span {(l : W)} • (⊤ : Submodule W S.lim) := by
    intro x hx
    obtain ⟨y, hy⟩ := hinj 1 x hx
    rw [hy, pow_one]
    exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) trivial
  have hle : Ideal.span {(l : W)} • (⊤ : Submodule W S.lim) ≤ LinearMap.ker (pr S 1) := by
    simpa using hvan 1
  let q := (Ideal.span {(l : W)} • (⊤ : Submodule W S.lim)).liftQ (pr S 1) hle
  have hq : Function.Injective q := by
    refine (injective_iff_map_eq_zero _).2 fun z hz => ?_
    induction z using Submodule.Quotient.induction_on with
    | H x =>
      rw [Submodule.Quotient.mk_eq_zero]
      exact hmem1 x hz
  have : IsNoetherian W (S.M 1) := (isFiniteLength_iff_isNoetherian_isArtinian.1 h1).1
  have : Module.Finite W (S.lim ⧸ Ideal.span {(l : W)} • (⊤ : Submodule W S.lim)) :=
    Module.Finite.of_injective q hq
  obtain ⟨r, s, hs⟩ := Module.Finite.exists_fin (R := W)
    (M := S.lim ⧸ Ideal.span {(l : W)} • (⊤ : Submodule W S.lim))
  choose s' hs' using fun i => Submodule.Quotient.mk_surjective _ (s i)
  have : IsPrecomplete (Ideal.span {(l : W)}) (Fin r → W) := ReciprocityTheory.Coh.isPrecomplete_pi _
  have hsurj : Function.Surjective ((Ideal.span {(l : W)} • (⊤ : Submodule W S.lim)).mkQ ∘ₗ
      Fintype.linearCombination W s') := by
    rw [← LinearMap.range_eq_top, eq_top_iff, ← hs, Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    exact ⟨Pi.single i 1, by simp [hs']⟩
  exact Module.Finite.of_surjective _ (surjective_of_mkQ_comp_surjective hsurj)

end GlobalTheory.CompanionTheory.TowerLim
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModuleFiniteLimitOfLseq =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrisZeroSurjective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrisZeroSurjective", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.BWMorL\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.OB\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.AdicCompletion.Completeness\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.Pb

noncomputable section
namespace GlobalTheory.CompanionTheory.BcAcris

universe w w'

theorem adic_ker {R : Type} [CommRing R] (x : R) (n : ℕ) (a : AdicCompletion (Ideal.span {x}) R)
    (h : AdicCompletion.eval (Ideal.span {x}) R n a = 0) :
    ∃ b : AdicCompletion (Ideal.span {x}) R, a = algebraMap R _ x ^ n * b := by
  have key := AdicCompletion.pow_smul_top_eq_ker_eval (I := Ideal.span {x}) (M := R) (n := n) (Submodule.fg_span_singleton _)
  have hm : a ∈ (AdicCompletion.eval (Ideal.span {x}) R n).ker := h
  rw [← key, Ideal.span_singleton_pow, Submodule.ideal_span_singleton_smul] at hm
  obtain ⟨b, -, rfl⟩ := (Submodule.mem_smul_pointwise_iff_exists _ _ _).1 hm
  refine ⟨b, ?_⟩
  rw [Algebra.smul_def, map_pow]

theorem adic_ker_of {R S : Type} [CommRing R] [CommRing S] (x : R) (n : ℕ) (f : AdicCompletion (Ideal.span {x}) R →+* S)
    (hx : f (algebraMap R _ x) ^ n = 0) (hk : ∀ y : R, f (algebraMap R _ y) = 0 → ∃ c, y = c * x ^ n)
    (a : AdicCompletion (Ideal.span {x}) R) (ha : f a = 0) : ∃ b, a = algebraMap R _ x ^ n * b := by
  obtain ⟨y, hy⟩ := Submodule.mkQ_surjective _ (AdicCompletion.eval (Ideal.span {x}) R n a)
  have e1 : AdicCompletion.eval (Ideal.span {x}) R n (a - algebraMap R _ y) = 0 := by
    rw [map_sub, ← hy, AdicCompletion.algebraMap_apply, AdicCompletion.eval_of]
    exact sub_self _
  obtain ⟨b, hb⟩ := adic_ker x n _ e1
  have e2 : f (algebraMap R _ y) = 0 := by
    have := congrArg f hb
    rw [map_sub, map_mul, map_pow, hx, zero_mul, ha, zero_sub, neg_eq_zero] at this
    exact this
  obtain ⟨c, rfl⟩ := hk y e2
  refine ⟨algebraMap R _ c + b, ?_⟩
  rw [mul_add, ← hb, map_mul, map_pow]
  ring

section Rings
variable {l : ℕ} [Fact l.Prime]

theorem base_acris_zero_mem (u : (base l).Acr0) : u.1 ∈ ACris.ACrisZero ℂ_[l] l := by
  obtain ⟨u, hu⟩ := u
  rw [ACris.acrisZero_eq_adjoin ker_theta0]
  change u ∈ Algebra.adjoin _ _ at hu
  induction hu using Algebra.adjoin_induction with
  | mem y hy =>
    obtain ⟨k, rfl⟩ := hy
    refine Algebra.subset_adjoin ⟨k, ?_⟩
    have e : (base l).xi = xi0 l := wmap_id _
    change ACris.dpow k (xi0 l) = dpw k (base l).xi
    rw [dpow_eq_dpw, e]
  | algebraMap x => exact Subalgebra.algebraMap_mem _ _
  | add x y _ _ hx hy => exact add_mem hx hy
  | mul x y _ _ hx hy => exact mul_mem hx hy

theorem cris_zero_apply (y : Acris0 l) : ((base l).cris0 y).1 = y.1 :=
  RingHom.congr_fun (awayW_id (l := l) (R := Ob l)) y.1

theorem cris_zero_surjective : Function.Surjective (base l).cris0 := fun u =>
  ⟨⟨u.1, base_acris_zero_mem u⟩, Subtype.ext (cris_zero_apply _)⟩

theorem cris_zero_injective : Function.Injective (base l).cris0 := fun x y h =>
  Subtype.ext (by rw [← cris_zero_apply x, ← cris_zero_apply y, h])

theorem cris_surjective (n : ℕ) : Function.Surjective ((base l).cris n) := fun u => by
  obtain ⟨v, rfl⟩ := (base l).mkAcr_surjective n u
  obtain ⟨y, rfl⟩ := cris_zero_surjective v
  exact ⟨_, cris_of _ n y⟩

theorem cris_ker (n : ℕ) (a : Acris l) (h : (base l).cris n a = 0) : ∃ b : Acris l, a = (l : Acris l) ^ n * b := by
  have hl : algebraMap (Acris0 l) (Acris l) (l : Acris0 l) = (l : Acris l) := map_natCast _ _
  have hx : (base l).cris n (algebraMap (Acris0 l) (Acris l) (l : Acris0 l)) ^ n = 0 := by
    rw [hl, map_natCast, (base l).pow_l_acr]
  have hk : ∀ y : Acris0 l, (base l).cris n (algebraMap (Acris0 l) (Acris l) y) = 0 → ∃ c, y = c * (l : Acris0 l) ^ n := by
    intro y hy
    rw [cris_of'] at hy
    obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq_zero_iff_mem.1 hy)
    obtain ⟨c', rfl⟩ := cris_zero_surjective c
    exact ⟨c', cris_zero_injective (Eq.symm (by rw [map_mul, map_pow, map_natCast]; exact hc))⟩
  obtain ⟨b, hb⟩ := adic_ker_of (l : Acris0 l) n ((base l).cris n) hx hk a h
  exact ⟨b, by rw [← hl]; exact hb⟩

end Rings

theorem tens_change {W A R R' : Type} [CommRing W] [CommRing A] [CommRing R] [CommRing R'] [Algebra W A] [Algebra R R']
    (π : W →+* R) (c : A →+* R') (hc : Function.Surjective c)
    (hcomp : ∀ w, c (algebraMap W A w) = algebraMap R R' (π w)) (hπ : Function.Surjective π) (t : W) (ht : π t = 0)
    (hker : ∀ a, c a = 0 → ∃ b, a = algebraMap W A t * b)
    {B : Type w} [AddCommGroup B] [Module W B] {A₀ : Type w'} [AddCommGroup A₀] [Module R A₀]
    {M₀ H : Type w'} [AddCommGroup M₀] [AddCommGroup H]
    (e : B →ₛₗ[π] A₀) (he : Function.Bijective e) (e' : H →+ M₀) (he' : Function.Bijective e')
    (f : Unit → R' → A₀ → M₀) (f' : Unit → A → B → H) (comm : ∀ a y, e' (f' () a y) = f () (c a) (e y))
    (T : Tens R (N := fun _ : Unit => R') (M := fun _ => A₀) (M' := M₀) f) :
    Tens W (N := fun _ : Unit => A) (M := fun _ => B) (M' := H) f' := by
  obtain ⟨g, hg⟩ := T
  let E : B ≃+ A₀ := AddEquiv.ofBijective e.toAddMonoidHom he
  have hE : ∀ y, E y = e y := fun _ => rfl
  have hEs : ∀ (w : W) (v : A₀), E.symm (π w • v) = w • E.symm v := fun w v => by
    apply E.injective
    rw [AddEquiv.apply_symm_apply, hE, LinearMap.map_smulₛₗ, ← hE, AddEquiv.apply_symm_apply]
  have hkill : ∀ y : B, t • y = 0 := fun y => he.1 (by rw [LinearMap.map_smulₛₗ, ht, zero_smul, map_zero])

  let F : A ⊗[W] B →+ R' ⊗[R] A₀ := TensorProduct.liftAddHom
    { toFun := fun a =>
        { toFun := fun y => c a ⊗ₜ[R] e y
          map_zero' := by rw [map_zero, TensorProduct.tmul_zero]
          map_add' := fun x y => by rw [map_add (f := _), TensorProduct.tmul_add] }
      map_zero' := by ext y; simp
      map_add' := fun a b => by ext y; simp [TensorProduct.add_tmul] }
    (fun w a y => by
      change c (w • a) ⊗ₜ[R] e y = c a ⊗ₜ[R] e (w • y)
      rw [Algebra.smul_def, map_mul, hcomp, LinearMap.map_smulₛₗ, TensorProduct.tmul_smul, ← Algebra.smul_def,
        TensorProduct.smul_tmul'])
  have hF : ∀ a y, F (a ⊗ₜ[W] y) = c a ⊗ₜ[R] e y := fun _ _ => rfl

  let f₀ : A →+ (A₀ →+ A ⊗[W] B) :=
    { toFun := fun a =>
        { toFun := fun v => a ⊗ₜ[W] E.symm v
          map_zero' := by rw [map_zero, TensorProduct.tmul_zero]
          map_add' := fun x y => by rw [map_add (f := _), TensorProduct.tmul_add] }
      map_zero' := by ext y; simp
      map_add' := fun a b => by ext y; simp [TensorProduct.add_tmul] }
  have hf₀ : ∀ a v, f₀ a v = a ⊗ₜ[W] E.symm v := fun _ _ => rfl
  have hk₀ : c.toAddMonoidHom.ker ≤ f₀.ker := by
    intro a ha
    obtain ⟨b, rfl⟩ := hker a ha
    refine AddMonoidHom.mem_ker.2 (AddMonoidHom.ext fun v => ?_)
    rw [hf₀, ← Algebra.smul_def, TensorProduct.smul_tmul, hkill, TensorProduct.tmul_zero]
    rfl
  let f₁ : R' →+ (A₀ →+ A ⊗[W] B) := c.toAddMonoidHom.liftOfSurjective hc ⟨f₀, hk₀⟩
  have hf₁ : ∀ a v, f₁ (c a) v = a ⊗ₜ[W] E.symm v := fun a v => by
    have : f₁ (c a) = f₀ a := AddMonoidHom.liftOfRightInverse_comp_apply _ _ _ _ a
    rw [this, hf₀]
  let Bk : R' ⊗[R] A₀ →+ A ⊗[W] B := TensorProduct.liftAddHom f₁ (fun r r' v => by
    obtain ⟨w, rfl⟩ := hπ r
    obtain ⟨a, rfl⟩ := hc r'
    have e₁ : π w • c a = c (w • a) := by
      rw [Algebra.smul_def, Algebra.smul_def, map_mul, hcomp]
    rw [e₁, hf₁, hf₁, hEs, TensorProduct.smul_tmul])
  have hB : ∀ a v, Bk (c a ⊗ₜ[R] v) = a ⊗ₜ[W] E.symm v := fun a v => hf₁ a v
  let Φ : A ⊗[W] B ≃+ R' ⊗[R] A₀ :=
    { toFun := F
      invFun := Bk
      left_inv := fun x => by
        induction x with
        | tmul a y => rw [hF, hB, ← hE, AddEquiv.symm_apply_apply]
        | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
      right_inv := fun x => by
        induction x with
        | tmul r v =>
          obtain ⟨a, rfl⟩ := hc r
          rw [hB, hF, ← hE, AddEquiv.apply_symm_apply]
        | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
      map_add' := map_add F }
  let P : (∀ _ : Unit, A ⊗[W] B) ≃+ (∀ _ : Unit, R' ⊗[R] A₀) := AddEquiv.piCongrRight fun _ => Φ
  let E' : H ≃+ M₀ := AddEquiv.ofBijective e' he'
  refine ⟨(P.trans g).trans E'.symm, fun i a y => ?_⟩
  obtain rfl : i = () := rfl
  apply E'.injective
  have hP : P (Pi.single () (a ⊗ₜ y)) = Pi.single () (c a ⊗ₜ e y) := by
    funext k
    obtain rfl : k = () := rfl
    simp only [Pi.single_eq_same]
    exact hF a y
  simp only [AddEquiv.trans_apply, AddEquiv.apply_symm_apply]
  rw [hP, hg]
  exact (comm a y).symm

theorem pullC_bijective {R R' : Type} [CommRing R] [CommRing R'] {σ : R →+* R'} {C : Type 1} [Category.{0} C]
    (Q : ObjectProperty C) (hQ : ∀ T, Q T) {F : C ⥤ ModuleCat.{w} R} {F' : Q.FullSubcategory ⥤ ModuleCat.{w'} R'}
    (m : CH.Mor F F' σ) (hG : m.G = Q.ι) (hτ : ∀ T, Function.Bijective (m.τ T)) (n : ℕ) :
    Function.Bijective (m.pullC n) := by
  obtain ⟨G, τ, nat⟩ := m
  obtain rfl : G = Q.ι := hG
  let up : C ⥤ Q.FullSubcategory := Q.lift (𝟭 C) hQ
  constructor
  · intro f g h
    funext s
    have h1 := congrFun h (s ⋙ up)
    exact (hτ (up.obj (s.obj (Fin.last n)))).1 h1
  · intro f'
    refine ⟨fun s => (Equiv.ofBijective _ (hτ (up.obj (s.obj (Fin.last n))))).symm (f' (s ⋙ up)), ?_⟩
    funext s
    exact (Equiv.ofBijective _ (hτ (s.obj (Fin.last n)))).apply_symm_apply (f' s)

section ToQ
variable {b : Base} {L : b.Fun} (Q : ObjectProperty (Thick L))

theorem oT_top (T : Q.FullSubcategory) : (oT Q).S T = ⊤ := by
  have h : (sFil Q 0).S T = ⊤ := T.obj.pdPow_zero
  exact top_le_iff.1 (h ▸ le_sup_left)

theorem oB_bot (T : Q.FullSubcategory) : (oB Q).S T = ⊥ := by
  change (⊥ : Ideal _) ⊔ Ideal.span {algebraMap b.R _ 0} = ⊥
  simp

variable {Λ : Type} [CommRing Λ] (c : Λ →+* b.R)

def toQ : CH.Mor (B.OM L c) (sq (oT Q) (oB Q)) c where
  G := Q.ι
  τ T :=
    { toFun := fun x => sqMk (oT Q) (oB Q) (T := T) (show (sP Q).A.obj T from x) (by rw [oT_top]; trivial)
      map_add' := fun _ _ => rfl
      map_smul' := fun a x => Subtype.ext (by
        change Ideal.Quotient.mk _ (T.obj.i (c a) * (show T.obj.B from x)) = Ideal.Quotient.mk _ (c a • (show (sP Q).A.obj T from x))
        rw [Algebra.smul_def]
        rfl) }
  nat _ _ := rfl

theorem toQ_bijective (T : Q.FullSubcategory) : Function.Bijective ((toQ Q c).τ T) := by
  constructor
  · intro x y h
    have h1 : Ideal.Quotient.mk ((oB Q).S T) (show (sP Q).A.obj T from x) = Ideal.Quotient.mk _ (show (sP Q).A.obj T from y) :=
      congrArg Subtype.val h
    have h2 := Ideal.Quotient.eq.1 h1
    rw [oB_bot, Ideal.mem_bot] at h2
    exact sub_eq_zero.1 h2
  · rintro ⟨v, hv⟩
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective v
    exact ⟨x, Subtype.ext rfl⟩

theorem toQ_pull_bijective (hQ : ∀ T, Q T) (j : ℕ) : Function.Bijective ((toQ Q c).pull j) :=
  _root_.CrystallineSemistableComparison.P.mapH_bij _ (fun n => pullC_bijective Q hQ _ rfl (toQ_bijective Q c) n) j

end ToQ

section Compat
variable {O R R' : Type} [CommRing O] [CommRing R] [CommRing R'] [Algebra R R'] {I : Ideal R} {I' : Ideal R'}
  {γ : DividedPowers I} {γ' : DividedPowers I'} {p : ℕ} {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)}
  {κ : O →+* R ⧸ I} {κ' : O →+* R' ⧸ I'}

theorem sqC_toQ (m : NMor γ q κ γ' q κ' (algebraMap R R')) (Q : ObjectProperty (Thick (nlFun γ p X q κ)))
    (Q' : ObjectProperty (Thick (nlFun γ' p X q κ'))) (h : ∀ T, Q' T → Q ((m.mor p).functor.obj T))
    {Λ Λ' : Type} [CommRing Λ] [CommRing Λ'] (c : Λ →+* R) (c' : Λ' →+* R') (σ₀ : Λ →+* Λ')
    (hσ : ∀ a, algebraMap R R' (c a) = c' (σ₀ a)) (a : R')
    (ha : (m.smor Q Q' h).LeC a (oT Q) (oT Q')) (hb : (m.smor Q Q' h).LeC a (oB Q) (oB Q')) (j : ℕ)
    (x : CH.H (B.OM (nlFun γ p X q κ) c) j) :
    ((m.smor Q Q' h).sqC a ha hb).pull j ((toQ Q c).pull j x) =
      a • (toQ Q' c').pull j ((B.omMor (m.mor p) σ₀ hσ).pull j x) := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  refine congrArg (Submodule.Quotient.mk (p := _)) (Subtype.ext (funext fun s => Subtype.ext ?_))
  exact (congrArg (Ideal.Quotient.mk _) (Algebra.smul_def a _).symm)

end Compat

section Main
variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem omMor_congr {b b' : Base} {L : b.Fun} {L' : b'.Fun} {σ : b.R →+* b'.R} {m m' : Mor L L' σ} (h : m = m')
    {Λ Λ' : Type} [CommRing Λ] [CommRing Λ'] {c : Λ →+* b.R} {c' : Λ' →+* b'.R} (σ₀ : Λ →+* Λ')
    (h₀ : ∀ a, σ (c a) = c' (σ₀ a)) : B.omMor m σ₀ h₀ = B.omMor m' σ₀ h₀ := by
  subst h; rfl

def nm (r : Res l K) (M : Model l K) (n : ℕ) :
    letI := (Mid.wn r n).toAlgebra
    NMor (Wc.pd l r.k n) M.p ((Wc.res l r.k n).comp r.ρ) (B.DD true (base l) n) M.p (Mid.κm r n)
      (algebraMap (Wc.Wm l r.k n) ((base l).Acr n)) :=
  letI := (Mid.wn r n).toAlgebra
  { hI := _root_.GlobalTheory.CompanionTheory.CrisDP.wn_isDPMorphism r n
    u := 𝟙 _
    g := RingHom.id _
    hu := by simp
    hκ := fun a x h => by
      change Ideal.quotientMap _ (Mid.wn r n) (Mid.im_le r n) ((Wc.res l r.k n).comp r.ρ a) = _
      rw [h]
      rfl }

theorem bWMorL_eq (r : Res l K) (M : Model l K) (n : ℕ) :
    letI := (Mid.wn r n).toAlgebra
    bWMorL r M n = B.omMor ((nm r M n).mor l) r.w (Mid.wn_mk r n) := by
  letI := (Mid.wn r n).toAlgebra
  unfold bWMorL
  refine omMor_congr ?_ _ _
  unfold B.crMor NMor.mor
  congr 1

theorem st_all {O R : Type} [CommRing O] [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ} {X : Scheme.{0}}
    {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I} (T : Thick (nlFun γ p X q κ)) : St ⊤ {⊤} T :=
  ⟨trivial, ⊤, rfl, fun _ _ => trivial⟩

theorem cov_of_sm (M : Model l K) (hM : M.Sm) : Nonempty (Cov M.p) := by
  obtain ⟨⟨N, i, hi, e⟩, -⟩ := hM.1
  have h1 : IsProper (ReciprocityTheory.ChartRestriction.G.Geo.Tor.PSpace.str (OK l K) N) := ReciprocityTheory.ChartRestriction.G.Geo.Tor.isProper_str _ N
  have h2 : IsProper M.p := by
    have h3 : IsProper (i ≫ ReciprocityTheory.ChartRestriction.G.Geo.Tor.PSpace.str (OK l K) N) := inferInstance
    exact e ▸ h3
  exact (cov_ex M.p).1 hM.2

theorem l_nil (r : Res l K) (n : ℕ) : IsNilpotent (l : Wc.Wm l r.k n) :=
  ⟨n, by
    rw [← map_natCast (Ideal.Quotient.mk _), ← map_pow]
    exact Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self _)⟩

end Main
end GlobalTheory.CompanionTheory.BcAcris
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrisZeroSurjective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatAcrisTruncatedWitt =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatAcrisTruncatedWitt", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TeichmullerCongruence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.Pb

noncomputable section

namespace GlobalTheory.CompanionTheory.CrisFlat

theorem flat_quotient_of_flat {R A : Type} [CommRing R] [CommRing A] [Algebra R A] [Module.Flat R A]
    (I : Ideal R) (J : Ideal A) (hJ : J = I.map (algebraMap R A)) (f : R ⧸ I →+* A ⧸ J)
    (hf : ∀ a, f (Ideal.Quotient.mk I a) = Ideal.Quotient.mk J (algebraMap R A a)) :
    letI := f.toAlgebra; Module.Flat (R ⧸ I) (A ⧸ J) := by
  subst hJ
  letI := f.toAlgebra
  haveI : IsScalarTower R (R ⧸ I) (A ⧸ I.map (algebraMap R A)) :=
    IsScalarTower.of_algebraMap_eq fun a => (hf a).symm
  let e₀ : (R ⧸ I) ⊗[R] A ≃ₗ[R] A ⧸ I.map (algebraMap R A) :=
    (TensorProduct.comm R (R ⧸ I) A).trans
      ((Algebra.TensorProduct.quotIdealMapEquivTensorQuot A I).symm.toLinearEquiv.restrictScalars R)
  let e : (R ⧸ I) ⊗[R] A ≃ₗ[R ⧸ I] A ⧸ I.map (algebraMap R A) :=
    e₀.extendScalarsOfSurjective Ideal.Quotient.mk_surjective
  exact Module.Flat.of_linearEquiv e.symm

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

def wToAcr0 (r : Res l K) : WittVector l r.k →+* (base l).Acr0 :=
  (algebraMap (base l).W (base l).Acr0).comp ((base l).sW.comp (WittVector.map r.s))

theorem isTorsionFree_acris_zero (r : Res l K) :
    letI := (wToAcr0 r).toAlgebra; Module.IsTorsionFree (WittVector l r.k) (base l).Acr0 := by
  letI := (wToAcr0 r).toAlgebra
  rw [Module.isTorsionFree_iff_smul_eq_zero]
  intro a x h
  by_cases ha : a = 0
  · exact Or.inl ha
  refine Or.inr ?_
  obtain ⟨m, b, e⟩ := WittVector.exists_eq_pow_p_mul' a ha
  rw [Algebra.smul_def] at h
  have h1 : (wToAcr0 r a : Localization.Away (l : (base l).W)) * (x : Localization.Away (l : (base l).W)) = 0 :=
    congrArg Subtype.val h
  have hl : IsUnit (l : Localization.Away (l : (base l).W)) := by
    have := IsLocalization.Away.algebraMap_isUnit (S := Localization.Away (l : (base l).W)) (l : (base l).W)
    rwa [map_natCast] at this
  have hu : IsUnit (wToAcr0 r a : Localization.Away (l : (base l).W)) := by
    have e2 : (wToAcr0 r a : Localization.Away (l : (base l).W)) =
        (l : Localization.Away (l : (base l).W)) ^ m * ((base l).Acr0.val.toRingHom.comp (wToAcr0 r)) b := by
      change ((base l).Acr0.val.toRingHom.comp (wToAcr0 r)) a = _
      rw [e, map_mul, map_pow, map_natCast]
    rw [e2]
    exact (hl.pow m).mul (b.isUnit.map _)
  exact Subtype.ext ((hu.mul_right_eq_zero).1 h1)

theorem flat_acris_zero (r : Res l K) :
    letI := (wToAcr0 r).toAlgebra; Module.Flat (WittVector l r.k) (base l).Acr0 := by
  letI := (wToAcr0 r).toAlgebra
  haveI := isTorsionFree_acris_zero r
  infer_instance

theorem flat_acr (r : Res l K) (n : ℕ) :
    letI := (Mid.wn r n).toAlgebra; Module.Flat (Wc.Wm l r.k n) ((base l).Acr n) := by
  letI := (wToAcr0 r).toAlgebra
  haveI := flat_acris_zero r
  refine flat_quotient_of_flat (R := WittVector l r.k) (A := (base l).Acr0)
    (Ideal.span {(l : WittVector l r.k) ^ n}) (Ideal.span {(l : (base l).Acr0) ^ n}) ?_ (Mid.wn r n) ?_
  · rw [Ideal.map_span, Set.image_singleton, map_pow, map_natCast]
  · intro a
    exact (Mid.wn_mk r n a).trans ((base l).cris_algebraMap n (WittVector.map r.s a))

end GlobalTheory.CompanionTheory.CrisFlat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatAcrisTruncatedWitt =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatAcrisTruncatedWittStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatAcrisTruncatedWittStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TeichmullerCongruence\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatAcrisTruncatedWitt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.Pb

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatAcrisTruncatedWittStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NilpotentIdentityMorphismCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NilpotentIdentityMorphismCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.OB\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StableCoverCechVanishing\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StdSomeZero\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section
namespace GlobalTheory.CompanionTheory.BcCov

theorem tens_transport {R : Type} [CommRing R] {N : Type} [AddCommGroup N] [Module R N]
    {A B : Type 1} [AddCommGroup A] [Module R A] [AddCommGroup B] [Module R B]
    {S : Type} [CommRing S] {A' B' : Type 1} [AddCommGroup A'] [Module S A'] [AddCommGroup B'] [Module S B']
    (f : Unit → N → A → A') (f' : Unit → N → B → B') (e : B →ₗ[R] A) (he : Function.Bijective e)
    (e' : B' →ₗ[S] A') (he' : Function.Bijective e') (comm : ∀ i n x, e' (f' i n x) = f i n (e x))
    (H : Tens R (N := fun _ : Unit => N) (M := fun _ => A) (M' := A') f) :
    Tens R (N := fun _ : Unit => N) (M := fun _ => B) (M' := B') f' := by
  obtain ⟨g, hg⟩ := H
  let E : B ≃ₗ[R] A := LinearEquiv.ofBijective e he
  let TE : N ⊗[R] B ≃ₗ[R] N ⊗[R] A := TensorProduct.congr (LinearEquiv.refl R N) E
  let P : (∀ _ : Unit, N ⊗[R] B) ≃+ (∀ _ : Unit, N ⊗[R] A) := AddEquiv.piCongrRight fun _ => TE.toAddEquiv
  let E' : B' ≃+ A' := (LinearEquiv.ofBijective e' he').toAddEquiv
  refine ⟨(P.trans g).trans E'.symm, fun i n x => ?_⟩
  apply E'.injective
  have hP : P (Pi.single i (n ⊗ₜ x)) = Pi.single i (n ⊗ₜ e x) := by
    funext k
    obtain rfl : k = i := Subsingleton.elim _ _
    simp [P, TE, E]
  simp only [AddEquiv.trans_apply, AddEquiv.apply_symm_apply]
  rw [hP, hg]
  exact (comm i n x).symm

section
variable {O R R' : Type} [CommRing O] [CommRing R] [CommRing R'] [Algebra R R'] {I : Ideal R} {I' : Ideal R'}
  {γ : DividedPowers I} {γ' : DividedPowers I'} {p : ℕ} {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)}
  {κ : O →+* R ⧸ I} {κ' : O →+* R' ⧸ I'}

theorem pt_obj (m : NMor γ q κ γ' q κ' (algebraMap R R')) (T : Thick (nlFun γ' p X q κ')) :
    pt ((m.mor p).functor.obj T) = pt T ≫ m.u := rfl

theorem inU_obj (m : NMor γ q κ γ' q κ' (algebraMap R R')) (hu : m.u = 𝟙 X) (V : X.Opens)
    (T : Thick (nlFun γ' p X q κ')) (h : InU V T) : InU V ((m.mor p).functor.obj T) := by
  unfold InU at h ⊢
  rw [pt_obj, hu, Category.comp_id]
  exact h

def tmor (m : NMor γ q κ γ' q κ' (algebraMap R R')) (p : ℕ) :
    SMor (thP (nlFun γ p X q κ)) (thP (nlFun γ' p X q κ')) (algebraMap R R') where
  G := (m.mor p).functor
  ρ T := RingHom.id _
  comm _ _ := rfl
  nat _ _ := rfl
  mem _ _ hx := hx
  dp _ _ _ _ := rfl

end

abbrev aT {b : Base} (L : b.Fun) : IdF (thA L) := (thFil L 0).sup (IdF.span _ 0)

abbrev aB {b : Base} (L : b.Fun) : IdF (thA L) := (IdF.bot _).sup (IdF.span _ 0)

theorem aT_top {b : Base} (L : b.Fun) (T : Thick L) : (aT L).S T = ⊤ := by
  have h : (thFil L 0).S T = ⊤ := T.pdPow_zero
  exact top_le_iff.1 (h ▸ le_sup_left)

theorem aB_bot {b : Base} (L : b.Fun) (T : Thick L) : (aB L).S T = ⊥ := by
  change (⊥ : Ideal _) ⊔ Ideal.span {algebraMap b.R _ 0} = ⊥
  simp

theorem mapH_square {R R' : Type} [CommRing R] [CommRing R'] {σ : R →+* R'} {K L : Cx.{1} R} {L' P : Cx.{1} R'}
    (φ : Cx.Hom K L' σ) (ψ : Cx.Hom L' P (RingHom.id R')) (φ' : Cx.Hom K L (RingHom.id R)) (ψ' : Cx.Hom L P σ) (n : ℕ)
    (h : ∀ z, ψ.f n (φ.f n z) = ψ'.f n (φ'.f n z)) (c : K.H n) : ψ.mapH n (φ.mapH n c) = ψ'.mapH n (φ'.mapH n c) := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ c
  exact congrArg (Submodule.Quotient.mk (p := _)) (Subtype.ext (h z.1))

section Gen
variable {R R' : Type} [CommRing R] [CommRing R'] {C C' : Type 1} [Category.{0} C] [Category.{0} C']
  {Φ : PDF R C} {Φ' : PDF R' C'} {σ : R →+* R'}

theorem leC_top (f : SMor Φ Φ' σ) (c : R') (a : IdF Φ.A) (a' : IdF Φ'.A) (h : ∀ T, a'.S T = ⊤) : f.LeC c a a' :=
  fun T _ _ => by rw [h]; trivial

theorem leC_bot (f : SMor Φ Φ' σ) (c : R') (b : IdF Φ.A) (b' : IdF Φ'.A) (h : ∀ T, b.S (f.G.obj T) = ⊥) : f.LeC c b b' := by
  intro T x hx
  rw [h, Ideal.mem_bot] at hx
  subst hx
  rw [map_zero, mul_zero]
  exact Ideal.zero_mem _

theorem sqC_add (f : SMor Φ Φ' σ) {a b : IdF Φ.A} {a' b' : IdF Φ'.A} (c c' : R') (ha : f.LeC c a a') (hb : f.LeC c b b')
    (ha' : f.LeC c' a a') (hb' : f.LeC c' b b') (ha'' : f.LeC (c + c') a a') (hb'' : f.LeC (c + c') b b') (T : C')
    (x : (sq a b).obj (f.G.obj T)) :
    (f.sqC (c + c') ha'' hb'').τ T x = (f.sqC c ha hb).τ T x + (f.sqC c' ha' hb').τ T x := by
  obtain ⟨x, hx⟩ := x
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
  refine Subtype.ext ?_
  change Ideal.Quotient.mk _ (algebraMap R' _ (c + c') * f.ρ T y) =
    Ideal.Quotient.mk _ (algebraMap R' _ c * f.ρ T y) + Ideal.Quotient.mk _ (algebraMap R' _ c' * f.ρ T y)
  rw [map_add (f := _), add_mul, map_add (f := _)]

theorem sq_val (f : SMor Φ Φ' σ) {a b : IdF Φ.A} {a' b' : IdF Φ'.A} (ha : f.Le a a') (hb : f.Le b b') (T : C')
    (v : sqM a b (f.G.obj T)) :
    (show sqM a' b' T from (f.sq ha hb).τ T v).1 = Ideal.quotientMap (b'.S T) (f.ρ T) (fun y hy => hb T y hy) v.1 := rfl

theorem sqC_val (f : SMor Φ Φ' σ) {a b : IdF Φ.A} {a' b' : IdF Φ'.A} (c : R') (ha : f.LeC c a a') (hb : f.LeC c b b') (T : C')
    (v : sqM a b (f.G.obj T)) : (show sqM a' b' T from (f.sqC c ha hb).τ T v).1 = f.qC c hb T v.1 := rfl

end Gen

theorem sqC_smul {R R' : Type} [CommRing R] [CommRing R'] [Algebra R R'] {C C' : Type 1} [Category.{0} C] [Category.{0} C']
    {Φ : PDF R C} {Φ' : PDF R' C'} (f : SMor Φ Φ' (algebraMap R R')) {a b : IdF Φ.A} {a' b' : IdF Φ'.A} (r : R) (c : R')
    (ha : f.LeC c a a') (hb : f.LeC c b b') (ha' : f.LeC (r • c) a a') (hb' : f.LeC (r • c) b b') (T : C')
    (x : (sq a b).obj (f.G.obj T)) :
    (f.sqC (r • c) ha' hb').τ T x = algebraMap R R' r • (f.sqC c ha hb).τ T x := by
  obtain ⟨x, hx⟩ := x
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
  refine Subtype.ext ?_
  change Ideal.Quotient.mk _ (algebraMap R' _ (r • c) * f.ρ T y) =
    Ideal.Quotient.mk _ (algebraMap R R' r • (algebraMap R' _ c * f.ρ T y))
  refine congrArg (Ideal.Quotient.mk _) ?_
  rw [Algebra.smul_def r c, map_mul, mul_assoc, Algebra.smul_def (algebraMap R R' r)]

section Sq
variable {O R R' : Type} [CommRing O] [CommRing R] [CommRing R'] [Algebra R R'] {I : Ideal R} {I' : Ideal R'}
  {γ : DividedPowers I} {γ' : DividedPowers I'} {p : ℕ} {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)}
  {κ : O →+* R ⧸ I} {κ' : O →+* R' ⧸ I'}

theorem st_obj (m : NMor γ q κ γ' q κ' (algebraMap R R')) (hu : m.u = 𝟙 X) (𝒱 : Set X.Opens)
    (T : Thick (nlFun γ' p X q κ')) (h : St ⊤ 𝒱 T) : St ⊤ 𝒱 ((m.mor p).functor.obj T) := by
  obtain ⟨-, W, hW, hi⟩ := h
  exact ⟨trivial, W, hW, inU_obj m hu W T hi⟩

theorem square_tau (m : NMor γ q κ γ' q κ' (algebraMap R R')) {Q₁ Q₂ : ObjectProperty (Thick (nlFun γ p X q κ))}
    {Q₁' Q₂' : ObjectProperty (Thick (nlFun γ' p X q κ'))} (h : Q₂ ≤ Q₁) (h' : Q₂' ≤ Q₁')
    (k₁ : ∀ T, Q₁' T → Q₁ ((m.mor p).functor.obj T)) (k₂ : ∀ T, Q₂' T → Q₂ ((m.mor p).functor.obj T)) (a : R')
    (ha₁ : (m.smor Q₁ Q₁' k₁).LeC a (oT Q₁) (oT Q₁')) (hb₁ : (m.smor Q₁ Q₁' k₁).LeC a (oB Q₁) (oB Q₁'))
    (ha₂ : (m.smor Q₂ Q₂' k₂).LeC a (oT Q₂) (oT Q₂')) (hb₂ : (m.smor Q₂ Q₂' k₂).LeC a (oB Q₂) (oB Q₂'))
    (T : Q₂'.FullSubcategory) (w : (sq (oT Q₁) (oB Q₁)).obj ((m.smor Q₁ Q₁' k₁).G.obj ((incl h').G.obj T))) :
    ((incl h').sq (incl_std h' (some 0) 0) (incl_std h' none 0)).τ T (((m.smor Q₁ Q₁' k₁).sqC a ha₁ hb₁).τ _ w) =
      ((m.smor Q₂ Q₂' k₂).sqC a ha₂ hb₂).τ T (((incl h).sq (incl_std h (some 0) 0) (incl_std h none 0)).τ _ w) := by
  obtain ⟨w, hw⟩ := w
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective w
  refine Subtype.ext ?_
  refine (sq_val (incl h') _ _ T _).trans ?_
  refine Eq.trans ?_ (sqC_val (m.smor Q₂ Q₂' k₂) a ha₂ hb₂ T _).symm
  rw [sqC_val, sq_val]
  dsimp only
  refine (congrArg (Ideal.quotientMap _ _ _) (SMor.qC_mk (m.smor Q₁ Q₁' k₁) a hb₁ ((incl h').G.obj T) y)).trans ?_
  refine (Ideal.quotientMap_mk).trans ?_
  refine Eq.trans ?_ (congrArg ((m.smor Q₂ Q₂' k₂).qC a hb₂ T) Ideal.quotientMap_mk).symm
  refine Eq.trans ?_ (SMor.qC_mk (m.smor Q₂ Q₂' k₂) a hb₂ T _).symm
  rfl

theorem pull_square (m : NMor γ q κ γ' q κ' (algebraMap R R')) {Q₁ Q₂ : ObjectProperty (Thick (nlFun γ p X q κ))}
    {Q₁' Q₂' : ObjectProperty (Thick (nlFun γ' p X q κ'))} (h : Q₂ ≤ Q₁) (h' : Q₂' ≤ Q₁')
    (k₁ : ∀ T, Q₁' T → Q₁ ((m.mor p).functor.obj T)) (k₂ : ∀ T, Q₂' T → Q₂ ((m.mor p).functor.obj T)) (a : R')
    (ha₁ : (m.smor Q₁ Q₁' k₁).LeC a (oT Q₁) (oT Q₁')) (hb₁ : (m.smor Q₁ Q₁' k₁).LeC a (oB Q₁) (oB Q₁'))
    (ha₂ : (m.smor Q₂ Q₂' k₂).LeC a (oT Q₂) (oT Q₂')) (hb₂ : (m.smor Q₂ Q₂' k₂).LeC a (oB Q₂) (oB Q₂'))
    (j : ℕ) (x : CH.H (sq (oT Q₁) (oB Q₁)) j) :
    ((incl h').sq (incl_std h' (some 0) 0) (incl_std h' none 0)).pull j (((m.smor Q₁ Q₁' k₁).sqC a ha₁ hb₁).pull j x) =
      ((m.smor Q₂ Q₂' k₂).sqC a ha₂ hb₂).pull j (((incl h).sq (incl_std h (some 0) 0) (incl_std h none 0)).pull j x) :=
  mapH_square _ _ _ _ j (fun z => funext fun s => square_tau m h h' k₁ k₂ a ha₁ hb₁ ha₂ hb₂ _ _) x

end Sq

theorem bc_cover : ∀ {O R R' : Type} [CommRing O] [CommRing R] [CommRing R'] [Algebra R R'] [Module.Flat R R'] {I : Ideal R}
    {I' : Ideal R'} {γ : DividedPowers I} {γ' : DividedPowers I'} {p : ℕ} (hp : p ≠ 0) (hn : IsNilpotent (p : R))
    {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I} {κ' : O →+* R' ⧸ I'}
    (m : NMor γ q κ γ' q κ' (algebraMap R R')) (hu : m.u = 𝟙 X) (hg : m.g = RingHom.id O) (U : Cov q)
    (Q : ObjectProperty (Thick (nlFun γ p X q κ))) (Q' : ObjectProperty (Thick (nlFun γ' p X q κ')))
    (hQ : Q = St ⊤ {⊤}) (hQ' : Q' = St ⊤ {⊤}) (h : ∀ T, Q' T → Q ((m.mor p).functor.obj T))
    (ha : ∀ a : R', (m.smor Q Q' h).LeC a (oT Q) (oT Q')) (hb : ∀ a : R', (m.smor Q Q' h).LeC a (oB Q) (oB Q')) (j : ℕ),
    Tens R (N := fun _ : Unit => R') (M := fun _ => CH.H (sq (oT Q) (oB Q)) j) (M' := CH.H (sq (oT Q') (oB Q')) j)
      fun _ a x => ((m.smor Q Q' h).sqC a (ha a) (hb a)).pull j x := by
  intro O R R' _ _ _ _ _ I I' γ γ' p hp hn X q κ κ' m hu hg U Q Q' hQ hQ' h ha hb j
  subst hQ hQ'
  have hA : ∀ a : R', (tmor m p).LeC a (aT _) (aT _) := fun a => leC_top _ a _ _ (aT_top _)
  have hB : ∀ a : R', (tmor m p).LeC a (aB _) (aB _) := fun a => leC_bot _ a _ _ fun T => aB_bot _ _
  have A : ∀ (𝒱 : Set X.Opens) (k : ∀ T, St (γ := γ') (p := p) (q := q) (κ := κ') ⊤ 𝒱 T → St (γ := γ) (p := p) (q := q) (κ := κ) ⊤ 𝒱 ((m.mor p).functor.obj T)) (a : R'),
      (m.smor _ _ k).LeC a (oT _) (oT _) := fun 𝒱 k a => leC_top _ a _ _ fun T => aT_top _ T.obj
  have B : ∀ (𝒱 : Set X.Opens) (k : ∀ T, St (γ := γ') (p := p) (q := q) (κ := κ') ⊤ 𝒱 T → St (γ := γ) (p := p) (q := q) (κ := κ) ⊤ 𝒱 ((m.mor p).functor.obj T)) (a : R'),
      (m.smor _ _ k).LeC a (oB _) (oB _) := fun 𝒱 k a => leC_bot _ a _ _ fun T => aB_bot _ _
  have Hg : Tens R (N := fun _ : Unit => R')
      (M := fun _ => CH.H (sq (oT (St (γ := γ) (p := p) (q := q) (κ := κ) ⊤ (Set.range U.U))) (oB (St ⊤ (Set.range U.U)))) j)
      (M' := CH.H (sq (oT (St (γ := γ') (p := p) (q := q) (κ := κ') ⊤ (Set.range U.U))) (oB (St ⊤ (Set.range U.U)))) j)
      fun _ a x => ((m.smor _ _ (st_obj m hu _)).sqC a (A _ (st_obj m hu _) a) (B _ (st_obj m hu _) a)).pull j x := by
    refine _root_.GlobalTheory.CompanionTheory.GlobSt.glob_st.2.2 (m.mor p).functor (fun _ : Unit => R') (fun _ => sq (aT _) (aB _)) (sq (aT _) (aB _))
      (fun _ a T => ((tmor m p).sqC a (hA a) (hB a)).τ T) (fun _ a _ _ φ x => ((tmor m p).sqC a (hA a) (hB a)).nat φ x)
      (fun _ a a' T x => sqC_add (tmor m p) a a' (hA a) (hB a) (hA a') (hB a') (hA _) (hB _) T x) (fun _ r a T x => sqC_smul (tmor m p) r a (hA a) (hB a) (hA _) (hB _) T x)
      ⊤ ⊤ U.U U.U (fun _ => st_obj m hu _) (fun _ => st_obj m hu _) (st_obj m hu _) ?_ j
    intro S hS j
    obtain ⟨α, hα⟩ := id hS
    obtain ⟨c', -⟩ := coord_res (U.c α) (iInf₂_le α hα) (U.inter S hS)
    exact GlobalTheory.CompanionTheory.ChartLocBc.local_bc hp hn m hu hg c' _ _ rfl rfl (st_obj m hu _) (A _ _) (B _ _) j
  have h₁ : St (γ := γ) (p := p) (q := q) (κ := κ) ⊤ (Set.range U.U) ≤ St ⊤ {⊤} := fun T _ => ⟨trivial, ⊤, rfl, fun _ _ => trivial⟩
  have h₂ : St (γ := γ') (p := p) (q := q) (κ := κ') ⊤ (Set.range U.U) ≤ St ⊤ {⊤} := fun T _ => ⟨trivial, ⊤, rfl, fun _ _ => trivial⟩
  have hc : ∀ W ∈ ({⊤} : Set X.Opens), W ≤ sSup (Set.range U.U) := by
    rintro W rfl
    rw [sSup_range, U.cover]
  have b₁ := (zar (γ := γ) (p := p) (q := q) (κ := κ) ⊤ (Or.inr ⟨hp, Or.inl rfl⟩) _ _ h₁ hc j).2.1 (some 0) none 0 0
  have b₂ := (zar (γ := γ') (p := p) (q := q) (κ := κ') ⊤ (Or.inr ⟨hp, Or.inl rfl⟩) _ _ h₂ hc j).2.1 (some 0) none 0 0
  exact tens_transport _ _ _ b₁ _ b₂
    (fun _ a x => pull_square m h₁ h₂ h (st_obj m hu _) a (ha a) (hb a) (A _ _ a) (B _ _ a) j x) Hg

end GlobalTheory.CompanionTheory.BcCov
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NilpotentIdentityMorphismCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothModelTensorWittComparison =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothModelTensorWittComparison", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrisZeroSurjective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatAcrisTruncatedWittStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NilpotentIdentityMorphismCompat\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.OB\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.Pb

noncomputable section
namespace GlobalTheory.CompanionTheory.BcAcris

theorem pull_comm {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : Res l K) (M : Model l K) (j n : ℕ)
    (Q' : ObjectProperty (Thick (nlFun (B.DD true (base l) n) l M.X M.p (Mid.κm r n)))) (a : AW r)
    (y : (Wc.HS l (B.schFn M.p) r.ρ j).M n) :
    (toQ Q' ((base l).cris n)).pull j (idA r a • bWL r M n j y) =
      (base l).cris n a • (toQ Q' ((base l).cris n)).pull j
        ((B.omMor ((nm r M n).mor l) r.w (Mid.wn_mk r n)).pull j y) := by
  have e : bWL r M n j y = (B.omMor ((nm r M n).mor l) r.w (Mid.wn_mk r n)).pull j y :=
    congrArg (fun t => CH.Mor.pull t j y) (bWMorL_eq r M n)
  exact (congrArg (fun v => (toQ Q' ((base l).cris n)).pull j (idA r a • v)) e).trans
    (LinearMap.map_smulₛₗ ((toQ Q' ((base l).cris n)).pull j) (idA r a) _)



theorem bc_tens : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : Res l K) (M : Model l K), M.Sm → ∀ j n,
    Tens (WittVector l r.k) (N := fun _ : Unit => AW r) (M := fun _ => (Wc.HS l (B.schFn M.p) r.ρ j).M n)
      (M' := Mid.HM r M n j) fun _ a y => idA r a • bWL r M n j y := by
  intro l _ K r M hM j n
  letI := (Mid.wn r n).toAlgebra
  haveI : Module.Flat (Wc.Wm l r.k n) ((base l).Acr n) := _root_.GlobalTheory.CompanionTheory.CrisFlat.flat_acr r n
  obtain ⟨U⟩ := cov_of_sm M hM
  let m := nm r M n
  let Q : ObjectProperty (Thick (nlFun (Wc.pd l r.k n) l M.X M.p ((Wc.res l r.k n).comp r.ρ))) := St ⊤ {⊤}
  let Q' : ObjectProperty (Thick (nlFun (B.DD true (base l) n) l M.X M.p (Mid.κm r n))) := St ⊤ {⊤}
  have hQ : ∀ T, Q T := st_all
  have hQ' : ∀ T, Q' T := st_all
  have h : ∀ T, Q' T → Q ((m.mor l).functor.obj T) := fun T _ => hQ _
  have ha : ∀ a, (m.smor Q Q' h).LeC a (oT Q) (oT Q') := fun a => GlobalTheory.CompanionTheory.BcCov.leC_top _ a _ _ (oT_top Q')
  have hb : ∀ a, (m.smor Q Q' h).LeC a (oB Q) (oB Q') := fun a => GlobalTheory.CompanionTheory.BcCov.leC_bot _ a _ _ fun T => oB_bot Q _
  have T := _root_.GlobalTheory.CompanionTheory.BcCov.bc_cover (Fact.out : l.Prime).ne_zero (l_nil r n) m rfl rfl U Q Q' rfl rfl h ha hb j
  refine tens_change (A := AW r) (Ideal.Quotient.mk _) ((base l).cris n) (cris_surjective n) (fun w => rfl)
    Ideal.Quotient.mk_surjective ((l : WittVector l r.k) ^ n)
    (Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self _)) ?_
    ((toQ Q (Ideal.Quotient.mk _)).pull j) (toQ_pull_bijective Q _ hQ j)
    ((toQ Q' ((base l).cris n)).pull j).toAddMonoidHom (toQ_pull_bijective Q' _ hQ' j)
    _ _ ?_ T
  · intro a h0
    obtain ⟨b, hb'⟩ := cris_ker n a h0
    refine ⟨b, hb'.trans ?_⟩
    change _ = r.w _ * b
    rw [map_pow, map_natCast]
  · intro a y
    have key := sqC_toQ m Q Q' h (Ideal.Quotient.mk _) ((base l).cris n) r.w (Mid.wn_mk r n) ((base l).cris n a)
      (ha _) (hb _) j y
    exact (pull_comm r M j n Q' a y).trans key.symm

end GlobalTheory.CompanionTheory.BcAcris
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothModelTensorWittComparison =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.BcTens =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.BcTens", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.BWMorL\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothModelTensorWittComparison\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false


noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg

namespace CrystallineSemistableComparison.Pb

theorem bc_tens : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : Res l K) (M : Model l K), M.Sm →
    ∀ j n, Tens (WittVector l r.k) (N := fun _ : Unit => AW r) (M := fun _ => (HSW r M j).M n) (M' := Mid.HM r M n j)
      fun _ a y => idA r a • bW r M n j y := fun r M hM j n => _root_.GlobalTheory.CompanionTheory.BcAcris.bc_tens r M hM j n

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.BcTens =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PhiAIter =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PhiAIter", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.ExistsAlpha\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.NuPull\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.TwistedRepresentations.Tens\npublic import Mathlib.RingTheory.Artinian.Defs\npublic import Mathlib.RingTheory.Noetherian.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BoundedCokernelLimitToLevel\npublic import Mathlib.RingTheory.FiniteLength\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteLengthOfLseqFirst\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LimitDivisibleOfVanishingLevelStatement\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModuleFiniteLimitOfLseq\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.LsSeqEq\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocalSystemQuotients.SmoothModelFiniteLengthLink\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.BcTens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg

namespace CrystallineSemistableComparison.Pb



variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : Res l K)

def sT (M : Model l K) (j : ℕ) : Sys.{1} (AW r) := HMS r M j

def sH (M : Model l K) (j : ℕ) : Sys.{1} (AW r) := M.HS true j

def gH (M : Model l K) (j : ℕ) : Sys.Hom (HSW r M j) (sT r M j) (algebraMap (WittVector l r.k) (AW r)) :=
  ⟨fun n => bW r M n j, fun n y => _root_.GlobalTheory.CompanionTheory.CrisBaseChange.bW_red r M n j y⟩

def ψA (N : ℕ) : AW r →+* AW r := Mid.phiA l N

variable {N : ℕ} (hT : Mid.TeichmullerCongruence r N)

def nuH (M : Model l K) (j : ℕ) : Sys.Hom (sH r M j) (sT r M j) (ψA r N) := ⟨fun n => Mid.nu r M n j hT, fun n x => _root_.GlobalTheory.CompanionTheory.NuRed.nu_red r hT M n j x⟩

def muH (M : Model l K) (j : ℕ) : Sys.Hom (sT r M j) (sH r M j) (RingHom.id _) := ⟨fun n => Mid.mu r M n j hT, fun n x => _root_.GlobalTheory.CompanionTheory.CrysMid.mu_redHc r hT M n j x⟩

theorem lw_fin (M : Model l K) (hM : M.Sm) (j : ℕ) : Module.Finite (WittVector l r.k) (HSW r M j).lim := by
  obtain ⟨E⟩ := LsG.ls_seq r M hM j
  exact _root_.GlobalTheory.CompanionTheory.TowerLim.module_finite_lim _ l _ _ E (smooth_model_finite_length_link r M hM j)

theorem pin_all (M : Model l K) (j : ℕ) : ∃ (e : ℕ) (α : (sH r M j).lim →+ AW r ⊗[WittVector l r.k] (HSW r M j).lim),
    M.Sm → Fa.Pin l (gH r M j) (nuH r hT M j) e α := by
  by_cases hM : M.Sm
  swap
  · exact ⟨0, 0, fun h => absurd h hM⟩
  obtain ⟨E⟩ := LsG.ls_seq r M hM j
  have ha : ∀ n, IsArtinian (WittVector l r.k) ((HSW r M j).M n) := fun n =>
    (isFiniteLength_iff_isNoetherian_isArtinian.1 (_root_.GlobalTheory.CompanionTheory.TowerLen.isFiniteLength_level _ l _ _ E (smooth_model_finite_length_link r M hM j) n)).2
  obtain ⟨c, hc⟩ := _root_.GlobalTheory.CompanionTheory.TwCok.lim_cokernel_bounded _ l _ _ E ha (lw_fin r M hM (j + 1))
  have := flatW r
  have : IsAdicComplete (Ideal.span {(l : AW r)}) (AW r) := adicA
  obtain ⟨α, hα⟩ := Fa.pin_ex l (WittVector.irreducible l) c (lw_fin r M hM j) E.kill (GlobalTheory.T.limit_divisible_of_vanishing_level _ l _ _ E ha) hc (gH r M j)
    (bc_tens r M hM j) (nuH r hT M j)
  exact ⟨c, α, fun _ => hα⟩

theorem iter_lim {R : Type} [CommRing R] {S : Sys.{1} R} {σ : R →+* R} (φ : Sys.Hom S S σ) (N n : ℕ) (x : S.lim) :
    ((⇑φ.lim.toAddMonoidHom)^[N] x).1 n = (⇑(φ.f n))^[N] (x.1 n) := by
  induction N with
  | zero => rfl
  | succ N ih =>
    rw [Function.iterate_succ_apply', Function.iterate_succ_apply', ← ih]
    rfl

def betaP (M : Model l K) (j : ℕ) : AL r M j →ₗ[(per l K).A] HL M j where
  toFun w := Fa.beta (A := AW r) (gH r M j) (muH r hT M j) w
  map_add' := (Fa.beta (A := AW r) (gH r M j) (muH r hT M j)).map_add
  map_smul' a w := (Fa.beta (A := AW r) (gH r M j) (muH r hT M j)).map_smul (ofA r a) w

theorem phiA_iter (N : ℕ) (a : Acris l) :
    Mid.phiA l N a = (ACris.phi (K := ℂ_[l]) (p := l))^[N] a := by
  induction N with
  | zero => rfl
  | succ N ih => rw [Mid.phiA_succ, Function.iterate_succ_apply', ih]

def σA (σ : Gal(PadicAlgCl l/K)) : AW r →+* AW r := ACris.galCris σ

def Pinned (F : Fac r N) : Prop := ∀ M : Model l K, M.Sm → ∀ j, Fa.Pin l (gH r M j) (nuH r hT M j) (F.e M j) (F.α M j) ∧
  ∀ w, F.β M j w = Fa.beta (gH r M j) (muH r hT M j) w

def MuNu : Prop := ∀ (M : Model l K) (n j : ℕ) (x : B.Hc (B.schFn M.p) (okToOC l K) true n j),
  Mid.mu r M n j hT (Mid.nu r M n j hT x) = (⇑(B.phiHc (B.schFn M.p) (okToOC l K) n j))^[N] x

theorem fac_ex (hmn : MuNu r hT)
    (hσ : ∀ (g : K.fixingSubgroup) w, ACris.galCris (IntermediateField.fixingSubgroupEquiv K g) (r.w w) = r.w w) :
    ∃ F : Fac r N, Pinned r hT F := by
  choose e α h using pin_all r hT
  refine ⟨{ e := e
            α := α
            β := betaP r hT
            galT := fun M j g => Fa.tmap (A := AW r) (σA r (IntermediateField.fixingSubgroupEquiv K g)) (τW := RingHom.id _) LinearMap.id (hσ g)
            galT_tmul := fun _ _ _ _ _ _ => rfl
            lin := ?_, fac := ?_, gal := ?_, galβ := ?_ }, fun M hM j => ⟨h M j hM, fun _ => rfl⟩⟩
  · intro M hM j a x
    exact ((h M j hM).lin a x).trans (congrArg (fun b : AW r => b • α M j x) (phiA_iter N a))
  · intro M hM j x
    exact (h M j hM).fac (muH r hT M j) x _ fun n => (hmn M n j _).trans (iter_lim (M.phiH j) N n x).symm
  · intro M hM j g x
    exact ((h M j hM).op (h M j hM) (τ := σA r (IntermediateField.fixingSubgroupEquiv K g)) (fun n => galM r M _ (hσ g) n j) id
      (fun n y => (_root_.GlobalTheory.CompanionTheory.BWGal.bW_gal r M _ (hσ g) n j _).symm) _ (fun _ _ => rfl) x (galL M j g x) fun n => _root_.GlobalTheory.CompanionTheory.NuGalSquare.nu_gal r hT M _ (hσ g) n j _).2 rfl
  · intro M hM j g y
    refine Subtype.ext (funext fun n => (_root_.GlobalTheory.CompanionTheory.MuGal.mu_gal r hT M _ (hσ g) n j _).trans (congrArg (Mid.mu r M n j hT) ?_))
    have e1 : Fa.E (gH r M j) n ((1 : AW r) ⊗ₜ y) = bW r M n j (y.1 n) := (Fa.E_tmul _ n 1 y).trans (one_smul _ _)
    exact (congrArg (galM r M _ (hσ g) n j) e1).trans ((_root_.GlobalTheory.CompanionTheory.BWGal.bW_gal r M _ (hσ g) n j _).trans e1.symm)

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PhiAIter =====
