module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Calculus.FDeriv.Defs
public import Mathlib.Analysis.Complex.Convex
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialSum
public import Mathlib.Analysis.Analytic.Basic
public import Mathlib.Analysis.Analytic.Uniqueness
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Congr
public import Mathlib.Analysis.Complex.CauchyIntegral
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeSeriesDifferentiableLeftStrip
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PeriodicWeightBounded
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeSeriesSummableRightHalfPlane
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.WeightSumAsFiniteDifferences
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet
import Formalism.SharpRestriction.GlobalSchurBounds.ShortIntervalPrimes
import Mathlib.Tactic.Linter.Style
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDifferenceSummable

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RealDifferenceConeBound, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeTilingBySignRegions, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeValuesNegativeIntegerRational, Development.AutomorphicSpectrum.Proofs.GlobalProofs.SummationDecompositionFiniteDifferences, Development.AutomorphicSpectrum.Proofs.GlobalProofs.TendstoTailInfiniteProductOne, Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuationAlt

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RealDifferenceConeBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.RealDifferenceConeBound", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Calculus.FDeriv.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Complex.Convex\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialSum\nimport Formalism.SharpRestriction.GlobalSchurBounds.ShortIntervalPrimes\npublic import Mathlib.Analysis.Analytic.Basic\npublic import Mathlib.Analysis.Analytic.Uniqueness\npublic import Mathlib.Analysis.Calculus.FDeriv.Basic\npublic import Mathlib.Analysis.Calculus.FDeriv.Congr\npublic import Mathlib.Analysis.Complex.CauchyIntegral\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.MainNotions.ShortIntervalPrimes GlobalTheory.RayZeta GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.Glue

theorem entire_of_halfPlane_continuations :
    ∀ (S : ℂ → ℂ) (G : ℕ → ℂ → ℂ), (∀ k, DifferentiableOn ℂ (G k) {s | -(k : ℝ) < s.re}) →
  (∀ k s, 1 < s.re → G k s = S s) → ∃ T : ℂ → ℂ, Differentiable ℂ T ∧ ∀ (k : ℕ) (s : ℂ), -(k : ℝ) < s.re → T s = G k s := by
  intro S G hG hS
  have hopen : ∀ r : ℝ, IsOpen {s : ℂ | r < s.re} := fun r =>
    isOpen_lt continuous_const Complex.continuous_re

  have hagree : ∀ j k : ℕ, j ≤ k → Set.EqOn (G j) (G k) {s : ℂ | -(j : ℝ) < s.re} := by
    intro j k hjk
    have hsub : {s : ℂ | -(j : ℝ) < s.re} ⊆ {s : ℂ | -(k : ℝ) < s.re} := by
      intro s hs
      have h1 : (j : ℝ) ≤ k := by exact_mod_cast hjk
      simp only [Set.mem_setOf_eq] at hs ⊢
      linarith
    have hfj : AnalyticOnNhd ℂ (G j) {s : ℂ | -(j : ℝ) < s.re} :=
      (hG j).analyticOnNhd (hopen _)
    have hfk : AnalyticOnNhd ℂ (G k) {s : ℂ | -(j : ℝ) < s.re} :=
      ((hG k).mono hsub).analyticOnNhd (hopen _)
    have hpre : IsPreconnected {s : ℂ | -(j : ℝ) < s.re} :=
      (convex_halfSpace_re_gt (-(j : ℝ))).isPreconnected
    have h2 : (2 : ℂ) ∈ {s : ℂ | -(j : ℝ) < s.re} := by
      have h0 : (0 : ℝ) ≤ j := Nat.cast_nonneg j
      simp only [Set.mem_setOf_eq, Complex.re_ofNat]
      linarith
    have hev : G j =ᶠ[nhds (2 : ℂ)] G k := by
      have hmem : {s : ℂ | (1 : ℝ) < s.re} ∈ nhds (2 : ℂ) :=
        (hopen 1).mem_nhds (by simp)
      filter_upwards [hmem] with s hs
      rw [hS j s hs, hS k s hs]
    exact hfj.eqOn_of_preconnected_of_eventuallyEq hfk hpre h2 hev

  have hidx : ∀ s : ℂ, -((⌈-s.re⌉₊ + 1 : ℕ) : ℝ) < s.re := by
    intro s
    have h1 : -s.re ≤ (⌈-s.re⌉₊ : ℝ) := Nat.le_ceil _
    push_cast
    linarith

  have hT : ∀ (k : ℕ) (s : ℂ), -(k : ℝ) < s.re → G (⌈-s.re⌉₊ + 1) s = G k s := by
    intro k s hs
    rcases le_total (⌈-s.re⌉₊ + 1) k with h | h
    · exact hagree _ _ h (hidx s)
    · exact (hagree _ _ h hs).symm
  refine ⟨fun s => G (⌈-s.re⌉₊ + 1) s, ?_, hT⟩
  intro s
  set k := ⌈-s.re⌉₊ + 1 with hk
  have hs : s ∈ {w : ℂ | -(k : ℝ) < w.re} := hidx s
  have hnh : {w : ℂ | -(k : ℝ) < w.re} ∈ nhds s := (hopen _).mem_nhds hs
  have hd : DifferentiableAt ℂ (G k) s := (hG k).differentiableAt hnh
  refine hd.congr_of_eventuallyEq ?_
  filter_upwards [hnh] with w hw
  exact hT k w hw

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.Glue
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.RealDifferenceConeBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeTilingBySignRegions =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeTilingBySignRegions", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.MainNotions.ShortIntervalPrimes GlobalTheory.RayZeta GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

