module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.OmegaFactorization
public import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic
public import Mathlib.Data.Nat.Choose.Multinomial
public import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.FundamentalCone
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KFacDifferentiable
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntZEqFourier
public import Mathlib.Analysis.Fourier.FourierTransformDeriv
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContDiffOnHeckeEisensteinFourierTerm
public import Mathlib.Analysis.Calculus.ContDiff.Bounds
public import Mathlib.Analysis.Complex.OperatorNorm
public import Mathlib.Analysis.Calculus.ContDiff.Defs
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsNormEqProd
public import Mathlib.Algebra.Module.ZLattice.Summable
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.NumberTheory.NumberField.Units.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBalancedUnitMultipleTotallyReal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDerivAtHeckeTermDecayIntegrand, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegrableHeckeTermDecayIntegrand, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormHeckeTermDecayFourierIntegralLe, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeYDerivativeTermIntegralPolynomialDecay, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactPiUpperHalfPlaneImBounds, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IteratedDerivHeckePhiFourierTransformBound, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IteratedDerivHeckePhiFourierTransformRepr, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivHeckeFourierFactorLe, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivProdCoordLeLeibniz, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FTermIteratedFDerivBound, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeEisensteinFourierTermMoveUnit, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableHeckeBalancedLatticeDoubleSum, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeWeightTwoTermIteratedFDerivSummableBound

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBalancedUnitMultipleTotallyReal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBalancedUnitMultipleTotallyReal", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.OmegaFactorization\npublic import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.FundamentalCone\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.KFacDifferentiable\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

noncomputable section

namespace GlobalTheory.BalancedUnits

open NumberField.InfinitePlace NumberField.mixedEmbedding NumberField.Units
open NumberField.Units.dirichletUnitTheorem

