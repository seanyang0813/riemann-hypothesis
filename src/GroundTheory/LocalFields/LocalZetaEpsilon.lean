module

public import GroundTheory.LocalFields.LocalZetaIntegral
public import GroundTheory.LocalFields.PadicLogHom
import GroundTheory.LocalFields.SeparableClosureValuation

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.LocalFields.LocalZetaTate, GroundTheory.LocalFields.LocalZetaEpsilon

-- ===== clump member: GroundTheory.LocalFields.LocalZetaTate =====
-- clump-header: {"m": "GroundTheory.LocalFields.LocalZetaTate", "h": "module\n\npublic import GroundTheory.LocalFields.LocalZetaIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GroundTheory.LocalField

open ValuativeRel MeasureTheory Measure Topology Filter
open scoped WithZero NNReal ENNReal Pointwise

variable {K : Type*} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  [MeasurableSpace K] [BorelSpace K]

section Symmetric

variable (μ : Measure K) [μ.IsAddHaarMeasure] {ψ : AddChar K Circle} (hψ : Continuous ψ)
include hψ

theorem integral_mul_localFourier_comm {f g : K → ℂ} (hf : f ∈ schwartzBruhat K)
    (hg : g ∈ schwartzBruhat K) (y : K) :
    ∫ x, f x * localFourier μ ψ g (x * y) ∂μ = ∫ x, g x * localFourier μ ψ f (x * y) ∂μ := by
  have hψc : Continuous fun x => (ψ x : ℂ) := continuous_subtype_val.comp hψ
  have hfi := integrable_of_mem_schwartzBruhat μ hf
  have hgi := integrable_of_mem_schwartzBruhat μ hg
  let G : K → K → ℂ := fun x z => f x * (g z * (ψ (z * (x * y)) : ℂ))
  have hG : Integrable (Function.uncurry G) (μ.prod μ) := by
    have hdom : Integrable (fun p : K × K => ‖f p.1‖ * ‖g p.2‖) (μ.prod μ) :=
      hfi.norm.mul_prod hgi.norm
    refine hdom.mono' (Continuous.aestronglyMeasurable ?_) (Eventually.of_forall fun p => ?_)
    · exact (hf.1.continuous.comp continuous_fst).mul ((hg.1.continuous.comp continuous_snd).mul
        (hψc.comp (continuous_snd.mul (continuous_fst.mul continuous_const))))
    · simp [G, Function.uncurry, Circle.norm_coe]
  have e1 : ∫ x, f x * localFourier μ ψ g (x * y) ∂μ = ∫ x, ∫ z, G x z ∂μ ∂μ := by
    refine integral_congr_ae (Eventually.of_forall fun x => ?_)
    simp only [localFourier, G]
    rw [integral_const_mul]
  have e2 : ∫ x, g x * localFourier μ ψ f (x * y) ∂μ = ∫ z, ∫ x, G x z ∂μ ∂μ := by
    refine integral_congr_ae (Eventually.of_forall fun z => ?_)
    simp only [localFourier, G]
    rw [← integral_const_mul]
    refine integral_congr_ae (Eventually.of_forall fun x => ?_)
    simp only
    rw [show x * (z * y) = z * (x * y) by ring]
    ring
  rw [e1, e2, integral_integral_swap hG]

end Symmetric

section Multiplicative

theorem haarIntegers_singleton_zero : haarIntegers K {0} = 0 := by
  have hq : (1 : ℝ≥0) < (residueCard K : ℝ≥0) := one_lt_residueCard_nnreal
  have ht : Tendsto (fun n : ℕ => (((residueCard K : ℝ≥0) ^ (-(n : ℤ)) : ℝ≥0) : ℝ≥0∞)) atTop
      (𝓝 0) := by
    rw [← ENNReal.coe_zero, ENNReal.tendsto_coe]
    have e : (fun n : ℕ => (residueCard K : ℝ≥0) ^ (-(n : ℤ))) =
        fun n : ℕ => ((residueCard K : ℝ≥0)⁻¹) ^ n := by
      funext n
      rw [zpow_neg, zpow_natCast, inv_pow]
    rw [e]
    exact NNReal.tendsto_pow_atTop_nhds_zero_of_lt_one (inv_lt_one_of_one_lt₀ hq)
  refine le_antisymm (ge_of_tendsto' ht fun n => ?_) (by simp)
  rw [← haarIntegers_valBall]
  exact measure_mono (Set.singleton_subset_iff.mpr (zero_mem _))

theorem integral_multHaar_mul_modulus (h : K → ℂ) :
    ∫ u, h u * ((modulus (u : K) : ℝ) : ℂ) ∂multHaar K =
      (multHaarConst K).toReal * ∫ x, h x ∂haarIntegers K := by
  rw [integral_multHaar (fun x => h x * ((modulus x : ℝ) : ℂ)), Complex.real_smul]
  congr 1
  have hae : ∀ᵐ x ∂haarIntegers K, x ∈ ({0}ᶜ : Set K) := by
    rw [ae_iff]
    simpa using haarIntegers_singleton_zero (K := K)
  conv_rhs => rw [← Measure.restrict_eq_self_of_ae_mem hae]
  refine setIntegral_congr_fun (measurableSet_singleton 0).compl fun x hx => ?_
  have hm : ((modulus x : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (modulus_pos hx).ne'
  rw [Complex.real_smul, Complex.ofReal_inv, mul_comm, mul_assoc, mul_inv_cancel₀ hm, mul_one]

variable (μ : Measure K) [μ.IsAddHaarMeasure] {ψ : AddChar K Circle} (hψ : Continuous ψ)
include hψ

theorem integral_multHaar_mul_localFourier_comm {f g : K → ℂ} (hf : f ∈ schwartzBruhat K)
    (hg : g ∈ schwartzBruhat K) (y : K) :
    ∫ u, f u * localFourier μ ψ g ((u : K) * y) * ((modulus (u : K) : ℝ) : ℂ) ∂multHaar K =
      ∫ u, g u * localFourier μ ψ f ((u : K) * y) * ((modulus (u : K) : ℝ) : ℂ) ∂multHaar K := by
  rw [integral_multHaar_mul_modulus (fun x => f x * localFourier μ ψ g (x * y)),
    integral_multHaar_mul_modulus (fun x => g x * localFourier μ ψ f (x * y))]
  congr 1
  have hμ := eq_smul_haarIntegers μ
  have key := integral_mul_localFourier_comm μ hψ hf hg y
  have hc : (μ (𝒪[K] : Set K)).toReal ≠ 0 := by
    refine ENNReal.toReal_ne_zero.mpr ⟨?_, ?_⟩
    · rw [← coe_valBall_zero]
      exact ((isOpen_valBall 0).measure_pos μ ⟨0, zero_mem _⟩).ne'
    · rw [← coe_valBall_zero]
      exact (isCompact_valBall 0).measure_lt_top.ne
  have hJ : ∀ F : K → ℂ, ∫ x, F x ∂μ = ((μ (𝒪[K] : Set K)).toReal : ℂ) * ∫ x, F x ∂haarIntegers K :=
    fun F => by
      conv_lhs => rw [hμ]
      rw [integral_smul_measure, Complex.real_smul]
  rw [hJ, hJ] at key
  exact mul_left_cancel₀ (Complex.ofReal_ne_zero.mpr hc) key

end Multiplicative

section Tate

variable (μ : Measure K) [μ.IsAddHaarMeasure] {ψ : AddChar K Circle} (hψ : Continuous ψ)
  (hψ1 : ψ ≠ 1) {χ : Kˣ →* ℂˣ} (hχ : Continuous χ)
include hψ hψ1 hχ

theorem localZeta_mul_localZeta_fourier_eq {f g : K → ℂ} (hf : f ∈ schwartzBruhat K)
    (hg : g ∈ schwartzBruhat K) {s : ℂ} (hs1 : -quasiCharExponent χ < s.re)
    (hs2 : s.re < 1 - quasiCharExponent χ) :
    localZeta f χ s * localZeta (localFourier μ ψ g) χ⁻¹ (1 - s) =
      ∫ y, ((χ y : ℂˣ) : ℂ)⁻¹ * ((modulus (y : K) : ℝ) : ℂ) ^ (1 - s) *
        ∫ x, f x * localFourier μ ψ g ((x : K) * (y : K)) * ((modulus (x : K) : ℝ) : ℂ)
          ∂multHaar K ∂multHaar K := by
  set F₁ : Kˣ → ℂ := fun u => f u * ((χ u : ℂˣ) : ℂ) * ((modulus (u : K) : ℝ) : ℂ) ^ s
  set G₁ : Kˣ → ℂ := fun u => localFourier μ ψ g u * (((χ⁻¹) u : ℂˣ) : ℂ) *
    ((modulus (u : K) : ℝ) : ℂ) ^ (1 - s)
  have hF₁ : Integrable F₁ (multHaar K) := integrable_localZeta hf hχ hs1
  have hG₁ : Integrable G₁ (multHaar K) :=
    integrable_localZeta (localFourier_mem_schwartzBruhat μ hψ hψ1 hg) (continuous_quasiChar_inv hχ)
      (by rw [quasiCharExponent_inv, Complex.sub_re, Complex.one_re]; linarith)
  have hP : Integrable (fun p : Kˣ × Kˣ => F₁ p.1 * G₁ p.2) ((multHaar K).prod (multHaar K)) :=
    hF₁.mul_prod hG₁
  have hH : Integrable (Function.uncurry fun x y : Kˣ => F₁ x * G₁ (x * y))
      ((multHaar K).prod (multHaar K)) :=
    (measurePreserving_prod_mul (multHaar K) (multHaar K)).integrable_comp_of_integrable hP
  have hpt : ∀ x y : Kˣ, F₁ x * G₁ (x * y) =
      ((χ y : ℂˣ) : ℂ)⁻¹ * ((modulus (y : K) : ℝ) : ℂ) ^ (1 - s) *
        (f x * localFourier μ ψ g ((x : K) * (y : K)) * ((modulus (x : K) : ℝ) : ℂ)) := by
    intro x y
    have hx0 : ((modulus (x : K) : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (modulus_pos x.ne_zero).ne'
    have e1 : (((χ⁻¹) (x * y) : ℂˣ) : ℂ) = ((χ x : ℂˣ) : ℂ)⁻¹ * ((χ y : ℂˣ) : ℂ)⁻¹ := by
      rw [MonoidHom.inv_apply, map_mul, mul_inv, Units.val_mul, Units.val_inv_eq_inv_val,
        Units.val_inv_eq_inv_val]
    have e2 : ((modulus ((x * y : Kˣ) : K) : ℝ) : ℂ) ^ (1 - s) =
        ((modulus (x : K) : ℝ) : ℂ) ^ (1 - s) * ((modulus (y : K) : ℝ) : ℂ) ^ (1 - s) := by
      rw [Units.val_mul, modulus_mul, NNReal.coe_mul, Complex.ofReal_mul,
        Complex.mul_cpow_ofReal_nonneg (NNReal.coe_nonneg _) (NNReal.coe_nonneg _)]
    have e3 : ((modulus (x : K) : ℝ) : ℂ) ^ s * ((modulus (x : K) : ℝ) : ℂ) ^ (1 - s) =
        ((modulus (x : K) : ℝ) : ℂ) := by
      rw [← Complex.cpow_add _ _ hx0, add_sub_cancel, Complex.cpow_one]
    have hχx : ((χ x : ℂˣ) : ℂ) * ((χ x : ℂˣ) : ℂ)⁻¹ = 1 := mul_inv_cancel₀ (χ x).ne_zero
    simp only [F₁, G₁]
    rw [e1, e2, Units.val_mul]
    calc f x * ((χ x : ℂˣ) : ℂ) * ((modulus (x : K) : ℝ) : ℂ) ^ s *
          (localFourier μ ψ g ((x : K) * (y : K)) * (((χ x : ℂˣ) : ℂ)⁻¹ * ((χ y : ℂˣ) : ℂ)⁻¹) *
            (((modulus (x : K) : ℝ) : ℂ) ^ (1 - s) * ((modulus (y : K) : ℝ) : ℂ) ^ (1 - s)))
        = (((χ x : ℂˣ) : ℂ) * ((χ x : ℂˣ) : ℂ)⁻¹) *
            (((modulus (x : K) : ℝ) : ℂ) ^ s * ((modulus (x : K) : ℝ) : ℂ) ^ (1 - s)) *
            (((χ y : ℂˣ) : ℂ)⁻¹ * ((modulus (y : K) : ℝ) : ℂ) ^ (1 - s) *
              (f x * localFourier μ ψ g ((x : K) * (y : K)))) := by ring
      _ = _ := by rw [hχx, e3]; ring
  calc localZeta f χ s * localZeta (localFourier μ ψ g) χ⁻¹ (1 - s)
      = (∫ x, F₁ x ∂multHaar K) * ∫ y, G₁ y ∂multHaar K := rfl
    _ = ∫ x, F₁ x * ∫ y, G₁ y ∂multHaar K ∂multHaar K := (integral_mul_const _ _).symm
    _ = ∫ x, ∫ y, F₁ x * G₁ (x * y) ∂multHaar K ∂multHaar K := by
        refine integral_congr_ae (Eventually.of_forall fun x => ?_)
        simp only
        rw [integral_const_mul, integral_mul_left_eq_self (μ := multHaar K) G₁ x]
    _ = ∫ y, ∫ x, F₁ x * G₁ (x * y) ∂multHaar K ∂multHaar K := integral_integral_swap hH
    _ = _ := by
        refine integral_congr_ae (Eventually.of_forall fun y => ?_)
        simp only [hpt]
        rw [integral_const_mul]

theorem localZeta_mul_localZeta_fourier_comm {f g : K → ℂ} (hf : f ∈ schwartzBruhat K)
    (hg : g ∈ schwartzBruhat K) {s : ℂ} (hs1 : -quasiCharExponent χ < s.re)
    (hs2 : s.re < 1 - quasiCharExponent χ) :
    localZeta f χ s * localZeta (localFourier μ ψ g) χ⁻¹ (1 - s) =
      localZeta g χ s * localZeta (localFourier μ ψ f) χ⁻¹ (1 - s) := by
  rw [localZeta_mul_localZeta_fourier_eq μ hψ hψ1 hχ hf hg hs1 hs2,
    localZeta_mul_localZeta_fourier_eq μ hψ hψ1 hχ hg hf hs1 hs2]
  refine integral_congr_ae (Eventually.of_forall fun y => ?_)
  simp only
  rw [integral_multHaar_mul_localFourier_comm μ hψ hf hg]

end Tate

end GroundTheory.LocalField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.LocalFields.LocalZetaTate =====

-- ===== clump member: GroundTheory.LocalFields.LocalZetaEpsilon =====
-- clump-header: {"m": "GroundTheory.LocalFields.LocalZetaEpsilon", "h": "module\n\npublic import GroundTheory.LocalFields.LocalZetaIntegral\npublic import GroundTheory.LocalFields.LocalZetaTate\npublic import GroundTheory.LocalFields.PadicLogHom\nimport GroundTheory.LocalFields.SeparableClosureValuation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Algebra.Nonarchimedean.TotallyDisconnected\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Separation.Connected\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GroundTheory.LocalField

open ValuativeRel MeasureTheory Measure Topology Filter
open scoped WithZero NNReal ENNReal Pointwise

variable {K : Type*} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]

section Powers

theorem qcpow_zpow (z : ℂ) (n : ℤ) :
    ((residueCard K : ℂ) ^ z) ^ n = (residueCard K : ℂ) ^ ((n : ℂ) * z) := by
  rw [Complex.cpow_def_of_ne_zero residueCard_ne_zero_complex,
    Complex.cpow_def_of_ne_zero residueCard_ne_zero_complex, ← Complex.exp_int_mul]
  ring_nf

theorem qcpow_mul_qcpow (a b : ℂ) :
    (residueCard K : ℂ) ^ a * (residueCard K : ℂ) ^ b = (residueCard K : ℂ) ^ (a + b) :=
  (Complex.cpow_add _ _ residueCard_ne_zero_complex).symm

theorem modulus_cpow_eq_qcpow {x : K} (hx : x ≠ 0) (z : ℂ) :
    ((modulus x : ℝ) : ℂ) ^ z = (residueCard K : ℂ) ^ (-(ord x : ℂ) * z) := by
  have := modulus_cpow_eq_zpow (Units.mk0 x hx) z
  rw [Units.val_mk0] at this
  rw [this, qcpow_zpow]
  congr 1
  ring

theorem ofReal_qrpow (r : ℝ) :
    (((residueCard K : ℝ) ^ r : ℝ) : ℂ) = (residueCard K : ℂ) ^ (r : ℂ) := by
  rw [Complex.ofReal_cpow residueCard_pos_real.le, Complex.ofReal_natCast]

theorem ofReal_qzpow (n : ℤ) :
    (((residueCard K : ℝ) ^ n : ℝ) : ℂ) = (residueCard K : ℂ) ^ (n : ℂ) := by
  rw [← Real.rpow_intCast, ofReal_qrpow]
  push_cast
  rfl

end Powers

section Characters

variable {χ : Kˣ →* ℂˣ}

theorem isUnramifiedChar_inv_iff : IsUnramifiedChar χ⁻¹ ↔ IsUnramifiedChar χ := by
  simp only [isUnramifiedChar_iff, MonoidHom.inv_apply, inv_eq_one]

theorem quasiCharConductor_inv : quasiCharConductor χ⁻¹ = quasiCharConductor χ := by
  have : (χ⁻¹).ker = χ.ker := by
    ext u
    simp only [MonoidHom.mem_ker, MonoidHom.inv_apply, inv_eq_one]
  simp only [quasiCharConductor, this]

theorem unitFiltration_sub_one_mem_valBall {j : ℕ} {v : Kˣ} (hv : v ∈ unitFiltrationUnits K j) :
    (v : K) - 1 ∈ valBall K j := by
  rcases Nat.eq_zero_or_pos j with rfl | hj
  · have h0 : (v : K) ∈ valBall K 0 := by
      rw [mem_valBall_iff_le_ord v.ne_zero, mem_unitFiltrationUnits_zero_iff_ord.mp hv]
    have h1 : (1 : K) ∈ valBall K 0 := by
      rw [mem_valBall_iff_le_ord one_ne_zero, ord_one]
    simpa using sub_mem h0 h1
  · exact (mem_unitFiltrationUnits_iff_valBall hj).mp hv

open Classical in
def quasiCharExt (χ : Kˣ →* ℂˣ) (x : K) : ℂ :=
  if h : x = 0 then 0 else ((χ (Units.mk0 x h) : ℂˣ) : ℂ)

omit [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K] in
theorem quasiCharExt_units (u : Kˣ) : quasiCharExt χ (u : K) = ((χ u : ℂˣ) : ℂ) := by
  simp [quasiCharExt, u.ne_zero]

end Characters

section SchwartzBruhat

theorem indicator_valBall_mem_schwartzBruhat (k : ℤ) :
    (valBall K k : Set K).indicator (fun _ => (1 : ℂ)) ∈ schwartzBruhat K := by
  refine ⟨isLocallyConstant_of_add_valBall (N := k) fun x h hh => ?_, ?_⟩
  · have hiff : x + h ∈ valBall K k ↔ x ∈ valBall K k :=
      ⟨fun h' => by simpa using sub_mem h' hh, fun h' => add_mem h' hh⟩
    by_cases hx : x ∈ valBall K k
    · rw [Set.indicator_of_mem (show x + h ∈ (valBall K k : Set K) from hiff.mpr hx),
        Set.indicator_of_mem (show x ∈ (valBall K k : Set K) from hx)]
    · rw [Set.indicator_of_notMem (show x + h ∉ (valBall K k : Set K) from mt hiff.mp hx),
        Set.indicator_of_notMem (show x ∉ (valBall K k : Set K) from hx)]
  · exact HasCompactSupport.intro (isCompact_valBall k) fun x hx => Set.indicator_of_notMem hx _

end SchwartzBruhat

variable [MeasurableSpace K] [BorelSpace K]

section Epsilon


open Classical in
def localEpsilon (χ : Kˣ →* ℂˣ) (ψ : AddChar K Circle) (s : ℂ) : ℂ :=
  if IsUnramifiedChar χ then
    ((χ (unifUnit K ^ addCharConductor ψ) : ℂˣ) : ℂ)⁻¹ *
      ((modulus ((unifUnit K ^ addCharConductor ψ : Kˣ) : K) : ℝ) : ℂ) ^ ((1 : ℂ) / 2 - s)
  else
    ∫ x in (valBall K (addCharConductor ψ - quasiCharConductor χ) : Set K) \
        valBall K (addCharConductor ψ - quasiCharConductor χ + 1),
      quasiCharExt χ⁻¹ x * ((modulus x : ℝ) : ℂ) ^ (-s) * (ψ x : ℂ) ∂selfDualMeasure ψ

variable {χ : Kˣ →* ℂˣ} {ψ : AddChar K Circle}

theorem localEpsilon_of_isUnramified (h : IsUnramifiedChar χ) (s : ℂ) :
    localEpsilon χ ψ s = ((χ (unifUnit K) : ℂˣ) : ℂ) ^ (-addCharConductor ψ) *
      (residueCard K : ℂ) ^ ((addCharConductor ψ : ℂ) * (s - 1 / 2)) := by
  rw [localEpsilon, if_pos h, map_zpow, Units.val_zpow_eq_zpow_val, ← zpow_neg,
    modulus_cpow_eq_qcpow (unifUnit K ^ addCharConductor ψ).ne_zero, ord_unifUnit_zpow]
  congr 2
  ring

theorem localEpsilon_of_not_isUnramified (h : ¬ IsUnramifiedChar χ) (s : ℂ) :
    localEpsilon χ ψ s =
      ∫ x in (valBall K (addCharConductor ψ - quasiCharConductor χ) : Set K) \
          valBall K (addCharConductor ψ - quasiCharConductor χ + 1),
        quasiCharExt χ⁻¹ x * ((modulus x : ℝ) : ℂ) ^ (-s) * (ψ x : ℂ) ∂selfDualMeasure ψ := by
  rw [localEpsilon, if_neg h]

end Epsilon

section ZetaBasics

variable {χ : Kˣ →* ℂˣ}

theorem localZeta_const_mul (c : ℂ) (f : K → ℂ) (s : ℂ) :
    localZeta (fun x => c * f x) χ s = c * localZeta f χ s := by
  unfold localZeta
  rw [← integral_const_mul]
  congr 1
  funext u
  ring

theorem localZeta_indicator_valBall_of_isUnramified (hχ : Continuous χ) (hu : IsUnramifiedChar χ)
    (k : ℤ) {s : ℂ} (hs : -quasiCharExponent χ < s.re) :
    localZeta ((valBall K k : Set K).indicator fun _ => 1) χ s =
      (((χ (unifUnit K) : ℂˣ) : ℂ) * (residueCard K : ℂ) ^ (-s)) ^ k * localLFactor χ s := by
  rw [localZeta_eq_sum (indicator_valBall_mem_schwartzBruhat k) hχ le_rfl
    (fun x hx => by by_contra h; exact hx (Set.indicator_of_notMem h _))
    (fun x hx => by rw [Set.indicator_of_mem hx, Set.indicator_of_mem (zero_mem _)]) hs,
    if_pos hu, Finset.Ico_self, Finset.sum_empty, zero_add,
    Set.indicator_of_mem (show (0 : K) ∈ (valBall K k : Set K) from zero_mem _), one_mul,
    localLFactor_of_isUnramified hu]

theorem localFourier_indicator_valBall (μ : Measure K) [μ.IsAddHaarMeasure] {ψ : AddChar K Circle}
    (hψ : Continuous ψ) (hψ1 : ψ ≠ 1) (k : ℤ) (y : K) :
    localFourier μ ψ ((valBall K k : Set K).indicator fun _ => 1) y =
      (μ.real (valBall K k) : ℂ) *
        (valBall K (addCharConductor ψ - k) : Set K).indicator (fun _ => 1) y := by
  classical
  have e : (fun x => (valBall K k : Set K).indicator (fun _ => (1 : ℂ)) x * (ψ (x * y) : ℂ)) =
      (valBall K k : Set K).indicator fun x => ((ψ.mulShift y) x : ℂ) := by
    funext x
    by_cases hx : x ∈ (valBall K k : Set K)
    · rw [Set.indicator_of_mem hx, Set.indicator_of_mem hx, one_mul, AddChar.mulShift_apply,
        mul_comm]
    · rw [Set.indicator_of_notMem hx, Set.indicator_of_notMem hx, zero_mul]
  unfold localFourier
  rw [e, integral_indicator (measurableSet_valBall k), integral_valBall_char]
  by_cases hy : y ∈ valBall K (addCharConductor ψ - k)
  · rw [if_pos ((isTrivialOn_mulShift_iff_mem hψ hψ1 y k).mpr hy),
      Set.indicator_of_mem (show y ∈ (valBall K (addCharConductor ψ - k) : Set K) from hy), mul_one]
  · rw [if_neg (mt (isTrivialOn_mulShift_iff_mem hψ hψ1 y k).mp hy),
      Set.indicator_of_notMem (show y ∉ (valBall K (addCharConductor ψ - k) : Set K) from hy),
      mul_zero]

end ZetaBasics

section Unramified

variable {χ : Kˣ →* ℂˣ} {ψ : AddChar K Circle} (hψ : Continuous ψ) (hψ1 : ψ ≠ 1)
  (hχ : Continuous χ)
include hψ hψ1 hχ

theorem localZeta_fourier_indicator_integers (hu : IsUnramifiedChar χ) {s : ℂ}
    (hs2 : s.re < 1 - quasiCharExponent χ) :
    localZeta (localFourier (selfDualMeasure ψ) ψ ((valBall K 0 : Set K).indicator fun _ => 1))
        χ⁻¹ (1 - s) =
      localEpsilon χ ψ s * localLFactor χ⁻¹ (1 - s) := by
  have hs' : -quasiCharExponent χ⁻¹ < (1 - s).re := by
    rw [quasiCharExponent_inv, Complex.sub_re, Complex.one_re]
    linarith
  have e : localFourier (selfDualMeasure ψ) ψ ((valBall K 0 : Set K).indicator fun _ => 1) =
      fun y => ((selfDualMeasure ψ).real (valBall K 0) : ℂ) *
        (valBall K (addCharConductor ψ) : Set K).indicator (fun _ => 1) y := by
    funext y
    rw [localFourier_indicator_valBall _ hψ hψ1 0 y, sub_zero]
  rw [e, localZeta_const_mul, localZeta_indicator_valBall_of_isUnramified
    (continuous_quasiChar_inv hχ) (isUnramifiedChar_inv_iff.mpr hu) _ hs',
    localEpsilon_of_isUnramified hu, selfDualMeasure_real_valBall_zero, ofReal_qrpow,
    MonoidHom.inv_apply, Units.val_inv_eq_inv_val, mul_zpow, inv_zpow', qcpow_zpow]
  calc _ = ((χ (unifUnit K) : ℂˣ) : ℂ) ^ (-addCharConductor ψ) *
        ((residueCard K : ℂ) ^ ((((addCharConductor ψ : ℝ) / 2 : ℝ)) : ℂ) *
          (residueCard K : ℂ) ^ ((addCharConductor ψ : ℂ) * -(1 - s))) *
        localLFactor χ⁻¹ (1 - s) := by ring
    _ = _ := by
      rw [qcpow_mul_qcpow, show ((((addCharConductor ψ : ℝ) / 2 : ℝ) : ℂ) +
          (addCharConductor ψ : ℂ) * -(1 - s)) = (addCharConductor ψ : ℂ) * (s - 1 / 2) by
        push_cast; ring]

end Unramified

section Ramified

def oneAddValBallIndicator (c : ℤ) : K → ℂ :=
  {x : K | x - 1 ∈ valBall K c}.indicator fun _ => 1

omit [MeasurableSpace K] [BorelSpace K] in
open Classical in
theorem oneAddValBallIndicator_apply (c : ℤ) (x : K) :
    oneAddValBallIndicator c x = if x - 1 ∈ valBall K c then 1 else 0 := by
  unfold oneAddValBallIndicator
  by_cases hx : x - 1 ∈ valBall K c
  · rw [Set.indicator_of_mem (show x ∈ {x : K | x - 1 ∈ valBall K c} from hx), if_pos hx]
  · rw [Set.indicator_of_notMem (show x ∉ {x : K | x - 1 ∈ valBall K c} from hx), if_neg hx]

omit [MeasurableSpace K] [BorelSpace K] in
theorem oneAddValBallIndicator_add_one (c : ℤ) (h : K) :
    oneAddValBallIndicator c (1 + h) = (valBall K c : Set K).indicator (fun _ => 1) h := by
  classical
  rw [oneAddValBallIndicator_apply, add_sub_cancel_left, Set.indicator_apply]
  rfl

omit [MeasurableSpace K] [BorelSpace K] in
theorem oneAddValBallIndicator_mem_schwartzBruhat {c : ℤ} (hc : 0 ≤ c) :
    oneAddValBallIndicator c ∈ schwartzBruhat K := by
  refine ⟨isLocallyConstant_of_add_valBall (N := c) fun x h hh => ?_, ?_⟩
  · have hiff : x + h - 1 ∈ valBall K c ↔ x - 1 ∈ valBall K c := by
      rw [show x + h - 1 = (x - 1) + h by ring]
      exact ⟨fun h' => by simpa using sub_mem h' hh, fun h' => add_mem h' hh⟩
    classical
    rw [oneAddValBallIndicator_apply, oneAddValBallIndicator_apply]
    exact if_congr hiff rfl rfl
  · refine HasCompactSupport.intro (isCompact_valBall 0) fun x hx => ?_
    classical
    rw [oneAddValBallIndicator_apply, if_neg]
    intro h1
    have h0 : (1 : K) ∈ valBall K 0 := by rw [mem_valBall_iff_le_ord one_ne_zero, ord_one]
    exact hx (by simpa using add_mem (valBall_antitone hc h1) h0)

theorem localFourier_oneAddValBallIndicator (μ : Measure K) [μ.IsAddHaarMeasure]
    {ψ : AddChar K Circle} (hψ : Continuous ψ) (hψ1 : ψ ≠ 1) (c : ℤ) (y : K) :
    localFourier μ ψ (oneAddValBallIndicator c) y =
      (ψ y : ℂ) * ((μ.real (valBall K c) : ℂ) *
        (valBall K (addCharConductor ψ - c) : Set K).indicator (fun _ => 1) y) := by
  rw [← localFourier_indicator_valBall μ hψ hψ1 c y]
  unfold localFourier
  rw [← integral_add_left_eq_self (fun x => oneAddValBallIndicator c x * (ψ (x * y) : ℂ)) 1,
    ← integral_const_mul]
  congr 1
  funext h
  rw [oneAddValBallIndicator_add_one, add_mul, one_mul, AddChar.map_add_eq_mul, Circle.coe_mul]
  ring

theorem setIntegral_ordShell_eq_haarIntegers (F : K → ℂ) (m : ℤ) :
    ∫ u in ordShell K m, F u ∂multHaar K =
      (((multHaarConst K).toReal * (residueCard K : ℝ) ^ m : ℝ) : ℂ) *
        ∫ x in (valBall K m : Set K) \ valBall K (m + 1), F x ∂haarIntegers K := by
  set S : Set K := (valBall K m : Set K) \ valBall K (m + 1) with hSdef
  have hS : MeasurableSet S := (measurableSet_valBall m).diff (measurableSet_valBall (m + 1))
  have hmem : ∀ u : Kˣ, u ∈ ordShell K m ↔ (u : K) ∈ S := fun u => by
    simp only [S, mem_ordShell, Set.mem_sdiff, SetLike.mem_coe, mem_valBall_iff_le_ord u.ne_zero]
    omega
  have hq : (residueCard K : ℂ) ≠ 0 := residueCard_ne_zero_complex
  let h : K → ℂ := S.indicator fun x => F x * (residueCard K : ℂ) ^ m
  have hpt : ∀ u : Kˣ, (ordShell K m).indicator (fun u : Kˣ => F u) u =
      h u * ((modulus (u : K) : ℝ) : ℂ) := by
    intro u
    simp only [h]
    by_cases hu : u ∈ ordShell K m
    · rw [Set.indicator_of_mem hu, Set.indicator_of_mem ((hmem u).mp hu),
        modulus_of_ne_zero u.ne_zero, mem_ordShell.mp hu]
      push_cast
      rw [mul_assoc, ← zpow_add₀ hq, add_neg_cancel, zpow_zero, mul_one]
    · rw [Set.indicator_of_notMem hu, Set.indicator_of_notMem (mt (hmem u).mpr hu), zero_mul]
  rw [← integral_indicator (measurableSet_ordShell m)]
  rw [show (fun u : Kˣ => (ordShell K m).indicator (fun u : Kˣ => F u) u) =
    fun u : Kˣ => h u * ((modulus (u : K) : ℝ) : ℂ) from funext hpt]
  rw [integral_multHaar_mul_modulus h, integral_indicator hS, integral_mul_const]
  push_cast
  ring

variable {χ : Kˣ →* ℂˣ} {ψ : AddChar K Circle}

theorem localZeta_oneAddValBallIndicator {c : ℕ} (hc : 1 ≤ c)
    (hker : unitFiltrationUnits K c ≤ χ.ker) (s : ℂ) :
    localZeta (oneAddValBallIndicator c) χ s =
      (multHaarConst K).toReal * (haarIntegers K).real (valBall K c) := by
  have hpt : ∀ u : Kˣ, oneAddValBallIndicator (c : ℤ) (u : K) * ((χ u : ℂˣ) : ℂ) *
      ((modulus (u : K) : ℝ) : ℂ) ^ s =
      oneAddValBallIndicator (c : ℤ) (u : K) * ((modulus (u : K) : ℝ) : ℂ) := by
    intro u
    by_cases hu : (u : K) - 1 ∈ valBall K c
    · have hU : u ∈ unitFiltrationUnits K c := (mem_unitFiltrationUnits_iff_valBall hc).mpr hu
      have hord : ord (u : K) = 0 :=
        mem_unitFiltrationUnits_zero_iff_ord.mp (unitFiltrationUnits_antitone (Nat.zero_le c) hU)
      have hmod : modulus (u : K) = 1 := modulus_eq_one_iff.mpr ⟨u.ne_zero, hord⟩
      rw [MonoidHom.mem_ker.mp (hker hU), hmod]
      simp
    · classical
      rw [oneAddValBallIndicator_apply, if_neg hu]
      simp
  unfold localZeta
  rw [show (fun u : Kˣ => oneAddValBallIndicator (c : ℤ) (u : K) * ((χ u : ℂˣ) : ℂ) *
      ((modulus (u : K) : ℝ) : ℂ) ^ s) =
    fun u : Kˣ => oneAddValBallIndicator (c : ℤ) (u : K) * ((modulus (u : K) : ℝ) : ℂ) from funext hpt,
    integral_multHaar_mul_modulus, ← integral_add_left_eq_self _ 1]
  simp only [oneAddValBallIndicator_add_one]
  rw [integral_indicator (measurableSet_valBall _), setIntegral_const, Complex.real_smul, mul_one]

theorem localZeta_oneAddValBallIndicator_ne_zero {c : ℕ} (hc : 1 ≤ c)
    (hker : unitFiltrationUnits K c ≤ χ.ker) (s : ℂ) :
    localZeta (oneAddValBallIndicator c) χ s ≠ 0 := by
  rw [localZeta_oneAddValBallIndicator hc hker]
  have h1 : (multHaarConst K).toReal ≠ 0 :=
    ENNReal.toReal_ne_zero.mpr ⟨multHaarConst_ne_zero, multHaarConst_ne_top⟩
  have h2 : (haarIntegers K).real (valBall K c) ≠ 0 := by
    rw [measureReal_def, haarIntegers_valBall, ENNReal.coe_toReal]
    exact_mod_cast (zpow_pos (zero_lt_one.trans one_lt_residueCard_nnreal) _).ne'
  exact_mod_cast mul_ne_zero h1 h2

theorem localEpsilon_of_not_isUnramified_eq (hr : ¬ IsUnramifiedChar χ) (s : ℂ) :
    localEpsilon χ ψ s =
      (residueCard K : ℂ) ^ (((addCharConductor ψ - quasiCharConductor χ : ℤ) : ℂ) * s) *
        (((residueCard K : ℝ) ^ ((addCharConductor ψ : ℝ) / 2) : ℝ) : ℂ) *
        ∫ x in (valBall K (addCharConductor ψ - quasiCharConductor χ) : Set K) \
            valBall K (addCharConductor ψ - quasiCharConductor χ + 1),
          quasiCharExt χ⁻¹ x * (ψ x : ℂ) ∂haarIntegers K := by
  set m : ℤ := addCharConductor ψ - quasiCharConductor χ
  have hS : MeasurableSet ((valBall K m : Set K) \ valBall K (m + 1)) :=
    (measurableSet_valBall m).diff (measurableSet_valBall (m + 1))
  rw [localEpsilon_of_not_isUnramified hr]
  rw [setIntegral_congr_fun hS (g := fun x => (residueCard K : ℂ) ^ ((m : ℂ) * s) *
    (quasiCharExt χ⁻¹ x * (ψ x : ℂ))) fun x hx => by
      have hx0 : x ≠ 0 := fun h => hx.2 (h ▸ zero_mem _)
      have hord : ord x = m := by
        have a := (mem_valBall_iff_le_ord hx0).mp hx.1
        have b := mt (mem_valBall_iff_le_ord hx0).mpr hx.2
        omega
      simp only
      rw [modulus_cpow_eq_qcpow hx0, hord]
      ring_nf]
  rw [integral_const_mul, selfDualMeasure, Measure.restrict_smul, integral_smul_nnreal_measure,
    NNReal.smul_def, Complex.real_smul, NNReal.coe_rpow, NNReal.coe_natCast]
  ring

end Ramified

section RamifiedFourier

variable {χ : Kˣ →* ℂˣ} {ψ : AddChar K Circle} (hψ : Continuous ψ) (hψ1 : ψ ≠ 1)
  (hχ : Continuous χ)
include hψ hψ1 hχ

theorem localZeta_fourier_oneAddValBallIndicator (hr : ¬ IsUnramifiedChar χ) {s : ℂ}
    (hs2 : s.re < 1 - quasiCharExponent χ) :
    localZeta (localFourier (selfDualMeasure ψ) ψ (oneAddValBallIndicator (quasiCharConductor χ)))
        χ⁻¹ (1 - s) =
      localEpsilon χ ψ s * localZeta (oneAddValBallIndicator (quasiCharConductor χ)) χ s := by
  set c := quasiCharConductor χ with hcdef
  set n := addCharConductor ψ with hndef
  set m : ℤ := n - c with hmdef
  set μ := selfDualMeasure ψ
  have hc : 1 ≤ c := quasiCharConductor_pos hχ hr
  have hs' : -quasiCharExponent χ⁻¹ < (1 - s).re := by
    rw [quasiCharExponent_inv, Complex.sub_re, Complex.one_re]
    linarith
  have hr' : ¬ IsUnramifiedChar χ⁻¹ := mt isUnramifiedChar_inv_iff.mp hr
  set g := localFourier μ ψ (oneAddValBallIndicator c) with hgdef
  have hg : ∀ y, g y = (ψ y : ℂ) * ((μ.real (valBall K c) : ℂ) *
      (valBall K m : Set K).indicator (fun _ => 1) y) :=
    fun y => localFourier_oneAddValBallIndicator μ hψ hψ1 c y
  have hgSB : g ∈ schwartzBruhat K :=
    localFourier_mem_schwartzBruhat μ hψ hψ1 (oneAddValBallIndicator_mem_schwartzBruhat (by omega))
  have hmn : m ≤ n := by omega
  have hM : ∀ y, g y ≠ 0 → y ∈ valBall K m := fun y hy => by
    by_contra h
    rw [hg y, Set.indicator_of_notMem (show y ∉ (valBall K m : Set K) from h)] at hy
    simp at hy
  have hN : ∀ y ∈ valBall K n, g y = g 0 := fun y hy => by
    rw [hg y, hg 0, isTrivialOn_addCharConductor hψ hψ1 y hy, AddChar.map_zero_eq_one,
      Set.indicator_of_mem (show y ∈ (valBall K m : Set K) from valBall_antitone hmn hy),
      Set.indicator_of_mem (show (0 : K) ∈ (valBall K m : Set K) from zero_mem _)]

  obtain ⟨v, hv, hv1⟩ := exists_apply_ne_one_of_not_isUnramified hχ hr
  have hvord : ord (v : K) = 0 :=
    mem_unitFiltrationUnits_zero_iff_ord.mp (unitFiltrationUnits_antitone (Nat.zero_le _) hv)
  have hvm : (v : K) - 1 ∈ valBall K ((c - 1 : ℕ) : ℤ) := unitFiltration_sub_one_mem_valBall hv
  have hvanish : ∀ k ∈ Finset.Ico m n, k ≠ m →
      (∫ u in ordShell K k, g u * (((χ⁻¹) u : ℂˣ) : ℂ) ∂multHaar K) *
        ((residueCard K : ℂ) ^ (-(1 - s))) ^ k = 0 := by
    intro k hk hkm
    have hk1 : m + 1 ≤ k := by
      have := (Finset.mem_Ico.mp hk).1
      omega
    rw [setIntegral_ordShell_eq_zero (fun u => g u * (((χ⁻¹) u : ℂˣ) : ℂ)) hvord
      (a := ((χ v : ℂˣ) : ℂ)⁻¹) (fun h => hv1 (by
        have : ((χ v : ℂˣ) : ℂ) = 1 := inv_eq_one.mp h
        exact Units.val_eq_one.mp this)) k (fun u hu => ?_), zero_mul]
    have hu0 := u.ne_zero
    have huk : ord (u : K) = k := mem_ordShell.mp hu
    have hvu : ((v * u : Kˣ) : K) - (u : K) ∈ valBall K n := by
      rw [Units.val_mul, show (v : K) * u - u = ((v : K) - 1) * u by ring]
      have := mul_mem_valBall hvm ((mem_valBall_iff_le_ord hu0).mpr le_rfl)
      refine valBall_antitone ?_ this
      rw [huk]
      omega
    have hψvu : (ψ ((v * u : Kˣ) : K) : ℂ) = (ψ (u : K) : ℂ) := by
      have := isTrivialOn_addCharConductor hψ hψ1 _ hvu
      rw [show ((v * u : Kˣ) : K) = (u : K) + (((v * u : Kˣ) : K) - u) by ring,
        AddChar.map_add_eq_mul, this, mul_one]
    have hmemu : (u : K) ∈ valBall K m := (mem_valBall_iff_le_ord hu0).mpr (by omega)
    have hmemvu : ((v * u : Kˣ) : K) ∈ valBall K m :=
      (mem_valBall_iff_le_ord (v * u).ne_zero).mpr (by rw [ord_units_mul, hvord]; omega)
    rw [hg, hg, hψvu, Set.indicator_of_mem (show ((v * u : Kˣ) : K) ∈ (valBall K m : Set K) from hmemvu),
      Set.indicator_of_mem (show (u : K) ∈ (valBall K m : Set K) from hmemu), map_mul,
      Units.val_mul, MonoidHom.inv_apply, MonoidHom.inv_apply]
    simp only [Units.val_inv_eq_inv_val]
    ring
  have hZg : localZeta g χ⁻¹ (1 - s) =
      (∫ u in ordShell K m, g u * (((χ⁻¹) u : ℂˣ) : ℂ) ∂multHaar K) *
        ((residueCard K : ℂ) ^ (-(1 - s))) ^ m := by
    rw [localZeta_eq_sum hgSB (continuous_quasiChar_inv hχ) hmn hM hN hs', if_neg hr', add_zero,
      Finset.sum_eq_single_of_mem m (Finset.mem_Ico.mpr ⟨le_rfl, by omega⟩) hvanish]

  have hshell : ∫ u in ordShell K m, g u * (((χ⁻¹) u : ℂˣ) : ℂ) ∂multHaar K =
      (μ.real (valBall K c) : ℂ) *
        ∫ u in ordShell K m, quasiCharExt χ⁻¹ (u : K) * (ψ (u : K) : ℂ) ∂multHaar K := by
    rw [← integral_const_mul]
    refine setIntegral_congr_fun (measurableSet_ordShell m) fun u hu => ?_
    have hmemu : (u : K) ∈ valBall K m :=
      (mem_valBall_iff_le_ord u.ne_zero).mpr (by rw [mem_ordShell.mp hu])
    rw [hg, Set.indicator_of_mem (show (u : K) ∈ (valBall K m : Set K) from hmemu),
      quasiCharExt_units]
    ring
  rw [hZg, hshell, setIntegral_ordShell_eq_haarIntegers (fun x => quasiCharExt χ⁻¹ x * (ψ x : ℂ)),
    localEpsilon_of_not_isUnramified_eq hr, localZeta_oneAddValBallIndicator hc
      (unitFiltrationUnits_quasiCharConductor_le_ker hχ)]
  have hμc : μ.real (valBall K c) =
      (residueCard K : ℝ) ^ ((n : ℝ) / 2) * (haarIntegers K).real (valBall K c) := by
    simp only [μ, selfDualMeasure, measureReal_def, Measure.smul_apply, ENNReal.smul_def,
      smul_eq_mul, ENNReal.toReal_mul, ENNReal.coe_toReal, NNReal.coe_rpow, NNReal.coe_natCast]
    rfl
  rw [hμc, qcpow_zpow, ← hndef, ← hcdef, ← hmdef]
  set A := ∫ x in (valBall K m : Set K) \ valBall K (m + 1), quasiCharExt χ⁻¹ x * (ψ x : ℂ)
    ∂haarIntegers K
  set B := (haarIntegers K).real (valBall K c)
  set C := (multHaarConst K).toReal
  set r := (residueCard K : ℝ) ^ ((n : ℝ) / 2)
  have hpow : (residueCard K : ℂ) ^ m * (residueCard K : ℂ) ^ ((m : ℂ) * -(1 - s)) =
      (residueCard K : ℂ) ^ ((m : ℂ) * s) := by
    rw [← Complex.cpow_intCast, qcpow_mul_qcpow]
    congr 1
    ring
  push_cast
  linear_combination ((r : ℂ) * (B : ℂ) * (C : ℂ) * A) * hpow

end RamifiedFourier

section FunctionalEquation

variable {χ : Kˣ →* ℂˣ} {ψ : AddChar K Circle} (hψ : Continuous ψ) (hψ1 : ψ ≠ 1)
  (hχ : Continuous χ)
include hψ hψ1 hχ

theorem exists_localZeta_test {s : ℂ} (hs1 : -quasiCharExponent χ < s.re)
    (hs2 : s.re < 1 - quasiCharExponent χ) :
    ∃ g : K → ℂ, g ∈ schwartzBruhat K ∧ localZeta g χ s ≠ 0 ∧
      localZeta (localFourier (selfDualMeasure ψ) ψ g) χ⁻¹ (1 - s) * localLFactor χ s =
        localEpsilon χ ψ s * localZeta g χ s * localLFactor χ⁻¹ (1 - s) := by
  by_cases hu : IsUnramifiedChar χ
  · refine ⟨_, indicator_valBall_mem_schwartzBruhat 0, ?_, ?_⟩
    · rw [localZeta_indicator_valBall_of_isUnramified hχ hu 0 hs1, zpow_zero, one_mul]
      exact localLFactor_ne_zero hχ hs1
    · rw [localZeta_fourier_indicator_integers hψ hψ1 hχ hu hs2,
        localZeta_indicator_valBall_of_isUnramified hχ hu 0 hs1, zpow_zero, one_mul]
      ring
  · refine ⟨_, oneAddValBallIndicator_mem_schwartzBruhat (Nat.cast_nonneg _),
      localZeta_oneAddValBallIndicator_ne_zero (quasiCharConductor_pos hχ hu)
        (unitFiltrationUnits_quasiCharConductor_le_ker hχ) s, ?_⟩
    rw [localZeta_fourier_oneAddValBallIndicator hψ hψ1 hχ hu hs2,
      localLFactor_of_not_isUnramified hu,
      localLFactor_of_not_isUnramified (mt isUnramifiedChar_inv_iff.mp hu)]

theorem localZeta_functionalEquation {f : K → ℂ} (hf : f ∈ schwartzBruhat K) {s : ℂ}
    (hs1 : -quasiCharExponent χ < s.re) (hs2 : s.re < 1 - quasiCharExponent χ) :
    localZeta (localFourier (selfDualMeasure ψ) ψ f) χ⁻¹ (1 - s) / localLFactor χ⁻¹ (1 - s) =
      localEpsilon χ ψ s * (localZeta f χ s / localLFactor χ s) := by
  have hs' : -quasiCharExponent χ⁻¹ < (1 - s).re := by
    rw [quasiCharExponent_inv, Complex.sub_re, Complex.one_re]
    linarith
  have hL1 := localLFactor_ne_zero hχ hs1
  have hL2 := localLFactor_ne_zero (continuous_quasiChar_inv hχ) hs'
  obtain ⟨g, hg, hZg, hkey⟩ := exists_localZeta_test hψ hψ1 hχ hs1 hs2
  have hT := localZeta_mul_localZeta_fourier_comm (selfDualMeasure ψ) hψ hψ1 hχ hf hg hs1 hs2
  have hmain : localZeta (localFourier (selfDualMeasure ψ) ψ f) χ⁻¹ (1 - s) * localLFactor χ s =
      localEpsilon χ ψ s * localZeta f χ s * localLFactor χ⁻¹ (1 - s) := by
    refine mul_left_cancel₀ hZg ?_
    linear_combination (-localLFactor χ s) * hT + localZeta f χ s * hkey
  rw [eq_comm, ← mul_div_assoc, div_eq_div_iff hL1 hL2]
  linear_combination -hmain

end FunctionalEquation

end GroundTheory.LocalField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.LocalFields.LocalZetaEpsilon =====
