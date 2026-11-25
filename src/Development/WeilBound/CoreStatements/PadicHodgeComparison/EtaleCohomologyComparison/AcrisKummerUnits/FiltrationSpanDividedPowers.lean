module

public import Mathlib.RingTheory.AdicCompletion.Basic
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpSurjectiveKerSpan
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.MapWXi
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UntiltAdicComplete
public import Mathlib.NumberTheory.Basic
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallineFiltrationMultiplicative
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerQuotientExists
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiltrationDividedPowerStructures
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SurjectivePreservesClosednessComparability
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientMapsSurjectiveWithKernels
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueIdempotentLiftTilt
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralLocalizationAwayInRing
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectoidXiNonZeroDivisor
public import GroundTheory.PAdicHodge.ACrisLog
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExpansionEqZeroIffCoeffsMem
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralRingAdicCompletePrimeRegular
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PeriodRingComparisonOfBase
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallineFiltrationSpanDividedPowers
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.GaloisTwistIdentitySection
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FunctorialityOfPeriodRingMaps
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistFrobeniusFiltrationCompat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdemMulEqZero
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExpansionSurjectiveAdditiveLinear
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFiltrationGeneratedByDividedXi

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemPow, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompatibleRootsLiftToTilt, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousFunctionsPerfectAdicRing, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsDividedPowersOnReductions, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComparableQuotientOfValuation, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimeRootValuationQuotient, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsThetaKernelEqFiltrationOne, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentsOfPrimePowerRootOfUnity, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsUnitOfIsUnitSharp, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpMapCongruenceProperties, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PrimePowAnnihilatorReduction, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorLiftKernelModPrime, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorLiftSurjectiveKernelLevel, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TiltSequenceDeterminedBySharp, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.FiltrationSpanDividedPowers

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemPow =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemPow", "h": "module\n\npublic import Mathlib.RingTheory.AdicCompletion.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PrecompleteLimitOfPowDvd

private lemma memPow {R : Type*} [CommRing R] (π x : R) (m : ℕ) :
    x ∈ ((Ideal.span {π}) ^ m • (⊤ : Submodule R R)) ↔ π ^ m ∣ x := by
  rw [smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton]

private lemma tele {R : Type*} [CommRing R] (π : R) (f : ℕ → R)
    (h : ∀ n : ℕ, π ^ n ∣ f (n + 1) - f n) (m : ℕ) : ∀ k : ℕ, π ^ m ∣ f (m + k) - f m := by
  intro k
  induction k with
  | zero => simp
  | succ k ih =>
    have h2 : π ^ m ∣ f (m + k + 1) - f (m + k) :=
      (pow_dvd_pow π (Nat.le_add_right m k)).trans (h (m + k))
    have : f (m + (k + 1)) - f m = (f (m + k + 1) - f (m + k)) + (f (m + k) - f m) := by
      rw [← add_assoc]; ring
    rw [this]; exact dvd_add h2 ih

end PrecompleteLimitOfPowDvd

theorem UpperTheory.Reformulated.B.Yra6.main.{u_1} :
    ∀ {R : Type u_1} [inst : CommRing R] {π : R},
      IsPrecomplete (Ideal.span {π}) R →
        ∀ (f : ℕ → R), (∀ (n : ℕ), π ^ n ∣ f (n + (1 : ℕ)) - f n) → ∃ (L : R), ∀ (n : ℕ), π ^ n ∣ f n - L := by
  intro R _ π hP f h
  obtain ⟨L, hL⟩ := hP.prec' f (by
    intro m n hmn
    rw [SModEq.sub_mem, PrecompleteLimitOfPowDvd.memPow]
    obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hmn
    have := PrecompleteLimitOfPowDvd.tele π f h m k
    rw [← neg_sub]; exact (dvd_neg).2 this)
  refine ⟨L, fun n => ?_⟩
  have := hL n
  rw [SModEq.sub_mem, PrecompleteLimitOfPowDvd.memPow] at this
  exact this
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemPow =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompatibleRootsLiftToTilt =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompatibleRootsLiftToTilt", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemPow\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpSurjectiveKerSpan\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.MapWXi\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UntiltAdicComplete\npublic import Mathlib.NumberTheory.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.Untilt

section Adic

variable {R : Type*} [CommRing R]

theorem eq_zero_of_forall_pow_dvd {π x : R} (h : IsHausdorff (Ideal.span {π}) R)
    (hx : ∀ n : ℕ, π ^ n ∣ x) : x = 0 :=
  h.haus x fun n => (_root_.GroundTheory.PAdicHodge.smodEq_span_singleton_pow_iff π x 0 n).2 (by simpa using hx n)