theorem sum_mult_log_sub {K : Type} [Field K] [NumberField K] (x : mixedSpace K)
    (hx : mixedEmbedding.norm x ≠ 0) :
    ∑ w : InfinitePlace K, (mult w : ℝ) * (Real.log (normAtPlace w x) -
      Real.log (mixedEmbedding.norm x) * (Module.finrank ℚ K : ℝ)⁻¹) = 0 := by
  have h1 : ∑ w : InfinitePlace K, (mult w : ℝ) * Real.log (normAtPlace w x) =
      Real.log (mixedEmbedding.norm x) := by
    rw [mixedEmbedding.norm_apply, Real.log_prod]
    · refine Finset.sum_congr rfl fun w _ => ?_
      rw [Real.log_pow]
    · intro w _
      exact pow_ne_zero _ (mixedEmbedding.norm_ne_zero_iff.mp hx w)
  have h2 : ∑ w : InfinitePlace K, (mult w : ℝ) = Module.finrank ℚ K := by
    exact_mod_cast sum_mult_eq
  have hn : (Module.finrank ℚ K : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr Module.finrank_pos.ne'
  simp_rw [mul_sub, Finset.sum_sub_distrib, h1, ← Finset.sum_mul, h2]
  field_simp
  ring

theorem exists_unit_log_bound (K : Type) [Field K] [NumberField K] : ∃ M : ℝ, 0 ≤ M ∧
    ∀ b : K, b ≠ 0 → ∃ ε : (𝓞 K)ˣ, ∀ w : InfinitePlace K,
      |Real.log (w (((ε : 𝓞 K) : K) * b)) -
        Real.log (mixedEmbedding.norm (mixedEmbedding K (((ε : 𝓞 K) : K) * b))) *
          (Module.finrank ℚ K : ℝ)⁻¹| ≤ M := by
  classical
  obtain ⟨R, hR⟩ := (ZSpan.fundamentalDomain_isBounded
    ((basisUnitLattice K).ofZLatticeBasis ℝ (unitLattice K))).subset_closedBall 0
  refine ⟨(Fintype.card (InfinitePlace K) : ℝ) * |R|, by positivity, ?_⟩
  intro b hb
  have hx : mixedEmbedding.norm (mixedEmbedding K b) ≠ 0 := by
    rw [norm_eq_norm]; simpa using hb
  obtain ⟨ε, hε⟩ := fundamentalCone.exists_unit_smul_mem hx
  refine ⟨ε, ?_⟩
  have hxy : ε • mixedEmbedding K b = mixedEmbedding K (((ε : 𝓞 K) : K) * b) := by
    rw [unitSMul_smul, map_mul]
  rw [hxy] at hε
  set y : K := ((ε : 𝓞 K) : K) * b with hy_def
  set X := mixedEmbedding K y
  set L := Real.log (mixedEmbedding.norm X) * (Module.finrank ℚ K : ℝ)⁻¹
  have hcard : (1 : ℝ) ≤ Fintype.card (InfinitePlace K) := by
    exact_mod_cast Fintype.card_pos
  have hlog : ∀ w : {w : InfinitePlace K // w ≠ w₀},
      |(mult w.val : ℝ) * (Real.log (normAtPlace w.val X) - L)| ≤ |R| := by
    intro w
    have h0 := hR hε.1
    rw [mem_closedBall_zero_iff] at h0
    have h2 := (norm_le_pi_norm (logMap X) w).trans h0
    rw [logMap_apply, Real.norm_eq_abs] at h2
    exact h2.trans (le_abs_self R)
  have hmul : ∀ w : InfinitePlace K,
      |(mult w : ℝ) * (Real.log (normAtPlace w X) - L)| ≤ (Fintype.card (InfinitePlace K) : ℝ) * |R| := by
    intro w
    by_cases hw : w = w₀
    · subst hw
      have hs := sum_mult_log_sub X hε.2
      rw [← Finset.add_sum_erase _ _ (Finset.mem_univ w₀)] at hs
      rw [eq_neg_of_add_eq_zero_left hs, abs_neg]
      refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
      calc ∑ w ∈ Finset.univ.erase w₀, |(mult w : ℝ) * (Real.log (normAtPlace w X) - L)|
          ≤ ∑ _w ∈ Finset.univ.erase w₀, |R| := Finset.sum_le_sum fun w hw =>
            hlog ⟨w, Finset.ne_of_mem_erase hw⟩
        _ ≤ (Fintype.card (InfinitePlace K) : ℝ) * |R| := by
            rw [Finset.sum_const, nsmul_eq_mul]
            gcongr
            exact_mod_cast (Finset.card_erase_le).trans (le_of_eq Finset.card_univ)
    · exact (hlog ⟨w, hw⟩).trans (le_mul_of_one_le_left (abs_nonneg R) hcard)
  intro w
  have h := hmul w
  rw [abs_mul, normAtPlace_apply] at h
  refine le_trans ?_ h
  rw [abs_of_pos (by exact_mod_cast mult_pos : (0:ℝ) < mult w)]
  exact le_mul_of_one_le_left (abs_nonneg _) one_le_mult

theorem balanced_unit_multiple (F : Type) [Field F] [NumberField F] [IsTotallyReal F] :
    ∃ C : ℝ, 1 ≤ C ∧ ∀ b : F, b ≠ 0 → ∃ ε : (𝓞 F)ˣ, ∀ τ τ' : Emb F,
      |τ (((ε : 𝓞 F) : F) * b)| ≤ C * |τ' (((ε : 𝓞 F) : F) * b)| := by
  obtain ⟨M, hM0, hM⟩ := exists_unit_log_bound F
  refine ⟨Real.exp (2 * M), Real.one_le_exp (by positivity), ?_⟩
  intro b hb
  obtain ⟨ε, hε⟩ := hM b hb
  refine ⟨ε, ?_⟩
  set y : F := ((ε : 𝓞 F) : F) * b with hy_def
  have hy : y ≠ 0 := mul_ne_zero (by simp) hb
  have hw : ∀ τ : Emb F, InfinitePlace.mk (Complex.ofRealHom.comp τ) y = |τ y| := by
    intro τ
    rw [InfinitePlace.apply]
    simp
  have hpos : ∀ τ : Emb F, 0 < |τ y| := fun τ => abs_pos.mpr ((map_ne_zero τ).mpr hy)
  intro τ τ'
  have h1 := hε (InfinitePlace.mk (Complex.ofRealHom.comp τ))
  have h2 := hε (InfinitePlace.mk (Complex.ofRealHom.comp τ'))
  rw [hw] at h1 h2
  have key : Real.log |τ y| ≤ 2 * M + Real.log |τ' y| := by
    have := (abs_le.mp h1).2
    have := (abs_le.mp h2).1
    linarith
  calc |τ y| = Real.exp (Real.log |τ y|) := (Real.exp_log (hpos τ)).symm
    _ ≤ Real.exp (2 * M + Real.log |τ' y|) := Real.exp_le_exp.mpr key
    _ = Real.exp (2 * M) * |τ' y| := by rw [Real.exp_add, Real.exp_log (hpos τ')]

end GlobalTheory.BalancedUnits
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBalancedUnitMultipleTotallyReal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDerivAtHeckeTermDecayIntegrand =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDerivAtHeckeTermDecayIntegrand", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntZEqFourier\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo GlobalTheory.HeckeTwo.TermDecay

noncomputable section
namespace GlobalTheory.HeckeTwo.TermDecay

theorem hasDerivAt_qZ : ∀ (σ : ℂ) (a : ℤ) (b m : ℕ) (y : ℝ), y ≠ 0 → ∀ t : ℝ,
    HasDerivAt (qZ σ a b m y) (-(a : ℂ) * qZ σ (a + 1) b m y t
      + 2 * (-σ - (b : ℂ)) * (qZ σ (a - 1) (b + 1) m y t - I * qZ σ a (b + 1) (m + 1) y t)) t := by
  intro σ a b m y hy t
  have hu := GlobalTheory.HeckeTwo.TermSmooth.u_ne hy t
  have hQ : 0 < t ^ 2 + y ^ 2 := by positivity
  have h1 : HasDerivAt (fun t : ℝ => (t : ℂ) + (y : ℂ) * I) 1 t := by
    simpa using (hasDerivAt_id t).ofReal_comp.add_const ((y : ℂ) * I)
  have h2 := (hasDerivAt_zpow (-a) ((t : ℂ) + (y : ℂ) * I) (Or.inl hu)).comp t h1
  have h3 : HasDerivAt (fun t : ℝ => (((t ^ 2 + y ^ 2 : ℝ) : ℂ))) ((2 * t : ℝ) : ℂ) t := by
    have : HasDerivAt (fun t : ℝ => t ^ 2 + y ^ 2) (2 * t) t := by
      simpa using ((hasDerivAt_pow 2 t).add_const (y ^ 2))
    exact this.ofReal_comp
  have h4 := (Complex.hasStrictDerivAt_cpow_const (c := -σ - (b : ℂ))
      (Complex.ofReal_mem_slitPlane.2 hQ)).hasDerivAt.comp t h3
  have h := (h2.mul h4).mul_const ((y : ℂ) ^ m)
  refine h.congr_deriv ?_
  simp only [qZ, Function.comp_def]
  rw [show -(a + 1) = -a - 1 by ring, show -(a - 1) = -a + 1 by ring, zpow_add_one₀ hu,
    show -σ - ((b + 1 : ℕ) : ℂ) = -σ - (b : ℂ) - 1 by push_cast; ring]
  push_cast
  ring

end GlobalTheory.HeckeTwo.TermDecay
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDerivAtHeckeTermDecayIntegrand =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegrableHeckeTermDecayIntegrand =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegrableHeckeTermDecayIntegrand", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntZEqFourier\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo GlobalTheory.HeckeTwo.TermDecay

noncomputable section
namespace GlobalTheory.HeckeTwo.TermDecay

theorem continuous_qZ (σ : ℂ) (a : ℤ) (b m : ℕ) {y : ℝ} (hy : y ≠ 0) : Continuous (qZ σ a b m y) := by
  unfold qZ
  have h1 : Continuous fun t : ℝ => ((t : ℂ) + (y : ℂ) * I) ^ (-a) :=
    (by fun_prop : Continuous fun t : ℝ => (t : ℂ) + (y : ℂ) * I).zpow₀ (-a)
      fun t => Or.inl (GlobalTheory.HeckeTwo.TermSmooth.u_ne hy t)
  have h2 : Continuous fun t : ℝ => (((t ^ 2 + y ^ 2 : ℝ) : ℂ)) ^ (-σ - (b : ℂ)) :=
    (by fun_prop : Continuous fun t : ℝ => (((t ^ 2 + y ^ 2 : ℝ) : ℂ))).cpow continuous_const
      fun t => Complex.ofReal_mem_slitPlane.2 (by positivity)
  exact (h1.mul h2).mul continuous_const

theorem norm_qZ (σ : ℂ) (a : ℤ) (b m : ℕ) {y : ℝ} (hy : y ≠ 0) (t : ℝ) :
    ‖qZ σ a b m y t‖ = (t ^ 2 + y ^ 2) ^ (-((a : ℝ) / 2 + b + σ.re)) * |y| ^ m := by
  have hQ : 0 < t ^ 2 + y ^ 2 := by positivity
  have hnu : ‖(t : ℂ) + (y : ℂ) * I‖ = Real.sqrt (t ^ 2 + y ^ 2) := by
    rw [← Complex.normSq_add_mul_I, Complex.norm_def]
  unfold qZ
  rw [norm_mul, norm_mul, norm_zpow, hnu, Complex.norm_cpow_eq_rpow_re_of_pos hQ,
    norm_pow, Complex.norm_real, Real.norm_eq_abs, Real.sqrt_eq_rpow, ← Real.rpow_intCast,
    ← Real.rpow_mul hQ.le, ← Real.rpow_add hQ]
  congr 2
  simp
  ring

theorem integrable_qZ : ∀ σ ∈ halfPlane, ∀ (a : ℤ) (b m : ℕ), 2 ≤ a + 2 * b → ∀ y : ℝ, y ≠ 0 →
    MeasureTheory.Integrable (qZ σ a b m y) := by
  intro σ hσ a b m hab y hy
  have hσ' : -1 / 2 < σ.re := hσ
  set e : ℝ := (a : ℝ) / 2 + b + σ.re with he
  have hab' : (2 : ℝ) ≤ a + 2 * b := by exact_mod_cast hab
  have he1 : 1 / 2 < e := by rw [he]; linarith
  set κ := min 1 (y ^ 2) with hκ
  have hκ0 : 0 < κ := lt_min one_pos (by positivity)
  refine (((integrable_rpow_neg_one_add_norm_sq (E := ℝ) (r := 2 * e) (by simp; linarith)).const_mul
    (κ ^ (-e) * |y| ^ m))).mono' (continuous_qZ σ a b m hy).aestronglyMeasurable
    (MeasureTheory.ae_of_all _ fun t => ?_)
  rw [norm_qZ σ a b m hy t]
  have hQk : κ * (1 + ‖t‖ ^ 2) ≤ t ^ 2 + y ^ 2 := by
    rw [Real.norm_eq_abs, sq_abs]
    have h1 : κ ≤ 1 := min_le_left _ _
    have h2 : κ ≤ y ^ 2 := min_le_right _ _
    nlinarith [sq_nonneg t]
  have hA : (t ^ 2 + y ^ 2) ^ (-e) ≤ κ ^ (-e) * (1 + ‖t‖ ^ 2) ^ (-(2 * e) / 2) := by
    rw [show -(2 * e) / 2 = -e by ring, ← Real.mul_rpow hκ0.le (by positivity)]
    exact Real.rpow_le_rpow_of_nonpos (by positivity) hQk (by linarith)
  calc (t ^ 2 + y ^ 2) ^ (-e) * |y| ^ m ≤ (κ ^ (-e) * (1 + ‖t‖ ^ 2) ^ (-(2 * e) / 2)) * |y| ^ m :=
        mul_le_mul_of_nonneg_right hA (by positivity)
    _ = _ := by ring

end GlobalTheory.HeckeTwo.TermDecay
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegrableHeckeTermDecayIntegrand =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormHeckeTermDecayFourierIntegralLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormHeckeTermDecayFourierIntegralLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntZEqFourier\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo GlobalTheory.HeckeTwo.TermDecay

noncomputable section
namespace GlobalTheory.HeckeTwo.TermDecay

theorem norm_qZ_mul_exp (σ : ℂ) (ν : ℝ) (a : ℤ) (b m : ℕ) {y : ℝ} (hy : y ≠ 0) (t : ℝ) :
    ‖qZ σ a b m y t * Complex.exp (-(2 * (Real.pi : ℂ) * I * (ν : ℂ) * (t : ℂ)))‖ =
      (t ^ 2 + y ^ 2) ^ (-((a : ℝ) / 2 + b + σ.re)) * |y| ^ m := by
  have hQ : 0 < t ^ 2 + y ^ 2 := by positivity
  have hnu : ‖(t : ℂ) + (y : ℂ) * I‖ = Real.sqrt (t ^ 2 + y ^ 2) := by
    rw [← Complex.normSq_add_mul_I, Complex.norm_def]
  unfold qZ
  rw [norm_mul, norm_mul, norm_mul, norm_zpow, hnu, Complex.norm_cpow_eq_rpow_re_of_pos hQ,
    norm_pow, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp]
  have hre : (-(2 * (Real.pi : ℂ) * I * (ν : ℂ) * (t : ℂ))).re = 0 := by simp
  rw [hre, Real.exp_zero, mul_one, Real.sqrt_eq_rpow, ← Real.rpow_intCast, ← Real.rpow_mul hQ.le,
    ← Real.rpow_add hQ]
  congr 2
  simp
  ring

theorem integral_rpow_sq_add_sq (e : ℝ) {y : ℝ} (hy : y ≠ 0) :
    ∫ t : ℝ, (t ^ 2 + y ^ 2) ^ (-e) = |y| ^ (1 - 2 * e) * ∫ s : ℝ, (1 + s ^ 2) ^ (-e) := by
  have hc : 0 < |y| := abs_pos.2 hy
  have hpt : ∀ t : ℝ, (t ^ 2 + y ^ 2) ^ (-e) = |y| ^ (-2 * e) * (1 + (t / |y|) ^ 2) ^ (-e) := by
    intro t
    have h1 : t ^ 2 + y ^ 2 = |y| ^ 2 * (1 + (t / |y|) ^ 2) := by
      field_simp
      rw [sq_abs]
      ring
    rw [h1, Real.mul_rpow (by positivity) (by positivity), ← Real.rpow_natCast, ← Real.rpow_mul hc.le]
    congr 2
    push_cast
    ring
  simp_rw [hpt]
  rw [MeasureTheory.integral_const_mul,
    MeasureTheory.Measure.integral_comp_div (fun s : ℝ => (1 + s ^ 2) ^ (-e)) |y|, abs_abs, smul_eq_mul,
    ← mul_assoc, show 1 - 2 * e = -2 * e + 1 by ring, Real.rpow_add_one hc.ne']

theorem norm_intZ_le : ∀ K : Set ℂ, IsCompact K → K ⊆ halfPlane → ∀ (a : ℤ) (b m : ℕ), 2 ≤ a + 2 * b → ∃ C : ℝ,
    ∀ σ ∈ K, ∀ ν y : ℝ, y ≠ 0 →
      ‖intZ σ ν a b m y‖ ≤ C * |y| ^ ((m : ℝ) + 1 - a - 2 * b - 2 * σ.re) := by
  intro K hK hKH a b m hab
  rcases K.eq_empty_or_nonempty with rfl | hne
  · exact ⟨0, fun σ hσ => by simp at hσ⟩
  obtain ⟨σ₀, hσ₀K, hmin⟩ := hK.exists_isMinOn hne Complex.continuous_re.continuousOn
  have hσ₀ : -1 / 2 < σ₀.re := hKH hσ₀K
  have hab' : (2 : ℝ) ≤ a + 2 * b := by exact_mod_cast hab
  set e₀ : ℝ := (a : ℝ) / 2 + b + σ₀.re with he₀
  have he₀1 : 1 / 2 < e₀ := by rw [he₀]; linarith
  have hg₀ : MeasureTheory.Integrable (fun s : ℝ => (1 + s ^ 2) ^ (-e₀)) := by
    have := integrable_rpow_neg_one_add_norm_sq (E := ℝ) (μ := MeasureTheory.volume) (r := 2 * e₀) (by simp; linarith)
    refine this.congr (MeasureTheory.ae_of_all _ fun s => ?_)
    simp only [Real.norm_eq_abs, sq_abs]
    congr 1
    ring
  refine ⟨∫ s : ℝ, (1 + s ^ 2) ^ (-e₀), ?_⟩
  intro σ hσ ν y hy
  set e : ℝ := (a : ℝ) / 2 + b + σ.re with he
  have hee : e₀ ≤ e := by
    have := hmin hσ
    simp only [Set.mem_setOf_eq] at this
    rw [he, he₀]; linarith
  have hc : 0 < |y| := abs_pos.2 hy
  have hmono : (∫ s : ℝ, (1 + s ^ 2) ^ (-e)) ≤ ∫ s : ℝ, (1 + s ^ 2) ^ (-e₀) :=
    MeasureTheory.integral_mono_of_nonneg (MeasureTheory.ae_of_all _ fun s => by positivity) hg₀
      (MeasureTheory.ae_of_all _ fun s =>
        Real.rpow_le_rpow_of_exponent_le (by nlinarith [sq_nonneg s]) (by linarith))
  calc ‖intZ σ ν a b m y‖
      ≤ ∫ t : ℝ, ‖qZ σ a b m y t * Complex.exp (-(2 * (Real.pi : ℂ) * I * (ν : ℂ) * (t : ℂ)))‖ :=
        MeasureTheory.norm_integral_le_integral_norm _
    _ = ∫ t : ℝ, (t ^ 2 + y ^ 2) ^ (-e) * |y| ^ m := by
        simp_rw [norm_qZ_mul_exp σ ν a b m hy]
        rw [he]
    _ = (|y| ^ (1 - 2 * e) * ∫ s : ℝ, (1 + s ^ 2) ^ (-e)) * |y| ^ m := by
        rw [MeasureTheory.integral_mul_const, integral_rpow_sq_add_sq e hy]
    _ ≤ (|y| ^ (1 - 2 * e) * ∫ s : ℝ, (1 + s ^ 2) ^ (-e₀)) * |y| ^ m := by
        gcongr
    _ = (∫ s : ℝ, (1 + s ^ 2) ^ (-e₀)) * |y| ^ ((m : ℝ) + 1 - a - 2 * b - 2 * σ.re) := by
        rw [← Real.rpow_natCast, mul_comm (|y| ^ (1 - 2 * e)), mul_assoc, ← Real.rpow_add hc, he]
        congr 2
        ring

end GlobalTheory.HeckeTwo.TermDecay
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormHeckeTermDecayFourierIntegralLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeYDerivativeTermIntegralPolynomialDecay =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeYDerivativeTermIntegralPolynomialDecay", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntZEqFourier\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDerivAtHeckeTermDecayIntegrand\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegrableHeckeTermDecayIntegrand\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormHeckeTermDecayFourierIntegralLe\npublic import Mathlib.Analysis.Fourier.FourierTransformDeriv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

noncomputable section

namespace GlobalTheory.HeckeTwo.TermDecay

theorem intZ_ibp (σ : ℂ) (hσ : σ ∈ halfPlane) (ν : ℝ) (a : ℤ) (b m : ℕ) (hab : 2 ≤ a + 2 * b) {y : ℝ}
    (hy : y ≠ 0) :
    2 * (Real.pi : ℂ) * I * ν * intZ σ ν a b m y =
      -(a : ℂ) * intZ σ ν (a + 1) b m y
        + 2 * (-σ - (b : ℂ)) * (intZ σ ν (a - 1) (b + 1) m y - I * intZ σ ν a (b + 1) (m + 1) y) := by
  have i0 := _root_.GlobalTheory.HeckeTwo.TermDecay.integrable_qZ σ hσ a b m hab y hy
  have i1 := _root_.GlobalTheory.HeckeTwo.TermDecay.integrable_qZ σ hσ (a + 1) b m (by omega) y hy
  have i2 := _root_.GlobalTheory.HeckeTwo.TermDecay.integrable_qZ σ hσ (a - 1) (b + 1) m (by push_cast; omega) y hy
  have i3 := _root_.GlobalTheory.HeckeTwo.TermDecay.integrable_qZ σ hσ a (b + 1) (m + 1) (by push_cast; omega) y hy
  have hd : deriv (qZ σ a b m y) = fun t => -(a : ℂ) * qZ σ (a + 1) b m y t
      + 2 * (-σ - (b : ℂ)) * (qZ σ (a - 1) (b + 1) m y t - I * qZ σ a (b + 1) (m + 1) y t) := by
    funext t; exact (_root_.GlobalTheory.HeckeTwo.TermDecay.hasDerivAt_qZ σ a b m y hy t).deriv
  have hdiff : Differentiable ℝ (qZ σ a b m y) := fun t => (_root_.GlobalTheory.HeckeTwo.TermDecay.hasDerivAt_qZ σ a b m y hy t).differentiableAt
  have hi : MeasureTheory.Integrable (deriv (qZ σ a b m y)) := by
    rw [hd]; exact (i1.const_mul _).add ((i2.sub (i3.const_mul _)).const_mul _)
  have key := congrFun (Real.fourier_deriv i0 hdiff hi) ν
  rw [← intZ_eq_fourier, smul_eq_mul] at key
  rw [← key, hd, Real.fourier_real_eq_integral_exp_smul]
  unfold intZ
  set E : ℝ → ℂ := fun t => Complex.exp (-(2 * (Real.pi : ℂ) * I * (ν : ℂ) * (t : ℂ))) with hE
  have hEc : Continuous E := by rw [hE]; fun_prop
  have hEn : ∀ t, ‖E t‖ = 1 := by
    intro t; rw [hE, Complex.norm_exp]; simp
  have e : ∀ (f : ℝ → ℂ), MeasureTheory.Integrable f → MeasureTheory.Integrable (fun t : ℝ => f t * E t) := by
    intro f hf
    refine hf.norm.mono' (hf.aestronglyMeasurable.mul hEc.aestronglyMeasurable) (MeasureTheory.ae_of_all _ fun t => ?_)
    rw [norm_mul, hEn, mul_one]
  have hpt : ∀ t : ℝ, Complex.exp (((-2 * Real.pi * t * ν : ℝ) : ℂ) * I) •
      (-(a : ℂ) * qZ σ (a + 1) b m y t + 2 * (-σ - (b : ℂ)) * (qZ σ (a - 1) (b + 1) m y t - I * qZ σ a (b + 1) (m + 1) y t))
      = -(a : ℂ) * (qZ σ (a + 1) b m y t * E t) + 2 * (-σ - (b : ℂ)) *
        (qZ σ (a - 1) (b + 1) m y t * E t - I * (qZ σ a (b + 1) (m + 1) y t * E t)) := by
    intro t
    rw [smul_eq_mul, hE]
    have : (((-2 * Real.pi * t * ν : ℝ) : ℂ) * I) = -(2 * (Real.pi : ℂ) * I * (ν : ℂ) * (t : ℂ)) := by push_cast; ring
    rw [this]; ring
  simp_rw [hpt]
  have j1 : MeasureTheory.Integrable (fun v => -(a : ℂ) * (qZ σ (a + 1) b m y v * E v)) := (e _ i1).const_mul _
  have j2 : MeasureTheory.Integrable (fun v => qZ σ (a - 1) (b + 1) m y v * E v) := e _ i2
  have j3 : MeasureTheory.Integrable (fun v => I * (qZ σ a (b + 1) (m + 1) y v * E v)) := (e _ i3).const_mul _
  have j23 : MeasureTheory.Integrable (fun v => 2 * (-σ - (b : ℂ)) *
      (qZ σ (a - 1) (b + 1) m y v * E v - I * (qZ σ a (b + 1) (m + 1) y v * E v))) := (j2.sub j3).const_mul _
  rw [MeasureTheory.integral_add j1 j23, MeasureTheory.integral_const_mul, MeasureTheory.integral_const_mul,
    MeasureTheory.integral_sub j2 j3, MeasureTheory.integral_const_mul]

end GlobalTheory.HeckeTwo.TermDecay

namespace GlobalTheory.HeckeTwo.TermDecay

theorem le_div_one_add_pow_succ_of_mul_le (x : ℝ) (hx : 0 ≤ x) (N : ℕ) (A B Y : ℝ) (hY : 0 ≤ Y) (hA : 0 ≤ A) (hB : 0 ≤ B) (q : ℝ)
    (h0 : q ≤ A * Y) (h1 : x * q ≤ B * Y / (1 + x) ^ N) :
    q ≤ (2 ^ (N + 1) * A + 2 * B) * Y / (1 + x) ^ (N + 1) := by
  have hp : 0 < (1 + x) ^ (N + 1) := by positivity
  rw [le_div_iff₀ hp]
  rcases le_or_gt x 1 with h | h
  · have h2 : (1 + x) ^ (N + 1) ≤ 2 ^ (N + 1) := pow_le_pow_left₀ (by linarith) (by linarith) _
    rcases le_or_gt q 0 with hq | hq
    · have : 0 ≤ (2 ^ (N + 1) * A + 2 * B) * Y := by positivity
      nlinarith [hp]
    · calc q * (1 + x) ^ (N + 1) ≤ A * Y * 2 ^ (N + 1) := mul_le_mul h0 h2 hp.le (by positivity)
        _ ≤ (2 ^ (N + 1) * A + 2 * B) * Y := by nlinarith [mul_nonneg hB hY]
  · have hpN : 0 < (1 + x) ^ N := by positivity
    have h1' : x * q * (1 + x) ^ N ≤ B * Y := by rwa [le_div_iff₀ hpN] at h1
    have hx2 : 1 + x ≤ 2 * x := by linarith
    rcases le_or_gt q 0 with hq | hq
    · have : 0 ≤ (2 ^ (N + 1) * A + 2 * B) * Y := by positivity
      nlinarith [hp]
    · calc q * (1 + x) ^ (N + 1) = q * (1 + x) ^ N * (1 + x) := by ring
        _ ≤ q * (1 + x) ^ N * (2 * x) := by gcongr
        _ = 2 * (x * q * (1 + x) ^ N) := by ring
        _ ≤ 2 * (B * Y) := by linarith
        _ ≤ (2 ^ (N + 1) * A + 2 * B) * Y := by nlinarith [mul_nonneg (mul_nonneg (pow_nonneg (by norm_num : (0:ℝ) ≤ 2) (N + 1)) hA) hY]

theorem intZ_decay (K : Set ℂ) (hK : IsCompact K) (hKH : K ⊆ halfPlane) (N : ℕ) :
    ∀ (a : ℤ) (b m : ℕ), 2 ≤ a + 2 * b → ∃ C : ℝ, ∀ σ ∈ K, ∀ ν y : ℝ, ν ≠ 0 → y ≠ 0 →
      ‖intZ σ ν a b m y‖ ≤ C * |y| ^ ((m : ℝ) + 1 - a - 2 * b - 2 * σ.re) / (1 + |ν * y|) ^ N := by
  obtain ⟨R, hR⟩ := hK.isBounded.exists_norm_le
  induction N with
  | zero =>
    intro a b m hab
    obtain ⟨C, hC⟩ := _root_.GlobalTheory.HeckeTwo.TermDecay.norm_intZ_le K hK hKH a b m hab
    exact ⟨C, fun σ hσ ν y _ hy => by simpa using hC σ hσ ν y hy⟩
  | succ N ih =>
    intro a b m hab
    obtain ⟨C0, hC0⟩ := _root_.GlobalTheory.HeckeTwo.TermDecay.norm_intZ_le K hK hKH a b m hab
    obtain ⟨C1, hC1⟩ := ih (a + 1) b m (by omega)
    obtain ⟨C2, hC2⟩ := ih (a - 1) (b + 1) m (by push_cast; omega)
    obtain ⟨C3, hC3⟩ := ih a (b + 1) (m + 1) (by push_cast; omega)
    set B : ℝ := (|(a : ℝ)| * |C1| + 2 * (|R| + b) * (|C2| + |C3|)) / (2 * Real.pi) with hB
    refine ⟨2 ^ (N + 1) * |C0| + 2 * B, fun σ hσ ν y hν hy => ?_⟩
    set E : ℝ := (m : ℝ) + 1 - a - 2 * b - 2 * σ.re with hE
    have hyp : 0 < |y| := abs_pos.2 hy
    have hnp : 0 < |ν| := abs_pos.2 hν
    have hx : |ν * y| = |ν| * |y| := abs_mul ν y
    have hpN : 0 < (1 + |ν * y|) ^ N := by positivity
    have hB0 : 0 ≤ B := by rw [hB]; have := Real.pi_pos; positivity
    refine le_trans ?_ (le_of_eq (by ring : (2 ^ (N + 1) * |C0| + 2 * B) * |y| ^ E / (1 + |ν * y|) ^ (N + 1) =
      (2 ^ (N + 1) * |C0| + 2 * B) * |y| ^ E / (1 + |ν * y|) ^ (N + 1)))
    apply le_div_one_add_pow_succ_of_mul_le |ν * y| (abs_nonneg _) N |C0| B (|y| ^ E) (by positivity) (abs_nonneg _) hB0
    · exact (hC0 σ hσ ν y hy).trans (mul_le_mul_of_nonneg_right (le_abs_self _) (by positivity))
    ·
      have hibp := intZ_ibp σ (hKH hσ) ν a b m hab hy
      have e1 := hC1 σ hσ ν y hν hy
      have e2 := hC2 σ hσ ν y hν hy
      have e3 := hC3 σ hσ ν y hν hy
      have hE1 : ((m : ℝ) + 1 - ((a + 1 : ℤ) : ℝ) - 2 * b - 2 * σ.re) = E - 1 := by rw [hE]; push_cast; ring
      have hE2 : ((m : ℝ) + 1 - ((a - 1 : ℤ) : ℝ) - 2 * ((b + 1 : ℕ) : ℝ) - 2 * σ.re) = E - 1 := by rw [hE]; push_cast; ring
      have hE3 : (((m + 1 : ℕ) : ℝ) + 1 - (a : ℝ) - 2 * ((b + 1 : ℕ) : ℝ) - 2 * σ.re) = E - 1 := by rw [hE]; push_cast; ring
      rw [hE1] at e1; rw [hE2] at e2; rw [hE3] at e3
      set X : ℝ := |y| ^ (E - 1) / (1 + |ν * y|) ^ N with hX
      have hX0 : 0 ≤ X := by positivity
      have hσb : ‖-σ - (b : ℂ)‖ ≤ |R| + b := by
        calc ‖-σ - (b : ℂ)‖ ≤ ‖σ‖ + ‖(b : ℂ)‖ := by rw [← norm_neg σ]; exact norm_sub_le _ _
          _ ≤ |R| + b := by rw [Complex.norm_natCast]; gcongr; exact (hR σ hσ).trans (le_abs_self R)
      have key : 2 * Real.pi * |ν| * ‖intZ σ ν a b m y‖ ≤ (|(a : ℝ)| * |C1| + 2 * (|R| + b) * (|C2| + |C3|)) * X := by
        have hn : ‖2 * (Real.pi : ℂ) * I * ν * intZ σ ν a b m y‖ = 2 * Real.pi * |ν| * ‖intZ σ ν a b m y‖ := by
          simp [Complex.norm_real, abs_of_pos Real.pi_pos]
        rw [← hn, hibp]
        have f1 : ‖intZ σ ν (a + 1) b m y‖ ≤ |C1| * X := by
          rw [hX, ← mul_div_assoc]; exact e1.trans (by gcongr; exact le_abs_self _)
        have f2 : ‖intZ σ ν (a - 1) (b + 1) m y‖ ≤ |C2| * X := by
          rw [hX, ← mul_div_assoc]; exact e2.trans (by gcongr; exact le_abs_self _)
        have f3 : ‖intZ σ ν a (b + 1) (m + 1) y‖ ≤ |C3| * X := by
          rw [hX, ← mul_div_assoc]; exact e3.trans (by gcongr; exact le_abs_self _)
        calc _ ≤ ‖-(a : ℂ) * intZ σ ν (a + 1) b m y‖ + ‖2 * (-σ - (b : ℂ)) *
              (intZ σ ν (a - 1) (b + 1) m y - I * intZ σ ν a (b + 1) (m + 1) y)‖ := norm_add_le _ _
          _ ≤ |(a : ℝ)| * (|C1| * X) + 2 * (|R| + b) * (|C2| * X + |C3| * X) := by
            rw [norm_mul, norm_mul, norm_neg, norm_mul]
            have ha : ‖(a : ℂ)‖ = |(a : ℝ)| := by rw [← Complex.ofReal_intCast, Complex.norm_real, Real.norm_eq_abs]
            rw [ha]
            have hs : ‖intZ σ ν (a - 1) (b + 1) m y - I * intZ σ ν a (b + 1) (m + 1) y‖ ≤ |C2| * X + |C3| * X := by
              refine (norm_sub_le _ _).trans (add_le_add f2 ?_)
              rw [norm_mul, Complex.norm_I, one_mul]; exact f3
            gcongr
            · simp
          _ = _ := by ring

      have hyE : |y| ^ (E - 1) = |y| ^ E / |y| := by rw [Real.rpow_sub_one hyp.ne']
      have h2p : 0 < 2 * Real.pi * |ν| := by have := Real.pi_pos; positivity
      rw [hx]
      have : |ν| * |y| * ‖intZ σ ν a b m y‖ = |y| / (2 * Real.pi) * (2 * Real.pi * |ν| * ‖intZ σ ν a b m y‖) := by
        field_simp
      rw [this]
      calc |y| / (2 * Real.pi) * (2 * Real.pi * |ν| * ‖intZ σ ν a b m y‖)
          ≤ |y| / (2 * Real.pi) * ((|(a : ℝ)| * |C1| + 2 * (|R| + b) * (|C2| + |C3|)) * X) := by gcongr
        _ = B * |y| ^ E / (1 + |ν| * |y|) ^ N := by
          rw [hB, hX, hyE, ← hx]; field_simp

end GlobalTheory.HeckeTwo.TermDecay


open GlobalTheory.HeckeTwo.TermDecay in
theorem GlobalTheory.HeckeTwo.TermDecay.intT_bound : ∀ K : Set ℂ, IsCompact K → K ⊆ halfPlane → ∀ a b m : ℕ, 2 ≤ a + 2 * b → ∀ N : ℕ, ∃ C : ℝ,
    ∀ σ ∈ K, ∀ ν y : ℝ, ν ≠ 0 → y ≠ 0 →
      ‖GlobalTheory.HeckeTwo.TermSmooth.intT σ ν a b m y‖ ≤ C * |y| ^ ((m : ℝ) + 1 - a - 2 * b - 2 * σ.re) / (1 + |ν * y|) ^ N := by
  intro K hK hKH a b m hab N
  obtain ⟨C, hC⟩ := intZ_decay K hK hKH N (a : ℤ) b m (by exact_mod_cast hab)
  refine ⟨C, fun σ hσ ν y hν hy => ?_⟩
  rw [intT_eq_intZ]
  have := hC σ hσ ν y hν hy
  simpa using this
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeYDerivativeTermIntegralPolynomialDecay =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactPiUpperHalfPlaneImBounds =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactPiUpperHalfPlaneImBounds", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.OmegaFactorization\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.KFacDifferentiable\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

namespace GlobalTheory

theorem isCompact_pi_upperHalfPlane_im_bounds :
    ∀ (ι : Type) [Fintype ι] (L : Set (ι → ℂ)), IsCompact L → (∀ z ∈ L, ∀ i, 0 < (z i).im) →
    ∃ c c' : ℝ, 0 < c ∧ ∀ z ∈ L, ∀ i, c ≤ (z i).im ∧ (z i).im ≤ c' := by
  intro ι _ L hL hpos
  obtain ⟨C, hC⟩ := hL.isBounded.exists_norm_le
  have hup : ∀ z ∈ L, ∀ i, (z i).im ≤ C := fun z hz i =>
    (Complex.im_le_norm (z i)).trans ((norm_le_pi_norm z i).trans (hC z hz))
  rcases L.eq_empty_or_nonempty with hE | hne
  · exact ⟨1, 0, one_pos, by simp [hE]⟩
  have hm : ∀ i, ∃ m : ℝ, 0 < m ∧ ∀ z ∈ L, m ≤ (z i).im := by
    intro i
    have hc : Continuous fun z : ι → ℂ => (z i).im :=
      Complex.continuous_im.comp (continuous_apply i)
    obtain ⟨x, hx, hmin⟩ := hL.exists_isMinOn hne hc.continuousOn
    exact ⟨(x i).im, hpos x hx i, fun z hz => hmin hz⟩
  choose m hm0 hmle using hm
  rcases isEmpty_or_nonempty ι with hι | hι
  · exact ⟨1, C, one_pos, fun z _ i => isEmptyElim i⟩
  refine ⟨Finset.univ.inf' Finset.univ_nonempty m, C, ?_, fun z hz i => ⟨?_, hup z hz i⟩⟩
  · exact (Finset.lt_inf'_iff _).2 fun i _ => hm0 i
  · exact (Finset.inf'_le _ (Finset.mem_univ i)).trans (hmle i z hz)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactPiUpperHalfPlaneImBounds =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IteratedDerivHeckePhiFourierTransformBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IteratedDerivHeckePhiFourierTransformBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContDiffOnHeckeEisensteinFourierTerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

namespace GlobalTheory.HeckeTwo.TermBoundDeriv

theorem rpow_le_add_inv_pow {t r : ℝ} {s : ℕ} (ht : 0 < t) (hr : |r| ≤ s) :
    t ^ r ≤ (t + t⁻¹) ^ s := by
  have hti : 0 < t⁻¹ := inv_pos.mpr ht
  have hM1 : 1 ≤ t + t⁻¹ := by
    rcases le_total 1 t with h | h
    · linarith
    · have : 1 ≤ t⁻¹ := one_le_inv_iff₀.mpr ⟨ht, h⟩
      linarith
  have hsr : (t + t⁻¹) ^ (s : ℝ) = (t + t⁻¹) ^ s := Real.rpow_natCast _ _
  rw [← hsr]
  rcases le_total 0 r with h0 | h0
  · calc t ^ r ≤ (t + t⁻¹) ^ r := Real.rpow_le_rpow ht.le (by linarith) h0
      _ ≤ (t + t⁻¹) ^ (s : ℝ) := Real.rpow_le_rpow_of_exponent_le hM1 (le_trans (le_abs_self r) hr)
  · have e : t ^ r = t⁻¹ ^ (-r) := by
      rw [Real.inv_rpow ht.le, Real.rpow_neg ht.le, inv_inv]
    rw [e]
    calc t⁻¹ ^ (-r) ≤ (t + t⁻¹) ^ (-r) := Real.rpow_le_rpow hti.le (by linarith) (by linarith)
      _ ≤ (t + t⁻¹) ^ (s : ℝ) := Real.rpow_le_rpow_of_exponent_le hM1 (le_trans (neg_le_abs r) hr)

end GlobalTheory.HeckeTwo.TermBoundDeriv

namespace GlobalTheory.HeckeTwo.TermBoundDeriv

theorem iteratedDeriv_hTrans_bound :
    (∀ j : ℕ, ∃ (S : Finset (ℕ × ℕ × ℕ)) (P : ℕ × ℕ × ℕ → Polynomial ℂ),
    (∀ p ∈ S, 2 ≤ p.1 + 2 * p.2.1 ∧ p.1 + 2 * p.2.1 = p.2.2 + 2 + j) ∧
    ∀ σ ∈ halfPlane, ∀ ν y : ℝ, y ≠ 0 →
      iteratedDeriv j (hTrans σ ν) y = ∑ p ∈ S, (P p).eval σ * GlobalTheory.HeckeTwo.TermSmooth.intT σ ν p.1 p.2.1 p.2.2 y) → (∀ K : Set ℂ, IsCompact K → K ⊆ halfPlane → ∀ a b m : ℕ, 2 ≤ a + 2 * b → ∀ N : ℕ, ∃ C : ℝ,
    ∀ σ ∈ K, ∀ ν y : ℝ, ν ≠ 0 → y ≠ 0 →
      ‖GlobalTheory.HeckeTwo.TermSmooth.intT σ ν a b m y‖ ≤ C * |y| ^ ((m : ℝ) + 1 - a - 2 * b - 2 * σ.re) / (1 + |ν * y|) ^ N) →
  ∀ K : Set ℂ, IsCompact K → K ⊆ halfPlane → ∀ j : ℕ, ∃ s : ℕ, ∀ N : ℕ, ∃ C : ℝ,
    ∀ σ ∈ K, ∀ ν y : ℝ, ν ≠ 0 → y ≠ 0 →
      ‖iteratedDeriv j (hTrans σ ν) y‖ ≤ C * (|y| + |y|⁻¹) ^ s / (1 + |ν * y|) ^ N := by
  intro hder hint K hK hKH j
  obtain ⟨S, P, hS, hEq⟩ := hder j
  obtain ⟨R, hR⟩ : ∃ R, ∀ σ ∈ K, ‖σ‖ ≤ R := hK.isBounded.exists_norm_le
  refine ⟨⌈1 + (j : ℝ) + 2 * R⌉₊, fun N => ?_⟩
  have hCex : ∀ p : ℕ × ℕ × ℕ, ∃ C : ℝ, 0 ≤ C ∧ (p ∈ S → ∀ σ ∈ K, ∀ ν y : ℝ, ν ≠ 0 → y ≠ 0 →
      ‖GlobalTheory.HeckeTwo.TermSmooth.intT σ ν p.1 p.2.1 p.2.2 y‖ ≤
        C * |y| ^ ((p.2.2 : ℝ) + 1 - p.1 - 2 * p.2.1 - 2 * σ.re) / (1 + |ν * y|) ^ N) := by
    intro p
    by_cases hp : p ∈ S
    · obtain ⟨C, hC⟩ := hint K hK hKH p.1 p.2.1 p.2.2 (hS p hp).1 N
      refine ⟨max C 0, le_max_right _ _, fun _ σ hσ ν y hν hy => (hC σ hσ ν y hν hy).trans ?_⟩
      exact div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_right (le_max_left _ _) (by positivity)) (by positivity)
    · exact ⟨0, le_rfl, fun h => absurd h hp⟩
  choose Cp hCp0 hCp using hCex
  have hBex : ∀ p : ℕ × ℕ × ℕ, ∃ B : ℝ, 0 ≤ B ∧ ∀ σ ∈ K, ‖(P p).eval σ‖ ≤ B := by
    intro p
    obtain ⟨B, hB⟩ := hK.exists_bound_of_continuousOn (P p).continuous.continuousOn
    exact ⟨max B 0, le_max_right _ _, fun σ hσ => (hB σ hσ).trans (le_max_left _ _)⟩
  choose B hB0 hB using hBex
  refine ⟨∑ p ∈ S, B p * Cp p, fun σ hσ ν y hν hy => ?_⟩
  have hy' : 0 < |y| := abs_pos.mpr hy
  have hD : 0 < (1 + |ν * y|) ^ N := by positivity
  have hre : |σ.re| ≤ R := (Complex.abs_re_le_norm σ).trans (hR σ hσ)
  rw [hEq σ (hKH hσ) ν y hy]
  calc ‖∑ p ∈ S, (P p).eval σ * GlobalTheory.HeckeTwo.TermSmooth.intT σ ν p.1 p.2.1 p.2.2 y‖
      ≤ ∑ p ∈ S, ‖(P p).eval σ * GlobalTheory.HeckeTwo.TermSmooth.intT σ ν p.1 p.2.1 p.2.2 y‖ :=
        norm_sum_le _ _
    _ ≤ ∑ p ∈ S, B p * (Cp p * (|y| + |y|⁻¹) ^ ⌈1 + (j : ℝ) + 2 * R⌉₊ / (1 + |ν * y|) ^ N) := by
        apply Finset.sum_le_sum
        intro p hp
        rw [norm_mul]
        apply mul_le_mul (hB p σ hσ) _ (norm_nonneg _) (hB0 p)
        refine (hCp p hp σ hσ ν y hν hy).trans ?_
        apply div_le_div_of_nonneg_right _ hD.le
        apply mul_le_mul_of_nonneg_left _ (hCp0 p)
        apply rpow_le_add_inv_pow hy'
        have hc : (p.1 : ℝ) + 2 * p.2.1 = p.2.2 + 2 + j := by exact_mod_cast (hS p hp).2
        have he : (p.2.2 : ℝ) + 1 - p.1 - 2 * p.2.1 - 2 * σ.re = -(1 + j + 2 * σ.re) := by
          linarith
        rw [he, abs_neg]
        refine le_trans ?_ (Nat.le_ceil _)
        have hj : (0 : ℝ) ≤ j := Nat.cast_nonneg j
        calc |1 + (j : ℝ) + 2 * σ.re| ≤ |1 + (j : ℝ)| + |2 * σ.re| := abs_add_le _ _
          _ = 1 + j + 2 * |σ.re| := by
              rw [abs_of_nonneg (by linarith), abs_mul, abs_of_pos (by norm_num : (0:ℝ) < 2)]
          _ ≤ 1 + j + 2 * R := by linarith
    _ = (∑ p ∈ S, B p * Cp p) * (|y| + |y|⁻¹) ^ ⌈1 + (j : ℝ) + 2 * R⌉₊ / (1 + |ν * y|) ^ N := by
        rw [Finset.sum_mul, Finset.sum_div]
        refine Finset.sum_congr rfl fun p _ => ?_
        ring

end GlobalTheory.HeckeTwo.TermBoundDeriv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IteratedDerivHeckePhiFourierTransformBound =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IteratedDerivHeckePhiFourierTransformRepr =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IteratedDerivHeckePhiFourierTransformRepr", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContDiffOnHeckeEisensteinFourierTerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

noncomputable section
namespace GlobalTheory.HeckeTwo.TermSmooth

theorem sum_pushforward_eval (σ : ℂ) (F : ℕ × ℕ × ℕ → ℂ) (g : ℕ × ℕ × ℕ → ℕ × ℕ × ℕ)
    (c : ℕ × ℕ × ℕ → Polynomial ℂ) (U S' : Finset (ℕ × ℕ × ℕ)) (hU : ∀ p ∈ U, g p ∈ S') :
    ∑ q ∈ S', (∑ p ∈ U, if g p = q then c p else 0).eval σ * F q = ∑ p ∈ U, (c p).eval σ * F (g p) := by
  simp_rw [Polynomial.eval_finsetSum, Finset.sum_mul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun p hp => ?_
  simp_rw [apply_ite (Polynomial.eval σ), Polynomial.eval_zero, ite_mul, zero_mul]
  rw [Finset.sum_ite_eq, if_pos (hU p hp)]

theorem iteratedDeriv_hTrans_repr : ∀ j : ℕ, ∃ (S : Finset (ℕ × ℕ × ℕ)) (P : ℕ × ℕ × ℕ → Polynomial ℂ),
    (∀ p ∈ S, 2 ≤ p.1 + 2 * p.2.1 ∧ p.1 + 2 * p.2.1 = p.2.2 + 2 + j) ∧
    ∀ σ ∈ halfPlane, ∀ ν y : ℝ, y ≠ 0 →
      iteratedDeriv j (hTrans σ ν) y = ∑ p ∈ S, (P p).eval σ * GlobalTheory.HeckeTwo.TermSmooth.intT σ ν p.1 p.2.1 p.2.2 y := by
  intro j
  induction j with
  | zero =>
    refine ⟨{(2, 0, 0)}, fun _ => 1, ?_, ?_⟩
    · intro p hp; rw [Finset.mem_singleton] at hp; subst hp; norm_num
    · intro σ hσ ν y hy
      simp [iteratedDeriv_zero, hTrans_eq σ ν hy]
  | succ j ih =>
    obtain ⟨S, P, hS, hP⟩ := ih
    let f1 : ℕ × ℕ × ℕ → ℕ × ℕ × ℕ := fun p => (p.1 + 1, p.2.1, p.2.2)
    let f2 : ℕ × ℕ × ℕ → ℕ × ℕ × ℕ := fun p => (p.1, p.2.1 + 1, p.2.2 + 1)
    let f3 : ℕ × ℕ × ℕ → ℕ × ℕ × ℕ := fun p => (p.1, p.2.1, p.2.2 - 1)
    let T := S.filter (fun p => 1 ≤ p.2.2)
    let c1 : ℕ × ℕ × ℕ → Polynomial ℂ := fun p => Polynomial.C (-(p.1 : ℂ) * I) * P p
    let c2 : ℕ × ℕ × ℕ → Polynomial ℂ := fun p =>
      Polynomial.C 2 * (-Polynomial.X - Polynomial.C (p.2.1 : ℂ)) * P p
    let c3 : ℕ × ℕ × ℕ → Polynomial ℂ := fun p => Polynomial.C (p.2.2 : ℂ) * P p
    let S' := S.image f1 ∪ S.image f2 ∪ T.image f3
    refine ⟨S', fun q => (∑ p ∈ S, if f1 p = q then c1 p else 0) + (∑ p ∈ S, if f2 p = q then c2 p else 0)
        + ∑ p ∈ T, if f3 p = q then c3 p else 0, ?_, ?_⟩
    · intro q hq
      simp only [S', Finset.mem_union, Finset.mem_image, T, Finset.mem_filter] at hq
      rcases hq with (⟨p, hp, rfl⟩ | ⟨p, hp, rfl⟩) | ⟨p, ⟨hp, hm⟩, rfl⟩ <;>
        have := hS p hp <;> simp only [f1, f2, f3] <;> omega
    · intro σ hσ ν y hy
      have hev : iteratedDeriv j (hTrans σ ν) =ᶠ[nhds y]
          fun y => ∑ p ∈ S, (P p).eval σ * intT σ ν p.1 p.2.1 p.2.2 y :=
        Filter.eventually_of_mem (isOpen_ne.mem_nhds hy) fun z hz => hP σ hσ ν z hz
      have hd : HasDerivAt (fun y => ∑ p ∈ S, (P p).eval σ * intT σ ν p.1 p.2.1 p.2.2 y)
          (∑ p ∈ S, (P p).eval σ * (-(p.1 : ℂ) * I * intT σ ν (p.1 + 1) p.2.1 p.2.2 y
            + 2 * (-σ - (p.2.1 : ℂ)) * intT σ ν p.1 (p.2.1 + 1) (p.2.2 + 1) y
            + (p.2.2 : ℂ) * intT σ ν p.1 p.2.1 (p.2.2 - 1) y)) y :=
        HasDerivAt.fun_sum fun p hp => (hasDerivAt_intT σ hσ ν p.2.2 (hS p hp).1 hy).const_mul _
      rw [iteratedDeriv_succ, hev.deriv_eq, hd.deriv]
      set F : ℕ × ℕ × ℕ → ℂ := fun q => intT σ ν q.1 q.2.1 q.2.2 y with hF
      have e1 := sum_pushforward_eval σ F f1 c1 S S' fun p hp => by
        simp only [S', Finset.mem_union, Finset.mem_image]; exact Or.inl (Or.inl ⟨p, hp, rfl⟩)
      have e2 := sum_pushforward_eval σ F f2 c2 S S' fun p hp => by
        simp only [S', Finset.mem_union, Finset.mem_image]; exact Or.inl (Or.inr ⟨p, hp, rfl⟩)
      have e3 := sum_pushforward_eval σ F f3 c3 T S' fun p hp => by
        simp only [S', Finset.mem_union, Finset.mem_image]; exact Or.inr ⟨p, hp, rfl⟩
      have e3' : ∑ p ∈ T, (c3 p).eval σ * F (f3 p) = ∑ p ∈ S, (c3 p).eval σ * F (f3 p) := by
        refine Finset.sum_filter_of_ne fun p _ hne => ?_
        by_contra h
        have h0 : p.2.2 = 0 := by omega
        apply hne
        simp [c3, h0]
      have split : ∀ q, ((∑ p ∈ S, if f1 p = q then c1 p else 0) + (∑ p ∈ S, if f2 p = q then c2 p else 0)
          + ∑ p ∈ T, if f3 p = q then c3 p else 0).eval σ * F q =
          (∑ p ∈ S, if f1 p = q then c1 p else 0).eval σ * F q +
          (∑ p ∈ S, if f2 p = q then c2 p else 0).eval σ * F q +
          (∑ p ∈ T, if f3 p = q then c3 p else 0).eval σ * F q := by
        intro q; rw [Polynomial.eval_add, Polynomial.eval_add]; ring
      show _ = ∑ q ∈ S', _ * F q
      rw [Finset.sum_congr rfl fun q _ => split q, Finset.sum_add_distrib, Finset.sum_add_distrib, e1, e2, e3, e3',
        ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun p _ => ?_
      simp only [c1, c2, c3, F, f1, f2, f3, Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_sub,
        Polynomial.eval_neg, Polynomial.eval_X]
      ring

end GlobalTheory.HeckeTwo.TermSmooth
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IteratedDerivHeckePhiFourierTransformRepr =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivHeckeFourierFactorLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivHeckeFourierFactorLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KFacDifferentiable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContDiffOnHeckeEisensteinFourierTerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Bounds\npublic import Mathlib.Analysis.Complex.OperatorNorm\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

noncomputable section
namespace GlobalTheory.HeckeTwo.FactorBound

theorem iteratedDeriv_eChar (i : ℕ) :
    iteratedDeriv i (fun x : ℝ => Complex.exp (2 * (Real.pi : ℂ) * I * (x : ℂ))) =
      fun x : ℝ => (2 * (Real.pi : ℂ) * I) ^ i * Complex.exp (2 * (Real.pi : ℂ) * I * (x : ℂ)) := by
  induction i with
  | zero => simp
  | succ i ih =>
    rw [iteratedDeriv_succ, ih]
    funext x
    have h1 : HasDerivAt (fun z : ℂ => Complex.exp (2 * (Real.pi : ℂ) * I * z))
        (Complex.exp (2 * (Real.pi : ℂ) * I * (x : ℂ)) * (2 * (Real.pi : ℂ) * I)) (x : ℂ) := by
      have := ((hasDerivAt_id (x : ℂ)).const_mul (2 * (Real.pi : ℂ) * I)).cexp
      simpa using this
    have h2 := (h1.comp_ofReal).const_mul ((2 * (Real.pi : ℂ) * I) ^ i)
    rw [h2.deriv]
    ring

theorem contDiff_eChar :
    ContDiff ℝ ω (fun x : ℝ => Complex.exp (2 * (Real.pi : ℂ) * I * (x : ℂ))) :=
  (contDiff_const.mul Complex.ofRealCLM.contDiff).cexp

theorem norm_iteratedFDeriv_eChar (i : ℕ) (x : ℝ) :
    ‖iteratedFDeriv ℝ i (fun x : ℝ => Complex.exp (2 * (Real.pi : ℂ) * I * (x : ℂ))) x‖ = (2 * Real.pi) ^ i := by
  rw [norm_iteratedFDeriv_eq_norm_iteratedDeriv, iteratedDeriv_eChar]
  simp only [norm_mul, norm_pow]
  have : ‖Complex.exp (2 * (Real.pi : ℂ) * I * (x : ℂ))‖ = 1 := by
    rw [Complex.norm_exp]; simp
  rw [this, mul_one]
  congr 1
  simp [Complex.norm_real, abs_of_pos Real.pi_pos]

theorem norm_iteratedFDeriv_eRe (a : ℝ) (i : ℕ) (w : ℂ) :
    ‖iteratedFDeriv ℝ i (fun w : ℂ => Complex.exp (2 * (Real.pi : ℂ) * I * ((a * w.re : ℝ) : ℂ))) w‖ ≤
      (2 * Real.pi * |a|) ^ i := by
  set L : ℂ →L[ℝ] ℝ := a • Complex.reCLM
  have hf : (fun w : ℂ => Complex.exp (2 * (Real.pi : ℂ) * I * ((a * w.re : ℝ) : ℂ))) =
      (fun x : ℝ => Complex.exp (2 * (Real.pi : ℂ) * I * (x : ℂ))) ∘ L := by
    funext w; simp [L]
  rw [hf, L.iteratedFDeriv_comp_right contDiff_eChar w le_top]
  refine (ContinuousMultilinearMap.norm_compContinuousLinearMap_le _ _).trans ?_
  rw [norm_iteratedFDeriv_eChar, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
  have hL : ‖L‖ ≤ |a| := by
    simp only [L]
    refine (norm_smul_le _ _).trans ?_
    simp [Complex.reCLM_norm]
  rw [mul_pow (2 * Real.pi) |a| i]
  exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (norm_nonneg _) hL i) (pow_nonneg (mul_nonneg zero_le_two Real.pi_pos.le) _)

theorem norm_iteratedFDerivWithin_hIm (σ : ℂ) (hσ : σ ∈ halfPlane) (ν β : ℝ) (j : ℕ) (w : ℂ)
    (hw : β * w.im ≠ 0) :
    ‖iteratedFDerivWithin ℝ j (fun w : ℂ => hTrans σ ν (β * w.im)) {w : ℂ | β * w.im ≠ 0} w‖ ≤
      ‖iteratedDeriv j (hTrans σ ν) (β * w.im)‖ * |β| ^ j := by
  set L : ℂ →L[ℝ] ℝ := β • Complex.imCLM
  have hS : IsOpen {y : ℝ | y ≠ 0} := isOpen_ne
  have hpre : {w : ℂ | β * w.im ≠ 0} = L ⁻¹' {y : ℝ | y ≠ 0} := by ext w; simp [L]
  have hf : (fun w : ℂ => hTrans σ ν (β * w.im)) = hTrans σ ν ∘ L := by funext w; simp [L]
  have hLw : L w = β * w.im := by simp [L]
  have hLw' : L w ∈ {y : ℝ | y ≠ 0} := by rw [hLw]; exact hw
  rw [hf, hpre, L.iteratedFDerivWithin_comp_right (TermSmooth.contDiffOn_hTrans σ hσ ν) hS.uniqueDiffOn
    (hS.preimage L.continuous).uniqueDiffOn hLw' (by exact_mod_cast le_top)]
  refine (ContinuousMultilinearMap.norm_compContinuousLinearMap_le _ _).trans ?_
  rw [Finset.prod_const, Finset.card_univ, Fintype.card_fin, iteratedFDerivWithin_of_isOpen j hS hLw',
    norm_iteratedFDeriv_eq_norm_iteratedDeriv, hLw]
  have hL : ‖L‖ ≤ |β| := by
    simp only [L]
    refine (norm_smul_le _ _).trans ?_
    simp [Complex.imCLM_norm]
  exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (norm_nonneg _) hL j) (norm_nonneg _)

theorem norm_iteratedFDeriv_le_sum (σ : ℂ) (hσ : σ ∈ halfPlane) (ν β : ℝ) (hβ : β ≠ 0) (k : ℕ) (w : ℂ)
    (hw : 0 < w.im) :
    ‖iteratedFDeriv ℝ k (fun w : ℂ => Complex.exp (2 * (Real.pi : ℂ) * I * ((ν * β * w.re : ℝ) : ℂ)) *
          hTrans σ ν (β * w.im)) w‖ ≤
      ∑ i ∈ Finset.range (k + 1), (k.choose i : ℝ) * (2 * Real.pi * |ν * β|) ^ i *
        (‖iteratedDeriv (k - i) (hTrans σ ν) (β * w.im)‖ * |β| ^ (k - i)) := by
  set V : Set ℂ := {w : ℂ | β * w.im ≠ 0}
  have hV : IsOpen V := isOpen_ne_fun (continuous_const.mul Complex.continuous_im) continuous_const
  have hwV : w ∈ V := mul_ne_zero hβ hw.ne'
  have hu : ContDiffOn ℝ ∞ (fun w : ℂ => Complex.exp (2 * (Real.pi : ℂ) * I * ((ν * β * w.re : ℝ) : ℂ))) V :=
    ((contDiff_const.mul (Complex.ofRealCLM.contDiff.comp
      (contDiff_const.mul Complex.reCLM.contDiff))).cexp).contDiffOn
  have hv : ContDiffOn ℝ ∞ (fun w : ℂ => hTrans σ ν (β * w.im)) V :=
    (TermSmooth.contDiffOn_hTrans σ hσ ν).comp (contDiff_const.mul Complex.imCLM.contDiff).contDiffOn
      fun z hz => hz
  rw [← iteratedFDerivWithin_of_isOpen k hV hwV]
  refine (norm_iteratedFDerivWithin_mul_le hu hv hV.uniqueDiffOn hwV (by exact_mod_cast le_top)).trans ?_
  refine Finset.sum_le_sum fun i _ => ?_
  rw [iteratedFDerivWithin_of_isOpen i hV hwV]
  refine mul_le_mul (mul_le_mul_of_nonneg_left (norm_iteratedFDeriv_eRe (ν * β) i w) (Nat.cast_nonneg _))
    (norm_iteratedFDerivWithin_hIm σ hσ ν β (k - i) w hwV) (norm_nonneg _) ?_
  exact mul_nonneg (Nat.cast_nonneg _) (pow_nonneg (by positivity) _)

theorem norm_iteratedFDeriv_fourierFactor_le :
    (∀ K : Set ℂ, IsCompact K → K ⊆ halfPlane → ∀ j : ℕ, ∃ s : ℕ, ∀ N : ℕ, ∃ C : ℝ,
    ∀ σ ∈ K, ∀ ν y : ℝ, ν ≠ 0 → y ≠ 0 →
      ‖iteratedDeriv j (hTrans σ ν) y‖ ≤ C * (|y| + |y|⁻¹) ^ s / (1 + |ν * y|) ^ N) →
  ∀ K : Set ℂ, IsCompact K → K ⊆ halfPlane → ∀ c c' : ℝ, 0 < c → ∀ k : ℕ, ∃ m : ℕ, ∀ N : ℕ, ∃ C : ℝ,
    ∀ σ ∈ K, ∀ ν β : ℝ, ν ≠ 0 → β ≠ 0 → ∀ w : ℂ, c ≤ w.im → w.im ≤ c' →
      ‖iteratedFDeriv ℝ k (fun w : ℂ => Complex.exp (2 * (Real.pi : ℂ) * I * ((ν * β * w.re : ℝ) : ℂ)) *
          hTrans σ ν (β * w.im)) w‖ ≤ C * (|β| + |β|⁻¹) ^ m / (1 + |ν * β|) ^ N := by
  intro H K hK hKH c c' hc k
  choose s hs using H K hK hKH
  refine ⟨k + ∑ j ∈ Finset.range (k + 1), s j, fun N => ?_⟩
  choose C hC using fun j => hs j (N + k)
  set M : ℝ := max c' c⁻¹ with hMdef
  set μ : ℝ := min 1 c with hμdef
  have hM : 0 < M := lt_of_lt_of_le (inv_pos.2 hc) (le_max_right _ _)
  have hμ : 0 < μ := lt_min one_pos hc
  refine ⟨∑ i ∈ Finset.range (k + 1), (k.choose i : ℝ) * (2 * Real.pi) ^ i *
      (|C (k - i)| * M ^ s (k - i) / μ ^ (N + k)), ?_⟩
  intro σ hσ ν β hν hβ w hw1 hw2
  have hσH : σ ∈ halfPlane := hKH hσ
  have ht : 0 < w.im := lt_of_lt_of_le hc hw1
  set t := w.im with htdef
  set B : ℝ := |β| + |β|⁻¹ with hBdef
  set A : ℝ := 1 + |ν * β| with hAdef
  have hβp : 0 < |β| := abs_pos.2 hβ
  have hB1 : 1 ≤ B := by
    rcases le_total 1 |β| with h | h
    · have := inv_nonneg.2 hβp.le; linarith
    · have := (one_le_inv₀ hβp).2 h; linarith
  have hA1 : 1 ≤ A := by have := abs_nonneg (ν * β); linarith
  have hApos : 0 < A := by linarith
  have hy : β * t ≠ 0 := mul_ne_zero hβ ht.ne'
  have hyB : |β * t| + |β * t|⁻¹ ≤ M * B := by
    rw [abs_mul, abs_of_pos ht, mul_inv, hBdef, mul_add]
    have h1 : |β| * t ≤ M * |β| := by
      rw [mul_comm M]; exact mul_le_mul_of_nonneg_left (hw2.trans (le_max_left _ _)) hβp.le
    have h2 : |β|⁻¹ * t⁻¹ ≤ M * |β|⁻¹ := by
      rw [mul_comm M]
      refine mul_le_mul_of_nonneg_left ?_ (inv_nonneg.2 hβp.le)
      exact (inv_anti₀ hc hw1).trans (le_max_right _ _)
    linarith
  have hyA : μ * A ≤ 1 + |ν * (β * t)| := by
    rw [← mul_assoc, abs_mul (ν * β), abs_of_pos ht, hAdef, mul_add, mul_one]
    have h1 : μ ≤ 1 := min_le_left _ _
    have h2 : μ ≤ t := (min_le_right _ _).trans hw1
    have h3 : μ * |ν * β| ≤ |ν * β| * t := by
      rw [mul_comm]; exact mul_le_mul_of_nonneg_left h2 (abs_nonneg _)
    linarith
  have hh : ∀ j, ‖iteratedDeriv j (hTrans σ ν) (β * t)‖ ≤
      |C j| * (M * B) ^ s j / (μ * A) ^ (N + k) := by
    intro j
    refine (hC j σ hσ ν (β * t) hν hy).trans ?_
    have hX : 0 ≤ (|β * t| + |β * t|⁻¹) ^ s j := by positivity
    calc C j * (|β * t| + |β * t|⁻¹) ^ s j / (1 + |ν * (β * t)|) ^ (N + k)
        ≤ |C j| * (|β * t| + |β * t|⁻¹) ^ s j / (1 + |ν * (β * t)|) ^ (N + k) := by
          gcongr
          exact le_abs_self _
      _ ≤ |C j| * (M * B) ^ s j / (μ * A) ^ (N + k) := by
          gcongr
  refine (norm_iteratedFDeriv_le_sum σ hσH ν β hβ k w ht).trans ?_
  rw [mul_div_assoc, Finset.sum_mul]
  refine Finset.sum_le_sum fun i hi => ?_
  have hik : i ≤ k := Nat.lt_succ_iff.1 (Finset.mem_range.1 hi)
  set j := k - i with hjdef
  have hjk : j ≤ k := Nat.sub_le _ _
  have hsj : s j ≤ ∑ j ∈ Finset.range (k + 1), s j :=
    Finset.single_le_sum (fun _ _ => Nat.zero_le _) (Finset.mem_range.2 (Nat.lt_succ_of_le hjk))
  have hd : (2 * Real.pi * |ν * β|) ^ i ≤ (2 * Real.pi) ^ i * A ^ k := by
    rw [mul_pow]
    refine mul_le_mul_of_nonneg_left ?_ (by positivity)
    calc |ν * β| ^ i ≤ A ^ i := pow_le_pow_left₀ (abs_nonneg _) (by linarith) i
      _ ≤ A ^ k := pow_le_pow_right₀ hA1 hik
  have he : |β| ^ j ≤ B ^ k :=
    (pow_le_pow_left₀ hβp.le (by have := inv_nonneg.2 hβp.le; linarith) j).trans (pow_le_pow_right₀ hB1 hjk)
  calc (k.choose i : ℝ) * (2 * Real.pi * |ν * β|) ^ i * (‖iteratedDeriv j (hTrans σ ν) (β * t)‖ * |β| ^ j)
      ≤ (k.choose i : ℝ) * ((2 * Real.pi) ^ i * A ^ k) *
          ((|C j| * (M * B) ^ s j / (μ * A) ^ (N + k)) * B ^ k) := by
        gcongr
        exact hh j
    _ = (k.choose i : ℝ) * (2 * Real.pi) ^ i * (|C j| * M ^ s j / μ ^ (N + k)) * (B ^ (k + s j) / A ^ N) := by
        have hA0 : A ≠ 0 := hApos.ne'
        have hμ0 : μ ≠ 0 := hμ.ne'
        rw [mul_pow, mul_pow, pow_add, pow_add]
        field_simp
        rw [mul_pow, mul_pow, pow_add]
        ring
    _ ≤ (k.choose i : ℝ) * (2 * Real.pi) ^ i * (|C j| * M ^ s j / μ ^ (N + k)) *
          (B ^ (k + ∑ j ∈ Finset.range (k + 1), s j) / A ^ N) := by
        gcongr

end GlobalTheory.HeckeTwo.FactorBound

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivHeckeFourierFactorLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivProdCoordLeLeibniz =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivProdCoordLeLeibniz", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Calculus.ContDiff.Defs\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Bounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.OmegaFactorization\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.KFacDifferentiable\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

namespace GlobalTheory.LeibnizProd

theorem countPerms_le_factorial {ι : Type} [Fintype ι] [DecidableEq ι] {n : ℕ} (p : Sym ι n) :
    ((p : Multiset ι).countPerms : ℝ) ≤ (n.factorial : ℝ) := by
  have h1 : (p : Multiset ι).countPerms =
      Nat.multinomial Finset.univ (fun j => (p : Multiset ι).count j) := by
    rw [Multiset.countPerms, Finsupp.multinomial_eq_of_support_subset (Finset.subset_univ _)]
    rfl
  have h2 : ∑ j, (p : Multiset ι).count j = n := by
    rw [Multiset.sum_count_eq_card (fun a _ => Finset.mem_univ a)]
    exact p.2
  have h3 := Nat.multinomial_spec Finset.univ (fun j => (p : Multiset ι).count j)
  rw [h2] at h3
  have h4 : (p : Multiset ι).countPerms ≤ n.factorial := by
    rw [h1]
    exact Nat.le_of_dvd (Nat.factorial_pos n) (Dvd.intro_left _ h3)
  exact_mod_cast h4

theorem sum_sym_le {ι : Type} [Fintype ι] [DecidableEq ι] (n : ℕ) (a : ι → ℕ → ℝ)
    (ha : ∀ i k, 0 ≤ a i k) :
    ∑ p ∈ (Finset.univ : Finset ι).sym n, ∏ j, a j ((p : Multiset ι).count j) ≤
      ∏ j, ∑ k ∈ Finset.range (n + 1), a j k := by
  rw [← Finset.sum_prod_piFinset]
  let φ : Sym ι n → (ι → ℕ) := fun p j => (p : Multiset ι).count j
  have hinj : Set.InjOn φ ↑((Finset.univ : Finset ι).sym n) := by
    intro p _ q _ h
    apply Sym.coe_injective
    ext j
    exact congrFun h j
  have hs := Finset.sum_image (f := fun c : ι → ℕ => ∏ j, a j (c j)) hinj
  rw [← hs]
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro c hc
    obtain ⟨p, _, rfl⟩ := Finset.mem_image.1 hc
    rw [Fintype.mem_piFinset]
    intro j
    rw [Finset.mem_range, Nat.lt_succ_iff]
    calc (p : Multiset ι).count j ≤ Multiset.card (p : Multiset ι) := Multiset.count_le_card _ _
      _ = n := p.2
  · intro c _ _
    exact Finset.prod_nonneg fun j _ => ha j _

theorem norm_iteratedFDeriv_comp_apply_le {ι : Type} [Fintype ι] (g : ℂ → ℂ) (U : Set ℂ)
    (hU : IsOpen U) (hg : ContDiffOn ℝ ∞ g U) (j : ι) (z : ι → ℂ) (hz : z j ∈ U) (k : ℕ) :
    ‖iteratedFDeriv ℝ k (fun w : ι → ℂ => g (w j)) z‖ ≤ ‖iteratedFDeriv ℝ k g (z j)‖ := by
  set P : (ι → ℂ) →L[ℝ] ℂ := ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : ι => ℂ) j
  have hPo : IsOpen (P ⁻¹' U) := hU.preimage P.continuous
  have hzP : P z ∈ U := hz
  have hzP' : z ∈ P ⁻¹' U := hz
  have e := P.iteratedFDerivWithin_comp_right hg hU.uniqueDiffOn hPo.uniqueDiffOn hzP (i := k)
    (by exact_mod_cast le_top)
  rw [iteratedFDerivWithin_of_isOpen k hPo hzP', iteratedFDerivWithin_of_isOpen k hU hzP] at e
  have hfun : (fun w : ι → ℂ => g (w j)) = g ∘ P := rfl
  rw [hfun, e]
  refine (ContinuousMultilinearMap.norm_compContinuousLinearMap_le _ _).trans ?_
  have hP : ‖P‖ ≤ 1 := ContinuousLinearMap.opNorm_le_bound _ zero_le_one
    (fun w => by simpa [P] using norm_le_pi_norm w j)
  calc ‖iteratedFDeriv ℝ k g (P z)‖ * ∏ _i : Fin k, ‖P‖ ≤ ‖iteratedFDeriv ℝ k g (P z)‖ * 1 := by
        gcongr
        exact Finset.prod_le_one₀ (fun _ _ => norm_nonneg _) (fun _ _ => hP)
    _ = ‖iteratedFDeriv ℝ k g (z j)‖ := by rw [mul_one]; rfl

theorem norm_iteratedFDeriv_prod_apply_le : ∀ (ι : Type) [Fintype ι] (g : ι → ℂ → ℂ) (U : ι → Set ℂ), (∀ i, IsOpen (U i)) →
    (∀ i, ContDiffOn ℝ ∞ (g i) (U i)) → ∀ z : ι → ℂ, (∀ i, z i ∈ U i) → ∀ n : ℕ,
      ‖iteratedFDeriv ℝ n (fun z : ι → ℂ => ∏ i, g i (z i)) z‖ ≤
        n.factorial * ∏ i, ∑ k ∈ Finset.range (n + 1), ‖iteratedFDeriv ℝ k (g i) (z i)‖ := by
  intro ι _ g U hU hg z hz n
  classical
  set V : Set (ι → ℂ) := ⋂ i, (fun w : ι → ℂ => w i) ⁻¹' U i with hVdef
  have hV : IsOpen V := isOpen_iInter_of_finite fun i => (hU i).preimage (continuous_apply i)
  have hzV : z ∈ V := Set.mem_iInter.2 hz
  have hf : ∀ i ∈ (Finset.univ : Finset ι), ContDiffOn ℝ ∞ (fun w : ι → ℂ => g i (w i)) V := by
    intro i _
    exact (hg i).comp (contDiff_apply ℝ (fun _ => ℂ) i).contDiffOn (fun w hw => Set.mem_iInter.1 hw i)
  have key := norm_iteratedFDerivWithin_prod_le (u := Finset.univ) hf hV.uniqueDiffOn hzV (n := n)
    (by exact_mod_cast le_top)
  rw [iteratedFDerivWithin_of_isOpen n hV hzV] at key
  refine key.trans ?_
  calc _ ≤ ∑ p ∈ (Finset.univ : Finset ι).sym n, (n.factorial : ℝ) *
        ∏ j, ‖iteratedFDeriv ℝ ((p : Multiset ι).count j) (g j) (z j)‖ := by
        gcongr with p hp j
        · exact_mod_cast countPerms_le_factorial p
        · rw [iteratedFDerivWithin_of_isOpen _ hV hzV]
          exact norm_iteratedFDeriv_comp_apply_le (g j) (U j) (hU j) (hg j) j z (hz j) _
    _ ≤ _ := by
        rw [← Finset.mul_sum]
        gcongr
        exact sum_sym_le n (fun j k => ‖iteratedFDeriv ℝ k (g j) (z j)‖) (fun _ _ => norm_nonneg _)

end GlobalTheory.LeibnizProd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivProdCoordLeLeibniz =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FTermIteratedFDerivBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FTermIteratedFDerivBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KFacDifferentiable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContDiffOnHeckeEisensteinFourierTerm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeYDerivativeTermIntegralPolynomialDecay\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactPiUpperHalfPlaneImBounds\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IteratedDerivHeckePhiFourierTransformBound\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IteratedDerivHeckePhiFourierTransformRepr\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivHeckeFourierFactorLe\npublic import Mathlib.Analysis.Calculus.ContDiff.Defs\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivProdCoordLeLeibniz\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

noncomputable section

namespace GlobalTheory.HeckeTwo.TermBound

theorem factorSmooth (σ : ℂ) (hσ : σ ∈ halfPlane) (ν β : ℝ) (hβ : β ≠ 0) :
    ContDiffOn ℝ ∞ (fun w : ℂ => Complex.exp (2 * (Real.pi : ℂ) * I * ((ν * β * w.re : ℝ) : ℂ)) *
      hTrans σ ν (β * w.im)) {w : ℂ | 0 < w.im} := by
  have hre : ContDiff ℝ ∞ (fun w : ℂ => ((ν * β * w.re : ℝ) : ℂ)) :=
    Complex.ofRealCLM.contDiff.comp (contDiff_const.mul Complex.reCLM.contDiff)
  have h1 : ContDiff ℝ ∞ (fun w : ℂ => Complex.exp (2 * (Real.pi : ℂ) * I * ((ν * β * w.re : ℝ) : ℂ))) :=
    Complex.contDiff_exp.comp (contDiff_const.mul hre)
  have h2 : ContDiffOn ℝ ∞ (fun w : ℂ => hTrans σ ν (β * w.im)) {w : ℂ | 0 < w.im} := by
    refine (GlobalTheory.HeckeTwo.TermSmooth.contDiffOn_hTrans σ hσ ν).comp
      (contDiff_const.mul Complex.imCLM.contDiff : ContDiff ℝ ∞ fun w : ℂ => β * w.im).contDiffOn ?_
    intro w hw; exact mul_ne_zero hβ (ne_of_gt hw)
  exact h1.contDiffOn.mul h2

theorem fTerm_iteratedFDeriv_bound : ∀ (F : Type) [Field F] [NumberField F] (K : Set ℂ), IsCompact K → K ⊆ halfPlane →
    ∀ L : Set (Emb F → ℂ), IsCompact L → L ⊆ upperHalf F → ∀ n : ℕ, ∃ m : ℕ, ∀ N : ℕ, ∃ C : ℝ,
      ∀ σ ∈ K, ∀ z ∈ L, ∀ b ν : F, b ≠ 0 → ν ≠ 0 →
        ‖iteratedFDeriv ℝ n (fun z : Emb F → ℂ => fTerm σ z b ν) z‖ ≤
          C * ∏ τ : Emb F, (|τ b| + |τ b|⁻¹) ^ m / (1 + |τ ν * τ b|) ^ N := by
  intro F _ _ K hK hKH L hL hLH n
  obtain ⟨c, c', hc, hcc⟩ := _root_.GlobalTheory.isCompact_pi_upperHalfPlane_im_bounds (Emb F) L hL (fun z hz τ => hLH hz τ)
  have hfb := _root_.GlobalTheory.HeckeTwo.FactorBound.norm_iteratedFDeriv_fourierFactor_le (_root_.GlobalTheory.HeckeTwo.TermBoundDeriv.iteratedDeriv_hTrans_bound _root_.GlobalTheory.HeckeTwo.TermSmooth.iteratedDeriv_hTrans_repr _root_.GlobalTheory.HeckeTwo.TermDecay.intT_bound) K hK hKH c c' hc
  choose mk hmk using hfb
  refine ⟨(Finset.range (n + 1)).sup mk, fun N => ?_⟩
  choose Ck hCk using fun k => hmk k N
  refine ⟨n.factorial * (∑ k ∈ Finset.range (n + 1), max (Ck k) 0) ^ Fintype.card (Emb F), ?_⟩
  intro σ hσ z hz b ν hb hν
  have hσH : σ ∈ halfPlane := hKH hσ
  set m := (Finset.range (n + 1)).sup mk with hm
  set C0 := ∑ k ∈ Finset.range (n + 1), max (Ck k) 0 with hC0
  set g : Emb F → ℂ → ℂ := fun τ w => Complex.exp (2 * (Real.pi : ℂ) * I * ((τ ν * τ b * w.re : ℝ) : ℂ)) *
    hTrans σ (τ ν) (τ b * w.im) with hg
  have hfun : (fun z : Emb F → ℂ => fTerm σ z b ν) = fun z => ∏ τ, g τ (z τ) := rfl
  have hτb : ∀ τ : Emb F, τ b ≠ 0 := fun τ => (map_ne_zero τ).2 hb
  have hτν : ∀ τ : Emb F, τ ν ≠ 0 := fun τ => (map_ne_zero τ).2 hν
  have hsm : ∀ τ, ContDiffOn ℝ ∞ (g τ) {w : ℂ | 0 < w.im} := fun τ => factorSmooth σ hσH (τ ν) (τ b) (hτb τ)
  have hopen : ∀ τ : Emb F, IsOpen {w : ℂ | 0 < w.im} := fun _ => isOpen_lt continuous_const Complex.continuous_im
  rw [hfun]
  refine (_root_.GlobalTheory.LeibnizProd.norm_iteratedFDeriv_prod_apply_le (Emb F) g (fun _ => {w : ℂ | 0 < w.im}) hopen hsm z (fun τ => hLH hz τ) n).trans ?_
  have hfac : ∀ τ, ∑ k ∈ Finset.range (n + 1), ‖iteratedFDeriv ℝ k (g τ) (z τ)‖ ≤
      C0 * ((|τ b| + |τ b|⁻¹) ^ m / (1 + |τ ν * τ b|) ^ N) := by
    intro τ
    rw [hC0, Finset.sum_mul]
    refine Finset.sum_le_sum fun k hk => ?_
    have h1 := hCk k σ hσ (τ ν) (τ b) (hτν τ) (hτb τ) (z τ) (hcc z hz τ).1 (hcc z hz τ).2
    have hB1 : (1 : ℝ) ≤ |τ b| + |τ b|⁻¹ := by
      have hp : 0 < |τ b| := abs_pos.2 (hτb τ)
      rcases le_total 1 |τ b| with h | h
      · linarith [inv_pos.2 hp]
      · have : 1 ≤ |τ b|⁻¹ := (one_le_inv₀ hp).2 h
        linarith
    have hmk' : mk k ≤ m := Finset.le_sup hk
    have hpow : (|τ b| + |τ b|⁻¹) ^ mk k ≤ (|τ b| + |τ b|⁻¹) ^ m := pow_le_pow_right₀ hB1 hmk'
    have hden : 0 < (1 + |τ ν * τ b|) ^ N := by positivity
    calc ‖iteratedFDeriv ℝ k (g τ) (z τ)‖ ≤ Ck k * (|τ b| + |τ b|⁻¹) ^ mk k / (1 + |τ ν * τ b|) ^ N := h1
      _ ≤ max (Ck k) 0 * ((|τ b| + |τ b|⁻¹) ^ m / (1 + |τ ν * τ b|) ^ N) := by
        rw [mul_div_assoc]
        exact mul_le_mul (le_max_left _ _) (div_le_div_of_nonneg_right hpow hden.le) (by positivity)
          (le_max_right _ _)
  calc (n.factorial : ℝ) * ∏ τ, ∑ k ∈ Finset.range (n + 1), ‖iteratedFDeriv ℝ k (g τ) (z τ)‖
      ≤ n.factorial * ∏ τ : Emb F, (C0 * ((|τ b| + |τ b|⁻¹) ^ m / (1 + |τ ν * τ b|) ^ N)) := by
        exact mul_le_mul_of_nonneg_left (Finset.prod_le_prod₀ (fun τ _ => Finset.sum_nonneg fun _ _ => norm_nonneg _)
          (fun τ _ => hfac τ)) (by positivity)
    _ = _ := by rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ]; ring

end GlobalTheory.HeckeTwo.TermBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FTermIteratedFDerivBound =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeEisensteinFourierTermMoveUnit =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeEisensteinFourierTermMoveUnit", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KFacDifferentiable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsNormEqProd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.NumberField.Units.Basic\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

noncomputable section
namespace GlobalTheory.HeckeTwoUnit

theorem phi_smul (σ : ℂ) {l : ℝ} (w : ℂ) :
    phi σ ((l : ℂ) * w) = ((l : ℂ)⁻¹ ^ 2 * ((|l| : ℝ) : ℂ) ^ (-2 * σ)) * phi σ w := by
  unfold phi
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.ofReal_mul,
    Complex.mul_cpow_ofReal_nonneg (abs_nonneg l) (norm_nonneg w), mul_inv, mul_pow]
  ring

theorem abs_mul_inv_sq {l : ℝ} (hl : l ≠ 0) :
    ((|l| : ℝ) : ℂ) * (l : ℂ)⁻¹ ^ 2 = ((|l| : ℝ) : ℂ)⁻¹ := by
  have h1 : ((|l| : ℝ) : ℂ) ≠ 0 := by exact_mod_cast abs_ne_zero.2 hl
  have h2 : (l : ℂ) ^ 2 = ((|l| : ℝ) : ℂ) ^ 2 := by
    rw [← Complex.ofReal_pow, ← Complex.ofReal_pow, sq_abs]
  rw [inv_pow, h2]; field_simp

theorem hTrans_smul (σ : ℂ) {l : ℝ} (hl : l ≠ 0) (ν y : ℝ) :
    hTrans σ ν (l * y) = ((|l| : ℝ) : ℂ) ^ (-1 - 2 * σ) * hTrans σ (l * ν) y := by
  have key := MeasureTheory.Measure.integral_comp_mul_left
    (fun t : ℝ => phi σ ((t : ℂ) + ((l * y : ℝ) : ℂ) * I) *
      Complex.exp (-(2 * (Real.pi : ℂ) * I * (ν : ℂ) * (t : ℂ)))) l
  unfold hTrans
  rw [← smul_eq_mul (a := ((|l| : ℝ) : ℂ) ^ _)]
  have habs : |l⁻¹| = |l|⁻¹ := abs_inv l
  have hpos : 0 < |l| := abs_pos.2 hl
  have e1 : ∫ t : ℝ, phi σ ((t : ℂ) + ((l * y : ℝ) : ℂ) * I) *
      Complex.exp (-(2 * (Real.pi : ℂ) * I * (ν : ℂ) * (t : ℂ))) =
      |l| • ∫ t : ℝ, phi σ (((l * t : ℝ) : ℂ) + ((l * y : ℝ) : ℂ) * I) *
        Complex.exp (-(2 * (Real.pi : ℂ) * I * (ν : ℂ) * ((l * t : ℝ) : ℂ))) := by
    rw [key, habs, smul_smul, mul_inv_cancel₀ hpos.ne', one_smul]
  rw [e1]
  have e2 : ∀ t : ℝ, phi σ (((l * t : ℝ) : ℂ) + ((l * y : ℝ) : ℂ) * I) *
        Complex.exp (-(2 * (Real.pi : ℂ) * I * (ν : ℂ) * ((l * t : ℝ) : ℂ))) =
      ((l : ℂ)⁻¹ ^ 2 * ((|l| : ℝ) : ℂ) ^ (-2 * σ)) * (phi σ ((t : ℂ) + (y : ℂ) * I) *
        Complex.exp (-(2 * (Real.pi : ℂ) * I * ((l * ν : ℝ) : ℂ) * (t : ℂ)))) := by
    intro t
    rw [show ((l * t : ℝ) : ℂ) + ((l * y : ℝ) : ℂ) * I = (l : ℂ) * ((t : ℂ) + (y : ℂ) * I) by push_cast; ring,
      phi_smul σ]
    push_cast; ring_nf
  simp_rw [e2]
  rw [MeasureTheory.integral_const_mul, Complex.real_smul, smul_eq_mul, ← mul_assoc, ← mul_assoc,
    abs_mul_inv_sq hl]
  congr 1
  have h1 : ((|l| : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hpos.ne'
  rw [sub_eq_add_neg, Complex.cpow_add _ _ h1, Complex.cpow_neg_one, neg_mul]

end GlobalTheory.HeckeTwoUnit

namespace GlobalTheory.HeckeTwoUnit

theorem prod_abs_unit_cpow {F : Type} [Field F] [NumberField F] [IsTotallyReal F] (ε : (𝓞 F)ˣ) (s : ℂ) :
    ∏ τ : Emb F, ((|τ ((ε : 𝓞 F) : F)| : ℝ) : ℂ) ^ s = 1 := by
  have hprod : ∀ (S : Finset (Emb F)), ∏ τ ∈ S, ((|τ ((ε : 𝓞 F) : F)| : ℝ) : ℂ) ^ s =
      ((∏ τ ∈ S, |τ ((ε : 𝓞 F) : F)| : ℝ) : ℂ) ^ s := by
    classical
    intro S
    induction S using Finset.induction_on with
    | empty => simp
    | insert a S ha ih =>
      rw [Finset.prod_insert ha, Finset.prod_insert ha, ih, Complex.ofReal_mul,
        Complex.mul_cpow_ofReal_nonneg (abs_nonneg _) (Finset.prod_nonneg fun _ _ => abs_nonneg _)]
  rw [hprod]
  have h := GlobalTheory.HeckeTwoExp.abs_norm_eq_prod ((ε : 𝓞 F) : F)
  rw [← Complex.ofReal_prod] at h
  have hn : |((Algebra.norm ℚ ((ε : 𝓞 F) : F) : ℚ) : ℝ)| = 1 := by
    have := Units.norm F ε
    exact_mod_cast this
  rw [← h, hn, Complex.ofReal_one, Complex.one_cpow]

theorem fTerm_unit_mul {F : Type} [Field F] [NumberField F] [IsTotallyReal F] (σ : ℂ) (z : Emb F → ℂ) (b ν : F)
    (ε : (𝓞 F)ˣ) :
    fTerm σ z (((ε : 𝓞 F) : F) * b) ν = fTerm σ z b (((ε : 𝓞 F) : F) * ν) := by
  have hne : ∀ τ : Emb F, τ ((ε : 𝓞 F) : F) ≠ 0 := fun τ h => by
    have hu : ((ε : 𝓞 F) : F) ≠ 0 := by
      intro h0; have := unit_inv_mul ε; rw [h0, mul_zero] at this; exact zero_ne_one this
    exact hu ((map_eq_zero τ).1 h)
  unfold fTerm
  have e : ∀ τ : Emb F, Complex.exp (2 * (Real.pi : ℂ) * I * ((τ ν * τ (((ε : 𝓞 F) : F) * b) * (z τ).re : ℝ) : ℂ)) *
      hTrans σ (τ ν) (τ (((ε : 𝓞 F) : F) * b) * (z τ).im) =
      ((|τ ((ε : 𝓞 F) : F)| : ℝ) : ℂ) ^ (-1 - 2 * σ) *
      (Complex.exp (2 * (Real.pi : ℂ) * I * ((τ (((ε : 𝓞 F) : F) * ν) * τ b * (z τ).re : ℝ) : ℂ)) *
      hTrans σ (τ (((ε : 𝓞 F) : F) * ν)) (τ b * (z τ).im)) := by
    intro τ
    rw [map_mul, map_mul, mul_assoc (τ ((ε : 𝓞 F) : F)) (τ b), hTrans_smul σ (hne τ)]
    rw [show τ ν * (τ ((ε : 𝓞 F) : F) * τ b) * (z τ).re = τ ((ε : 𝓞 F) : F) * τ ν * τ b * (z τ).re by ring]
    ring
  simp_rw [e]
  rw [Finset.prod_mul_distrib, prod_abs_unit_cpow, one_mul]

end GlobalTheory.HeckeTwoUnit

namespace GlobalTheory.HeckeTwoUnit

theorem fTerm_unit_move : ∀ (F : Type) [Field F] [NumberField F] [IsTotallyReal F] (σ : ℂ) (z : Emb F → ℂ) (b ν : F) (ε : (𝓞 F)ˣ),
    fTerm σ z (((ε : 𝓞 F) : F) * b) ν = fTerm σ z b (((ε : 𝓞 F) : F) * ν) :=
  fun _ _ _ _ σ z b ν ε => fTerm_unit_mul σ z b ν ε

end GlobalTheory.HeckeTwoUnit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeEisensteinFourierTermMoveUnit =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableHeckeBalancedLatticeDoubleSum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableHeckeBalancedLatticeDoubleSum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KFacDifferentiable\npublic import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic\npublic import Mathlib.Algebra.Module.ZLattice.Summable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

noncomputable section

namespace GlobalTheory.HeckeTwo.LatSum

variable {F : Type} [Field F] [NumberField F]

def absSum (x : F) : ℝ := ∑ τ : Emb F, |τ x|

theorem absSum_nonneg (x : F) : 0 ≤ absSum x := Finset.sum_nonneg fun _ _ => abs_nonneg _

theorem abs_le_absSum (x : F) (τ : Emb F) : |τ x| ≤ absSum x :=
  Finset.single_le_sum (f := fun τ : Emb F => |τ x|) (fun _ _ => abs_nonneg _) (Finset.mem_univ τ)

theorem one_add_sum_le_prod {ι : Type} (s : Finset ι) (a : ι → ℝ) (h : ∀ i, 0 ≤ a i) :
    1 + ∑ i ∈ s, a i ≤ ∏ i ∈ s, (1 + a i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert i s hi ih =>
    rw [Finset.sum_insert hi, Finset.prod_insert hi]
    have h1 : 0 ≤ ∑ j ∈ s, a j := Finset.sum_nonneg fun j _ => h j
    nlinarith [mul_le_mul_of_nonneg_left ih (by linarith [h i] : (0:ℝ) ≤ 1 + a i), mul_nonneg (h i) h1]

theorem bound_eq (K₁ s x q : ℝ) (a b : ℕ) (hs : s ≠ 0) (hx : x ≠ 0) (hq : q ≠ 0) :
    (K₁ * s) ^ a / (x * (s / q)) ^ (a + b) = K₁ ^ a * q ^ (a + b) * ((s ^ b)⁻¹ * (x ^ (a + b))⁻¹) := by
  rw [mul_pow, mul_pow, div_pow, pow_add s]
  field_simp

variable [IsTotallyReal F]


open scoped Classical in
theorem norm_mixedEmbedding_le (x : F) : ‖mixedEmbedding F x‖ ≤ absSum x := by
  rw [mixedEmbedding.norm_eq_sup'_normAtPlace]
  refine Finset.sup'_le _ _ fun w _ => ?_
  rw [mixedEmbedding.normAtPlace_apply, ← InfinitePlace.norm_embedding_of_isReal (IsTotallyReal.isReal w) x,
    Real.norm_eq_abs]
  exact abs_le_absSum x _

open scoped Classical in
theorem absSum_pos {x : F} (hx : x ≠ 0) : 0 < absSum x := by
  have h : 0 < ‖mixedEmbedding F x‖ := norm_pos_iff.2 fun h =>
    hx ((mixedEmbedding F).injective (h.trans (map_zero _).symm))
  exact h.trans_le (norm_mixedEmbedding_le x)


open scoped Classical in
theorem summable_absSum_inv_pow (I : Frac F) {k : ℕ} (hk : Module.finrank ℚ F < k) :
    Summable (fun x : NZ (I : FractionalIdeal (𝓞 F)⁰ F) => ((absSum x.1) ^ k)⁻¹) := by
  let L := mixedEmbedding.idealLattice F I
  have hL := ZLattice.summable_norm_rpow L (-(k : ℝ)) (by
    rw [ZLattice.rank ℝ L, mixedEmbedding.finrank F]
    have : (Module.finrank ℚ F : ℝ) < k := by exact_mod_cast hk
    linarith)
  let j : NZ (I : FractionalIdeal (𝓞 F)⁰ F) → L := fun x =>
    ⟨mixedEmbedding F x.1, (mixedEmbedding.mem_idealLattice F I).2 ⟨x.1, x.2.1, rfl⟩⟩
  have hj : Function.Injective j := fun x y h =>
    Subtype.ext ((mixedEmbedding F).injective (congrArg Subtype.val h))
  refine (hL.comp_injective hj).of_nonneg_of_le (fun x => inv_nonneg.2 (pow_nonneg (absSum_nonneg _) _))
    (fun x => ?_)
  have hpos : 0 < ‖mixedEmbedding F x.1‖ := norm_pos_iff.2 fun h =>
    x.2.2 ((mixedEmbedding F).injective (h.trans (map_zero _).symm))
  show ((absSum x.1) ^ k)⁻¹ ≤ ‖mixedEmbedding F x.1‖ ^ (-(k : ℝ))
  rw [Real.rpow_neg (norm_nonneg _), Real.rpow_natCast]
  exact inv_anti₀ (pow_pos hpos k) (pow_le_pow_left₀ hpos.le (norm_mixedEmbedding_le x.1) k)

theorem prod_abs_emb (x : F) : ∏ τ : Emb F, |τ x| = |((Algebra.norm ℚ x : ℚ) : ℝ)| := by
  have h := congrArg (fun z : ℂ => ‖z‖) (prod_emb x)
  simp only [norm_prod, Complex.norm_real, Real.norm_eq_abs] at h
  rw [h, ← Complex.ofReal_ratCast, Complex.norm_real, Real.norm_eq_abs]

theorem exists_absSum_lower (I : FractionalIdeal (𝓞 F)⁰ F) :
    ∃ β : ℝ, 0 < β ∧ ∀ x ∈ I, x ≠ 0 → β ≤ absSum x := by
  obtain ⟨d, hd, h⟩ := I.isFractional
  have hd0 : ((d : 𝓞 F) : F) ≠ 0 := by exact_mod_cast nonZeroDivisors.ne_zero hd
  set D := |((Algebra.norm ℚ ((d : 𝓞 F) : F) : ℚ) : ℝ)| with hD
  have hDpos : 0 < D := by simp [hD, Algebra.norm_eq_zero_iff, hd0]
  have hn : 1 ≤ Fintype.card (Emb F) := by
    obtain ⟨w⟩ : Nonempty (InfinitePlace F) := inferInstance
    exact Fintype.card_pos_iff.2 ⟨InfinitePlace.embedding_of_isReal (IsTotallyReal.isReal w)⟩
  refine ⟨min 1 D⁻¹, lt_min one_pos (inv_pos.2 hDpos), fun x hx hx0 => ?_⟩
  obtain ⟨g, hg⟩ := h x hx
  have hg' : ((g : 𝓞 F) : F) = ((d : 𝓞 F) : F) * x := by
    rw [← Algebra.smul_def] at *; simpa using hg
  have hg0 : g ≠ 0 := by
    intro h0; rw [h0] at hg'; simp at hg'
    exact hg'.elim (fun h => hd0 (by exact_mod_cast h)) hx0
  have h1 : (1 : ℝ) ≤ |((Algebra.norm ℤ g : ℤ) : ℝ)| := by
    have : Algebra.norm ℤ g ≠ 0 := Algebra.norm_ne_zero_iff.2 hg0
    exact_mod_cast Int.one_le_abs this
  have e1 : ((Algebra.norm ℤ g : ℤ) : ℚ) = Algebra.norm ℚ ((d : 𝓞 F) : F) * Algebra.norm ℚ x := by
    rw [Algebra.coe_norm_int, hg', map_mul]
  have e2 : ((Algebra.norm ℤ g : ℤ) : ℝ) =
      ((Algebra.norm ℚ ((d : 𝓞 F) : F) : ℚ) : ℝ) * ((Algebra.norm ℚ x : ℚ) : ℝ) := by
    exact_mod_cast congrArg (fun q : ℚ => (q : ℝ)) e1
  rw [e2, abs_mul, ← hD, ← prod_abs_emb] at h1
  have hle : ∏ τ : Emb F, |τ x| ≤ absSum x ^ Fintype.card (Emb F) := by
    calc ∏ τ : Emb F, |τ x| ≤ ∏ _τ : Emb F, absSum x :=
          Finset.prod_le_prod₀ (fun _ _ => abs_nonneg _) (fun τ _ => abs_le_absSum x τ)
      _ = _ := by rw [Finset.prod_const, Finset.card_univ]
  have hS0 := absSum_nonneg x
  rcases le_or_gt 1 (absSum x) with hS | hS
  · exact (min_le_left _ _).trans hS
  · have hpow : absSum x ^ Fintype.card (Emb F) ≤ absSum x := pow_le_of_le_one hS0 hS.le (by omega)
    refine (min_le_right _ _).trans ?_
    have : 1 ≤ D * absSum x := h1.trans (mul_le_mul_of_nonneg_left (hle.trans hpow) hDpos.le)
    rw [inv_le_iff_one_le_mul₀ hDpos]
    linarith

end GlobalTheory.HeckeTwo.LatSum


open GlobalTheory.HeckeTwo.LatSum in
theorem GlobalTheory.HeckeTwo.summable_balanced_latSum :
    ∀ (F : Type) [Field F] [NumberField F] [IsTotallyReal F] (𝔞 𝔟 : Frac F) (C₀ : ℝ) (m : ℕ), ∃ N : ℕ,
    ∀ ε : Quotient (unitRel (𝔟 : FractionalIdeal (𝓞 F)⁰ F)) → (𝓞 F)ˣ,
      (∀ c (τ τ' : Emb F), |τ (((ε c : 𝓞 F) : F) * c.out.1)| ≤ C₀ * |τ' (((ε c : 𝓞 F) : F) * c.out.1)|) →
      Summable (fun p : Quotient (unitRel (𝔟 : FractionalIdeal (𝓞 F)⁰ F)) × NZ (𝔞 : FractionalIdeal (𝓞 F)⁰ F) =>
        ∏ τ : Emb F, (|τ (((ε p.1 : 𝓞 F) : F) * p.1.out.1)| + |τ (((ε p.1 : 𝓞 F) : F) * p.1.out.1)|⁻¹) ^ m /
          (1 + |τ p.2.1 * τ p.1.out.1|) ^ N) := by
  intro F _ _ _ 𝔞 𝔟 C₀ m
  set n := Fintype.card (Emb F) with hn_def
  set f := Module.finrank ℚ F with hf_def
  refine ⟨m * n + (f + 1), fun ε hbal => ?_⟩
  set N := m * n + (f + 1) with hN
  rcases isEmpty_or_nonempty (Quotient (unitRel (𝔟 : FractionalIdeal (𝓞 F)⁰ F))) with hE | ⟨⟨c₀⟩⟩
  · exact summable_empty
  have hn : 1 ≤ n := by
    obtain ⟨w⟩ : Nonempty (InfinitePlace F) := inferInstance
    exact Fintype.card_pos_iff.2 ⟨InfinitePlace.embedding_of_isReal (IsTotallyReal.isReal w)⟩
  obtain ⟨τ₀⟩ : Nonempty (Emb F) := Fintype.card_pos_iff.1 hn
  obtain ⟨β, hβ, hβS⟩ := exists_absSum_lower (𝔟 : FractionalIdeal (𝓞 F)⁰ F)

  let bp : Quotient (unitRel (𝔟 : FractionalIdeal (𝓞 F)⁰ F)) → F := fun c => ((ε c : 𝓞 F) : F) * c.out.1
  have hunit0 : ∀ u : (𝓞 F)ˣ, ((u : 𝓞 F) : F) ≠ 0 := fun u h =>
    u.ne_zero (by exact_mod_cast h)
  have hbp_mem : ∀ c, bp c ∈ (𝔟 : FractionalIdeal (𝓞 F)⁰ F) := fun c => by
    have := Submodule.smul_mem (𝔟 : FractionalIdeal (𝓞 F)⁰ F).coeToSubmodule (ε c : 𝓞 F) c.out.2.1
    rwa [Algebra.smul_def] at this
  have hbp0 : ∀ c, bp c ≠ 0 := fun c => mul_ne_zero (hunit0 _) c.out.2.2
  have hC₀ : 1 ≤ C₀ := by
    have h := hbal c₀ τ₀ τ₀
    have hpos : 0 < |τ₀ (bp c₀)| := abs_pos.2 ((map_ne_zero τ₀).2 (hbp0 c₀))
    exact le_of_mul_le_mul_right (by rw [one_mul]; exact h) hpos
  have hq : 0 < (n : ℝ) * C₀ := mul_pos (by exact_mod_cast hn) (by linarith)
  have hlow : ∀ c (τ : Emb F), absSum (bp c) / (n * C₀) ≤ |τ (bp c)| := by
    intro c τ
    rw [div_le_iff₀ hq]
    calc absSum (bp c) = ∑ τ' : Emb F, |τ' (bp c)| := rfl
      _ ≤ ∑ _τ' : Emb F, C₀ * |τ (bp c)| := Finset.sum_le_sum fun τ' _ => hbal c τ' τ
      _ = |τ (bp c)| * (n * C₀) := by
        rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]; ring

  let g : Quotient (unitRel (𝔟 : FractionalIdeal (𝓞 F)⁰ F)) → ℝ := fun c => ((absSum (bp c)) ^ (f + 1))⁻¹
  let h : NZ (𝔞 : FractionalIdeal (𝓞 F)⁰ F) → ℝ := fun y => ((absSum y.1) ^ N)⁻¹
  have hg : Summable g := by
    refine (summable_absSum_inv_pow 𝔟 (k := f + 1) (by omega)).comp_injective
      (i := fun c => (⟨bp c, hbp_mem c, hbp0 c⟩ : NZ (𝔟 : FractionalIdeal (𝓞 F)⁰ F))) ?_
    intro c c' hcc
    have e : bp c = bp c' := congrArg Subtype.val hcc
    refine Quotient.out_equiv_out.1 ⟨(ε c')⁻¹ * ε c, ?_⟩
    have h1 : (((ε c')⁻¹ : (𝓞 F)ˣ) : 𝓞 F) * ((ε c' : 𝓞 F) : F) = 1 := unit_inv_mul (ε c')
    simp only [bp] at e
    push_cast
    linear_combination (-(c'.out.1) * h1) - ((((ε c')⁻¹ : (𝓞 F)ˣ) : 𝓞 F) : F) * e
  have hh : Summable h := summable_absSum_inv_pow 𝔞 (k := N) (by omega)
  let e : (Quotient (unitRel (𝔟 : FractionalIdeal (𝓞 F)⁰ F))) × NZ (𝔞 : FractionalIdeal (𝓞 F)⁰ F) → (Quotient (unitRel (𝔟 : FractionalIdeal (𝓞 F)⁰ F))) × NZ (𝔞 : FractionalIdeal (𝓞 F)⁰ F) := fun p =>
    (p.1, ⟨((((ε p.1)⁻¹ : (𝓞 F)ˣ) : 𝓞 F) : F) * p.2.1, by
      have := Submodule.smul_mem (𝔞 : FractionalIdeal (𝓞 F)⁰ F).coeToSubmodule
        (((ε p.1)⁻¹ : (𝓞 F)ˣ) : 𝓞 F) p.2.2.1
      rwa [Algebra.smul_def] at this, mul_ne_zero (hunit0 _) p.2.2.2⟩)
  have he : Function.Injective e := by
    rintro ⟨c, ν⟩ ⟨c', ν'⟩ hcc
    have h1 : c = c' := congrArg Prod.fst hcc
    subst h1
    have h2 := congrArg (fun p => (p.2 : NZ (𝔞 : FractionalIdeal (𝓞 F)⁰ F)).1) hcc
    simp only [e] at h2
    exact Prod.ext rfl (Subtype.ext (mul_left_cancel₀ (hunit0 _) h2))
  have hV := (hg.mul_of_nonneg hh (fun c => inv_nonneg.2 (pow_nonneg (absSum_nonneg _) _))
    (fun y => inv_nonneg.2 (pow_nonneg (absSum_nonneg _) _))).comp_injective he
  set K₁ : ℝ := 1 + n * C₀ / β ^ 2 with hK₁
  refine (hV.mul_left (K₁ ^ (m * n) * (n * C₀) ^ N)).of_nonneg_of_le
    (fun p => Finset.prod_nonneg fun τ _ => div_nonneg (pow_nonneg (by positivity) _) (pow_nonneg (by positivity) _))
    (fun p => ?_)

  obtain ⟨c, ν⟩ := p
  set b' := bp c with hb'
  set ν' := ((((ε c)⁻¹ : (𝓞 F)ˣ) : 𝓞 F) : F) * ν.1 with hν'
  set s := absSum b' with hs
  set x := absSum ν' with hx
  have hsβ : β ≤ s := hβS _ (hbp_mem c) (hbp0 c)
  have hs0 : 0 < s := hβ.trans_le hsβ
  have hx0 : 0 < x := absSum_pos (mul_ne_zero (hunit0 _) ν.2.2)
  have hid : ∀ τ : Emb F, |τ ν.1 * τ c.out.1| = |τ ν'| * |τ b'| := by
    intro τ
    have h1 : (((ε c)⁻¹ : (𝓞 F)ˣ) : 𝓞 F) * ((ε c : 𝓞 F) : F) = 1 := unit_inv_mul (ε c)
    rw [← abs_mul, ← map_mul, ← map_mul]
    congr 2
    simp only [hν', hb', bp]
    linear_combination (-(ν.1 * c.out.1)) * h1
  have hA : ∀ τ : Emb F, |τ b'| + |τ b'|⁻¹ ≤ K₁ * s := by
    intro τ
    have hlo := hlow c τ
    have hpos : 0 < s / (n * C₀) := div_pos hs0 hq
    have h1 : |τ b'|⁻¹ ≤ n * C₀ / s := by
      calc |τ b'|⁻¹ ≤ (s / (n * C₀))⁻¹ := inv_anti₀ hpos hlo
        _ = n * C₀ / s := inv_div _ _
    have h2 : n * C₀ / s ≤ n * C₀ / β ^ 2 * s := by
      rw [div_le_iff₀ hs0]
      have hβ2 : β ^ 2 ≤ s * s := by nlinarith
      calc (n : ℝ) * C₀ = n * C₀ / β ^ 2 * β ^ 2 := by field_simp
        _ ≤ n * C₀ / β ^ 2 * (s * s) := mul_le_mul_of_nonneg_left hβ2 (by positivity)
        _ = _ := by ring
    have h3 : |τ b'| ≤ s := abs_le_absSum _ τ
    rw [hK₁]; nlinarith
  have hnum : ∏ τ : Emb F, (|τ b'| + |τ b'|⁻¹) ^ m ≤ (K₁ * s) ^ (m * n) := by
    calc ∏ τ : Emb F, (|τ b'| + |τ b'|⁻¹) ^ m ≤ ∏ _τ : Emb F, (K₁ * s) ^ m :=
          Finset.prod_le_prod₀ (fun _ _ => pow_nonneg (by positivity) _) (fun τ _ => pow_le_pow_left₀ (by positivity) (hA τ) m)
      _ = (K₁ * s) ^ (m * n) := by rw [Finset.prod_const, Finset.card_univ, ← pow_mul]
  have hden : (x * (s / (n * C₀))) ^ N ≤ ∏ τ : Emb F, (1 + |τ ν.1 * τ c.out.1|) ^ N := by
    rw [Finset.prod_pow]
    refine pow_le_pow_left₀ (mul_nonneg hx0.le (div_pos hs0 hq).le) ?_ N
    calc x * (s / (n * C₀)) = ∑ τ : Emb F, |τ ν'| * (s / (n * C₀)) := by rw [hx, absSum, Finset.sum_mul]
      _ ≤ ∑ τ : Emb F, |τ ν.1 * τ c.out.1| := Finset.sum_le_sum fun τ _ => by
          rw [hid]; exact mul_le_mul_of_nonneg_left (hlow c τ) (abs_nonneg _)
      _ ≤ 1 + ∑ τ : Emb F, |τ ν.1 * τ c.out.1| := by linarith
      _ ≤ _ := one_add_sum_le_prod _ _ fun τ => abs_nonneg _
  have hdpos : 0 < (x * (s / (n * C₀))) ^ N := pow_pos (mul_pos hx0 (div_pos hs0 hq)) N
  show ∏ τ : Emb F, (|τ b'| + |τ b'|⁻¹) ^ m / (1 + |τ ν.1 * τ c.out.1|) ^ N ≤
    K₁ ^ (m * n) * (n * C₀) ^ N * (((s) ^ (f + 1))⁻¹ * ((x) ^ N)⁻¹)
  rw [Finset.prod_div_distrib]
  calc (∏ τ : Emb F, (|τ b'| + |τ b'|⁻¹) ^ m) / ∏ τ : Emb F, (1 + |τ ν.1 * τ c.out.1|) ^ N
      ≤ (K₁ * s) ^ (m * n) / (x * (s / (n * C₀))) ^ N :=
        div_le_div₀ (by positivity) hnum hdpos hden
    _ = K₁ ^ (m * n) * (n * C₀) ^ N * ((s ^ (f + 1))⁻¹ * (x ^ N)⁻¹) := by
        rw [hN]
        exact bound_eq _ _ _ _ _ _ hs0.ne' hx0.ne' hq.ne'
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableHeckeBalancedLatticeDoubleSum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeWeightTwoTermIteratedFDerivSummableBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeWeightTwoTermIteratedFDerivSummableBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KFacDifferentiable\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.OmegaFactorization\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBalancedUnitMultipleTotallyReal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FTermIteratedFDerivBound\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeEisensteinFourierTermMoveUnit\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableHeckeBalancedLatticeDoubleSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Complex
open scoped nonZeroDivisors ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.OmegaFactorization GlobalTheory.HeckeTwo

noncomputable section

namespace GlobalTheory.HeckeTwo

theorem fTerm_deriv_summable_bound : ∀ (F : Type) [Field F] [NumberField F] [NumberField.IsTotallyReal F] (𝔞 𝔟 : Frac F),
  ∀ K : Set ℂ, IsCompact K → K ⊆ halfPlane → ∀ L : Set (Emb F → ℂ), IsCompact L → L ⊆ upperHalf F → ∀ n : ℕ,
    ∃ u : Quotient (unitRel (𝔟 : FractionalIdeal (𝓞 F)⁰ F)) × NZ (𝔞 : FractionalIdeal (𝓞 F)⁰ F) → ℝ, Summable u ∧
      ∀ p, ∀ σ ∈ K, ∀ z ∈ L, ‖iteratedFDeriv ℝ n (fun z : Emb F → ℂ => fTerm σ z p.1.out.1 p.2.1) z‖ ≤ u p := by
  intro F _ _ _ 𝔞 𝔟 K hK hKH L hL hLU n
  obtain ⟨m, hm⟩ := _root_.GlobalTheory.HeckeTwo.TermBound.fTerm_iteratedFDeriv_bound F K hK hKH L hL hLU n
  obtain ⟨C₀, -, hC₀⟩ := _root_.GlobalTheory.BalancedUnits.balanced_unit_multiple F
  obtain ⟨N, hN⟩ := _root_.GlobalTheory.HeckeTwo.summable_balanced_latSum F 𝔞 𝔟 C₀ m
  obtain ⟨C, hC⟩ := hm N
  choose ε hε using fun c : Quotient (unitRel (𝔟 : FractionalIdeal (𝓞 F)⁰ F)) => hC₀ c.out.1 c.out.2.2
  refine ⟨fun p => C * ∏ τ : Emb F, (|τ (((ε p.1 : 𝓞 F) : F) * p.1.out.1)| + |τ (((ε p.1 : 𝓞 F) : F) * p.1.out.1)|⁻¹) ^ m /
          (1 + |τ p.2.1 * τ p.1.out.1|) ^ N, (hN ε hε).mul_left C, ?_⟩
  rintro ⟨c, ν⟩ σ hσ z hz
  have hee : (((ε c)⁻¹ : (𝓞 F)ˣ) : 𝓞 F) * ((ε c : 𝓞 F) : F) = 1 := unit_inv_mul (ε c)
  have hfun : (fun z : Emb F → ℂ => fTerm σ z c.out.1 ν.1) =
      fun z => fTerm σ z (((ε c : 𝓞 F) : F) * c.out.1) (((((ε c)⁻¹ : (𝓞 F)ˣ) : 𝓞 F) : F) * ν.1) := by
    funext z
    have hb : c.out.1 = ((((ε c)⁻¹ : (𝓞 F)ˣ) : 𝓞 F) : F) * (((ε c : 𝓞 F) : F) * c.out.1) := by
      rw [← mul_assoc, hee, one_mul]
    conv_lhs => rw [hb]
    exact _root_.GlobalTheory.HeckeTwoUnit.fTerm_unit_move F σ z _ _ (ε c)⁻¹
  have hb0 : ((ε c : 𝓞 F) : F) * c.out.1 ≠ 0 := mul_ne_zero (right_ne_zero_of_mul_eq_one hee) c.out.2.2
  have hν0 : ((((ε c)⁻¹ : (𝓞 F)ˣ) : 𝓞 F) : F) * ν.1 ≠ 0 := mul_ne_zero (left_ne_zero_of_mul_eq_one hee) ν.2.2
  dsimp only
  rw [hfun]
  refine (hC σ hσ z hz _ _ hb0 hν0).trans (le_of_eq ?_)
  congr 1
  refine Finset.prod_congr rfl fun τ _ => ?_
  have h1 := congrArg τ hee
  rw [map_mul, map_one] at h1
  have h2 : τ (((((ε c)⁻¹ : (𝓞 F)ˣ) : 𝓞 F) : F) * ν.1) * τ (((ε c : 𝓞 F) : F) * c.out.1) = τ ν.1 * τ c.out.1 := by
    rw [map_mul, map_mul]; linear_combination (τ ν.1 * τ c.out.1) * h1
  rw [h2]

end GlobalTheory.HeckeTwo
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeWeightTwoTermIteratedFDerivSummableBound =====
