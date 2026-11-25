module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmSt
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FontaineFormalismOfRegular
public import Mathlib.Analysis.Normed.Field.Instances
public import Mathlib.NumberTheory.Padics.Complex
public import Mathlib.Data.Fin.Tuple.Sort
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ImportsAlt
public import Mathlib.Analysis.Normed.Module.FiniteDimension
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TwistStep
public import Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FiltrationZeroMembership
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BcrisPlusFrobeniusStableSubringInFilZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisPlusSeriesWithThetaResidues
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsOrthogonalFamilyResidueZeros
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UntiltFrobeniusSeriesLinearIndependentOfFirstTer
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DeRhamPeriodRingFieldTPowFiltrationUnits
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MooreDeterminantCrisPlusNeZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedOfFrobeniusIterateFixedFilZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIndependentFrobSolutionsCrisProof
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
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.NumberTheory.Padics.LocalField
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Topology.Algebra.Nonarchimedean.Completion
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalRingCardinality.AdicCompletionLocal.InstIsAdicCompleteOCSpanSingletonSetCast
import Mathlib.LinearAlgebra.Dimension.OrzechProperty
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfFrobeniusPeriodicMemDeRhamFilZero, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSortedNormalizedOrthBasisComplexPAdic, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNonzeroFrobVectorResidueZero, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSecondKindMatrixMooreDetNeZero, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MooreDeterminantEqUnramifiedMulPeriod, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FundamentalLemmaLatticeDegreeOne

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfFrobeniusPeriodicMemDeRhamFilZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfFrobeniusPeriodicMemDeRhamFilZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmSt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FontaineFormalismOfRegular\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations GlobalTheory.Pst GlobalTheory.PMon TensorProduct
open scoped Formalism.Per

namespace GlobalTheory.PMon

theorem fil_add_nat_le {l : ℕ} [Fact l.Prime] (P : LocPrime l) (a : ℤ) (k : ℕ) {x : P.R.BdR}
    (hx : x ∈ (P.PD (botExt l)).Fil (a + k)) : x ∈ (P.PD (botExt l)).Fil a := by
  induction k generalizing a with
  | zero => simpa using hx
  | succ k ih =>
    apply ih
    have h := (P.PD (botExt l)).Fil_anti (a + k)
    apply h
    have : a + ((k + 1 : ℕ) : ℤ) = a + k + 1 := by push_cast; ring
    rwa [← this]