theorem pow_pow_of_compatible {M : Type*} [Monoid M] {l : ℕ} {v : ℕ → M}
    (hv : ∀ i, v (i + 1) ^ l = v i) (i j : ℕ) : v (i + j) ^ l ^ j = v i := by
  induction j with
  | zero => simp
  | succ j ih =>
    rw [pow_succ', pow_mul, ← add_assoc, hv, ih]

end Adic

variable {l : ℕ} [Fact l.Prime] (A : PAlg l)

theorem sub_pow_pow (x y : A.A) (j : ℕ) : (x - y) ^ l ^ j = x ^ l ^ j - y ^ l ^ j := by
  induction j with
  | zero => simp
  | succ j ih =>
    rw [pow_succ, pow_mul, ih, pow_mul, pow_mul]
    exact map_sub A.frob _ _

theorem exists_limit_pow (b : ℕ → A.A) (hb : ∀ j, A.pi ∣ b (j + 1) ^ l - b j) (i : ℕ) :
    ∃ L, ∀ n : ℕ, A.pi ^ n ∣ b (i + n) ^ l ^ n - L := by
  have hl : 1 < l := (Fact.out : l.Prime).one_lt
  refine _root_.UpperTheory.Reformulated.B.Yra6.main (π := A.pi) A.compl.toIsPrecomplete
    (fun n => b (i + n) ^ l ^ n) fun n => ?_
  have e : b (i + (n + 1)) ^ l ^ (n + 1) - b (i + n) ^ l ^ n
      = (b (i + n + 1) ^ l - b (i + n)) ^ l ^ n := by
    rw [sub_pow_pow, ← pow_mul, ← pow_succ', add_assoc]
  change A.pi ^ n ∣ b (i + (n + 1)) ^ l ^ (n + 1) - b (i + n) ^ l ^ n
  rw [e]
  exact (pow_dvd_pow _ (Nat.lt_pow_self hl).le).trans (pow_dvd_pow_of_dvd (hb _) _)

theorem exists_compatible_roots_of_sharp : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (u : ℕ → A.U),
    (∀ i, u (i + 1) ^ l = u i) →
    ∃ a : ℕ → A.A, (∀ i, a (i + 1) ^ l = a i) ∧ ∀ i, A.sharp (a i) = u i := by
  intro l _ A u hu
  obtain ⟨hsurj, hker⟩ := sharp_map_surjective_ker A
  choose b hb using fun j => hsurj (Ideal.Quotient.mk _ (u j))
  have hbd : ∀ j, A.pi ∣ b (j + 1) ^ l - b j := fun j => by
    rw [← Ideal.mem_span_singleton]
    rw [← hker, RingHom.mem_ker, map_sub, map_pow, hb, hb, ← map_pow, hu, sub_self]
  choose a ha using exists_limit_pow A b hbd
  have hA : IsHausdorff (Ideal.span {A.pi}) A.A := A.compl.toIsHausdorff
  have hroot : ∀ i, a (i + 1) ^ l = a i := fun i => by
    refine sub_eq_zero.1 (eq_zero_of_forall_pow_dvd hA fun n => ?_)
    have h1 : A.pi ^ n ∣ b (i + 1 + n) ^ l ^ (n + 1) - a (i + 1) ^ l := by
      rw [pow_succ, pow_mul]
      exact (ha (i + 1) n).trans (sub_dvd_pow_sub_pow _ _ l)
    have h2 : A.pi ^ n ∣ b (i + 1 + n) ^ l ^ (n + 1) - a i := by
      have := ha i (n + 1)
      rw [show i + (n + 1) = i + 1 + n by ring] at this
      exact (pow_dvd_pow _ (Nat.le_succ n)).trans this
    have := dvd_sub h2 h1
    simpa using this
  have hmod : ∀ i, A.pi ∣ a i - b i := fun i => by
    have h1 := ha i 1
    rw [pow_one, pow_one] at h1
    have := dvd_sub (hbd i) h1
    simpa using this
  have hl1 : ∀ i, (l : A.U) ∣ A.sharp (a i) - u i := fun i => by
    have h0 : A.aToU1 (a i) = A.aToU1 (b i) := by
      rw [← sub_eq_zero, ← map_sub, ← RingHom.mem_ker, hker, Ideal.mem_span_singleton]
      exact hmod i
    rw [hb, sharpMap_eq] at h0
    have := Ideal.Quotient.eq.1 h0
    rwa [pow_one, Ideal.mem_span_singleton] at this
  refine ⟨a, hroot, fun i => sub_eq_zero.1 ?_⟩
  refine eq_zero_of_forall_pow_dvd (π := (l : A.U)) (_root_.GlobalTheory.CompanionTheory.Untilt.isAdicComplete_U A).toIsHausdorff fun n => ?_
  have h1 := dvd_sub_pow_of_dvd_sub (hl1 (i + n)) n
  rw [← map_pow, pow_pow_of_compatible hroot, pow_pow_of_compatible hu] at h1
  exact (pow_dvd_pow _ (Nat.le_succ n)).trans h1

end GlobalTheory.CompanionTheory.Untilt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompatibleRootsLiftToTilt =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousFunctionsPerfectAdicRing =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousFunctionsPerfectAdicRing", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.ContFn

theorem smod_iff {R : Type} [CommRing R] (a : R) (n : ℕ) (x y : R) :
    SModEq ((Ideal.span {a}) ^ n • ⊤ : Submodule R R) x y ↔ a ^ n ∣ x - y := by
  rw [SModEq.sub_mem, Ideal.span_singleton_pow, smul_eq_mul, Ideal.mul_top, Ideal.mem_span_singleton]

variable {l : ℕ} [Fact l.Prime] (A : PAlg l) {Γ : Type} [TopologicalSpace Γ]

theorem pi_nzd : A.pi ∈ nonZeroDivisors A.A := A.tf

theorem mem_contR_iff (f : Γ → A.A) :
    f ∈ A.contR Γ ↔ ∀ k : ℕ, ∀ γ : Γ, ∀ᶠ γ' in nhds γ, A.pi ^ k ∣ f γ' - f γ := by
  refine forall_congr' fun k => ?_
  change IsLocallyConstant (fun γ => Ideal.Quotient.mk (Ideal.span {A.pi ^ k}) (f γ)) ↔ _
  rw [IsLocallyConstant.iff_eventually_eq]
  refine forall_congr' fun γ => Filter.eventually_congr (Filter.Eventually.of_forall fun γ' => ?_)
  rw [Ideal.Quotient.eq, Ideal.mem_span_singleton]

theorem pow_cancel {k j : ℕ} {a : A.A} (h : A.pi ^ (k + j) ∣ A.pi ^ k * a) : A.pi ^ j ∣ a := by
  obtain ⟨c, hc⟩ := h
  refine ⟨c, ?_⟩
  have hk : A.pi ^ k ∈ nonZeroDivisors A.A := pow_mem (pi_nzd A) k
  have := mem_nonZeroDivisors_iff_left.1 hk (a - A.pi ^ j * c) (by rw [mul_sub, hc, pow_add]; ring)
  exact sub_eq_zero.1 this

theorem frob_dvd {k : ℕ} {d : A.A} (h : A.pi ^ (l * k) ∣ A.frob d) : A.pi ^ k ∣ d := by
  obtain ⟨c, hc⟩ := h
  obtain ⟨c', rfl⟩ := A.frob_bijective.2 c
  refine ⟨c', A.frob_bijective.1 ?_⟩
  rw [hc, map_mul]
  congr 1
  change A.pi ^ (l * k) = (A.pi ^ k) ^ l
  rw [← pow_mul, mul_comm]

theorem val_pow_apply (f : A.contR Γ) (k : ℕ) (γ : Γ) : (f ^ k).1 γ = f.1 γ ^ k := by
  simp

theorem dvd_iff (k : ℕ) (f : A.contR Γ) : A.contC Γ A.pi ^ k ∣ f ↔ ∀ γ, A.pi ^ k ∣ f.1 γ := by
  constructor
  · rintro ⟨g, rfl⟩ γ
    refine ⟨g.1 γ, ?_⟩
    change (A.contC Γ A.pi ^ k).1 γ * g.1 γ = _
    rw [val_pow_apply]
    rfl
  · intro h
    choose g hg using h
    have hg' : g ∈ A.contR Γ := (mem_contR_iff A g).2 fun j γ => by
      filter_upwards [(mem_contR_iff A f.1).1 f.2 (k + j) γ] with γ' hγ'
      rw [hg γ', hg γ, ← mul_sub] at hγ'
      exact pow_cancel A hγ'
    refine ⟨⟨g, hg'⟩, Subtype.ext (funext fun γ => ?_)⟩
    refine (hg γ).trans ?_
    change _ = (A.contC Γ A.pi ^ k).1 γ * g γ
    rw [val_pow_apply]
    rfl

theorem perfect : PerfectRing (A.contR Γ) l := by
  refine ⟨⟨fun x y h => ?_, fun f => ?_⟩⟩
  · refine Subtype.ext (funext fun γ => A.frob_bijective.1 ?_)
    have e := congrFun (congrArg Subtype.val h) γ
    change (x ^ l).1 γ = (y ^ l).1 γ at e
    rw [val_pow_apply, val_pow_apply] at e
    exact e
  · choose g hg using fun γ => A.frob_bijective.2 (f.1 γ)
    have hg' : g ∈ A.contR Γ := (mem_contR_iff A g).2 fun k γ => by
      filter_upwards [(mem_contR_iff A f.1).1 f.2 (l * k) γ] with γ' hγ'
      refine frob_dvd A ?_
      rw [map_sub, hg γ', hg γ]
      exact hγ'
    refine ⟨⟨g, hg'⟩, Subtype.ext (funext fun γ => ?_)⟩
    change ((⟨g, hg'⟩ : A.contR Γ) ^ l).1 γ = _
    rw [val_pow_apply]
    exact hg γ

theorem complete : IsAdicComplete (Ideal.span {A.contC Γ A.pi}) (A.contR Γ) := by
  have hc : IsAdicComplete (Ideal.span {A.pi}) A.A := A.compl
  have h1 : IsHausdorff (Ideal.span {A.contC Γ A.pi}) (A.contR Γ) := ⟨fun x hx => by
    refine Subtype.ext (funext fun γ => ?_)
    refine hc.toIsHausdorff.haus' (x.1 γ) fun n => (smod_iff _ _ _ _).2 ?_
    have := (dvd_iff A n x).1 (by simpa using (smod_iff _ _ _ _).1 (hx n)) γ
    simpa using this⟩
  have h2 : IsPrecomplete (Ideal.span {A.contC Γ A.pi}) (A.contR Γ) := ⟨fun f hf => by
    have hp : ∀ m n, m ≤ n → ∀ γ, A.pi ^ m ∣ (f m).1 γ - (f n).1 γ := fun m n h γ =>
      (dvd_iff A m (f m - f n)).1 ((smod_iff _ _ _ _).1 (hf h)) γ
    choose L hL using fun γ => hc.toIsPrecomplete.prec (f := fun n => (f n).1 γ)
      fun {m n} h => (smod_iff _ _ _ _).2 (hp m n h γ)
    have hL' : ∀ n γ, A.pi ^ n ∣ (f n).1 γ - L γ := fun n γ => (smod_iff _ _ _ _).1 (hL γ n)
    have hLm : L ∈ A.contR Γ := (mem_contR_iff A L).2 fun k γ => by
      filter_upwards [(mem_contR_iff A (f k).1).1 (f k).2 k γ] with γ' h
      have e : L γ' - L γ = ((f k).1 γ' - (f k).1 γ) - ((f k).1 γ' - L γ') + ((f k).1 γ - L γ) := by ring
      rw [e]
      exact dvd_add (dvd_sub h (hL' k γ')) (hL' k γ)
    exact ⟨⟨L, hLm⟩, fun n => (smod_iff _ _ _ _).2 ((dvd_iff A n _).2 fun γ => hL' n γ)⟩⟩
  exact { toIsHausdorff := h1, toIsPrecomplete := h2 }

theorem contC_pi_nzd : A.contC Γ A.pi ∈ nonZeroDivisors (A.contR Γ) :=
  mem_nonZeroDivisors_iff_left.2 fun x hx => Subtype.ext (funext fun γ =>
    mem_nonZeroDivisors_iff_left.1 (pi_nzd A) (x.1 γ) (congrFun (congrArg Subtype.val hx) γ))

theorem main : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (Γ : Type) [TopologicalSpace Γ],
    PerfectRing (A.contR Γ) l ∧ IsAdicComplete (Ideal.span {A.contC Γ A.pi}) (A.contR Γ) ∧
      A.contC Γ A.pi ∈ nonZeroDivisors (A.contR Γ) ∧
      ∀ (k : ℕ) (f : A.contR Γ), f ∈ Ideal.span {A.contC Γ A.pi ^ k} ↔
        ∀ γ, f.1 γ ∈ Ideal.span {A.pi ^ k} := fun A Γ _ =>
  ⟨perfect A, complete A, contC_pi_nzd A, fun k f => by
    simp only [Ideal.mem_span_singleton]
    exact dvd_iff A k f⟩

end GlobalTheory.CompanionTheory.ContFn
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousFunctionsPerfectAdicRing =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsDividedPowersOnReductions =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsDividedPowersOnReductions", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallineFiltrationMultiplicative\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerQuotientExists\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiltrationDividedPowerStructures\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.PerfFil

theorem mem_span_pow_of_factorial_mul_eq {S : Type} [CommRing S] (hS : R.TF S) {l : ℕ}
    (hl : l.Prime) (n : ℕ) {x : S} (hx : x ∈ Ideal.span {(l : S) ^ n}) {k : ℕ} (hk : k ≠ 0)
    {y : S} (e : (k.factorial : S) * y = x ^ k) : y ∈ Ideal.span {(l : S) ^ n} := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp
  obtain ⟨x', rfl⟩ := Ideal.mem_span_singleton'.1 hx
  haveI := Fact.mk hl
  obtain ⟨v, m, hlm, hm⟩ := Nat.exists_eq_pow_mul_and_not_dvd k.factorial_ne_zero l hl.ne_one
  have hv : v < k := by
    have h1 : v ≤ multiplicity l k.factorial :=
      (Nat.pow_dvd_iff_le_multiplicity hl.ne_one k.factorial_ne_zero).1 ⟨m, hm⟩
    exact lt_of_le_of_lt h1 (multiplicity_factorial_lt_of_ne_zero l hk)
  obtain ⟨t, ht⟩ : ∃ t, n * k = n + v + t := by
    obtain ⟨k', rfl⟩ := Nat.exists_eq_succ_of_ne_zero hk
    refine ⟨n * k' - v, ?_⟩
    have : v ≤ n * k' := by nlinarith [Nat.lt_succ_iff.1 hv]
    rw [Nat.succ_eq_add_one, Nat.mul_add, Nat.mul_one]
    omega
  have hfac : (k.factorial : S) = (l : S) ^ v * (m : S) := by rw [hm]; push_cast; rfl
  have e2 : (l : S) ^ v * ((m : S) * y) = (l : S) ^ v * ((l : S) ^ n * ((l : S) ^ t * x' ^ k)) := by
    rw [← mul_assoc, ← hfac, e, mul_pow, ← pow_mul, ht, pow_add, pow_add]
    ring
  have hr : (l : S) ^ v ∈ nonZeroDivisors S := pow_mem (hS l hl.ne_zero) v
  have e3 : (m : S) * y = (l : S) ^ n * ((l : S) ^ t * x' ^ k) := by
    have h0 : (l : S) ^ v * ((m : S) * y - (l : S) ^ n * ((l : S) ^ t * x' ^ k)) = 0 := by
      rw [mul_sub, e2, sub_self]
    exact sub_eq_zero.1 ((mem_nonZeroDivisors_iff_right.1 hr) _ (by rwa [mul_comm] at h0))
  have hc : IsCoprime (m : ℤ) ((l : ℤ) ^ n) := by
    apply IsCoprime.pow_right
    rw [Nat.isCoprime_iff_coprime]
    exact ((Nat.Prime.coprime_iff_not_dvd hl).2 hlm).symm
  obtain ⟨a, b, hab⟩ := hc
  have hab' : (a : S) * (m : S) + (b : S) * (l : S) ^ n = 1 := by
    exact_mod_cast congrArg (Int.cast : ℤ → S) hab
  have hy : y = ((a : S) * ((l : S) ^ t * x' ^ k) + (b : S) * y) * (l : S) ^ n := by
    calc y = ((a : S) * (m : S) + (b : S) * (l : S) ^ n) * y := by rw [hab', one_mul]
      _ = (a : S) * ((m : S) * y) + (b : S) * (l : S) ^ n * y := by ring
      _ = _ := by rw [e3]; ring
  rw [hy]
  exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)

theorem exists_dividedPowers_map_mkAcr {l : ℕ} [hl : Fact l.Prime] (A : PAlg l) (n : ℕ)
    (I : Ideal A.Acr0) (hI : R.PdI I) (K : Ideal (A.Acr n)) (hK : K = I.map (A.mkAcr n)) :
    ∃ δ : DividedPowers K, R.IsPd (A.mkAcr n) I δ := by
  subst hK
  exact GlobalTheory.CompanionTheory.PdTF.exists_dividedPowers_map_quotient A.acris_torsion_free I
    (Ideal.span {(l : A.Acr0) ^ n}) hI
    fun x _ hx k hk y e => mem_span_pow_of_factorial_mul_eq A.acris_torsion_free hl.out n hx hk e

theorem exists_dividedPowers_fil_pfil : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (n : ℕ),
    (∃ δ : DividedPowers (A.Fil n 1), R.IsPd (A.mkAcr n) (A.Fil0 1) δ) ∧
      ∃ δ : DividedPowers (A.PFil n), R.IsPd (A.mkAcr n) A.PFil0 δ := by
  intro l _ A n
  obtain ⟨-, -, -, -, h1, h2, -⟩ := _root_.GlobalTheory.CompanionTheory.FilMul.main A
  obtain ⟨p1, p2, -⟩ := _root_.GlobalTheory.CompanionTheory.PerfFil.pdI_main A
  exact ⟨exists_dividedPowers_map_mkAcr A n _ p1 _ (h1 n 1),
    exists_dividedPowers_map_mkAcr A n _ p2 _ (h2 n)⟩

end GlobalTheory.CompanionTheory.PerfFil
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsDividedPowersOnReductions =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComparableQuotientOfValuation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComparableQuotientOfValuation", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.ValQuot

theorem valuation_comparable_quotient : ∀ {S : Type} [CommRing S] (π : S), Val π → Val0 (S := S ⧸ Ideal.span {π}) := by
  intro S _ π hV f' g'
  obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective f'
  obtain ⟨g, rfl⟩ := Ideal.Quotient.mk_surjective g'
  have hpi : ∀ x : S, ∃ N : ℕ, π ^ N ∈ Ideal.span {x, π} := fun x =>
    ⟨1, Ideal.mem_span_pair.mpr ⟨0, 1, by ring⟩⟩
  obtain ⟨e₁, he1, h1f, h1π⟩ := hV f π (hpi f)
  obtain ⟨e₂, he2, h2g, h2π⟩ := hV g π (hpi g)
  obtain ⟨a1, ha1⟩ := Ideal.mem_span_singleton'.mp h1f
  obtain ⟨b1, hb1⟩ := Ideal.mem_span_singleton'.mp h1π
  obtain ⟨a2, ha2⟩ := Ideal.mem_span_singleton'.mp h2g
  have he1' : e₁ * e₁ = e₁ := he1
  have he2' : e₂ * e₂ = e₂ := he2
  obtain ⟨u, hu⟩ : ∃ u : S, u = (1 - e₁) * (1 - e₂) := ⟨_, rfl⟩
  have hu2 : u * u = u := by subst hu; linear_combination (1 - e₂) ^ 2 * he1' + (1 - e₁) * he2'
  have he1u : e₁ * u = 0 := by subst hu; linear_combination (-(1 - e₂)) * he1'
  have huπ : u * π = (1 - e₂) * b1 * f := by subst hu; linear_combination (-(1 - e₂)) * hb1
  obtain ⟨e₃, he3, h3, h3'⟩ := hV (u * f + (1 - u)) (u * g + (1 - u))
    ⟨1, Ideal.mem_span_pair.mpr ⟨(1 - e₂) * b1 * u + π * (1 - u), 0, by
      linear_combination ((1 - e₂) * b1 * f - (1 - e₂) * b1 - π * f + 2 * π) * hu2 - u * huπ⟩⟩
  have he3' : e₃ * e₃ = e₃ := he3
  obtain ⟨c3, hc3⟩ := Ideal.mem_span_singleton'.mp h3
  obtain ⟨d3, hd3⟩ := Ideal.mem_span_singleton'.mp h3'
  refine ⟨Ideal.Quotient.mk _ (e₁ + u * e₃), ?_, ?_, ?_⟩
  · show Ideal.Quotient.mk _ (e₁ + u * e₃) * Ideal.Quotient.mk _ (e₁ + u * e₃) =
      Ideal.Quotient.mk _ (e₁ + u * e₃)
    rw [← map_mul]
    exact congrArg (Ideal.Quotient.mk _)
      (by linear_combination he1' + 2 * e₃ * he1u + e₃ ^ 2 * hu2 + u * he3')
  · refine Ideal.mem_span_singleton'.mpr ⟨Ideal.Quotient.mk _ (c3 * u), ?_⟩
    rw [← map_mul, ← map_mul, Ideal.Quotient.eq, Ideal.mem_span_singleton']
    exact ⟨-a1, by linear_combination -ha1 - u * hc3 + (c3 * g - c3 - e₃ * f + e₃) * hu2⟩
  · refine Ideal.mem_span_singleton'.mpr ⟨Ideal.Quotient.mk _ (d3 * u), ?_⟩
    rw [← map_one (Ideal.Quotient.mk (Ideal.span {π})), ← map_sub, ← map_mul, ← map_mul, Ideal.Quotient.eq,
      Ideal.mem_span_singleton']
    exact ⟨-((1 - e₁) * a2), by
      linear_combination -(1 - e₁) * ha2 - g * hu - u * hd3 + (d3 * f - d3 - (1 - e₃) * g + (1 - e₃)) * hu2⟩

end GlobalTheory.CompanionTheory.ValQuot
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComparableQuotientOfValuation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimeRootValuationQuotient =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimeRootValuationQuotient", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.MapWXi\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComparableQuotientOfValuation\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpSurjectiveKerSpan\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SurjectivePreservesClosednessComparability\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.Untilt

theorem untilt_mod_varpi_sq : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), A.IsTest →
    ∃ ϖ : A.U, ϖ ^ l = (l : A.U) ∧ R.Val0 (A.U ⧸ Ideal.span {ϖ ^ 2}) ∧
      R.Aic (A.U ⧸ Ideal.span {ϖ ^ 2}) := by
  intro l _ A hA
  obtain ⟨t, ht⟩ := A.frob_bijective.2 A.pi
  have ht' : t ^ l = A.pi := ht
  have hpow : A.sharp t ^ l = (l : A.U) := by
    rw [← map_pow, ht', A.sharp_pi]
  refine ⟨A.sharp t, hpow, ?_⟩
  have hle : Ideal.span {(l : A.U) ^ 1} ≤ Ideal.span {A.sharp t ^ 2} := by
    rw [pow_one, ← hpow]
    exact Ideal.span_singleton_le_span_singleton.2
      (pow_dvd_pow _ (Fact.out : l.Prime).two_le)
  obtain ⟨hsurj, hker⟩ := sharp_map_surjective_ker A
  let g : A.A →+* A.U ⧸ Ideal.span {A.sharp t ^ 2} :=
    (Ideal.Quotient.factor hle).comp A.aToU1
  have hg : Function.Surjective g :=
    (Ideal.Quotient.factor_surjective hle).comp hsurj
  have hπ : ∀ a ∈ Ideal.span {A.pi}, g a = 0 := fun a ha => by
    rw [← hker] at ha
    change Ideal.Quotient.factor hle (A.aToU1 a) = 0
    rw [RingHom.mem_ker.1 ha, map_zero]
  let g' : A.A ⧸ Ideal.span {A.pi} →+* A.U ⧸ Ideal.span {A.sharp t ^ 2} :=
    Ideal.Quotient.lift _ g hπ
  have hg' : Function.Surjective g' := Ideal.Quotient.lift_surjective_of_surjective _ hπ hg
  exact ⟨(GlobalTheory.CompanionTheory.SurjPass.absolutely_closed_comparable_surjective g' hg').2
      (GlobalTheory.CompanionTheory.ValQuot.valuation_comparable_quotient A.pi hA.2),
    (GlobalTheory.CompanionTheory.SurjPass.absolutely_closed_comparable_surjective g hg).1 hA.1⟩

end GlobalTheory.CompanionTheory.Untilt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimeRootValuationQuotient =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsThetaKernelEqFiltrationOne =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsThetaKernelEqFiltrationOne", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientMapsSurjectiveWithKernels\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.PerfectAlg

theorem exists_theta_mod {l : ℕ} [Fact l.Prime] (A : PAlg l) (n : ℕ) :
    ∃ θ : A.Acr n →+* A.Un n, (∀ x : A.W, θ (A.toAcr n x) = Ideal.Quotient.mk _ (A.th x)) ∧
      RingHom.ker θ = A.Fil n 1 := by
  obtain ⟨hsurj, hker, -, -⟩ := _root_.GlobalTheory.CompanionTheory.Untilt.uToQ_main A n
  refine ⟨((Ideal.quotEquivOfEq hker).toRingHom.comp
      (RingHom.quotientKerEquivOfSurjective hsurj).symm.toRingHom).comp
      (Ideal.Quotient.mk (A.Fil n 1)), fun x => ?_, ?_⟩
  · have h1 : A.uToQ n (A.th x) = Ideal.Quotient.mk (A.Fil n 1) (A.toAcr n x) := by rfl
    simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom]
    rw [← h1, ← RingHom.quotientKerEquivOfSurjective_apply_mk hsurj, RingEquiv.symm_apply_apply,
      Ideal.quotEquivOfEq_mk]
  · ext y
    simp only [RingHom.mem_ker, RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom]
    rw [map_eq_zero_iff _ (RingEquiv.injective _), map_eq_zero_iff _ (RingEquiv.injective _),
      Ideal.Quotient.eq_zero_iff_mem]

end GlobalTheory.CompanionTheory.PerfectAlg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsThetaKernelEqFiltrationOne =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentsOfPrimePowerRootOfUnity =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentsOfPrimePowerRootOfUnity", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueIdempotentLiftTilt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralLocalizationAwayInRing\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdemMulEqZero\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectoidXiNonZeroDivisor\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.RootsLC

section Fourier

variable {O S : Type*} [CommRing O] [IsDomain O] [CommRing S]

noncomputable def proj (φ : O →+* S) (ω : O) (q : ℕ) (z : S) (k : ℕ) : S :=
  ∑ i ∈ Finset.range q, (z * φ ω ^ k) ^ i

theorem geom_eq_zero {u : O} {q : ℕ} (hu : u ^ q = 1) (hne : u ≠ 1) :
    ∑ i ∈ Finset.range q, u ^ i = 0 := by
  have h := geom_sum_mul u q
  rw [hu, sub_self] at h
  exact (mul_eq_zero.1 h).resolve_right (sub_ne_zero.2 hne)

variable (φ : O →+* S) {ζ ω : O} {q : ℕ} {z : S}

theorem pow_inv_eq_one (hq : ζ ^ q = 1) (hω : ζ * ω = 1) : ω ^ q = 1 := by
  have h := congrArg (· ^ q) hω
  simpa [mul_pow, hq] using h

theorem proj_mul_sub (hq : ζ ^ q = 1) (hω : ζ * ω = 1) (hz : z ^ q = 1) (k : ℕ) :
    proj φ ω q z k * (z - φ ζ ^ k) = 0 := by
  have hw : (z * φ ω ^ k) ^ q = 1 := by
    rw [mul_pow, hz, one_mul, ← pow_mul, mul_comm k q, pow_mul, ← map_pow, pow_inv_eq_one hq hω,
      map_one, one_pow]
  have h1 : proj φ ω q z k * (z * φ ω ^ k - 1) = 0 := by
    rw [proj, geom_sum_mul, hw, sub_self]
  have h3 : φ ζ ^ k * φ ω ^ k = 1 := by
    rw [← mul_pow, ← map_mul, hω, map_one, one_pow]
  have h2 : z - φ ζ ^ k = φ ζ ^ k * (z * φ ω ^ k - 1) := by
    linear_combination (-z) * h3
  rw [h2, mul_left_comm, h1, mul_zero]

theorem proj_mul_proj (hq : ζ ^ q = 1) (hω : ζ * ω = 1) (hz : z ^ q = 1) (j k : ℕ) :
    proj φ ω q z j * proj φ ω q z k =
      φ (∑ i ∈ Finset.range q, (ζ ^ k * ω ^ j) ^ i) * proj φ ω q z k := by
  have hzk : z * proj φ ω q z k = φ ζ ^ k * proj φ ω q z k := by
    have := proj_mul_sub φ hq hω hz k
    linear_combination this
  have step : ∀ i : ℕ, (z * φ ω ^ j) ^ i * proj φ ω q z k =
      φ ((ζ ^ k * ω ^ j) ^ i) * proj φ ω q z k := by
    intro i
    induction i with
    | zero => simp
    | succ i ih =>
      have e : φ ((ζ ^ k * ω ^ j) ^ (i + 1)) =
          φ ((ζ ^ k * ω ^ j) ^ i) * (φ ζ ^ k * φ ω ^ j) := by
        simp [pow_succ]
      rw [pow_succ, e]
      linear_combination (z * φ ω ^ j) * ih + φ ((ζ ^ k * ω ^ j) ^ i) * φ ω ^ j * hzk

  rw [map_sum, Finset.sum_mul]
  conv_lhs => rw [proj, Finset.sum_mul]
  exact Finset.sum_congr rfl fun i _ => step i

theorem proj_self (hq : ζ ^ q = 1) (hω : ζ * ω = 1) (hz : z ^ q = 1) (k : ℕ) :
    proj φ ω q z k * proj φ ω q z k = (q : S) * proj φ ω q z k := by
  rw [proj_mul_proj φ hq hω hz, ← mul_pow, hω]
  simp

theorem proj_orth (hq : IsPrimitiveRoot ζ q) (hω : ζ * ω = 1) (hz : z ^ q = 1) {j k : ℕ}
    (hj : j < q) (hk : k < q) (hjk : j ≠ k) :
    proj φ ω q z j * proj φ ω q z k = 0 := by
  have hq1 := hq.pow_eq_one
  have hu : (ζ ^ k * ω ^ j) ^ q = 1 := by
    rw [mul_pow, ← pow_mul, ← pow_mul, mul_comm k q, mul_comm j q, pow_mul, pow_mul, hq1,
      pow_inv_eq_one hq1 hω, one_pow, one_pow, one_mul]
  have hne : ζ ^ k * ω ^ j ≠ 1 := by
    intro h
    have h3 : ζ ^ j * ω ^ j = 1 := by rw [← mul_pow, hω, one_pow]
    have : ζ ^ j = ζ ^ k := by linear_combination (-ζ ^ j) * h + ζ ^ k * h3
    exact hjk (hq.pow_inj hj hk this)
  rw [proj_mul_proj φ hq1 hω hz, geom_eq_zero hu hne, map_zero, zero_mul]

theorem sum_proj (hq : IsPrimitiveRoot ζ q) (hq0 : 0 < q) (hω : ζ * ω = 1) :
    ∑ k ∈ Finset.range q, proj φ ω q z k = (q : S) := by
  have hq1 := hq.pow_eq_one
  have hω1 := pow_inv_eq_one hq1 hω
  have e : ∀ k, proj φ ω q z k = ∑ i ∈ Finset.range q, z ^ i * φ ((ω ^ i) ^ k) := by
    intro k
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [mul_pow, map_pow, map_pow, ← pow_mul, ← pow_mul, mul_comm k i]
  simp_rw [e]
  rw [Finset.sum_comm]

  simp_rw [← Finset.mul_sum, ← map_sum]
  rw [Finset.sum_eq_single_of_mem 0 (Finset.mem_range.2 hq0)]
  · simp
  · intro i hi hi0
    have hi' := Finset.mem_range.1 hi
    have hu : (ω ^ i) ^ q = 1 := by rw [← pow_mul, mul_comm, pow_mul, hω1, one_pow]
    have hne : ω ^ i ≠ 1 := by
      intro h
      have h3 : ζ ^ i * ω ^ i = 1 := by rw [← mul_pow, hω, one_pow]
      rw [h, mul_one] at h3
      exact hi0 (Nat.eq_zero_of_dvd_of_lt (hq.dvd_of_pow_eq_one i h3) hi' |>.symm ▸ rfl)
    rw [geom_eq_zero hu hne, map_zero, mul_zero]

end Fourier

theorem sum_zmod_val {M : Type*} [AddCommMonoid M] (q : ℕ) [NeZero q] (f : ℕ → M) :
    ∑ c : ZMod q, f c.val = ∑ k ∈ Finset.range q, f k := by
  refine Finset.sum_nbij' (fun c => c.val) (fun k => (k : ZMod q)) ?_ ?_ ?_ ?_ ?_
  · intro c _; exact Finset.mem_range.2 (ZMod.val_lt c)
  · intro k _; exact Finset.mem_univ _
  · intro c _; simp
  · intro k hk; exact ZMod.val_cast_of_lt (Finset.mem_range.1 hk)
  · intro c _; rfl

theorem exists_idem {S : Type} [CommRing S] (ϖ : S) (h0 : ϖ ∈ nonZeroDivisors S) (hV : R.Val ϖ)
    (n : ℕ) (t : S) (ht : t * t = ϖ ^ n * t) : ∃ y, ϖ ^ n * y = t ∧ y * y = y := by
  let L := Localization.Away ϖ
  let v : L := IsLocalization.Away.invSelf ϖ
  have hv : algebraMap S L ϖ * v = 1 := IsLocalization.Away.mul_invSelf ϖ
  have hvn : algebraMap S L ϖ ^ n * v ^ n = 1 := by rw [← mul_pow, hv, one_pow]
  have hinj : Function.Injective (algebraMap S L) :=
    IsLocalization.injective _ (M := Submonoid.powers ϖ) (Submonoid.powers_le.2 h0)
  have htt : algebraMap S L t * algebraMap S L t = algebraMap S L ϖ ^ n * algebraMap S L t := by
    rw [← map_mul, ht, map_mul, map_pow]
  set x : L := algebraMap S L t * v ^ n with hx
  have hxx : x * x = x := by
    rw [hx]
    linear_combination v ^ n * v ^ n * htt + algebraMap S L t * v ^ n * hvn
  have hint : IsIntegral S x := by
    refine ⟨Polynomial.X ^ 2 - Polynomial.X, ?_, ?_⟩
    · exact Polynomial.monic_X_pow_sub (Polynomial.degree_X_le.trans_lt (by norm_num))
    · simp only [Polynomial.eval₂_sub, Polynomial.eval₂_pow, Polynomial.eval₂_X]
      linear_combination hxx
  obtain ⟨y, hy⟩ := GlobalTheory.CompanionTheory.ValIntClosed.exists_eq_of_isIntegral ϖ h0 hV x hint
  refine ⟨y, hinj ?_, hinj ?_⟩
  · rw [map_mul, map_pow, hy, hx]
    linear_combination algebraMap S L t * hvn
  · rw [map_mul, hy, hxx]

section Teich

variable {l : ℕ} [Fact l.Prime] (A : PAlg l)

theorem eq_of_idem {a b : A.W} (ha : IsIdempotentElem a) (hb : IsIdempotentElem b)
    (h : a.coeff 0 = b.coeff 0) : a = b := by
  apply GlobalTheory.CompanionTheory.LcLogProof.eq_of_idem <;> assumption

theorem teich_sum {ι : Type*} [Fintype ι] {e : ι → A.A} (he : OrthogonalIdempotents e) :
    WittVector.teichmuller l (∑ i, e i) = ∑ i, WittVector.teichmuller l (e i) := by
  have ho : OrthogonalIdempotents fun i => WittVector.teichmuller l (e i) :=
    ⟨fun i => by
      show _ * _ = _
      rw [← map_mul, he.idem i |>.eq],
     fun i j hij => by
      show _ * _ = _
      rw [← map_mul, he.ortho hij, WittVector.teichmuller_zero]⟩
  refine eq_of_idem A ?_ (ho.isIdempotentElem_sum) ?_
  · have := he.isIdempotentElem_sum (s := Finset.univ)
    show _ * _ = _
    rw [← map_mul, this.eq]

  · rw [WittVector.teichmuller_coeff_zero, ← WittVector.constantCoeff_apply, map_sum]
    simp [WittVector.constantCoeff_apply, WittVector.teichmuller_coeff_zero]

theorem sharp_zero : A.sharp 0 = 0 := by
  show A.th (WittVector.teichmuller l 0) = 0
  rw [WittVector.teichmuller_zero, map_zero]

theorem sharp_sum {ι : Type*} [Fintype ι] {e : ι → A.A} (he : OrthogonalIdempotents e) :
    A.sharp (∑ i, e i) = ∑ i, A.sharp (e i) := by
  show A.th (WittVector.teichmuller l _) = ∑ i, A.th (WittVector.teichmuller l _)

  rw [teich_sum A he, map_sum]

end Teich

theorem exists_idempotents_of_root_of_unity {l : ℕ} [Fact l.Prime] (A : PAlg l)
    (hV : R.Val (l : A.U)) (n : ℕ) (ζ : OC l) (hζ : IsPrimitiveRoot ζ (l ^ n)) (z : A.U)
    (hz : z ^ l ^ n = 1) :
    ∃ e : ZMod (l ^ n) → A.A,
      (haveI : NeZero (l ^ n) := ⟨pow_ne_zero _ (Fact.out : l.Prime).ne_zero⟩;
        CompleteOrthogonalIdempotents e) ∧
      ∀ c, A.sharp (e c) * (z - A.oC ζ ^ c.val) = 0 := by
  haveI : NeZero (l ^ n) := ⟨pow_ne_zero _ (Fact.out : l.Prime).ne_zero⟩
  have hl : (l : A.U) ∈ nonZeroDivisors A.U := (GlobalTheory.CompanionTheory.UntiltRegular.untilt_regular A).1
  have hq0 : 0 < l ^ n := Nat.pos_of_ne_zero (NeZero.ne _)
  have hq1 : ζ ^ l ^ n = 1 := hζ.pow_eq_one
  obtain ⟨ω, hω⟩ : ∃ ω : OC l, ζ * ω = 1 := ⟨ζ ^ (l ^ n - 1), by
    rw [← pow_succ', Nat.sub_add_cancel hq0, hq1]⟩
  have hc : ∀ x : A.U, (l : A.U) ^ n * x = 0 → x = 0 :=
    fun x h => mem_nonZeroDivisors_iff_left.1 (pow_mem hl n) x h
  have hcast : ((l ^ n : ℕ) : A.U) = (l : A.U) ^ n := by push_cast; rfl
  set P := proj A.oC ω (l ^ n) z with hP
  have hself : ∀ k, P k * P k = (l : A.U) ^ n * P k := fun k => by
    rw [hP, proj_self A.oC hq1 hω hz k, hcast]
  choose y hy1 hy2 using fun k => exists_idem (l : A.U) hl hV n (P k) (hself k)
  have hyo : ∀ {j k : ℕ}, j < l ^ n → k < l ^ n → j ≠ k → y j * y k = 0 := by
    intro j k hj hk hjk
    apply hc; apply hc
    have := proj_orth A.oC hζ hω hz hj hk hjk
    rw [← hP, ← hy1 j, ← hy1 k] at this
    linear_combination this
  have hys : ∑ k ∈ Finset.range (l ^ n), y k = 1 := by
    have h := sum_proj (z := z) A.oC hζ hq0 hω
    rw [← hP, hcast] at h
    rw [← sub_eq_zero]
    apply hc
    have h' : ∑ k ∈ Finset.range (l ^ n), (l : A.U) ^ n * y k = ∑ k ∈ Finset.range (l ^ n), P k :=
      Finset.sum_congr rfl fun k _ => hy1 k
    rw [mul_sub, Finset.mul_sum, mul_one, h', h, sub_self]
  have hyz : ∀ k, y k * (z - A.oC ζ ^ k) = 0 := by
    intro k
    apply hc
    rw [← mul_assoc, hy1]
    exact proj_mul_sub A.oC hq1 hω hz k
  choose e he using fun k => _root_.GlobalTheory.CompanionTheory.Untilt.existsUnique_idempotent_sharp A (y k) (hy2 k)
  have hzero : ∀ a : A.A, IsIdempotentElem a → A.sharp a = 0 → a = 0 := fun a ha hs =>
    (_root_.GlobalTheory.CompanionTheory.Untilt.existsUnique_idempotent_sharp A 0 (IsIdempotentElem.zero)).unique ⟨ha, hs⟩ ⟨IsIdempotentElem.zero, sharp_zero A⟩
  have hO : OrthogonalIdempotents fun c : ZMod (l ^ n) => e c.val := by
    refine ⟨fun c => (he _).1.1, fun c d hcd => ?_⟩
    refine hzero _ ((he _).1.1.mul (he _).1.1) ?_
    rw [map_mul, (he _).1.2, (he _).1.2]
    exact hyo (ZMod.val_lt c) (ZMod.val_lt d) fun h => hcd (ZMod.val_injective _ h)
  refine ⟨fun c => e c.val, ⟨hO, ?_⟩, fun c => ?_⟩
  · refine (_root_.GlobalTheory.CompanionTheory.Untilt.existsUnique_idempotent_sharp A 1 IsIdempotentElem.one).unique ⟨hO.isIdempotentElem_sum, ?_⟩
      ⟨IsIdempotentElem.one, map_one _⟩
    rw [sharp_sum A hO]
    simp_rw [fun c : ZMod (l ^ n) => (he c.val).1.2]
    rw [sum_zmod_val (l ^ n) y, hys]
  · show A.sharp (e c.val) * _ = 0
    rw [(he _).1.2]
    exact hyz _

end GlobalTheory.CompanionTheory.RootsLC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentsOfPrimePowerRootOfUnity =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsUnitOfIsUnitSharp =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsUnitOfIsUnitSharp", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpSurjectiveKerSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.Untilt

theorem isUnit_of_isUnit_sharp {l : ℕ} [Fact l.Prime] (A : PAlg l) (a : A.A)
    (h : IsUnit (A.sharp a)) : IsUnit a := by
  have hu : IsUnit (A.aToU1 a) := by
    rw [CrystallineSemistableComparison.PAlg.sharpMap_eq]
    exact h.map _
  obtain ⟨hsurj, hker⟩ := sharp_map_surjective_ker A
  obtain ⟨v, hv⟩ := hu.exists_right_inv
  obtain ⟨b, rfl⟩ := hsurj v
  have hmem : a * b - 1 ∈ Ideal.span {A.pi} := by
    rw [← hker, RingHom.mem_ker, map_sub, map_mul, hv, map_one, sub_self]
  have hjac : Ideal.span {A.pi} ≤ (⊥ : Ideal A.A).jacobson := by
    haveI : IsAdicComplete (Ideal.span {A.pi}) A.A := A.compl
    exact IsAdicComplete.le_jacobson_bot _
  have hunit := Ideal.mem_jacobson_bot.mp (hjac hmem) 1
  rw [mul_one, sub_add_cancel] at hunit
  exact isUnit_of_mul_isUnit_left hunit

end GlobalTheory.CompanionTheory.Untilt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsUnitOfIsUnitSharp =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpMapCongruenceProperties =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpMapCongruenceProperties", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpSurjectiveKerSpan\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UntiltAdicComplete\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.NumberTheory.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.Untilt

theorem sharp_sub_mem_span_l_iff {l : ℕ} [Fact l.Prime] (A : PAlg l) (a b : A.A) :
    A.sharp a - A.sharp b ∈ Ideal.span {(l : A.U)} ↔ a - b ∈ Ideal.span {A.pi} := by
  have key : ∀ x y : A.U, (Ideal.Quotient.mk (Ideal.span {(l : A.U) ^ 1}) x =
      Ideal.Quotient.mk (Ideal.span {(l : A.U) ^ 1}) y) ↔ x - y ∈ Ideal.span {(l : A.U)} := by
    intro x y
    rw [Ideal.Quotient.mk_eq_mk_iff_sub_mem, pow_one]
  rw [← (GlobalTheory.CompanionTheory.Untilt.sharp_map_surjective_ker A).2, RingHom.mem_ker, map_sub, sub_eq_zero,
    CrystallineSemistableComparison.PAlg.sharpMap_eq, CrystallineSemistableComparison.PAlg.sharpMap_eq]
  exact (key _ _).symm

theorem idem_pow {R : Type*} [CommRing R] {x : R} (h : IsIdempotentElem x) {k : ℕ} (hk : k ≠ 0) :
    x ^ k = x := by
  cases k with
  | zero => exact absurd rfl hk
  | succ n =>
    induction n with
    | zero => simp
    | succ m ih => rw [pow_succ, ih (Nat.succ_ne_zero _), h.eq]

private theorem eq_zero_of_isIdempotentElem_of_mem_span_prime {l : ℕ} [Fact l.Prime] (A : PAlg l) {w : A.U}
    (hw : IsIdempotentElem w) (hl : w ∈ Ideal.span {(l : A.U)}) : w = 0 := by
  apply IsHausdorff.haus (GlobalTheory.CompanionTheory.Untilt.isAdicComplete_U A).toIsHausdorff w
  intro n
  rw [SModEq.zero, Ideal.smul_eq_mul, Ideal.mul_top]
  cases n with
  | zero => simp
  | succ m =>
    have hp := Ideal.pow_mem_pow hl (m + 1)
    rwa [idem_pow hw (Nat.succ_ne_zero m)] at hp

theorem sharp_one_sub {l : ℕ} [Fact l.Prime] (A : PAlg l) (e : A.A) (he : IsIdempotentElem e) :
    A.sharp (1 - e) = 1 - A.sharp e := by
  have h0 : A.sharp 0 = 0 := by
    apply eq_zero_of_isIdempotentElem_of_mem_span_prime A
    · show A.sharp 0 * A.sharp 0 = A.sharp 0
      rw [← map_mul, mul_zero]
    · rw [Ideal.mem_span_singleton]
      refine ⟨A.sharp 0, ?_⟩
      rw [← CrystallineSemistableComparison.PAlg.sharp_pi A, ← map_mul A.sharp, mul_zero]
  have hu : IsIdempotentElem (A.sharp e) := by
    show A.sharp e * A.sharp e = A.sharp e
    rw [← map_mul, he.eq]
  have hv : IsIdempotentElem (A.sharp (1 - e)) := by
    have h1e : (1 - e) * (1 - e) = 1 - e := by linear_combination he.eq
    show A.sharp (1 - e) * A.sharp (1 - e) = A.sharp (1 - e)
    rw [← map_mul, h1e]
  have huv : A.sharp e * A.sharp (1 - e) = 0 := by
    rw [← map_mul, mul_sub, mul_one, he.eq, sub_self, h0]
  have hw : IsIdempotentElem (1 - A.sharp e - A.sharp (1 - e)) := by
    show (1 - A.sharp e - A.sharp (1 - e)) * (1 - A.sharp e - A.sharp (1 - e)) =
      1 - A.sharp e - A.sharp (1 - e)
    linear_combination hu.eq + hv.eq + 2 * huv
  have hl : 1 - A.sharp e - A.sharp (1 - e) ∈ Ideal.span {(l : A.U)} := by
    have h1 : A.aToU1 1 - A.aToU1 e - A.aToU1 (1 - e) = 0 := by
      rw [← map_sub, sub_self]
    rw [CrystallineSemistableComparison.PAlg.sharpMap_eq, CrystallineSemistableComparison.PAlg.sharpMap_eq, CrystallineSemistableComparison.PAlg.sharpMap_eq, map_one] at h1
    have h2 : Ideal.Quotient.mk (Ideal.span {(l : A.U) ^ 1}) (1 - A.sharp e - A.sharp (1 - e)) = 0 := by
      rw [map_sub, map_sub]
      exact h1
    rw [Ideal.Quotient.eq_zero_iff_mem, pow_one] at h2
    exact h2
  have hw0 := eq_zero_of_isIdempotentElem_of_mem_span_prime A hw hl
  linear_combination -hw0

theorem sharp_congruences : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l),
    (∀ (a b : A.A) (n : ℕ), a - b ∈ Ideal.span {A.pi} →
      A.sharp (a ^ l ^ n) - A.sharp (b ^ l ^ n) ∈ Ideal.span {(l : A.U) ^ (n + 1)}) ∧
    (∀ a b : A.A, A.sharp a - A.sharp b ∈ Ideal.span {(l : A.U)} ↔ a - b ∈ Ideal.span {A.pi}) ∧
    ∀ e : A.A, IsIdempotentElem e → A.sharp (1 - e) = 1 - A.sharp e := by
  intro l _ A
  refine ⟨?_, fun a b => sharp_sub_mem_span_l_iff A a b, fun e he => sharp_one_sub A e he⟩
  intro a b n hab
  have h1 : A.sharp a - A.sharp b ∈ Ideal.span {(l : A.U)} := (sharp_sub_mem_span_l_iff A a b).mpr hab
  rw [Ideal.mem_span_singleton] at h1 ⊢
  rw [map_pow, map_pow]
  exact dvd_sub_pow_of_dvd_sub h1 n

end GlobalTheory.CompanionTheory.Untilt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpMapCongruenceProperties =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PrimePowAnnihilatorReduction =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PrimePowAnnihilatorReduction", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.MapWXi\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectoidXiNonZeroDivisor\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.PerfAlg

theorem pow_mul_mem_span_iff {R : Type*} [CommRing R] {a : R} (ha : a ∈ nonZeroDivisors R) (n m : ℕ) (x : R) :
    a ^ n * x ∈ Ideal.span {a ^ (n + m)} ↔ x ∈ Ideal.span {a ^ m} := by
  have hn : a ^ n ∈ nonZeroDivisors R := pow_mem ha n
  constructor
  · intro h
    obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 h
    refine Ideal.mem_span_singleton'.2 ⟨c, ?_⟩
    have e : a ^ n * (c * a ^ m) = a ^ n * x := by rw [← hc, pow_add]; ring
    exact sub_eq_zero.1 (mem_nonZeroDivisors_iff_left.1 hn (c * a ^ m - x) (by rw [mul_sub, e, sub_self]))
  · intro h
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 h
    exact Ideal.mem_span_singleton'.2 ⟨c, by rw [pow_add]; ring⟩

theorem lseq : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (n m : ℕ), Function.Surjective (A.red (Nat.le_add_right n m)) ∧ (∀ x : A.Acr (n + m), A.red (Nat.le_add_right n m) x = 0 ↔ x ∈ Ideal.span {(l : A.Acr (n + m)) ^ n}) ∧ (∀ x : A.Acr (n + m), (l : A.Acr (n + m)) ^ n * x = 0 ↔ A.red (Nat.le_add_left m n) x = 0) ∧ ∀ x : A.U, (l : A.U) ^ n * x ∈ Ideal.span {(l : A.U) ^ (n + m)} ↔ x ∈ Ideal.span {(l : A.U) ^ m} := by
  intro l _ A n m
  have hl : (l : A.Acr0) ∈ nonZeroDivisors A.Acr0 := A.acris_torsion_free l (Fact.out : l.Prime).ne_zero
  have mk0 : ∀ (k : ℕ) (y : A.Acr0), A.mkAcr k y = 0 ↔ y ∈ Ideal.span {(l : A.Acr0) ^ k} :=
    fun k y => Ideal.Quotient.eq_zero_iff_mem
  refine ⟨?_, ?_, ?_, fun x => pow_mul_mem_span_iff (_root_.GlobalTheory.CompanionTheory.UntiltRegular.untilt_regular A).1 n m x⟩
  · intro x
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
    exact ⟨A.mkAcr _ y, rfl⟩
  · intro x
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
    change A.red _ (A.mkAcr _ y) = 0 ↔ A.mkAcr _ y ∈ _
    rw [red_mk, mk0]
    constructor
    · intro h
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 h
      refine Ideal.mem_span_singleton'.2 ⟨A.mkAcr _ c, ?_⟩
      rw [map_mul, map_pow, map_natCast]
    · intro h
      obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 h
      obtain ⟨d, rfl⟩ := Ideal.Quotient.mk_surjective c
      have e : A.mkAcr (n + m) (d * (l : A.Acr0) ^ n - y) = 0 := by
        set_option synthInstance.maxHeartbeats 400000 in
          rw [map_sub, map_mul, map_pow, map_natCast]
        exact sub_eq_zero.2 hc
      have e2 := (mk0 _ _).1 e
      have e3 : Ideal.span {(l : A.Acr0) ^ (n + m)} ≤ Ideal.span {(l : A.Acr0) ^ n} :=
        Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow _ (Nat.le_add_right n m))
      have e4 := Ideal.sub_mem _ (Ideal.mul_mem_left _ d (Ideal.mem_span_singleton_self ((l : A.Acr0) ^ n))) (e3 e2)
      rwa [sub_sub_cancel] at e4
  · intro x
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
    change _ * A.mkAcr _ y = 0 ↔ A.red _ (A.mkAcr _ y) = 0
    rw [red_mk, mk0, ← pow_mul_mem_span_iff hl n m y, ← mk0, map_mul, map_pow, map_natCast]

end GlobalTheory.CompanionTheory.PerfAlg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PrimePowAnnihilatorReduction =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorLiftKernelModPrime =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorLiftKernelModPrime", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective\npublic import GroundTheory.PAdicHodge.ACrisLog\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExpansionEqZeroIffCoeffsMem\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralRingAdicCompletePrimeRegular\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PeriodRingComparisonOfBase\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExpansionSurjectiveAdditiveLinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

noncomputable section

namespace GlobalTheory.CompanionTheory.TensOne

open TensorProduct

section Generic

variable {R S W C : Type} [CommRing R] [CommRing S] [CommRing W] [CommRing C]
  [Algebra R S] [Algebra R W] [Algebra R C]

theorem tmul_mul_natCast_mem (p : ℕ) (e : S) (x : W) :
    (e * (p : S)) ⊗ₜ[R] x ∈ Ideal.span {(p : S ⊗[R] W)} := by
  have hp : (p : S ⊗[R] W) = (p : S) ⊗ₜ[R] (1 : W) :=
    (map_natCast (Algebra.TensorProduct.includeLeftRingHom : S →+* S ⊗[R] W) p).symm
  have : (e * (p : S)) ⊗ₜ[R] x = (p : S ⊗[R] W) * (e ⊗ₜ[R] x) := by
    rw [hp, Algebra.TensorProduct.tmul_mul_tmul, one_mul, mul_comm]
  rw [this]
  exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)

theorem tmul_natCast_mul_mem (p : ℕ) (e : S) (x : W) :
    e ⊗ₜ[R] (x * (p : W)) ∈ Ideal.span {(p : S ⊗[R] W)} := by
  have hp : (p : S ⊗[R] W) = (1 : S) ⊗ₜ[R] (p : W) :=
    (map_natCast (Algebra.TensorProduct.includeRight : W →ₐ[R] S ⊗[R] W).toRingHom p).symm
  have : e ⊗ₜ[R] (x * (p : W)) = (p : S ⊗[R] W) * (e ⊗ₜ[R] x) := by
    rw [hp, Algebra.TensorProduct.tmul_mul_tmul, one_mul, mul_comm x]
  rw [this]
  exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)

def gsum (d : ℕ → S) (w : ℕ →₀ W) : S ⊗[R] W := w.sum fun k x => d k ⊗ₜ[R] x

theorem gsum_add (d : ℕ → S) (w w' : ℕ →₀ W) :
    (gsum d (w + w') : S ⊗[R] W) = gsum d w + gsum d w' :=
  Finsupp.sum_add_index' (fun _ => TensorProduct.tmul_zero _ _) fun _ _ _ => TensorProduct.tmul_add _ _ _

theorem exists_gsum (p : ℕ) (d : ℕ → S)
    (hsurj : ∀ a : S, ∃ (s : Finset ℕ) (c : ℕ → R), a - ∑ k ∈ s, algebraMap R S (c k) * d k ∈ Ideal.span {(p : S)})
    (z : S ⊗[R] W) : ∃ w : ℕ →₀ W, z - gsum d w ∈ Ideal.span {(p : S ⊗[R] W)} := by
  induction z using TensorProduct.inductionOn with
  | tmul a x =>
    obtain ⟨s, c, hc⟩ := hsurj a
    obtain ⟨e, he⟩ := Ideal.mem_span_singleton'.1 hc
    refine ⟨∑ k ∈ s, Finsupp.single k (c k • x), ?_⟩
    have h1 : (gsum d (∑ k ∈ s, Finsupp.single k (c k • x)) : S ⊗[R] W) =
        (∑ k ∈ s, algebraMap R S (c k) * d k) ⊗ₜ[R] x := by
      rw [gsum, ← Finsupp.sum_finsetSum_index (fun _ => TensorProduct.tmul_zero _ _)
        (fun _ _ _ => TensorProduct.tmul_add _ _ _), TensorProduct.sum_tmul]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [Finsupp.sum_single_index (h := fun k x => d k ⊗ₜ[R] x) (TensorProduct.tmul_zero _ _), ← Algebra.smul_def,
        TensorProduct.smul_tmul]
    rw [h1, ← TensorProduct.sub_tmul, ← he]
    exact tmul_mul_natCast_mem p e x
  | add x y hx hy =>
    obtain ⟨w, hw⟩ := hx
    obtain ⟨w', hw'⟩ := hy
    refine ⟨w + w', ?_⟩
    have : x + y - gsum d (w + w') = (x - gsum d w) + (y - gsum d w') := by
      rw [gsum_add]; ring
    rw [this]
    exact add_mem hw hw'

theorem generic (p : ℕ) (d : ℕ → S) (r0 : R) (f : S →ₐ[R] C) (g : W →ₐ[R] C)
    (hsurj : ∀ a : S, ∃ (s : Finset ℕ) (c : ℕ → R), a - ∑ k ∈ s, algebraMap R S (c k) * d k ∈ Ideal.span {(p : S)})
    (hv : ∀ k, algebraMap R S r0 * d k ∈ Ideal.span {(p : S)})
    (hK : ∀ (s : Finset ℕ) (w : ℕ → W), ∑ k ∈ s, f (d k) * g (w k) = 0 →
      ∀ k ∈ s, w k ∈ Ideal.span {algebraMap R W r0, (p : W)})
    (hC : (p : C) = 0) (z : S ⊗[R] W)
    (hz : Algebra.TensorProduct.lift f g (fun _ _ => Commute.all _ _) z = 0) :
    z ∈ Ideal.span {(p : S ⊗[R] W)} := by
  obtain ⟨w, hw⟩ := exists_gsum p d hsurj z
  have hL : Algebra.TensorProduct.lift f g (fun _ _ => Commute.all _ _) (z - gsum d w) = 0 := by
    obtain ⟨y, hy⟩ := Ideal.mem_span_singleton'.1 hw
    rw [← hy, map_mul, map_natCast, hC, mul_zero]

  rw [map_sub, hz, zero_sub, neg_eq_zero, gsum, Finsupp.sum, map_sum] at hL
  have hsum : ∑ k ∈ w.support, f (d k) * g (w k) = 0 := by
    rw [← hL]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [Algebra.TensorProduct.lift_tmul]
  have hk := hK _ _ hsum
  have hG : (gsum d w : S ⊗[R] W) ∈ Ideal.span {(p : S ⊗[R] W)} := by
    refine Ideal.sum_mem _ fun k hks => ?_
    obtain ⟨u, v, huv⟩ := Ideal.mem_span_pair.1 (hk k hks)
    obtain ⟨e, he⟩ := Ideal.mem_span_singleton'.1 (hv k)
    have h1 : d k ⊗ₜ[R] (u * algebraMap R W r0) = (e * (p : S)) ⊗ₜ[R] u := by
      rw [he, mul_comm u, ← Algebra.smul_def, ← Algebra.smul_def, TensorProduct.smul_tmul]
    change d k ⊗ₜ[R] (w k) ∈ _
    rw [← huv, TensorProduct.tmul_add, h1]
    exact add_mem (tmul_mul_natCast_mem p e u) (tmul_natCast_mul_mem p (d k) v)
  have := add_mem hw hG
  rwa [sub_add_cancel] at this

end Generic

section Specific

variable {l : ℕ} [Fact l.Prime]

def base : PAlg l where
  A := Ob l
  s := RingHom.id _
  perf := inferInstance
  compl := GlobalTheory.CompanionTheory.TiltCompl.complete_tf.1
  tf := GlobalTheory.CompanionTheory.TiltCompl.complete_tf.2

theorem isBase_base : IsBase l (base (l := l)) := Function.bijective_id

def d (k : ℕ) : Acris l := AdicCompletion.of _ _ (ACris.dpowZero (xi0_mem (l := l)) k)

theorem cris_d (A : PAlg l) (n k : ℕ) : A.cris n (d k) = A.dxi n k := by
  rw [d, cris_of]
  refine congrArg (A.mkAcr n) (Subtype.ext ?_)
  change awayW A.s (ACris.dpow k (xi0 l)) = dpw k A.xi
  rw [dpow_eq_dpw]
  exact awayW_dpw A.s k (ACris.isUnit_natCast (K := ℂ_[l]) (p := l) k.factorial_ne_zero) (xi0 l)

theorem sW_base (x : Ainf l) : (base (l := l)).sW x = x := wmap_id x

theorem cris_teich (a : Ob l) :
    (base (l := l)).cris 1 (algebraMap (Ainf l) (Acris l) (WittVector.teichmuller l a)) =
      (base (l := l)).aTo1 a := by
  have h1 := (base (l := l)).aTo1_coeff (WittVector.teichmuller l a)
  rw [WittVector.teichmuller_coeff_zero] at h1
  have h2 := (base (l := l)).cris_algebraMap 1 (WittVector.teichmuller l a)
  rw [sW_base] at h2
  rw [h1]
  exact h2

theorem mem_of_cris (a : Acris l) (h : (base (l := l)).cris 1 a = 0) : a ∈ Ideal.span {(l : Acris l)} := by
  have := (RingHom.mem_ker).2 h
  rwa [((_root_.GlobalTheory.CompanionTheory.BaseAcris.main base isBase_base).2 1).2, pow_one] at this

theorem hsurj (a : Acris l) : ∃ (s : Finset ℕ) (c : ℕ → Ainf l),
    a - ∑ k ∈ s, algebraMap (Ainf l) (Acris l) (c k) * d (l * k) ∈ Ideal.span {(l : Acris l)} := by
  obtain ⟨c, hc⟩ := (_root_.GlobalTheory.CompanionTheory.PerfFil.Expand.main (base (l := l))).1 ((base (l := l)).cris 1 a)
  refine ⟨c.support, fun k => WittVector.teichmuller l (c k), mem_of_cris _ ?_⟩
  have e : (base (l := l)).expand c =
      ∑ k ∈ c.support, (base (l := l)).aTo1 (c k) * (base (l := l)).dxi 1 (l * k) := rfl
  set_option synthInstance.maxHeartbeats 100000 in
    rw [map_sub, ← hc, e, sub_eq_zero, map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [map_mul, cris_teich, cris_d]

def r0 : Ainf l := WittVector.teichmuller l (pFlat l ^ l)

theorem hv (k : ℕ) : algebraMap (Ainf l) (Acris l) (r0 (l := l)) * d k ∈ Ideal.span {(l : Acris l)} := by
  refine mem_of_cris _ ?_
  rw [map_mul, r0, cris_teich, cris_d]
  exact (_root_.GlobalTheory.CompanionTheory.PerfFil.Expand.main (base (l := l))).2.2.2 k

theorem hK (A : PAlg l) (s : Finset ℕ) (w : ℕ → A.W)
    (h : ∑ k ∈ s, A.cris 1 (d (l * k)) * A.toAcr 1 (w k) = 0) (k : ℕ) (hks : k ∈ s) :
    w k ∈ Ideal.span {algebraMap (Ainf l) A.W r0, (l : A.W)} := by
  have hexp : A.expand (Finsupp.indicator s fun k _ => (w k).coeff 0) = 0 := by
    rw [expand, Finsupp.sum_of_support_subset _ (Finsupp.support_indicator_subset _ _) _ (by simp), ← h]
    refine Finset.sum_congr rfl fun k hk => ?_
    rw [Finsupp.indicator_of_mem hk, aTo1_coeff, cris_d, mul_comm]
  have hk := (_root_.GlobalTheory.CompanionTheory.ExpandKer.expand_eq_zero_iff A _).1 hexp k
  rw [Finsupp.indicator_of_mem hks] at hk
  obtain ⟨b, hb⟩ := Ideal.mem_span_singleton'.1 hk
  have hr : algebraMap (Ainf l) A.W r0 = WittVector.teichmuller l (A.pi ^ l) := by
    change A.sW _ = _
    rw [r0, sW, WittVector.map_teichmuller, map_pow]
    rfl
  have hz : (w k - WittVector.teichmuller l b * algebraMap (Ainf l) A.W r0).coeff 0 = 0 := by
    rw [← WittVector.constantCoeff_apply, map_sub, map_mul, hr]
    simp only [WittVector.constantCoeff_apply, WittVector.teichmuller_coeff_zero]
    rw [hb, sub_self]
  obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.1 ((A.mem_span_l_iff _).2 hz)
  exact Ideal.mem_span_pair.2 ⟨WittVector.teichmuller l b, t, by rw [ht]; ring⟩

theorem main : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (z : TensorProduct (Ainf l) (Acris l) A.W),
    Algebra.TensorProduct.lift (IsScalarTower.toAlgHom (Ainf l) (Acris l) (A.Acr 1))
      (IsScalarTower.toAlgHom (Ainf l) A.W (A.Acr 1)) (fun _ _ => Commute.all _ _) z = 0 →
    z ∈ Ideal.span {(l : TensorProduct (Ainf l) (Acris l) A.W)} := by
  intro l _ A z hz
  exact generic (R := Ainf l) (S := Acris l) (W := A.W) (C := A.Acr 1) l (fun k => d (l * k)) r0
    (IsScalarTower.toAlgHom (Ainf l) (Acris l) (A.Acr 1)) (IsScalarTower.toAlgHom (Ainf l) A.W (A.Acr 1))
    hsurj (fun k => hv _) (fun s w h k hk => hK A s w h k hk) (_root_.GlobalTheory.CompanionTheory.PerfFil.Expand.natCast_l_acr A) z hz

end Specific

end GlobalTheory.CompanionTheory.TensOne
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorLiftKernelModPrime =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorLiftSurjectiveKernelLevel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorLiftSurjectiveKernelLevel", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallineFiltrationSpanDividedPowers\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PrimePowAnnihilatorReduction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorLiftKernelModPrime\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg
open scoped TensorProduct

namespace GlobalTheory.CompanionTheory.PerfFil

section Generic

theorem tensor_ringHom_ext {R S T B : Type*} [CommRing R] [CommRing S] [CommRing T] [CommRing B]
    [Algebra R S] [Algebra R T] {f g : S ⊗[R] T →+* B} (h : ∀ a b, f (a ⊗ₜ b) = g (a ⊗ₜ b)) : f = g := by
  refine RingHom.ext fun z => ?_
  induction z using TensorProduct.inductionOn with
  | tmul a b => exact h a b
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]

theorem mem_span_pow_of_compatible {T : Type*} [CommRing T] (p : ℕ) {B : ℕ → Type*} [∀ n, CommRing (B n)]
    (f : ∀ n, T →+* B n) (red : ∀ n, B (n + 1) →+* B n) (r : ∀ n, B (n + 1) →+* B 1)
    (hred : ∀ n z, red n (f (n + 1) z) = f n z) (hr : ∀ n z, r n (f (n + 1) z) = f 1 z)
    (hmul : ∀ n x, (p : B (n + 1)) ^ n * x = 0 → r n x = 0)
    (hone : ∀ z, f 1 z = 0 → z ∈ Ideal.span {(p : T)}) (n : ℕ) (z : T) (hz : f n z = 0) :
    z ∈ Ideal.span {(p : T) ^ n} := by
  induction n generalizing z with
  | zero => rw [pow_zero, Ideal.span_singleton_one]; exact Submodule.mem_top
  | succ n ih =>
    have h1 : f n z = 0 := by rw [← hred n z, hz, map_zero]
    obtain ⟨z', rfl⟩ := Ideal.mem_span_singleton'.1 (ih z h1)
    have h2 : (p : B (n + 1)) ^ n * f (n + 1) z' = 0 := by
      rw [map_mul, map_pow, map_natCast, mul_comm] at hz
      exact hz
    have h3 := hmul n _ h2
    rw [hr] at h3
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 (hone z' h3)
    exact Ideal.mem_span_singleton'.2 ⟨c, by ring⟩

theorem map_eq_zero_of_mem_span_pow {T B : Type*} [CommRing T] [CommRing B] (p n : ℕ) (f : T →+* B)
    (hp : (p : B) ^ n = 0) {z : T} (hz : z ∈ Ideal.span {(p : T) ^ n}) : f z = 0 := by
  obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 hz
  rw [map_mul, map_pow, map_natCast, hp, mul_zero]

theorem surjective_of_span {Wr C B T : Type*} [CommRing Wr] [CommRing C] [CommRing B] [CommRing T] [Algebra Wr C]
    (mk : C →+* B) (hmk : Function.Surjective mk) (f : T →+* B) (g : Wr →+* B)
    (hg : ∀ c x, mk (c • x) = g c * mk x) (hgr : ∀ c, g c ∈ f.range) (S : Set C)
    (hS : ∀ x ∈ S, mk x ∈ f.range) (hspan : ∀ x, x ∈ Submodule.span Wr S) : Function.Surjective f := by
  intro b
  obtain ⟨y, rfl⟩ := hmk b
  have hy := hspan y
  suffices h : mk y ∈ f.range from h
  induction hy using Submodule.span_induction with
  | mem x hx => exact hS x hx
  | zero => rw [map_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
  | smul c x _ hx => rw [hg]; exact mul_mem (hgr c) hx

end Generic

variable {l : ℕ} [Fact l.Prime] (A : PAlg l)

def tensMap (n : ℕ) : TensorProduct (Ainf l) (Acris l) A.W →+* A.Acr n :=
  (Algebra.TensorProduct.lift (IsScalarTower.toAlgHom (Ainf l) (Acris l) (A.Acr n))
    (IsScalarTower.toAlgHom (Ainf l) A.W (A.Acr n)) (fun _ _ => Commute.all _ _)).toRingHom

theorem tensMap_tmul (n : ℕ) (a : Acris l) (w : A.W) :
    tensMap A n (a ⊗ₜ w) = A.cris n a * A.toAcr n w :=
  Algebra.TensorProduct.lift_tmul _ _ _ a w

theorem red_cris {m n : ℕ} (h : n ≤ m) (a : Acris l) : A.red h (A.cris m a) = A.cris n a :=
  RingHom.congr_fun (ACris.ringHom_ext (F := (A.red h).comp (A.cris m)) (G := A.cris n) fun y => by
    rw [RingHom.comp_apply, cris_of', cris_of', red_mk]) a

theorem red_toAcr {m n : ℕ} (h : n ≤ m) (w : A.W) : A.red h (A.toAcr m w) = A.toAcr n w := rfl

theorem red_tensMap {m n : ℕ} (h : n ≤ m) (z : TensorProduct (Ainf l) (Acris l) A.W) :
    A.red h (tensMap A m z) = tensMap A n z :=
  RingHom.congr_fun (tensor_ringHom_ext (f := (A.red h).comp (tensMap A m)) (g := tensMap A n) fun a w => by
    rw [RingHom.comp_apply, tensMap_tmul, tensMap_tmul, map_mul, red_cris, red_toAcr]) z

theorem dxi_eq_cris (n k : ℕ) : A.dxi n k =
    A.cris n (AdicCompletion.of _ _ ⟨ACris.dpow k (xi0 l), ACris.dpow_mem xi0_mem k⟩) := by
  rw [cris_of]
  refine congrArg (A.mkAcr n) (Subtype.ext ?_)
  change dpw k A.xi = awayW A.s (ACris.dpow k (xi0 l))
  rw [dpow_eq_dpw]
  exact (awayW_dpw A.s k (ACris.isUnit_natCast (K := ℂ_[l]) (p := l) k.factorial_ne_zero) (xi0 l)).symm

theorem tensMap_surjective (n : ℕ) : Function.Surjective (tensMap A n) := by
  refine surjective_of_span (Wr := A.W) (A.mkAcr n) Ideal.Quotient.mk_surjective (tensMap A n) (A.toAcr n)
    (fun c x => ?_) (fun c => ⟨(1 : Acris l) ⊗ₜ c, ?_⟩) {z | ∃ k, 0 ≤ k ∧ z = A.dxi0 k} ?_ (mem_spanFrom_zero A)
  · rw [Algebra.smul_def, map_mul]
    rfl
  · rw [tensMap_tmul, map_one, one_mul]
  · rintro _ ⟨k, -, rfl⟩
    refine ⟨(AdicCompletion.of _ _ ⟨ACris.dpow k (xi0 l), ACris.dpow_mem xi0_mem k⟩ : Acris l) ⊗ₜ 1, ?_⟩
    rw [tensMap_tmul, map_one, mul_one, ← dxi_eq_cris]
    rfl

theorem mem_span_of_tensMap_eq_zero (n : ℕ) (z : TensorProduct (Ainf l) (Acris l) A.W) (hz : tensMap A n z = 0) :
    z ∈ Ideal.span {(l : TensorProduct (Ainf l) (Acris l) A.W) ^ n} :=
  mem_span_pow_of_compatible l (B := A.Acr) (tensMap A) (fun n => A.red (Nat.le_succ n))
    (fun n => A.red (Nat.le_add_left 1 n)) (fun n z => red_tensMap A _ z) (fun n z => red_tensMap A _ z)
    (fun n x => ((_root_.GlobalTheory.CompanionTheory.PerfAlg.lseq A n 1).2.2.1 x).1) (_root_.GlobalTheory.CompanionTheory.TensOne.main A) n z hz

theorem tensMap_eq_zero_of_mem (n : ℕ) (z : TensorProduct (Ainf l) (Acris l) A.W)
    (hz : z ∈ Ideal.span {(l : TensorProduct (Ainf l) (Acris l) A.W) ^ n}) : tensMap A n z = 0 :=
  map_eq_zero_of_mem_span_pow l n (tensMap A n) (A.pow_l_acr n) hz

theorem tens_base_change : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (n : ℕ),
    Function.Surjective (Algebra.TensorProduct.lift (IsScalarTower.toAlgHom (Ainf l) (Acris l) (A.Acr n))
      (IsScalarTower.toAlgHom (Ainf l) A.W (A.Acr n)) (fun _ _ => Commute.all _ _)) ∧
    ∀ z : TensorProduct (Ainf l) (Acris l) A.W,
      Algebra.TensorProduct.lift (IsScalarTower.toAlgHom (Ainf l) (Acris l) (A.Acr n))
        (IsScalarTower.toAlgHom (Ainf l) A.W (A.Acr n)) (fun _ _ => Commute.all _ _) z = 0 ↔
      z ∈ Ideal.span {(l : TensorProduct (Ainf l) (Acris l) A.W) ^ n} :=
  fun A n => ⟨tensMap_surjective A n, fun z =>
    ⟨mem_span_of_tensMap_eq_zero A n z, tensMap_eq_zero_of_mem A n z⟩⟩

end GlobalTheory.CompanionTheory.PerfFil
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorLiftSurjectiveKernelLevel =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TiltSequenceDeterminedBySharp =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TiltSequenceDeterminedBySharp", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpSurjectiveKerSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

namespace GlobalTheory.CompanionTheory.Untilt

theorem tilt_inj {l : ℕ} [Fact l.Prime] (A : PAlg l) (a b : ℕ → A.A)
    (ha : ∀ i, a (i + 1) ^ l = a i) (hb : ∀ i, b (i + 1) ^ l = b i)
    (hs : ∀ i, A.sharp (a i) = A.sharp (b i)) : a = b := by
  have hf : ∀ x y : A.A, (x - y) ^ l = x ^ l - y ^ l := fun x y => map_sub A.frob x y
  have key : ∀ j i, a i - b i = (a (i + j) - b (i + j)) ^ (l ^ j) := by
    intro j
    induction j with
    | zero => intro i; simp
    | succ j ih =>
      intro i
      rw [ih i, pow_succ' l j, pow_mul, hf, ← add_assoc, ha, hb]
  have hmem : ∀ j, a j - b j ∈ Ideal.span {A.pi} := by
    intro j
    rw [← (GlobalTheory.CompanionTheory.Untilt.sharp_map_surjective_ker A).2, RingHom.mem_ker, map_sub, A.sharpMap_eq, A.sharpMap_eq,
      hs j, sub_self]
  have hdvd : ∀ i j, A.pi ^ j ∣ a i - b i := by
    intro i j
    have h1 : A.pi ∣ a (i + j) - b (i + j) := Ideal.mem_span_singleton.1 (hmem (i + j))
    rw [key j i]
    exact (pow_dvd_pow _ (Nat.lt_pow_self (Fact.out : l.Prime).one_lt).le).trans (pow_dvd_pow_of_dvd h1 _)
  have hH : IsHausdorff (Ideal.span {A.pi}) A.A := A.compl.toIsHausdorff
  funext i
  refine sub_eq_zero.1 (hH.haus _ fun n => ?_)
  rw [SModEq.zero, Ideal.span_singleton_pow, smul_eq_mul, Ideal.mul_top]
  exact Ideal.mem_span_singleton.2 (hdvd i n)

end GlobalTheory.CompanionTheory.Untilt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TiltSequenceDeterminedBySharp =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.FiltrationSpanDividedPowers =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.FiltrationSpanDividedPowers", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.GaloisTwistIdentitySection\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompatibleRootsLiftToTilt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousFunctionsPerfectAdicRing\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallineFiltrationMultiplicative\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsDividedPowersOnReductions\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.MapWXi\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimeRootValuationQuotient\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsThetaKernelEqFiltrationOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueIdempotentLiftTilt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FunctorialityOfPeriodRingMaps\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentsOfPrimePowerRootOfUnity\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralRingAdicCompletePrimeRegular\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsUnitOfIsUnitSharp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PeriodRingComparisonOfBase\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpMapCongruenceProperties\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SharpSurjectiveKerSpan\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorLiftSurjectiveKernelLevel\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TiltSequenceDeterminedBySharp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistFrobeniusFiltrationCompat\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiltrationDividedPowerStructures\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFiltrationGeneratedByDividedXi\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PerfectoidXiNonZeroDivisor\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientMapsSurjectiveWithKernels\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UntiltAdicComplete\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.PAlg

theorem CrystallineSemistableComparison.RL.u_tf : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), (l : A.U) ∈ nonZeroDivisors A.U ∧ A.xi ∈ nonZeroDivisors A.W ∧ ∀ (n : ℕ) (x : A.W), A.xi * x ∈ Ideal.span {(l : A.W) ^ n} → x ∈ Ideal.span {(l : A.W) ^ n} := _root_.GlobalTheory.CompanionTheory.UntiltRegular.untilt_regular

theorem CrystallineSemistableComparison.RL.u_mod : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), Function.Surjective A.aToU1 ∧ RingHom.ker A.aToU1 = Ideal.span {A.pi} := _root_.GlobalTheory.CompanionTheory.Untilt.sharp_map_surjective_ker

theorem CrystallineSemistableComparison.RL.u_complete : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), IsAdicComplete (Ideal.span {(l : A.U)}) A.U := _root_.GlobalTheory.CompanionTheory.Untilt.isAdicComplete_U

theorem CrystallineSemistableComparison.RL.sharp_cong : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), (∀ (a b : A.A) (n : ℕ), a - b ∈ Ideal.span {A.pi} → A.sharp (a ^ l ^ n) - A.sharp (b ^ l ^ n) ∈ Ideal.span {(l : A.U) ^ (n + 1)}) ∧ (∀ a b : A.A, A.sharp a - A.sharp b ∈ Ideal.span {(l : A.U)} ↔ a - b ∈ Ideal.span {A.pi}) ∧ ∀ e : A.A, IsIdempotentElem e → A.sharp (1 - e) = 1 - A.sharp e := _root_.GlobalTheory.CompanionTheory.Untilt.sharp_congruences

theorem CrystallineSemistableComparison.RL.tilt_ex : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (u : ℕ → A.U), (∀ i, u (i + 1) ^ l = u i) → ∃ a : ℕ → A.A, (∀ i, a (i + 1) ^ l = a i) ∧ ∀ i, A.sharp (a i) = u i := _root_.GlobalTheory.CompanionTheory.Untilt.exists_compatible_roots_of_sharp

theorem CrystallineSemistableComparison.RL.tilt_inj : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (a b : ℕ → A.A), (∀ i, a (i + 1) ^ l = a i) → (∀ i, b (i + 1) ^ l = b i) → (∀ i, A.sharp (a i) = A.sharp (b i)) → a = b := _root_.GlobalTheory.CompanionTheory.Untilt.tilt_inj

theorem CrystallineSemistableComparison.RL.filtration_multiplicative : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), A.Fil0 0 = ⊤ ∧ (∀ i j, A.dxi0 i * A.dxi0 j = ((i + j).choose i : A.Acr0) * A.dxi0 (i + j)) ∧ (∀ k, (k.factorial : A.Acr0) * A.dxi0 k = algebraMap A.W A.Acr0 A.xi ^ k) ∧ (∀ r s, A.Fil0 r * A.Fil0 s ≤ A.Fil0 (r + s)) ∧ (∀ n r, A.Fil n r = (A.Fil0 r).map (A.mkAcr n)) ∧ (∀ n, A.PFil n = A.PFil0.map (A.mkAcr n)) ∧ (∀ n, A.Fil n 0 = ⊤) ∧ ∀ n r s, A.Fil n r * A.Fil n s ≤ A.Fil n (r + s) := _root_.GlobalTheory.CompanionTheory.FilMul.main

theorem CrystallineSemistableComparison.RL.gr : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (n r : ℕ), (∀ z ∈ A.Fil n r, ∃ w : A.W, z - A.toAcr n w * A.dxi n r ∈ A.Fil n (r + 1)) ∧ ∀ w : A.W, A.toAcr n w * A.dxi n r ∈ A.Fil n (r + 1) ↔ A.th w ∈ Ideal.span {(l : A.U) ^ n} := _root_.GlobalTheory.CompanionTheory.PerfFil.graded_mod_pow

theorem CrystallineSemistableComparison.RL.uToQ : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (n : ℕ), Function.Surjective (A.uToQ n) ∧ RingHom.ker (A.uToQ n) = Ideal.span {(l : A.U) ^ n} ∧ Function.Surjective (A.uToPQ n) ∧ (n ≠ 0 → RingHom.ker (A.uToPQ n) = Ideal.span {(l : A.U)}) := _root_.GlobalTheory.CompanionTheory.Untilt.uToQ_main

theorem CrystallineSemistableComparison.RL.expand_nat : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (B : PAlg l) (f : A ⟶ B), (∀ a, mapAcr f 1 (A.aTo1 a) = B.aTo1 (Hom.f f a)) ∧ (∀ c : ℕ →₀ A.A, mapAcr f 1 (A.expand c) = B.expand (c.mapRange (Hom.f f) (map_zero _))) ∧ (∀ a, mapU f (A.sharp a) = B.sharp (Hom.f f a)) ∧ (∀ a, mapUn f 1 (A.aToU1 a) = B.aToU1 (Hom.f f a)) ∧ (∀ n x, Ideal.Quotient.mk (B.Fil n 1) (mapAcr f n (A.toAcr n x)) = B.uToQ n (mapU f (A.th x))) ∧ ∀ x : Ainf l, algebraMap (Ainf l) (A.Acr 1) x = A.aTo1 (A.s (x.coeff 0)) := _root_.GlobalTheory.CompanionTheory.PAlgNat.expand_nat

theorem CrystallineSemistableComparison.RL.pdi : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), R.PdI (A.Fil0 1) ∧ R.PdI A.PFil0 ∧ ∀ x ∈ A.Fil0 1, ∀ (k : ℕ) (y : A.Acr0), (k.factorial : A.Acr0) * y = x ^ k → y ∈ A.Fil0 k := _root_.GlobalTheory.CompanionTheory.PerfFil.pdI_main

theorem CrystallineSemistableComparison.RL.pd_ex : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (n : ℕ), (∃ δ : DividedPowers (A.Fil n 1), R.IsPd (A.mkAcr n) (A.Fil0 1) δ) ∧ ∃ δ : DividedPowers (A.PFil n), R.IsPd (A.mkAcr n) A.PFil0 δ := _root_.GlobalTheory.CompanionTheory.PerfFil.exists_dividedPowers_fil_pfil

theorem CrystallineSemistableComparison.RL.theta_ex : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (n : ℕ), ∃ θ : A.Acr n →+* A.Un n, (∀ x : A.W, θ (A.toAcr n x) = Ideal.Quotient.mk _ (A.th x)) ∧ RingHom.ker θ = A.Fil n 1 := _root_.GlobalTheory.CompanionTheory.PerfectAlg.exists_theta_mod

theorem CrystallineSemistableComparison.RL.base_ex : ∀ {l : ℕ} [Fact l.Prime], IsAdicComplete (Ideal.span {pFlat l}) (Ob l) ∧ pFlat l ∈ nonZeroDivisors (Ob l) := _root_.GlobalTheory.CompanionTheory.TiltCompl.complete_tf

theorem CrystallineSemistableComparison.RL.base_acr : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), IsBase l A → (Function.Bijective A.cris0 ∧ Function.Bijective A.oC) ∧ ∀ n, Function.Surjective (A.cris n) ∧ RingHom.ker (A.cris n) = Ideal.span {(l : Acris l) ^ n} := _root_.GlobalTheory.CompanionTheory.BaseAcris.main

theorem CrystallineSemistableComparison.RL.tens : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (n : ℕ), Function.Surjective (Algebra.TensorProduct.lift (IsScalarTower.toAlgHom (Ainf l) (Acris l) (A.Acr n)) (IsScalarTower.toAlgHom (Ainf l) A.W (A.Acr n)) (fun _ _ => Commute.all _ _)) ∧ ∀ z : TensorProduct (Ainf l) (Acris l) A.W, Algebra.TensorProduct.lift (IsScalarTower.toAlgHom (Ainf l) (Acris l) (A.Acr n)) (IsScalarTower.toAlgHom (Ainf l) A.W (A.Acr n)) (fun _ _ => Commute.all _ _) z = 0 ↔ z ∈ Ideal.span {(l : TensorProduct (Ainf l) (Acris l) A.W) ^ n} := _root_.GlobalTheory.CompanionTheory.PerfFil.tens_base_change

theorem CrystallineSemistableComparison.RL.untilt_valuation_mod_square : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), A.IsTest → ∃ ϖ : A.U, ϖ ^ l = (l : A.U) ∧ R.Val0 (A.U ⧸ Ideal.span {ϖ ^ 2}) ∧ R.Aic (A.U ⧸ Ideal.span {ϖ ^ 2}) := _root_.GlobalTheory.CompanionTheory.Untilt.untilt_mod_varpi_sq

theorem CrystallineSemistableComparison.RL.idem_au : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (e : A.U), IsIdempotentElem e → ∃! e₀ : A.A, IsIdempotentElem e₀ ∧ A.sharp e₀ = e := _root_.GlobalTheory.CompanionTheory.Untilt.existsUnique_idempotent_sharp

theorem CrystallineSemistableComparison.RL.unit_lift : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (a : A.A), IsUnit (A.sharp a) → IsUnit a := _root_.GlobalTheory.CompanionTheory.Untilt.isUnit_of_isUnit_sharp

theorem CrystallineSemistableComparison.RL.mu_lc : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), R.Val (l : A.U) → ∀ (n : ℕ) (ζ : OC l), IsPrimitiveRoot ζ (l ^ n) → ∀ z : A.U, z ^ l ^ n = 1 → ∃ e : ZMod (l ^ n) → A.A, (haveI : NeZero (l ^ n) := ⟨pow_ne_zero _ (Fact.out : l.Prime).ne_zero⟩; CompleteOrthogonalIdempotents e) ∧ ∀ c, A.sharp (e c) * (z - A.oC ζ ^ c.val) = 0 := _root_.GlobalTheory.CompanionTheory.RootsLC.exists_idempotents_of_root_of_unity

theorem CrystallineSemistableComparison.RL.cont_ex : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (Γ : Type) [TopologicalSpace Γ], PerfectRing (A.contR Γ) l ∧ IsAdicComplete (Ideal.span {A.contC Γ A.pi}) (A.contR Γ) ∧ A.contC Γ A.pi ∈ nonZeroDivisors (A.contR Γ) ∧ ∀ (k : ℕ) (f : A.contR Γ), f ∈ Ideal.span {A.contC Γ A.pi ^ k} ↔ ∀ γ, f.1 γ ∈ Ideal.span {A.pi ^ k} := _root_.GlobalTheory.CompanionTheory.ContFn.main

theorem CrystallineSemistableComparison.RL.tw_fil : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (σ : Gal(PadicAlgCl l/K)), (∀ x ∈ (tw σ A).Fil0 1, (pdOk_twId σ A).acr0 x ∈ A.Fil0 1) ∧ (∀ x ∈ A.PFil0, A.pdOk_frob.acr0 x ∈ Ideal.span {(l : A.Acr0)}) ∧ (∀ n r, ∀ x ∈ (tw σ A).Fil n r, twAcr σ A n x ∈ A.Fil n r) ∧ (∀ n, Function.Bijective (twAcr σ A n)) ∧ ∀ n x, twAcr σ A n ((tw σ A).phi n x) = A.phi n (twAcr σ A n x) := _root_.GlobalTheory.CompanionTheory.TwFil.tw_fil
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.FiltrationSpanDividedPowers =====