theorem DL_coneTerm_neg_nat_rational :
    ∀ (ι : Type) [Fintype ι] (r : ℕ) (a : ι → Fin r → ℝ) (b : ι → ℝ) (p : ℕ), (∀ m : Fin r → ℕ, ∃ q : ℚ, ∏ j, (b j + ∑ i, a j i * (m i : ℝ)) ^ p = (q : ℝ)) →
  ∀ cs : List (Fin r), ∃ ρ : (Fin r → ℕ) → ℚ, ∀ m, DL cs (coneTerm a b (-(p : ℂ))) m = (ρ m : ℂ) := by
  intro ι _ r a b p h cs
  induction cs with
  | nil =>
    choose q hq using h
    refine ⟨q, fun m => ?_⟩
    show GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.coneTerm a b (-(p : ℂ)) m = _
    simp only [GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.coneTerm, neg_neg, Complex.cpow_natCast]
    rw [← Complex.ofReal_ratCast, ← hq m]
    simp only [Complex.ofReal_prod, Complex.ofReal_pow]
  | cons c cs ih =>
    obtain ⟨ρ, hρ⟩ := ih
    refine ⟨fun m => ρ (m + Pi.single c 1) - ρ m, fun m => ?_⟩
    simp only [GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.DL, List.foldr_cons, GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.fd] at hρ ⊢
    rw [hρ, hρ, Rat.cast_sub]

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeTilingBySignRegions =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeValuesNegativeIntegerRational =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeValuesNegativeIntegerRational", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.ShortIntervalPrimes GlobalTheory.RayZeta GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

def LineDeg {r : ℕ} (i : Fin r) (d : ℕ) (g : (Fin r → ℕ) → ℂ) : Prop :=
  ∀ m : Fin r → ℕ, ∃ q : Polynomial ℂ, q.degree < (d : WithBot ℕ) ∧
    ∀ t : ℕ, g (m + t • (Pi.single i 1 : Fin r → ℕ)) = q.eval (t : ℂ)

