module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RingHomExtDense
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedTwoVariableSubringSubsetGeneratorSet
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FactorialMulCoeffMemDividedPowerSeriesSubring
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobMemPPSetCongr
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PadicValNatFactorialBound
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TaylorShiftFrobeniusMemDividedTwoVariableGenerat
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedWittPowerSeriesMemDividedPowerSeriesGe
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CstSApply
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerSeriesSubringEqGeneratorSet
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsSumMonomialAdd
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InstTameDescentExponentDataPadicThree
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
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential
import Mathlib.Data.Finsupp.Pointwise
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AcrisTorsionFreeComplete
import Mathlib.RingTheory.PowerSeries.NoZeroDivisors
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial
import Mathlib.RingTheory.WittVector.DiscreteValuationRing

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DvdPolyEvaluationOfMemDividedTwoVariableSet, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPolynomialApproxDividedTwoVariableSet, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineEvalRingHomFrobeniusTaylor, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerMonomialFrobeniusCongrPow, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerSeriesGeneratorSetEqSumAddMul, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusMapsDividedPowerSeriesGeneratorSet, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WittTiltFrobeniusEqPowAddMul, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobSdCongr, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusEisensteinMemPrimeMulDividedPowerSeries, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PrimeNatCastNeZeroWittOfTiltFiniteField, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAdicCompleteDividedPowerSeriesSubringPrime, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAdicCompleteDividedTwoVariableSubring, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCrystallinePrisms

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DvdPolyEvaluationOfMemDividedTwoVariableSet =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DvdPolyEvaluationOfMemDividedTwoVariableSet", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RingHomExtDense\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism GlobalTheory.CrysEval
open scoped Formalism.Per

noncomputable section
namespace GlobalTheory.CrysEval

theorem coeff_natCast_mul_ps {R : Type} [CommRing R] (n i : ℕ) (f : R⟦X⟧) :
    coeff i ((n : R⟦X⟧) * f) = n * coeff i f := by
  rw [← map_natCast (C : R →+* R⟦X⟧) n, coeff_C_mul]

theorem dvd_fP_of_mem_PPSet : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O), ∀ (ϖ : PiSys l e) (g : ↥(GK (ϖ.field a))) (b : Bp l a) (F : ZMod a → K⟦X⟧⟦X⟧), F ∈ PPSet t K e → ∀ n : ℕ, n ≠ 0 → (n : ZMod a → K⟦X⟧⟦X⟧) * F = iotaP K t b → ∃ y : Per.Acris l, (n : Per.Acris l) * y = fP a ϖ (g : GQ l) b := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ t ϖ g b F hF n hn hnF
  obtain ⟨w, -, hw⟩ := hF
  have := charZero_K (l := l) (K := K)
  have key : ∀ i k, ((i.factorial * (k / e).factorial : ℕ) : Wq l a) * (b.coeff i).coeff k = n * w (i, k) := by
    intro i k
    apply embK_injective (K := K) t 0
    have h1 := congrArg (fun G => coeff k (coeff i (G 0))) hnF
    simp only [Pi.mul_apply, Pi.natCast_apply] at h1
    rw [coeff_natCast_mul_ps, coeff_natCast_mul_ps, coeff_iotaP] at h1
    have h2 := hw 0 i k
    change _ = embK K t 0 (w (i, k)) at h2
    rw [map_mul, map_mul, map_natCast, map_natCast]
    push_cast at h2 ⊢
    linear_combination (-((i.factorial : K) * ((k / e).factorial : K))) * h1 + (n : K) * h2
  have hμ := ϖ.theta_mu (ϖ.gal_pi a g)
  set T := ainfToAcris l ϖ.teich with hTdef
  have term : ∀ i k, ainfToAcris l (wA l a ((b.coeff i).coeff k)) * T ^ k *
      ainfToAcris l (ϖ.mu (g : GQ l) * ϖ.teich) ^ i ∈ Ideal.span {(n : Per.Acris l)} := by
    intro i k
    obtain ⟨D, hD⟩ := ϖ.exists_dpow_teich (k / e)
    have hm := factorial_mul_dpow (ϖ.mu (g : GQ l)) hμ i
    have hk := congrArg (fun x => ainfToAcris l (wA l a x)) (key i k)
    simp only [map_mul, map_natCast] at hk
    push_cast at hk
    rw [Ideal.mem_span_singleton']
    refine ⟨ainfToAcris l (wA l a (w (i, k))) * D * dpow (ϖ.mu (g : GQ l)) hμ i * T ^ (k % e) * T ^ i, ?_⟩
    have hT : T ^ k = T ^ (k % e) * T ^ (e * (k / e)) := by rw [← pow_add, Nat.mod_add_div]
    rw [hT, ← hD, map_mul, mul_pow, ← hm]
    linear_combination (-(D * dpow (ϖ.mu (g : GQ l)) hμ i * T ^ (k % e) * T ^ i)) * hk
  have hmem : fP a ϖ (g : GQ l) b ∈ Ideal.span {(n : Per.Acris l)} := by
    rw [fP, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_eq_sum, Polynomial.sum_def]
    refine Ideal.sum_mem _ fun i _ => ?_
    have hev : evC a ϖ (b.coeff i) = (b.coeff i).sum fun k c => ainfToAcris l (wA l a c) * T ^ k := by
      rw [evC, RingHom.comp_apply, RingHom.comp_apply, Polynomial.coeToPowerSeries.ringHom_apply, ev_coe,
        Polynomial.eval₂_eq_sum, Polynomial.sum_def, Polynomial.sum_def]
      change ainfToAcris l _ = _

      rw [map_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [map_mul, map_pow]
      rfl
    rw [hev, Polynomial.sum_def, Finset.sum_mul]
    exact Ideal.sum_mem _ fun k _ => term i k
  obtain ⟨y, hy⟩ := Ideal.mem_span_singleton'.1 hmem
  exact ⟨y, by rw [mul_comm]; exact hy⟩

end GlobalTheory.CrysEval
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DvdPolyEvaluationOfMemDividedTwoVariableSet =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPolynomialApproxDividedTwoVariableSet =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPolynomialApproxDividedTwoVariableSet", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RingHomExtDense\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.Finsupp.Pointwise\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism GlobalTheory.CrysEval
open scoped Formalism.Per

noncomputable section

namespace GlobalTheory.CrysEval

theorem coeff_coeff_natCast_mul {K : Type} [CommRing K] (m : ℕ) (q : K⟦X⟧⟦X⟧) (i n : ℕ) :
    coeff n (coeff i ((m : K⟦X⟧⟦X⟧) * q)) = (m : K) * coeff n (coeff i q) := by
  rw [← map_natCast (C : K⟦X⟧ →+* K⟦X⟧⟦X⟧), coeff_C_mul, ← map_natCast (C : K →+* K⟦X⟧), coeff_C_mul]

theorem exists_poly_approx_PPSet : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O), ∀ F ∈ PPSet t K e, ∀ r : ℕ, ∃ (n : ℕ) (b : Bp l a) (p h : ZMod a → K⟦X⟧⟦X⟧), n ≠ 0 ∧ p ∈ PPSet t K e ∧ h ∈ PPSet t K e ∧ (n : ZMod a → K⟦X⟧⟦X⟧) * p = iotaP K t b ∧ F = p + (l : ZMod a → K⟦X⟧⟦X⟧) ^ r * h := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ t F hF r
  classical
  have hK0 := charZero_K (l := l) (K := K)
  obtain ⟨w, hw, hFw⟩ := hF
  let N : ℕ × ℕ → ℕ := fun x => x.1.factorial * (x.2 / e).factorial
  have hNpos : ∀ x, N x ≠ 0 := fun x => Nat.mul_ne_zero (Nat.factorial_ne_zero _) (Nat.factorial_ne_zero _)
  have hN0 : ∀ x, (N x : K) ≠ 0 := fun x => Nat.cast_ne_zero.2 (hNpos x)
  let ser : (ℕ × ℕ → Wq l a) → ZMod a → K⟦X⟧⟦X⟧ := fun v τ =>
    PowerSeries.mk fun i => PowerSeries.mk fun n => embK K t τ (v (i, n)) / (N (i, n) : K)
  have coeff_ser : ∀ v τ i n, coeff n (coeff i (ser v τ)) = embK K t τ (v (i, n)) / (N (i, n) : K) := by
    intro v τ i n; simp [ser]
  have ser_mem : ∀ v, LTo0 l v → ser v ∈ PPSet t K e := by
    intro v hv
    refine ⟨v, hv, fun τ i n => ?_⟩
    rw [coeff_ser, mul_div_cancel₀ _ (hN0 (i, n))]
    rfl
  have coeff_F : ∀ τ i n, coeff n (coeff i (F τ)) = embK K t τ (w (i, n)) / (N (i, n) : K) := by
    intro τ i n
    rw [eq_div_iff (hN0 _), mul_comm]
    exact hFw τ i n
  have hfin : {x | ¬ (l : Wq l a) ^ r ∣ w x}.Finite := Filter.eventually_cofinite.1 (hw r)
  let s := hfin.toFinset
  have mem_s : ∀ x, x ∈ s ↔ ¬ (l : Wq l a) ^ r ∣ w x := fun x => by simp [s]
  let c : ℕ × ℕ → Wq l a := fun x => if h : (l : Wq l a) ^ r ∣ w x then h.choose else 0
  let w₁ : ℕ × ℕ → Wq l a := fun x => if x ∈ s then w x else 0
  have hsplit : ∀ x, w x = w₁ x + (l : Wq l a) ^ r * c x := by
    intro x
    by_cases h : (l : Wq l a) ^ r ∣ w x
    · have hx : x ∉ s := fun hx => (mem_s x).1 hx h
      simp only [w₁, c, hx, if_false, dif_pos h, zero_add]
      exact h.choose_spec
    · have hx : x ∈ s := (mem_s x).2 h
      simp [w₁, c, hx, h]
  have hw₁ : LTo0 l w₁ := by
    intro m
    refine Filter.eventually_cofinite.2 (hfin.subset fun x hx => ?_)
    simp only [Set.mem_setOf_eq] at hx ⊢
    intro hd
    apply hx
    have : x ∉ s := fun hx' => (mem_s x).1 hx' hd
    simp [w₁, this]
  have hc : LTo0 l c := by
    intro m
    filter_upwards [hw (m + r)] with x hx
    have h : (l : Wq l a) ^ r ∣ w x := dvd_trans (pow_dvd_pow _ (Nat.le_add_left r m)) hx
    obtain ⟨d, hd⟩ := hx
    have hcx : c x = h.choose := dif_pos h
    have hspec := h.choose_spec
    refine ⟨d, ?_⟩
    rw [hcx]
    have hl0 : l ^ r ≠ 0 := pow_ne_zero _ (Fact.out : l.Prime).ne_zero
    have := wq_nat_cancel (K := K) t hl0 (x := h.choose - (l : Wq l a) ^ m * d) (by
      push_cast
      linear_combination hd - hspec)
    exact sub_eq_zero.1 this
  let nn : ℕ := ∏ x ∈ s, N x
  let b : Bp l a := ∑ x ∈ s, Polynomial.monomial x.1 (Polynomial.monomial x.2 ((nn / N x) • w x))
  have coeff_b : ∀ i n, (b.coeff i).coeff n = if (i, n) ∈ s then (nn / N (i, n)) • w (i, n) else 0 := by
    intro i n
    simp only [b, Polynomial.finsetSum_coeff, Polynomial.coeff_monomial]
    rw [Finset.sum_congr rfl (g := fun x => if x = (i, n) then (nn / N x) • w x else 0)]
    · exact Finset.sum_ite_eq' _ _ _
    · intro x _
      obtain ⟨x1, x2⟩ := x
      by_cases h1 : x1 = i <;> by_cases h2 : x2 = n <;> simp [h1, h2, Polynomial.coeff_monomial, Prod.ext_iff]
  refine ⟨nn, b, ser w₁, ser c, Finset.prod_ne_zero_iff.2 fun x _ => hNpos x, ser_mem _ hw₁, ser_mem _ hc, ?_, ?_⟩
  · funext τ
    refine PowerSeries.ext fun i => PowerSeries.ext fun n => ?_
    rw [Pi.mul_apply, Pi.natCast_apply, coeff_coeff_natCast_mul, coeff_ser, coeff_iotaP, coeff_b]
    split_ifs with hx
    · have hdvd : N (i, n) ∣ nn := Finset.dvd_prod_of_mem N hx
      simp only [w₁, hx, if_true]
      rw [map_nsmul, nsmul_eq_mul, Nat.cast_div hdvd (hN0 _)]
      field_simp
    · simp [w₁, hx]
  · funext τ
    refine PowerSeries.ext fun i => PowerSeries.ext fun n => ?_
    rw [← Nat.cast_pow, Pi.add_apply, Pi.mul_apply, Pi.natCast_apply, map_add (f := _), map_add (f := _), coeff_coeff_natCast_mul,
      coeff_F, coeff_ser, coeff_ser, hsplit (i, n), map_add, map_mul, map_pow, map_natCast]
    push_cast
    ring

end GlobalTheory.CrysEval
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPolynomialApproxDividedTwoVariableSet =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineEvalRingHomFrobeniusTaylor =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineEvalRingHomFrobeniusTaylor", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RingHomExtDense\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedTwoVariableSubringSubsetGeneratorSet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DvdPolyEvaluationOfMemDividedTwoVariableSet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPolynomialApproxDividedTwoVariableSet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FactorialMulCoeffMemDividedPowerSeriesSubring\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobMemPPSetCongr\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PadicValNatFactorialBound\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TaylorShiftFrobeniusMemDividedTwoVariableGenerat\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedWittPowerSeriesMemDividedPowerSeriesGe\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AcrisTorsionFreeComplete\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PowerSeries.NoZeroDivisors\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism
open scoped Formalism.Per

namespace GlobalTheory.CrysEval

section Main

variable {l : ℕ} [hl : Fact l.Prime] {a e : ℕ} [NeZero a] [NeZero e] {O K : Type} [CommRing O] [Algebra ℤ_[l] O]
  [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K]
  [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O)


omit [NeZero e] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [IsUltrametricDist K] [IsUnitBall O K]
  [NormedAlgebra ℚ_[l] K] in
theorem iotaP_mem (b : Bp l a) : iotaP K t b ∈ PPSet t K e := by
  refine ⟨fun x => ((x.1.factorial * (x.2 / e).factorial : ℕ) : Wq l a) * (b.coeff x.1).coeff x.2,
    fun r => ?_, fun τ i n => ?_⟩
  · refine Filter.eventually_cofinite.2 (((Set.finite_Iic b.natDegree).prod (Set.finite_Iic
      ((Finset.range (b.natDegree + 1)).sup fun i => (b.coeff i).natDegree))).subset fun x hx => ?_)
    have h0 : (b.coeff x.1).coeff x.2 ≠ 0 := fun h0 => hx (by simp [h0])
    have h1 : b.coeff x.1 ≠ 0 := fun h1 => h0 (by simp [h1])
    have h2 := Polynomial.le_natDegree_of_ne_zero h1
    have h3 := Polynomial.le_natDegree_of_ne_zero h0
    exact ⟨h2, h3.trans (Finset.le_sup (f := fun i => (b.coeff i).natDegree)
      (Finset.mem_range.2 (Nat.lt_succ_of_le h2)))⟩
  · rw [coeff_iotaP]
    simp [embK, map_mul, map_natCast]


variable (K) in
def iotaD : Bp l a →+* PPd t K e :=
  (iotaP K t).codRestrict (PPd t K e) fun b => Subring.subset_closure (iotaP_mem t b)

omit [NeZero e] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedAlgebra ℚ_[l] K] in
@[simp] theorem coe_iotaD (b : Bp l a) : (iotaD K (e := e) t b : ZMod a → K⟦X⟧⟦X⟧) = iotaP K t b := rfl

