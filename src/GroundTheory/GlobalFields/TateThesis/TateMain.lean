module

public import GroundTheory.GlobalFields.TateThesis.GlobalZeta
public import GroundTheory.GlobalFields.TateThesis.IdeleMeasureQuotient
public import GroundTheory.GlobalFields.TateThesis.TateThetaDecay
public import Mathlib.NumberTheory.LSeries.AbstractFuncEq
public import GroundTheory.GlobalFields.TateThesis.ArchCharsUnitary
import GroundTheory.GlobalFields.TateThesis.AdelePoisson

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.GlobalFields.TateThesis.GlobalZetaSplit, GroundTheory.GlobalFields.TateThesis.TateMain

-- ===== clump member: GroundTheory.GlobalFields.TateThesis.GlobalZetaSplit =====
-- clump-header: {"m": "GroundTheory.GlobalFields.TateThesis.GlobalZetaSplit", "h": "module\n\npublic import GroundTheory.GlobalFields.TateThesis.GlobalZeta\npublic import GroundTheory.GlobalFields.TateThesis.IdeleMeasureQuotient\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Topology Filter MeasureTheory
open scoped NumberField.AdeleRing ENNReal NNReal

namespace GroundTheory.Global

noncomputable section

variable {K : Type*} [Field K] [NumberField K]

open IdeleGroup

def partialZetaSum (w : InfinitePlace K) (f : 𝔸[K] → ℂ) (χ : HeckeCharacter K)
    (t : {r : ℝ // 0 < r}) (u : normOneSubgroup K) : ℂ :=
  ∑' ξ : Kˣ, f ((diagonal K ξ * moduleSection w t * (u : IdeleGroup K) : IdeleGroup K) : 𝔸[K]) *
    (χ.toIdele (moduleSection w t * (u : IdeleGroup K)) : ℂ)

theorem partialZetaSum_mul (w : InfinitePlace K) (f : 𝔸[K] → ℂ) (χ : HeckeCharacter K)
    (t : {r : ℝ // 0 < r}) (u : normOneSubgroup K) {δ : normOneSubgroup K}
    (hδ : δ ∈ diagonalNormOne K) : partialZetaSum w f χ t (u * δ) = partialZetaSum w f χ t u := by
  rw [Subgroup.mem_subgroupOf, MonoidHom.mem_range] at hδ
  obtain ⟨ξ₀, hξ₀⟩ := hδ
  unfold partialZetaSum
  conv_rhs => rw [← (Equiv.mulRight ξ₀).tsum_eq]
  refine tsum_congr fun ξ ↦ ?_
  have hχ : χ.toIdele (moduleSection w t * ((u * δ : normOneSubgroup K) : IdeleGroup K)) =
      χ.toIdele (moduleSection w t * (u : IdeleGroup K)) := by
    rw [Subgroup.coe_mul, ← hξ₀, ← mul_assoc, map_mul, HeckeCharacter.toIdele_diagonal, mul_one]
  have hf : diagonal K ξ * moduleSection w t * ((u * δ : normOneSubgroup K) : IdeleGroup K) =
      diagonal K ((Equiv.mulRight ξ₀) ξ) * moduleSection w t * (u : IdeleGroup K) := by
    rw [Subgroup.coe_mul, ← hξ₀, Equiv.coe_mulRight, map_mul]
    simp only [mul_comm, mul_left_comm, mul_assoc]
  rw [hχ, hf]

def partialZetaClass (w : InfinitePlace K) (f : 𝔸[K] → ℂ) (χ : HeckeCharacter K)
    (t : {r : ℝ // 0 < r}) : normOneSubgroup K ⧸ diagonalNormOne K → ℂ :=
  Quotient.lift (s := QuotientGroup.leftRel (diagonalNormOne K)) (partialZetaSum w f χ t)
    fun u v h ↦ by
      have h' : u⁻¹ * v ∈ diagonalNormOne K := QuotientGroup.leftRel_apply.1 h
      conv_rhs => rw [← mul_inv_cancel_left u v]
      rw [partialZetaSum_mul w f χ t u h']

def partialZeta (w : InfinitePlace K) (f : 𝔸[K] → ℂ) (χ : HeckeCharacter K)
    (t : {r : ℝ // 0 < r}) : ℂ :=
  ∫ c, partialZetaClass w f χ t c ∂normOneClassMeasure K

theorem measurable_partialZetaSum (w : InfinitePlace K) {f : 𝔸[K] → ℂ} (hf : Continuous f)
    (χ : HeckeCharacter K) (t : {r : ℝ // 0 < r}) : Measurable (partialZetaSum w f χ t) := by
  refine Measurable.tsum fun ξ ↦ Continuous.measurable ?_
  have hu : Continuous fun u : normOneSubgroup K ↦ moduleSection w t * (u : IdeleGroup K) :=
    continuous_const.mul continuous_subtype_val
  have hu' : Continuous fun u : normOneSubgroup K ↦
      diagonal K ξ * moduleSection w t * (u : IdeleGroup K) :=
    continuous_const.mul continuous_subtype_val
  exact (hf.comp (Units.continuous_val.comp hu')).mul
    (continuous_subtype_val.comp (χ.continuous_toIdele.comp hu))

theorem partialZeta_eq_setIntegral (w : InfinitePlace K) {f : 𝔸[K] → ℂ} (hf : Continuous f)
    (χ : HeckeCharacter K) (t : {r : ℝ // 0 < r}) :
    partialZeta w f χ t =
      ∫ u in normOneFundamentalDomain K, partialZetaSum w f χ t u ∂normOneMeasure K := by
  have hm : Measurable (partialZetaClass w f χ t) :=
    QuotientGroup.measurable_from_quotient.2 (measurable_partialZetaSum w hf χ t)
  rw [partialZeta, normOneClassMeasure,
    integral_map QuotientGroup.measurable_coe.aemeasurable hm.aestronglyMeasurable]
  rfl

theorem zetaIntegrand_diagonal_mul (w : InfinitePlace K) (f : 𝔸[K] → ℂ) (χ : HeckeCharacter K)
    (s : ℂ) (ξ : Kˣ) (t : {r : ℝ // 0 < r}) (u : normOneSubgroup K) :
    f ((diagonal K ξ * moduleSection w t * (u : IdeleGroup K) : IdeleGroup K) : 𝔸[K]) *
        (χ.toIdele (diagonal K ξ * moduleSection w t * (u : IdeleGroup K)) : ℂ) *
        ((ideleModule K (diagonal K ξ * moduleSection w t * (u : IdeleGroup K)) : ℝ) : ℂ) ^ s =
      f ((diagonal K ξ * moduleSection w t * (u : IdeleGroup K) : IdeleGroup K) : 𝔸[K]) *
        (χ.toIdele (moduleSection w t * (u : IdeleGroup K)) : ℂ) * ((t : ℝ) : ℂ) ^ s := by
  have hu : ideleModule K (u : IdeleGroup K) = 1 := u.2
  have hmod : ideleModule K (diagonal K ξ * moduleSection w t * (u : IdeleGroup K)) = t := by
    rw [map_mul, map_mul, ideleModule_diagonal, one_mul, ideleModule_moduleSection, hu, mul_one]
  have hχ : χ.toIdele (diagonal K ξ * moduleSection w t * (u : IdeleGroup K)) =
      χ.toIdele (moduleSection w t * (u : IdeleGroup K)) := by
    rw [mul_assoc, map_mul, HeckeCharacter.toIdele_diagonal, one_mul]
  simp only [hmod, hχ]

theorem globalZeta_eq_integral_partialZeta (w : InfinitePlace K) {f : 𝔸[K] → ℂ}
    (hf : f ∈ schwartzBruhat K) (χ : HeckeCharacter K) {s : ℂ} (hs : 1 < s.re) :
    Integrable (fun t ↦ partialZeta w f χ t * ((t : ℝ) : ℂ) ^ s) posRealMeasure ∧
      globalZeta f χ s = ∫ t, partialZeta w f χ t * ((t : ℝ) : ℂ) ^ s ∂posRealMeasure := by
  have hfc := continuous_of_mem_schwartzBruhat hf
  set G : IdeleGroup K → ℂ := fun x ↦ f x * (χ.toIdele x : ℂ) * ((ideleModule K x : ℝ) : ℂ) ^ s
    with hGdef
  have hG : Integrable G (ideleMeasure K) := integrable_globalZetaIntegrand hf χ hs
  have hg : Integrable (fun p : normOneSubgroup K × {r : ℝ // 0 < r} ↦
      G ((p.1 : IdeleGroup K) * moduleSection w p.2))
      ((normOneMeasure K).prod posRealMeasure) := by
    rw [← map_normOneSplitting_eq_prod w]
    refine (integrable_map_equiv (normOneSplitting w).toHomeomorph.toMeasurableEquiv _).2 ?_
    convert hG using 1
    funext x
    exact congrArg G ((normOneSplitting w).symm_apply_apply x)
  have hae : (fun t ↦ ∫ u, G ((u : IdeleGroup K) * moduleSection w t) ∂normOneMeasure K)
      =ᵐ[posRealMeasure] fun t ↦ partialZeta w f χ t * ((t : ℝ) : ℂ) ^ s := by
    filter_upwards [hg.prod_left_ae] with t ht
    rw [integral_normOneMeasure_eq_setIntegral_tsum ht, partialZeta_eq_setIntegral w hfc,
      ← integral_mul_const]
    refine integral_congr_ae (Eventually.of_forall fun u ↦ ?_)
    simp only [partialZetaSum]
    rw [← tsum_mul_right]
    refine tsum_congr fun ξ ↦ ?_
    have hx : ((diagonalToNormOne K ξ * u : normOneSubgroup K) : IdeleGroup K) *
        moduleSection w t = diagonal K ξ * moduleSection w t * (u : IdeleGroup K) := by
      rw [Subgroup.coe_mul, coe_diagonalToNormOne, mul_right_comm]
    rw [hx]
    exact zetaIntegrand_diagonal_mul w f χ s ξ t u
  refine ⟨hg.integral_prod_right.congr hae, ?_⟩
  rw [globalZeta, integral_ideleMeasure_eq_integral_normOne w hG]
  exact integral_congr_ae hae

end

end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.TateThesis.GlobalZetaSplit =====

-- ===== clump member: GroundTheory.GlobalFields.TateThesis.TateMain =====
-- clump-header: {"m": "GroundTheory.GlobalFields.TateThesis.TateMain", "h": "module\n\npublic import GroundTheory.GlobalFields.TateThesis.TateThetaDecay\npublic import GroundTheory.GlobalFields.TateThesis.GlobalZetaSplit\npublic import Mathlib.NumberTheory.LSeries.AbstractFuncEq\nimport GroundTheory.GlobalFields.TateThesis.AdelePoisson\npublic import GroundTheory.GlobalFields.TateThesis.ArchCharsUnitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Topology Filter MeasureTheory Complex
open scoped NumberField.AdeleRing

namespace GroundTheory.Global

noncomputable section

variable {K : Type*} [Field K] [NumberField K]

open IdeleGroup

def posRealChar (w : InfinitePlace K) (χ : HeckeCharacter K) : {x : ℝ // 0 < x} →ₜ* Circle where
  toMonoidHom := χ.toIdele.comp (moduleSection w)
  continuous_toFun := χ.continuous_toIdele.comp (continuous_moduleSection w)

def archExponent (w : InfinitePlace K) (χ : HeckeCharacter K) : ℝ :=
  (existsUnique_cpow_of_pos_circle (posRealChar w χ)).exists.choose

theorem archExponent_spec (w : InfinitePlace K) (χ : HeckeCharacter K) (t : {x : ℝ // 0 < x}) :
    (χ.toIdele (moduleSection w t) : ℂ) = ((t : ℝ) : ℂ) ^ ((archExponent w χ : ℂ) * I) :=
  (existsUnique_cpow_of_pos_circle (posRealChar w χ)).exists.choose_spec t

theorem archExponent_unique (w : InfinitePlace K) (χ : HeckeCharacter K) {τ : ℝ}
    (h : ∀ t : {x : ℝ // 0 < x}, (χ.toIdele (moduleSection w t) : ℂ) = ((t : ℝ) : ℂ) ^ ((τ : ℂ) * I)) :
    archExponent w χ = τ :=
  (existsUnique_cpow_of_pos_circle (posRealChar w χ)).unique
    (existsUnique_cpow_of_pos_circle (posRealChar w χ)).exists.choose_spec h

theorem archExponent_inv (w : InfinitePlace K) (χ : HeckeCharacter K) :
    archExponent w χ⁻¹ = -archExponent w χ := by
  refine archExponent_unique w χ⁻¹ fun t ↦ ?_
  rw [toIdele_inv, Circle.coe_inv, archExponent_spec, ← cpow_neg]
  push_cast
  ring_nf

theorem archExponent_eq_of_forall {χ : HeckeCharacter K} {τ : ℝ}
    (hτ : ∀ x : IdeleGroup K, (χ.toIdele x : ℂ) = ((ideleModule K x : ℝ) : ℂ) ^ ((τ : ℂ) * I))
    (w : InfinitePlace K) : archExponent w χ = τ := by
  refine archExponent_unique w χ fun t ↦ ?_
  rw [hτ, ideleModule_moduleSection]

theorem forall_normOne_eq_one_iff (χ : HeckeCharacter K) :
    (∀ v : normOneSubgroup K, χ.toIdele (v : IdeleGroup K) = 1) ↔
      ∃ τ : ℝ, ∀ x : IdeleGroup K,
        (χ.toIdele x : ℂ) = ((ideleModule K x : ℝ) : ℂ) ^ ((τ : ℂ) * I) := by
  constructor
  · intro h
    let w : InfinitePlace K := Classical.arbitrary _
    refine ⟨archExponent w χ, fun x ↦ ?_⟩
    have hv : (moduleSection w (ideleModule K x))⁻¹ * x ∈ normOneSubgroup K := by
      rw [normOneSubgroup, MonoidHom.mem_ker, map_mul, map_inv, ideleModule_moduleSection,
        inv_mul_cancel]
    have hx : x = moduleSection w (ideleModule K x) * ((moduleSection w (ideleModule K x))⁻¹ * x) :=
      (mul_inv_cancel_left _ _).symm
    conv_lhs => rw [hx]
    rw [map_mul, Circle.coe_mul, archExponent_spec,
      show χ.toIdele ((moduleSection w (ideleModule K x))⁻¹ * x) = 1 from h ⟨_, hv⟩, Circle.coe_one,
      mul_one]
  · rintro ⟨τ, hτ⟩ v
    refine Circle.ext ?_
    have hv : (ideleModule K (v : IdeleGroup K) : ℝ) = 1 := mem_normOneSubgroup.1 v.2
    rw [hτ, hv, ofReal_one, one_cpow, Circle.coe_one]

def thetaFun (w : InfinitePlace K) (F : 𝔸[K] → ℂ) (χ : HeckeCharacter K) (x : ℝ) : ℂ :=
  if hx : 0 < x then thetaIntegral w F χ ⟨x, hx⟩ else 0

theorem thetaFun_of_pos (w : InfinitePlace K) (F : 𝔸[K] → ℂ) (χ : HeckeCharacter K) {x : ℝ}
    (hx : 0 < x) : thetaFun w F χ x = thetaIntegral w F χ ⟨x, hx⟩ :=
  dif_pos hx

theorem continuousOn_thetaFun (w : InfinitePlace K) {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) : ContinuousOn (thetaFun w F χ) (Set.Ioi 0) := by
  rw [continuousOn_iff_continuous_domRestrict]
  have h : (Set.Ioi (0 : ℝ)).domRestrict (thetaFun w F χ) =
      thetaIntegral w F χ ∘ fun x : Set.Ioi (0 : ℝ) ↦ (⟨x.1, x.2⟩ : {r : ℝ // 0 < r}) := by
    funext x
    exact thetaFun_of_pos w F χ x.2
  rw [h]
  exact (continuous_thetaIntegral w hF χ).comp (continuous_subtype_val.subtype_mk _)

theorem thetaFun_one_div (w : InfinitePlace K) {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) (x : ℝ) (hx : x ∈ Set.Ioi 0) :
    thetaFun w F χ (1 / x) = ((1 : ℂ) * ↑(x ^ (1 : ℝ))) • thetaFun w (adelicFourier K F) χ⁻¹ x := by
  have hx' : 0 < x := hx
  have hx1 : 0 < 1 / x := one_div_pos.2 hx'
  rw [thetaFun_of_pos w F χ hx1, thetaFun_of_pos w _ χ⁻¹ hx', Real.rpow_one, one_mul, smul_eq_mul]
  have h : (⟨1 / x, hx1⟩ : {r : ℝ // 0 < r}) = (⟨x, hx'⟩ : {r : ℝ // 0 < r})⁻¹ :=
    Subtype.ext (by rw [Positive.coe_inv]; exact one_div x)
  rw [h, thetaIntegral_inv w hF χ]

theorem isBigO_thetaFun_sub (w : InfinitePlace K) {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) (r : ℝ) :
    (fun x ↦ thetaFun w F χ x - thetaConstant F χ) =O[atTop] (· ^ r) := by
  obtain ⟨N, hN⟩ := exists_nat_ge (-r)
  obtain ⟨M, hM⟩ := exists_norm_thetaIntegral_sub_le w hF χ N
  refine Asymptotics.IsBigO.of_bound M ?_
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with x hx
  have hx0 : 0 < x := zero_lt_one.trans_le hx
  have h := hM ⟨x, hx0⟩ hx
  rw [← thetaFun_of_pos w F χ hx0] at h
  have hpow : (x ^ N)⁻¹ ≤ x ^ r := by
    rw [← Real.rpow_natCast, ← Real.rpow_neg hx0.le]
    exact Real.rpow_le_rpow_of_exponent_le hx (by linarith)
  have hM0 : 0 ≤ M := by
    have h1 : 0 ≤ (x ^ N)⁻¹ * M := (norm_nonneg _).trans h
    exact (mul_nonneg_iff_of_pos_left (inv_pos.2 (pow_pos hx0 N))).1 h1
  rw [Real.norm_of_nonneg (Real.rpow_nonneg hx0.le r), mul_comm M]
  exact h.trans (mul_le_mul_of_nonneg_right hpow hM0)

def thetaPair (w : InfinitePlace K) {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) : WeakFEPair ℂ where
  f := thetaFun w F χ
  g := thetaFun w (adelicFourier K F) χ⁻¹
  k := 1
  ε := 1
  f₀ := thetaConstant F χ
  g₀ := thetaConstant (adelicFourier K F) χ⁻¹
  hf_int := (continuousOn_thetaFun w hF χ).locallyIntegrableOn measurableSet_Ioi
  hg_int := (continuousOn_thetaFun w (adelicFourier_mem_schwartzBruhat hF) χ⁻¹).locallyIntegrableOn
    measurableSet_Ioi
  hk := one_pos
  hε := one_ne_zero
  h_feq := thetaFun_one_div w hF χ
  hf_top := isBigO_thetaFun_sub w hF χ
  hg_top := isBigO_thetaFun_sub w (adelicFourier_mem_schwartzBruhat hF) χ⁻¹

theorem weakFEPair_Λ_congr {P Q : WeakFEPair ℂ} (hf : P.f = Q.f) (hg : P.g = Q.g) (hk : P.k = Q.k)
    (hε : P.ε = Q.ε) (hf₀ : P.f₀ = Q.f₀) (hg₀ : P.g₀ = Q.g₀) : P.Λ = Q.Λ := by
  cases P
  cases Q
  simp only at hf hg hk hε hf₀ hg₀
  subst hf hg hk hε hf₀ hg₀
  rfl


omit [NumberField K] in
theorem tsum_units_eq_tsum_sub {G : K → ℂ} (hG : Summable G) :
    ∑' ξ : Kˣ, G ξ = ∑' ξ : K, G ξ - G 0 := by
  classical
  rw [hG.tsum_eq_add_tsum_ite 0, add_sub_cancel_left]
  refine (tsum_congr fun ξ : Kˣ ↦ (if_neg ξ.ne_zero).symm).trans
    (Function.Injective.tsum_eq Units.val_injective (f := fun ξ ↦ if ξ = 0 then 0 else G ξ)
      fun ξ hξ ↦ ?_)
  have h0 : ξ ≠ 0 := fun h ↦ hξ (by simp [h])
  exact ⟨Units.mk0 ξ h0, rfl⟩

theorem partialZeta_eq (w : InfinitePlace K) {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) (t : {r : ℝ // 0 < r}) :
    partialZeta w F χ t =
      (χ.toIdele (moduleSection w t) : ℂ) * (thetaIntegral w F χ t - thetaConstant F χ) := by
  rw [partialZeta_eq_setIntegral w (continuous_of_mem_schwartzBruhat hF),
    thetaIntegral_sub_thetaConstant w hF χ, ← integral_const_mul]
  refine integral_congr_ae (Eventually.of_forall fun u ↦ ?_)
  set y := moduleSection w t * (u : IdeleGroup K)
  have hy : ∀ ξ : Kˣ, ((diagonal K ξ * moduleSection w t * (u : IdeleGroup K) : IdeleGroup K) :
      𝔸[K]) = y • algebraMap K 𝔸[K] (ξ : K) := fun ξ ↦ by
    rw [mul_assoc, Units.val_mul, coe_diagonal, Units.smul_def, smul_eq_mul, mul_comm]
  have hs : Summable fun ξ : K ↦ F (y • algebraMap K 𝔸[K] ξ) :=
    (summable_norm_smul_algebraMap y hF).of_norm
  show (∑' ξ : Kˣ, F ((diagonal K ξ * moduleSection w t * (u : IdeleGroup K) : IdeleGroup K) :
      𝔸[K]) * (χ.toIdele y : ℂ)) = _
  simp_rw [hy]
  rw [tsum_mul_right, tsum_units_eq_tsum_sub hs, smul_algebraMap_zero, map_mul, Circle.coe_mul]
  simp only [adelicTheta]
  ring

theorem globalZeta_eq_mellin (w : InfinitePlace K) {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) {s : ℂ} (hs : 1 < s.re) :
    globalZeta F χ s = mellin (fun x ↦ thetaFun w F χ x - thetaConstant F χ)
      (s + (archExponent w χ : ℂ) * I) := by
  set z := s + (archExponent w χ : ℂ) * I
  set g : ℝ → ℂ := fun x ↦ (thetaFun w F χ x - thetaConstant F χ) * (x : ℂ) ^ z with hg
  rw [(globalZeta_eq_integral_partialZeta w hF χ hs).2]
  have h : (fun t : {r : ℝ // 0 < r} ↦ partialZeta w F χ t * ((t : ℝ) : ℂ) ^ s) =
      fun t : {r : ℝ // 0 < r} ↦ g (t : ℝ) := by
    funext t
    have ht : ((t : ℝ) : ℂ) ≠ 0 := ofReal_ne_zero.2 t.2.ne'
    rw [hg]
    beta_reduce
    rw [partialZeta_eq w hF χ, archExponent_spec, thetaFun_of_pos w F χ t.2]
    simp only [z]
    rw [cpow_add _ _ ht]
    ring
  rw [h, integral_posRealMeasure g, mellin]
  refine setIntegral_congr_fun measurableSet_Ioi fun x hx ↦ ?_
  have hx0 : (x : ℂ) ≠ 0 := ofReal_ne_zero.2 (ne_of_gt hx)
  simp only [hg, real_smul, smul_eq_mul]
  rw [cpow_sub _ _ hx0, cpow_one, ofReal_inv, div_eq_mul_inv]
  ring

theorem globalZeta_eq_Λ (w : InfinitePlace K) {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) {s : ℂ} (hs : 1 < s.re) :
    globalZeta F χ s = (thetaPair w hF χ).Λ (s + (archExponent w χ : ℂ) * I) := by
  have hre : (thetaPair w hF χ).k < (s + (archExponent w χ : ℂ) * I).re := by
    simpa [thetaPair] using hs
  rw [globalZeta_eq_mellin w hF χ hs]
  exact ((thetaPair w hF χ).hasMellin hre).2


open Classical in
def tateZetaAt (w : InfinitePlace K) (F : 𝔸[K] → ℂ) (χ : HeckeCharacter K) (s : ℂ) : ℂ :=
  if hF : F ∈ schwartzBruhat K then (thetaPair w hF χ).Λ (s + (archExponent w χ : ℂ) * I) else 0

open Classical in
theorem tateZetaAt_eq (w : InfinitePlace K) {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) :
    tateZetaAt w F χ = fun s ↦ (thetaPair w hF χ).Λ (s + (archExponent w χ : ℂ) * I) := by
  funext s
  exact dif_pos hF

theorem tateZetaAt_eq_globalZeta (w : InfinitePlace K) {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) {s : ℂ} (hs : 1 < s.re) : tateZetaAt w F χ s = globalZeta F χ s := by
  rw [tateZetaAt_eq w hF, globalZeta_eq_Λ w hF χ hs]

theorem tateZetaAt_one_sub (w : InfinitePlace K) {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) (s : ℂ) :
    tateZetaAt w F χ (1 - s) = tateZetaAt w (adelicFourier K F) χ⁻¹ s := by
  have hF' := adelicFourier_mem_schwartzBruhat hF
  rw [tateZetaAt_eq w hF, tateZetaAt_eq w hF', archExponent_inv]
  set P := thetaPair w hF χ
  have hg : (thetaPair w hF' χ⁻¹).g = P.symm.g := by
    show thetaFun w (adelicFourier K (adelicFourier K F)) χ⁻¹⁻¹ = thetaFun w F χ
    rw [adelicFourier_adelicFourier hF, inv_inv]
    funext x
    simp only [thetaFun, thetaIntegral_neg]
  have hg₀ : (thetaPair w hF' χ⁻¹).g₀ = P.symm.g₀ := by
    show thetaConstant (adelicFourier K (adelicFourier K F)) χ⁻¹⁻¹ = thetaConstant F χ
    rw [adelicFourier_adelicFourier hF, inv_inv]
    simp only [thetaConstant, neg_zero]
  have hε : (thetaPair w hF' χ⁻¹).ε = P.symm.ε := by
    show (1 : ℂ) = (1 : ℂ)⁻¹
    rw [inv_one]
  have hQ : (thetaPair w hF' χ⁻¹).Λ = P.symm.Λ :=
    weakFEPair_Λ_congr rfl hg rfl hε rfl hg₀
  have h := P.functional_equation (s - (archExponent w χ : ℂ) * I)
  have hk : ((P.k : ℝ) : ℂ) = 1 := by simp [P, thetaPair]
  rw [hk, show P.ε = 1 from rfl, one_smul] at h
  simp only
  rw [hQ, show (1 - s + (archExponent w χ : ℂ) * I) = 1 - (s - (archExponent w χ : ℂ) * I) by ring, h]
  congr 1
  push_cast
  ring

theorem thetaConstant_eq_zero {χ : HeckeCharacter K}
    (hχ : ∃ v : normOneSubgroup K, χ.toIdele (v : IdeleGroup K) ≠ 1) (F : 𝔸[K] → ℂ) :
    thetaConstant F χ = 0 := by
  rw [thetaConstant, setIntegral_char_eq_zero hχ, mul_zero]

theorem thetaConstant_eq_volume {χ : HeckeCharacter K}
    (hχ : ∀ v : normOneSubgroup K, χ.toIdele (v : IdeleGroup K) = 1) (F : 𝔸[K] → ℂ) :
    thetaConstant F χ = ((normOneClassMeasure K Set.univ).toReal : ℂ) * F 0 := by
  rw [thetaConstant, setIntegral_char_eq_volume hχ, mul_comm]

theorem differentiable_tateZetaAt (w : InfinitePlace K) {F : 𝔸[K] → ℂ}
    (hF : F ∈ schwartzBruhat K) {χ : HeckeCharacter K}
    (hχ : ∃ v : normOneSubgroup K, χ.toIdele (v : IdeleGroup K) ≠ 1) :
    Differentiable ℂ (tateZetaAt w F χ) := by
  have hχ' : ∃ v : normOneSubgroup K, χ⁻¹.toIdele (v : IdeleGroup K) ≠ 1 := by
    obtain ⟨v, hv⟩ := hχ
    exact ⟨v, by rw [toIdele_inv, ne_eq, inv_eq_one]; exact hv⟩
  rw [tateZetaAt_eq w hF]
  intro s
  exact ((thetaPair w hF χ).differentiableAt_Λ (Or.inr (thetaConstant_eq_zero hχ F))
    (Or.inr (thetaConstant_eq_zero hχ' _))).comp s (differentiableAt_id.add_const _)

theorem tendsto_add_const_nhdsNE (a c : ℂ) :
    Tendsto (fun s : ℂ ↦ s + c) (𝓝[≠] a) (𝓝[≠] (a + c)) := by
  refine tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _
    ((continuous_id.add continuous_const).tendsto a |>.mono_left nhdsWithin_le_nhds) ?_
  filter_upwards [self_mem_nhdsWithin] with s hs
  exact fun h ↦ hs (add_right_cancel h)

section Trivial

variable {χ : HeckeCharacter K} {τ : ℝ}
  (hτ : ∀ x : IdeleGroup K, (χ.toIdele x : ℂ) = ((ideleModule K x : ℝ) : ℂ) ^ ((τ : ℂ) * I))
include hτ

theorem forall_normOne_eq_one_of_forall :
    ∀ v : normOneSubgroup K, χ.toIdele (v : IdeleGroup K) = 1 :=
  (forall_normOne_eq_one_iff χ).2 ⟨τ, hτ⟩

theorem differentiableAt_tateZetaAt (w : InfinitePlace K) {F : 𝔸[K] → ℂ}
    (hF : F ∈ schwartzBruhat K) {s : ℂ} (hs₀ : s ≠ -((τ : ℂ) * I)) (hs₁ : s ≠ 1 - (τ : ℂ) * I) :
    DifferentiableAt ℂ (tateZetaAt w F χ) s := by
  rw [tateZetaAt_eq w hF, archExponent_eq_of_forall hτ w]
  refine ((thetaPair w hF χ).differentiableAt_Λ (Or.inl ?_) (Or.inl ?_)).comp s
    (differentiableAt_id.add_const _)
  · intro h
    exact hs₀ (eq_neg_of_add_eq_zero_left h)
  · intro h
    have hk : ((thetaPair w hF χ).k : ℂ) = 1 := by simp [thetaPair]
    rw [hk] at h
    exact hs₁ (by rw [← h]; ring)

theorem tendsto_mul_tateZetaAt_neg (w : InfinitePlace K) {F : 𝔸[K] → ℂ}
    (hF : F ∈ schwartzBruhat K) :
    Tendsto (fun s ↦ (s + (τ : ℂ) * I) * tateZetaAt w F χ s) (𝓝[≠] (-((τ : ℂ) * I)))
      (𝓝 (-(((normOneClassMeasure K Set.univ).toReal : ℂ) * F 0))) := by
  rw [tateZetaAt_eq w hF, archExponent_eq_of_forall hτ w]
  set P := thetaPair w hF χ
  have h := P.Λ_residue_zero
  have hf₀ : P.f₀ = ((normOneClassMeasure K Set.univ).toReal : ℂ) * F 0 :=
    thetaConstant_eq_volume (forall_normOne_eq_one_of_forall hτ) F
  rw [hf₀] at h
  have ht := tendsto_add_const_nhdsNE (-((τ : ℂ) * I)) ((τ : ℂ) * I)
  rw [neg_add_cancel] at ht
  exact h.comp ht

theorem tendsto_mul_tateZetaAt_one_sub (w : InfinitePlace K) {F : 𝔸[K] → ℂ}
    (hF : F ∈ schwartzBruhat K) :
    Tendsto (fun s ↦ (s - (1 - (τ : ℂ) * I)) * tateZetaAt w F χ s) (𝓝[≠] (1 - (τ : ℂ) * I))
      (𝓝 (((normOneClassMeasure K Set.univ).toReal : ℂ) * adelicFourier K F 0)) := by
  rw [tateZetaAt_eq w hF, archExponent_eq_of_forall hτ w]
  set P := thetaPair w hF χ
  have h := P.Λ_residue_k
  have hg₀ : P.g₀ = ((normOneClassMeasure K Set.univ).toReal : ℂ) * adelicFourier K F 0 := by
    refine thetaConstant_eq_volume (fun v ↦ ?_) _
    rw [toIdele_inv, forall_normOne_eq_one_of_forall hτ v, inv_one]
  have hk : ((P.k : ℝ) : ℂ) = 1 := by simp [P, thetaPair]
  rw [hg₀, hk, show P.ε = 1 from rfl, one_smul] at h
  have ht := tendsto_add_const_nhdsNE (1 - (τ : ℂ) * I) ((τ : ℂ) * I)
  rw [sub_add_cancel] at ht
  refine (h.comp ht).congr fun s ↦ ?_
  simp only [Function.comp_apply, smul_eq_mul]
  ring_nf

end Trivial

def tateZeta (F : 𝔸[K] → ℂ) (χ : HeckeCharacter K) (s : ℂ) : ℂ :=
  tateZetaAt (Classical.arbitrary (InfinitePlace K)) F χ s

theorem tateZeta_eq_globalZeta {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K) (χ : HeckeCharacter K)
    {s : ℂ} (hs : 1 < s.re) : tateZeta F χ s = globalZeta F χ s :=
  tateZetaAt_eq_globalZeta (Classical.arbitrary _) hF χ hs

theorem tateZeta_eq_tateZeta_one_sub {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K)
    (χ : HeckeCharacter K) (s : ℂ) :
    tateZeta F χ s = tateZeta (adelicFourier K F) χ⁻¹ (1 - s) := by
  have h := tateZetaAt_one_sub (Classical.arbitrary (InfinitePlace K)) hF χ (1 - s)
  rw [sub_sub_cancel] at h
  exact h

theorem differentiable_tateZeta {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K) {χ : HeckeCharacter K}
    (hχ : ∃ v : normOneSubgroup K, χ.toIdele (v : IdeleGroup K) ≠ 1) :
    Differentiable ℂ (tateZeta F χ) :=
  differentiable_tateZetaAt (Classical.arbitrary _) hF hχ

theorem differentiableAt_tateZeta {χ : HeckeCharacter K} {τ : ℝ}
    (hτ : ∀ x : IdeleGroup K, (χ.toIdele x : ℂ) = ((ideleModule K x : ℝ) : ℂ) ^ ((τ : ℂ) * I))
    {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K) {s : ℂ} (hs₀ : s ≠ -((τ : ℂ) * I))
    (hs₁ : s ≠ 1 - (τ : ℂ) * I) : DifferentiableAt ℂ (tateZeta F χ) s :=
  differentiableAt_tateZetaAt hτ (Classical.arbitrary _) hF hs₀ hs₁

theorem tendsto_mul_tateZeta_neg {χ : HeckeCharacter K} {τ : ℝ}
    (hτ : ∀ x : IdeleGroup K, (χ.toIdele x : ℂ) = ((ideleModule K x : ℝ) : ℂ) ^ ((τ : ℂ) * I))
    {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K) :
    Tendsto (fun s ↦ (s + (τ : ℂ) * I) * tateZeta F χ s) (𝓝[≠] (-((τ : ℂ) * I)))
      (𝓝 (-(((normOneClassMeasure K Set.univ).toReal : ℂ) * F 0))) :=
  tendsto_mul_tateZetaAt_neg hτ (Classical.arbitrary _) hF

theorem tendsto_mul_tateZeta_one_sub {χ : HeckeCharacter K} {τ : ℝ}
    (hτ : ∀ x : IdeleGroup K, (χ.toIdele x : ℂ) = ((ideleModule K x : ℝ) : ℂ) ^ ((τ : ℂ) * I))
    {F : 𝔸[K] → ℂ} (hF : F ∈ schwartzBruhat K) :
    Tendsto (fun s ↦ (s - (1 - (τ : ℂ) * I)) * tateZeta F χ s) (𝓝[≠] (1 - (τ : ℂ) * I))
      (𝓝 (((normOneClassMeasure K Set.univ).toReal : ℂ) * adelicFourier K F 0)) :=
  tendsto_mul_tateZetaAt_one_sub hτ (Classical.arbitrary _) hF

end

end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.TateThesis.TateMain =====
