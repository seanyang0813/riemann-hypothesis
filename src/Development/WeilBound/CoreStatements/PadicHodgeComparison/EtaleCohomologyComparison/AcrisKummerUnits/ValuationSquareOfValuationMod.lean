module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LiftIdempotentAdicComplete
public import Mathlib.Algebra.Divisibility.Basic
public import Mathlib.Algebra.Ring.Defs
public import Mathlib.RingTheory.DividedPowers.DPMorphism
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemIdempotentComplementIff
public import Mathlib.RingTheory.Ideal.Maximal
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalInduction
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerQuotientExists
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralLocalizationAwayInRing
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationOfDichotomy
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SurjectivePreservesClosednessComparability
public import Mathlib.RingTheory.Unramified.LocalStructure
public import Mathlib.RingTheory.Etale.StandardEtale
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonPolygonSlopeExistence
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PolynomialRootsOfClosedQuotient
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AbsolutelyIntegrallyClosedOfNewton, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComparableModSquareLocalization, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DivisibilityChainPowerFactorization, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DichotomyOfComparableModSquare, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerMorphismCompatible, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalizationDichotomy, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalizationPreservesClosedness, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationLocalToGlobal, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationLocalToGlobalStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PowerDivisibilityRootExtraction, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SectionOrthogonalIdempotentSum, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SectionOverIdempotentProperties, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationOfLocalDichotomy, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationPowerIff, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ValuationSquareOfValuationMod

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AbsolutelyIntegrallyClosedOfNewton =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AbsolutelyIntegrallyClosedOfNewton", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.AicLimit

theorem mem_pow_smul_top_iff {S : Type} [CommRing S] (t y : S) (n : ℕ) :
    y ∈ ((Ideal.span {t}) ^ n • ⊤ : Submodule S S) ↔ t ^ n ∣ y := by
  rw [Ideal.smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton]

theorem step_at {S : Type} [CommRing S] {ϖ : S} (hS : Step ϖ) (P : Polynomial S) (hP : P.Monic)
    (hd : 0 < P.natDegree) (n : ℕ) (x : S) (hx : ϖ ^ n ∣ P.eval x) :
    ∃ z, ϖ ^ (n + 1) ∣ P.eval (x + z) ∧ ϖ ^ n ∣ z ^ P.natDegree := by
  have hnt : Nontrivial S := by
    by_contra h
    rw [not_nontrivial_iff_subsingleton] at h
    rw [Subsingleton.elim P 0, Polynomial.natDegree_zero] at hd
    exact lt_irrefl 0 hd
  have hq : (Polynomial.X + Polynomial.C x).natDegree = 1 := Polynomial.natDegree_X_add_C x
  have hQm : (P.comp (Polynomial.X + Polynomial.C x)).Monic :=
    hP.comp (Polynomial.monic_X_add_C x) (by rw [hq]; exact one_ne_zero)
  have hQd : (P.comp (Polynomial.X + Polynomial.C x)).natDegree = P.natDegree := by
    rw [Polynomial.natDegree_comp_eq_of_mul_ne_zero (by
      rw [hP.leadingCoeff, (Polynomial.monic_X_add_C x).leadingCoeff, one_pow, one_mul]
      exact one_ne_zero), hq, mul_one]
  obtain ⟨z, hz1, hz2⟩ := hS (P.comp (Polynomial.X + Polynomial.C x)) n hQm (by rw [hQd]; exact hd)
    (by simpa [Polynomial.eval_comp] using hx)
  refine ⟨z, ?_, ?_⟩
  · simpa [Polynomial.eval_comp, add_comm] using hz1
  · rwa [hQd] at hz2

