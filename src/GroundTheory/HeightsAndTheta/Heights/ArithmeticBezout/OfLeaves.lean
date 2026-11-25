module

public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.LogGaussNormSupportFinite
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ConeBall
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Characterised
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ChowDegree
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.LowerBoundConditional
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
public import Mathlib.NumberTheory.Harmonic.Defs
public import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Comp
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Mathlib.Analysis.Calculus.Deriv.Pow
public import Mathlib.Analysis.SpecialFunctions.Log.Deriv
public import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
public import Mathlib.LinearAlgebra.Complex.FiniteDimensional
public import Mathlib.MeasureTheory.Constructions.HaarToSphere
public import Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanVol
public import Mathlib.MeasureTheory.Integral.Layercake
public import Mathlib.NumberTheory.Harmonic.Int
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.MahlerMul
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.GaussSum, GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.HeightMul, GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PRecursion, GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanCalc, GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanDisc, GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanSlice, GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMean, GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.OfLeaves

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.GaussSum =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.GaussSum", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.LogGaussNormSupportFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial NumberField

noncomputable section

variable {K : Type*} [Field K] [NumberField K]

theorem finsum_log_gaussNorm_mul {ι : Type*} {f g : MvPolynomial ι K} (hf : f ≠ 0) (hg : g ≠ 0) :
    ∑ᶠ v : IsDedekindDomain.HeightOneSpectrum (𝓞 K), Real.log (gaussNorm v (f * g)) =
      (∑ᶠ v : IsDedekindDomain.HeightOneSpectrum (𝓞 K), Real.log (gaussNorm v f)) +
        ∑ᶠ v : IsDedekindDomain.HeightOneSpectrum (𝓞 K), Real.log (gaussNorm v g) := by
  rw [← finsum_add_distrib (log_gaussNorm_support_finite hf) (log_gaussNorm_support_finite hg)]
  refine finsum_congr fun v => ?_
  rw [gaussNorm_mul, Real.log_mul (gaussNorm_pos v hf).ne' (gaussNorm_pos v hg).ne']

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.GaussSum =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.HeightMul =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.HeightMul", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.GaussSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial MeasureTheory NumberField

noncomputable section