theorem iotaP_C (q : Polynomial (Wq l a)) (τ : ZMod a) :
    iotaP K t (Polynomial.C q) τ = C (rhoK K t τ q) := by
  change PowerSeries.map (rhoK K t τ) ((Polynomial.C q : Bp l a) : (Polynomial (Wq l a))⟦X⟧) = _
  rw [Polynomial.coe_C, map_C]

theorem iotaP_X (τ : ZMod a) : iotaP K t (Polynomial.X : Bp l a) τ = X := by
  change PowerSeries.map (rhoK K t τ) ((Polynomial.X : Bp l a) : (Polynomial (Wq l a))⟦X⟧) = _
  rw [Polynomial.coe_X, map_X]

theorem rhoK_C (w : Wq l a) (τ : ZMod a) : rhoK K t τ (Polynomial.C w) = C (embK K t τ w) := by
  change PowerSeries.map (embK K t τ) ((Polynomial.C w : Polynomial (Wq l a)) : (Wq l a)⟦X⟧) = _
  rw [Polynomial.coe_C, map_C]

theorem rhoK_X (τ : ZMod a) : rhoK K t τ Polynomial.X = X := by
  change PowerSeries.map (embK K t τ) ((Polynomial.X : Polynomial (Wq l a)) : (Wq l a)⟦X⟧) = _
  rw [Polynomial.coe_X, map_X]

theorem coeff_iotaP_X (b : Bp l a) (τ : ZMod a) (i : ℕ) : coeff i (iotaP K t b τ) = rhoK K t τ (b.coeff i) := by
  change coeff i (PowerSeries.map (rhoK K t τ) (b : (Polynomial (Wq l a))⟦X⟧)) = _
  rw [coeff_map, Polynomial.coeff_coe]


omit [NeZero e] in
theorem constP_inclS_coe (q : Polynomial (Wq l a)) :
    constP a K (inclS t K (q : (Wq l a)⟦X⟧)) = iotaP K t (Polynomial.C q) := funext fun τ => by
  rw [iotaP_C, rhoK_eq_toAc]
  rfl


omit [NeZero e] in
theorem acris_complete : IsAdicComplete (Ideal.span {(l : Per.Acris l)}) (Per.Acris l) :=
  (GlobalTheory.MemLoc.acris_torsionFree_complete l).2

theorem denseD (F : PPd t K e) (r : ℕ) : ∃ (n : ℕ) (b : Bp l a) (p h : PPd t K e),
    n ≠ 0 ∧ (n : PPd t K e) * p = iotaD K t b ∧ F = p + (l : PPd t K e) ^ r * h := by
  obtain ⟨n, b, p, h, hn, hp, hh, hpb, hF⟩ := _root_.GlobalTheory.CrysEval.exists_poly_approx_PPSet l a e O K t F (_root_.GlobalTheory.CrysPrism.PPd_subset_PPSet l a e O K t _ F.2) r
  exact ⟨n, b, ⟨p, Subring.subset_closure hp⟩, ⟨h, Subring.subset_closure hh⟩, hn,
    Subtype.ext (by simpa [coe_iotaD] using hpb), Subtype.ext (by simpa using hF)⟩

variable (ϖ : PiSys l e) (g : ↥(GK (ϖ.field a)))

theorem exists_E : ∃ E : PPd t K e →+* Per.Acris l,
    ∀ F r y, Approx l (iotaD K t) (fP a ϖ (g : GQ l)) F r y → (l : Per.Acris l) ^ r ∣ E F - y := by
  have := acris_complete (l := l)
  refine exists_ringHom (fun n x hn h => acris_nat_cancel hn h) (fun n b p hn hp => ?_) hl.out.ne_zero
    (fun F r => ?_)
  · exact _root_.GlobalTheory.CrysEval.dvd_fP_of_mem_PPSet l a e O K t ϖ g b p (_root_.GlobalTheory.CrysPrism.PPd_subset_PPSet l a e O K t _ p.2) n hn
      (by simpa [coe_iotaD] using congrArg Subtype.val hp)
  · exact denseD t F r

def evE : PPd t K e →+* Per.Acris l := (exists_E t ϖ g).choose

theorem evE_approx (F : PPd t K e) (r : ℕ) (y : Per.Acris l)
    (h : Approx l (iotaD K t) (fP a ϖ (g : GQ l)) F r y) : (l : Per.Acris l) ^ r ∣ evE t ϖ g F - y :=
  (exists_E t ϖ g).choose_spec F r y h

theorem evE_iotaD (b : Bp l a) : evE t ϖ g (iotaD K t b) = fP a ϖ (g : GQ l) b := by
  have := acris_complete (l := l)
  exact sub_eq_zero.1 (sep_l l _ fun r => evE_approx t ϖ g _ r _ (approx_ι b r))

theorem evE_of_eq {F : ZMod a → K⟦X⟧⟦X⟧} (hF : F ∈ PPd t K e) (b : Bp l a) (h : F = iotaP K t b) :
    evE t ϖ g ⟨F, hF⟩ = fP a ϖ (g : GQ l) b := by
  subst h
  exact evE_iotaD t ϖ g b