theorem exists_seq {S : Type} [CommRing S] {ϖ : S} (hS : Step ϖ) (P : Polynomial S) (hP : P.Monic)
    (hd : 0 < P.natDegree) :
    ∃ x : ℕ → S, (∀ n, ϖ ^ n ∣ P.eval (x n)) ∧ ∀ n, ϖ ^ n ∣ (x (n + 1) - x n) ^ P.natDegree := by
  let next : ∀ n, {x : S // ϖ ^ n ∣ P.eval x} → {x : S // ϖ ^ (n + 1) ∣ P.eval x} := fun n x =>
    ⟨x.1 + Classical.choose (step_at hS P hP hd n x.1 x.2),
      (Classical.choose_spec (step_at hS P hP hd n x.1 x.2)).1⟩
  let seq : ∀ n, {x : S // ϖ ^ n ∣ P.eval x} := fun n =>
    Nat.rec (motive := fun n => {x : S // ϖ ^ n ∣ P.eval x}) ⟨0, by simp⟩ next n
  refine ⟨fun n => (seq n).1, fun n => (seq n).2, fun n => ?_⟩
  have h := (Classical.choose_spec (step_at hS P hP hd n (seq n).1 (seq n).2)).2
  have he : (seq (n + 1)).1 - (seq n).1 = Classical.choose (step_at hS P hP hd n (seq n).1 (seq n).2) :=
    add_sub_cancel_left (seq n).1 _
  show ϖ ^ n ∣ ((seq (n + 1)).1 - (seq n).1) ^ P.natDegree
  rw [he]
  exact h

theorem aic_of_step : ∀ {S : Type} [CommRing S] (ϖ : S) [IsAdicComplete (Ideal.span {ϖ}) S],
    Step ϖ → (∀ (z : S) (m d : ℕ), 0 < d → ϖ ^ (m * d) ∣ z ^ d → ϖ ^ m ∣ z) → Aic (S := S) := by
  intro S _ ϖ _ hS hroot P hP hd0
  obtain ⟨x, hx1, hx2⟩ := exists_seq hS P hP hd0
  obtain ⟨d, hdd⟩ : ∃ d, d = P.natDegree := ⟨_, rfl⟩
  rw [← hdd] at hx2 hd0
  have hΔ : ∀ n, ϖ ^ (n / d) ∣ x (n + 1) - x n := fun n =>
    hroot _ (n / d) d hd0 ((pow_dvd_pow ϖ (Nat.div_mul_le_self n d)).trans (hx2 n))
  have hstep : ∀ k, ϖ ^ k ∣ x ((k + 1) * d) - x (k * d) := by
    intro k
    have hi : ∀ i, ϖ ^ k ∣ x (k * d + i) - x (k * d) := by
      intro i
      induction i with
      | zero => simp
      | succ i ih =>
        have h1 : ϖ ^ k ∣ x (k * d + i + 1) - x (k * d + i) :=
          (pow_dvd_pow ϖ ((Nat.le_div_iff_mul_le hd0).2 (Nat.le_add_right _ _))).trans (hΔ (k * d + i))
        rw [show k * d + (i + 1) = k * d + i + 1 from rfl,
          ← sub_add_sub_cancel (x (k * d + i + 1)) (x (k * d + i)) (x (k * d))]
        exact dvd_add h1 ih
    have h3 := hi d
    rwa [show k * d + d = (k + 1) * d by ring] at h3
  have hcauchy : ∀ m n, m ≤ n → ϖ ^ m ∣ x (n * d) - x (m * d) := by
    intro m n hmn
    induction n, hmn using Nat.le_induction with
    | base => simp
    | succ n hmn ih =>
      rw [← sub_add_sub_cancel (x ((n + 1) * d)) (x (n * d)) (x (m * d))]
      exact dvd_add ((pow_dvd_pow ϖ hmn).trans (hstep n)) ih
  obtain ⟨L, hL⟩ := IsPrecomplete.prec (I := Ideal.span {ϖ}) inferInstance
    (f := fun k => x (k * d)) (fun {m n} hmn => by
      rw [SModEq.sub_mem, mem_pow_smul_top_iff]
      exact dvd_sub_comm.1 (hcauchy m n hmn))
  refine ⟨L, ?_⟩
  show Polynomial.eval L P = 0
  apply IsHausdorff.haus (I := Ideal.span {ϖ}) inferInstance
  intro k
  rw [SModEq.sub_mem, sub_zero, mem_pow_smul_top_iff]
  have h1 : ϖ ^ k ∣ x (k * d) - L := by
    have h0 := hL k
    rw [SModEq.sub_mem, mem_pow_smul_top_iff] at h0
    exact h0
  have h2 : ϖ ^ k ∣ P.eval (x (k * d)) :=
    (pow_dvd_pow ϖ (Nat.le_mul_of_pos_right k hd0)).trans (hx1 (k * d))
  have h4 : ϖ ^ k ∣ P.eval (x (k * d)) - P.eval L := h1.trans (Polynomial.sub_dvd_eval_sub _ _ _)
  have h5 : P.eval L = P.eval (x (k * d)) - (P.eval (x (k * d)) - P.eval L) := by ring
  rw [h5]
  exact dvd_sub h2 h4

end GlobalTheory.CompanionTheory.AicLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AbsolutelyIntegrallyClosedOfNewton =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComparableModSquareLocalization =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComparableModSquareLocalization", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LiftIdempotentAdicComplete\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.CompMod

theorem exists_eq_add_of_mem_span_quot {S : Type} [CommRing S] (ϖ x y : S)
    (h : Ideal.Quotient.mk (Ideal.span {ϖ ^ 2}) x ∈
      Ideal.span {Ideal.Quotient.mk (Ideal.span {ϖ ^ 2}) y}) :
    ∃ c d : S, x = y * c + ϖ ^ 2 * d := by
  obtain ⟨c', hc'⟩ := Ideal.mem_span_singleton.1 h
  obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective c'
  rw [← map_mul] at hc'
  obtain ⟨d, hd⟩ := Ideal.mem_span_singleton.1 (Ideal.Quotient.eq.1 hc')
  exact ⟨c, d, by linear_combination hd⟩

theorem mem_span_or_mem_span {S : Type} [CommRing S] (ϖ : S)
    [IsAdicComplete (Ideal.span {ϖ}) S] (h0 : Val0 (S := S ⧸ Ideal.span {ϖ ^ 2}))
    (P : Ideal S) (hP : P.IsPrime) (f g : S ⧸ compI P) :
    f ∈ Ideal.span {g, Ideal.Quotient.mk (compI P) ϖ ^ 2} ∨
      g ∈ Ideal.span {f, Ideal.Quotient.mk (compI P) ϖ ^ 2} := by
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective f
  obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective g
  obtain ⟨ε, hε, h1, h2⟩ := h0 (Ideal.Quotient.mk _ a) (Ideal.Quotient.mk _ b)
  obtain ⟨e, ⟨he, rfl⟩, -⟩ :=
    IdemLift.existsUnique_idempotent_lift ϖ 2 two_ne_zero ε hε
  rw [← map_mul] at h1
  have h2' : Ideal.Quotient.mk (Ideal.span {ϖ ^ 2}) ((1 - e) * b) ∈
      Ideal.span {Ideal.Quotient.mk (Ideal.span {ϖ ^ 2}) a} := by
    simpa [map_mul, map_sub, map_one] using h2
  obtain ⟨c, d, hcd⟩ := exists_eq_add_of_mem_span_quot ϖ _ _ h1
  obtain ⟨c', d', hcd'⟩ := exists_eq_add_of_mem_span_quot ϖ _ _ h2'
  have key : ∀ t : S, IsIdempotentElem t → t ∈ P →
      Ideal.Quotient.mk (compI P) t = 0 := fun t ht htP =>
    Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.subset_span ⟨ht, htP⟩)
  by_cases heP : e ∈ P
  · right
    have hz := key e he heP
    have hb := congrArg (Ideal.Quotient.mk (compI P)) hcd'
    simp only [map_mul, map_add (f := _), map_sub, map_one, map_pow, hz, sub_zero, one_mul] at hb
    rw [hb]
    exact Ideal.mem_span_pair.2 ⟨Ideal.Quotient.mk _ c', Ideal.Quotient.mk _ d', by ring⟩
  · left
    have hmul : e * (1 - e) ∈ P := by
      have : e * (1 - e) = 0 := by
        have he' : e * e = e := he
        linear_combination -he'
      rw [this]
      exact P.zero_mem
    have h1e : 1 - e ∈ P := (hP.mem_or_mem hmul).resolve_left heP
    have hz := key (1 - e) he.one_sub h1e
    have hz' : Ideal.Quotient.mk (compI P) e = 1 := by
      rw [map_sub, map_one] at hz
      exact (sub_eq_zero.1 hz).symm
    have ha := congrArg (Ideal.Quotient.mk (compI P)) hcd
    simp only [map_mul, map_add (f := _), map_pow, hz', one_mul] at ha
    rw [ha]
    exact Ideal.mem_span_pair.2 ⟨Ideal.Quotient.mk _ c, Ideal.Quotient.mk _ d, by ring⟩

end GlobalTheory.CompanionTheory.CompMod
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComparableModSquareLocalization =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DivisibilityChainPowerFactorization =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DivisibilityChainPowerFactorization", "h": "module\n\npublic import Mathlib.Algebra.Divisibility.Basic\npublic import Mathlib.Algebra.Ring.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.NormalForm

theorem normal_form_of_dichotomy :
    ∀ {S : Type} [CommRing S] (ϖ : S), (∀ f : S, ϖ ∣ f ∨ f ∣ ϖ) →
      ∀ (f : S) (M : ℕ), ϖ ^ M ∣ f ∨ ∃ (j : ℕ) (f' : S), f = ϖ ^ j * f' ∧ f' ∣ ϖ := by
  intro S _ ϖ hd f M
  induction M generalizing f with
  | zero => exact Or.inl (by simp)
  | succ M ih =>
    rcases hd f with ⟨g, rfl⟩ | hf
    · rcases ih g with hg | ⟨j, f', hg, hf'⟩
      · left
        rw [pow_succ']
        exact mul_dvd_mul_left ϖ hg
      · right
        refine ⟨j + 1, f', ?_, hf'⟩
        rw [hg, pow_succ', mul_assoc]
    · exact Or.inr ⟨0, f, by simp, hf⟩

end GlobalTheory.CompanionTheory.NormalForm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DivisibilityChainPowerFactorization =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DichotomyOfComparableModSquare =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DichotomyOfComparableModSquare", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DivisibilityChainPowerFactorization\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.DichMod

variable {S : Type} [CommRing S]

theorem isUnit_one_sub_mul {ϖ : S} (hJ : ϖ ∈ (⊥ : Ideal S).jacobson) (w : S) :
    IsUnit (1 - w * ϖ) := by
  have h := Ideal.mem_jacobson_bot.mp hJ (-w)
  have e : ϖ * -w + 1 = 1 - w * ϖ := by ring
  rwa [e] at h

theorem dvd_or_dvd {ϖ : S} (hJ : ϖ ∈ (⊥ : Ideal S).jacobson)
    (hc : ∀ f g : S, f ∈ Ideal.span {g, ϖ ^ 2} ∨ g ∈ Ideal.span {f, ϖ ^ 2}) (f : S) :
    ϖ ∣ f ∨ f ∣ ϖ := by
  rcases hc f ϖ with h | h
  · left
    obtain ⟨c, d, e⟩ := Ideal.mem_span_pair.mp h
    exact ⟨c + d * ϖ, by rw [← e]; ring⟩
  · right
    obtain ⟨c, w, e⟩ := Ideal.mem_span_pair.mp h
    have hu := isUnit_one_sub_mul hJ w
    have key : (1 - w * ϖ) * ϖ = c * f := by
      have : c * f = ϖ - w * ϖ ^ 2 := by linear_combination e
      rw [this]; ring
    exact hu.dvd_mul_left.mp (key ▸ dvd_mul_left f c)

theorem comparable {ϖ : S}
    (hc : ∀ f g : S, f ∈ Ideal.span {g, ϖ ^ 2} ∨ g ∈ Ideal.span {f, ϖ ^ 2}) {f g : S}
    (hf : f ∣ ϖ) (hg : g ∣ ϖ) : g ∣ f ∨ f ∣ g := by
  rcases hc f g with h | h
  · left
    obtain ⟨c, d, e⟩ := Ideal.mem_span_pair.mp h
    rw [← e]
    exact dvd_add (dvd_mul_left g c) ((hg.trans (dvd_pow_self ϖ two_ne_zero)).mul_left d)
  · right
    obtain ⟨c, d, e⟩ := Ideal.mem_span_pair.mp h
    rw [← e]
    exact dvd_add (dvd_mul_left f c) ((hf.trans (dvd_pow_self ϖ two_ne_zero)).mul_left d)

theorem dvd_of_high {ϖ : S} (hJ : ϖ ∈ (⊥ : Ideal S).jacobson) {f g a b : S} {N : ℕ}
    (e : a * f + b * g = ϖ ^ N) (h : ϖ ^ (N + 1) ∣ f) : g ∣ f := by
  obtain ⟨t, ht⟩ := h
  have hu := isUnit_one_sub_mul hJ (a * t)
  have key : (1 - a * t * ϖ) * ϖ ^ N = b * g := by
    have : b * g = ϖ ^ N - a * f := by linear_combination e
    rw [this, ht]; ring
  have hg : g ∣ ϖ ^ N := hu.dvd_mul_left.mp (key ▸ dvd_mul_left g b)
  exact hg.trans ⟨ϖ * t, by rw [ht]; ring⟩

theorem dvd_of_lt {ϖ f g f' g' : S} {i j : ℕ} (hf : f = ϖ ^ i * f') (hg : g = ϖ ^ j * g')
    (hf' : f' ∣ ϖ) (hij : i < j) : f ∣ g := by
  have h1 : f ∣ ϖ ^ (i + 1) := by
    rw [hf, pow_succ]
    exact mul_dvd_mul_left _ hf'
  have h2 : ϖ ^ (i + 1) ∣ g := by
    rw [hg]
    exact (pow_dvd_pow ϖ hij).mul_right g'
  exact h1.trans h2

theorem dich_of_mod : ∀ {S : Type} [CommRing S] (ϖ : S), ϖ ∈ (⊥ : Ideal S).jacobson →
    (∀ f g : S, f ∈ Ideal.span {g, ϖ ^ 2} ∨ g ∈ Ideal.span {f, ϖ ^ 2}) → Dich ϖ := by
  intro S _ ϖ hJ hc f g hN
  obtain ⟨N, hN⟩ := hN
  obtain ⟨a, b, e⟩ := Ideal.mem_span_pair.mp hN
  have hd := dvd_or_dvd hJ hc
  rcases GlobalTheory.CompanionTheory.NormalForm.normal_form_of_dichotomy ϖ hd f (N + 1) with hf | ⟨i, f', hf, hf'⟩
  · exact Or.inl (dvd_of_high hJ e hf)
  rcases GlobalTheory.CompanionTheory.NormalForm.normal_form_of_dichotomy ϖ hd g (N + 1) with hg | ⟨j, g', hg, hg'⟩
  · exact Or.inr (dvd_of_high hJ (by rw [add_comm]; exact e) hg)
  rcases lt_trichotomy i j with hij | hij | hij
  · exact Or.inr (dvd_of_lt hf hg hf' hij)
  · subst hij
    rw [hf, hg]
    rcases comparable hc hf' hg' with h | h
    · exact Or.inl (mul_dvd_mul_left _ h)
    · exact Or.inr (mul_dvd_mul_left _ h)
  · exact Or.inl (dvd_of_lt hg hf hg' hij)

end GlobalTheory.CompanionTheory.DichMod
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DichotomyOfComparableModSquare =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerMorphismCompatible =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerMorphismCompatible", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Mathlib.RingTheory.DividedPowers.DPMorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.PdMor

theorem isDPMorphism_of_isPd : ∀ {S : Type} [CommRing S] {S' E E' : Type} [CommRing S'] [CommRing E] [CommRing E'] (π : S →+* E) (π' : S' →+* E') (I : Ideal S) (I' : Ideal S') {J : Ideal E} {J' : Ideal E'} (δ : DividedPowers J) (δ' : DividedPowers J') (F₀ : S →+* S') (F : E →+* E'), Function.Surjective π → PdI I → IsPd π I δ → IsPd π' I' δ' → (∀ x ∈ I, F₀ x ∈ I') → (∀ x, F (π x) = π' (F₀ x)) → DividedPowers.IsDPMorphism δ δ' F := by
  intro S _ S' E E' _ _ _ π π' I I' J J' δ δ' F₀ F hπ hI hP hP' hF₀ hF
  have hmem : ∀ a ∈ J, ∃ x ∈ I, π x = a := fun a ha => by
    rw [hP.1] at ha
    exact (Ideal.mem_map_iff_of_surjective π hπ).mp ha
  have hdp : ∀ (k : ℕ) (x : S), x ∈ I → ∃ y : S, (k.factorial : S) * y = x ^ k := by
    intro k x hx
    rcases Nat.eq_zero_or_pos k with rfl | hk
    · exact ⟨1, by simp⟩
    · obtain ⟨y, -, hy⟩ := hI x hx k hk.ne'
      exact ⟨y, hy⟩
  refine ⟨?_, ?_⟩
  · rw [Ideal.map_le_iff_le_comap]
    intro a ha
    obtain ⟨x, hx, rfl⟩ := hmem a ha
    rw [Ideal.mem_comap, hF, hP'.1]
    exact Ideal.mem_map_of_mem π' (hF₀ x hx)
  · intro n a ha
    obtain ⟨x, hx, rfl⟩ := hmem a ha
    obtain ⟨y, hy⟩ := hdp n x hx
    rw [hP.2 n x y hx hy, hF, hF,
      hP'.2 n (F₀ x) (F₀ y) (hF₀ x hx) (by rw [← map_pow, ← hy, map_mul, map_natCast])]

end GlobalTheory.CompanionTheory.PdMor
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerMorphismCompatible =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalizationDichotomy =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalizationDichotomy", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemIdempotentComplementIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.CompDich

theorem one_sub_mem_compI {S : Type} [CommRing S] {P : Ideal S} (hP : P.IsPrime) {e : S}
    (he : IsIdempotentElem e) (heP : e ∉ P) : 1 - e ∈ compI P := by
  refine Ideal.subset_span ⟨he.one_sub, ?_⟩
  have h0 : e * (1 - e) = 0 := by rw [mul_sub, mul_one, he.eq, sub_self]
  have h1 : e * (1 - e) ∈ P := by rw [h0]; exact P.zero_mem
  exact (hP.mem_or_mem h1).resolve_left heP

theorem dich_comp : ∀ {S : Type} [CommRing S] (ϖ : S) (P : Ideal S), P.IsPrime →
    (Val ϖ → Dich (Ideal.Quotient.mk (compI P) ϖ)) ∧
    (ϖ ∈ nonZeroDivisors S → Ideal.Quotient.mk (compI P) ϖ ∈ nonZeroDivisors (S ⧸ compI P)) := by
  intro S _ ϖ P hP
  refine ⟨fun hV => ?_, fun hϖ => ?_⟩
  · rintro f g ⟨N, hN⟩
    obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective f
    obtain ⟨g, rfl⟩ := Ideal.Quotient.mk_surjective g
    obtain ⟨a, b, hab⟩ := Ideal.mem_span_pair.1 hN
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective a
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective b
    have h1 : ϖ ^ N - (a * f + b * g) ∈ compI P := by
      rw [← Ideal.Quotient.eq]
      simpa only [map_add (f := _), map_mul, map_pow] using hab.symm
    obtain ⟨e, he, heP, hez⟩ := (GlobalTheory.CompanionTheory.CompIdeal.mem_compI_iff P hP _).1 h1
    have hc := one_sub_mem_compI hP he heP
    have hee : e * e = e := he
    have hff : Ideal.Quotient.mk (compI P) (e * f + (1 - e)) = Ideal.Quotient.mk (compI P) f := by
      rw [Ideal.Quotient.eq]
      have h2 : e * f + (1 - e) - f = (1 - f) * (1 - e) := by ring
      rw [h2]
      exact Ideal.mul_mem_left _ _ hc
    have hmem : ϖ ^ N ∈ Ideal.span {e * f + (1 - e), g} := by
      refine Ideal.mem_span_pair.2 ⟨a * e + (1 - e) * ϖ ^ N, b * e, ?_⟩
      linear_combination (a * f - a - ϖ ^ N * f + ϖ ^ N) * hee - hez
    obtain ⟨e1, he1, h2, h3⟩ := hV (e * f + (1 - e)) g ⟨N, hmem⟩
    rw [Ideal.mem_span_singleton] at h2 h3
    by_cases h : e1 ∈ P
    · right
      have h0 : Ideal.Quotient.mk (compI P) e1 = 0 :=
        Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.subset_span ⟨he1, h⟩)
      obtain ⟨c, hc'⟩ := h3
      refine ⟨Ideal.Quotient.mk (compI P) c, ?_⟩
      rw [← hff, ← map_mul, ← hc', map_mul, map_sub, h0, map_one, sub_zero, one_mul]
    · left
      have h0 : Ideal.Quotient.mk (compI P) (1 - e1) = 0 :=
        Ideal.Quotient.eq_zero_iff_mem.2 (one_sub_mem_compI hP he1 h)
      have h1' : Ideal.Quotient.mk (compI P) e1 = 1 := by
        rw [map_sub, map_one] at h0
        exact (sub_eq_zero.1 h0).symm
      obtain ⟨c, hc'⟩ := h2
      refine ⟨Ideal.Quotient.mk (compI P) c, ?_⟩
      rw [← hff, ← map_mul, ← hc', map_mul, h1', one_mul]
  · refine mem_nonZeroDivisors_iff_right.2 fun x hx => ?_
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    have h1 : x * ϖ ∈ compI P := Ideal.Quotient.eq_zero_iff_mem.1 (by rwa [map_mul])
    obtain ⟨e, he, heP, hez⟩ := (GlobalTheory.CompanionTheory.CompIdeal.mem_compI_iff P hP _).1 h1
    have h2 : e * x = 0 :=
      (mul_right_mem_nonZeroDivisors_eq_zero_iff hϖ).1 (by rw [mul_assoc]; exact hez)
    exact Ideal.Quotient.eq_zero_iff_mem.2 ((GlobalTheory.CompanionTheory.CompIdeal.mem_compI_iff P hP x).2 ⟨e, he, heP, h2⟩)

end GlobalTheory.CompanionTheory.CompDich
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalizationDichotomy =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalizationPreservesClosedness =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalizationPreservesClosedness", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.LocAic

theorem mem_of_compare {A : Type} [CommRing A] {e f : A}
    (h1 : e * (1 - f) ∈ Ideal.span {f}) (h2 : (1 - e) * f ∈ Ideal.span {1 - f}) :
    e ∈ Ideal.span {f} ∧ 1 - e ∈ Ideal.span {1 - f} := by
  constructor
  · have hsplit : e = e * (1 - f) + e * f := by ring
    rw [hsplit]
    exact Ideal.add_mem _ h1 (Ideal.mul_mem_left _ e (Ideal.mem_span_singleton_self f))
  · have hsplit : 1 - e = (1 - e) * f + (1 - e) * (1 - f) := by ring
    rw [hsplit]
    exact Ideal.add_mem _ h2 (Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _))

theorem local_of_val {S : Type} [CommRing S] (π : S) (hV : Val π) (f : S) :
    ∃ e : S, IsIdempotentElem e ∧ e ∈ Ideal.span {f} ∧ 1 - e ∈ Ideal.span {1 - f} := by
  have hV' : ∀ f g : S, (∃ N : ℕ, π ^ N ∈ Ideal.span {f, g}) →
      ∃ e, IsIdempotentElem e ∧ e * f ∈ Ideal.span {g} ∧ (1 - e) * g ∈ Ideal.span {f} := hV
  obtain ⟨e, he, h1, h2⟩ := hV' f (1 - f) ⟨0, by
    rw [pow_zero, Ideal.mem_span_pair]
    exact ⟨1, 1, by ring⟩⟩
  refine ⟨1 - e, he.one_sub, mem_of_compare h2 ?_⟩
  rw [sub_sub_cancel]
  exact h1

theorem local_away_of_val {S : Type} [CommRing S] (π : S) (hV : Val π) (f : Localization.Away π) :
    ∃ e : Localization.Away π, IsIdempotentElem e ∧ e ∈ Ideal.span {f} ∧ 1 - e ∈ Ideal.span {1 - f} := by
  have hV' : ∀ f g : S, (∃ N : ℕ, π ^ N ∈ Ideal.span {f, g}) →
      ∃ e, IsIdempotentElem e ∧ e * f ∈ Ideal.span {g} ∧ (1 - e) * g ∈ Ideal.span {f} := hV
  obtain ⟨⟨a, s⟩, hf⟩ := IsLocalization.surj (Submonoid.powers π) f
  obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff _ _).1 s.2
  have hu : IsUnit (algebraMap S (Localization.Away π) (s : S)) :=
    IsLocalization.map_units (Localization.Away π) s
  have hA : algebraMap S (Localization.Away π) a = f * algebraMap S (Localization.Away π) (s : S) := hf.symm
  have hB : algebraMap S (Localization.Away π) ((s : S) - a) =
      (1 - f) * algebraMap S (Localization.Away π) (s : S) := by
    rw [map_sub, hA]
    ring
  obtain ⟨e, he, h1, h2⟩ := hV' a ((s : S) - a) ⟨n, by
    rw [hn, Ideal.mem_span_pair]
    exact ⟨1, 1, by ring⟩⟩
  have d1 : (1 - f) ∣ algebraMap S (Localization.Away π) e * f := by
    have hd := map_dvd (algebraMap S (Localization.Away π)) (Ideal.mem_span_singleton.1 h1)
    rw [hB, map_mul, hA, ← mul_assoc] at hd
    exact hu.dvd_mul_right.1 (dvd_trans (dvd_mul_right _ _) hd)
  have d2 : f ∣ (1 - algebraMap S (Localization.Away π) e) * (1 - f) := by
    have hd := map_dvd (algebraMap S (Localization.Away π)) (Ideal.mem_span_singleton.1 h2)
    rw [map_mul, hB, map_sub, map_one, hA, ← mul_assoc] at hd
    exact hu.dvd_mul_right.1 (dvd_trans (dvd_mul_right _ _) hd)
  have hē : IsIdempotentElem (algebraMap S (Localization.Away π) e) := by
    rw [IsIdempotentElem, ← map_mul, he.eq]
  refine ⟨1 - algebraMap S (Localization.Away π) e, hē.one_sub,
    mem_of_compare (Ideal.mem_span_singleton.2 d2) ?_⟩
  rw [sub_sub_cancel]
  exact Ideal.mem_span_singleton.2 d1


open Polynomial in
theorem aic_away {S : Type} [CommRing S] (π : S) (hA : Aic (S := S)) :
    Aic (S := Localization.Away π) := by
  have hA' : ∀ P : Polynomial S, P.Monic → 0 < P.natDegree → ∃ x, P.IsRoot x := hA
  unfold Aic
  intro P hP hdeg
  have hlift := IsLocalization.scaleRoots_commonDenom_mem_lifts (M := Submonoid.powers π)
    (Rₘ := Localization.Away π) P (by rw [hP.leadingCoeff]; exact ⟨1, map_one _⟩)
  obtain ⟨q, hq, hqdeg, hqm⟩ :=
    Polynomial.lifts_and_natDegree_eq_and_monic hlift ((Polynomial.monic_scaleRoots_iff _).2 hP)
  obtain ⟨y, hy⟩ := hA' q hqm (by rw [hqdeg, Polynomial.natDegree_scaleRoots]; exact hdeg)
  have hs : IsUnit (algebraMap S (Localization.Away π)
      (IsLocalization.commonDenom (Submonoid.powers π) P.support P.coeff : S)) :=
    IsLocalization.map_units (Localization.Away π) _
  refine ⟨↑hs.unit⁻¹ * algebraMap S (Localization.Away π) y, ?_⟩
  have h1 := Polynomial.scaleRoots_eval₂_mul (p := P) (RingHom.id (Localization.Away π))
    (↑hs.unit⁻¹ * algebraMap S (Localization.Away π) y)
    (algebraMap S (Localization.Away π) (IsLocalization.commonDenom (Submonoid.powers π) P.support P.coeff : S))
  simp only [RingHom.id_apply] at h1
  rw [← mul_assoc, hs.mul_val_inv, one_mul] at h1
  have h3 : Polynomial.eval₂ (RingHom.id _) (algebraMap S (Localization.Away π) y)
      (P.scaleRoots (algebraMap S (Localization.Away π)
        (IsLocalization.commonDenom (Submonoid.powers π) P.support P.coeff : S))) = 0 := by
    rw [← hq, Polynomial.eval₂_map, RingHom.id_comp, Polynomial.eval₂_hom]
    rw [show q.eval y = 0 from hy, map_zero]
  rw [h3] at h1
  exact (hs.pow _).mul_right_eq_zero.1 h1.symm

theorem main : ∀ {S : Type} [CommRing S] (ϖ : S),
    (Val ϖ → Loc (S := S) ∧ Loc (S := Localization.Away ϖ)) ∧
      (Aic (S := S) → Aic (S := Localization.Away ϖ)) := by
  intro S _ ϖ
  refine ⟨fun hV => ⟨?_, ?_⟩, fun hA => aic_away ϖ hA⟩
  · unfold Loc
    exact fun f => local_of_val ϖ hV f
  · unfold Loc
    exact fun f => local_away_of_val ϖ hV f

end GlobalTheory.CompanionTheory.LocAic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalizationPreservesClosedness =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationLocalToGlobal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationLocalToGlobal", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Mathlib.RingTheory.Ideal.Maximal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalInduction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemIdempotentComplementIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.NewtonStep

variable {S : Type} [CommRing S]

theorem mul_eval_eq (Q : Polynomial S) {e z w : S} (h : e * (z - w) = 0) :
    e * Q.eval z = e * Q.eval w := by
  obtain ⟨c, hc⟩ := Polynomial.sub_dvd_eval_sub z w Q
  linear_combination e * hc + c * h

theorem mul_pow_eq (d : ℕ) {e z w : S} (h : e * (z - w) = 0) :
    e * z ^ d = e * w ^ d := by
  obtain ⟨c, hc⟩ := sub_dvd_pow_sub_pow z w d
  linear_combination e * hc + c * h

theorem step_of_forall_maximal (ϖ : S)
    (H : ∀ m : Ideal S, m.IsMaximal → Step (Ideal.Quotient.mk (compI m) ϖ)) : Step ϖ := by
  intro Q n hQ hd h0
  have key := _root_.GlobalTheory.CompanionTheory.Idem.glue_idempotent_property (S := S)
    (fun e => ∃ z, ϖ ^ (n + 1) ∣ e * Q.eval z ∧ ϖ ^ n ∣ e * z ^ Q.natDegree) ?_ ?_ ?_ ?_
  · obtain ⟨z, h1, h2⟩ := key
    exact ⟨z, by simpa using h1, by simpa using h2⟩
  · exact ⟨0, by simp, by simp⟩
  · rintro e e' _ _ ⟨z, h1, h2⟩
    refine ⟨z, ?_, ?_⟩
    · rw [mul_right_comm]; exact Dvd.dvd.mul_right h1 e'
    · rw [mul_right_comm]; exact Dvd.dvd.mul_right h2 e'
  · rintro e e' he he' hee ⟨z1, a1, b1⟩ ⟨z2, a2, b2⟩
    have he1 : e * e = e := he
    have he2 : e' * e' = e' := he'
    have hz1 : e * (e * z1 + e' * z2 - z1) = 0 := by
      linear_combination z1 * he1 + z2 * hee
    have hz2 : e' * (e * z1 + e' * z2 - z2) = 0 := by
      linear_combination z1 * hee + z2 * he2
    refine ⟨e * z1 + e' * z2, ?_, ?_⟩
    · rw [add_mul, mul_eval_eq Q hz1, mul_eval_eq Q hz2]
      exact dvd_add a1 a2
    · rw [add_mul, mul_pow_eq _ hz1, mul_pow_eq _ hz2]
      exact dvd_add b1 b2
  · intro m hm
    have hle : compI m ≤ m := Ideal.span_le.2 (fun e he => he.2)
    have hne : compI m ≠ ⊤ := fun h => hm.ne_top (top_le_iff.1 (h ▸ hle))
    have : Nontrivial (S ⧸ compI m) := Ideal.Quotient.nontrivial_iff.2 hne
    have hdeg : (Q.map (Ideal.Quotient.mk (compI m))).natDegree = Q.natDegree :=
      hQ.natDegree_map _
    have h0' : (Ideal.Quotient.mk (compI m) ϖ) ^ n ∣
        (Q.map (Ideal.Quotient.mk (compI m))).eval 0 := by
      rw [Polynomial.eval_zero_map, ← map_pow]
      exact map_dvd _ h0
    obtain ⟨z', h1, h2⟩ := H m hm (Q.map (Ideal.Quotient.mk (compI m))) n
      (hQ.map _) (hdeg ▸ hd) h0'
    obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective z'
    obtain ⟨a', ha⟩ := h1
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective a'
    obtain ⟨b', hb⟩ := h2
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective b'
    rw [hdeg] at hb
    rw [Polynomial.eval_map, Polynomial.eval₂_at_apply, ← map_pow, ← map_mul] at ha
    rw [← map_pow, ← map_pow, ← map_mul] at hb
    obtain ⟨e1, i1, n1, E1⟩ := (_root_.GlobalTheory.CompanionTheory.CompIdeal.mem_compI_iff m hm.isPrime _).1 (Ideal.Quotient.eq.1 ha)
    obtain ⟨e2, i2, n2, E2⟩ := (_root_.GlobalTheory.CompanionTheory.CompIdeal.mem_compI_iff m hm.isPrime _).1 (Ideal.Quotient.eq.1 hb)
    have i1' : e1 * e1 = e1 := i1
    have i2' : e2 * e2 = e2 := i2
    refine ⟨e1 * e2, ?_, ?_, z, ⟨e1 * e2 * a, ?_⟩, ⟨e1 * e2 * b, ?_⟩⟩
    · change e1 * e2 * (e1 * e2) = e1 * e2
      linear_combination (e2 * e2) * i1' + e1 * i2'
    · intro h
      exact (hm.isPrime.mem_or_mem h).elim n1 n2
    · linear_combination e2 * E1
    · linear_combination e1 * E2

end GlobalTheory.CompanionTheory.NewtonStep
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationLocalToGlobal =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationLocalToGlobalStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationLocalToGlobalStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationLocalToGlobal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationLocalToGlobalStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PowerDivisibilityRootExtraction =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PowerDivisibilityRootExtraction", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.ValPowDvd

theorem dvd_of_pow_mul_dvd_pow : ∀ {S : Type} [CommRing S] (ϖ : S), ϖ ∈ nonZeroDivisors S → Val ϖ →
    ∀ (z : S) (m d : ℕ), 0 < d → ϖ ^ (m * d) ∣ z ^ d → ϖ ^ m ∣ z := by
  intro S _ ϖ hϖ hV z m d hd hdiv
  obtain ⟨d', rfl⟩ : ∃ d', d = d' + 1 := ⟨d - 1, by omega⟩
  obtain ⟨w, hw⟩ := hdiv
  obtain ⟨e, he, h1, h2⟩ := hV (ϖ ^ m) z ⟨m, Ideal.subset_span (Set.mem_insert _ _)⟩
  obtain ⟨c', hc'⟩ := Ideal.mem_span_singleton'.mp h1
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.mp h2
  have h3 : (e * ϖ ^ m) ^ (d' + 1) = (c' * z) ^ (d' + 1) := by rw [hc']
  rw [mul_pow, mul_pow, hw, he.pow_succ_eq d', ← pow_mul] at h3
  have key : (e - w * c' ^ (d' + 1)) * ϖ ^ (m * (d' + 1)) = 0 := by linear_combination h3
  have he' : e = w * c' ^ (d' + 1) :=
    sub_eq_zero.mp ((mem_nonZeroDivisors_iff.mp (pow_mem hϖ (m * (d' + 1)))).2 _ key)
  have hee : e * e = e := he.eq
  exact ⟨e * w * c' ^ d' + c, by
    linear_combination (-1 : S) * hc + (-z) * hee + (z * e) * he' + (e * w * c' ^ d') * hc' +
      (w * c' ^ d' * ϖ ^ m) * hee⟩

end GlobalTheory.CompanionTheory.ValPowDvd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PowerDivisibilityRootExtraction =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SectionOrthogonalIdempotentSum =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SectionOrthogonalIdempotentSum", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.AlgebraicGeometry.Sites.Fpqc\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R
open CategoryTheory.Limits

namespace GlobalTheory.CompanionTheory.SecAdd

variable {S : Type} [CommRing S]

theorem away_self_eq_one {e : S} (he : IsIdempotentElem e) :
    algebraMap S (Localization.Away e) e = 1 := by
  have hu : IsUnit (algebraMap S (Localization.Away e) e) := IsLocalization.Away.algebraMap_isUnit e
  have h : algebraMap S (Localization.Away e) e * algebraMap S (Localization.Away e) e
      = algebraMap S (Localization.Away e) e * 1 := by
    rw [← map_mul, he.eq, mul_one]
  exact hu.mul_left_cancel h

theorem away_orth_eq_zero {e x : S} (he : IsIdempotentElem e) (h : e * x = 0) :
    algebraMap S (Localization.Away e) x = 0 := by
  have := congrArg (algebraMap S (Localization.Away e)) h
  rwa [map_mul, away_self_eq_one he, one_mul, map_zero] at this

theorem away_surj {e : S} (he : IsIdempotentElem e) :
    Function.Surjective (algebraMap S (Localization.Away e)) := by
  intro b
  obtain ⟨⟨x, s⟩, hx⟩ := IsLocalization.surj (Submonoid.powers e) b
  obtain ⟨n, hn⟩ := s.2
  refine ⟨x, ?_⟩
  have : algebraMap S (Localization.Away e) (s : S) = 1 := by
    rw [← hn, map_pow, away_self_eq_one he, one_pow]
  simp only [this, mul_one] at hx
  exact hx.symm

theorem away_ker {e x : S} (he : IsIdempotentElem e)
    (h : algebraMap S (Localization.Away e) x = 0) : e * x = 0 := by
  obtain ⟨⟨_, n, rfl⟩, hc⟩ := (IsLocalization.map_eq_zero_iff (Submonoid.powers e) _ x).1 h
  rcases n with _ | n
  · simp at hc
    simp [hc]
  · have : e ^ (n + 1) = e := he.pow_succ_eq n
    simpa [this] using hc

theorem isIdempotentElem_add {e e' : S} (he : IsIdempotentElem e) (he' : IsIdempotentElem e')
    (h : e * e' = 0) : IsIdempotentElem (e + e') := by
  have h' : e' * e = 0 := by rw [mul_comm, h]
  unfold IsIdempotentElem
  rw [add_mul, mul_add, mul_add, h, h', he.eq, he'.eq, add_zero, zero_add]

theorem isLocalization_prod {e e' : S} (he : IsIdempotentElem e) (he' : IsIdempotentElem e')
    (h : e * e' = 0) :
    IsLocalization.Away (e + e') (Localization.Away e × Localization.Away e') := by
  have h' : e' * e = 0 := by rw [mul_comm, h]
  have key : ∀ z : S, algebraMap S (Localization.Away e × Localization.Away e') z = 0 ↔
      (e + e') * z = 0 := by
    intro z
    constructor
    · intro hz
      have h1 : algebraMap S (Localization.Away e) z = 0 := congrArg Prod.fst hz
      have h2 : algebraMap S (Localization.Away e') z = 0 := congrArg Prod.snd hz
      rw [add_mul, away_ker he h1, away_ker he' h2, add_zero]
    · intro hz
      have h1 : e * z = 0 := by
        have := congrArg (e * ·) hz
        simp only [mul_zero] at this
        rw [← this, ← mul_assoc, mul_add, he.eq, h, add_zero]
      have h2 : e' * z = 0 := by
        have := congrArg (e' * ·) hz
        simp only [mul_zero] at this
        rw [← this, ← mul_assoc, mul_add, he'.eq, h', zero_add]
      exact Prod.ext (away_orth_eq_zero he h1) (away_orth_eq_zero he' h2)
  refine IsLocalization.away_of_isIdempotentElem_of_mul (isIdempotentElem_add he he' h) ?_ ?_
  · intro x y
    rw [← sub_eq_zero, ← map_sub, key, mul_sub, sub_eq_zero]
  · rintro ⟨b, c⟩
    obtain ⟨x, rfl⟩ := away_surj he b
    obtain ⟨y, rfl⟩ := away_surj he' c
    refine ⟨e * x + e' * y, Prod.ext ?_ ?_⟩
    · change algebraMap S (Localization.Away e) (e * x + e' * y) = _
      have : algebraMap S (Localization.Away e) e' = 0 := away_orth_eq_zero he h
      rw [map_add (f := _), map_mul, map_mul, away_self_eq_one he, this, one_mul, zero_mul, add_zero]
    · change algebraMap S (Localization.Away e') (e * x + e' * y) = _
      have : algebraMap S (Localization.Away e') e = 0 := away_orth_eq_zero he' h'
      rw [map_add (f := _), map_mul, map_mul, away_self_eq_one he', this, one_mul, zero_mul, zero_add]

theorem secOn_add : ∀ {S : Type} [CommRing S] (Y : Scheme.{0})
    (f : Y ⟶ Spec (CommRingCat.of S)) (e e' : S), IsIdempotentElem e → IsIdempotentElem e' →
    e * e' = 0 → SecOn f e → SecOn f e' → SecOn f (e + e') := by
  intro S _ Y f e e' he he' h ⟨s, hs⟩ ⟨s', hs'⟩
  haveI := isLocalization_prod he he' h
  let B := Localization.Away e
  let C := Localization.Away e'
  let A := Localization.Away (e + e')
  let φ : (B × C) ≃ₐ[S] A :=
    IsLocalization.algEquiv (Submonoid.powers (e + e')) (B × C) A
  let t : Spec (CommRingCat.of (B × C)) ⟶ Y := inv (coprodSpec B C) ≫ coprod.desc s s'
  have ht : t ≫ f = Spec.map (CommRingCat.ofHom (algebraMap S (B × C))) := by
    rw [← cancel_epi (coprodSpec B C)]
    simp only [t, Category.assoc, IsIso.hom_inv_id_assoc]
    apply coprod.hom_ext
    · rw [coprod.inl_desc_assoc, hs, coprodSpec_inl_assoc, ← Spec.map_comp]
      rfl
    · rw [coprod.inr_desc_assoc, hs', coprodSpec_inr_assoc, ← Spec.map_comp]
      rfl
  refine ⟨Spec.map (CommRingCat.ofHom (φ : B × C →+* A)) ≫ t, ?_⟩
  rw [Category.assoc, ht, ← Spec.map_comp]
  congr 1
  ext x
  exact φ.commutes x

end GlobalTheory.CompanionTheory.SecAdd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SectionOrthogonalIdempotentSum =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SectionOverIdempotentProperties =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SectionOverIdempotentProperties", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.SecRules

theorem secOn_zero {S : Type} [CommRing S] (Y : Scheme.{0}) (f : Y ⟶ Spec (CommRingCat.of S)) :
    SecOn f 0 := by
  haveI : Subsingleton (Localization.Away (0 : S)) :=
    IsLocalization.subsingleton (M := Submonoid.powers (0 : S)) (Submonoid.mem_powers 0)
  haveI : IsEmpty (Spec (CommRingCat.of (Localization.Away (0 : S)))) :=
    inferInstanceAs (IsEmpty (PrimeSpectrum (Localization.Away (0 : S))))
  exact ⟨isInitialOfIsEmpty.to Y, isInitialOfIsEmpty.hom_ext _ _⟩

theorem secOn_mul {S : Type} [CommRing S] {Y : Scheme.{0}} {f : Y ⟶ Spec (CommRingCat.of S)}
    (e e' : S) (h : SecOn f e) : SecOn f (e * e') := by
  obtain ⟨s, hs⟩ := h
  refine ⟨Spec.map (CommRingCat.ofHom (IsLocalization.Away.awayToAwayRight
    (S := Localization.Away e) (P := Localization.Away (e * e')) e e')) ≫ s, ?_⟩
  rw [Category.assoc, hs, ← Spec.map_comp]
  congr 1
  ext a
  simp only [CommRingCat.hom_ofHom]
  exact IsLocalization.Away.awayToAwayRight_eq e e' a

theorem section_of_secOn_one {S : Type} [CommRing S] {Y : Scheme.{0}}
    {f : Y ⟶ Spec (CommRingCat.of S)} (h : SecOn f 1) :
    ∃ s : Spec (CommRingCat.of S) ⟶ Y, s ≫ f = 𝟙 _ := by
  obtain ⟨s, hs⟩ := h
  let eqv := IsLocalization.atUnit S (Localization.Away (1 : S)) 1 isUnit_one
  refine ⟨Spec.map (CommRingCat.ofHom (eqv.symm : Localization.Away (1 : S) →+* S)) ≫ s, ?_⟩
  rw [Category.assoc, hs, ← Spec.map_comp]
  have hid : CommRingCat.ofHom (Algebra.algebraMap S (Localization.Away (1 : S))) ≫
      CommRingCat.ofHom (eqv.symm : Localization.Away (1 : S) →+* S) = 𝟙 _ := by
    ext a
    simp only
    exact eqv.symm.commutes a
  rw [hid, Spec.map_id]

theorem main : ∀ {S : Type} [CommRing S] (Y : Scheme.{0}) (f : Y ⟶ Spec (CommRingCat.of S)),
    SecOn f 0 ∧ (∀ e e' : S, SecOn f e → SecOn f (e * e')) ∧
      (SecOn f 1 → ∃ s : Spec (CommRingCat.of S) ⟶ Y, s ≫ f = 𝟙 _) := by
  intro S _ Y f
  exact ⟨secOn_zero Y f, fun e e' h => secOn_mul e e' h, section_of_secOn_one⟩

end GlobalTheory.CompanionTheory.SecRules
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SectionOverIdempotentProperties =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationOfLocalDichotomy =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationOfLocalDichotomy", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalInduction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemIdempotentComplementIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.Idem

theorem val_of_dich : ∀ {S : Type} [CommRing S] (ϖ : S),
    (∀ m : Ideal S, m.IsMaximal → Dich (Ideal.Quotient.mk (compI m) ϖ)) → Val ϖ := by
  intro S _ ϖ hD f g hfg
  obtain ⟨N, hN⟩ := hfg
  let Q : S → Prop := fun e => ∃ d, IsIdempotentElem d ∧ d * e = d ∧ d * f ∈ Ideal.span {g} ∧
    (e - d) * g ∈ Ideal.span {f}
  have hQ1 : Q 1 := by
    apply GlobalTheory.CompanionTheory.Idem.glue_idempotent_property Q
    · exact ⟨0, IsIdempotentElem.zero, by simp, by simp, by simp⟩
    · rintro e e' he he' ⟨d, hd, hde, hdf, hdg⟩
      refine ⟨d * e', hd.mul he', ?_, ?_, ?_⟩
      · calc d * e' * (e * e') = (d * e) * (e' * e') := by ring
          _ = d * e' := by rw [hde, he'.eq]
      · rw [mul_comm d e', mul_assoc]
        exact Ideal.mul_mem_left _ _ hdf
      · have h3 : (e * e' - d * e') * g = e' * ((e - d) * g) := by ring
        rw [h3]
        exact Ideal.mul_mem_left _ _ hdg
    · rintro e e' he he' hee ⟨d, hd, hde, hdf, hdg⟩ ⟨d', hd', hde', hdf', hdg'⟩
      have hdd : d * d' = 0 := by
        calc d * d' = (d * e) * (d' * e') := by rw [hde, hde']
          _ = (d * d') * (e * e') := by ring
          _ = 0 := by rw [hee, mul_zero]
      have h1 : d * e' = 0 := by
        calc d * e' = (d * e) * e' := by rw [hde]
          _ = d * (e * e') := by ring
          _ = 0 := by rw [hee, mul_zero]
      have h2 : d' * e = 0 := by
        calc d' * e = (d' * e') * e := by rw [hde']
          _ = d' * (e * e') := by ring
          _ = 0 := by rw [hee, mul_zero]
      refine ⟨d + d', ?_, ?_, ?_, ?_⟩
      · show (d + d') * (d + d') = d + d'
        calc (d + d') * (d + d') = d * d + d' * d' + 2 * (d * d') := by ring
          _ = d + d' := by rw [hd.eq, hd'.eq, hdd, mul_zero, add_zero]
      · calc (d + d') * (e + e') = d * e + d * e' + (d' * e + d' * e') := by ring
          _ = d + d' := by rw [hde, hde', h1, h2]; ring
      · rw [add_mul]
        exact Ideal.add_mem _ hdf hdf'
      · have h3 : (e + e' - (d + d')) * g = (e - d) * g + (e' - d') * g := by ring
        rw [h3]
        exact Ideal.add_mem _ hdg hdg'
    · intro m hm
      have hprime := hm.isPrime
      have hspan : (Ideal.Quotient.mk (CrystallineSemistableComparison.R.compI m) ϖ) ^ N ∈
          Ideal.span {Ideal.Quotient.mk (CrystallineSemistableComparison.R.compI m) f, Ideal.Quotient.mk (CrystallineSemistableComparison.R.compI m) g} := by
        rw [← map_pow]
        have h4 := Ideal.mem_map_of_mem (Ideal.Quotient.mk (CrystallineSemistableComparison.R.compI m)) hN
        rwa [Ideal.map_span, Set.image_pair] at h4
      rcases hD m hm _ _ ⟨N, hspan⟩ with hgf | hfg'
      · obtain ⟨c, hc⟩ := hgf
        obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective c
        have hmem : f - g * a ∈ CrystallineSemistableComparison.R.compI m := by
          rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_mul, hc, sub_self]
        obtain ⟨e, he, hem, hex⟩ := (GlobalTheory.CompanionTheory.CompIdeal.mem_compI_iff m hprime _).1 hmem
        have hef : e * f = e * (g * a) := by
          rw [mul_sub] at hex
          exact sub_eq_zero.1 hex
        refine ⟨e, he, hem, e, he, he.eq, ?_, by simp⟩
        rw [hef]
        exact Ideal.mul_mem_left _ _ (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self g))
      · obtain ⟨c, hc⟩ := hfg'
        obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective c
        have hmem : g - f * a ∈ CrystallineSemistableComparison.R.compI m := by
          rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_mul, hc, sub_self]
        obtain ⟨e, he, hem, hex⟩ := (GlobalTheory.CompanionTheory.CompIdeal.mem_compI_iff m hprime _).1 hmem
        have heg : e * g = e * (f * a) := by
          rw [mul_sub] at hex
          exact sub_eq_zero.1 hex
        refine ⟨e, he, hem, 0, IsIdempotentElem.zero, by simp, by simp, ?_⟩
        rw [sub_zero, heg]
        exact Ideal.mul_mem_left _ _ (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self f))
  obtain ⟨d, hd, -, hdf, hdg⟩ := hQ1
  exact ⟨d, hd, hdf, hdg⟩

end GlobalTheory.CompanionTheory.Idem
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationOfLocalDichotomy =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationPowerIff =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationPowerIff", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

namespace GlobalTheory.CompanionTheory.PowComp

theorem smodEq_span_iff {S : Type} [CommRing S] (a x y : S) (n : ℕ) :
    x ≡ y [SMOD ((Ideal.span {a}) ^ n • ⊤ : Submodule S S)] ↔ a ^ n ∣ x - y := by
  rw [SModEq.sub_mem, Ideal.smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton]

theorem val_pow_iff {S : Type} [CommRing S] (ϖ : S) (k : ℕ) (hk : k ≠ 0) : Val (ϖ ^ k) ↔ Val ϖ := by
  have hiff : ∀ f g : S, (∃ N, (ϖ ^ k) ^ N ∈ Ideal.span {f, g}) ↔ (∃ N, ϖ ^ N ∈ Ideal.span {f, g}) := by
    intro f g
    constructor
    · rintro ⟨N, hN⟩
      exact ⟨k * N, by rwa [pow_mul]⟩
    · rintro ⟨N, hN⟩
      refine ⟨N, ?_⟩
      rw [← pow_mul]
      have hle : N ≤ k * N := Nat.le_mul_of_pos_left N (Nat.pos_of_ne_zero hk)
      rw [← Nat.add_sub_cancel' hle, pow_add]
      exact Ideal.mul_mem_right _ _ hN
  unfold Val
  constructor
  · intro h f g hfg
    exact h f g ((hiff f g).mpr hfg)
  · intro h f g hfg
    exact h f g ((hiff f g).mp hfg)

theorem isAdicComplete_of_pow {S : Type} [CommRing S] (ϖ : S) (k : ℕ) (hk : k ≠ 0)
    (h : IsAdicComplete (Ideal.span {ϖ ^ k}) S) : IsAdicComplete (Ideal.span {ϖ}) S := by
  have hH : IsHausdorff (Ideal.span {ϖ ^ k}) S := h.toIsHausdorff
  have hP : IsPrecomplete (Ideal.span {ϖ ^ k}) S := h.toIsPrecomplete
  have hkpos : 0 < k := Nat.pos_of_ne_zero hk
  have H1 : IsHausdorff (Ideal.span {ϖ}) S := by
    refine ⟨fun x hx => hH.haus' x (fun n => ?_)⟩
    have := hx (k * n)
    rw [smodEq_span_iff] at this ⊢
    rwa [← pow_mul]
  have H2 : IsPrecomplete (Ideal.span {ϖ}) S := by
    refine ⟨fun f hf => ?_⟩
    obtain ⟨L, hL⟩ := hP.prec' (fun n => f (k * n)) (fun {m n} hmn => by
      have := hf (Nat.mul_le_mul_left k hmn)
      rw [smodEq_span_iff] at this ⊢
      rwa [← pow_mul])
    refine ⟨L, fun n => ?_⟩
    have h1 := hf (Nat.le_mul_of_pos_left n hkpos)
    have h2 := hL n
    rw [smodEq_span_iff] at h1 h2 ⊢
    rw [← pow_mul] at h2
    have h3 : ϖ ^ n ∣ f (k * n) - L := (pow_dvd_pow ϖ (Nat.le_mul_of_pos_left n hkpos)).trans h2
    have := dvd_add h1 h3
    rwa [sub_add_sub_cancel] at this
  exact { toIsHausdorff := H1, toIsPrecomplete := H2 }

theorem val_pow : ∀ {S : Type} [CommRing S] (ϖ : S) (k : ℕ), k ≠ 0 →
    (Val (ϖ ^ k) ↔ Val ϖ) ∧ (IsAdicComplete (Ideal.span {ϖ ^ k}) S → IsAdicComplete (Ideal.span {ϖ}) S) := by
  intro S _ ϖ k hk
  exact ⟨val_pow_iff ϖ k hk, isAdicComplete_of_pow ϖ k hk⟩

end GlobalTheory.CompanionTheory.PowComp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationPowerIff =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ValuationSquareOfValuationMod =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ValuationSquareOfValuationMod", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.Splits\npublic import Mathlib.RingTheory.DividedPowers.DPMorphism\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AbsolutelyIntegrallyClosedOfNewton\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ComparableModSquareLocalization\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DichotomyOfComparableModSquare\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerMorphismCompatible\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerQuotientExists\npublic import Mathlib.RingTheory.Ideal.Maximal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalInduction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalizationDichotomy\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralLocalizationAwayInRing\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalizationPreservesClosedness\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationLocalToGlobalStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonApproximationOfDichotomy\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PowerDivisibilityRootExtraction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SectionOrthogonalIdempotentSum\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SectionOverIdempotentProperties\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SurjectivePreservesClosednessComparability\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationOfLocalDichotomy\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationPowerIff\npublic import Mathlib.RingTheory.Unramified.LocalStructure\npublic import Mathlib.RingTheory.Etale.StandardEtale\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NewtonPolygonSlopeExistence\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PolynomialRootsOfClosedQuotient\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry CrystallineSemistableComparison CrystallineSemistableComparison.R

theorem CrystallineSemistableComparison.RL.surj_pass : ∀ {S : Type} [CommRing S] {T : Type} [CommRing T] (φ : S →+* T), Function.Surjective φ → (Aic (S := S) → Aic (S := T)) ∧ (Val0 (S := S) → Val0 (S := T)) := _root_.GlobalTheory.CompanionTheory.SurjPass.absolutely_closed_comparable_surjective

theorem CrystallineSemistableComparison.RL.glue : ∀ {S : Type} [CommRing S] (Q : S → Prop), Q 0 → (∀ e e' : S, IsIdempotentElem e → IsIdempotentElem e' → Q e → Q (e * e')) → (∀ e e' : S, IsIdempotentElem e → IsIdempotentElem e' → e * e' = 0 → Q e → Q e' → Q (e + e')) → (∀ m : Ideal S, m.IsMaximal → ∃ e, IsIdempotentElem e ∧ e ∉ m ∧ Q e) → Q 1 := _root_.GlobalTheory.CompanionTheory.Idem.glue_idempotent_property

theorem CrystallineSemistableComparison.RL.dich_comp : ∀ {S : Type} [CommRing S] (ϖ : S) (P : Ideal S), P.IsPrime → (Val ϖ → Dich (Ideal.Quotient.mk (compI P) ϖ)) ∧ (ϖ ∈ nonZeroDivisors S → Ideal.Quotient.mk (compI P) ϖ ∈ nonZeroDivisors (S ⧸ compI P)) := _root_.GlobalTheory.CompanionTheory.CompDich.dich_comp

theorem CrystallineSemistableComparison.RL.val_of_dich : ∀ {S : Type} [CommRing S] (ϖ : S), (∀ m : Ideal S, m.IsMaximal → Dich (Ideal.Quotient.mk (compI m) ϖ)) → Val ϖ := _root_.GlobalTheory.CompanionTheory.Idem.val_of_dich

alias CrystallineSemistableComparison.RL.valuation_square_of_valuation_mod := _root_.GlobalTheory.CompanionTheory.CompMod.mem_span_or_mem_span

theorem CrystallineSemistableComparison.RL.dich_of_mod : ∀ {S : Type} [CommRing S] (ϖ : S), ϖ ∈ (⊥ : Ideal S).jacobson → (∀ f g : S, f ∈ Ideal.span {g, ϖ ^ 2} ∨ g ∈ Ideal.span {f, ϖ ^ 2}) → Dich ϖ := _root_.GlobalTheory.CompanionTheory.DichMod.dich_of_mod

open Polynomial in
theorem CrystallineSemistableComparison.RL.step_comp : ∀ {S : Type} [CommRing S] (ϖ : S), ϖ ∈ (⊥ : Ideal S).jacobson → ϖ ∈ nonZeroDivisors S → Dich ϖ → Aic (S := S ⧸ Ideal.span {ϖ ^ 2}) → Step ϖ := by
  apply GlobalTheory.CompanionTheory.NewtonStep.step_comp

alias CrystallineSemistableComparison.RL.step_glob := _root_.GlobalTheory.CompanionTheory.NewtonStep.step_of_forall_maximal

theorem CrystallineSemistableComparison.RL.pow_dvd : ∀ {S : Type} [CommRing S] (ϖ : S), ϖ ∈ nonZeroDivisors S → Val ϖ → ∀ (z : S) (m d : ℕ), 0 < d → ϖ ^ (m * d) ∣ z ^ d → ϖ ^ m ∣ z := _root_.GlobalTheory.CompanionTheory.ValPowDvd.dvd_of_pow_mul_dvd_pow

theorem CrystallineSemistableComparison.RL.aic_limit : ∀ {S : Type} [CommRing S] (ϖ : S) [IsAdicComplete (Ideal.span {ϖ}) S], Step ϖ → (∀ (z : S) (m d : ℕ), 0 < d → ϖ ^ (m * d) ∣ z ^ d → ϖ ^ m ∣ z) → Aic (S := S) := _root_.GlobalTheory.CompanionTheory.AicLimit.aic_of_step

theorem CrystallineSemistableComparison.RL.int_closed : ∀ {S : Type} [CommRing S] (ϖ : S), ϖ ∈ nonZeroDivisors S → Val ϖ → ∀ x : Localization.Away ϖ, IsIntegral S x → ∃ y : S, algebraMap S (Localization.Away ϖ) y = x := _root_.GlobalTheory.CompanionTheory.ValIntClosed.exists_eq_of_isIntegral

theorem CrystallineSemistableComparison.RL.loc_aic : ∀ {S : Type} [CommRing S] (ϖ : S), (Val ϖ → Loc (S := S) ∧ Loc (S := Localization.Away ϖ)) ∧ (Aic (S := S) → Aic (S := Localization.Away ϖ)) := by
  intro S _ ϖ
  have hloc := GlobalTheory.CompanionTheory.LocAic.main ϖ
  exact hloc

theorem CrystallineSemistableComparison.RL.val_pow : ∀ {S : Type} [CommRing S] (ϖ : S) (k : ℕ), k ≠ 0 → (Val (ϖ ^ k) ↔ Val ϖ) ∧ (IsAdicComplete (Ideal.span {ϖ ^ k}) S → IsAdicComplete (Ideal.span {ϖ}) S) := _root_.GlobalTheory.CompanionTheory.PowComp.val_pow

theorem CrystallineSemistableComparison.RL.split_pt : ∀ {S : Type} [CommRing S] , Aic (S := S) → Loc (S := S) → ∀ (Y : Scheme.{0}) (f : Y ⟶ Spec (CommRingCat.of S)), Etale f → Surjective f → ∀ m : Ideal S, m.IsMaximal → ∃ e : S, IsIdempotentElem e ∧ e ∉ m ∧ SecOn f e := by
  intro S _ hA hL Y f hE hS m hm
  let x : Spec (CommRingCat.of S) := ⟨m, hm.isPrime⟩
  obtain ⟨y, hy⟩ := hS.surj x
  obtain ⟨B, i, hi, z, hz⟩ := Y.exists_Spec_apply_eq y
  obtain ⟨φ, hφ⟩ := Spec.map_surjective (i ≫ f)
  have hEt : Etale (Spec.map φ) := by rw [hφ]; infer_instance
  have hφe : φ.hom.Etale := (HasRingHomProperty.Spec_iff (P := @Etale)).1 hEt
  let _ : Algebra S B := φ.hom.toAlgebra
  have : Algebra.Etale S B := RingHom.etale_algebraMap.1 hφe
  let Q : Ideal B := z.asIdeal
  have hQ : Q.IsPrime := z.2
  have hQm : Q.comap (algebraMap S B) = m := by
    have hx : (Spec.map φ) z = x := by rw [hφ, Scheme.Hom.comp_apply, hz, hy]
    exact congrArg PrimeSpectrum.asIdeal hx
  obtain ⟨g, hg, hstd⟩ := Algebra.IsEtaleAt.exists_isStandardEtale (R := S) Q
  let Bg := Localization.Away g
  let q := Q.map (algebraMap B Bg)
  have hdisj : Disjoint (Submonoid.powers g : Set B) (Q : Set B) := by
    rw [Set.disjoint_left]
    rintro _ ⟨n, rfl⟩ hn
    exact hg (hQ.mem_of_pow_mem n hn)
  have hq : q.IsPrime :=
    IsLocalization.isPrime_of_isPrime_disjoint (Submonoid.powers g) Bg Q hQ hdisj
  have hcomap : q.comap (algebraMap B Bg) = Q :=
    IsLocalization.under_map_of_isPrime_disjoint (Submonoid.powers g) Bg hQ hdisj
  have hqm : q.comap (algebraMap S Bg) = m := by
    rw [IsScalarTower.algebraMap_eq S B Bg, ← Ideal.comap_comap, hcomap, hQm]
  obtain ⟨P⟩ := Algebra.IsStandardEtale.nonempty_standardEtalePresentation (R := S) (S := Bg)
  have hroot_of_mem (F : Polynomial S) (hF : F.Monic) (hmem : Polynomial.aeval P.x F ∈ q) :
      ∃ b : S, F.IsRoot b ∧ P.x - algebraMap S Bg b ∈ q := by
    have : Nontrivial S := nontrivial_of_ne 0 1 fun h =>
      hm.ne_top ((Ideal.eq_top_iff_one m).2 (h ▸ m.zero_mem))
    induction hd : F.natDegree using Nat.strong_induction_on generalizing F with
    | ind n ih =>
      by_cases hn : n = 0
      · have h1 := Polynomial.eq_one_of_monic_natDegree_zero hF (hd.trans hn)
        rw [h1, map_one] at hmem
        exact (hq.ne_top ((Ideal.eq_top_iff_one q).2 hmem)).elim
      obtain ⟨b, hb⟩ := hA F hF (by omega)
      let G := F /ₘ (Polynomial.X - Polynomial.C b)
      have hFG : (Polynomial.X - Polynomial.C b) * G = F :=
        Polynomial.mul_divByMonic_eq_iff_isRoot.2 hb
      have hG : G.Monic := (Polynomial.Monic.of_mul_monic_left (Polynomial.monic_X_sub_C b))
        (hFG.symm ▸ hF)
      have hdeg := (Polynomial.monic_X_sub_C b).natDegree_mul hG
      rw [hFG, Polynomial.natDegree_X_sub_C, hd] at hdeg
      rw [← hFG, map_mul] at hmem
      rcases hq.mem_or_mem hmem with hbq | hGq
      · exact ⟨b, hb, by simpa using hbq⟩
      · obtain ⟨c, hc, hcq⟩ := ih G.natDegree (by omega) G hG hGq rfl
        exact ⟨c, by rw [← hFG, Polynomial.IsRoot, Polynomial.eval_mul, hc, mul_zero], hcq⟩
  obtain ⟨b, hb, hbq⟩ := hroot_of_mem P.f P.monic_f (P.hasMap.1.symm ▸ q.zero_mem)
  let c : S := Polynomial.eval b P.g
  have hcm : c ∉ m := by
    rw [← hqm]
    intro hcq
    have hdvd : P.x - algebraMap S Bg b ∣ Polynomial.aeval P.x P.g - algebraMap S Bg c := by
      have h := Polynomial.sub_dvd_eval_sub P.x (algebraMap S Bg b) (P.g.map (algebraMap S Bg))
      rwa [Polynomial.eval_map_algebraMap, Polynomial.eval_map_algebraMap,
        Polynomial.aeval_algebraMap_apply_eq_algebraMap_eval] at h
    have hgq : Polynomial.aeval P.x P.g ∈ q := by
      simpa using q.add_mem (Ideal.mem_of_dvd q hdvd hbq) (show algebraMap S Bg c ∈ q from hcq)
    exact hq.ne_top (Ideal.eq_top_of_isUnit_mem q hgq P.hasMap.2)
  obtain ⟨a, μ, hμ, haμ⟩ := hm.exists_inv hcm
  obtain ⟨e, he, hec, he1⟩ := hL (a * c)
  have h1ac : 1 - a * c = μ := by rw [← haμ]; ring
  have he1m : 1 - e ∈ m := by
    rw [h1ac] at he1
    exact (Ideal.span_singleton_le_iff_mem _).2 hμ he1
  have hem : e ∉ m := by
    intro hem
    have h1 : (1 : S) ∈ m := by simpa using m.add_mem hem he1m
    exact hm.ne_top ((Ideal.eq_top_iff_one m).2 h1)
  obtain ⟨r, hr⟩ := Ideal.mem_span_singleton'.1 hec
  have heu : IsUnit (algebraMap S (Localization.Away e) e) :=
    IsLocalization.Away.algebraMap_isUnit e
  have hcu : IsUnit (algebraMap S (Localization.Away e) c) := by
    have hmul : algebraMap S (Localization.Away e) e =
        algebraMap S (Localization.Away e) (r * a) * algebraMap S (Localization.Away e) c := by
      rw [← map_mul, ← hr]; ring_nf
    rw [hmul] at heu
    exact isUnit_of_mul_isUnit_right heu
  have hmap : P.P.HasMap (algebraMap S (Localization.Away e) b) := by
    refine ⟨?_, ?_⟩
    · rw [Polynomial.aeval_algebraMap_apply_eq_algebraMap_eval, hb.eq_zero, map_zero]
    · rw [Polynomial.aeval_algebraMap_apply_eq_algebraMap_eval]
      exact hcu
  let ψ := ((P.P.lift _ hmap).comp P.equivRing.toAlgHom).comp (IsScalarTower.toAlgHom S B Bg)
  refine ⟨e, he, hem, Spec.map (CommRingCat.ofHom ψ.toRingHom) ≫ i, ?_⟩
  rw [Category.assoc, ← hφ, ← Spec.map_comp]
  congr 1
  ext a
  exact ψ.commutes a

theorem CrystallineSemistableComparison.RL.sec_rules : ∀ {S : Type} [CommRing S] (Y : Scheme.{0}) (f : Y ⟶ Spec (CommRingCat.of S)), SecOn f 0 ∧ (∀ e e' : S, SecOn f e → SecOn f (e * e')) ∧ (SecOn f 1 → ∃ s : Spec (CommRingCat.of S) ⟶ Y, s ≫ f = 𝟙 _) := _root_.GlobalTheory.CompanionTheory.SecRules.main

theorem CrystallineSemistableComparison.RL.sec_add : ∀ {S : Type} [CommRing S] (Y : Scheme.{0}) (f : Y ⟶ Spec (CommRingCat.of S)) (e e' : S), IsIdempotentElem e → IsIdempotentElem e' → e * e' = 0 → SecOn f e → SecOn f e' → SecOn f (e + e') := _root_.GlobalTheory.CompanionTheory.SecAdd.secOn_add

alias CrystallineSemistableComparison.RL.pd_quot := _root_.GlobalTheory.CompanionTheory.PdTF.exists_dividedPowers_map_quotient

theorem CrystallineSemistableComparison.RL.pd_mor : ∀ {S : Type} [CommRing S] {S' E E' : Type} [CommRing S'] [CommRing E] [CommRing E'] (π : S →+* E) (π' : S' →+* E') (I : Ideal S) (I' : Ideal S') {J : Ideal E} {J' : Ideal E'} (δ : DividedPowers J) (δ' : DividedPowers J') (F₀ : S →+* S') (F : E →+* E'), Function.Surjective π → PdI I → IsPd π I δ → IsPd π' I' δ' → (∀ x ∈ I, F₀ x ∈ I') → (∀ x, F (π x) = π' (F₀ x)) → DividedPowers.IsDPMorphism δ δ' F := _root_.GlobalTheory.CompanionTheory.PdMor.isDPMorphism_of_isPd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ValuationSquareOfValuationMod =====