theorem degree_shift_sub_lt (q : Polynomial ℂ) (d : ℕ) (hq : q.degree < ((d + 1 : ℕ) : WithBot ℕ)) :
    (q.comp (Polynomial.X + 1) - q).degree < (d : WithBot ℕ) := by
  by_cases h0 : q.natDegree = 0
  · rw [Polynomial.eq_C_of_natDegree_eq_zero h0]
    simp
  · have hq0 : q ≠ 0 := fun h => h0 (by simp [h])
    have hX : (Polynomial.X + 1 : Polynomial ℂ).natDegree = 1 := Polynomial.natDegree_X_add_C 1
    have hnat : (q.comp (Polynomial.X + 1)).natDegree = q.natDegree := by
      rw [Polynomial.natDegree_comp, hX, mul_one]
    have hlc : (q.comp (Polynomial.X + 1)).leadingCoeff = q.leadingCoeff := by
      have hm : (Polynomial.X + 1 : Polynomial ℂ).Monic := Polynomial.monic_X_add_C 1
      rw [Polynomial.leadingCoeff_comp (by rw [hX]; exact one_ne_zero), hm.leadingCoeff, one_pow, mul_one]
    have hp0 : q.comp (Polynomial.X + 1) ≠ 0 := by
      intro h
      apply hq0
      rw [← Polynomial.leadingCoeff_eq_zero, ← hlc, h, Polynomial.leadingCoeff_zero]
    have hdeg : (q.comp (Polynomial.X + 1)).degree = q.degree := by
      rw [Polynomial.degree_eq_natDegree hp0, Polynomial.degree_eq_natDegree hq0, hnat]
    have hlt := Polynomial.degree_sub_lt hdeg hp0 hlc
    rw [hdeg, Polynomial.degree_eq_natDegree hq0] at hlt
    rw [Polynomial.degree_eq_natDegree hq0] at hq
    have h1 : q.natDegree < d + 1 := by exact_mod_cast hq
    have h2 : q.natDegree ≤ d := Nat.lt_succ_iff.mp h1
    exact lt_of_lt_of_le hlt (by exact_mod_cast h2)

theorem LineDeg.fd_self {r : ℕ} {i : Fin r} {d : ℕ} {g : (Fin r → ℕ) → ℂ}
    (h : LineDeg i (d + 1) g) : LineDeg i d (fd i g) := by
  intro m
  obtain ⟨q, hq, hg⟩ := h m
  refine ⟨q.comp (Polynomial.X + 1) - q, degree_shift_sub_lt q d hq, fun t => ?_⟩
  have e1 : m + t • (Pi.single i 1 : Fin r → ℕ) + Pi.single i 1 =
      m + (t + 1) • (Pi.single i 1 : Fin r → ℕ) := by
    rw [add_smul, one_smul, add_assoc]
  simp only [fd]
  rw [e1, hg, hg, Polynomial.eval_sub, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_X,
    Polynomial.eval_one, Nat.cast_add, Nat.cast_one]

theorem LineDeg.fd_any {r : ℕ} {i : Fin r} {d : ℕ} {g : (Fin r → ℕ) → ℂ} (k : Fin r)
    (h : LineDeg i d g) : LineDeg i d (fd k g) := by
  intro m
  obtain ⟨q₁, hq₁, hg₁⟩ := h (m + Pi.single k 1)
  obtain ⟨q₂, hq₂, hg₂⟩ := h m
  refine ⟨q₁ - q₂, lt_of_le_of_lt (Polynomial.degree_sub_le _ _) (max_lt hq₁ hq₂), fun t => ?_⟩
  simp only [fd]
  rw [add_right_comm, hg₁, hg₂, Polynomial.eval_sub]

theorem LineDeg.eq_zero {r : ℕ} {i : Fin r} {g : (Fin r → ℕ) → ℂ}
    (h : LineDeg i 0 g) (m : Fin r → ℕ) : g m = 0 := by
  obtain ⟨q, hq, hg⟩ := h m
  have hq0 : q = 0 := by
    by_contra hne
    rw [Polynomial.degree_eq_natDegree hne] at hq
    have : q.natDegree < 0 := by exact_mod_cast hq
    omega
  have := hg 0
  simp only [zero_smul, add_zero, hq0, Polynomial.eval_zero] at this
  exact this

