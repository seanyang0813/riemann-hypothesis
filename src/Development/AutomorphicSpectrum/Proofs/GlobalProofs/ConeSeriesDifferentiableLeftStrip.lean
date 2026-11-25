module

public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialSum
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Normed.Module.FiniteDimension
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDifferenceSummable
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SummationOperatorsBoundedGood
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SummationOperatorsPreserveOtherIndex
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation
import Formalism.SharpRestriction.GlobalSchurBounds.ShortIntervalPrimes

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelSummationByPartsWeights, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeSeriesDifferentiableLeftStrip

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelSummationByPartsWeights =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelSummationByPartsWeights", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialSum\npublic import Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\nimport Formalism.SharpRestriction.GlobalSchurBounds.ShortIntervalPrimes\npublic import Mathlib.Analysis.Normed.Module.FiniteDimension\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.MainNotions.ShortIntervalPrimes GlobalTheory.RayZeta GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.StepIdentity

variable {r : ℕ}

theorem update_add_single (i : Fin r) (m : Fin r → ℕ) (n k : ℕ) :
    Function.update (m + (Pi.single i n : Fin r → ℕ)) i k = Function.update m i k := by
  funext j
  by_cases hj : j = i
  · subst hj
    simp
  · simp [hj]

theorem update_self_add (i : Fin r) (m : Fin r → ℕ) (e : ℕ) :
    Function.update m i (m i + e) = m + (Pi.single i e : Fin r → ℕ) := by
  funext j
  by_cases hj : j = i
  · subst hj
    simp
  · simp [hj]

theorem partialSum_succ (i : Fin r) (v : (Fin r → ℕ) → ℚ) (m : Fin r → ℕ) :
    partialSum i v (m + Pi.single i 1) = partialSum i v m + v m := by
  simp only [partialSum, update_add_single, Pi.add_apply, Pi.single_eq_same]
  rw [Finset.sum_range_succ, Function.update_eq_self]

theorem partialSum_of_zero (i : Fin r) (v : (Fin r → ℕ) → ℚ) (m : Fin r → ℕ) (h : m i = 0) :
    partialSum i v m = 0 := by
  simp [partialSum, h]

theorem partialSumMean_add_single_one (l : ℕ) (i : Fin r) (v : (Fin r → ℕ) → ℚ) (m : Fin r → ℕ) :
    meanP l i v (m + Pi.single i 1) = meanP l i v m := by
  simp only [meanP, update_add_single]

theorem partialSum_period {l : ℕ} {i : Fin r} {v : (Fin r → ℕ) → ℚ} (h : GoodAt l i v)
    (m : Fin r → ℕ) : partialSum i v (m + Pi.single i l) = partialSum i v m := by
  simp only [partialSum, update_add_single, Pi.add_apply, Pi.single_eq_same]
  rw [Finset.sum_range_add]
  have h2 : ∑ e ∈ Finset.range l, v (Function.update m i (m i + e)) = 0 := by
    simp only [update_self_add]
    exact h.2 m
  rw [h2, add_zero]

theorem partialSum_bound {l : ℕ} {i : Fin r} {v : (Fin r → ℕ) → ℚ} (hl : 0 < l)
    (h : GoodAt l i v) {C : ℝ} (hC0 : 0 ≤ C) (hC : ∀ m, |(v m : ℝ)| ≤ C) :
    ∀ m, |(partialSum i v m : ℝ)| ≤ l * C := by
  have key : ∀ n, ∀ m : Fin r → ℕ, m i = n → |(partialSum i v m : ℝ)| ≤ l * C := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      intro m hm
      by_cases hn : n < l
      · simp only [partialSum, hm]
        push_cast
        calc |∑ k ∈ Finset.range n, (v (Function.update m i k) : ℝ)|
            ≤ ∑ k ∈ Finset.range n, |(v (Function.update m i k) : ℝ)| := Finset.abs_sum_le_sum_abs _ _
          _ ≤ ∑ k ∈ Finset.range n, C := Finset.sum_le_sum fun k _ => hC _
          _ = n * C := by simp
          _ ≤ l * C := mul_le_mul_of_nonneg_right (by exact_mod_cast hn.le) hC0
      · rw [not_lt] at hn
        have hmm : m = Function.update m i (n - l) + Pi.single i l := by
          funext j
          by_cases hj : j = i
          · subst hj
            simp only [Pi.add_apply, Function.update_self, Pi.single_eq_same]
            omega
          · simp [hj]
        rw [hmm, partialSum_period h]
        exact ih (n - l) (by omega) _ (by simp)
  exact fun m => key (m i) m rfl