theorem chowHeightMul_of_mahlerMul (hM : MahlerMul.Statement) : ChowHeightMul.Statement := by
  intro K _ _ n H k δ₁ δ₂ f₁ f₂ h₁ h₂
  unfold chowHt
  have hmah : ∀ σ : K →+* ℂ, mahler (H.normAt σ) k ((f₁ * f₂).map σ) =
      mahler (H.normAt σ) k (f₁.map σ) + mahler (H.normAt σ) k (f₂.map σ) := by
    intro σ
    rw [map_mul]
    exact hM n k _ _ _ (fun h => h₁ (map_injective σ σ.injective (by rw [h, map_zero])))
      (fun h => h₂ (map_injective σ σ.injective (by rw [h, map_zero])))
  rw [finsum_log_gaussNorm_mul h₁ h₂]
  simp_rw [hmah]
  rw [← mul_add]
  congr 1
  have hs : ∑ σ : K →+* ℂ, (mahler (H.normAt σ) k (f₁.map σ) + mahler (H.normAt σ) k (f₂.map σ) +
      (k : ℝ) * ((δ₁ + δ₂ : ℕ) : ℝ) * (harmonic (n - 1) : ℝ) / 2) =
      ∑ σ : K →+* ℂ, (mahler (H.normAt σ) k (f₁.map σ) + (k : ℝ) * δ₁ * (harmonic (n - 1) : ℝ) / 2) +
      ∑ σ : K →+* ℂ, (mahler (H.normAt σ) k (f₂.map σ) + (k : ℝ) * δ₂ * (harmonic (n - 1) : ℝ) / 2) := by
    rw [← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun σ _ => ?_
    push_cast
    ring
  rw [hs]
  ring

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.HeightMul =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PRecursion =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PRecursion", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ConeBall\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Characterised\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ChowDegree\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.LogGaussNormSupportFinite\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.LowerBoundConditional\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial MeasureTheory NumberField

noncomputable section

theorem map_specFirst {R S : Type*} [CommSemiring R] [CommSemiring S] (φ : R →+* S) {k n : ℕ}
    (f : MvPolynomial (Fin (k + 1) × Fin n) R) (u : Fin n → R) :
    MvPolynomial.map φ (specFirst f u) = specFirst (MvPolynomial.map φ f) (fun j => φ (u j)) := by
  unfold specFirst
  rw [map_bind₁]
  congr 2
  funext ij
  obtain ⟨i, j⟩ := ij
  induction i using Fin.cases with
  | zero => simp [specFirstVar]
  | succ i => simp [specFirstVar]

theorem ChowHeightRecursion.proof (hV : ChowFormSectionVertical.Statement) (hA : MahlerSection.Statement)
    (hB : ChowFormBaseChange.Statement) (hAv : BaseChangeAvoid.Statement) :
    ChowHeightRecursion.Statement := by
  intro K _ _ n e δ H I f u hI hf hδ hu
  set u' : Fin n → K := fun j => (u j : K) with hu'
  set g := specFirst f u' with hg

  have hfin_f := log_gaussNorm_support_finite (K := K) hf.1
  have hfin_g : (Function.support fun v : IsDedekindDomain.HeightOneSpectrum (𝓞 K) =>
      Real.log (gaussNorm v g)).Finite := by
    by_cases hg0 : g = 0
    · have : (fun v : IsDedekindDomain.HeightOneSpectrum (𝓞 K) => Real.log (gaussNorm v g)) = 0 := by
        funext v
        rw [hg0]
        simp [gaussNorm]
        exact Or.inl rfl
      rw [this, Function.support_zero]
      exact Set.finite_empty
    · exact log_gaussNorm_support_finite hg0
  have hfinsum : ∑ᶠ v : IsDedekindDomain.HeightOneSpectrum (𝓞 K), Real.log (gaussNorm v f) =
      (∑ᶠ v : IsDedekindDomain.HeightOneSpectrum (𝓞 K), Real.log (gaussNorm v g)) + vertTerm I (e + 1) u := by
    unfold vertTerm
    rw [← finsum_add_distrib hfin_g]
    · refine finsum_congr fun v => ?_
      rw [← hV K n e I f u hI hf hu v]
      ring
    · refine Set.Finite.subset (hfin_f.union hfin_g) fun v hv => ?_
      rw [Function.mem_support, ← hV K n e I f u hI hf hu v] at hv
      by_contra hcon
      simp only [Set.mem_union, Function.mem_support, not_or, not_not] at hcon
      exact hv (by rw [hcon.1, hcon.2, sub_zero])

  have harch : ∀ σ : K →+* ℂ, mahler (H.normAt σ) (e + 1) (f.map σ) =
      mahler (H.normAt σ) e (g.map σ) - δ * (harmonic (n - 1) : ℝ) / 2 -
        cycleIntegral (H.normAt σ) (fundCycle (I.map (MvPolynomial.map σ))) e
          (fsLog (H.normAt σ) fun j => σ (u j)) := by
    intro σ
    obtain ⟨hprime, hcyc⟩ := hB K n (e + 1) I f σ hI hf
    have hδσ : Heights.IsMultiHomog δ (MvPolynomial.map σ f) :=
      (isMultiHomog_iff _ _).mpr fun i => IsWeightedHomogeneous.map' ((isMultiHomog_iff _ _).mp hδ i) σ
    have h := hA n e δ (H.normAt σ) _ _ (fun j => σ (u j)) hprime hcyc hδσ
      (fun W hW => hAv K n I u' σ hI hu W hW)
    rw [hg, map_specFirst, h]
    ring
  unfold chowHt
  have hs : ∑ σ : K →+* ℂ, (mahler (H.normAt σ) (e + 1) (f.map σ) +
        ((e + 1 : ℕ) : ℝ) * δ * (harmonic (n - 1) : ℝ) / 2) =
      ∑ σ : K →+* ℂ, (mahler (H.normAt σ) e (g.map σ) + (e : ℝ) * δ * (harmonic (n - 1) : ℝ) / 2) -
        ∑ σ : K →+* ℂ, cycleIntegral (H.normAt σ) (fundCycle (I.map (MvPolynomial.map σ))) e
          (fsLog (H.normAt σ) fun j => σ (u j)) := by
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [harch σ]
    push_cast
    ring
  rw [hfinsum, hs]
  ring

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PRecursion =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanCalc =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanCalc", "h": "module\n\npublic import Mathlib.Analysis.Calculus.Deriv.Basic\npublic import Mathlib.Analysis.LocallyConvex.AbsConvexOpen\npublic import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic\npublic import Mathlib.NumberTheory.Harmonic.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\npublic import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Comp\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Calculus.Deriv.Pow\npublic import Mathlib.Analysis.SpecialFunctions.Log.Deriv\npublic import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MeasureTheory Measure Set Real

noncomputable section

namespace SphereMean

def polyP (m : ℕ) (s : ℝ) : ℝ := ∑ j ∈ Finset.range (m + 1), (1 - s) ^ j / (m + 1)

def polyR (m : ℕ) (s : ℝ) : ℝ :=
  ∑ j ∈ Finset.range (m + 1), (1 - (1 - s) ^ (j + 1)) / ((j + 1) * (m + 1))

def primG (m : ℕ) (s : ℝ) : ℝ := (1 - (1 - s) ^ (m + 1)) / (m + 1) * log s - polyR m s

theorem mul_polyP (m : ℕ) (s : ℝ) : s * polyP m s = (1 - (1 - s) ^ (m + 1)) / (m + 1) := by
  have h := geom_sum_mul (1 - s) (m + 1)
  have hm : (m : ℝ) + 1 ≠ 0 := by positivity
  unfold polyP
  rw [← Finset.sum_div, eq_div_iff hm, mul_div_assoc', div_mul_cancel₀ _ hm]
  linear_combination (-1 : ℝ) * h

theorem hasDerivAt_one_sub_pow (k : ℕ) (s : ℝ) :
    HasDerivAt (fun s : ℝ => (1 - s) ^ k) (-((k : ℝ) * (1 - s) ^ (k - 1))) s := by
  have := (hasDerivAt_pow k (1 - s)).comp s ((hasDerivAt_id s).const_sub 1)
  simpa [Function.comp_def] using this

theorem hasDerivAt_polyR (m : ℕ) (s : ℝ) : HasDerivAt (polyR m) (polyP m s) s := by
  unfold polyR polyP
  apply HasDerivAt.fun_sum
  intro j _
  have h2 := ((hasDerivAt_one_sub_pow (j + 1) s).const_sub 1).div_const (((j : ℝ) + 1) * (m + 1))
  refine h2.congr_deriv ?_
  have hj : (j : ℝ) + 1 ≠ 0 := by positivity
  have hm : (m : ℝ) + 1 ≠ 0 := by positivity
  rw [Nat.add_sub_cancel, neg_neg]
  push_cast
  field_simp

theorem primG_eq (m : ℕ) (s : ℝ) : primG m s = polyP m s * (s * log s) - polyR m s := by
  rw [primG, ← mul_polyP]
  ring

theorem continuous_polyP (m : ℕ) : Continuous (polyP m) := by
  unfold polyP
  fun_prop

theorem continuous_polyR (m : ℕ) : Continuous (polyR m) := by
  unfold polyR
  fun_prop

theorem continuous_primG (m : ℕ) : Continuous (primG m) := by
  have : primG m = fun s => polyP m s * (s * log s) - polyR m s := funext (primG_eq m)
  rw [this]
  exact ((continuous_polyP m).mul continuous_mul_log).sub (continuous_polyR m)

theorem hasDerivAt_primG (m : ℕ) {s : ℝ} (hs : 0 < s) :
    HasDerivAt (primG m) ((1 - s) ^ m * log s) s := by
  have hm : (m : ℝ) + 1 ≠ 0 := by positivity
  have h1 : HasDerivAt (fun s : ℝ => (1 - (1 - s) ^ (m + 1)) / (m + 1)) ((1 - s) ^ m) s := by
    have := ((hasDerivAt_one_sub_pow (m + 1) s).const_sub 1).div_const ((m : ℝ) + 1)
    refine this.congr_deriv ?_
    rw [Nat.add_sub_cancel, neg_neg]
    push_cast
    field_simp
  have h2 := (h1.mul (hasDerivAt_log hs.ne')).sub (hasDerivAt_polyR m s)
  have h3 : HasDerivAt (primG m)
      ((1 - s) ^ m * log s + (1 - (1 - s) ^ (m + 1)) / (↑m + 1) * s⁻¹ - polyP m s) s := h2
  refine h3.congr_deriv ?_
  have := mul_polyP m s
  have hP : polyP m s = (1 - (1 - s) ^ (m + 1)) / (m + 1) * s⁻¹ := by
    rw [← this]; field_simp
  rw [hP]
  ring

theorem primG_zero (m : ℕ) : primG m 0 = 0 := by
  simp [primG, polyR]

theorem primG_one (m : ℕ) : primG m 1 = -(harmonic (m + 1) : ℝ) / (m + 1) := by
  simp only [primG, polyR, sub_self, log_one, mul_zero, zero_sub, ne_eq, add_eq_zero,
    one_ne_zero, and_false, not_false_eq_true, zero_pow, sub_zero]
  rw [harmonic]
  push_cast
  rw [neg_div, Finset.sum_div]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  field_simp

theorem integral_disc_weight (m : ℕ) :
    ∫ y in (0 : ℝ)..1, y * (1 - y ^ 2) ^ m = 1 / (2 * ((m : ℝ) + 1)) := by
  have hm : (m : ℝ) + 1 ≠ 0 := by positivity
  have hd : ∀ y ∈ uIcc (0 : ℝ) 1, HasDerivAt (fun y : ℝ => -(1 - y ^ 2) ^ (m + 1) / (2 * (m + 1)))
      (y * (1 - y ^ 2) ^ m) y := by
    intro y _
    have hp : HasDerivAt (fun x : ℝ => x ^ 2) (2 * y) y := by simpa using hasDerivAt_pow 2 y
    have := (HasDerivAt.comp (h := fun x : ℝ => x ^ 2) y (hasDerivAt_one_sub_pow (m + 1) (y ^ 2))
      hp).neg.div_const (2 * ((m : ℝ) + 1))
    have h3 : HasDerivAt (fun y : ℝ => -(1 - y ^ 2) ^ (m + 1) / (2 * (m + 1)))
        (-(-((((m + 1 : ℕ) : ℝ)) * (1 - y ^ 2) ^ (m + 1 - 1)) * (2 * y)) / (2 * ((m : ℝ) + 1))) y :=
      this
    refine h3.congr_deriv ?_
    rw [Nat.add_sub_cancel]
    push_cast
    field_simp
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (f' := fun y => y * (1 - y ^ 2) ^ m) hd
    (Continuous.intervalIntegrable (by fun_prop) 0 1)]
  field_simp
  simp

theorem integral_disc_log_weight (m : ℕ) :
    ∫ y in (0 : ℝ)..1, y * log y * (1 - y ^ 2) ^ m = -(harmonic (m + 1) : ℝ) / (4 * (m + 1)) := by
  have hm : (m : ℝ) + 1 ≠ 0 := by positivity
  have hc : ContinuousOn (fun y : ℝ => primG m (y ^ 2) / 4) (Icc 0 1) :=
    ((continuous_primG m).comp (continuous_pow 2)).div_const 4 |>.continuousOn
  have hd : ∀ y ∈ Ioo (0 : ℝ) 1, HasDerivAt (fun y : ℝ => primG m (y ^ 2) / 4)
      (y * log y * (1 - y ^ 2) ^ m) y := by
    intro y hy
    have hy2 : 0 < y ^ 2 := pow_pos hy.1 2
    have hp : HasDerivAt (fun x : ℝ => x ^ 2) (2 * y) y := by simpa using hasDerivAt_pow 2 y
    have := (HasDerivAt.comp (h := fun x : ℝ => x ^ 2) y (hasDerivAt_primG m hy2) hp).div_const 4
    have h3 : HasDerivAt (fun y : ℝ => primG m (y ^ 2) / 4)
        ((1 - y ^ 2) ^ m * log (y ^ 2) * (2 * y) / 4) y := this
    refine h3.congr_deriv ?_
    rw [log_pow]
    push_cast
    ring
  have hi : IntervalIntegrable (fun y : ℝ => y * log y * (1 - y ^ 2) ^ m) volume 0 1 := by
    apply Continuous.intervalIntegrable
    exact continuous_mul_log.mul (by fun_prop)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le zero_le_one hc hd hi]
  simp only [one_pow, ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, zero_pow, primG_one,
    primG_zero, zero_div, sub_zero]
  field_simp

end SphereMean

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanCalc =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanDisc =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanDisc", "h": "module\n\npublic import Mathlib.LinearAlgebra.Complex.FiniteDimensional\npublic import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic\npublic import Mathlib.NumberTheory.Harmonic.Defs\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanCalc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Log.NegMulLog\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Constructions.HaarToSphere\npublic import Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MeasureTheory Measure Set Real

noncomputable section

namespace SphereMean

theorem integral_disc_radial (g : ℝ → ℝ) :
    ∫ z : ℂ, (Iio (1 : ℝ)).indicator g ‖z‖ = 2 * π * ∫ y in (0 : ℝ)..1, y * g y := by
  rw [integral_fun_norm_addHaar volume (fun r => (Iio (1 : ℝ)).indicator g r),
    Complex.finrank_real_complex, measureReal_def, Complex.volume_ball]
  have h1 : ∫ y in Ioi (0 : ℝ), y ^ (2 - 1) • (Iio (1 : ℝ)).indicator g y =
      ∫ y in Ioi (0 : ℝ), (Iio (1 : ℝ)).indicator (fun y => y * g y) y := by
    congr 1
    funext y
    by_cases hy : y < 1 <;> simp [indicator, hy]
  rw [h1, setIntegral_indicator measurableSet_Iio, Ioi_inter_Iio,
    intervalIntegral.integral_of_le zero_le_one, integral_Ioc_eq_integral_Ioo]
  simp [nsmul_eq_mul]
  ring

theorem integrable_disc_radial (g : ℝ → ℝ) (hg : ContinuousOn (fun y => y * g y) (Icc 0 1)) :
    Integrable (fun z : ℂ => (Iio (1 : ℝ)).indicator g ‖z‖) := by
  rw [integrable_fun_norm_addHaar volume (f := fun r => (Iio (1 : ℝ)).indicator g r),
    Complex.finrank_real_complex]
  have h1 : (fun y : ℝ => y ^ (2 - 1) • (Iio (1 : ℝ)).indicator g y) =
      (Iio (1 : ℝ)).indicator (fun y => y * g y) := by
    funext y
    by_cases hy : y < 1 <;> simp [indicator, hy]
  rw [h1, IntegrableOn, integrable_indicator_iff measurableSet_Iio, IntegrableOn,
    Measure.restrict_restrict measurableSet_Iio, Iio_inter_Ioi]
  exact (hg.integrableOn_Icc).mono_set Ioo_subset_Icc_self

theorem integral_disc_pow (m : ℕ) :
    ∫ z : ℂ, (Iio (1 : ℝ)).indicator (fun r => (1 - r ^ 2) ^ m) ‖z‖ = π / (m + 1) := by
  rw [integral_disc_radial, integral_disc_weight]
  field_simp

theorem integral_disc_log_pow (m : ℕ) :
    ∫ z : ℂ, (Iio (1 : ℝ)).indicator (fun r => -log r * (1 - r ^ 2) ^ m) ‖z‖ =
      π * harmonic (m + 1) / (2 * (m + 1)) := by
  rw [integral_disc_radial]
  have h : ∫ y in (0 : ℝ)..1, y * (-log y * (1 - y ^ 2) ^ m) =
      -∫ y in (0 : ℝ)..1, y * log y * (1 - y ^ 2) ^ m := by
    rw [← intervalIntegral.integral_neg]
    congr 1
    funext y
    ring
  rw [h, integral_disc_log_weight]
  field_simp
  ring

theorem integrable_disc_pow (m : ℕ) :
    Integrable (fun z : ℂ => (Iio (1 : ℝ)).indicator (fun r => (1 - r ^ 2) ^ m) ‖z‖) :=
  integrable_disc_radial _ (by fun_prop)

theorem integrable_disc_log_pow (m : ℕ) :
    Integrable (fun z : ℂ => (Iio (1 : ℝ)).indicator (fun r => -log r * (1 - r ^ 2) ^ m) ‖z‖) := by
  apply integrable_disc_radial
  have : (fun y : ℝ => y * (-log y * (1 - y ^ 2) ^ m)) =
      fun y => -(y * log y) * (1 - y ^ 2) ^ m := by
    funext y; ring
  rw [this]
  exact (continuous_mul_log.neg.mul (by fun_prop)).continuousOn

end SphereMean

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanDisc =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanSlice =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanSlice", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanVol\npublic import Mathlib.NumberTheory.Harmonic.Defs\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanDisc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Integral.Layercake\nimport Mathlib.NumberTheory.Chebyshev\npublic import Mathlib.NumberTheory.Harmonic.Int\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MeasureTheory Measure Set Real

noncomputable section

namespace SphereMean

theorem sqNorm_succ {m : ℕ} (x : Fin (m + 1) → ℂ) :
    sqNorm x = ‖x 0‖ ^ 2 + sqNorm (Fin.tail x) := by
  simp [sqNorm, Fin.sum_univ_succ, Fin.tail]

theorem piFinSuccAbove_zero_apply {m : ℕ} (x : Fin (m + 1) → ℂ) :
    MeasurableEquiv.piFinSuccAbove (fun _ : Fin (m + 1) => ℂ) 0 x = (x 0, Fin.tail x) := by
  simp [MeasurableEquiv.piFinSuccAbove_apply]

theorem lintegral_ballSet_fst (m : ℕ) (φ : ℂ → ENNReal) (hφ : Measurable φ) :
    ∫⁻ x in ballSet (m + 1) 1, φ (x 0) =
      (∫⁻ z : ℂ, (Iio (1 : ℝ)).indicator (fun r => ENNReal.ofReal ((1 - r ^ 2) ^ m)) ‖z‖ * φ z) *
        volume (ballSet m 1) := by
  have he := volume_preserving_piFinSuccAbove (fun _ : Fin (m + 1) => ℂ) 0
  set e := MeasurableEquiv.piFinSuccAbove (fun _ : Fin (m + 1) => ℂ) 0 with he_def
  set A : Set (ℂ × (Fin m → ℂ)) := {p | ‖p.1‖ ^ 2 + sqNorm p.2 < 1} with hA_def
  have hA : MeasurableSet A :=
    measurableSet_lt ((continuous_norm.comp continuous_fst).pow 2 |>.add
      ((continuous_sqNorm m).comp continuous_snd)).measurable measurable_const
  set F : ℂ × (Fin m → ℂ) → ENNReal := A.indicator (fun p => φ p.1) with hF_def
  have hFm : Measurable F := (hφ.comp measurable_fst).indicator hA
  have hF : ∀ x, (ballSet (m + 1) 1).indicator (fun x => φ (x 0)) x = F (e x) := by
    intro x
    rw [he_def, piFinSuccAbove_zero_apply]
    simp only [hF_def, hA_def, indicator, ballSet, mem_ofPred_eq, sqNorm_succ]
  rw [← lintegral_indicator (measurableSet_ballSet _ _)]
  simp_rw [hF]
  rw [he.lintegral_comp_emb e.measurableEmbedding F, Measure.volume_eq_prod,
    lintegral_prod _ hFm.aemeasurable]
  have hm : Measurable (fun z : ℂ =>
      (Iio (1 : ℝ)).indicator (fun r => ENNReal.ofReal ((1 - r ^ 2) ^ m)) ‖z‖ * φ z) :=
    (((ENNReal.measurable_ofReal.comp (by fun_prop : Measurable fun r : ℝ => (1 - r ^ 2) ^ m)).indicator
      measurableSet_Iio).comp measurable_norm).mul hφ
  rw [← lintegral_mul_const _ hm]
  · congr 1
    funext z
    have h1 : (fun w => F (z, w)) = (ballSet m (1 - ‖z‖ ^ 2)).indicator (fun _ => φ z) := by
      funext w
      simp only [hF_def, hA_def, indicator, ballSet, mem_ofPred_eq]
      congr 1
      apply propext
      constructor <;> intro h <;> linarith
    have h2 : ∫⁻ w, F (z, w) = φ z * volume (ballSet m (1 - ‖z‖ ^ 2)) := by
      rw [h1]
      exact lintegral_indicator_const (measurableSet_ballSet m _) _
    rw [h2]
    by_cases hz : ‖z‖ < 1
    · have hs : 0 < 1 - ‖z‖ ^ 2 := by nlinarith [norm_nonneg z]
      rw [volume_ballSet hs]
      simp only [indicator, mem_Iio, hz, ite_true]
      ring
    · have hs : ballSet m (1 - ‖z‖ ^ 2) = ∅ := by
        ext w
        simp only [ballSet, mem_ofPred_eq, mem_empty_iff_false, iff_false, not_lt]
        have := sqNorm_nonneg w
        nlinarith [norm_nonneg z]
      rw [hs]
      simp [indicator, hz]

theorem volume_singleton_zero (m : ℕ) : volume ({0} : Set (Fin (m + 1) → ℂ)) = 0 := by
  rw [← Submodule.bot_coe (R := ℝ)]
  exact addHaar_submodule _ _ bot_ne_top

theorem volume_ballSet_succ (m : ℕ) :
    volume (ballSet (m + 1) 1) = ENNReal.ofReal (π / (m + 1)) * volume (ballSet m 1) := by
  have h := lintegral_ballSet_fst m (fun _ => 1) measurable_const
  simp only [setLIntegral_one, mul_one] at h
  rw [h]
  congr 1
  have hp : ∀ z : ℂ, (Iio (1 : ℝ)).indicator (fun r => ENNReal.ofReal ((1 - r ^ 2) ^ m)) ‖z‖ =
      ENNReal.ofReal ((Iio (1 : ℝ)).indicator (fun r => (1 - r ^ 2) ^ m) ‖z‖) := by
    intro z
    by_cases hz : ‖z‖ < 1 <;> simp [indicator, hz]
  simp_rw [hp]
  rw [← ofReal_integral_eq_lintegral_ofReal (integrable_disc_pow m), integral_disc_pow]
  refine Filter.Eventually.of_forall fun z => ?_
  by_cases hz : ‖z‖ < 1
  · simp only [indicator, mem_Iio, hz, ite_true, Pi.zero_apply]
    have : ‖z‖ ^ 2 < 1 := by nlinarith [norm_nonneg z]
    exact pow_nonneg (by linarith) m
  · simp [indicator, hz]

theorem lintegral_ballSet_neg_log_fst (m : ℕ) :
    ∫⁻ x in ballSet (m + 1) 1, ENNReal.ofReal (-log ‖x 0‖) =
      ENNReal.ofReal (π * harmonic (m + 1) / (2 * (m + 1))) * volume (ballSet m 1) := by
  rw [lintegral_ballSet_fst m (fun z => ENNReal.ofReal (-log ‖z‖))
    (ENNReal.measurable_ofReal.comp (measurable_norm.log.neg))]
  congr 1
  have hp : ∀ z : ℂ, (Iio (1 : ℝ)).indicator (fun r => ENNReal.ofReal ((1 - r ^ 2) ^ m)) ‖z‖ *
      ENNReal.ofReal (-log ‖z‖) =
      ENNReal.ofReal ((Iio (1 : ℝ)).indicator (fun r => -log r * (1 - r ^ 2) ^ m) ‖z‖) := by
    intro z
    by_cases hz : ‖z‖ < 1
    · simp only [indicator, mem_Iio, hz, ite_true]
      rw [ENNReal.ofReal_mul (by linarith [log_nonpos (norm_nonneg z) hz.le]), mul_comm]
    · simp [indicator, hz]
  simp_rw [hp]
  rw [← ofReal_integral_eq_lintegral_ofReal (integrable_disc_log_pow m), integral_disc_log_pow]
  refine Filter.Eventually.of_forall fun z => ?_
  by_cases hz : ‖z‖ < 1
  · simp only [indicator, mem_Iio, hz, ite_true, Pi.zero_apply]
    have : ‖z‖ ^ 2 < 1 := by nlinarith [norm_nonneg z]
    exact mul_nonneg (by linarith [log_nonpos (norm_nonneg z) hz.le]) (pow_nonneg (by linarith) m)
  · simp [indicator, hz]

theorem sqNorm_pos_of_ne_zero {n : ℕ} {x : Fin n → ℂ} (hx : x ≠ 0) : 0 < sqNorm x := by
  obtain ⟨j, hj⟩ : ∃ j, x j ≠ 0 := by
    by_contra h
    push Not at h
    exact hx (funext h)
  have h1 : ‖x j‖ ^ 2 ≤ sqNorm x :=
    Finset.single_le_sum (f := fun j => ‖x j‖ ^ 2) (fun _ _ => sq_nonneg _) (Finset.mem_univ j)
  have h2 : 0 < ‖x j‖ ^ 2 := by positivity
  linarith

theorem lintegral_ballSet_neg_log_sqNorm (m : ℕ) :
    ∫⁻ x in ballSet (m + 1) 1, ENNReal.ofReal (-log (sqNorm x)) =
      ENNReal.ofReal (1 / (m + 1)) * volume (ballSet (m + 1) 1) := by
  set B := ballSet (m + 1) 1 with hB
  have hmeas : Measurable fun x : Fin (m + 1) → ℂ => -log (sqNorm x) :=
    (measurable_sqNorm _).log.neg
  have hnn : 0 ≤ᵐ[volume.restrict B] fun x => -log (sqNorm x) := by
    refine (ae_restrict_iff' (measurableSet_ballSet _ _)).mpr (Filter.Eventually.of_forall ?_)
    intro x hx
    simp only [Pi.zero_apply]
    rw [neg_nonneg]
    exact log_nonpos (sqNorm_nonneg x) (le_of_lt hx)
  rw [lintegral_eq_lintegral_meas_lt _ hnn hmeas.aemeasurable]
  have hlev : ∀ t ∈ Ioi (0 : ℝ), (volume.restrict B) {x | t < -log (sqNorm x)} =
      ENNReal.ofReal (exp (-((m + 1 : ℕ) : ℝ) * t)) * volume B := by
    intro t ht
    have ht' : (0 : ℝ) < t := ht
    rw [Measure.restrict_apply (measurableSet_lt measurable_const hmeas)]
    have he : exp (-t) < 1 := by
      have := exp_lt_exp.mpr (show -t < 0 by linarith)
      rwa [exp_zero] at this
    have hsub1 : {x | t < -log (sqNorm x)} ∩ B ⊆ ballSet (m + 1) (exp (-t)) := by
      intro x ⟨hx1, _⟩
      simp only [mem_ofPred_eq] at hx1
      have hs : 0 < sqNorm x := by
        rcases (sqNorm_nonneg x).lt_or_eq with h | h
        · exact h
        · rw [← h, log_zero] at hx1; linarith
      simp only [ballSet, mem_ofPred_eq]
      rw [← log_lt_iff_lt_exp hs]
      linarith
    have hsub2 : ballSet (m + 1) (exp (-t)) ⊆ ({x | t < -log (sqNorm x)} ∩ B) ∪ {0} := by
      intro x hx
      by_cases h0 : x = 0
      · exact Or.inr h0
      · left
        have hs := sqNorm_pos_of_ne_zero h0
        simp only [ballSet, mem_ofPred_eq] at hx
        refine ⟨?_, ?_⟩
        · simp only [mem_ofPred_eq]
          have := (log_lt_iff_lt_exp hs).mpr hx
          linarith
        · simp only [hB, ballSet, mem_ofPred_eq]
          linarith
    have heq : volume ({x | t < -log (sqNorm x)} ∩ B) = volume (ballSet (m + 1) (exp (-t))) := by
      refine le_antisymm (measure_mono hsub1) ?_
      refine (measure_mono hsub2).trans ((measure_union_le _ _).trans ?_)
      rw [volume_singleton_zero, add_zero]
    rw [heq, volume_ballSet (exp_pos _), ← exp_nat_mul]
    have : ((m + 1 : ℕ) : ℝ) * -t = -((m + 1 : ℕ) : ℝ) * t := by ring
    rw [this]
  rw [setLIntegral_congr_fun measurableSet_Ioi hlev, lintegral_mul_const _
    (Measurable.ennreal_ofReal (by fun_prop))]
  congr 1
  have hpos : (0 : ℝ) < ((m + 1 : ℕ) : ℝ) := by positivity
  rw [← ofReal_integral_eq_lintegral_ofReal (exp_neg_integrableOn_Ioi 0 hpos)
    (Filter.Eventually.of_forall fun t => (exp_pos _).le)]
  have := integral_exp_mul_Ioi (a := -((m + 1 : ℕ) : ℝ)) (by linarith) 0
  simp only [mul_zero, exp_zero] at this
  rw [this]
  congr 1
  push_cast
  field_simp

theorem integrableOn_and_integral_of_lintegral {n : ℕ} {B : Set (Fin n → ℂ)}
    (hB : MeasurableSet B) (hBt : volume B ≠ ⊤) {f : (Fin n → ℂ) → ℝ} (hf : Measurable f)
    (hnn : ∀ x ∈ B, 0 ≤ f x) {c : ℝ} (hc : 0 ≤ c)
    (h : ∫⁻ x in B, ENNReal.ofReal (f x) = ENNReal.ofReal c * volume B) :
    IntegrableOn f B ∧ ∫ x in B, f x = c * volume.real B := by
  have hnn' : 0 ≤ᵐ[volume.restrict B] f :=
    (ae_restrict_iff' hB).mpr (Filter.Eventually.of_forall hnn)
  refine ⟨⟨hf.aestronglyMeasurable, (hasFiniteIntegral_iff_ofReal hnn').mpr ?_⟩, ?_⟩
  · rw [h]
    exact ENNReal.mul_lt_top ENNReal.ofReal_lt_top hBt.lt_top
  · rw [integral_eq_lintegral_of_nonneg_ae hnn' hf.aestronglyMeasurable, h, ENNReal.toReal_mul,
      ENNReal.toReal_ofReal hc, measureReal_def]

theorem norm_fst_le_one {m : ℕ} {x : Fin (m + 1) → ℂ} (hx : x ∈ ballSet (m + 1) 1) : ‖x 0‖ ≤ 1 := by
  simp only [ballSet, mem_ofPred_eq, sqNorm_succ] at hx
  have := sqNorm_nonneg (Fin.tail x)
  nlinarith [norm_nonneg (x 0)]

theorem integral_ballSet_neg_log_fst (m : ℕ) :
    IntegrableOn (fun x : Fin (m + 1) → ℂ => -log ‖x 0‖) (ballSet (m + 1) 1) ∧
      ∫ x in ballSet (m + 1) 1, -log ‖x 0‖ = harmonic (m + 1) / 2 * volume.real (ballSet (m + 1) 1) := by
  apply integrableOn_and_integral_of_lintegral (measurableSet_ballSet _ _)
    (volume_ballSet_one_ne_top _)
    (f := fun x : Fin (m + 1) → ℂ => -log ‖x 0‖) ((measurable_pi_apply 0).norm.log.neg)
  · intro x hx
    rw [neg_nonneg]
    exact log_nonpos (norm_nonneg _) (norm_fst_le_one hx)
  · exact div_nonneg (by exact_mod_cast (harmonic_pos (Nat.succ_ne_zero m)).le) (by norm_num)
  · rw [lintegral_ballSet_neg_log_fst, volume_ballSet_succ, ← mul_assoc, ← ENNReal.ofReal_mul
      (div_nonneg (by exact_mod_cast (harmonic_pos (Nat.succ_ne_zero m)).le) (by norm_num))]
    congr 2
    field_simp

theorem integral_ballSet_neg_log_sqNorm (m : ℕ) :
    IntegrableOn (fun x : Fin (m + 1) → ℂ => -log (sqNorm x)) (ballSet (m + 1) 1) ∧
      ∫ x in ballSet (m + 1) 1, -log (sqNorm x) = 1 / (m + 1) * volume.real (ballSet (m + 1) 1) :=
  integrableOn_and_integral_of_lintegral (measurableSet_ballSet _ _)
    (volume_ballSet_one_ne_top _) (f := fun x : Fin (m + 1) → ℂ => -log (sqNorm x))
    ((measurable_sqNorm _).log.neg)
    (fun x hx => by
      rw [neg_nonneg]
      exact log_nonpos (sqNorm_nonneg x) (le_of_lt hx))
    (by positivity) (lintegral_ballSet_neg_log_sqNorm m)

end SphereMean

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanSlice =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMean =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMean", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanVol\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMeanSlice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MeasureTheory Measure Set Real

noncomputable section

namespace SphereMean

theorem setAverage_log_fst_sub (m : ℕ) :
    ⨍ y in ballSet (m + 1) 1, (log ‖y 0‖ - log (sqNorm y) / 2) = -(harmonic m : ℝ) / 2 := by
  obtain ⟨h1i, h1⟩ := integral_ballSet_neg_log_fst m
  obtain ⟨h2i, h2⟩ := integral_ballSet_neg_log_sqNorm m
  have hV : 0 < volume.real (ballSet (m + 1) 1) :=
    ENNReal.toReal_pos (volume_ballSet_one_pos _).ne' (volume_ballSet_one_ne_top _)
  have hfun : (fun y : Fin (m + 1) → ℂ => log ‖y 0‖ - log (sqNorm y) / 2) =
      fun y => (-log (sqNorm y)) / 2 - (-log ‖y 0‖) := by
    funext y
    ring
  rw [setAverage_eq, hfun, integral_sub (h2i.div_const 2) h1i, integral_div, h1, h2,
    harmonic_succ]
  push_cast
  rw [smul_eq_mul]
  field_simp
  ring

theorem volume_fst_eq_zero (m : ℕ) : volume {y : Fin (m + 1) → ℂ | y 0 = 0} = 0 := by
  let K : Submodule ℝ (Fin (m + 1) → ℂ) :=
    LinearMap.ker (LinearMap.proj (R := ℝ) (φ := fun _ : Fin (m + 1) => ℂ) 0)
  have hK : (K : Set (Fin (m + 1) → ℂ)) = {y | y 0 = 0} := by
    ext y
    simp only [K, SetLike.mem_coe, LinearMap.mem_ker, LinearMap.proj_apply, mem_ofPred_eq]
  have hne : K ≠ ⊤ := by
    intro h
    have : (Pi.single 0 1 : Fin (m + 1) → ℂ) ∈ K := h ▸ Submodule.mem_top
    simp only [K, LinearMap.mem_ker, LinearMap.proj_apply, Pi.single_eq_same] at this
    exact one_ne_zero this
  rw [← hK]
  exact addHaar_submodule _ _ hne

theorem setAverage_log_fst_normalized (m : ℕ) :
    ⨍ y in ballSet (m + 1) 1, log ‖((√(sqNorm y) : ℝ) : ℂ)⁻¹ * y 0‖ = -(harmonic m : ℝ) / 2 := by
  rw [← setAverage_log_fst_sub m]
  apply average_congr
  refine ae_restrict_of_ae ?_
  have h0 := measure_eq_zero_iff_ae_notMem.mp (volume_fst_eq_zero m)
  filter_upwards [h0] with y hy
  have hy' : y 0 ≠ 0 := fun h => hy h
  have hs : 0 < sqNorm y := sqNorm_pos_of_ne_zero (fun h => hy' (by simp [h]))
  rw [norm_mul, norm_inv, Complex.norm_real, Real.norm_of_nonneg (Real.sqrt_nonneg _),
    log_mul (inv_ne_zero (Real.sqrt_pos.mpr hs).ne') (norm_ne_zero_iff.mpr hy'), log_inv,
    log_sqrt hs.le]
  ring

theorem std_norm_eq (n : ℕ) (v : Fin n → ℂ) : (HermNorm.std n).norm v = √(sqNorm v) := by
  simp [HermNorm.norm, HermNorm.std, sqNorm]

end SphereMean


open SphereMean in
theorem sphereMeanLinear : SphereMeanLinear.Statement := by
  intro n p hp
  cases n with
  | zero => simp at hp
  | succ m =>

  let e := (Equiv.uniqueProd (Fin (m + 1)) (Fin 1)).symm
  let L1 : (Fin 1 × Fin (m + 1) → ℂ) ≃L[ℝ] (Fin (m + 1) → ℂ) :=
    (LinearEquiv.funCongrLeft ℝ ℂ e).toContinuousLinearEquiv
  have hL1 : ∀ u j, L1 u j = u (0, j) := by
    intro u j
    simp [L1, e]
  let G1 : (Fin (m + 1) → ℂ) → ℝ := fun v =>
    log ‖∑ j, (((√(sqNorm v) : ℝ) : ℂ)⁻¹ * v j) * star (p j)‖
  have hS : {u : Fin 1 × Fin (m + 1) → ℂ |
      ∀ i, (HermNorm.std (m + 1)).norm (fun j => u (i, j)) < 1} = L1 ⁻¹' ballSet (m + 1) 1 := by
    ext u
    simp only [mem_ofPred_eq, mem_preimage, ballSet, std_norm_eq, Fin.forall_fin_one]
    have : (fun j => u (0, j)) = L1 u := funext fun j => (hL1 u j).symm
    rw [this, Real.sqrt_lt' one_pos, one_pow]
  have hstep1 : sphereMean (HermNorm.std (m + 1)) 1
      (fun z => Real.log ‖∑ j, z (0, j) * star (p j)‖) = ⨍ u in L1 ⁻¹' ballSet (m + 1) 1, G1 (L1 u) := by
    unfold sphereMean
    rw [hS]
    congr 1
    funext u
    have : (fun j => u (0, j)) = L1 u := funext fun j => (hL1 u j).symm
    simp only [G1, std_norm_eq, this, hL1]
  rw [hstep1, setAverage_comp_linearEquiv volume volume L1 (ballSet (m + 1) 1) G1]

  let p' : EuclideanSpace ℂ (Fin (m + 1)) := WithLp.toLp 2 p
  have hp' : ‖p'‖ = 1 := by
    rw [EuclideanSpace.norm_eq]
    simp [p', hp]
  have hon : Orthonormal ℂ (({0} : Set (Fin (m + 1))).domRestrict fun _ => p') := by
    rw [orthonormal_iff_ite]
    intro i j
    rw [Subsingleton.elim i j, if_pos rfl,
      show (({0} : Set (Fin (m + 1))).domRestrict fun _ => p') j = p' from rfl,
      inner_self_eq_norm_sq_to_K, hp']
    simp
  obtain ⟨b, hb⟩ := hon.exists_orthonormalBasis_extension_of_card_eq (by simp)
  have hb0 : b 0 = p' := hb 0 (mem_singleton 0)
  let Ulin : (Fin (m + 1) → ℂ) ≃ₗ[ℂ] (Fin (m + 1) → ℂ) :=
    (WithLp.linearEquiv 2 ℂ (Fin (m + 1) → ℂ)).symm ≪≫ₗ b.repr.toLinearEquiv ≪≫ₗ
      WithLp.linearEquiv 2 ℂ (Fin (m + 1) → ℂ)
  let U : (Fin (m + 1) → ℂ) ≃L[ℝ] (Fin (m + 1) → ℂ) :=
    (Ulin.restrictScalars ℝ).toContinuousLinearEquiv
  have hUapp : ∀ v, U v = (b.repr (WithLp.toLp 2 v)).ofLp := fun v => rfl
  have hU0 : ∀ v, U v 0 = ∑ j, v j * star (p j) := by
    intro v
    rw [hUapp, OrthonormalBasis.repr_apply_apply, hb0, PiLp.inner_apply]
    simp [p', RCLike.inner_apply]
  have hUn : ∀ v, sqNorm (U v) = sqNorm v := by
    intro v
    have h := b.repr.norm_map (WithLp.toLp 2 v)
    rw [EuclideanSpace.norm_eq, EuclideanSpace.norm_eq] at h
    have h2 := congrArg (· ^ 2) h
    simp only [Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)] at h2
    simpa [sqNorm, hUapp] using h2
  let G2 : (Fin (m + 1) → ℂ) → ℝ := fun w => log ‖((√(sqNorm w) : ℝ) : ℂ)⁻¹ * w 0‖
  have hG : ∀ v, G1 v = G2 (U v) := by
    intro v
    simp only [G1, G2, hUn, hU0, Finset.mul_sum, mul_assoc]
  have hB : ballSet (m + 1) 1 = U ⁻¹' ballSet (m + 1) 1 := by
    ext v
    simp [ballSet, hUn]
  have hstep2 : ⨍ v in ballSet (m + 1) 1, G1 v = ⨍ v in U ⁻¹' ballSet (m + 1) 1, G2 (U v) := by
    rw [← hB]
    congr 1
    funext v
    exact hG v
  rw [hstep2, setAverage_comp_linearEquiv volume volume U (ballSet (m + 1) 1) G2]
  simp only [G2]
  rw [setAverage_log_fst_normalized m]
  simp

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMean =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.OfLeaves =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.OfLeaves", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ConeBall\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Characterised\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.HeightMul\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.MahlerMul\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PRecursion\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.SphereMean\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

alias SphereMeanLinear.full := _root_.GroundTheory.Heights₂.Heights.sphereMeanLinear

theorem ChowHeightMul.full : ChowHeightMul.Statement := chowHeightMul_of_mahlerMul mahlerMul

alias ChowHeightRecursion.of_leaves := _root_.GroundTheory.Heights₂.Heights.ChowHeightRecursion.proof

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.OfLeaves =====