theorem LineDeg.DL {r : ℕ} {i : Fin r} {d : ℕ} {g : (Fin r → ℕ) → ℂ} (h : LineDeg i d g)
    (cs : List (Fin r)) : LineDeg i (d - cs.count i) (DL cs g) := by
  induction cs with
  | nil => simpa [GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.DL] using h
  | cons c cs ih =>
    have e : GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.DL (c :: cs) g = fd c (GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.DL cs g) := rfl
    rw [e]
    by_cases hc : c = i
    · rw [hc, List.count_cons_self]
      rcases Nat.eq_zero_or_pos (d - cs.count i) with h0 | hpos
      · have h3 : d - (cs.count i + 1) = 0 := by omega
        rw [h3]
        rw [h0] at ih
        exact ih.fd_any i
      · obtain ⟨e', he⟩ : ∃ e', d - cs.count i = e' + 1 := ⟨d - cs.count i - 1, by omega⟩
        have h3 : d - (cs.count i + 1) = e' := by omega
        rw [h3]
        rw [he] at ih
        exact ih.fd_self
    · have h3 : (c :: cs).count i = cs.count i := by simp [hc]
      rw [h3]
      exact ih.fd_any c

theorem lineDeg_coneTerm (ι : Type) [Fintype ι] (r : ℕ) (a : ι → Fin r → ℝ) (b : ι → ℝ) (i : Fin r)
    (p : ℕ) : LineDeg i (Fintype.card ι * p + 1) (coneTerm a b (-(p : ℂ))) := by
  classical
  intro m
  let c : ι → ℂ := fun j => ((b j + ∑ k, a j k * (m k : ℝ) : ℝ) : ℂ)
  refine ⟨∏ j, (Polynomial.C ((a j i : ℝ) : ℂ) * Polynomial.X + Polynomial.C (c j)) ^ p, ?_, fun t => ?_⟩
  · have hnd : (∏ j, (Polynomial.C ((a j i : ℝ) : ℂ) * Polynomial.X + Polynomial.C (c j)) ^ p).natDegree ≤
        Fintype.card ι * p := by
      have hj : ∀ j, ((Polynomial.C ((a j i : ℝ) : ℂ) * Polynomial.X + Polynomial.C (c j)) ^ p).natDegree ≤ p := by
        intro j
        calc _ ≤ p * (Polynomial.C ((a j i : ℝ) : ℂ) * Polynomial.X + Polynomial.C (c j)).natDegree :=
              Polynomial.natDegree_pow_le
          _ ≤ p * 1 := Nat.mul_le_mul_left _ Polynomial.natDegree_linear_le
          _ = p := mul_one p
      refine (Polynomial.natDegree_prod_le _ _).trans ((Finset.sum_le_sum fun j _ => hj j).trans ?_)
      simp
    calc _ ≤ _ := Polynomial.degree_le_natDegree
      _ < _ := by exact_mod_cast Nat.lt_succ_of_le hnd
  · rw [Polynomial.eval_prod]
    simp only [coneTerm, neg_neg, Complex.cpow_natCast, Polynomial.eval_pow, Polynomial.eval_add,
      Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X]
    refine Finset.prod_congr rfl fun j _ => ?_
    congr 1
    simp only [c, Pi.add_apply, Pi.smul_apply, smul_eq_mul, Pi.single_apply, Nat.cast_add, Nat.cast_ite, Nat.cast_zero, mul_ite, mul_one, mul_zero, mul_add, Finset.sum_add_distrib,
      Finset.sum_ite_eq', Finset.mem_univ, if_true]
    push_cast
    ring

theorem DL_coneTerm_neg_natCast_eq_zero : ∀ (ι : Type) [Fintype ι] (r : ℕ) (a : ι → Fin r → ℝ) (b : ι → ℝ) (cs : List (Fin r)) (i : Fin r) (N p : ℕ), cs.count i = N → Fintype.card ι * p < N →
  ∀ m, DL cs (coneTerm a b (-(p : ℂ))) m = 0 := by
  intro ι _ r a b cs i N p hN hlt m
  have h := (lineDeg_coneTerm ι r a b i p).DL cs
  rw [hN, show Fintype.card ι * p + 1 - N = 0 by omega] at h
  exact h.eq_zero m

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeValuesNegativeIntegerRational =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SummationDecompositionFiniteDifferences =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.SummationDecompositionFiniteDifferences", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialSum\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeTilingBySignRegions\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeValuesNegativeIntegerRational\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.MainNotions.ShortIntervalPrimes GlobalTheory.RayZeta GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

theorem series_value_rational : ∀ (ι : Type) [Fintype ι] (r : ℕ) (a : ι → Fin r → ℝ) (b : ι → ℝ) (u : (Fin r → ℕ) → ℚ) (cs : List (Fin r)) (N p : ℕ), Fintype.card ι * p < N →
  (∀ i, cs.count i = N ∨ ∀ m, m i ≠ 0 → u m = 0) →
  (∀ m : Fin r → ℕ, ∃ q : ℚ, ∏ j, (b j + ∑ i, a j i * (m i : ℝ)) ^ p = (q : ℝ)) →
  ∃ q : ℚ, ∑' m, (u m : ℂ) * DL cs (coneTerm a b (-(p : ℂ))) m = (q : ℂ) := by
  intro ι _ r a b u cs N p hN hcase hval
  by_cases hex : ∃ i, cs.count i = N
  · obtain ⟨i, hi⟩ := hex
    refine ⟨0, ?_⟩
    have h0 := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.DL_coneTerm_neg_natCast_eq_zero ι r a b cs i N p hi hN
    simp [h0]
  · have hsupp : ∀ m : Fin r → ℕ, m ≠ 0 → u m = 0 := by
      intro m hm
      obtain ⟨i, hi⟩ : ∃ i, m i ≠ 0 := by
        by_contra hcon
        push Not at hcon
        exact hm (funext hcon)
      rcases hcase i with h | h
      · exact absurd ⟨i, h⟩ hex
      · exact h m hi
    obtain ⟨ρ, hρ⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.DL_coneTerm_neg_nat_rational ι r a b p hval cs
    refine ⟨u 0 * ρ 0, ?_⟩
    rw [tsum_eq_single 0 (fun m hm => by simp [hsupp m hm]), hρ 0]
    push_cast
    rfl

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SummationDecompositionFiniteDifferences =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.TendstoTailInfiniteProductOne =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.TendstoTailInfiniteProductOne", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialSum\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeSeriesDifferentiableLeftStrip\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDifferenceSummable\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PeriodicWeightBounded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.ShortIntervalPrimes GlobalTheory.RayZeta GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

theorem expansion_on_finset (r l N : ℕ) (w : (Fin r → ℕ) → ℚ) (hl : 0 < l) (hw : GoodWeight l w)
    (I : Finset (Fin r)) :
    ∃ (Q : Type) (_ : Fintype Q) (cs : Q → List (Fin r)) (u : Q → (Fin r → ℕ) → ℚ),
      (∀ q, BddW (u q)) ∧ (∀ q i, i ∉ I → GoodAt l i (u q) ∧ (cs q).count i = 0) ∧
      (∀ q i, i ∈ I → (cs q).count i = N ∨ ∀ m, m i ≠ 0 → u q m = 0) ∧
      ∀ g : (Fin r → ℕ) → ℂ, Summable g →
        ∑' m, (w m : ℂ) * g m = ∑ q, ∑' m, (u q m : ℂ) * DL (cs q) g m := by
  induction I using Finset.induction_on with
  | empty =>
    refine ⟨Unit, inferInstance, fun _ => [], fun _ => w,
      fun _ => GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.GoodBdd.bddW_of_periodic r l w hl (fun i m => hw.1 m i),
      fun _ i _ => ⟨⟨fun m => hw.1 m i, fun m => hw.2 m i⟩, by simp⟩,
      fun _ i hi => absurd hi (by simp), fun g _ => by simp [DL]⟩
  | insert a I ha ih =>
    obtain ⟨Q, _, cs, u, hb, hg, hs, hid⟩ := ih
    choose u' h1 h2 h3 h4 h5 using
      fun q => GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.OneVar.abel_oneVar r l N a (u q) hl (hg q a ha).1 (hb q)
    refine ⟨Q × Fin (N + 1), inferInstance, fun p => List.replicate (p.2 : ℕ) a ++ cs p.1,
      fun p => u' p.1 p.2, fun p => h1 p.1 p.2, ?_, ?_, ?_⟩
    · rintro ⟨q, c⟩ k hk
      have hka : k ≠ a := fun h => hk (h ▸ Finset.mem_insert_self _ _)
      have hkI : k ∉ I := fun h => hk (Finset.mem_insert_of_mem h)
      refine ⟨h3 q c k hka (hg q k hkI).1, ?_⟩
      simp [List.count_append, List.count_replicate, (hg q k hkI).2, hka.symm]
    · rintro ⟨q, c⟩ k hk
      by_cases hka : k = a
      · subst hka
        have h0 : (cs q).count k = 0 := (hg q k ha).2
        rcases h2 q c with h | h
        · left
          simp [List.count_append, h0, h]
        · exact Or.inr h
      · have hkI : k ∈ I := (Finset.mem_insert.1 hk).resolve_left hka
        have hak : a ≠ k := fun h => hka h.symm
        rcases hs q k hkI with h | h
        · left
          simp [List.count_append, List.count_replicate, hak, h]
        · exact Or.inr (h4 q c k hka h)
    · intro g hgs
      rw [hid g hgs, Fintype.sum_prod_type]
      refine Finset.sum_congr rfl fun q _ => ?_
      rw [h5 q _ (GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.summable_DL r (cs q) g hgs)]
      refine Finset.sum_congr rfl fun c _ => ?_
      simp only [DL, List.foldr_append]

theorem expansion_all_variables : ∀ (r l N : ℕ) (w : (Fin r → ℕ) → ℚ), 0 < l → GoodWeight l w →
    ∃ (Q : Type) (_ : Fintype Q) (cs : Q → List (Fin r)) (u : Q → (Fin r → ℕ) → ℚ),
      (∀ q, BddW (u q)) ∧ (∀ q i, (cs q).count i = N ∨ ∀ m, m i ≠ 0 → u q m = 0) ∧
      ∀ g : (Fin r → ℕ) → ℂ, Summable g →
        ∑' m, (w m : ℂ) * g m = ∑ q, ∑' m, (u q m : ℂ) * DL (cs q) g m := by
  intro r l N w hl hw
  obtain ⟨Q, iQ, cs, u, hb, -, hs, hid⟩ := expansion_on_finset r l N w hl hw Finset.univ
  exact ⟨Q, iQ, cs, u, hb, fun q i => hs q i (Finset.mem_univ i), hid⟩

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.TendstoTailInfiniteProductOne =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuationAlt =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuationAlt", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeSeriesSummableRightHalfPlane\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialSum\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PeriodicWeightBounded\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Calculus.FDeriv.Defs\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RealDifferenceConeBound\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SummationDecompositionFiniteDifferences\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.TendstoTailInfiniteProductOne\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.WeightSumAsFiniteDifferences\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.MainNotions.ShortIntervalPrimes GlobalTheory.RayZeta GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel
namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

theorem stage (ι : Type) [Fintype ι] (r l : ℕ) (a : ι → Fin r → ℝ) (b : ι → ℝ) (w : (Fin r → ℕ) → ℚ)
    (hr : r ≤ Fintype.card ι) (hl : 0 < l) (ha : ∀ j i, 0 < a j i) (hb : ∀ j, 0 < b j) (hw : GoodWeight l w) (k : ℕ) :
    ∃ G : ℂ → ℂ, DifferentiableOn ℂ G {s | -(k : ℝ) < s.re} ∧
      (∀ s : ℂ, 1 < s.re → G s = ∑' m, (w m : ℂ) * coneTerm a b s m) ∧
      ∀ p : ℕ, p < k → (∀ m : Fin r → ℕ, ∃ q : ℚ, ∏ j, (b j + ∑ i, a j i * (m i : ℝ)) ^ p = (q : ℝ)) →
        ∃ q : ℚ, G (-(p : ℂ)) = (q : ℂ) := by
  classical
  obtain ⟨Q, x, cs, u, hu, hcs, hsum⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.expansion_all_variables r l (Fintype.card ι * k + 2) w hl hw
  refine ⟨fun s => ∑ q, ∑' m, (u q m : ℂ) * DL (cs q) (coneTerm a b s) m, ?_, ?_, ?_⟩
  · have h : ∀ q ∈ (Finset.univ : Finset Q), DifferentiableOn ℂ
        (fun s => ∑' m, (u q m : ℂ) * DL (cs q) (coneTerm a b s) m) {s : ℂ | -(k : ℝ) < s.re} :=
      fun q _ => _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.differentiableOn_tsum_weighted_DL_halfplane ι r a b ha hb k (Fintype.card ι * k + 2) (cs q) (u q) le_rfl (hu q) (hcs q)
    have h2 := DifferentiableOn.sum h
    have h3 : (fun s : ℂ => ∑ q, ∑' m, (u q m : ℂ) * DL (cs q) (coneTerm a b s) m) =
        ∑ q, fun s : ℂ => ∑' m, (u q m : ℂ) * DL (cs q) (coneTerm a b s) m := by
      funext s
      simp [Finset.sum_apply]
    rw [h3]
    exact h2
  · intro s hs
    exact (hsum (coneTerm a b s) (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.coneTerm_summable ι r a b hr ha hb s hs)).symm
  · intro p hp hrat
    have hN : Fintype.card ι * p < Fintype.card ι * k + 2 := by
      have := Nat.mul_le_mul_left (Fintype.card ι) hp.le
      omega
    choose q hq using fun t => _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.series_value_rational ι r a b (u t) (cs t) (Fintype.card ι * k + 2) p hN (hcs t) hrat
    refine ⟨∑ t, q t, ?_⟩
    simp only [Rat.cast_sum]
    exact Finset.sum_congr rfl fun t _ => hq t

theorem abelContinuation : AbelContinuation := by
  intro ι _ r l a b w hr hl ha hb hw
  choose G hG hGeq hGrat using fun k : ℕ => stage ι r l a b w hr hl ha hb hw k
  obtain ⟨T, hT, hTG⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.Glue.entire_of_halfPlane_continuations (fun s => ∑' m, (w m : ℂ) * coneTerm a b s m) G hG hGeq
  refine ⟨T, hT, ?_, ?_⟩
  · intro s hs
    have hs0 : -((0 : ℕ) : ℝ) < s.re := by
      rw [Nat.cast_zero, neg_zero]
      linarith
    rw [hTG 0 s hs0, hGeq 0 s hs]
    have hper : ∀ (i : Fin r) (m : Fin r → ℕ), w (m + Pi.single i l) = w m := by
      obtain ⟨h1, -⟩ := hw
      exact fun i m => h1 m i
    obtain ⟨C, hC⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.GoodBdd.bddW_of_periodic r l w hl hper
    have hcone := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.coneTerm_summable ι r a b hr ha hb s hs
    refine Summable.hasSum (Summable.of_norm ?_)
    refine Summable.of_nonneg_of_le (fun m => norm_nonneg _) (fun m => ?_) (hcone.norm.mul_left C)
    have hwm : ‖(w m : ℂ)‖ ≤ C := by simpa using hC m
    rw [norm_mul]
    exact mul_le_mul_of_nonneg_right hwm (norm_nonneg _)
  · intro p hrat
    have hp : -((p + 1 : ℕ) : ℝ) < (-(p : ℂ)).re := by norm_num
    rw [hTG (p + 1) _ hp]
    exact hGrat (p + 1) p (Nat.lt_succ_self p) hrat

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuationAlt =====