theorem abs_partialSumMean_le {l : ℕ} {i : Fin r} {v : (Fin r → ℕ) → ℚ} (hl : 0 < l)
    {K : ℝ} (hK : ∀ m, |(partialSum i v m : ℝ)| ≤ K) (m : Fin r → ℕ) :
    |(meanP l i v m : ℝ)| ≤ K := by
  have hl' : (0 : ℝ) < l := by exact_mod_cast hl
  simp only [meanP]
  push_cast
  rw [abs_div, abs_of_pos hl', div_le_iff₀ hl']
  calc |∑ k ∈ Finset.range l, (partialSum i v (Function.update m i k) : ℝ)|
      ≤ ∑ k ∈ Finset.range l, |(partialSum i v (Function.update m i k) : ℝ)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.range l, K := Finset.sum_le_sum fun k _ => hK _
    _ = K * l := by simp [mul_comm]

theorem summable_cast_mul {α : Type*} (w : α → ℚ) (K : ℝ) (hw : ∀ m, |(w m : ℝ)| ≤ K)
    {g : α → ℂ} (hg : Summable g) : Summable (fun m => (w m : ℂ) * g m) := by
  have hn : Summable (fun m => ‖g m‖) := by
    first
      | exact hg.norm
  refine Summable.of_norm_bounded (hn.mul_left K) (fun m => ?_)
  rw [norm_mul, ← Complex.ofReal_ratCast, Complex.norm_real, Real.norm_eq_abs]
  exact mul_le_mul_of_nonneg_right (hw m) (norm_nonneg _)