omit [NeZero e] in
theorem fP_C (q : Polynomial (Wq l a)) (g' : GQ l) : fP a ϖ g' (Polynomial.C q) = ainfToAcris l (ϖ.ev a q) := by
  simp [fP, evC]

omit [NeZero e] in
theorem fP_X (g' : GQ l) : fP a ϖ g' Polynomial.X = ainfToAcris l (ϖ.mu g' * ϖ.teich) := by
  simp [fP]


omit [NeZero a] [NeZero e] in
theorem sep_teich_acris (x : Per.Acris l) (h : ∀ n, ainfToAcris l ϖ.teich ^ n ∣ x) : x = 0 := by
  have := acris_complete (l := l)
  refine sep_l l x fun r => ?_
  obtain ⟨d, hd⟩ := ϖ.exists_dpow_teich (l ^ r)
  obtain ⟨k, hk⟩ := Nat.dvd_factorial (pow_pos hl.out.pos r) (le_refl (l ^ r))
  refine Dvd.dvd.trans ⟨k * d, ?_⟩ (h (e * l ^ r))
  rw [← hd, hk]
  push_cast
  ring

theorem constP_inclS_mem (x : (Wq l a)⟦X⟧) : constP a K (inclS t K x) ∈ PPd t K e :=
  Subring.subset_closure (constP_mem t e (_root_.GlobalTheory.CrysPrism.inclS_mem_SdSet l a e O K t x))

theorem evE_constP_coe (q : Polynomial (Wq l a)) (h : constP a K (inclS t K (q : (Wq l a)⟦X⟧)) ∈ PPd t K e) :
    evE t ϖ g ⟨_, h⟩ = ainfToAcris l (ϖ.ev a q) :=
  (evE_of_eq t ϖ g h _ (constP_inclS_coe t q)).trans (fP_C ϖ q _)

theorem evE_constP (x : (Wq l a)⟦X⟧) (hx : constP a K (inclS t K x) ∈ PPd t K e) :
    evE t ϖ g ⟨_, hx⟩ = ainfToAcris l (ϖ.ev a x) := by
  let φ : (Wq l a)⟦X⟧ →+* Per.Acris l :=
    (evE t ϖ g).comp (((constP a K).comp (inclS t K)).codRestrict _ (constP_inclS_mem t))
  have hφ : ∀ q : Polynomial (Wq l a), φ q = ainfToAcris l (ϖ.ev a q) := fun q =>
    evE_constP_coe t ϖ g q _
  have hφX : φ X = ainfToAcris l ϖ.teich := by
    have := hφ Polynomial.X
    rwa [Polynomial.coe_X, PiSys.ev_X] at this
  have h := ringHom_ext_of_sep φ ((ainfToAcris l).toRingHom.comp (ϖ.ev a)) (fun w => ?_) ?_
    (fun y hy => sep_teich_acris ϖ y fun n => hφX ▸ hy n)
  · exact RingHom.congr_fun h x
  · have := hφ (Polynomial.C w)
    rwa [Polynomial.coe_C] at this
  · have := hφ Polynomial.X
    rwa [Polynomial.coe_X] at this

omit [NeZero a] [NeZero e] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [IsUltrametricDist K] [IsUnitBall O K]
  [NormedAlgebra ℚ_[l] K] in
theorem frobenius_teich_mul (g' : GQ l) :
    WittVector.frobenius ((1 + ϖ.mu g') * ϖ.teich) = ((1 + ϖ.mu g') * ϖ.teich) ^ l := by
  rw [PiSys.mu, add_sub_cancel, PiSys.teich, ← map_mul, WittVector.frobenius_eq_map_frobenius,
    WittVector.map_teichmuller, frobenius_def, map_pow]

section Sh

variable (sh : K⟦X⟧ →+* K⟦X⟧⟦X⟧)
  (hsh : ∀ (f : K⟦X⟧) (i : ℕ), (i.factorial : K⟦X⟧) * coeff i (sh f) = (PowerSeries.derivative (R := K))^[i] f)
include hsh


omit [NeZero a] [NeZero e] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [IsUltrametricDist K] [IsUnitBall O K]
  [NormedAlgebra ℚ_[l] K] in
theorem sh_C [CharZero K] (c : K) : sh (C c) = C (C c) := by
  ext i : 1
  rcases i with _ | i
  · simpa [coeff_C] using hsh (C c) 0
  · have h := hsh (C c) (i + 1)
    have h4 : (PowerSeries.derivative (R := K))^[i + 1] (C c) = 0 := by
      rw [Function.iterate_succ_apply, PowerSeries.derivative_C]
      exact Function.iterate_fixed (map_zero _) i
    rw [h4] at h
    rw [(mul_eq_zero.1 h).resolve_left (natCast_ne_zero_ps (Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _))),
      coeff_C, if_neg (Nat.succ_ne_zero i)]

theorem shP_mem (x : (Wq l a)⟦X⟧) : shP a sh (inclS t K (frobS l a x)) ∈ PPd t K e :=
  Subring.subset_closure (_root_.GlobalTheory.CrysPrism.ShMem.shP_frob_mem l a e O K t sh hsh x).1

omit [NeZero e] in
theorem shP_frobS_C (w : Wq l a) :
    shP a sh (inclS t K (frobS l a (C w))) = iotaP K t (Polynomial.C (Polynomial.C (sigma l a w))) := by
  have := charZero_K (l := l) (K := K)
  funext τ
  rw [iotaP_C, rhoK_C, frobS_C]
  change sh (toAc t K (C (sigma l a w)) τ : K⟦X⟧) = _
  rw [show (toAc t K (C (sigma l a w)) τ : K⟦X⟧) = C (embK K t τ (sigma l a w)) from
    PowerSeries.ext fun n => by rw [coeff_toAc, coeff_C, coeff_C]; split_ifs <;> simp [embK]]
  exact sh_C sh hsh _

omit [NeZero e] in
theorem shP_frobS_X :
    shP a sh (inclS t K (frobS l a X)) = iotaP K t ((Polynomial.C Polynomial.X + Polynomial.X) ^ l) := by
  have := charZero_K (l := l) (K := K)
  funext τ
  rw [map_pow, map_add (f := _), Pi.pow_apply, Pi.add_apply, iotaP_C, rhoK_X, iotaP_X, frobS_X, map_pow, map_pow,
    Pi.pow_apply]
  change sh (toAc t K X τ : K⟦X⟧) ^ l = _
  rw [show (toAc t K X τ : K⟦X⟧) = X from PowerSeries.ext fun n => by
    rw [coeff_toAc, coeff_X, coeff_X]; split_ifs <;> simp]
  rw [sh_X sh hsh]

theorem evE_shP (x : (Wq l a)⟦X⟧) (hx : shP a sh (inclS t K (frobS l a x)) ∈ PPd t K e) :
    evE t ϖ g ⟨_, hx⟩ = ainfToAcris l (WittVector.frobenius (Per.σA (g : GQ l) (ϖ.ev a x))) := by
  let φ : (Wq l a)⟦X⟧ →+* Per.Acris l := (evE t ϖ g).comp
    (((shP a sh).comp ((inclS t K).comp (frobS l a))).codRestrict _ (shP_mem t sh hsh))
  let ψ : (Wq l a)⟦X⟧ →+* Per.Acris l := (ainfToAcris l).toRingHom.comp
    (WittVector.frobenius.comp ((Per.σA (g : GQ l)).comp (ϖ.ev a)))
  have hψX : ψ X = (ainfToAcris l ((1 + ϖ.mu g) * ϖ.teich)) ^ l := by
    change ainfToAcris l (WittVector.frobenius (Per.σA (g : GQ l) (ϖ.ev a X))) = _
    rw [PiSys.ev_X, PiSys.gal_teich, frobenius_teich_mul, map_pow]
  have hπ : ainfToAcris l ϖ.teich ∣ ψ X := by
    rw [hψX, map_mul]
    exact (dvd_mul_left _ _).trans (dvd_pow_self _ hl.out.ne_zero)
  have hg : ∀ y ∈ Kunr l a, (g : GQ l) y = y := fun y hy =>
    (IntermediateField.mem_fixingSubgroup_iff _ _).1 g.2 y (ϖ.Kunr_le_field a hy)
  have hφC : ∀ w, φ (C w) = ψ (C w) := fun w => by
    change evE t ϖ g ⟨shP a sh (inclS t K (frobS l a (C w))), shP_mem t sh hsh _⟩ =
      ainfToAcris l (WittVector.frobenius (Per.σA (g : GQ l) (ϖ.ev a (C w))))
    rw [evE_of_eq t ϖ g _ _ (shP_frobS_C t sh hsh w), fP_C, Polynomial.coe_C, PiSys.ev_C, PiSys.ev_C,
      gal_wA l a hg, wA_sigma]
  have hφX : φ X = ψ X := by
    change evE t ϖ g ⟨shP a sh (inclS t K (frobS l a X)), shP_mem t sh hsh _⟩ =
      ainfToAcris l (WittVector.frobenius (Per.σA (g : GQ l) (ϖ.ev a X)))
    rw [evE_of_eq t ϖ g _ _ (shP_frobS_X t sh hsh), map_pow, map_add (f := _), fP_C, fP_X, Polynomial.coe_X, PiSys.ev_X,
      PiSys.gal_teich, frobenius_teich_mul, map_pow, map_mul, map_mul, map_add, map_one]
    ring
  have h := ringHom_ext_of_sep ψ φ (fun w => (hφC w).symm) hφX.symm (fun y hy => sep_teich_acris ϖ y fun n =>
    (pow_dvd_pow_of_dvd hπ n).trans (hy n))
  exact (RingHom.congr_fun h x).symm

end Sh

omit [NeZero a] [NeZero e] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [IsUltrametricDist K] [IsUnitBall O K]
  [NormedAlgebra ℚ_[l] K] in
theorem frobenius_teich : WittVector.frobenius ϖ.teich = ϖ.teich ^ l := by
  rw [WittVector.frobenius_eq_map_frobenius, PiSys.teich, WittVector.map_teichmuller, frobenius_def, map_pow]

theorem evE_ext (G₁ G₂ : PPd t K e →+* Per.Acris l) (h : ∀ b, G₁ (iotaD K t b) = G₂ (iotaD K t b)) : G₁ = G₂ := by
  have := acris_complete (l := l)
  exact ringHom_ext_dense (ι := iotaD K t) (fun n x hn h => acris_nat_cancel hn h) hl.out.ne_zero
    (denseD (e := e) t) G₁ G₂ h

section Frob

variable (sh : K⟦X⟧ →+* K⟦X⟧⟦X⟧)
  (hsh : ∀ (f : K⟦X⟧) (i : ℕ), (i.factorial : K⟦X⟧) * coeff i (sh f) = (PowerSeries.derivative (R := K))^[i] f)
  (φ₂ : K⟦X⟧⟦X⟧ →+* K⟦X⟧⟦X⟧) (hφC : ∀ f : K⟦X⟧, φ₂ (PowerSeries.C f) = PowerSeries.C (frob K l f))
  (hφsh : ∀ f : K⟦X⟧, φ₂ (sh f) = sh (frob K l f))
include hsh hφC hφsh

theorem bivariateFrobenius_mem_dividedSubring {F : ZMod a → K⟦X⟧⟦X⟧} (hF : F ∈ PPd t K e) : frob2 φ₂ F ∈ PPd t K e :=
  Subring.subset_closure (_root_.GlobalTheory.CrysPrism.FrobPP.frob_mem_PPSet_congr l a e O K t sh hsh φ₂ hφC hφsh F (_root_.GlobalTheory.CrysPrism.PPd_subset_PPSet l a e O K t F hF)).1

omit [NeZero a] [NeZero e] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [IsUltrametricDist K] [IsUnitBall O K] in
theorem φ₂_X : φ₂ X = (C X + X) ^ l - C (X ^ l) := by
  have := charZero_K (l := l) (K := K)
  have h : (X : K⟦X⟧⟦X⟧) = sh X - C X := by rw [sh_X sh hsh]; ring
  conv_lhs => rw [h]
  rw [map_sub, hφsh, hφC, frob_X, map_pow]
  rw [sh_X sh hsh]

omit [NeZero e] in
theorem bivariateFrobenius_bivariateEmbedding_CC (w : Wq l a) :
    frob2 φ₂ (iotaP K t (Polynomial.C (Polynomial.C w))) = iotaP K t (Polynomial.C (Polynomial.C (sigma l a w))) := by
  funext τ
  change φ₂ (iotaP K t (Polynomial.C (Polynomial.C w)) (τ - 1)) = _
  rw [iotaP_C, iotaP_C, rhoK_C, rhoK_C, hφC, frob_C]
  congr 2
  simp only [embK, RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, emb_sigma]

omit [NeZero e] in
theorem bivariateFrobenius_bivariateEmbedding_CX :
    frob2 φ₂ (iotaP K t (Polynomial.C Polynomial.X)) = iotaP K t (Polynomial.C (Polynomial.X ^ l)) := by
  funext τ
  change φ₂ (iotaP K t (Polynomial.C Polynomial.X) (τ - 1)) = _
  rw [iotaP_C, iotaP_C, rhoK_X, map_pow, rhoK_X, hφC, frob_X]

omit [NeZero e] in
theorem bivariateFrobenius_bivariateEmbedding_X : frob2 φ₂ (iotaP K t Polynomial.X) =
    iotaP K t ((Polynomial.C Polynomial.X + Polynomial.X) ^ l - (Polynomial.C Polynomial.X) ^ l) := by
  funext τ
  change φ₂ (iotaP K t Polynomial.X (τ - 1)) = _
  rw [iotaP_X, φ₂_X sh hsh φ₂ hφC hφsh]
  simp only [map_sub, map_pow, map_add (f := _), Pi.sub_apply, Pi.pow_apply, Pi.add_apply, iotaP_C, iotaP_X, rhoK_X]

theorem evE_frob2 : (evE t ϖ g).comp ((frob2 φ₂).restrict (PPd t K e) (PPd t K e)
    fun _ hF => bivariateFrobenius_mem_dividedSubring t sh hsh φ₂ hφC hφsh hF) = (frobC l).toRingHom.comp (evE t ϖ g) := by
  refine evE_ext t _ _ fun b => ?_
  have key : ∀ b b' : Bp l a, frob2 φ₂ (iotaP K t b) = iotaP K t b' →
      fP a ϖ (g : GQ l) b' = frobC l (fP a ϖ (g : GQ l) b) →
      ((evE t ϖ g).comp ((frob2 φ₂).restrict (PPd t K e) (PPd t K e)
        fun _ hF => bivariateFrobenius_mem_dividedSubring t sh hsh φ₂ hφC hφsh hF)) (iotaD K t b) =
      ((frobC l).toRingHom.comp (evE t ϖ g)) (iotaD K t b) := fun b b' h1 h2 => by
    have hm : frob2 φ₂ (iotaP K t b) ∈ PPd t K e :=
      bivariateFrobenius_mem_dividedSubring t sh hsh φ₂ hφC hφsh (Subring.subset_closure (iotaP_mem t b))
    change evE t ϖ g ⟨frob2 φ₂ (iotaP K t b), hm⟩ = frobC l (evE t ϖ g (iotaD K t b))
    rw [evE_of_eq t ϖ g hm b' h1, evE_iotaD, h2]
  let H₁ := ((evE t ϖ g).comp ((frob2 φ₂).restrict (PPd t K e) (PPd t K e)
    fun _ hF => bivariateFrobenius_mem_dividedSubring t sh hsh φ₂ hφC hφsh hF)).comp (iotaD K t)
  let H₂ := ((frobC l).toRingHom.comp (evE t ϖ g)).comp (iotaD K t)
  have hC : H₁.comp Polynomial.C = H₂.comp Polynomial.C := by
    refine Polynomial.ringHom_ext (fun w => ?_) ?_
    · refine key _ _ (bivariateFrobenius_bivariateEmbedding_CC t sh hsh φ₂ hφC hφsh w) ?_
      rw [fP_C, fP_C, Polynomial.coe_C, Polynomial.coe_C, PiSys.ev_C, PiSys.ev_C, wA_sigma,
        GlobalTheory.AcrisPrism.frobC_ainfToAcris]
    · refine key _ _ (bivariateFrobenius_bivariateEmbedding_CX t sh hsh φ₂ hφC hφsh) ?_
      rw [fP_C, fP_C, Polynomial.coe_pow, Polynomial.coe_X, map_pow, PiSys.ev_X,
        GlobalTheory.AcrisPrism.frobC_ainfToAcris, frobenius_teich, map_pow]
  have h := Polynomial.ringHom_ext (f := H₁) (g := H₂) (fun q => RingHom.congr_fun hC q) (by
    refine key _ _ (bivariateFrobenius_bivariateEmbedding_X t sh hsh φ₂ hφC hφsh) ?_
    rw [map_sub, map_pow, map_pow, map_add (f := _), fP_C, fP_X, Polynomial.coe_X, PiSys.ev_X,
      GlobalTheory.AcrisPrism.frobC_ainfToAcris]
    have e1 : WittVector.frobenius (ϖ.mu (g : GQ l) * ϖ.teich) =
        ((1 + ϖ.mu (g : GQ l)) * ϖ.teich) ^ l - ϖ.teich ^ l := by
      rw [show ϖ.mu (g : GQ l) * ϖ.teich = (1 + ϖ.mu (g : GQ l)) * ϖ.teich - ϖ.teich by ring, map_sub,
        frobenius_teich_mul, frobenius_teich]
    rw [e1, map_sub, map_pow, map_pow, map_mul, map_mul, map_add (f := _), map_one]
    ring)
  exact RingHom.congr_fun h b

end Frob

theorem iC_rhoK (q : Polynomial (Wq l a)) (hq : ∀ τ, rhoK K t τ q ∈ S O K e) :
    ϖ.iC t K (fun τ => ⟨rhoK K t τ q, hq τ⟩) = 1 ⊗ₜ ainfToAcris l (ϖ.ev a q) := by
  have h : (fun τ => (⟨rhoK K t τ q, hq τ⟩ : S O K e)) =
      fun τ => ⟨(toAc t K (q : (Wq l a)⟦X⟧) τ : K⟦X⟧), A_le_S l e (toAc t K (q : (Wq l a)⟦X⟧) τ).2⟩ :=
    funext fun τ => Subtype.ext (rhoK_eq_toAc t q τ)
  rw [h, PiSys.iC_of_mem, PiSys.iTot_toAc, toOCr_tmul]

theorem iC_u : ϖ.iC t K (fun _ => uIn (S O K e)) = 1 ⊗ₜ ainfToAcris l ϖ.teich := by
  have hX : ∀ τ, rhoK K t τ Polynomial.X ∈ S O K e := fun τ => by rw [rhoK_X]; exact HasU.X_mem
  have e1 : (fun _ => uIn (S O K e) : ZMod a → S O K e) = fun τ => ⟨rhoK K t τ Polynomial.X, hX τ⟩ :=
    funext fun τ => Subtype.ext (rhoK_X t τ).symm
  rw [e1, iC_rhoK, Polynomial.coe_X, PiSys.ev_X]

theorem taylor_term (b : Bp l a) (p : ZMod a → K⟦X⟧⟦X⟧) (N : ℕ) (hpb : (N : ZMod a → K⟦X⟧⟦X⟧) * p = iotaP K t b)
    (i : ℕ) (hSp : ∀ τ, (X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (p τ)) ∈ S O K e) :
    (N : OCr l O) * (ϖ.muDiv a O g i * ϖ.iC t K (fun τ => ⟨_, hSp τ⟩)) =
      1 ⊗ₜ (ainfToAcris l (ϖ.ev a (b.coeff i)) * ainfToAcris l (ϖ.mu g * ϖ.teich) ^ i) := by
  let j : Per.Acris l →ₐ[ℤ_[l]] OCr l O := Algebra.TensorProduct.includeRight
  have hq : ∀ τ, rhoK K t τ (b.coeff i) ∈ S O K e := fun τ => by
    rw [rhoK_eq_toAc]; exact A_le_S l e (toAc t K _ τ).2
  have e1 : (N : ZMod a → S O K e) * (fun τ => ⟨_, hSp τ⟩) =
      (fun _ => uIn (S O K e)) ^ i * (i.factorial : ZMod a → S O K e) *
        fun τ => ⟨rhoK K t τ (b.coeff i), hq τ⟩ := funext fun τ => Subtype.ext (by
    have h2 := congrArg (fun G => coeff i (G τ)) hpb
    simp only [Pi.mul_apply, Pi.natCast_apply] at h2
    rw [← map_natCast (C : K⟦X⟧ →+* K⟦X⟧⟦X⟧), coeff_C_mul, coeff_iotaP_X] at h2
    simp only [Pi.mul_apply, Pi.natCast_apply, Pi.pow_apply, Subalgebra.coe_mul, Subalgebra.coe_pow,
      SubringClass.coe_natCast, coe_uIn]
    rw [← h2]; ring)
  have hA : (N : OCr l O) * ϖ.iC t K (fun τ => ⟨_, hSp τ⟩) =
      j (ainfToAcris l ϖ.teich) ^ i * (i.factorial : OCr l O) * j (ainfToAcris l (ϖ.ev a (b.coeff i))) := by
    rw [← map_natCast (ϖ.iC t K), ← map_mul, e1, map_mul, map_mul, map_pow, map_natCast, iC_u, iC_rhoK]
    rfl
  have h3 : (i.factorial : OCr l O) * ϖ.muDiv a O g i = j (ainfToAcris l (ϖ.mu g)) ^ i := by
    have h4 := congrArg j (factorial_mul_dpow (ϖ.mu g) (ϖ.theta_mu (ϖ.gal_pi a g)) i)
    rw [map_mul, map_natCast, map_pow] at h4
    exact h4
  rw [mul_left_comm, hA]
  change _ = j _
  rw [map_mul, map_pow, map_mul, map_mul]
  linear_combination (j (ainfToAcris l ϖ.teich) ^ i * j (ainfToAcris l (ϖ.ev a (b.coeff i)))) * h3

theorem taylor_poly (b : Bp l a) (p : ZMod a → K⟦X⟧⟦X⟧) (hp : p ∈ PPd t K e) (N : ℕ) (hN : N ≠ 0)
    (hpb : (N : ZMod a → K⟦X⟧⟦X⟧) * p = iotaP K t b)
    (hSp : ∀ τ i, (X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (p τ)) ∈ S O K e) (n : ℕ) (hn : b.natDegree < n) :
    (1 : O) ⊗ₜ[ℤ_[l]] evE t ϖ g ⟨p, hp⟩ -
      ∑ i ∈ Finset.range n, ϖ.muDiv a O g i * ϖ.iC t K (fun τ => ⟨_, hSp τ i⟩) = 0 := by
  let j : Per.Acris l →ₐ[ℤ_[l]] OCr l O := Algebra.TensorProduct.includeRight
  refine nat_cancel_OCr hN ?_
  have e1 : (N : PPd t K e) * ⟨p, hp⟩ = iotaD K t b := Subtype.ext (by simpa [coe_iotaD] using hpb)
  have e2 : (N : Per.Acris l) * evE t ϖ g ⟨p, hp⟩ = fP a ϖ (g : GQ l) b := by
    rw [← map_natCast (evE (K := K) (e := e) t ϖ g), ← map_mul, e1, evE_iotaD]
  have e3 : fP a ϖ (g : GQ l) b = ∑ i ∈ Finset.range n,
      ainfToAcris l (ϖ.ev a (b.coeff i)) * ainfToAcris l (ϖ.mu g * ϖ.teich) ^ i := by
    rw [fP, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_eq_sum_range' _ hn]
    rfl
  have e4 : (N : OCr l O) * (1 : O) ⊗ₜ[ℤ_[l]] evE t ϖ g ⟨p, hp⟩ = j (fP a ϖ (g : GQ l) b) := by
    rw [← e2, map_mul, map_natCast]
    rfl

  rw [mul_sub, Finset.mul_sum, e4, Finset.sum_congr rfl fun i _ => taylor_term t ϖ g b p N hpb i (fun τ => hSp τ i),
  e3, map_sum]
  exact sub_eq_zero.2 (Finset.sum_congr rfl fun i _ => rfl)

theorem evE_taylor (F : ZMod a → K⟦X⟧⟦X⟧) (hF : F ∈ PPd t K e)
    (hS : ∀ (τ : ZMod a) (i : ℕ), (X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (F τ)) ∈ S O K e) (r : ℕ) :
    ∃ n₀ : ℕ, ∀ n ≥ n₀, (l : OCr l O) ^ r ∣ (1 : O) ⊗ₜ[ℤ_[l]] evE t ϖ g ⟨F, hF⟩ -
      ∑ i ∈ Finset.range n, ϖ.muDiv a O g i * ϖ.iC t K (fun τ => ⟨_, hS τ i⟩) := by
  let j : Per.Acris l →ₐ[ℤ_[l]] OCr l O := Algebra.TensorProduct.includeRight
  obtain ⟨N, b, p, h, hN, hp, hh, hpb, hFeq⟩ :=
    _root_.GlobalTheory.CrysEval.exists_poly_approx_PPSet l a e O K t F (_root_.GlobalTheory.CrysPrism.PPd_subset_PPSet l a e O K t F hF) r
  have hcoef : ∀ τ i, coeff i (F τ) = coeff i (p τ) + (l : K⟦X⟧) ^ r * coeff i (h τ) := fun τ i => by
    have h1 := congrFun hFeq τ
    simp only [Pi.add_apply, Pi.mul_apply, Pi.pow_apply, Pi.natCast_apply] at h1
    rw [h1, map_add (f := _), ← map_natCast (C : K⟦X⟧ →+* K⟦X⟧⟦X⟧), ← map_pow, coeff_C_mul]
  have hSh : ∀ τ i, (X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (h τ)) ∈ S O K e := fun τ i =>
    mul_mem (pow_mem HasU.X_mem i) (_root_.GlobalTheory.CrysPrism.factorial_mul_coeff_mem_S l a e O K t h hh τ i)
  have hSp : ∀ τ i, (X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (p τ)) ∈ S O K e := fun τ i => by
    have e1 : (X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (p τ)) =
        (X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (F τ)) -
          (l : K⟦X⟧) ^ r * ((X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (h τ))) := by
      rw [hcoef]; ring
    rw [e1]
    exact sub_mem (hS τ i) (mul_mem (pow_mem (natCast_mem _ l) r) (hSh τ i))
  have hp' : p ∈ PPd t K e := Subring.subset_closure hp
  have hh' : h ∈ PPd t K e := Subring.subset_closure hh
  have hsplit : ∀ i, ϖ.iC t K (fun τ => ⟨_, hS τ i⟩) =
      ϖ.iC t K (fun τ => ⟨_, hSp τ i⟩) + (l : OCr l O) ^ r * ϖ.iC t K (fun τ => ⟨_, hSh τ i⟩) := fun i => by
    have e1 : (fun τ => (⟨_, hS τ i⟩ : S O K e)) =
        (fun τ => (⟨_, hSp τ i⟩ : S O K e)) + (l : ZMod a → S O K e) ^ r * fun τ => ⟨_, hSh τ i⟩ :=
      funext fun τ => Subtype.ext (by
        simp only [Pi.add_apply, Pi.mul_apply, Pi.pow_apply, Pi.natCast_apply, Subalgebra.coe_add,
          Subalgebra.coe_mul, Subalgebra.coe_pow, SubringClass.coe_natCast]
        rw [hcoef]; ring)
    rw [e1, map_add (f := _), map_mul, map_pow, map_natCast]
  have hEsplit : (1 : O) ⊗ₜ[ℤ_[l]] evE t ϖ g ⟨F, hF⟩ = (1 : O) ⊗ₜ[ℤ_[l]] evE t ϖ g ⟨p, hp'⟩ +
      (l : OCr l O) ^ r * (1 : O) ⊗ₜ[ℤ_[l]] evE t ϖ g ⟨h, hh'⟩ := by
    have e1 : (⟨F, hF⟩ : PPd t K e) = ⟨p, hp'⟩ + (l : PPd t K e) ^ r * ⟨h, hh'⟩ := Subtype.ext (by simpa using hFeq)
    rw [e1, map_add (f := _), map_mul, map_pow, map_natCast]
    change j _ = j _ + _ * j _
    rw [map_add (f := _), map_mul, map_pow, map_natCast]
  refine ⟨b.natDegree + 1, fun n hn => ⟨(1 : O) ⊗ₜ[ℤ_[l]] evE t ϖ g ⟨h, hh'⟩ -
    ∑ i ∈ Finset.range n, ϖ.muDiv a O g i * ϖ.iC t K (fun τ => ⟨_, hSh τ i⟩), ?_⟩⟩
  have hz := taylor_poly t ϖ g b p hp' N hN hpb hSp n (by omega)
  have e4 : ∑ i ∈ Finset.range n, ϖ.muDiv a O g i * ϖ.iC t K (fun τ => ⟨_, hS τ i⟩) =
      ∑ i ∈ Finset.range n, ϖ.muDiv a O g i * ϖ.iC t K (fun τ => ⟨_, hSp τ i⟩) +
        (l : OCr l O) ^ r * ∑ i ∈ Finset.range n, ϖ.muDiv a O g i * ϖ.iC t K (fun τ => ⟨_, hSh τ i⟩) := by
    rw [Finset.mul_sum, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun i _ => by rw [hsplit]; ring
  rw [hEsplit, e4]
  linear_combination hz

end Main

theorem evalPP : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O) (ϖ : PiSys l e), ∀ (sh : K⟦X⟧ →+* K⟦X⟧⟦X⟧), (∀ (f : K⟦X⟧) (i : ℕ), (i.factorial : K⟦X⟧) * coeff i (sh f) = (PowerSeries.derivative (R := K))^[i] f) → ∀ (φ₂ : K⟦X⟧⟦X⟧ →+* K⟦X⟧⟦X⟧), (∀ f : K⟦X⟧, φ₂ (PowerSeries.C f) = PowerSeries.C (frob K l f)) → (∀ f : K⟦X⟧, φ₂ (sh f) = sh (frob K l f)) → ∀ g : ↥(GK (ϖ.field a)), ∃ E : ↥(PPd t K e) →+* Per.Acris l, (∀ (x : (Wq l a)⟦X⟧) (hx : constP a K (inclS t K (frobS l a x)) ∈ PPd t K e), E ⟨_, hx⟩ = ainfToAcris l (WittVector.frobenius (ϖ.ev a x))) ∧ (∀ (x : (Wq l a)⟦X⟧) (hx : shP a sh (inclS t K (frobS l a x)) ∈ PPd t K e), E ⟨_, hx⟩ = ainfToAcris l (WittVector.frobenius (Per.σA (g : GQ l) (ϖ.ev a x)))) ∧ (∀ (F : ZMod a → K⟦X⟧⟦X⟧) (hF : F ∈ PPd t K e) (hF' : frob2 φ₂ F ∈ PPd t K e), E ⟨_, hF'⟩ = frobC l (E ⟨F, hF⟩)) ∧ ∀ (F : ZMod a → K⟦X⟧⟦X⟧) (hF : F ∈ PPd t K e) (hS : ∀ (τ : ZMod a) (i : ℕ), (X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (F τ)) ∈ S O K e) (r : ℕ), ∃ n₀ : ℕ, ∀ n ≥ n₀, (l : OCr l O) ^ r ∣ (1 : O) ⊗ₜ[ℤ_[l]] E ⟨F, hF⟩ - ∑ i ∈ Finset.range n, ϖ.muDiv a O g i * ϖ.iC t K (fun τ => ⟨_, hS τ i⟩) :=
  fun l _ a e _ _ O K _ _ _ _ _ _ _ _ _ t ϖ sh hsh φ₂ hφC hφsh g =>
    ⟨evE t ϖ g, fun x hx => by rw [evE_constP, PiSys.ev_frobS], fun x hx => evE_shP t ϖ g sh hsh x hx,
      fun F hF hF' => RingHom.congr_fun (evE_frob2 t ϖ g sh hsh φ₂ hφC hφsh) ⟨F, hF⟩,
      fun F hF hS r => evE_taylor t ϖ g F hF hS r⟩

end GlobalTheory.CrysEval
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineEvalRingHomFrobeniusTaylor =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerMonomialFrobeniusCongrPow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerMonomialFrobeniusCongrPow", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CstSApply\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism
open scoped Formalism.Per

namespace GlobalTheory.CrysPrism.DpGood

theorem factorial_pow_mul (q : ℕ) : ∀ j : ℕ, ∃ D : ℕ, (j * q).factorial = q.factorial ^ j * D := by
  intro j
  induction j with
  | zero => exact ⟨1, by simp⟩
  | succ j ih =>
    obtain ⟨D, hD⟩ := ih
    refine ⟨((j + 1) * q).choose q * D, ?_⟩
    have h := Nat.choose_mul_factorial_mul_factorial (show q ≤ (j + 1) * q by nlinarith)
    have h2 : (j + 1) * q - q = j * q := by rw [add_mul, one_mul, Nat.add_sub_cancel]
    rw [h2, hD] at h
    rw [← h]; ring

theorem choose_eq (l q : ℕ) (hl : 1 ≤ l) (hq : 1 ≤ q) :
    (l * q).choose q = l * (l * q - 1).choose (q - 1) := by
  obtain ⟨q', rfl⟩ : ∃ q', q = q' + 1 := ⟨q - 1, by omega⟩
  have hpos : 0 < l * (q' + 1) := by positivity
  have hn : l * (q' + 1) = (l * (q' + 1) - 1) + 1 := (Nat.succ_pred_eq_of_pos hpos).symm
  have h := Nat.add_one_mul_choose_eq (l * (q' + 1) - 1) q'
  rw [← hn] at h
  simp only [Nat.add_sub_cancel]
  exact Nat.eq_of_mul_eq_mul_right (Nat.succ_pos q')
    (show (l * (q' + 1)).choose (q' + 1) * (q' + 1) = l * (l * (q' + 1) - 1).choose q' * (q' + 1) by
      rw [← h]; ring)

theorem fact_dvd (l q M : ℕ) (hl : 1 ≤ l) (hq : 1 ≤ q) (hM : l * q ≤ M) :
    ∃ G : ℕ, M.factorial = q.factorial ^ l * l * G := by
  obtain ⟨D, hD⟩ := factorial_pow_mul q (l - 1)
  obtain ⟨R, hR⟩ := Nat.factorial_dvd_factorial hM
  have h := Nat.choose_mul_factorial_mul_factorial (show q ≤ l * q by nlinarith)
  have h2 : l * q - q = (l - 1) * q := by rw [Nat.sub_mul, one_mul]
  rw [h2, hD, choose_eq l q hl hq] at h
  refine ⟨(l * q - 1).choose (q - 1) * D * R, ?_⟩
  have hl' : q.factorial ^ l = q.factorial ^ (l - 1) * q.factorial := by
    rw [← pow_succ]; congr 1; omega
  rw [hR, ← h, hl']; ring

theorem key (K : Type) [Field K] [CharZero K] (l : ℕ) (hl : 1 ≤ l) (q M : ℕ) (hM : l * q ≤ M) :
    ∃ c' : K, ∃ k : ℕ, (q.factorial : K)⁻¹ = (q.factorial : K)⁻¹ ^ l + (l : K) * c' ∧
      (M.factorial : K) * c' = k := by
  rcases Nat.eq_zero_or_pos q with rfl | hq
  · exact ⟨0, 0, by simp, by simp⟩
  obtain ⟨G, hG⟩ := fact_dvd l q M hl hq hM
  obtain ⟨h, hh⟩ : ∃ h, q.factorial ^ (l - 1) = h + 1 :=
    ⟨_, (Nat.succ_pred_eq_of_pos (pow_pos (Nat.factorial_pos q) _)).symm⟩
  have hG0 : G ≠ 0 := by
    rintro rfl; exact Nat.factorial_ne_zero M (by simpa using hG)
  refine ⟨((G * h : ℕ) : K) / (M.factorial : K), G * h, ?_, ?_⟩
  · have hf : (q.factorial : K) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero q)
    have hl0 : (l : K) ≠ 0 := Nat.cast_ne_zero.2 (by omega)
    have hG0' : (G : K) ≠ 0 := Nat.cast_ne_zero.2 hG0
    have hl' : (q.factorial : K) ^ l = ((h : K) + 1) * q.factorial := by
      have : (q.factorial : K) ^ (l - 1) = (h : K) + 1 := by exact_mod_cast hh
      rw [← this, ← pow_succ]; congr 1; omega
    have hh0 : (h : K) + 1 ≠ 0 := by exact_mod_cast Nat.succ_ne_zero h
    rw [hG]; push_cast
    rw [inv_pow, hl']
    field_simp
    ring
  · have hMf : (M.factorial : K) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero M)
    field_simp

section Mem

variable {l : ℕ} [Fact l.Prime] {a : ℕ} [NeZero a] {O K : Type} [CommRing O] [Algebra ℤ_[l] O]
  [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] (t : Wq l a →ₐ[ℤ_[l]] O) (e : ℕ)

theorem mono_mem (N : ℕ) (c : K) (k : ℕ) (h : ((N / e).factorial : K) * c = k) :
    (fun _ => monomial N c : ZMod a → K⟦X⟧) ∈ SdSet t K e := by
  refine ⟨fun m => if m = N then (k : Wq l a) else 0, fun r => ?_, fun τ m => ?_⟩
  · rw [Filter.eventually_cofinite]
    refine (Set.finite_singleton N).subset fun m hm => ?_
    by_contra hne
    have hne' : m ≠ N := by simpa using hne
    exact hm (by simp only [if_neg hne']; exact dvd_zero _)
  · rw [coeff_monomial]
    split_ifs with hm
    · subst hm; simp [h]
    · simp [hm]

end Mem

end GlobalTheory.CrysPrism.DpGood

namespace GlobalTheory.CrysPrism


open DpGood in
theorem dpS_frob_good : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O]
    [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K]
    [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O), ∀ n : ℕ,
    (dpS a e n : ZMod a → K⟦X⟧) ∈ SdSet t K e ∧ ∃ B ∈ SdSet t K e,
      frobTot K a l (dpS a e n) = (dpS a e n : ZMod a → K⟦X⟧) ^ l + (l : ZMod a → K⟦X⟧) * B := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ t n
  haveI : CharZero K := charZero_of_injective_algebraMap (algebraMap ℚ_[l] K).injective
  have hl : 1 ≤ l := (Fact.out : l.Prime).one_lt.le
  refine ⟨mono_mem t e n _ 1 ?_, ?_⟩
  · rw [Nat.cast_one]; exact mul_inv_cancel₀ (Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _))
  have hM : l * (n / e) ≤ l * n / e := by
    rw [Nat.le_div_iff_mul_le (NeZero.pos e), mul_assoc]
    exact Nat.mul_le_mul_left l (Nat.div_mul_le_self n e)
  obtain ⟨c', k, hc, hk⟩ := key K l hl (n / e) (l * n / e) hM
  refine ⟨fun _ => monomial (l * n) c', mono_mem t e (l * n) c' k hk, ?_⟩
  funext τ
  have hfrob : frobTot K a l (dpS a e n) τ = frob K l ((dpS a e n) (τ - 1)) := rfl
  rw [hfrob, Pi.add_apply, Pi.pow_apply, Pi.mul_apply, Pi.natCast_apply]
  simp only [dpS]
  rw [frob, expand_monomial, monomial_pow, ← map_natCast (C : K →+* K⟦X⟧), ← smul_eq_C_mul,
    ← LinearMap.map_smul, ← map_add, smul_eq_mul, ← hc]

end GlobalTheory.CrysPrism
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerMonomialFrobeniusCongrPow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerSeriesGeneratorSetEqSumAddMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerSeriesGeneratorSetEqSumAddMul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CstSApply\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism
open scoped Formalism.Per

namespace GlobalTheory.CrysPrism

theorem sdSet_eq_sum_add_mul (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O]
    [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K]
    [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O) :
    ∀ F ∈ SdSet t K e, ∃ (N : ℕ) (v : ℕ → Wq l a), ∃ y ∈ SdSet t K e,
      F = ∑ n ∈ Finset.range N, cstS t K (v n) * dpS a e n + (l : ZMod a → K⟦X⟧) * y := by
  rintro F ⟨w, hw, hF⟩
  haveI : CharZero K := charZero_of_injective_algebraMap (algebraMap ℚ_[l] K).injective
  have hl0 : (l : Wq l a) ≠ 0 := by
    have h := WittVector.p_nonzero l (Fq l a)
    exact h
  have h1 := hw 1
  rw [Nat.cofinite_eq_atTop, Filter.eventually_atTop] at h1
  obtain ⟨N, hN⟩ := h1
  have h2 : ∀ n, ∃ z : Wq l a, (n < N → z = 0) ∧ (¬ n < N → w n = l * z) := by
    intro n
    by_cases h : n < N
    · exact ⟨0, fun _ => rfl, fun h' => absurd h h'⟩
    · obtain ⟨z, hz⟩ := hN n (not_lt.1 h)
      exact ⟨z, fun h' => absurd h' h, fun _ => by rw [hz, pow_one]⟩
  choose z hz0 hz using h2
  have hfac : ∀ n : ℕ, ((n / e).factorial : K) ≠ 0 := fun n => Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _)
  refine ⟨N, w, fun τ => PowerSeries.mk fun n => ((n / e).factorial : K)⁻¹ * algebraMap O K (emb t τ (z n)),
    ⟨z, fun r => ?_, fun τ n => ?_⟩, ?_⟩
  · filter_upwards [hw (r + 1)] with n hn
    by_cases h : n < N
    · rw [hz0 n h]; exact dvd_zero _
    · rw [hz n h, pow_succ'] at hn
      exact (mul_dvd_mul_iff_left hl0).1 hn
  · rw [coeff_mk, mul_inv_cancel_left₀ (hfac n)]
  · funext τ
    ext m
    apply mul_left_cancel₀ (hfac m)
    rw [hF]
    have hc : (l : K⟦X⟧) = C (l : K) := (map_natCast (C : K →+* K⟦X⟧) l).symm

    simp only [Pi.add_apply, Finset.sum_apply, Pi.mul_apply, Pi.natCast_apply, map_add (f := _), map_sum, cstS_apply, dpS,
    hc, coeff_C_mul, coeff_monomial, coeff_mk, mul_ite, mul_zero, Finset.sum_ite_eq, Finset.mem_range]
    by_cases h : m < N
    · rw [if_pos h, hz0 m h, map_zero, map_zero]
      field_simp [hfac m]
      ring
    · rw [if_neg h, hz m h, map_mul, map_mul, map_natCast, map_natCast]
      field_simp [hfac m]
      ring

end GlobalTheory.CrysPrism
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerSeriesGeneratorSetEqSumAddMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusMapsDividedPowerSeriesGeneratorSet =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusMapsDividedPowerSeriesGeneratorSet", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism
open scoped Formalism.Per

namespace GlobalTheory.CrysPrism

theorem frobTot_mem_SdSet : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O]
    [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K]
    [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O),
    ∀ F ∈ SdSet t K e, frobTot K a l F ∈ SdSet t K e := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ t F hF
  obtain ⟨w, hw, hF⟩ := hF
  have hpos : 0 < l := (Fact.out : l.Prime).pos
  refine ⟨fun n => if l ∣ n then
      ((((n / e).factorial / ((n / l) / e).factorial : ℕ) : Wq l a) * sigma l a (w (n / l))) else 0, ?_, ?_⟩
  · intro r
    have h := hw r
    rw [Filter.eventually_cofinite] at h ⊢
    refine (h.image fun m => l * m).subset ?_
    intro n hn
    simp only [Set.mem_setOf_eq] at hn
    split_ifs at hn with hd
    · refine ⟨n / l, ?_, Nat.mul_div_cancel' hd⟩
      intro hr
      apply hn
      obtain ⟨c, hc⟩ := hr
      exact Dvd.dvd.mul_left ⟨sigma l a c, by rw [hc, map_mul, map_pow, map_natCast]⟩ _
    · exact absurd (dvd_zero _) hn
  · intro τ n
    show _ = algebraMap O K (emb t τ (if l ∣ n then _ else 0))
    rw [frobTot_apply, coeff_frob]
    by_cases hd : l ∣ n
    · rw [if_pos hd, if_pos hd]
      obtain ⟨m, rfl⟩ := hd
      rw [Nat.mul_div_cancel_left m hpos]
      have hdiv : (m / e).factorial ∣ (l * m / e).factorial :=
        Nat.factorial_dvd_factorial (Nat.div_le_div_right (Nat.le_mul_of_pos_left m hpos))
      rw [map_mul, map_natCast, emb_sigma, map_mul, map_natCast, ← hF (τ - 1) m, ← mul_assoc, ← Nat.cast_mul,
        Nat.div_mul_cancel hdiv]
    · rw [if_neg hd, if_neg hd]; simp

end GlobalTheory.CrysPrism
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusMapsDividedPowerSeriesGeneratorSet =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WittTiltFrobeniusEqPowAddMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WittTiltFrobeniusEqPowAddMul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormPowLeNormFactorial\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism
open scoped Formalism.Per

namespace GlobalTheory.FrobCong

theorem sigma_eq_pow_add (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (w : Wq l a) :
    ∃ x : Wq l a, sigma l a w = w ^ l + (l : Wq l a) * x := by
  have h0 : sigma l a w - w ^ l ∈ Ideal.span {(l : Wq l a)} := by
    rw [← WittVector.ker_constantCoeff, RingHom.mem_ker, map_sub, map_pow]
    simp [WittVector.constantCoeff_apply, coeff_sigma]
  obtain ⟨x, hx⟩ := Ideal.mem_span_singleton'.1 h0
  exact ⟨x, by rw [mul_comm, hx]; ring⟩

end GlobalTheory.FrobCong
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WittTiltFrobeniusEqPowAddMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobSdCongr =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobSdCongr", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CstSApply\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerMonomialFrobeniusCongrPow\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerSeriesGeneratorSetEqSumAddMul\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerSeriesSubringEqGeneratorSet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusMapsDividedPowerSeriesGeneratorSet\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WittTiltFrobeniusEqPowAddMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism
open scoped Formalism.Per

namespace GlobalTheory.CrysPrism

theorem cstS_mem_frob : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O), ∀ w : Wq l a, cstS t K w ∈ SdSet t K e ∧ frobTot K a l (cstS t K w) = cstS t K (sigma l a w) := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ t w
  constructor
  · refine ⟨fun n => if n = 0 then w else 0, fun r => ?_, fun τ n => ?_⟩
    · refine (Set.finite_singleton 0).subset fun n hn => ?_
      by_contra h0
      exact hn (by simp [show n ≠ 0 from h0])
    · rw [cstS_apply, coeff_C]
      by_cases hn : n = 0
      · subst hn; simp
      · simp [hn]
  · funext τ
    change frob K l (cstS t K w (τ - 1)) = cstS t K (sigma l a w) τ
    rw [cstS_apply, cstS_apply, emb_sigma, ← PowerSeries.algebraMap_eq (R := K)]
    exact (frob K l).commutes _

theorem frob_sd_congr : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O), ∀ F ∈ SdSet t K e, (frobTot K a l) F ∈ SdSet t K e ∧ ∃ B ∈ SdSet t K e, (frobTot K a l) F = F ^ l + (l : ZMod a → K⟦X⟧) * B := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ t
  have hclosed : ∀ F ∈ Sd t K e, F ∈ SdSet t K e := sdSet_closed l a e O K t
  have memS : ∀ {F}, F ∈ SdSet t K e → F ∈ Sd t K e := fun h => Subring.subset_closure h
  have hl0 : l ≠ 0 := (Fact.out : l.Prime).ne_zero
  let G : (ZMod a → K⟦X⟧) → Prop := fun z => z ∈ Sd t K e ∧
    ∃ B ∈ Sd t K e, frobTot K a l z = z ^ l + (l : ZMod a → K⟦X⟧) * B
  have gadd : ∀ x y, G x → G y → G (x + y) := by
    rintro x y ⟨hx, Bx, hBx, ex⟩ ⟨hy, By, hBy, ey⟩
    obtain ⟨r, hr⟩ := exists_add_pow_prime_eq (Fact.out : l.Prime) (⟨x, hx⟩ : Sd t K e) ⟨y, hy⟩
    have hr' := congrArg Subtype.val hr
    push_cast at hr'
    refine ⟨(Sd t K e).add_mem hx hy, Bx + By - x * y * r, ?_, ?_⟩
    · exact (Sd t K e).sub_mem ((Sd t K e).add_mem hBx hBy) ((Sd t K e).mul_mem ((Sd t K e).mul_mem hx hy) r.2)
    · rw [map_add (f := _), ex, ey, hr']; ring
  have gmul : ∀ x y, G x → G y → G (x * y) := by
    rintro x y ⟨hx, Bx, hBx, ex⟩ ⟨hy, By, hBy, ey⟩
    refine ⟨(Sd t K e).mul_mem hx hy, Bx * y ^ l + x ^ l * By + (l : ZMod a → K⟦X⟧) * Bx * By, ?_, ?_⟩
    · have hlS : (l : ZMod a → K⟦X⟧) ∈ Sd t K e := natCast_mem (Sd t K e) l
      exact (Sd t K e).add_mem ((Sd t K e).add_mem ((Sd t K e).mul_mem hBx ((Sd t K e).pow_mem hy l))
        ((Sd t K e).mul_mem ((Sd t K e).pow_mem hx l) hBy)) ((Sd t K e).mul_mem ((Sd t K e).mul_mem hlS hBx) hBy)
    · rw [map_mul, ex, ey]; ring
  have gcst : ∀ w, G (cstS t K w) := by
    intro w
    obtain ⟨hm, hf⟩ := cstS_mem_frob l a e O K t w
    obtain ⟨x, hx⟩ := _root_.GlobalTheory.FrobCong.sigma_eq_pow_add l a w
    refine ⟨memS hm, cstS t K x, memS (cstS_mem_frob l a e O K t x).1, ?_⟩
    rw [hf, hx, map_add (f := _), map_pow, map_mul, map_natCast]
  have gdp : ∀ n, G (dpS a e n) := by
    intro n
    obtain ⟨hm, B, hB, eB⟩ := _root_.GlobalTheory.CrysPrism.dpS_frob_good l a e O K t n
    exact ⟨memS hm, B, memS hB, eB⟩
  have gsum : ∀ (N : ℕ) (v : ℕ → Wq l a), G (∑ n ∈ Finset.range N, cstS t K (v n) * dpS a e n) := by
    intro N v
    refine Finset.sum_induction _ G gadd ⟨(Sd t K e).zero_mem, 0, (Sd t K e).zero_mem, ?_⟩ fun n _ => gmul _ _ (gcst _) (gdp n)
    rw [map_zero, zero_pow hl0, mul_zero, add_zero]
  intro F hF
  refine ⟨_root_.GlobalTheory.CrysPrism.frobTot_mem_SdSet l a e O K t F hF, ?_⟩
  obtain ⟨N, v, y, hy, hFe⟩ := _root_.GlobalTheory.CrysPrism.sdSet_eq_sum_add_mul l a e O K t F hF
  obtain ⟨hg, Bg, hBg, eg⟩ := gsum N v
  set g := ∑ n ∈ Finset.range N, cstS t K (v n) * dpS a e n
  set L : ZMod a → K⟦X⟧ := (l : ZMod a → K⟦X⟧)
  set Q := ∑ i ∈ Finset.range l, (g + L * y) ^ i * g ^ (l - 1 - i)
  have hQ : Q ∈ Sd t K e := (Sd t K e).sum_mem fun i _ => (Sd t K e).mul_mem
    ((Sd t K e).pow_mem ((Sd t K e).add_mem hg ((Sd t K e).mul_mem (natCast_mem (Sd t K e) l) (memS hy))) i)
    ((Sd t K e).pow_mem hg _)
  have geo : (g + L * y) ^ l = g ^ l + L * (y * Q) := by
    have h := geom_sum₂_mul (g + L * y) g l
    linear_combination -h
  refine ⟨Bg + frobTot K a l y - y * Q, hclosed _ ((Sd t K e).sub_mem ((Sd t K e).add_mem hBg
    (memS (_root_.GlobalTheory.CrysPrism.frobTot_mem_SdSet l a e O K t y hy))) ((Sd t K e).mul_mem (memS hy) hQ)), ?_⟩
  rw [hFe, map_add (f := _), map_mul, map_natCast]
  linear_combination eg - geo

end GlobalTheory.CrysPrism
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobSdCongr =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusEisensteinMemPrimeMulDividedPowerSeries =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusEisensteinMemPrimeMulDividedPowerSeries", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism
open scoped Formalism.Per

namespace GlobalTheory.CrysPrism

theorem frobS_eis_mem : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O]
    [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K]
    [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O),
    ∃ B ∈ SdSet t K e, inclS t K (frobS l a (eis l a e)) = (l : ZMod a → K⟦X⟧) * B := by
  intro l hl a e _ _ O K _ _ _ _ _ _ _ _ _ t
  have hlp : l.Prime := hl.out
  have hl0 : (l : K) ≠ 0 := by
    have h : (l : K) = algebraMap ℚ_[l] K (l : ℚ_[l]) := by simp
    rw [h]
    exact (map_ne_zero _).2 (Nat.cast_ne_zero.2 hlp.ne_zero)
  have hle : l * e ≠ 0 := Nat.mul_ne_zero hlp.ne_zero (NeZero.ne e)
  have hf : frobS l a (eis l a e) = X ^ (l * e) + (l : (Wq l a)⟦X⟧) := by
    simp [eis, pow_mul]
  refine ⟨fun _ => 1 + C (l : K)⁻¹ * X ^ (l * e),
    ⟨fun n => if n = 0 then 1 else if n = l * e then (((l - 1).factorial : ℕ) : Wq l a) else 0, ?_, ?_⟩, ?_⟩
  · intro r
    rw [Filter.eventually_cofinite]
    refine (Set.finite_le_nat (l * e)).subset fun n hn => ?_
    by_contra h
    simp only [Set.mem_setOf_eq, not_le] at h
    apply hn
    simp only [show n ≠ 0 by omega, show n ≠ l * e by omega, if_false]
    exact dvd_zero _
  · intro τ n
    rw [map_add (f := _), coeff_one, coeff_C_mul, coeff_X_pow]
    by_cases h0 : n = 0
    · subst h0
      simp [hle.symm]
    · by_cases h1 : n = l * e
      · subst h1
        have hfac : (l : K)⁻¹ * (l.factorial : K) = ((l - 1).factorial : K) := by
          rw [← Nat.mul_factorial_pred hlp.ne_zero, Nat.cast_mul, ← mul_assoc, inv_mul_cancel₀ hl0, one_mul]
        simp only [h0, if_false, if_true, zero_add, mul_one, map_natCast]
        rw [Nat.mul_div_cancel _ (Nat.pos_of_ne_zero (NeZero.ne e)), mul_comm, hfac]
      · simp [h0, h1]
  · funext τ
    ext n
    rw [inclS_apply, coeff_toAc, hf, Pi.mul_apply, Pi.natCast_apply, ← map_natCast (C : K →+* K⟦X⟧),
      coeff_C_mul, map_add (coeff n) (X ^ (l * e)) (l : (Wq l a)⟦X⟧), map_add (coeff n) (1 : K⟦X⟧), coeff_one, coeff_C_mul, coeff_X_pow, coeff_X_pow,
      ← map_natCast (C : Wq l a →+* (Wq l a)⟦X⟧), coeff_C]
    by_cases h0 : n = 0
    · subst h0
      simp [hle.symm]
    · by_cases h1 : n = l * e
      · subst h1
        simp [h0, hl0]
      · simp [h0, h1]

end GlobalTheory.CrysPrism
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusEisensteinMemPrimeMulDividedPowerSeries =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PrimeNatCastNeZeroWittOfTiltFiniteField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PrimeNatCastNeZeroWittOfTiltFiniteField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.DiscreteValuationRing\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter
  GlobalTheory.CrysPrism
open scoped Formalism.Per

namespace GlobalTheory.CrysPrism.Compl

theorem smodEq_span_pow {R : Type} [CommRing R] (r x y : R) (n : ℕ) :
    x ≡ y [SMOD (Ideal.span {r} ^ n • ⊤ : Submodule R R)] ↔ ∃ z, x - y = r ^ n * z := by
  rw [SModEq.sub_mem, smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton']
  exact ⟨fun ⟨z, hz⟩ => ⟨z, by rw [← hz, mul_comm]⟩, fun ⟨z, hz⟩ => ⟨z, by rw [hz, mul_comm]⟩⟩

theorem natCast_ne_zero_K (l : ℕ) [Fact l.Prime] {K : Type} [NormedField K] [NormedAlgebra ℚ_[l] K] {n : ℕ}
    (hn : n ≠ 0) : (n : K) ≠ 0 := by
  rw [← map_natCast (algebraMap ℚ_[l] K) n]
  exact (map_ne_zero _).2 (Nat.cast_ne_zero.2 hn)

variable {l : ℕ} [hl : Fact l.Prime] {a : ℕ} [NeZero a] {O : Type} [CommRing O] [Algebra ℤ_[l] O]
  (t : Wq l a →ₐ[ℤ_[l]] O) (K : Type)
  [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (e : ℕ)

def iota (τ : ZMod a) : Wq l a →+* K := (algebraMap O K).comp (emb t τ).toRingHom

variable {K}

theorem iota_injective (τ : ZMod a) : Function.Injective (iota t K τ) := by
  have := Fintype.ofFinite (Fq l a)
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro w hw
  by_contra h0
  obtain ⟨m, b, hb, rfl⟩ := WittVector.exists_eq_pow_p_mul w h0
  have hu : IsUnit b := WittVector.isUnit_of_coeff_zero_ne_zero b hb
  rw [map_mul, map_pow, map_natCast] at hw
  exact mul_ne_zero (pow_ne_zero _ (natCast_ne_zero_K l (K := K) hl.out.ne_zero)) (hu.map (iota t K τ)).ne_zero hw

include t K in
theorem prime_natCast_ne_zero_wittOfTiltFiniteField : (l : Wq l a) ≠ 0 := fun h => by
  have h1 := congrArg (iota t K 0) h
  rw [map_natCast, map_zero] at h1
  exact natCast_ne_zero_K l (K := K) hl.out.ne_zero h1


variable (K) in
def Rep (F : ZMod a → K⟦X⟧) (w : ℕ → Wq l a) : Prop :=
  ∀ τ n, ((n / e).factorial : K) * coeff n (F τ) = iota t K τ (w n)

variable {t e}

theorem rep_unique {F : ZMod a → K⟦X⟧} {w v : ℕ → Wq l a} (hw : Rep t K e F w) (hv : Rep t K e F v) : w = v :=
  funext fun n => iota_injective t 0 (by rw [← hw 0 n, ← hv 0 n])

theorem eq_of_rep {F G : ZMod a → K⟦X⟧} {w : ℕ → Wq l a} (hF : Rep t K e F w) (hG : Rep t K e G w) : F = G := by
  funext τ
  ext n
  exact mul_left_cancel₀ (natCast_ne_zero_K l (K := K) (Nat.factorial_ne_zero _)) ((hF τ n).trans (hG τ n).symm)

theorem rep_sub {F G : ZMod a → K⟦X⟧} {w v : ℕ → Wq l a} (hF : Rep t K e F w) (hG : Rep t K e G v) :
    Rep t K e (F - G) (w - v) := fun τ n => by
  simp only [Pi.sub_apply, map_sub, mul_sub, hF τ n, hG τ n]

theorem rep_pow_mul (m : ℕ) {F : ZMod a → K⟦X⟧} {w : ℕ → Wq l a} (hF : Rep t K e F w) :
    Rep t K e ((l : ZMod a → K⟦X⟧) ^ m * F) (fun n => (l : Wq l a) ^ m * w n) := fun τ n => by
  have h1 : ((l : ZMod a → K⟦X⟧) ^ m * F) τ = C ((l : K) ^ m) * F τ := by
    simp only [Pi.mul_apply, Pi.pow_apply, Pi.natCast_apply, map_pow, map_natCast]
  rw [h1, coeff_C_mul, map_mul, map_pow, map_natCast, ← hF τ n]
  ring


variable (t e) in
def ofRep (w : ℕ → Wq l a) : ZMod a → K⟦X⟧ :=
  fun τ => PowerSeries.mk fun n => iota t K τ (w n) / ((n / e).factorial : K)

theorem rep_ofRep (w : ℕ → Wq l a) : Rep t K e (ofRep (K := K) t e w) w := fun τ n => by
  rw [ofRep, coeff_mk]
  exact mul_div_cancel₀ _ (natCast_ne_zero_K l (K := K) (Nat.factorial_ne_zero _))

variable (t e) in
theorem isHausdorff_of (hsd : ∀ F ∈ Sd t K e, F ∈ SdSet t K e) :
    IsHausdorff (Ideal.span {(l : ↥(Sd t K e))}) ↥(Sd t K e) := by
  have := Fintype.ofFinite (Fq l a)
  refine ⟨fun x hx => ?_⟩
  obtain ⟨w, -, hw⟩ := hsd x.1 x.2
  have hdiv : ∀ m k, ∃ q, w k = (l : Wq l a) ^ m * q := by
    intro m k
    obtain ⟨z, hz⟩ := (smodEq_span_pow _ _ _ m).1 (hx m)
    rw [sub_zero] at hz
    obtain ⟨v, -, hv⟩ := hsd z.1 z.2
    have h1 : x.1 = (l : ZMod a → K⟦X⟧) ^ m * z.1 := by rw [hz]; push_cast; rfl
    have h2 := rep_pow_mul m hv
    rw [← h1] at h2
    exact ⟨v k, congrFun (rep_unique hw h2) k⟩
  have hw0 : w = 0 := funext fun k => IsHausdorff.haus' (I := Ideal.span {(l : Wq l a)}) (w k) fun m => by
    obtain ⟨q, hq⟩ := hdiv m k
    exact (smodEq_span_pow _ _ _ m).2 ⟨q, by rw [sub_zero, hq]⟩
  apply Subtype.ext
  refine eq_of_rep (F := x.1) (G := 0) hw ?_
  rw [hw0]
  intro τ n
  simp

variable (t e) in
theorem isPrecomplete_of (hsd : ∀ F ∈ Sd t K e, F ∈ SdSet t K e) :
    IsPrecomplete (Ideal.span {(l : ↥(Sd t K e))}) ↥(Sd t K e) := by
  have := Fintype.ofFinite (Fq l a)
  refine ⟨fun f hf => ?_⟩
  choose w hw0 hw using fun j => hsd (f j).1 (f j).2
  have hc : ∀ {m j : ℕ}, m ≤ j → ∀ k,
      w m k ≡ w j k [SMOD (Ideal.span {(l : Wq l a)} ^ m • ⊤ : Submodule (Wq l a) (Wq l a))] := by
    intro m j hmj k
    obtain ⟨z, hz⟩ := (smodEq_span_pow _ _ _ m).1 (hf hmj)
    obtain ⟨v, -, hv⟩ := hsd z.1 z.2
    have h1 : (f m).1 - (f j).1 = (l : ZMod a → K⟦X⟧) ^ m * z.1 := by
      have h0 := congrArg Subtype.val hz
      push_cast at h0
      exact h0
    have h2 := rep_pow_mul m hv
    rw [← h1] at h2
    have h3 := congrFun (rep_unique (rep_sub (hw m) (hw j)) h2) k
    exact (smodEq_span_pow _ _ _ m).2 ⟨v k, by simpa using h3⟩
  choose W hW using fun k => IsPrecomplete.prec' (I := Ideal.span {(l : Wq l a)}) (fun j => w j k)
    (fun {m j} h => hc h k)
  have hW0 : LTo0 l W := fun r => (hw0 r r).mono fun k hk => by
    obtain ⟨q, hq⟩ := (smodEq_span_pow _ _ _ r).1 (hW k r)
    have h1 : W k = w r k - (l : Wq l a) ^ r * q := by rw [← hq]; ring
    rw [h1]
    exact dvd_sub hk (dvd_mul_right _ _)
  have hLmem : ofRep (K := K) t e W ∈ Sd t K e := Subring.subset_closure ⟨W, hW0, rep_ofRep W⟩
  refine ⟨⟨_, hLmem⟩, fun n => ?_⟩
  choose v hv using fun k => (smodEq_span_pow _ _ _ n).1 (hW k n)
  have hl0 : (l : Wq l a) ^ n ≠ 0 := pow_ne_zero _ (prime_natCast_ne_zero_wittOfTiltFiniteField t (K := K))
  have hv0 : LTo0 l v := fun r => ((hw0 n (r + n)).and (hW0 (r + n))).mono fun k hk => by
    have h1 : (l : Wq l a) ^ n * (l : Wq l a) ^ r ∣ (l : Wq l a) ^ n * v k := by
      rw [← hv k, ← pow_add, add_comm]
      exact dvd_sub hk.1 hk.2
    exact (mul_dvd_mul_iff_left hl0).1 h1
  have hymem : ofRep (K := K) t e v ∈ Sd t K e := Subring.subset_closure ⟨v, hv0, rep_ofRep v⟩
  refine (smodEq_span_pow _ _ _ n).2 ⟨⟨_, hymem⟩, Subtype.ext ?_⟩
  have h1 := rep_sub (hw n) (rep_ofRep (K := K) (t := t) (e := e) W)
  have h2 := rep_pow_mul n (rep_ofRep (K := K) (t := t) (e := e) v)
  have h3 : (fun k => (l : Wq l a) ^ n * v k) = w n - W := funext fun k => by rw [Pi.sub_apply, hv k]
  rw [h3] at h2
  have h4 := eq_of_rep h1 h2
  push_cast
  exact h4


variable (t e) in
theorem isAdicComplete_of (hsd : ∀ F ∈ Sd t K e, F ∈ SdSet t K e) :
    IsAdicComplete (Ideal.span {(l : ↥(Sd t K e))}) ↥(Sd t K e) :=
  { toIsHausdorff := isHausdorff_of t e hsd, toIsPrecomplete := isPrecomplete_of t e hsd }

end GlobalTheory.CrysPrism.Compl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PrimeNatCastNeZeroWittOfTiltFiniteField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAdicCompleteDividedPowerSeriesSubringPrime =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAdicCompleteDividedPowerSeriesSubringPrime", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerSeriesSubringEqGeneratorSet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PrimeNatCastNeZeroWittOfTiltFiniteField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism
open scoped Formalism.Per

theorem GlobalTheory.CrysPrism.isAdicComplete_Sd : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O), IsAdicComplete (Ideal.span {(l : ↥(Sd t K e))}) ↥(Sd t K e) := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ t
  exact GlobalTheory.CrysPrism.Compl.isAdicComplete_of t e (_root_.GlobalTheory.CrysPrism.sdSet_closed l a e O K t)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAdicCompleteDividedPowerSeriesSubringPrime =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAdicCompleteDividedTwoVariableSubring =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAdicCompleteDividedTwoVariableSubring", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedTwoVariableSubringSubsetGeneratorSet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.DiscreteValuationRing\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter
open scoped Formalism.Per

namespace GlobalTheory.CrysPrism.CompPP

theorem mem_span_pow_smul_top {R : Type} [CommRing R] (c x : R) (k : ℕ) :
    x ∈ (Ideal.span {c} ^ k • ⊤ : Submodule R R) ↔ c ^ k ∣ x := by
  change x ∈ Ideal.span {c} ^ k • (⊤ : Ideal R) ↔ _
  rw [Ideal.smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton]

variable {l : ℕ} [hl : Fact l.Prime] {a : ℕ} [NeZero a] {O : Type} [CommRing O] [Algebra ℤ_[l] O]
  [Module.Free ℤ_[l] O] {K : Type} [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K]

theorem natCast_l_ne_zero : (l : Wq l a) ≠ 0 := WittVector.p_nonzero l (Fq l a)


variable (K) in
theorem emb_injective (t : Wq l a →ₐ[ℤ_[l]] O) (τ : ZMod a) :
    Function.Injective fun x : Wq l a => algebraMap O K (emb t τ x) := by
  haveI : Nontrivial O :=
    ⟨⟨0, 1, fun h => one_ne_zero (by simpa using congrArg (algebraMap O K) h.symm : (1 : K) = 0)⟩⟩
  have ht : Function.Injective t := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro x hx
    by_contra h0
    obtain ⟨m, b, rfl⟩ := WittVector.exists_eq_pow_p_mul' x h0
    have hu : IsUnit (t (b : Wq l a)) := b.isUnit.map t
    rw [map_mul, map_pow, map_natCast] at hx
    have hlm : (l : O) ^ m = 0 := (hu.mul_left_eq_zero).1 hx
    have h2 : ((l : ℤ_[l]) ^ m) • (1 : O) = 0 := by
      rw [Algebra.smul_def, mul_one, map_pow, map_natCast]; exact hlm
    rcases smul_eq_zero.1 h2 with h3 | h3
    · exact pow_ne_zero m (Nat.cast_ne_zero.2 hl.out.ne_zero) h3
    · exact one_ne_zero h3
  exact IsUnitBall.inj.comp (ht.comp (sigmaNeg l a τ).injective)

variable (t : Wq l a →ₐ[ℤ_[l]] O) (e : ℕ)

def Wit (F : ZMod a → K⟦X⟧⟦X⟧) (w : ℕ × ℕ → Wq l a) : Prop :=
  ∀ τ i n, ((i.factorial * (n / e).factorial : ℕ) : K) * coeff n (coeff i (F τ)) =
      algebraMap O K (emb t τ (w (i, n)))

omit [Module.Free ℤ_[l] O] in
theorem Wit.sub {F G : ZMod a → K⟦X⟧⟦X⟧} {w v : ℕ × ℕ → Wq l a} (hF : Wit t e F w) (hG : Wit t e G v) :
    Wit t e (F - G) (w - v) := by
  intro τ i n
  simp only [Pi.sub_apply, map_sub, mul_sub, hF τ i n, hG τ i n]

omit [Module.Free ℤ_[l] O] in
theorem Wit.zero : Wit t e (0 : ZMod a → K⟦X⟧⟦X⟧) 0 := by
  intro τ i n
  simp

omit [Module.Free ℤ_[l] O] in
theorem Wit.lpow {G : ZMod a → K⟦X⟧⟦X⟧} {v : ℕ × ℕ → Wq l a} (hG : Wit t e G v) (k : ℕ) :
    Wit t e ((l : ZMod a → K⟦X⟧⟦X⟧) ^ k * G) (fun p => (l : Wq l a) ^ k * v p) := by
  intro τ i n
  have h1 : ((l : ZMod a → K⟦X⟧⟦X⟧) ^ k * G) τ = C (C ((l : K) ^ k)) * G τ := by
    simp only [Pi.mul_apply, Pi.pow_apply, Pi.natCast_apply, map_pow, map_natCast]
  rw [h1, coeff_C_mul, coeff_C_mul, map_mul, map_mul, map_pow, map_pow, map_natCast, map_natCast,
    ← hG τ i n]
  ring

theorem Wit.unique {F : ZMod a → K⟦X⟧⟦X⟧} {w v : ℕ × ℕ → Wq l a} (hw : Wit t e F w) (hv : Wit t e F v) :
    w = v :=
  funext fun p => emb_injective K t 0 ((hw 0 p.1 p.2).symm.trans (hv 0 p.1 p.2))

omit [Module.Free ℤ_[l] O] in
theorem Wit.eq [CharZero K] {F G : ZMod a → K⟦X⟧⟦X⟧} {w : ℕ × ℕ → Wq l a} (hF : Wit t e F w)
    (hG : Wit t e G w) : F = G :=
  funext fun τ => PowerSeries.ext fun i => PowerSeries.ext fun n =>
    mul_left_cancel₀ (Nat.cast_ne_zero.2 (by positivity)) ((hF τ i n).trans (hG τ i n).symm)


variable (K) in
def mkF (v : ℕ × ℕ → Wq l a) : ZMod a → K⟦X⟧⟦X⟧ := fun τ =>
  PowerSeries.mk fun i => PowerSeries.mk fun n =>
    algebraMap O K (emb t τ (v (i, n))) / ((i.factorial * (n / e).factorial : ℕ) : K)

omit [Module.Free ℤ_[l] O] in
theorem wit_mk [CharZero K] (v : ℕ × ℕ → Wq l a) : Wit t e (mkF K t e v) v := by
  intro τ i n
  simp only [mkF, coeff_mk]
  exact mul_div_cancel₀ _ (Nat.cast_ne_zero.2 (by positivity))

end GlobalTheory.CrysPrism.CompPP

namespace GlobalTheory.CrysPrism.CompPP

variable {l : ℕ} [hl : Fact l.Prime] {a : ℕ} [NeZero a] {O : Type} [CommRing O] [Algebra ℤ_[l] O]
  [Module.Free ℤ_[l] O] {K : Type} [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K]
  (t : Wq l a →ₐ[ℤ_[l]] O) (e : ℕ)


omit [Module.Free ℤ_[l] O] in
theorem tendsToZeroLAdically_of_eq_prime_pow_mul {u v : ℕ × ℕ → Wq l a} (k : ℕ) (h : ∀ p, u p = (l : Wq l a) ^ k * v p)
    (hu : LTo0 l u) : LTo0 l v := by
  intro r
  filter_upwards [hu (k + r)] with p hp
  rw [h p, pow_add] at hp
  exact (mul_dvd_mul_iff_left (pow_ne_zero k natCast_l_ne_zero)).1 hp

theorem dvd_iff [CharZero K] (hcl : ∀ F ∈ PPd t K e, F ∈ PPSet t K e) (F : ↥(PPd t K e)) (k : ℕ)
    {w : ℕ × ℕ → Wq l a} (hw : Wit t e F.1 w) :
    (l : ↥(PPd t K e)) ^ k ∣ F ↔ ∀ p, (l : Wq l a) ^ k ∣ w p := by
  constructor
  · rintro ⟨G, rfl⟩
    obtain ⟨v, -, hv⟩ := hcl G.1 G.2
    have h1 : Wit t e ((l : ↥(PPd t K e)) ^ k * G).1 (fun p => (l : Wq l a) ^ k * v p) := by
      have := Wit.lpow t e hv k
      simpa using this
    rw [Wit.unique t e hw h1]
    exact fun p => dvd_mul_right _ _
  · intro h
    choose v hv using h
    obtain ⟨w', hw0', hw'⟩ := hcl F.1 F.2
    rw [← Wit.unique t e hw hw'] at hw0'
    have hv0 : LTo0 l v := tendsToZeroLAdically_of_eq_prime_pow_mul k hv hw0'
    refine ⟨⟨mkF K t e v, Subring.subset_closure ⟨v, hv0, wit_mk t e v⟩⟩, Subtype.ext ?_⟩
    have h1 := Wit.lpow t e (wit_mk (K := K) t e v) k
    have h2 : (fun p => (l : Wq l a) ^ k * v p) = w := funext fun p => (hv p).symm
    rw [h2] at h1
    simpa using Wit.eq t e hw h1

theorem complete_of [CharZero K] (hcl : ∀ F ∈ PPd t K e, F ∈ PPSet t K e) :
    IsAdicComplete (Ideal.span {(l : ↥(PPd t K e))}) ↥(PPd t K e) := by
  have hWq : ∀ (x y : Wq l a) (n : ℕ), (x ≡ y [SMOD (Ideal.span {(l : Wq l a)} ^ n • ⊤ : Submodule (Wq l a) (Wq l a))] ↔
      (l : Wq l a) ^ n ∣ x - y) := fun x y n => by
    rw [SModEq.sub_mem, mem_span_pow_smul_top]
  have hPP : ∀ (x y : ↥(PPd t K e)) (n : ℕ), (x ≡ y [SMOD (Ideal.span {(l : ↥(PPd t K e))} ^ n • ⊤ :
      Submodule ↥(PPd t K e) ↥(PPd t K e))] ↔ (l : ↥(PPd t K e)) ^ n ∣ x - y) := fun x y n => by
    rw [SModEq.sub_mem, mem_span_pow_smul_top]
  refine { haus' := fun F hF => ?_, prec' := fun f hf => ?_ }
  · obtain ⟨w, -, hw⟩ := hcl F.1 F.2
    have h0 : w = 0 := funext fun p => IsHausdorff.haus' (I := Ideal.span {(l : Wq l a)}) (w p) fun n =>
      (hWq _ _ n).2 (by
        rw [sub_zero]
        exact (dvd_iff t e hcl F n hw).1 (by simpa using (hPP F 0 n).1 (hF n)) p)
    rw [h0] at hw
    exact Subtype.ext (Wit.eq t e hw (Wit.zero t e))
  · choose W hW0 hW using fun m => hcl (f m).1 (f m).2
    have hd : ∀ {m n : ℕ}, m ≤ n → ∀ p, (l : Wq l a) ^ m ∣ W m p - W n p := fun {m n} hmn p =>
      (dvd_iff t e hcl (f m - f n) m (Wit.sub t e (hW m) (hW n))).1 ((hPP _ _ m).1 (hf hmn)) p
    choose w hw using fun p => IsPrecomplete.prec' (I := Ideal.span {(l : Wq l a)}) (fun m => W m p)
      fun {m n} hmn => (hWq _ _ m).2 (hd hmn p)
    have hw' : ∀ p n, (l : Wq l a) ^ n ∣ W n p - w p := fun p n => (hWq _ _ n).1 (hw p n)
    have hw0 : LTo0 l w := by
      intro r
      filter_upwards [hW0 r r] with p hp
      simpa using dvd_sub hp (hw' p r)
    refine ⟨⟨mkF K t e w, Subring.subset_closure ⟨w, hw0, wit_mk t e w⟩⟩, fun n => (hPP _ _ n).2 ?_⟩
    exact (dvd_iff t e hcl _ n (Wit.sub t e (hW n) (wit_mk t e w))).2 fun p => hw' p n

end GlobalTheory.CrysPrism.CompPP

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Filter GlobalTheory.CrysPrism

theorem GlobalTheory.CrysPrism.PPd_isAdicComplete : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] (t : Wq l a →ₐ[ℤ_[l]] O), IsAdicComplete (Ideal.span {(l : ↥(PPd t K e))}) ↥(PPd t K e) := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ t
  haveI : CharZero K := charZero_of_injective_algebraMap (algebraMap ℚ_[l] K).injective
  exact GlobalTheory.CrysPrism.CompPP.complete_of t e (_root_.GlobalTheory.CrysPrism.PPd_subset_PPSet l a e O K t)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAdicCompleteDividedTwoVariableSubring =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCrystallinePrisms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCrystallinePrisms", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsSumMonomialAdd\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InstTameDescentExponentDataPadicThree\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NatCastNeZeroPs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineEvalRingHomFrobeniusTaylor\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedPowerSeriesSubringEqGeneratorSet\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobSdCongr\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusEisensteinMemPrimeMulDividedPowerSeries\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAdicCompleteDividedPowerSeriesSubringPrime\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAdicCompleteDividedTwoVariableSubring\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DividedTwoVariableSubringSubsetGeneratorSet\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FactorialMulCoeffMemDividedPowerSeriesSubring\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobMemPPSetCongr\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TaylorShiftFrobeniusMemDividedTwoVariableGenerat\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedWittPowerSeriesMemDividedPowerSeriesGe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PowerSeries.NoZeroDivisors\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

namespace GlobalTheory.CrysPrism



theorem exists_crys_prisms : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] [TameDescentExponentData K l e a] (t : Wq l a →ₐ[ℤ_[l]] O) (ϖ : PiSys l e), l ≠ 2 → ∀ (sh : K⟦X⟧ →+* K⟦X⟧⟦X⟧) (φ₂ : K⟦X⟧⟦X⟧ →+* K⟦X⟧⟦X⟧), (∀ (f : K⟦X⟧) (i : ℕ), (i.factorial : K⟦X⟧) * coeff i (sh f) = (PowerSeries.derivative (R := K))^[i] f) → (∀ f : K⟦X⟧, φ₂ (PowerSeries.C f) = PowerSeries.C (frob K l f)) → (∀ f : K⟦X⟧, φ₂ (sh f) = sh (frob K l f)) → ∃ (PP S₀ : Obj l ↥(OL (ϖ.field a))) (p₀ p₁ : GlobalTheory.Prism.Hom (ϖ.prism a) PP) (δ : GlobalTheory.Prism.Hom PP S₀) (j : ZMod a → PP.A →+* K⟦X⟧⟦X⟧) (j₀ : ZMod a → S₀.A →+* K⟦X⟧), PP.I = Ideal.span {(l : PP.A)} ∧ δ.comp p₀ = δ.comp p₁ ∧ (∀ τ y, j₀ τ (δ.f y) = PowerSeries.constantCoeff (j τ y)) ∧ (∀ τ (x : (Wq l a)⟦X⟧), j τ (p₀.f x) = PowerSeries.C (toAc t K (frobS l a x) τ : K⟦X⟧) ∧ j τ (p₁.f x) = sh (toAc t K (frobS l a x) τ : K⟦X⟧)) ∧ (∀ τ y, j τ (PP.D.φ y) = φ₂ (j (τ - 1) y)) ∧ ∃ hS : ∀ τ y (i : ℕ), (X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (j τ y)) ∈ S O K e, (∀ τ y (i : ℕ), (i.factorial : K⟦X⟧) * coeff i (j τ y) ∈ S O K e) ∧ ∀ (Cr : Obj l ↥(OL (ϖ.field a))) (eC : Cr.A ≃+* Per.Acris l) (h : GlobalTheory.Prism.Hom (ainfObj (ϖ.field a)) Cr), Cr.I = Ideal.span {(l : Cr.A)} → (∀ x, eC (Cr.D.φ x) = frobC l (eC x)) → (∀ x : Ainf l, eC (h.f x) = ainfToAcris l (WittVector.frobenius x)) → ∀ g : ↥(GK (ϖ.field a)), ∃ ev : GlobalTheory.Prism.Hom PP Cr, ev.comp p₀ = h.comp (ϖ.toAinf a) ∧ ev.comp p₁ = (h.comp (ainfHom (ϖ.field a) g)).comp (ϖ.toAinf a) ∧ ∀ (y : PP.A) (r : ℕ), ∃ n₀ : ℕ, ∀ n ≥ n₀, (l : OCr l O) ^ r ∣ (1 : O) ⊗ₜ[ℤ_[l]] eC (ev.f y) - ∑ i ∈ Finset.range n, ϖ.muDiv a O g i * ϖ.iC t K fun τ => ⟨_, hS τ y i⟩ := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ _ t ϖ _ sh φ₂ hsh hφC hφsh
  haveI : CharZero K := charZero_of_injective_algebraMap (algebraMap ℚ_[l] K).injective
  have hlp : l.Prime := Fact.out
  have hlK : (l : K) ≠ 0 := Nat.cast_ne_zero.2 hlp.ne_zero
  have hl1 : (l : K⟦X⟧) ≠ 0 := natCast_ne_zero_ps hlK
  have hl2 : (l : K⟦X⟧⟦X⟧) ≠ 0 := natCast_ne_zero_ps hl1
  have tf1 : ∀ x : ZMod a → K⟦X⟧, (l : ZMod a → K⟦X⟧) * x = 0 → x = 0 := tf_pi hl1
  have tf2 : ∀ x : ZMod a → K⟦X⟧⟦X⟧, (l : ZMod a → K⟦X⟧⟦X⟧) * x = 0 → x = 0 := tf_pi hl2
  have tfS : ∀ x : ↥(Sd t K e), (l : ↥(Sd t K e)) * x = 0 → x = 0 := tf_sub _ tf1
  have tfP : ∀ x : ↥(PPd t K e), (l : ↥(PPd t K e)) * x = 0 → x = 0 := tf_sub _ tf2
  haveI hcS := _root_.GlobalTheory.CrysPrism.isAdicComplete_Sd l a e O K t
  haveI hcP := _root_.GlobalTheory.CrysPrism.PPd_isAdicComplete l a e O K t
  have hSd : ∀ F ∈ Sd t K e, F ∈ SdSet t K e := _root_.GlobalTheory.CrysPrism.sdSet_closed l a e O K t
  have hPd : ∀ F ∈ PPd t K e, F ∈ PPSet t K e := _root_.GlobalTheory.CrysPrism.PPd_subset_PPSet l a e O K t

  let φS : ↥(Sd t K e) →+* ↥(Sd t K e) := (frobTot K a l).toRingHom.restrict (Sd t K e) (Sd t K e)
    fun F hF => Subring.subset_closure (_root_.GlobalTheory.CrysPrism.frob_sd_congr l a e O K t F (hSd F hF)).1
  have hφS : ∀ F : ↥(Sd t K e), ∃ B, φS F = F ^ l + (l : ↥(Sd t K e)) * B := fun F => by
    obtain ⟨B, hB, h⟩ := (_root_.GlobalTheory.CrysPrism.frob_sd_congr l a e O K t F (hSd F F.2)).2
    exact ⟨⟨B, Subring.subset_closure hB⟩, Subtype.ext h⟩
  let DS : Delta l ↥(Sd t K e) := Delta.ofLift l φS tfS hφS
  let φP : ↥(PPd t K e) →+* ↥(PPd t K e) := (frob2 φ₂).restrict (PPd t K e) (PPd t K e)
    fun F hF => Subring.subset_closure (_root_.GlobalTheory.CrysPrism.FrobPP.frob_mem_PPSet_congr l a e O K t sh hsh φ₂ hφC hφsh F (hPd F hF)).1
  have hφP : ∀ F : ↥(PPd t K e), ∃ B, φP F = F ^ l + (l : ↥(PPd t K e)) * B := fun F => by
    obtain ⟨B, hB, h⟩ := (_root_.GlobalTheory.CrysPrism.FrobPP.frob_mem_PPSet_congr l a e O K t sh hsh φ₂ hφC hφsh F (hPd F F.2)).2
    exact ⟨⟨B, Subring.subset_closure hB⟩, Subtype.ext h⟩
  let DP : Delta l ↥(PPd t K e) := Delta.ofLift l φP tfP hφP

  let i0 : (Wq l a)⟦X⟧ →+* ↥(Sd t K e) := ((inclS t K).comp (frobS l a)).codRestrict (Sd t K e)
    fun x => Subring.subset_closure (_root_.GlobalTheory.CrysPrism.inclS_mem_SdSet l a e O K t _)
  let iP0 : (Wq l a)⟦X⟧ →+* ↥(PPd t K e) := ((constP a K).comp ((inclS t K).comp (frobS l a))).codRestrict
    (PPd t K e) fun x => Subring.subset_closure (constP_mem t e (_root_.GlobalTheory.CrysPrism.inclS_mem_SdSet l a e O K t _))
  let iP1 : (Wq l a)⟦X⟧ →+* ↥(PPd t K e) := ((shP a sh).comp ((inclS t K).comp (frobS l a))).codRestrict
    (PPd t K e) fun x => Subring.subset_closure (_root_.GlobalTheory.CrysPrism.ShMem.shP_frob_mem l a e O K t sh hsh x).1
  let dg : ↥(PPd t K e) →+* ↥(Sd t K e) := (diag a K).restrict (PPd t K e) (Sd t K e)
    fun F hF => Subring.subset_closure (diag_mem t e (hPd F hF))
  have hdg0 : ∀ x, dg (iP0 x) = i0 x := fun x => Subtype.ext (funext fun τ => constantCoeff_C _)
  obtain ⟨BE, hBE, hE⟩ := _root_.GlobalTheory.CrysPrism.frobS_eis_mem l a e O K t
  have hE0 : i0 (eis l a e) = (l : ↥(Sd t K e)) * ⟨BE, Subring.subset_closure hBE⟩ := Subtype.ext hE
  have hEP0 : iP0 (eis l a e) = (l : ↥(PPd t K e)) * ⟨constP a K BE, Subring.subset_closure (constP_mem t e hBE)⟩ :=
    Subtype.ext (by
      change constP a K (inclS t K (frobS l a (eis l a e))) = _
      rw [hE, map_mul, map_natCast]; rfl)
  have hdiff : ∀ x, iP1 x - iP0 x ∈ Ideal.span {(l : ↥(PPd t K e))} := fun x => by
    obtain ⟨B, hB, h⟩ := (_root_.GlobalTheory.CrysPrism.ShMem.shP_frob_mem l a e O K t sh hsh x).2
    refine Ideal.mem_span_singleton'.2 ⟨⟨B, Subring.subset_closure hB⟩, Subtype.ext ?_⟩
    change B * (l : ZMod a → K⟦X⟧⟦X⟧) = _ - _
    rw [mul_comm]; exact h.symm
  have hmemS : ∀ x ∈ Ideal.span {eis l a e}, i0 x ∈ Ideal.span {(l : ↥(Sd t K e))} := fun x hx => by
    obtain ⟨y, rfl⟩ := Ideal.mem_span_singleton'.1 hx
    rw [map_mul, hE0]
    exact Ideal.mul_mem_left _ _ (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _))
  have hmemP0 : ∀ x ∈ Ideal.span {eis l a e}, iP0 x ∈ Ideal.span {(l : ↥(PPd t K e))} := fun x hx => by
    obtain ⟨y, rfl⟩ := Ideal.mem_span_singleton'.1 hx
    rw [map_mul, hEP0]
    exact Ideal.mul_mem_left _ _ (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _))
  have hmemP1 : ∀ x ∈ Ideal.span {eis l a e}, iP1 x ∈ Ideal.span {(l : ↥(PPd t K e))} := fun x hx => by
    have h := Ideal.add_mem _ (hdiff x) (hmemP0 x hx)
    rwa [sub_add_cancel] at h

  let str0 : ↥(OL (ϖ.field a)) →+* ↥(Sd t K e) ⧸ Ideal.span {(l : ↥(Sd t K e))} :=
    (Ideal.Quotient.lift (Ideal.span {eis l a e}) ((Ideal.Quotient.mk _).comp i0)
      fun x hx => Ideal.Quotient.eq_zero_iff_mem.2 (hmemS x hx)).comp (ϖ.strMap a)
  let strP : ↥(OL (ϖ.field a)) →+* ↥(PPd t K e) ⧸ Ideal.span {(l : ↥(PPd t K e))} :=
    (Ideal.Quotient.lift (Ideal.span {eis l a e}) ((Ideal.Quotient.mk _).comp iP0)
      fun x hx => Ideal.Quotient.eq_zero_iff_mem.2 (hmemP0 x hx)).comp (ϖ.strMap a)
  let S₀ : Obj l ↥(OL (ϖ.field a)) := Obj.ofDistinguished hlp.pos DS (l : ↥(Sd t K e)) (nzd_of_tf tfS)
    (isUnit_delta_l DS tfS) (by rw [sup_idem]; exact hcS) (bdd_self l) str0
  let PP : Obj l ↥(OL (ϖ.field a)) := Obj.ofDistinguished hlp.pos DP (l : ↥(PPd t K e)) (nzd_of_tf tfP)
    (isUnit_delta_l DP tfP) (by rw [sup_idem]; exact hcP) (bdd_self l) strP

  have hlift : ∀ r : ↥(OL (ϖ.field a)), ∃ x : (Wq l a)⟦X⟧, Ideal.Quotient.mk (Ideal.span {eis l a e}) x = ϖ.strMap a r :=
    fun r => Ideal.Quotient.mk_surjective _
  have hstrP : ∀ r x, Ideal.Quotient.mk (Ideal.span {eis l a e}) x = ϖ.strMap a r → strP r = Ideal.Quotient.mk _ (iP0 x) :=
    fun r x h => by simp only [strP, RingHom.comp_apply, ← h, Ideal.Quotient.lift_mk]
  have hstr0 : ∀ r x, Ideal.Quotient.mk (Ideal.span {eis l a e}) x = ϖ.strMap a r → str0 r = Ideal.Quotient.mk _ (i0 x) :=
    fun r x h => by simp only [str0, RingHom.comp_apply, ← h, Ideal.Quotient.lift_mk]

  let p₀ : GlobalTheory.Prism.Hom (ϖ.prism a) PP :=
    { f := iP0
      f_δ := (deltaS l a).map_δ_of_map_φ DP tfP iP0 fun x => Subtype.ext (funext fun τ => by
        change C (toAc t K (frobS l a (frobS l a x)) τ : K⟦X⟧) = φ₂ (C (toAc t K (frobS l a x) (τ - 1) : K⟦X⟧))
        rw [hφC, frob_toAc])
      f_I := hmemP0
      f_str := fun r x h => (hstrP r x h).symm }
  let p₁ : GlobalTheory.Prism.Hom (ϖ.prism a) PP :=
    { f := iP1
      f_δ := (deltaS l a).map_δ_of_map_φ DP tfP iP1 fun x => Subtype.ext (funext fun τ => by
        change sh (toAc t K (frobS l a (frobS l a x)) τ : K⟦X⟧) = φ₂ (sh (toAc t K (frobS l a x) (τ - 1) : K⟦X⟧))
        rw [hφsh, frob_toAc])
      f_I := hmemP1
      f_str := fun r x h => by
        change Ideal.Quotient.mk (Ideal.span {(l : ↥(PPd t K e))}) (iP1 x) = strP r
        rw [hstrP r x h, Ideal.Quotient.eq]
        exact hdiff x }
  let δ : GlobalTheory.Prism.Hom PP S₀ :=
    { f := dg
      f_δ := DP.map_δ_of_map_φ DS tfS dg fun y => Subtype.ext (funext fun τ => by
        change constantCoeff (φ₂ (y.1 (τ - 1))) = frob K l (constantCoeff (y.1 (τ - 1)))
        exact constantCoeff_φ₂ sh hsh l φ₂ hφC hφsh _)
      f_I := fun y hy => by
        obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 hy
        exact (show ∀ c' : ↥(PPd t K e), dg (c' * (l : ↥(PPd t K e))) ∈ Ideal.span {(l : ↥(Sd t K e))} from
          fun c' => by rw [map_mul, map_natCast]; exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)) c
      f_str := fun r y h => by
        obtain ⟨x, hx⟩ := hlift r
        change Ideal.Quotient.mk (Ideal.span {(l : ↥(PPd t K e))}) y = strP r at h
        rw [hstrP r x hx] at h
        change Ideal.Quotient.mk (Ideal.span {(l : ↥(Sd t K e))}) (dg y) = str0 r
        rw [hstr0 r x hx, ← hdg0]
        exact (show ∀ y' : ↥(PPd t K e), Ideal.Quotient.mk (Ideal.span {(l : ↥(PPd t K e))}) y' =
            Ideal.Quotient.mk _ (iP0 x) → Ideal.Quotient.mk (Ideal.span {(l : ↥(Sd t K e))}) (dg y') =
            Ideal.Quotient.mk _ (dg (iP0 x)) from fun y' h' => by
          rw [Ideal.Quotient.eq] at h' ⊢
          rw [← map_sub]
          obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 h'
          rw [← hc, map_mul, map_natCast]
          exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)) y h }
  let j : ZMod a → ↥(PPd t K e) →+* K⟦X⟧⟦X⟧ := fun τ =>
    (Pi.evalRingHom (fun _ : ZMod a => K⟦X⟧⟦X⟧) τ).comp (PPd t K e).subtype
  let j₀ : ZMod a → ↥(Sd t K e) →+* K⟦X⟧ := fun τ =>
    (Pi.evalRingHom (fun _ : ZMod a => K⟦X⟧) τ).comp (Sd t K e).subtype
  have hS1 : ∀ τ (y : ↥(PPd t K e)) (i : ℕ), (i.factorial : K⟦X⟧) * coeff i (j τ y) ∈ S O K e :=
    fun τ y i => _root_.GlobalTheory.CrysPrism.factorial_mul_coeff_mem_S l a e O K t y.1 (hPd _ y.2) τ i
  have hS : ∀ τ (y : ↥(PPd t K e)) (i : ℕ), (X : K⟦X⟧) ^ i * ((i.factorial : K⟦X⟧) * coeff i (j τ y)) ∈ S O K e :=
    fun τ y i => Subalgebra.mul_mem _ (Subalgebra.pow_mem _ HasU.X_mem i) (hS1 τ y i)
  refine ⟨PP, S₀, p₀, p₁, δ, j, j₀, rfl, ?_, fun τ y => rfl, fun τ x => ⟨rfl, rfl⟩, fun τ y => rfl, hS, hS1, ?_⟩
  · exact Hom.ext' (RingHom.ext fun x => Subtype.ext (funext fun τ => by
      change constantCoeff (C (toAc t K (frobS l a x) τ : K⟦X⟧)) = constantCoeff (sh (toAc t K (frobS l a x) τ : K⟦X⟧))
      rw [constantCoeff_C, constantCoeff_sh sh hsh]))
  · intro Cr eC h hCI hCφ hh g
    obtain ⟨E, hEa, hEb, hEc, hEd⟩ := _root_.GlobalTheory.CrysEval.evalPP l a e O K t ϖ sh hsh φ₂ hφC hφsh g
    have tfC : ∀ x : Cr.A, (l : Cr.A) * x = 0 → x = 0 := fun x hx => eC.injective (by
      have h1 := congrArg eC hx
      rw [map_mul, map_natCast, map_zero] at h1
      rw [map_zero]; exact acris_nat_cancel hlp.ne_zero h1)
    have hev0 : ∀ x, eC.symm (E (iP0 x)) = h.f ((ϖ.toAinf a).f x) := fun x => eC.injective (by
      rw [RingEquiv.apply_symm_apply]; exact (hEa x _).trans (hh _).symm)
    let ev : GlobalTheory.Prism.Hom PP Cr :=
      { f := eC.symm.toRingHom.comp E
        f_δ := DP.map_δ_of_map_φ Cr.D tfC _ fun y => eC.injective (by
          change eC (eC.symm (E (φP y))) = eC (Cr.D.φ (eC.symm (E y)))
          rw [hCφ, RingEquiv.apply_symm_apply, RingEquiv.apply_symm_apply]
          exact hEc y.1 y.2 _)
        f_I := fun y hy => by
          rw [hCI]
          obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 hy
          exact (show ∀ c' : ↥(PPd t K e), eC.symm (E (c' * (l : ↥(PPd t K e)))) ∈ Ideal.span {(l : Cr.A)} from
            fun c' => by
              rw [map_mul, map_mul, map_natCast, map_natCast]
              exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)) c
        f_str := fun r y hy => by
          obtain ⟨x, hx⟩ := hlift r
          change Ideal.Quotient.mk (Ideal.span {(l : ↥(PPd t K e))}) y = strP r at hy
          rw [hstrP r x hx] at hy
          have h2 := (h.comp (ϖ.toAinf a)).f_str r x hx
          change Ideal.Quotient.mk Cr.I (h.f ((ϖ.toAinf a).f x)) = Cr.str r at h2
          rw [← h2, ← hev0]
          exact (show ∀ y' : ↥(PPd t K e), Ideal.Quotient.mk (Ideal.span {(l : ↥(PPd t K e))}) y' =
              Ideal.Quotient.mk _ (iP0 x) → Ideal.Quotient.mk Cr.I (eC.symm (E y')) =
              Ideal.Quotient.mk Cr.I (eC.symm (E (iP0 x))) from fun y' h' => by
            rw [Ideal.Quotient.eq] at h' ⊢
            rw [← map_sub, ← map_sub, hCI]
            obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 h'
            rw [← hc, map_mul, map_mul, map_natCast, map_natCast]
            exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)) y hy }
    refine ⟨ev, Hom.ext' (RingHom.ext fun x => hev0 x), Hom.ext' (RingHom.ext fun x => eC.injective ?_), fun y r => ?_⟩
    · change eC (eC.symm (E (iP1 x))) = eC (h.f ((ainfHom (ϖ.field a) g).f ((ϖ.toAinf a).f x)))
      rw [RingEquiv.apply_symm_apply]
      exact (hEb x _).trans (hh _).symm
    · change ∃ n₀ : ℕ, ∀ n ≥ n₀, (l : OCr l O) ^ r ∣ (1 : O) ⊗ₜ[ℤ_[l]] eC (eC.symm (E y)) - _
      rw [RingEquiv.apply_symm_apply]
      exact hEd y.1 y.2 (hS · y) r

end GlobalTheory.CrysPrism
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCrystallinePrisms =====