theorem no_fil_zero_neg_slope : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P) (T : LocTied l P AI)
    (h d : ℕ), 0 < h → 0 < d → ∀ c : P.R.B, (l : P.R.B) ^ d * P.φB^[h] c = c →
    (∀ j < h, ev P j c ∈ Fil P 0) → c = 0 := by
  intro l _ P AI T h d hh hd c hc hfil
  have hF : IsField P.R.BdR := GlobalTheory.RegularRing.isField_of_tied T
  have hι : Function.Injective P.ιB := fun a b hab => (P.PD (botExt l)).ι_inj (by rw [P.PD_ι, P.PD_ι, hab])
  set PD := P.PD (botExt l) with hPD
  have hdom : ∀ a b : P.R.B, a * b = 0 → a = 0 ∨ b = 0 := by
    intro a b hab
    have h0 : P.ιB a * P.ιB b = 0 := by rw [← map_mul, hab, map_zero]
    by_cases ha : P.ιB a = 0
    · exact Or.inl (hι (by rw [ha, map_zero]))
    · right
      obtain ⟨y, hy⟩ := hF.mul_inv_cancel ha
      apply hι
      rw [map_zero]
      calc P.ιB b = (y * P.ιB a) * P.ιB b := by rw [mul_comm y, hy, one_mul]
        _ = 0 := by rw [mul_assoc, h0, mul_zero]
  haveI : NoZeroDivisors P.R.B := ⟨fun {a b} hab => hdom a b hab⟩
  haveI : Nontrivial P.R.B := nontrivial_B P
  by_contra hc0
  set N : P.R.B := ∏ j ∈ Finset.range h, P.φB^[j] c with hN
  have hφN : c * P.φB N = N * P.φB^[h] c := by
    have e1 : P.φB N = ∏ j ∈ Finset.range h, P.φB^[j + 1] c := by
      rw [hN, map_prod]
      refine Finset.prod_congr rfl fun j _ => ?_
      rw [Function.iterate_succ_apply']
    rw [e1, hN]
    have e2 := Finset.prod_range_succ' (fun j => P.φB^[j] c) h
    have e3 := Finset.prod_range_succ (fun j => P.φB^[j] c) h
    simp only [Function.iterate_zero, id] at e2
    rw [mul_comm c, ← e2, e3]
  have hlN : (l : P.R.B) ^ d * P.φB N = N := by
    have : c * ((l : P.R.B) ^ d * P.φB N - N) = 0 := by
      calc c * ((l : P.R.B) ^ d * P.φB N - N) = (l : P.R.B) ^ d * (c * P.φB N) - N * c := by ring
        _ = N * ((l : P.R.B) ^ d * P.φB^[h] c) - N * c := by rw [hφN]; ring
        _ = 0 := by rw [hc, sub_self]
    rcases hdom _ _ this with h1 | h1
    · exact absurd h1 hc0
    · exact sub_eq_zero.mp h1
  set x : P.R.B := N * P.tB ^ d with hx
  have hφx : PD.φ x = x := by
    rw [P.PD_φ, hx, map_mul, map_pow, localPrime_frobenius_periodT, Algebra.smul_def, map_natCast, mul_pow]
    linear_combination (P.tB ^ d) * hlN
  have hmul : ∀ (a b : ℤ) (u v : P.R.BdR), u ∈ PD.Fil a → v ∈ PD.Fil b → u * v ∈ PD.Fil (a + b) :=
    fun a b u v hu hv => PD.Fil_mul a b u v hu hv
  have hιN : P.ιB N ∈ PD.Fil 0 := by
    rw [hN, map_prod]
    refine Finset.prod_induction _ (fun u => u ∈ PD.Fil 0) (fun u v hu hv => by simpa using hmul 0 0 u v hu hv)
      (by simpa using PD.one_mem) fun j hj => ?_
    exact hfil j (Finset.mem_range.mp hj)
  have hιt : P.ιB P.tB ∈ PD.Fil 1 := by
    have := PD.mem_filtration_one
    rwa [P.PD_ι, P.period_datum_t_eq] at this
  have hιtd : ∀ k : ℕ, P.ιB (P.tB ^ k) ∈ PD.Fil k := by
    intro k
    induction k with
    | zero => simpa using PD.one_mem
    | succ k ih =>
      rw [pow_succ, map_mul]
      have := hmul k 1 _ _ ih hιt
      simpa using this
  have hιx1 : P.ιB x ∈ PD.Fil 1 := by
    have h1 : P.ιB x ∈ PD.Fil (0 + d) := by rw [hx, map_mul]; exact hmul 0 d _ _ hιN (hιtd d)
    obtain ⟨k, hk⟩ : ∃ k : ℕ, d = k + 1 := ⟨d - 1, by omega⟩
    apply fil_add_nat_le P 1 k
    have : (1 : ℤ) + (k : ℤ) = 0 + (d : ℤ) := by rw [hk]; push_cast; ring
    rwa [this]
  have hιx0 : P.ιB x ∈ PD.Fil 0 := fil_add_nat_le P 0 1 (by simpa using hιx1)
  obtain ⟨q, hq⟩ := PD.fund x hφx (by rw [P.PD_ι]; exact hιx0)
  by_cases hq0 : q = 0
  · have hx0 : x = 0 := by rw [← hq, hq0, map_zero]
    have hN0 : N = 0 := by
      rcases hdom _ _ hx0 with h1 | h1
      · exact h1
      · exact absurd (pow_eq_zero_iff (by omega) |>.mp h1) (isUnit_tB P).ne_zero
    rw [hN, Finset.prod_eq_zero_iff] at hN0
    obtain ⟨j, -, hj⟩ := hN0
    apply hc0
    apply (phiB_injective P).iterate j
    rw [hj, iterate_map_zero]
  · have hqx : P.ιB x = algebraMap ℚ_[l] P.R.BdR q := by rw [← hq, AlgHom.commutes]
    have hinv : algebraMap ℚ_[l] P.R.BdR q⁻¹ ∈ PD.Fil 0 := by
      rw [Algebra.algebraMap_eq_smul_one]
      exact Submodule.smul_of_tower_mem _ _ PD.one_mem
    have hone : algebraMap ℚ_[l] P.R.BdR q⁻¹ * P.ιB x = 1 := by
      rw [hqx, ← map_mul, inv_mul_cancel₀ hq0, map_one]
    have h2 : P.ιB P.tB ∈ PD.Fil 2 := by
      have := hmul 1 (0 + 1) _ _ hιt (hmul 0 1 _ _ hinv hιx1)
      rw [hone, mul_one] at this
      simpa using this
    have := PD.not_mem_filtration_two
    rw [P.PD_ι, P.period_datum_t_eq] at this
    exact this h2

end GlobalTheory.PMon

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfFrobeniusPeriodicMemDeRhamFilZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSortedNormalizedOrthBasisComplexPAdic =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSortedNormalizedOrthBasisComplexPAdic", "h": "module\n\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.NumberTheory.Padics.Complex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\npublic import Mathlib.Data.Fin.Tuple.Sort\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.Padics.LocalField\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Nonarchimedean.Completion\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ImportsAlt\nimport Formalism.LocalRingCardinality.AdicCompletionLocal.InstIsAdicCompleteOCSpanSingletonSetCast\npublic import Mathlib.Analysis.Normed.Module.FiniteDimension\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.Per GlobalTheory.PSer
open scoped Formalism.Per

namespace GlobalTheory.PMonE.OrthBasis

private lemma exists_orthogonal_translate (l : ℕ) [Fact l.Prime] (W : Submodule ℚ_[l] ℂ_[l])
    [FiniteDimensional ℚ_[l] W] (x : ℂ_[l]) (hx : x ∉ W) :
    ∃ y : ℂ_[l], y - x ∈ W ∧ y ≠ 0 ∧ ∀ w ∈ W, ‖y‖ ≤ ‖y + w‖ ∧ ‖w‖ ≤ ‖y + w‖ := by
  haveI : ProperSpace W := FiniteDimensional.proper ℚ_[l] W
  obtain ⟨w₀, hw₀K, hmin⟩ := (isCompact_closedBall (0 : W) ‖x‖).exists_isMinOn
    ⟨0, Metric.mem_closedBall_self (norm_nonneg x)⟩
    (Continuous.continuousOn (f := fun w : W => ‖x - (w : ℂ_[l])‖) (by fun_prop))
  have h0 : ‖x - (w₀ : ℂ_[l])‖ ≤ ‖x‖ := by
    simpa using hmin (Metric.mem_closedBall_self (norm_nonneg x) : (0 : W) ∈ _)
  have hglob : ∀ w : W, ‖x - (w₀ : ℂ_[l])‖ ≤ ‖x - (w : ℂ_[l])‖ := by
    intro w
    by_cases hw : w ∈ Metric.closedBall (0 : W) ‖x‖
    · exact hmin hw
    · have hlt : ‖x‖ < ‖(w : ℂ_[l])‖ := by simpa using hw
      have h1 : ‖x - (w : ℂ_[l])‖ = ‖(w : ℂ_[l])‖ := by
        rw [sub_eq_add_neg, IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm (by rw [norm_neg]; exact hlt.ne),
          norm_neg, max_eq_right hlt.le]
      rw [h1]; exact h0.trans hlt.le
  refine ⟨x - w₀, by simpa using W.neg_mem w₀.2, ?_, fun w hw => ⟨?_, ?_⟩⟩
  · intro h
    exact hx (by rw [sub_eq_zero.1 h]; exact w₀.2)
  · have := hglob ⟨w₀ - w, W.sub_mem w₀.2 hw⟩
    simpa [sub_sub_eq_add_sub, sub_add_eq_add_sub, add_sub_assoc] using this
  · have h1 := hglob ⟨w₀ - w, W.sub_mem w₀.2 hw⟩
    have h2 : w = (x - w₀ + w) + -(x - w₀) := by abel
    calc ‖w‖ = ‖(x - w₀ + w) + -(x - w₀)‖ := by rw [← h2]
      _ ≤ max ‖x - w₀ + w‖ ‖-(x - w₀)‖ := IsUltrametricDist.norm_add_le_max _ _
      _ ≤ ‖x - w₀ + w‖ := by
        rw [norm_neg]
        refine max_le le_rfl ?_
        have : x - (↑(⟨w₀ - w, W.sub_mem w₀.2 hw⟩ : W) : ℂ_[l]) = x - w₀ + w := by simp; abel
        rw [← this]; exact h1

private lemma exists_orthogonal_family_in_span (l : ℕ) [Fact l.Prime] :
    ∀ (n : ℕ) (μ : Fin n → ℂ_[l]), LinearIndependent ℚ_[l] μ →
      ∃ u : Fin n → ℂ_[l], (∀ i, u i ∈ Submodule.span ℚ_[l] (Set.range μ)) ∧ (∀ i, u i ≠ 0) ∧
        ∀ (c : Fin n → ℚ_[l]) (j : Fin n),
          ‖c j‖ * ‖u j‖ ≤ ‖∑ i, algebraMap ℚ_[l] ℂ_[l] (c i) * u i‖ := by
  intro n
  induction n with
  | zero => intro μ _; exact ⟨Fin.elim0, fun i => i.elim0, fun i => i.elim0, fun _ j => j.elim0⟩
  | succ n ih =>
    intro μ hμ
    rw [← Fin.snoc_init_self μ, linearIndependent_finSnoc] at hμ
    obtain ⟨hμ₀, hx⟩ := hμ
    obtain ⟨u₀, hu₀S, hu₀, horth⟩ := ih _ hμ₀
    set W := Submodule.span ℚ_[l] (Set.range (Fin.init μ))
    haveI : FiniteDimensional ℚ_[l] W :=
      FiniteDimensional.span_of_finite ℚ_[l] (Set.finite_range _)
    obtain ⟨y, hyx, hy0, hy⟩ := exists_orthogonal_translate l W _ hx
    have hWS : W ≤ Submodule.span ℚ_[l] (Set.range μ) := by
      apply Submodule.span_mono
      rintro _ ⟨i, rfl⟩
      exact ⟨i.castSucc, rfl⟩
    have hxS : μ (Fin.last n) ∈ Submodule.span ℚ_[l] (Set.range μ) :=
      Submodule.subset_span ⟨_, rfl⟩
    refine ⟨Fin.snoc (α := fun _ => ℂ_[l]) u₀ y, fun i => ?_, fun i => ?_, fun c j => ?_⟩
    · refine Fin.lastCases ?_ (fun k => ?_) i
      · simp only [Fin.snoc_last]
        have : y = μ (Fin.last n) + (y - μ (Fin.last n)) := by abel
        rw [this]; exact Submodule.add_mem _ hxS (hWS hyx)
      · simp only [Fin.snoc_castSucc]; exact hWS (hu₀S k)
    · refine Fin.lastCases ?_ (fun k => ?_) i
      · simpa using hy0
      · simpa using hu₀ k
    · rw [Fin.sum_univ_castSucc]
      simp only [Fin.snoc_castSucc, Fin.snoc_last]
      set w := ∑ i : Fin n, algebraMap ℚ_[l] ℂ_[l] (c i.castSucc) * u₀ i
      have hw : w ∈ W := Submodule.sum_mem _ fun i _ => by
        rw [← Algebra.smul_def]; exact Submodule.smul_mem _ _ (hu₀S i)
      have key : ‖c (Fin.last n)‖ * ‖y‖ ≤ ‖w + algebraMap ℚ_[l] ℂ_[l] (c (Fin.last n)) * y‖ ∧
          ‖w‖ ≤ ‖w + algebraMap ℚ_[l] ℂ_[l] (c (Fin.last n)) * y‖ := by
        by_cases hc : c (Fin.last n) = 0
        · simp [hc]
        · set a := algebraMap ℚ_[l] ℂ_[l] (c (Fin.last n))
          have hna : ‖a‖ = ‖c (Fin.last n)‖ := norm_algebraMap' ℂ_[l] _
          have ha : a ≠ 0 := by
            intro h; apply hc; rw [← norm_eq_zero, ← hna, h, norm_zero]
          have hw' : a⁻¹ * w ∈ W := by
            rw [show a⁻¹ = algebraMap ℚ_[l] ℂ_[l] (c (Fin.last n))⁻¹ by simp [a],
              ← Algebra.smul_def]
            exact Submodule.smul_mem _ _ hw
          obtain ⟨h1, h2⟩ := hy _ hw'
          have e : w + a * y = a * (y + a⁻¹ * w) := by field_simp; ring
          rw [e, norm_mul, hna]
          refine ⟨mul_le_mul_of_nonneg_left h1 (norm_nonneg _), ?_⟩
          have : ‖w‖ = ‖c (Fin.last n)‖ * ‖a⁻¹ * w‖ := by
            rw [norm_mul, norm_inv, hna, ← mul_assoc, mul_inv_cancel₀ (norm_ne_zero_iff.2 hc),
              one_mul]
          rw [this]; exact mul_le_mul_of_nonneg_left h2 (norm_nonneg _)
      refine Fin.lastCases ?_ (fun k => ?_) j
      · simpa using key.1
      · simp only [Fin.snoc_castSucc]
        exact (horth (fun i => c i.castSucc) k).trans key.2

private lemma exists_rescale_norm_mem_Ioc (l : ℕ) [Fact l.Prime] (x : ℂ_[l]) (hx : x ≠ 0) :
    ∃ t : ℚ_[l], t ≠ 0 ∧ (l : ℝ)⁻¹ < ‖algebraMap ℚ_[l] ℂ_[l] t * x‖ ∧
      ‖algebraMap ℚ_[l] ℂ_[l] t * x‖ ≤ 1 := by
  have hl : (1 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).one_lt
  have hlpos : (0 : ℝ) < l := zero_lt_one.trans hl
  obtain ⟨n, h1, h2⟩ := exists_mem_Ioc_zpow (norm_pos_iff.2 hx) hl
  have hN : ‖algebraMap ℚ_[l] ℂ_[l] ((l : ℚ_[l]) ^ (n + 1)) * x‖ = ‖x‖ / (l : ℝ) ^ (n + 1) := by
    rw [norm_mul, norm_algebraMap', norm_zpow, Padic.norm_p, inv_zpow, div_eq_inv_mul]
  refine ⟨(l : ℚ_[l]) ^ (n + 1), zpow_ne_zero _ (by exact_mod_cast (Fact.out : l.Prime).ne_zero),
    ?_, ?_⟩
  · rw [hN, lt_div_iff₀ (zpow_pos hlpos _), zpow_add_one₀ hlpos.ne', mul_comm _ (l : ℝ), ← mul_assoc,
      inv_mul_cancel₀ hlpos.ne', one_mul]
    exact h1
  · rw [hN, div_le_one (zpow_pos hlpos _)]
    exact h2

private lemma exists_sorted_orthogonal_family_in_span (l : ℕ) [Fact l.Prime] (h : ℕ) (μ : Fin h → ℂ_[l])
    (hμ : LinearIndependent ℚ_[l] μ) :
    ∃ v : Fin h → ℂ_[l], (∀ i, v i ∈ Submodule.span ℚ_[l] (Set.range μ)) ∧
      (∀ i, v i ≠ 0 ∧ ‖v i‖ ≤ 1) ∧ (∀ i, (l : ℝ)⁻¹ < ‖v i‖) ∧ Antitone (fun i => ‖v i‖) ∧
      ∀ (c : Fin h → ℚ_[l]) (j : Fin h),
        ‖c j‖ * ‖v j‖ ≤ ‖∑ i, algebraMap ℚ_[l] ℂ_[l] (c i) * v i‖ := by
  obtain ⟨u, huS, hu0, horth⟩ := exists_orthogonal_family_in_span l h μ hμ
  choose t ht0 htlo hthi using fun i => exists_rescale_norm_mem_Ioc l (u i) (hu0 i)
  set w : Fin h → ℂ_[l] := fun i => algebraMap ℚ_[l] ℂ_[l] (t i) * u i with hw_def
  have hworth : ∀ (c : Fin h → ℚ_[l]) (j : Fin h),
      ‖c j‖ * ‖w j‖ ≤ ‖∑ i, algebraMap ℚ_[l] ℂ_[l] (c i) * w i‖ := by
    intro c j
    have := horth (fun i => c i * t i) j
    simp only [hw_def, map_mul, mul_assoc, norm_mul, norm_algebraMap'] at this ⊢
    exact this
  set σ := Tuple.sort (fun i => -‖w i‖)
  refine ⟨fun i => w (σ i), fun i => ?_, fun i => ⟨?_, hthi _⟩, fun i => htlo _, ?_, fun c j => ?_⟩
  · simp only [hw_def]
    rw [← Algebra.smul_def]
    exact Submodule.smul_mem _ _ (huS _)
  · simp only [hw_def]
    intro h0
    have := congrArg norm h0
    rw [norm_zero] at this
    exact (lt_irrefl (0 : ℝ)) ((inv_pos.2 (by exact_mod_cast (Fact.out : l.Prime).pos)).trans
      (this ▸ htlo (σ i)))
  · intro a b hab
    exact neg_le_neg_iff.1 (Tuple.monotone_sort (fun i => -‖w i‖) hab)
  · have := hworth (fun k => c (σ.symm k)) (σ j)
    rw [← Equiv.sum_comp σ] at this
    simpa using this

theorem _root_.GlobalTheory.PMonE.OrthBasis.exists_orthBasis : ∀ (l : ℕ) [Fact l.Prime] (h : ℕ) (μ : Fin h → ℂ_[l]), (∀ c : Fin h → ℚ_[l], ∑ j, algebraMap ℚ_[l] ℂ_[l] (c j) * μ j = 0 → c = 0) → ∃ (P : Matrix (Fin h) (Fin h) ℚ_[l]) (μ' : Fin h → ℂ_[l]), P.det ≠ 0 ∧ (∀ i, μ' i = ∑ j, algebraMap ℚ_[l] ℂ_[l] (P i j) * μ j) ∧ (∀ i, μ' i ≠ 0 ∧ ‖μ' i‖ ≤ 1) ∧ Antitone (fun i => ‖μ' i‖) ∧ (∀ i j, ‖μ' i‖ < l * ‖μ' j‖) ∧ ∀ (c : Fin h → ℚ_[l]) (j : Fin h), ‖c j‖ * ‖μ' j‖ ≤ ‖∑ i, algebraMap ℚ_[l] ℂ_[l] (c i) * μ' i‖ := by
  intro l _ h μ hind
  classical
  have hμ : LinearIndependent ℚ_[l] μ := by
    rw [Fintype.linearIndependent_iff]
    intro g hg
    have := hind g (by simpa [Algebra.smul_def] using hg)
    simp [this]
  obtain ⟨v, hvS, hv1, hvlo, hanti, horth⟩ := exists_sorted_orthogonal_family_in_span l h μ hμ
  choose P hP using fun i => (Submodule.mem_span_range_iff_exists_fun ℚ_[l]).1 (hvS i)
  have hlpos : (0 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).pos
  refine ⟨Matrix.of P, v, ?_, fun i => ?_, hv1, hanti, fun i j => ?_, horth⟩
  · intro hdet
    obtain ⟨w, hw0, hwP⟩ := Matrix.exists_vecMul_eq_zero_iff.2 hdet
    have hcol : ∀ j, ∑ i, w i * P i j = 0 := fun j => by
      simpa [Matrix.vecMul, dotProduct] using congrFun hwP j
    have hsum : ∑ i, algebraMap ℚ_[l] ℂ_[l] (w i) * v i = 0 := by
      simp_rw [← Algebra.smul_def, ← hP, Finset.smul_sum, smul_smul]
      rw [Finset.sum_comm]
      simp_rw [← Finset.sum_smul, hcol, zero_smul, Finset.sum_const_zero]
    apply hw0
    funext j
    have h1 := horth w j
    rw [hsum, norm_zero] at h1
    have h2 : 0 < ‖v j‖ := norm_pos_iff.2 (hv1 j).1
    have h3 : ‖w j‖ = 0 := le_antisymm (by nlinarith [norm_nonneg (w j)]) (norm_nonneg _)
    simpa using h3
  · rw [← hP i]
    simp [Algebra.smul_def]
  · calc ‖v i‖ ≤ 1 := (hv1 i).2
      _ = (l : ℝ) * (l : ℝ)⁻¹ := (mul_inv_cancel₀ hlpos.ne').symm
      _ < (l : ℝ) * ‖v j‖ := mul_lt_mul_of_pos_left (hvlo j) hlpos

end GlobalTheory.PMonE.OrthBasis
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSortedNormalizedOrthBasisComplexPAdic =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNonzeroFrobVectorResidueZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNonzeroFrobVectorResidueZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TwistStep\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ImportsAlt\npublic import Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FiltrationZeroMembership\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BcrisPlusFrobeniusStableSubringInFilZero\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmSt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisPlusSeriesWithThetaResidues\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsOrthogonalFamilyResidueZeros\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSortedNormalizedOrthBasisComplexPAdic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UntiltFrobeniusSeriesLinearIndependentOfFirstTer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations GlobalTheory.Pst GlobalTheory.PMon TensorProduct
open scoped Formalism.Per

namespace GlobalTheory.PMonII

open GlobalTheory.PSer

theorem sh_le_sh_nsmul {l : ℕ} [Fact l.Prime] (y : Formalism.Per.Fl l) (n : ℕ) (hn : ¬ l ∣ n) :
    ‖sh y‖ ≤ ‖sh (n • y)‖ := by
  have hn0 : (n : ZMod l) ≠ 0 := by rwa [Ne, ZMod.natCast_eq_zero_iff]
  set m := ((n : ZMod l)⁻¹).val with hm
  have hmnZ : ((m * n : ℕ) : ZMod l) = ((1 : ℕ) : ZMod l) := by
    push_cast
    rw [hm, ZMod.natCast_zmod_val, inv_mul_cancel₀ hn0]
  have hmn : ((m * n : ℕ) : Formalism.Per.Fl l) = 1 := by
    rw [← Nat.cast_one, CharP.natCast_eq_natCast (Formalism.Per.Fl l) l]
    exact (ZMod.natCast_eq_natCast_iff _ _ _).1 hmnZ
  have hy : y = (m : Formalism.Per.Fl l) * (n • y) := by
    rw [nsmul_eq_mul, ← mul_assoc, ← Nat.cast_mul, hmn, one_mul]
  have hmul : ∀ a b : Formalism.Per.Fl l, sh (a * b) = sh a * sh b := by
    intro a b; simp [sh, map_mul]
  have hle : ∀ x : Formalism.Per.Fl l, ‖sh x‖ ≤ 1 := fun x => (GlobalTheory.RingBasics.mem_OC _).1 (PreTilt.untilt x).2
  calc ‖sh y‖ = ‖sh (m : Formalism.Per.Fl l)‖ * ‖sh (n • y)‖ := by
        conv_lhs => rw [hy]
        rw [hmul, norm_mul]
    _ ≤ 1 * ‖sh (n • y)‖ := mul_le_mul_of_nonneg_right (hle _) (norm_nonneg _)
    _ = ‖sh (n • y)‖ := one_mul _

theorem ev_algebraMap {l : ℕ} [Fact l.Prime] (P : LocPrime l) (m : ℕ) (q : ℚ_[l]) :
    ev P m (algebraMap ℚ_[l] P.R.B q) = algebraMap ℚ_[l] P.R.BdR q := by
  rw [ev, ← AlgHom.coe_pow, AlgHom.commutes, AlgHom.commutes]

end GlobalTheory.PMonII

namespace GlobalTheory.PMonII

open GlobalTheory.PSer

theorem exII : ExII := by
  intro l _ P AI T h hh lam hlam hind
  obtain ⟨S, θ, hS, hker, hQ, hser⟩ := _root_.GlobalTheory.PSer.series_residues l P AI T
  obtain ⟨-, hPev, hPring, hPq, -, -⟩ := GlobalTheory.PMon.CrisPlus.plus_props l P AI T
  have hθq : ∀ (c : ℚ_[l]) (hm : algebraMap ℚ_[l] P.R.BdR c ∈ S),
      θ ⟨_, hm⟩ = algebraMap ℚ_[l] ℂ_[l] c := by
    intro c hm; obtain ⟨_, h'⟩ := hQ c; exact h'
  have hqS : ∀ c : ℚ_[l], algebraMap ℚ_[l] P.R.BdR c ∈ S := fun c => (hS _).2 (q_mem_Fil P c)
  have hlS : ∀ j, lam j ∈ S := fun j => (hS _).2 (hlam j)
  let μ : Fin h → ℂ_[l] := fun j => θ ⟨lam j, hlS j⟩
  have hμind : ∀ c : Fin h → ℚ_[l], ∑ j, algebraMap ℚ_[l] ℂ_[l] (c j) * μ j = 0 → c = 0 := by
    intro c hc
    apply hind c
    have hm : ∑ j, c j • lam j ∈ S := S.sum_mem fun j _ => by
      rw [Algebra.smul_def]; exact S.mul_mem (hqS _) (hlS j)
    have he : (⟨_, hm⟩ : S) = ∑ j, (⟨_, hqS (c j)⟩ : S) * ⟨lam j, hlS j⟩ := by
      apply Subtype.ext; simp [Algebra.smul_def]
    have h0 : θ ⟨_, hm⟩ = 0 := by

      rw [he, map_sum, ← hc]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [map_mul, hθq]
    exact (hker ⟨_, hm⟩).1 h0
  obtain ⟨Pm, μ', hdet, hμ', hnorm, hanti, hlt, horth⟩ := _root_.GlobalTheory.PMonE.OrthBasis.exists_orthBasis l h μ hμind
  obtain ⟨y, j0, r, R, hr0, hr1, hR1, hyR, hyr, hy0, hzero⟩ :=
    _root_.GlobalTheory.CoreOrth.residue_zeros l h μ' hh hnorm hanti hlt horth
  have hb : ∀ k : Fin h, ∃ b : P.R.B, Plus T b ∧ P.φB^[h] b = (l : P.R.B) * b ∧
      ∀ j : ℕ, ∃ hm, θ ⟨ev P j b, hm⟩ = abelian₂ h j (y k) :=
    fun k => hser h R (y k) hh hR1 (hyR k)
  choose b hbP hbφ hbθ using hb
  choose hbm hθb using hbθ

  have hbne : b j0 ≠ 0 := by
    intro h0
    have hc := _root_.GlobalTheory.PSer.Lam_indep_of_first_terms l h 1 r (fun _ => y j0) hh hr0 hr1 (fun _ k => hyr k) ?_ (fun _ => 1) ?_
    · exact one_ne_zero (congrFun hc 0)
    · intro n hn a
      by_contra hd
      have ha : a = 0 := Subsingleton.elim _ _
      subst ha
      have hle := sh_le_sh_nsmul (y j0 0) (n 0) hd
      simp only [Finset.univ_unique, Finset.sum_singleton] at hn
      have : (default : Fin 1) = 0 := rfl
      rw [this] at hn
      linarith
    · intro j _
      have e : (⟨ev P j (b j0), hbm j0 j⟩ : S) = 0 := Subtype.ext (by
        simp only [h0, ZeroMemClass.coe_zero, ← evHom_apply, map_zero])
      have hL : abelian₂ h j (y j0) = 0 := by rw [← hθb j0 j, e, map_zero]
      simp [hL]
  let a : Fin h → P.R.B := fun j => ∑ k, algebraMap ℚ_[l] P.R.B (Pm k j) * b k
  have hplus0 : Plus T (0 : P.R.B) := by simpa using hPq 0
  have hev : ∀ (i : ℕ) (j : Fin h), ev P i (a j) = ∑ k, algebraMap ℚ_[l] P.R.BdR (Pm k j) * ev P i (b k) := by
    intro i j

    simp only [a, ← evHom_apply, map_sum, map_mul]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [evHom_apply, evHom_apply, ev_algebraMap]
  refine ⟨a, ?_, ?_, ?_, ?_⟩
  ·
    intro ha
    apply hbne
    have hinv : Pm * Pm⁻¹ = 1 := Matrix.mul_nonsing_inv _ (isUnit_iff_ne_zero.2 hdet)
    have key : ∑ j, algebraMap ℚ_[l] P.R.B (Pm⁻¹ j j0) * a j = b j0 := by
      simp only [a, Finset.mul_sum, ← mul_assoc, ← map_mul]
      rw [Finset.sum_comm]
      have : ∀ k, ∑ j, algebraMap ℚ_[l] P.R.B (Pm⁻¹ j j0 * Pm k j) * b k =
          algebraMap ℚ_[l] P.R.B ((Pm * Pm⁻¹) k j0) * b k := by
        intro k

        rw [← Finset.sum_mul, ← map_sum, Matrix.mul_apply]
        simp only [mul_comm]
      simp only [this, hinv, Matrix.one_apply]
      simp
    rw [← key]
    simp [ha]
  · intro j
    refine Finset.sum_induction _ (Plus T) (fun x y hx hy => (hPring x y hx hy).1) hplus0 fun k _ => ?_
    exact (hPring _ _ (hPq _) (hbP k)).2
  · intro j
    simp only [a]

    rw [← AlgHom.coe_pow, map_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [map_mul, AlgHom.commutes, AlgHom.coe_pow, hbφ k]
    ring
  · intro i
    have hX : ∑ j, lam j * ev P i (a j) ∈ S := S.sum_mem fun j _ => S.mul_mem (hlS j) (by
      rw [hev]; exact S.sum_mem fun k _ => S.mul_mem (hqS _) (hbm k i))
    apply (hker ⟨_, hX⟩).1
    have he : (⟨_, hX⟩ : S) = ∑ j, ∑ k, (⟨lam j, hlS j⟩ : S) * ((⟨_, hqS (Pm k j)⟩ : S) * ⟨_, hbm k i⟩) := by
      apply Subtype.ext
      simp only [hev, Finset.mul_sum]
      simp
    rw [he]

    simp only [map_sum, map_mul, hθq, hθb]
    rw [Finset.sum_comm]
    rw [← hzero i]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [hμ' k, Finset.sum_mul]
    refine Finset.sum_congr rfl fun j _ => ?_
    simp only [μ]
    ring

end GlobalTheory.PMonII
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNonzeroFrobVectorResidueZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSecondKindMatrixMooreDetNeZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSecondKindMatrixMooreDetNeZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmSt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BcrisPlusFrobeniusStableSubringInFilZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DeRhamPeriodRingFieldTPowFiltrationUnits\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfFrobeniusPeriodicMemDeRhamFilZero\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TwistStep\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNonzeroFrobVectorResidueZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MooreDeterminantCrisPlusNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Dimension.OrzechProperty\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations GlobalTheory.Pst GlobalTheory.PMon TensorProduct
open scoped Formalism.Per

noncomputable section
namespace GlobalTheory.SecondKind

variable {l : ℕ} [Fact l.Prime] (P : LocPrime l)

theorem fil_add {a : ℤ} {x y : P.R.BdR} (hx : x ∈ Fil P a) (hy : y ∈ Fil P a) : x + y ∈ Fil P a :=
  ((P.PD (botExt l)).Fil a).add_mem hx hy

theorem fil_zero (a : ℤ) : (0 : P.R.BdR) ∈ Fil P a := ((P.PD (botExt l)).Fil a).zero_mem

theorem fil_sum {a : ℤ} {ι : Type} (s : Finset ι) (f : ι → P.R.BdR) (hf : ∀ i ∈ s, f i ∈ Fil P a) :
    ∑ i ∈ s, f i ∈ Fil P a := ((P.PD (botExt l)).Fil a).sum_mem hf

theorem fil_smul {a : ℤ} (q : ℚ_[l]) {x : P.R.BdR} (hx : x ∈ Fil P a) : q • x ∈ Fil P a :=
  ((P.PD (botExt l)).Fil a).smul_of_tower_mem q hx

theorem fil_mul {a b : ℤ} {x y : P.R.BdR} (hx : x ∈ Fil P a) (hy : y ∈ Fil P b) : x * y ∈ Fil P (a + b) :=
  (P.PD (botExt l)).Fil_mul a b x y hx hy

theorem fil_one : (1 : P.R.BdR) ∈ Fil P 0 := (P.PD (botExt l)).one_mem

theorem fil_natCast_mul {a : ℤ} (n : ℕ) {x : P.R.BdR} (hx : x ∈ Fil P a) : (n : P.R.BdR) * x ∈ Fil P a := by
  rw [← nsmul_eq_mul]; exact ((P.PD (botExt l)).Fil a).toAddSubmonoid.nsmul_mem hx n

theorem iter_smul (n : ℕ) (q : ℚ_[l]) (x : P.R.B) : P.φB^[n] (q • x) = q • P.φB^[n] x := by
  induction n generalizing x with
  | zero => rfl
  | succ n ih => rw [Function.iterate_succ_apply, Function.iterate_succ_apply, map_smul, ih]

theorem iter_add (n : ℕ) (x y : P.R.B) : P.φB^[n] (x + y) = P.φB^[n] x + P.φB^[n] y := by
  induction n generalizing x y with
  | zero => rfl
  | succ n ih => rw [Function.iterate_succ_apply, Function.iterate_succ_apply, Function.iterate_succ_apply, map_add (f := _), ih]

def phiN (n : ℕ) : P.R.B →+* P.R.B := (P.φB : P.R.B →+* P.R.B) ^ n

theorem phiN_apply (n : ℕ) (x : P.R.B) : phiN P n x = P.φB^[n] x := by
  simp only [phiN, RingHom.coe_pow]; rfl

theorem iter_natCast (n m : ℕ) : P.φB^[n] (m : P.R.B) = m := by
  rw [← phiN_apply, map_natCast]

theorem iter_mul (n : ℕ) (x y : P.R.B) : P.φB^[n] (x * y) = P.φB^[n] x * P.φB^[n] y := by
  rw [← phiN_apply, map_mul, phiN_apply, phiN_apply]

theorem ev_mul (n : ℕ) (x y : P.R.B) : ev P n (x * y) = ev P n x * ev P n y := by
  simp only [ev, iter_mul, map_mul]

theorem ev_smul (n : ℕ) (q : ℚ_[l]) (x : P.R.B) : ev P n (q • x) = q • ev P n x := by
  simp only [ev, iter_smul, map_smul]

theorem ev_add (n : ℕ) (x y : P.R.B) : ev P n (x + y) = ev P n x + ev P n y := by
  simp only [ev, iter_add, map_add (f := _)]

theorem crisFrobenius_cyclotomicPeriod : P.φB P.tB = (l : P.R.B) * P.tB := by
  have h := (P.PD (botExt l)).t_φ
  rw [P.PD_φ, P.period_datum_t_eq, P.PD_p, Algebra.smul_def, map_natCast] at h
  exact h

theorem crisFrobenius_iterate_cyclotomicPeriod (n : ℕ) : P.φB^[n] P.tB = (l : P.R.B) ^ n * P.tB := by
  induction n with
  | zero => simp
  | succ n ih => rw [Function.iterate_succ_apply', ih, map_mul, map_pow, map_natCast, crisFrobenius_cyclotomicPeriod]; ring

end GlobalTheory.SecondKind
end

noncomputable section
namespace GlobalTheory.SecondKind

variable {l : ℕ} [Fact l.Prime] (P : LocPrime l)

def fil0 : Subring P.R.BdR where
  carrier := Fil P 0
  mul_mem' := fun hx hy => by simpa using fil_mul P hx hy
  one_mem' := fil_one P
  add_mem' := fun hx hy => fil_add P hx hy
  zero_mem' := fil_zero P 0
  neg_mem' := fun hx => ((P.PD (botExt l)).Fil 0).neg_mem hx

theorem det_mul_mem {k : ℕ} (M : Matrix (Fin k) (Fin k) P.R.BdR) (hM : ∀ i m, M i m ∈ Fil P 0)
    (v : Fin k → P.R.BdR) (hv : ∀ i, M.mulVec v i ∈ Fil P 1) (m : Fin k) : M.det * v m ∈ Fil P 1 := by
  let M' : Matrix (Fin k) (Fin k) (fil0 P) := fun i m => ⟨M i m, hM i m⟩
  have hMM : M = (fil0 P).subtype.mapMatrix M' := by ext i m; rfl
  have hadj : ∀ i, M.adjugate m i ∈ Fil P 0 := by
    intro i
    rw [hMM, ← RingHom.map_adjugate]
    exact (M'.adjugate m i).2
  have key : M.det * v m = (M.adjugate.mulVec (M.mulVec v)) m := by
    rw [Matrix.mulVec_mulVec, Matrix.adjugate_mul, Matrix.smul_mulVec, Matrix.one_mulVec]
    rfl
  rw [key]
  show ∑ i, M.adjugate m i * M.mulVec v i ∈ Fil P 1
  refine fil_sum P _ _ fun i _ => ?_
  simpa using fil_mul P (hadj i) (hv i)

end GlobalTheory.SecondKind
end

noncomputable section
namespace GlobalTheory.SecondKind

variable {l : ℕ} [Fact l.Prime] (P : LocPrime l)

def tI : P.R.B := (((isUnit_tB P).unit⁻¹ : P.R.Bˣ) : P.R.B)

theorem tI_mul : tI P * P.tB = 1 := (isUnit_tB P).val_inv_mul

theorem iter_tI (n : ℕ) : P.φB^[n] (tI P) * ((l : P.R.B) ^ n * P.tB) = 1 := by
  rw [← crisFrobenius_iterate_cyclotomicPeriod, ← iter_mul, tI_mul, ← phiN_apply, map_one]

theorem eq_zero_of_frobeniusImages_mem_filOne {AI : LocAinf l P} (T : LocTied l P AI) (h k : ℕ) (hkh : k < h) (d : P.R.B)
    (hφ : P.φB^[h] d = (l : P.R.B) ^ k * d) (hev : ∀ j, ev P j d ∈ Fil P 1) : d = 0 := by
  have hB := _root_.GlobalTheory.PMon.bdR_tied l P AI T
  have hl0 : ((l : ℚ_[l])) ≠ 0 := by exact_mod_cast (Fact.out : l.Prime).ne_zero

  have hc : (l : P.R.B) ^ (h - k) * P.φB^[h] (d * tI P) = d * tI P := by
    have h1 := iter_tI P h
    rw [iter_mul, hφ]
    have h2 : (l : P.R.B) ^ h * P.φB^[h] (tI P) = tI P := by
      calc (l : P.R.B) ^ h * P.φB^[h] (tI P) = (l : P.R.B) ^ h * P.φB^[h] (tI P) * (P.tB * tI P) := by
            rw [mul_comm P.tB, tI_mul, mul_one]
        _ = (P.φB^[h] (tI P) * ((l : P.R.B) ^ h * P.tB)) * tI P := by ring
        _ = tI P := by rw [h1, one_mul]
    calc (l : P.R.B) ^ (h - k) * ((l : P.R.B) ^ k * d * P.φB^[h] (tI P))
        = d * ((l : P.R.B) ^ (h - k + k) * P.φB^[h] (tI P)) := by rw [pow_add]; ring
      _ = d * tI P := by rw [Nat.sub_add_cancel hkh.le, h2]

  have hcf : ∀ j < h, ev P j (d * tI P) ∈ Fil P 0 := by
    intro j _
    have hiff := (hB.2.2.1 0 1 (ev P j (d * tI P)))
    rw [hiff, hB.2.2.2.2.2.2.2.2.2.2, ev_mul]
    have e1 : ev P j (tI P) * (((l : P.R.BdR)) ^ j * P.ιB P.tB) = 1 := by
      have := congrArg P.ιB (iter_tI P j)
      rwa [map_mul, map_one, map_mul, map_pow, map_natCast] at this
    have e2 : P.ιB P.tB * ev P j (tI P) = algebraMap ℚ_[l] P.R.BdR (((l : ℚ_[l]) ^ j)⁻¹) := by
      have hq : ((l : P.R.BdR)) ^ j * algebraMap ℚ_[l] P.R.BdR (((l : ℚ_[l]) ^ j)⁻¹) = 1 := by
        rw [← map_natCast (algebraMap ℚ_[l] P.R.BdR), ← map_pow, ← map_mul,
          mul_inv_cancel₀ (pow_ne_zero _ hl0), map_one]
      calc P.ιB P.tB * ev P j (tI P)
          = P.ιB P.tB * ev P j (tI P) * ((l : P.R.BdR) ^ j * algebraMap ℚ_[l] P.R.BdR (((l : ℚ_[l]) ^ j)⁻¹)) := by
            rw [hq, mul_one]
        _ = (ev P j (tI P) * ((l : P.R.BdR) ^ j * P.ιB P.tB)) * algebraMap ℚ_[l] P.R.BdR (((l : ℚ_[l]) ^ j)⁻¹) := by ring
        _ = _ := by rw [e1, one_mul]
    have : P.ιB P.tB * (ev P j d * ev P j (tI P)) = ((l : ℚ_[l]) ^ j)⁻¹ • ev P j d := by
      rw [Algebra.smul_def, ← e2]; ring
    rw [this]
    simpa using fil_smul P (((l : ℚ_[l]) ^ j)⁻¹) (hev j)
  have hz := _root_.GlobalTheory.PMon.no_fil_zero_neg_slope l P AI T h (h - k) (by omega) (by omega) (d * tI P) hc hcf
  calc d = d * tI P * P.tB := by rw [mul_assoc, tI_mul, mul_one]
    _ = 0 := by rw [hz, zero_mul]

end GlobalTheory.SecondKind
end

noncomputable section
namespace GlobalTheory.SecondKind

variable {l : ℕ} [Fact l.Prime] (P : LocPrime l)

def evL (n : ℕ) : P.R.B →ₗ[ℚ_[l]] P.R.BdR where
  toFun := ev P n
  map_add' := ev_add P n
  map_smul' := ev_smul P n

theorem ev_shift (h i : ℕ) (x : P.R.B) (hx : P.φB^[h] x = (l : P.R.B) * x) :
    ev P (i + h) x = (l : P.R.BdR) * ev P i x := by
  simp only [ev]
  rw [Function.iterate_add_apply, hx, iter_mul, iter_natCast, map_mul, map_natCast]

theorem sum_all (h : ℕ) (hh : 0 < h) (lam : Fin h → P.R.BdR) (a : Fin h → P.R.B)
    (haφ : ∀ j, P.φB^[h] (a j) = (l : P.R.B) * a j)
    (hs : ∀ i : Fin h, ∑ j, lam j * ev P i (a j) ∈ Fil P 1) (i : ℕ) :
    ∑ j, lam j * ev P i (a j) ∈ Fil P 1 := by
  induction i using Nat.strong_induction_on with
  | _ i ih =>
    by_cases hi : i < h
    · exact hs ⟨i, hi⟩
    · have e : i = (i - h) + h := by omega
      have : ∑ j, lam j * ev P i (a j) = (l : P.R.BdR) * ∑ j, lam j * ev P (i - h) (a j) := by
        rw [Finset.mul_sum]
        refine Finset.sum_congr rfl fun j _ => ?_
        rw [e, ev_shift P h (i - h) (a j) (haφ j), Nat.add_sub_cancel]; ring
      rw [this]
      exact fil_natCast_mul P l (ih (i - h) (by omega))

theorem span_props {AI : LocAinf l P} (T : LocTied l P AI) (h : ℕ) (a : Fin h → P.R.B)
    (haP : ∀ j, Plus T (a j)) (haφ : ∀ j, P.φB^[h] (a j) = (l : P.R.B) * a j) (x : P.R.B)
    (hx : x ∈ Submodule.span ℚ_[l] (Set.range a)) :
    Plus T x ∧ P.φB^[h] x = (l : P.R.B) * x := by
  have hp := _root_.GlobalTheory.PMon.CrisPlus.plus_props l P AI T
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨j, rfl⟩ := hx
    exact ⟨haP j, haφ j⟩
  | zero =>
    refine ⟨?_, ?_⟩
    · simpa using hp.2.2.2.1 0
    · rw [← phiN_apply, map_zero, mul_zero]
  | add x y _ _ hx hy =>
    exact ⟨(hp.2.2.1 x y hx.1 hy.1).1, by rw [iter_add, hx.2, hy.2, mul_add]⟩
  | smul q x _ hx =>
    refine ⟨?_, ?_⟩
    · rw [Algebra.smul_def]; exact (hp.2.2.1 _ _ (hp.2.2.2.1 q) hx.1).2
    · rw [iter_smul, hx.2, mul_smul_comm]

end GlobalTheory.SecondKind
end

noncomputable section
namespace GlobalTheory.SecondKind

variable {l : ℕ} [Fact l.Prime] (P : LocPrime l)

theorem dep_false {AI : LocAinf l P} (T : LocTied l P AI) (h : ℕ) (hh : 2 ≤ h) (lam : Fin h → P.R.BdR)
    (hlam : ∀ j, lam j ∈ Fil P 0) (hind : ∀ c : Fin h → ℚ_[l], ∑ j, c j • lam j ∈ Fil P 1 → c = 0)
    (a : Fin h → P.R.B) (ha0 : a ≠ 0) (haP : ∀ j, Plus T (a j))
    (haφ : ∀ j, P.φB^[h] (a j) = (l : P.R.B) * a j)
    (hs : ∀ i : Fin h, ∑ j, lam j * ev P i (a j) ∈ Fil P 1) (hli : ¬ LinearIndependent ℚ_[l] a) : False := by
  have hB := _root_.GlobalTheory.PMon.bdR_tied l P AI T
  have hp := _root_.GlobalTheory.PMon.CrisPlus.plus_props l P AI T
  let V := Submodule.span ℚ_[l] (Set.range a)
  haveI : FiniteDimensional ℚ_[l] V := FiniteDimensional.span_of_finite ℚ_[l] (Set.finite_range a)
  let k := Module.finrank ℚ_[l] V
  let bas : Module.Basis (Fin k) ℚ_[l] V := Module.finBasis ℚ_[l] V
  let b : Fin k → P.R.B := fun m => (bas m : P.R.B)
  have hkh : k < h := by
    have h1 : k ≤ h := (by simpa using finrank_range_le_card (R := ℚ_[l]) a : Set.finrank ℚ_[l] (Set.range a) ≤ h)
    rcases h1.lt_or_eq with h1 | h1
    · exact h1
    · exfalso; apply hli
      rw [linearIndependent_iff_card_eq_finrank_span, Fintype.card_fin]; exact h1.symm
  have hk0 : 0 < k := by
    rcases Nat.eq_zero_or_pos k with h0 | h0
    · exfalso; apply ha0
      have hbot : V = ⊥ := Submodule.finrank_eq_zero.mp h0
      funext j
      have : a j ∈ V := Submodule.subset_span ⟨j, rfl⟩
      rw [hbot, Submodule.mem_bot] at this
      exact this
    · exact h0
  let c : Fin h → Fin k → ℚ_[l] := fun j m => bas.repr ⟨a j, Submodule.subset_span ⟨j, rfl⟩⟩ m
  have hac : ∀ j, a j = ∑ m, c j m • b m := by
    intro j
    have := congrArg Subtype.val (bas.sum_repr ⟨a j, Submodule.subset_span ⟨j, rfl⟩⟩)
    rw [Submodule.coe_sum] at this
    simpa [c, b] using this.symm
  have hbP : ∀ m, Plus T (b m) ∧ P.φB^[h] (b m) = (l : P.R.B) * b m :=
    fun m => span_props P T h a haP haφ _ (bas m).2
  have hbli : LinearIndependent ℚ_[l] b :=
    bas.linearIndependent.map' V.subtype V.ker_subtype
  have hd := _root_.GlobalTheory.PMon.moore_statement l P AI T h k hkh.le b (fun m => (hbP m).1) (fun m => (hbP m).2) hbli
  let lam' : Fin k → P.R.BdR := fun m => ∑ j, c j m • lam j
  have hlam'0 : ∀ m, lam' m ∈ Fil P 0 := fun m => fil_sum P _ _ fun j _ => fil_smul P _ (hlam j)
  let m0 : Fin k := ⟨0, hk0⟩
  have hm0 : lam' m0 ∉ Fil P 1 := by
    intro hmem
    have hz := hind (fun j => c j m0) hmem
    have hle : Submodule.span ℚ_[l] ((Subtype.val : V → P.R.B) ⁻¹' Set.range a) ≤
        LinearMap.ker (bas.coord m0) := by
      rw [Submodule.span_le]
      rintro x ⟨j, hj⟩
      have hx : x = ⟨a j, Submodule.subset_span ⟨j, rfl⟩⟩ := Subtype.ext hj.symm
      subst hx
      show bas.coord m0 _ = 0
      rw [Module.Basis.coord_apply]
      exact congrFun hz j
    rw [Submodule.span_span_coe_preimage] at hle
    have := hle (Submodule.mem_top (x := bas m0))
    rw [LinearMap.mem_ker, Module.Basis.coord_apply, Module.Basis.repr_self, Finsupp.single_eq_same] at this
    exact one_ne_zero this
  have hsum' : ∀ i : ℕ, ∑ m, lam' m * ev P i (b m) ∈ Fil P 1 := by
    intro i
    have e : ∑ j, lam j * ev P i (a j) = ∑ m, lam' m * ev P i (b m) := by
      calc ∑ j, lam j * ev P i (a j) = ∑ j, lam j * evL P i (∑ m, c j m • b m) :=
            Finset.sum_congr rfl fun j _ => by rw [← hac j]; rfl
        _ = ∑ j, ∑ m, (c j m • lam j) * ev P i (b m) := by
            refine Finset.sum_congr rfl fun j _ => ?_

            rw [map_sum, Finset.mul_sum]
            refine Finset.sum_congr rfl fun m _ => ?_
            rw [map_smul, mul_smul_comm, smul_mul_assoc]; rfl
        _ = ∑ m, lam' m * ev P i (b m) := by
            rw [Finset.sum_comm]
            refine Finset.sum_congr rfl fun m _ => ?_
            rw [Finset.sum_mul]
    rw [← e]; exact sum_all P h (by omega) lam a haφ hs i
  have hdet : ∀ j : ℕ, ev P j (Matrix.of fun i m : Fin k => P.φB^[i] (b m)).det ∈ Fil P 1 := by
    intro j
    let M : Matrix (Fin k) (Fin k) P.R.BdR := Matrix.of fun i m => ev P (j + i) (b m)
    have eM : ev P j (Matrix.of fun i m : Fin k => P.φB^[i] (b m)).det = M.det := by
      have : ev P j = ((P.ιB : P.R.B →+* P.R.BdR).comp (phiN P j)) := by
        funext x; simp [ev, phiN_apply]
      rw [this, RingHom.map_det]
      congr 1
      ext i m
      simp [M, ev, phiN_apply, Function.iterate_add_apply]
    rw [eM]
    have hMv : ∀ i, M.mulVec lam' i ∈ Fil P 1 := by
      intro i
      show ∑ m, M i m * lam' m ∈ Fil P 1
      have e : ∑ m, M i m * lam' m = ∑ m, lam' m * ev P (j + i) (b m) :=
        Finset.sum_congr rfl fun m _ => mul_comm _ _
      rw [e]; exact hsum' (j + i)
    have h1 := det_mul_mem P M (fun i m => hp.2.1 _ (hbP m).1 (j + i)) lam' hMv m0
    obtain ⟨y, hy0, hy⟩ := hB.2.2.2.1 (lam' m0) (hlam'0 m0) hm0
    have := fil_mul P h1 hy0
    rw [mul_assoc, hy, mul_one] at this
    simpa using this
  have hdφ : P.φB^[h] (Matrix.of fun i m : Fin k => P.φB^[i] (b m)).det =
      (l : P.R.B) ^ k * (Matrix.of fun i m : Fin k => P.φB^[i] (b m)).det := by
    rw [← phiN_apply, RingHom.map_det]
    have : (phiN P h).mapMatrix (Matrix.of fun i m : Fin k => P.φB^[i] (b m)) =
        (l : P.R.B) • Matrix.of fun i m : Fin k => P.φB^[i] (b m) := by
      ext i m
      simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, Matrix.smul_apply, smul_eq_mul,
        phiN_apply]
      rw [← Function.iterate_add_apply, add_comm, Function.iterate_add_apply, (hbP m).2, iter_mul, iter_natCast]
    rw [this, Matrix.det_smul, Fintype.card_fin]
  exact hd (eq_zero_of_frobeniusImages_mem_filOne P T h k hkh _ hdφ hdet)

end GlobalTheory.SecondKind

namespace GlobalTheory.SecondKind

theorem exists_secondKind : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P) (T : LocTied l P AI) (h : ℕ), 2 ≤ h → ∀ lam : Fin h → P.R.BdR, (∀ j, lam j ∈ Fil P 0) → (∀ c : Fin h → ℚ_[l], ∑ j, c j • lam j ∈ Fil P 1 → c = 0) → ∃ a : Fin h → P.R.B, (∀ j, P.φB^[h] (a j) = (l : P.R.B) * a j) ∧ (∀ (i : ℕ) j, ev P i (a j) ∈ Fil P 0) ∧ (∀ i : Fin h, ∑ j, lam j * ev P i (a j) ∈ Fil P 1) ∧ (Matrix.of fun i j : Fin h => P.φB^[i] (a j)).det ≠ 0 := by
  intro l _ P AI T h hh lam hlam hind
  obtain ⟨a, ha0, haP, haφ, hs⟩ := _root_.GlobalTheory.PMonII.exII l P AI T h hh lam hlam hind
  refine ⟨a, haφ, fun i j => (_root_.GlobalTheory.PMon.CrisPlus.plus_props l P AI T).2.1 _ (haP j) i, hs, ?_⟩
  by_cases hli : LinearIndependent ℚ_[l] a
  · exact _root_.GlobalTheory.PMon.moore_statement l P AI T h h le_rfl a haP haφ hli
  · exact (dep_false P T h hh lam hlam hind a ha0 haP haφ hs hli).elim

end GlobalTheory.SecondKind
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSecondKindMatrixMooreDetNeZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MooreDeterminantEqUnramifiedMulPeriod =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MooreDeterminantEqUnramifiedMulPeriod", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmSt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DeRhamPeriodRingFieldTPowFiltrationUnits\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedOfFrobeniusIterateFixedFilZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations GlobalTheory.Pst GlobalTheory.PMon TensorProduct
open scoped Formalism.Per

namespace GlobalTheory.PMon

theorem phiB_moore_det {l : ℕ} [Fact l.Prime] (P : LocPrime l) (n : ℕ) (a : Fin (n + 1) → P.R.B)
    (ha : ∀ j, P.φB^[n + 1] (a j) = (l : P.R.B) * a j) :
    P.φB (Matrix.of fun i j : Fin (n + 1) => P.φB^[i] (a j)).det =
      (-1) ^ n * (l : P.R.B) * (Matrix.of fun i j : Fin (n + 1) => P.φB^[i] (a j)).det := by
  set M := Matrix.of fun i j : Fin (n + 1) => P.φB^[i] (a j) with hM
  have h1 : P.φB M.det = (M.map P.φB).det := by
    rw [AlgHom.map_det]; rfl
  have h2 : M.map P.φB = Matrix.diagonal (fun i : Fin (n + 1) => if i = Fin.last n then (l : P.R.B) else 1) *
      M.submatrix (finRotate (n + 1)) id := by
    ext i j
    rw [Matrix.diagonal_mul, Matrix.map_apply, Matrix.submatrix_apply, finRotate_apply, id]
    simp only [hM, Matrix.of_apply]
    rw [← Function.iterate_succ_apply' (f := P.φB)]
    by_cases hi : i = Fin.last n
    · subst hi
      simp [ha]
    · rw [if_neg hi, one_mul, Fin.val_add_one, if_neg hi]
  rw [h1, h2, Matrix.det_mul, Matrix.det_diagonal, Matrix.det_permute, sign_finRotate]
  simp [Finset.prod_ite_eq']
  ring

theorem mooreDeterminant_eq_unramified_mul_period_alt : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P) (T : LocTied l P AI) (h : ℕ), 0 < h → ∀ a : Fin h → P.R.B, (∀ j, P.φB^[h] (a j) = (l : P.R.B) * a j) → (∀ (i : ℕ) j, ev P i (a j) ∈ Fil P 0) → (Matrix.of fun i j : Fin h => P.φB^[i] (a j)).det ≠ 0 → P.ιB (Matrix.of fun i j : Fin h => P.φB^[i] (a j)).det ∈ Fil P 1 → ∃ κ : ↥(MaximalUnramifiedExtension l), κ ≠ 0 ∧ (Matrix.of fun i j : Fin h => P.φB^[i] (a j)).det = algebraMap ↥(MaximalUnramifiedExtension l) P.R.B κ * P.tB := by
  intro l _ P AI T h hh a ha _ hd hF
  obtain ⟨n, rfl⟩ : ∃ n, h = n + 1 := ⟨h - 1, by omega⟩
  set d := (Matrix.of fun i j : Fin (n + 1) => P.φB^[i] (a j)).det with hdd
  have hφd : P.φB d = (-1) ^ n * (l : P.R.B) * d := phiB_moore_det P n a ha
  have ht : IsUnit P.tB := isUnit_tB P
  have hl : IsUnit (l : P.R.B) := by
    have h0 : (l : ℚ_[l]) ≠ 0 := Nat.cast_ne_zero.mpr (Fact.out : l.Prime).ne_zero
    have := (IsUnit.mk0 _ h0).map (algebraMap ℚ_[l] P.R.B)
    rwa [map_natCast] at this
  have hφt : P.φB P.tB = (l : P.R.B) * P.tB := by
    rw [localPrime_frobenius_periodT, Algebra.smul_def, map_natCast]
  set c := d * ((ht.unit⁻¹ : P.R.Bˣ) : P.R.B) with hc
  have hct : c * P.tB = d := by
    rw [hc, mul_assoc, Units.inv_mul_of_eq ht.unit_spec, mul_one]
  have hφc : P.φB c = (-1) ^ n * c := by
    apply (hl.mul ht).mul_right_cancel
    have e := congrArg P.φB hct
    rw [map_mul, hφt, hφd, ← hct] at e
    rw [show P.φB c * ((l : P.R.B) * P.tB) = P.φB c * ((l : P.R.B) * P.tB) from rfl]
    linear_combination e
  have hφ2 : P.φB^[2] c = c := by
    rw [Function.iterate_succ_apply', Function.iterate_one, hφc, map_mul, hφc, map_pow, map_neg, map_one, ← mul_assoc,
      ← mul_pow, neg_one_mul, neg_neg, one_pow, one_mul]
  have hFc : P.ιB c ∈ Fil P 0 := by
    have e : tz P 1 * P.ιB c = P.ιB d := by
      rw [show tz P 1 = P.ιB P.tB by simp [tz], ← map_mul, mul_comm, hct]
    have key := (_root_.GlobalTheory.PMon.bdR_tied l P AI T).2.2.1 0 1 (P.ιB c)
    rw [zero_add, e] at key
    exact key.2 hF
  have hev : ∀ j < 2, ev P j c ∈ Fil P 0 := by
    intro j hj
    interval_cases j
    · simpa [ev] using hFc
    · simp only [ev, Function.iterate_one, hφc, map_mul, map_pow, map_neg, map_one]
      rcases neg_one_pow_eq_or P.R.BdR n with h1 | h1
      · rw [h1, one_mul]; exact hFc
      · rw [h1, neg_one_mul]
        simp only [Fil, SetLike.mem_coe] at hFc ⊢
        exact neg_mem hFc
  obtain ⟨κ, -, hκ⟩ := _root_.GlobalTheory.PMon.unr_of_iterate_fixed l P AI T 2 two_pos c hφ2 hev
  refine ⟨κ, ?_, ?_⟩
  · rintro rfl
    apply hd
    rw [← hct, hκ, map_zero, zero_mul]
  · rw [← hκ, hct]

end GlobalTheory.PMon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MooreDeterminantEqUnramifiedMulPeriod =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FundamentalLemmaLatticeDegreeOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FundamentalLemmaLatticeDegreeOne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TwistStep\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FiltrationZeroMembership\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmSt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BcrisPlusFrobeniusStableSubringInFilZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DeRhamPeriodRingFieldTPowFiltrationUnits\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIndependentFrobSolutionsCrisProof\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSecondKindMatrixMooreDetNeZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MooreDeterminantEqUnramifiedMulPeriod\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MooreDeterminantCrisPlusNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations GlobalTheory.Pst GlobalTheory.PMon TensorProduct
open scoped Formalism.Per

namespace GlobalTheory.PMon.FLOne

variable {l : ℕ} [Fact l.Prime] {P : LocPrime l} {n : Type} [Fintype n] [DecidableEq n]

theorem det_mem (M : Matrix n n P.R.BdR) (hM : ∀ i j, M i j ∈ Fil P 0) : M.det ∈ Fil P 0 := by
  have e : M = (Matrix.of fun i j => (⟨M i j, hM i j⟩ : S0 P)).map (S0 P).subtype := by ext; rfl
  rw [e, ← RingHom.mapMatrix_apply, ← RingHom.map_det]
  exact Subtype.prop _

theorem adj_mem (M : Matrix n n P.R.BdR) (hM : ∀ i j, M i j ∈ Fil P 0) (i j : n) : M.adjugate i j ∈ Fil P 0 := by
  have e : M = (Matrix.of fun i j => (⟨M i j, hM i j⟩ : S0 P)).map (S0 P).subtype := by ext; rfl
  rw [e, ← RingHom.mapMatrix_apply, ← RingHom.map_adjugate]
  exact Subtype.prop _

theorem mul_mem (A B : Matrix n n P.R.BdR) (hA : ∀ i j, A i j ∈ Fil P 0) (hB : ∀ i j, B i j ∈ Fil P 0) (i j : n) :
    (A * B) i j ∈ Fil P 0 := by
  rw [Matrix.mul_apply]
  exact Fil_sum fun k _ => Fil_mul_left (hA i k) (hB k j)

theorem one_not_mem : (1 : P.R.BdR) ∉ Fil P 1 := by
  intro h
  have h1 : (P.PD (botExt l)).ι (P.PD (botExt l)).t ∈ Fil P 1 := (P.PD (botExt l)).mem_filtration_one
  have h2 := Fil_mul h1 h
  rw [mul_one] at h2
  exact (P.PD (botExt l)).not_mem_filtration_two h2

theorem unitM_of (M : Matrix n n P.R.BdR) (hM : ∀ i j, M i j ∈ Fil P 0) (y : P.R.BdR) (hy : y ∈ Fil P 0)
    (h : M.det * y = 1) : ∃ W : GL n P.R.BdR, (W : Matrix n n P.R.BdR) = M ∧ UnitM P W := by
  have hu : IsUnit M.det := (Units.mkOfMulEqOne _ _ h).isUnit
  refine ⟨Matrix.nonsingInvUnit M hu, rfl, hM, fun i j => ?_⟩
  change (M⁻¹ : Matrix n n P.R.BdR) i j ∈ Fil P 0
  have hi : Ring.inverse M.det = y := by
    rw [← mul_one (Ring.inverse _), ← h, ← mul_assoc, Ring.inverse_mul_cancel _ hu, one_mul]
  rw [Matrix.inv_def, hi, Matrix.smul_apply, smul_eq_mul]
  exact Fil_mul_left hy (adj_mem M hM i j)

end GlobalTheory.PMon.FLOne

namespace GlobalTheory.PMon.FLOne

open Matrix

variable {l : ℕ} [Fact l.Prime] {P : LocPrime l} {n : Type} [Fintype n] [DecidableEq n]

theorem det_mem_one {AI : LocAinf l P} (T : LocTied l P AI) (M : Matrix n n P.R.BdR) (v : n → P.R.BdR)
    (hM : ∀ i j, M i j ∈ Fil P 0) (hv : ∀ j, v j ∈ Fil P 0) (k : n) (hk : v k ∉ Fil P 1)
    (h : ∀ i, (M *ᵥ v) i ∈ Fil P 1) : M.det ∈ Fil P 1 := by
  obtain ⟨y, hy, hky⟩ := (_root_.GlobalTheory.PMon.bdR_tied l P AI T).2.2.2.1 (v k) (hv k) hk
  have e : (M.adjugate *ᵥ (M *ᵥ v)) k = M.det * v k := by
    rw [Matrix.mulVec_mulVec, Matrix.adjugate_mul]
    simp [Matrix.smul_mulVec]
  have h3 : (M.adjugate *ᵥ (M *ᵥ v)) k ∈ Fil P 1 := by
    show ∑ j, M.adjugate k j * (M *ᵥ v) j ∈ Fil P 1
    exact Fil_sum fun j _ => Fil_mul_left (adj_mem M hM k j) (h j)
  have e2 : M.det = M.det * v k * y := by rw [mul_assoc, hky, mul_one]
  rw [e2, ← e]
  exact Fil_mul_right h3 hy

theorem det_mem_one' {AI : LocAinf l P} (T : LocTied l P AI) (M : Matrix n n P.R.BdR) (v : n → P.R.BdR)
    (hM : ∀ i j, M i j ∈ Fil P 0) (hv : ∀ j, v j ∈ Fil P 0) (k : n) (hk : v k ∉ Fil P 1)
    (h : ∀ j, (v ᵥ* M) j ∈ Fil P 1) : M.det ∈ Fil P 1 := by
  rw [← Matrix.det_transpose]
  refine det_mem_one T Mᵀ v (fun i j => hM j i) hv k hk fun i => ?_
  rw [Matrix.mulVec_transpose]
  exact h i

end GlobalTheory.PMon.FLOne

namespace GlobalTheory.PMon.FLOne

open Matrix

variable {n : Type} [Fintype n] [DecidableEq n]

theorem inv_mul_fixed {R : Type} [CommRing R] (φ : R →+* R) (A B C : Matrix n n R)
    (hA : IsUnit A.det) (hA' : A.map φ = C * A) (hB : B.map φ = C * B) : (A⁻¹ * B).map φ = A⁻¹ * B := by
  have hφA : IsUnit (A.map φ).det := by
    rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]
    exact hA.map φ
  have e1 : (A⁻¹).map φ = (A.map φ)⁻¹ := by
    refine (Matrix.inv_eq_left_inv ?_).symm
    rw [← Matrix.map_mul, Matrix.nonsing_inv_mul _ hA, Matrix.map_one _ (map_zero φ) (map_one φ)]
  have e2 : C * B = A.map φ * (A⁻¹ * B) := by
    rw [hA', Matrix.mul_assoc, Matrix.mul_nonsing_inv_cancel_left _ _ hA]
  rw [Matrix.map_mul, e1, hB, e2, Matrix.nonsing_inv_mul_cancel_left _ _ hφA]

def comp (R : Type) [CommRing R] (c : R) (h : ℕ) : Matrix (Fin h) (Fin h) R :=
  Matrix.of fun i k => if (i : ℕ) + 1 = k then 1 else if (i : ℕ) + 1 = h ∧ (k : ℕ) = 0 then c else 0

theorem moore_map {R : Type} [CommRing R] (φ : R →+* R) (c : R) (h : ℕ) (a : Fin h → R)
    (ha : ∀ j, φ^[h] (a j) = c * a j) :
    (Matrix.of fun i j : Fin h => φ^[i] (a j)).map φ = comp R c h * Matrix.of fun i j : Fin h => φ^[i] (a j) := by
  ext i j
  rw [Matrix.map_apply, Matrix.of_apply, Matrix.mul_apply, ← Function.iterate_succ_apply' φ]
  by_cases hi : (i : ℕ) + 1 < h
  · rw [Finset.sum_eq_single ⟨(i : ℕ) + 1, hi⟩]
    · simp [comp]
    · intro k _ hk
      have : (i : ℕ) + 1 ≠ k := fun e => hk (Fin.ext e.symm)
      simp [comp, this]
      intro _ h0
      omega
    · simp
  · have hi' : (i : ℕ) + 1 = h := by omega
    rw [Finset.sum_eq_single ⟨0, by omega⟩]
    · simp [comp, hi', ha]
      intro h0
      omega
    · intro k _ hk
      have h1 : (i : ℕ) + 1 ≠ k := by omega
      have h2 : (k : ℕ) ≠ 0 := fun e => hk (Fin.ext e)
      simp [comp, h1, h2]
    · simp
end GlobalTheory.PMon.FLOne

namespace GlobalTheory.PMon.FLOne

open Matrix

variable {n : Type} [Fintype n] [DecidableEq n]

theorem map_inv' {R S : Type} [CommRing R] [CommRing S] (f : R →+* S) (A : Matrix n n R) (hA : IsUnit A.det) :
    (A⁻¹).map f = (A.map f)⁻¹ := by
  refine (Matrix.inv_eq_left_inv ?_).symm
  rw [← Matrix.map_mul, Matrix.nonsing_inv_mul _ hA, Matrix.map_one _ (map_zero f) (map_one f)]

variable {l : ℕ} [Fact l.Prime] {P : LocPrime l}

theorem tz_inv_mem {AI : LocAinf l P} (T : LocTied l P AI) {x : P.R.BdR} (hx : x ∈ Fil P 1) :
    tz P (-1) * x ∈ Fil P 0 := by
  have := ((_root_.GlobalTheory.PMon.bdR_tied l P AI T).2.2.1 1 (-1) x).1 hx
  simpa using this

theorem kd_alg' (q : ℚ_[l]) : kd P (algebraMap ℚ_[l] ↥(MaximalUnramifiedExtension l) q) = algebraMap ℚ_[l] P.R.BdR q := by
  rw [IsScalarTower.algebraMap_apply ℚ_[l] (Om l) P.R.BdR]; rfl

theorem kd_mul_inv {κ : ↥(MaximalUnramifiedExtension l)} (hκ : κ ≠ 0) : kd P κ * kd P κ⁻¹ = 1 := by
  rw [← map_mul, mul_inv_cancel₀ hκ, map_one]

theorem isUnit_algebraMap_unramified_mul_period {κ : ↥(MaximalUnramifiedExtension l)} (hκ : κ ≠ 0) : IsUnit (algebraMap ↥(MaximalUnramifiedExtension l) P.R.B κ * P.tB) :=
  ((Ne.isUnit hκ).map _).mul (isUnit_tB P)

end GlobalTheory.PMon.FLOne

namespace GlobalTheory.PMon.FLOne

open Matrix

theorem flAt_one : FLAt 1 := by
  intro l _ P AI T n _ _ U x y hxy hU hc
  obtain ⟨x1, x2⟩ := x
  obtain ⟨y1, y2⟩ := y
  obtain rfl : x1 = 0 := Subsingleton.elim _ _
  obtain rfl : y1 = 0 := Subsingleton.elim _ _
  have h2 : x2 ≠ y2 := fun e => hxy (by rw [e])
  set h := Fintype.card n with hhdef
  have hh : 2 ≤ h := Fintype.one_lt_card_iff.2 ⟨x2, y2, h2⟩
  let e : n ≃ Fin h := Fintype.equivFin n
  set U0 : Matrix n n P.R.BdR := (U 0 : Matrix n n P.R.BdR) with hU0
  have hI := _root_.GlobalTheory.PMon.bdR_tied l P AI T

  let lam : Fin h → P.R.BdR := fun k => U0 (e.symm k) x2
  have hlam0 : ∀ k, lam k ∈ Fil P 0 := fun k => (hU 0).1 _ _
  have hind : ∀ c : Fin h → ℚ_[l], ∑ j, c j • lam j ∈ Fil P 1 → c = 0 := by
    intro c hcs
    have hc' := hc (fun i => algebraMap ℚ_[l] ↥(MaximalUnramifiedExtension l) (c (e i))) (fun i => fr_q 1 _) (by
      have : ∑ i, kd P (algebraMap ℚ_[l] ↥(MaximalUnramifiedExtension l) (c (e i))) * (U (0 : Fin 1) : Matrix n n P.R.BdR) i x2 =
          ∑ j, c j • lam j := by
        refine Fintype.sum_equiv e _ _ fun i => ?_
        simp [lam, kd_alg', Algebra.smul_def, hU0]
      rw [this]; exact hcs)
    funext k
    have := congrFun hc' (e.symm k)
    simpa using this
  have hunit : ∃ k, lam k ∉ Fil P 1 := by
    by_contra hne
    push_neg at hne
    have := hind (Pi.single ⟨0, by omega⟩ 1) (Fil_sum fun j _ => by
      rw [Algebra.smul_def]; exact Fil_mul_left (q_mem_Fil P _) (hne j))
    simpa using congrFun this ⟨0, by omega⟩
  obtain ⟨a, ha_phi, ha_fil, ha_sum, ha_det⟩ := _root_.GlobalTheory.SecondKind.exists_secondKind l P AI T h hh lam hlam0 hind
  have hdetι : P.ιB (Matrix.of fun i j : Fin h => P.φB^[i] (a j)).det ∈ Fil P 1 := by
    obtain ⟨k, hk⟩ := hunit
    change (P.ιB : P.R.B →+* P.R.BdR) _ ∈ _
    rw [RingHom.map_det]
    refine det_mem_one T _ lam (fun i j => ha_fil i j) hlam0 k hk fun i => ?_
    have := ha_sum i
    simp only [mulVec, dotProduct]
    convert this using 2 with j
    rw [mul_comm]; rfl
  obtain ⟨κ, hκ, hdetA⟩ := _root_.GlobalTheory.PMon.mooreDeterminant_eq_unramified_mul_period_alt l P AI T h (by omega) a ha_phi ha_fil ha_det hdetι

  set Ma : Matrix (Fin h) (Fin h) P.R.B := Matrix.of fun i j : Fin h => P.φB^[i] (a j) with hMa
  set A : Matrix n n P.R.B := Ma.submatrix e e with hA
  have hAdet : A.det = algebraMap ↥(MaximalUnramifiedExtension l) P.R.B κ * P.tB := by rw [hA, Matrix.det_submatrix_equiv_self, hdetA]
  have hAu : IsUnit A.det := by rw [hAdet]; exact isUnit_algebraMap_unramified_mul_period hκ
  set Dx : Matrix n n P.R.BdR := diagonal fun j => if j = x2 then tz P (-1) else 1 with hDx
  set Um : Matrix n n P.R.BdR := A.map P.ιB * U0 * Dx with hUm
  have hAU0 : ∀ i j, (A.map P.ιB * U0) i j ∈ Fil P 0 := mul_mem _ _ (fun i j => ha_fil _ _) (hU 0).1
  have hAU1 : ∀ i, (A.map P.ιB * U0) i x2 ∈ Fil P 1 := by
    intro i
    have := ha_sum (e i)
    rw [Matrix.mul_apply]
    convert this using 1
    refine Fintype.sum_equiv e _ _ fun j => ?_
    simp [lam, hA, hMa, ev, mul_comm]
  have hUm0 : ∀ i j, Um i j ∈ Fil P 0 := by
    intro i j
    rw [hUm, Matrix.mul_diagonal]
    by_cases hj : j = x2
    · subst hj; rw [if_pos rfl, mul_comm]; exact tz_inv_mem T (hAU1 i)
    · rw [if_neg hj, mul_one]; exact hAU0 i j
  have hUmdet : Um.det = kd P κ * U0.det := by
    have hdι : (A.map P.ιB).det = P.ιB A.det := ((P.ιB : P.R.B →+* P.R.BdR).map_det A).symm
    have hDxd : Dx.det = tz P (-1) := by
      rw [hDx, det_diagonal, Finset.prod_ite_eq']; simp
    have ht : tz P 1 * tz P (-1) = 1 := by rw [← tz_add]; simp [tz_zero]
    rw [hUm, det_mul, det_mul, hdι, hDxd, hAdet, map_mul, iota_kur, ← tz_one]
    linear_combination (kd P κ * U0.det) * ht
  have hU0inv : U0 * ((U 0)⁻¹ : GL n P.R.BdR) = 1 := by rw [hU0, ← Units.val_mul, mul_inv_cancel, Units.val_one]
  obtain ⟨U', hU'eq, hU'u⟩ := unitM_of Um hUm0 (kd P κ⁻¹ * Matrix.det (((U 0)⁻¹ : GL n P.R.BdR) : Matrix n n P.R.BdR))
    (Fil_mul_left (kd_mem_Fil P _) (det_mem _ (hU 0).2)) (by
      rw [hUmdet]
      have h1 := kd_mul_inv (P := P) hκ
      have h2 : U0.det * (((U 0)⁻¹ : GL n P.R.BdR) : Matrix n n P.R.BdR).det = 1 := by rw [← det_mul, hU0inv, det_one]
      linear_combination (U0.det * (((U 0)⁻¹ : GL n P.R.BdR) : Matrix n n P.R.BdR).det) * h1 + h2)

  set V : Matrix n n P.R.BdR := ((U'⁻¹ : GL n P.R.BdR) : Matrix n n P.R.BdR) with hV
  have hVU : V * Um = 1 := by rw [hV, ← hU'eq, ← Units.val_mul, inv_mul_cancel, Units.val_one]
  let μ : Fin h → P.R.BdR := fun k => V y2 (e.symm k)
  have hμ0 : ∀ k, μ k ∈ Fil P 0 := fun k => hU'u.2 _ _
  have hμu : ∃ k, μ k ∉ Fil P 1 := by
    by_contra hne
    push_neg at hne
    have h1 : (V * Um) y2 y2 ∈ Fil P 1 := by
      rw [Matrix.mul_apply]
      exact Fil_sum fun j _ => Fil_mul_right (by simpa [μ] using hne (e j)) (hUm0 j y2)
    rw [hVU, Matrix.one_apply_eq] at h1
    exact one_not_mem h1
  obtain ⟨b, hb_plus, hb_phi, hb_ind, hb_sum⟩ := _root_.GlobalTheory.PMon.exI_main l P AI T h hh μ hμ0 hμu
  have hb_det := _root_.GlobalTheory.PMon.moore_statement l P AI T h h le_rfl b hb_plus hb_phi hb_ind
  have hb_fil : ∀ (i : ℕ) j, ev P i (b j) ∈ Fil P 0 := fun i j => (_root_.GlobalTheory.PMon.CrisPlus.plus_props l P AI T).2.1 _ (hb_plus j) i
  have hdetιb : P.ιB (Matrix.of fun i j : Fin h => P.φB^[i] (b j)).det ∈ Fil P 1 := by
    obtain ⟨k, hk⟩ := hμu
    change (P.ιB : P.R.B →+* P.R.BdR) _ ∈ _
    rw [RingHom.map_det]
    refine det_mem_one' T _ μ (fun i j => hb_fil i j) hμ0 k hk fun j => ?_
    change ∑ i, μ i * ev P i (b j) ∈ Fil P 1
    exact hb_sum j
  obtain ⟨κ', hκ', hdetB⟩ := _root_.GlobalTheory.PMon.mooreDeterminant_eq_unramified_mul_period_alt l P AI T h (by omega) b hb_phi hb_fil hb_det hdetιb

  set Mb : Matrix (Fin h) (Fin h) P.R.B := Matrix.of fun i j : Fin h => P.φB^[i] (b j) with hMb
  set Bm : Matrix n n P.R.B := Mb.submatrix e e with hBm
  have hBdet : Bm.det = algebraMap ↥(MaximalUnramifiedExtension l) P.R.B κ' * P.tB := by rw [hBm, Matrix.det_submatrix_equiv_self, hdetB]
  have hBu : IsUnit Bm.det := by rw [hBdet]; exact isUnit_algebraMap_unramified_mul_period hκ'
  set Dy : Matrix n n P.R.BdR := diagonal fun j => if j = y2 then tz P (-1) else 1 with hDy
  set X : Matrix n n P.R.BdR := V * Bm.map P.ιB with hX
  have hX0 : ∀ i j, X i j ∈ Fil P 0 := mul_mem _ _ hU'u.2 (fun i j => hb_fil _ _)
  have hX1 : ∀ j, X y2 j ∈ Fil P 1 := by
    intro j
    have := hb_sum (e j)
    rw [hX, Matrix.mul_apply]
    convert this using 1
    refine Fintype.sum_equiv e _ _ fun i => ?_
    simp [μ, hBm, hMb, ev]
  set Wm : Matrix n n P.R.BdR := Dy * X with hWm
  have hWm0 : ∀ i j, Wm i j ∈ Fil P 0 := by
    intro i j
    rw [hWm, Matrix.diagonal_mul]
    by_cases hi : i = y2
    · subst hi; rw [if_pos rfl]; exact tz_inv_mem T (hX1 j)
    · rw [if_neg hi, one_mul]; exact hX0 i j
  have hVUm : V.det * Um.det = 1 := by rw [← det_mul, hVU, det_one]
  have ht : tz P (-1) * tz P 1 = 1 := by rw [← tz_add]; simp [tz_zero]
  have hWmdet : Wm.det = kd P κ' * V.det := by
    have hdι : (Bm.map P.ιB).det = P.ιB Bm.det := ((P.ιB : P.R.B →+* P.R.BdR).map_det Bm).symm
    have hDyd : Dy.det = tz P (-1) := by
      rw [hDy, det_diagonal, Finset.prod_ite_eq']; simp
    rw [hWm, hX, det_mul, det_mul, hdι, hDyd, hBdet, map_mul, iota_kur, ← tz_one]
    linear_combination (kd P κ' * V.det) * ht
  obtain ⟨W, hWeq, hWu⟩ := unitM_of Wm hWm0 (kd P κ'⁻¹ * Um.det)
    (Fil_mul_left (kd_mem_Fil P _) (det_mem _ hUm0)) (by
      rw [hWmdet]
      have h1 := kd_mul_inv (P := P) hκ'
      linear_combination (V.det * Um.det) * h1 + hVUm)

  have hRu : IsUnit (A⁻¹ * Bm).det := by rw [det_mul]; exact (isUnit_nonsing_inv_det A hAu).mul hBu
  refine ⟨Matrix.nonsingInvUnit (A⁻¹ * Bm) hRu, fun i j => ?_, fun m => ?_⟩
  · set C : Matrix n n P.R.B := (comp P.R.B (l : P.R.B) h).submatrix e e
    have hMa' := moore_map (P.φB : P.R.B →+* P.R.B) (l : P.R.B) h a ha_phi
    have hMb' := moore_map (P.φB : P.R.B →+* P.R.B) (l : P.R.B) h b hb_phi
    have hA' : A.map (P.φB : P.R.B →+* P.R.B) = C * A := by
      rw [hA, ← Matrix.submatrix_map]
      exact (congrArg (fun M => Matrix.submatrix M e e) hMa').trans (Matrix.submatrix_mul_equiv _ _ _ e _).symm
    have hB' : Bm.map (P.φB : P.R.B →+* P.R.B) = C * Bm := by
      rw [hBm, ← Matrix.submatrix_map]
      exact (congrArg (fun M => Matrix.submatrix M e e) hMb').trans (Matrix.submatrix_mul_equiv _ _ _ e _).symm
    have := congrFun (congrFun (inv_mul_fixed (P.φB : P.R.B →+* P.R.B) A Bm C hAu hA' hB') i) j
    exact this
  · obtain rfl : m = 0 := Subsingleton.elim _ _
    refine ⟨W, hWu, ?_⟩
    have hev : ev P ((0 : Fin 1) : ℕ) = P.ιB := funext fun _ => rfl
    have hιAu : IsUnit (A.map P.ιB).det := by
      have h := hAu.map (P.ιB : P.R.B →+* P.R.BdR)
      rw [RingHom.map_det] at h
      exact h
    have hDε : diagonal (fun j => tz P (eps ((0 : Fin 1), x2) ((0 : Fin 1), y2) ((0 : Fin 1), j))) * Dy = Dx := by
      rw [hDy, hDx, diagonal_mul_diagonal]
      congr 1
      funext j
      by_cases hjx : j = x2
      · subst hjx; simp [eps, h2]
      · by_cases hjy : j = y2
        · subst hjy; simp [eps, hjx]; rw [mul_comm]; exact ht
        · simp [eps, hjx, hjy, tz_zero]
    have hUmV : Um * V = 1 := mul_eq_one_comm.1 hVU
    change (A⁻¹ * Bm).map (ev P ((0 : Fin 1) : ℕ)) = U0 * _ * (W : Matrix n n P.R.BdR)
    have hinv : (A⁻¹).map P.ιB = (A.map P.ιB)⁻¹ := map_inv' (P.ιB : P.R.B →+* P.R.BdR) A hAu
    rw [hev, hWeq, Matrix.map_mul, hinv]
    calc (A.map P.ιB)⁻¹ * Bm.map P.ιB = (A.map P.ιB)⁻¹ * (Um * V) * Bm.map P.ιB := by
          rw [hUmV, Matrix.mul_one]
      _ = U0 * Dx * V * Bm.map P.ιB := by
          rw [hUm, Matrix.mul_assoc (A.map P.ιB), Matrix.mul_assoc (A.map P.ιB), ← Matrix.mul_assoc (A.map P.ιB)⁻¹,
            Matrix.nonsing_inv_mul _ hιAu, Matrix.one_mul]
      _ = _ := by
          rw [hWm, hX, ← hDε]
          simp only [Matrix.mul_assoc]

end GlobalTheory.PMon.FLOne
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FundamentalLemmaLatticeDegreeOne =====