theorem stepIdentity (r l : ℕ) (i : Fin r) (v : (Fin r → ℕ) → ℚ) (g : (Fin r → ℕ) → ℂ)
    (hl : 0 < l) (hgood : GoodAt l i v) (hv : BddW v) (hg : Summable g) :
    ∑' m, (v m : ℂ) * g m = ∑' m, (Bop l i v m : ℂ) * g m - ∑' m, (Aop l i v m : ℂ) * fd i g m := by
  obtain ⟨C, hC⟩ := hv
  have hC0 : 0 ≤ C := le_trans (abs_nonneg _) (hC 0)
  have hlC : 0 ≤ (l : ℝ) * C := mul_nonneg (Nat.cast_nonneg _) hC0
  have hPS := partialSum_bound hl hgood hC0 hC
  have hMP : ∀ m, |(meanP l i v m : ℝ)| ≤ l * C := abs_partialSumMean_le hl hPS
  set δ : Fin r → ℕ := Pi.single i 1 with hδ
  have hsub : ∀ a b : ℝ, |a - b| ≤ |a| + |b| := fun a b => by
    simpa only [Real.norm_eq_abs] using norm_sub_le a b
  have hBb : ∀ m, |(Bop l i v m : ℝ)| ≤ l * C := by
    intro m
    unfold Bop
    split_ifs
    · exact hMP m
    · rw [Rat.cast_zero, abs_zero]
      exact hlC
  have hAb : ∀ m, |(Aop l i v m : ℝ)| ≤ 2 * (l * C) := by
    intro m
    simp only [Aop, Rat.cast_sub]
    calc _ ≤ |(partialSum i v (m + Pi.single i 1) : ℝ)| + |(meanP l i v m : ℝ)| := hsub _ _
      _ ≤ l * C + l * C := add_le_add (hPS _) (hMP m)
      _ = _ := by ring
  let T : (Fin r → ℕ) → ℂ := fun m =>
    ((partialSum i v m - meanP l i v m + Bop l i v m : ℚ) : ℂ) * g m
  have hTb : ∀ m, |((partialSum i v m - meanP l i v m + Bop l i v m : ℚ) : ℝ)| ≤ 3 * (l * C) := by
    intro m
    push_cast
    calc _ ≤ |(partialSum i v m : ℝ) - meanP l i v m| + |(Bop l i v m : ℝ)| := abs_add_le _ _
      _ ≤ (|(partialSum i v m : ℝ)| + |(meanP l i v m : ℝ)|) + |(Bop l i v m : ℝ)| :=
          add_le_add (hsub _ _) le_rfl
      _ ≤ (l * C + l * C) + l * C := add_le_add (add_le_add (hPS m) (hMP m)) (hBb m)
      _ = _ := by ring
  have hinj : Function.Injective (fun m : Fin r → ℕ => m + δ) := add_left_injective δ
  have hgs : Summable (fun m => g (m + δ)) := hg.comp_injective hinj
  have hfd : Summable (fd i g) := by
    have : fd i g = fun m => g (m + δ) - g m := rfl
    rw [this]
    exact hgs.sub hg
  have hsB : Summable (fun m => (Bop l i v m : ℂ) * g m) := summable_cast_mul _ _ hBb hg
  have hsA : Summable (fun m => (Aop l i v m : ℂ) * fd i g m) := summable_cast_mul _ _ hAb hfd
  have hsT : Summable T := summable_cast_mul _ _ hTb hg
  have hsT' : Summable (fun m => T (m + δ)) := hsT.comp_injective hinj
  have hT0 : ∀ m, m i = 0 → T m = 0 := by
    intro m hm
    simp [T, Bop, hm, partialSum_of_zero i v m hm]
  have hBs : ∀ m, Bop l i v (m + δ) = 0 := by
    intro m
    simp [Bop, δ]
  have hpt : ∀ m, (v m : ℂ) * g m =
      ((Bop l i v m : ℂ) * g m - (Aop l i v m : ℂ) * fd i g m) + (T (m + δ) - T m) := by
    intro m
    have h1 := partialSum_succ i v m
    have h2 := partialSumMean_add_single_one l i v m
    have h3 : Bop l i v (m + Pi.single i 1) = 0 := hBs m
    simp only [T, Aop, fd, hδ, h1, h2, h3]
    push_cast
    ring
  have hshift : ∑' m, T (m + δ) = ∑' m, T m := by
    refine hinj.tsum_eq (f := T) ?_
    intro m hm
    have hmi : m i ≠ 0 := fun h0 => hm (hT0 m h0)
    refine ⟨m - δ, ?_⟩
    funext j
    by_cases hj : j = i
    · subst hj
      simp only [Pi.add_apply, Pi.sub_apply, δ, Pi.single_eq_same]
      omega
    · simp [δ, hj]
  calc ∑' m, (v m : ℂ) * g m
      = ∑' m, (((Bop l i v m : ℂ) * g m - (Aop l i v m : ℂ) * fd i g m) + (T (m + δ) - T m)) :=
        tsum_congr hpt
    _ = (∑' m, (Bop l i v m : ℂ) * g m - ∑' m, (Aop l i v m : ℂ) * fd i g m) +
          (∑' m, T (m + δ) - ∑' m, T m) := by
        rw [(hsB.sub hsA).tsum_add (hsT'.sub hsT), hsB.tsum_sub hsA, hsT'.tsum_sub hsT]
    _ = _ := by rw [hshift, sub_self, add_zero]

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.StepIdentity
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelSummationByPartsWeights =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeSeriesDifferentiableLeftStrip =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeSeriesDifferentiableLeftStrip", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PartialSum\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelSummationByPartsWeights\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDifferenceSummable\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SummationOperatorsBoundedGood\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SummationOperatorsPreserveOtherIndex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SiegelKlingenDeligneRibet\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.AbelContinuation\nimport Formalism.SharpRestriction.GlobalSchurBounds.ShortIntervalPrimes\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.ShortIntervalPrimes GlobalTheory.RayZeta GlobalTheory.CompanionTheory.Hypotheses₂.Shintani GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel

namespace GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.OneVar

theorem goodAt_smul {r l : ℕ} {k : Fin r} {v : (Fin r → ℕ) → ℚ} (s : ℚ) (h : GoodAt l k v) :
    GoodAt l k (fun m => s * v m) := by
  refine ⟨fun m => by simp only [h.1 m], fun m => ?_⟩
  rw [← Finset.mul_sum, h.2 m, mul_zero]

theorem bddW_sign {r : ℕ} {v : (Fin r → ℕ) → ℚ} (c : ℕ) (h : BddW v) :
    BddW (fun m => (-1 : ℚ) ^ c * v m) := by
  obtain ⟨C, hC⟩ := h
  refine ⟨C, fun m => ?_⟩
  have : |(((-1 : ℚ) ^ c * v m : ℚ) : ℝ)| = |(v m : ℝ)| := by
    push_cast
    rw [abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul]
  rw [this]
  exact hC m

theorem iterate_good_bdd {r l : ℕ} {i : Fin r} {v : (Fin r → ℕ) → ℚ} (hl : 0 < l)
    (hg : GoodAt l i v) (hb : BddW v) (c : ℕ) :
    GoodAt l i ((Aop l i)^[c] v) ∧ BddW ((Aop l i)^[c] v) := by
  induction c with
  | zero => exact ⟨hg, hb⟩
  | succ c ih =>
    rw [Function.iterate_succ_apply']
    have := @GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.aop_props r l i _ hl ih.1 ih.2
    exact ⟨this.2.2, this.1⟩

theorem iterate_good_other {r l : ℕ} {i k : Fin r} {v : (Fin r → ℕ) → ℚ} (hk : k ≠ i)
    (hg : GoodAt l k v) (c : ℕ) : GoodAt l k ((Aop l i)^[c] v) := by
  induction c with
  | zero => exact hg
  | succ c ih =>
    rw [Function.iterate_succ_apply']
    exact (((@_root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.OtherVar.good_support_other r l i k _ hk).1 ih).1)

theorem iterate_supp_other {r l : ℕ} {i k : Fin r} {v : (Fin r → ℕ) → ℚ} (hk : k ≠ i)
    (hs : ∀ m, m k ≠ 0 → v m = 0) (c : ℕ) : ∀ m, m k ≠ 0 → (Aop l i)^[c] v m = 0 := by
  induction c with
  | zero => exact hs
  | succ c ih =>
    rw [Function.iterate_succ_apply']
    exact (((@_root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.OtherVar.good_support_other r l i k _ hk).2 ih).1)

theorem DL_replicate_succ {r : ℕ} (i : Fin r) (c : ℕ) (g : (Fin r → ℕ) → ℂ) :
    DL (List.replicate (c + 1) i) g = fd i (DL (List.replicate c i) g) := by
  simp [DL, List.replicate_succ]

theorem tsum_iterate {r l : ℕ} {i : Fin r} {v : (Fin r → ℕ) → ℚ} (hl : 0 < l)
    (hg : GoodAt l i v) (hb : BddW v) {g : (Fin r → ℕ) → ℂ} (hs : Summable g) (N : ℕ) :
    ∑' m, (v m : ℂ) * g m =
      ∑ c ∈ Finset.range N, (-1 : ℂ) ^ c *
          ∑' m, (Bop l i ((Aop l i)^[c] v) m : ℂ) * DL (List.replicate c i) g m +
        (-1 : ℂ) ^ N * ∑' m, ((Aop l i)^[N] v m : ℂ) * DL (List.replicate N i) g m := by
  induction N with
  | zero => simp [DL]
  | succ N ih =>
    have hN := iterate_good_bdd hl hg hb N
    have key := @GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.StepIdentity.stepIdentity r l i ((Aop l i)^[N] v) (DL (List.replicate N i) g) hl hN.1 hN.2
      (@GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.summable_DL r _ g hs)
    rw [ih, key, Finset.sum_range_succ, Function.iterate_succ_apply', DL_replicate_succ, pow_succ]
    ring

def uW {r : ℕ} (l N : ℕ) (i : Fin r) (v : (Fin r → ℕ) → ℚ) (c : ℕ) : (Fin r → ℕ) → ℚ :=
  if c < N then fun m => (-1 : ℚ) ^ c * Bop l i ((Aop l i)^[c] v) m
  else fun m => (-1 : ℚ) ^ N * (Aop l i)^[N] v m

theorem abel_oneVar : ∀ (r l N : ℕ) (i : Fin r) (v : (Fin r → ℕ) → ℚ), 0 < l → GoodAt l i v → BddW v →
  ∃ u : Fin (N + 1) → (Fin r → ℕ) → ℚ, (∀ c, BddW (u c)) ∧
    (∀ c : Fin (N + 1), (c : ℕ) = N ∨ ∀ m, m i ≠ 0 → u c m = 0) ∧
    (∀ c k, k ≠ i → GoodAt l k v → GoodAt l k (u c)) ∧
    (∀ c k, k ≠ i → (∀ m, m k ≠ 0 → v m = 0) → ∀ m, m k ≠ 0 → u c m = 0) ∧
    ∀ g : (Fin r → ℕ) → ℂ, Summable g →
      ∑' m, (v m : ℂ) * g m = ∑ c, ∑' m, (u c m : ℂ) * DL (List.replicate (c : ℕ) i) g m := by
  intro r l N i v hl hg hb
  refine ⟨fun c => uW l N i v c, fun c => ?_, fun c => ?_, fun c k hk hgk => ?_,
    fun c k hk hsk => ?_, fun g hs => ?_⟩
  · unfold uW
    beta_reduce
    split_ifs with h
    · have hc := iterate_good_bdd hl hg hb c
      exact bddW_sign _ (@GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.aop_props r l i _ hl hc.1 hc.2).2.1
    · exact bddW_sign _ (iterate_good_bdd hl hg hb N).2
  · by_cases h : (c : ℕ) < N
    · refine Or.inr fun m hm => ?_
      simp [uW, h, Bop, hm]
    · exact Or.inl (by have := c.isLt; omega)
  · unfold uW
    beta_reduce
    split_ifs with h
    · exact goodAt_smul _ ((@_root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.OtherVar.good_support_other r l i k _ hk).1 (iterate_good_other hk hgk c)).2
    · exact goodAt_smul _ (iterate_good_other hk hgk N)
  · intro m hm
    unfold uW
    beta_reduce
    split_ifs with h
    · simp [((@_root_.GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.OtherVar.good_support_other r l i k _ hk).2 (iterate_supp_other hk hsk c)).2 m hm]
    · simp [iterate_supp_other hk hsk N m hm]
  · rw [tsum_iterate hl hg hb hs N, Fin.sum_univ_castSucc, Finset.sum_range]
    congr 1
    · refine Finset.sum_congr rfl fun c _ => ?_
      have hc : (c : ℕ) < N := c.isLt
      rw [← tsum_mul_left]
      refine tsum_congr fun m => ?_
      simp [uW, hc, mul_assoc]
    · rw [← tsum_mul_left]
      refine tsum_congr fun m => ?_
      simp [uW, mul_assoc]

end GlobalTheory.CompanionTheory.Hypotheses₂.Shintani.Abel.OneVar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConeSeriesDifferentiableLeftStrip =====
