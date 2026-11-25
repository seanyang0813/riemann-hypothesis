module

public import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteDimensionalOfGrowthOn
public import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios
public import Formalism.LocalToGlobal.ProjectiveLattices.KapTrdegPf
public import Formalism.LocalToGlobal.ProjectiveLattices.FnTrdegOf
public import Mathlib.Basic.NNReal.Defs
public import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.RingTheory.Valuation.ValuationSubring
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring
public import Mathlib.Data.Int.WithZero
public import Mathlib.FieldTheory.IntermediateField.Adjoin.Algebra
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation
public import Mathlib.RingTheory.Adjoin.FG
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs
public import Mathlib.RingTheory.Valuation.Basic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConeDegreeGrowthChowFormIntegrality
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RankGrowthLimsupShiftLe
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.Polynomial.Basic
import Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings
import Mathlib.Tactic.Basify
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Definitions.Divisors.AevalEqZeroOfMemConeIdeal
import Development.AbelianVarietyTheory.Definitions.Foundations.IsProbabilityMeasureMuPart
import Mathlib.Algebra.Module.StablyFree.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormGrowthOnComponentNsmul, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLinearSystemRatioOfDegreeOfGeneratesByRatios, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormsRatioOnComponentOfBirational, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagSpaceComponentFunctionFieldFg, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralOfForallRealValuationLeOne, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralInConeDegreeOfValuativeBound, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralInConeDegreeOfValuativeBoundStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormGrowthLeImageDegreeLowerWeight, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComponentImageDegreeBetweenOfProportionality

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormGrowthOnComponentNsmul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormGrowthOnComponentNsmul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteDimensionalOfGrowthOn\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.RankGrowthLimsupShiftLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.DegCmp GlobalTheory.DegVal GlobalTheory.CovTop ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Filter
open scoped ENNReal NNReal

namespace GlobalTheory.GrowthMul

theorem limsup_le_iSup_classes {a : ℕ} (ha : 1 ≤ a) (f : ℕ → ℝ≥0∞) :
    limsup f atTop ≤ ⨆ j : Fin a, limsup (fun k => f (a * k + j)) atTop := by
  refine le_of_forall_gt_imp_ge_of_dense fun x hx => ?_
  have h1 : ∀ j : Fin a, ∀ᶠ k in atTop, f (a * k + j) < x := fun j =>
    eventually_lt_of_limsup_lt ((le_iSup (fun j : Fin a => limsup (fun k => f (a * k + j)) atTop) j).trans_lt hx)
  choose K hK using fun j => eventually_atTop.1 (h1 j)
  refine limsup_le_of_le (by isBoundedDefault) (eventually_atTop.2 ⟨a * Finset.univ.sup K, fun τ hτ => ?_⟩)
  have hm : τ % a < a := Nat.mod_lt _ (by omega)
  have hq : Finset.univ.sup K ≤ τ / a := (Nat.le_div_iff_mul_le (by omega)).2 (by rw [mul_comm]; exact hτ)
  have := hK ⟨τ % a, hm⟩ (τ / a) ((Finset.le_sup (Finset.mem_univ _)).trans hq)
  rw [Nat.div_add_mod] at this
  exact this.le

theorem term_mul_eq (D : ℕ) {a : ℕ} (ha : 1 ≤ a) (r : ℕ → ℕ∞) {k : ℕ} (hk : 1 ≤ k) :
    (D.factorial : ℝ≥0∞) * (r (a * k) : ℝ≥0∞) / (k : ℝ≥0∞) ^ D =
      (a : ℝ≥0∞) ^ D * ((D.factorial : ℝ≥0∞) * (r (a * k) : ℝ≥0∞) / ((a * k : ℕ) : ℝ≥0∞) ^ D) := by
  have ha0 : (a : ℝ≥0∞) ^ D ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.2 (by omega))
  have hat : (a : ℝ≥0∞) ^ D ≠ ⊤ := ENNReal.pow_ne_top (ENNReal.natCast_ne_top a)
  rw [Nat.cast_mul, mul_pow, ← mul_div_assoc, ENNReal.mul_div_mul_left _ _ ha0 hat, mul_comm]

theorem growth_mul_le (D : ℕ) {a : ℕ} (ha : 1 ≤ a) (r : ℕ → ℕ∞) :
    growth D (fun k => r (a * k)) ≤ (a : ℝ≥0∞) ^ D * growth D r := by
  have hat : (a : ℝ≥0∞) ^ D ≠ ⊤ := ENNReal.pow_ne_top (ENNReal.natCast_ne_top a)
  set g : ℕ → ℝ≥0∞ := fun τ => (D.factorial : ℝ≥0∞) * (r τ : ℝ≥0∞) / (τ : ℝ≥0∞) ^ D
  have h1 : growth D (fun k => r (a * k)) = limsup (fun k => (a : ℝ≥0∞) ^ D * g (a * k)) atTop :=
    limsup_congr ((eventually_ge_atTop 1).mono fun k hk => term_mul_eq D ha r hk)
  rw [h1, ENNReal.limsup_const_mul_of_ne_top hat, growth]
  refine mul_le_mul_of_nonneg_left ?_ (zero_le)
  have ht : Tendsto (fun k : ℕ => a * k) atTop atTop :=
    tendsto_id.const_mul_atTop' (by omega)
  exact (limsup_comp g (fun k => a * k) atTop).le.trans (limsup_le_limsup_of_le ht)

theorem limsup_class_le (D : ℕ) {a : ℕ} (ha : 1 ≤ a) (r : ℕ → ℕ∞) (j c : ℕ)
    (h : ∀ k, r (a * k + j) ≤ r (a * (k + c))) :
    limsup (fun k => (D.factorial : ℝ≥0∞) * (r (a * k + j) : ℝ≥0∞) / ((a * k + j : ℕ) : ℝ≥0∞) ^ D) atTop ≤
      ((a : ℝ≥0∞) ^ D)⁻¹ * growth D (fun k => r (a * k)) := by
  have ha0 : (a : ℝ≥0∞) ^ D ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.2 (by omega))
  have hit : ((a : ℝ≥0∞) ^ D)⁻¹ ≠ ⊤ := ENNReal.inv_ne_top.2 ha0
  refine (limsup_le_limsup ((eventually_ge_atTop 1).mono fun k hk => ?_)).trans
    ((ENNReal.limsup_const_mul_of_ne_top hit).le.trans (by gcongr; exact GlobalTheory.GrowthShift.growth_shift_le D c _))
  show _ ≤ ((a : ℝ≥0∞) ^ D)⁻¹ * ((D.factorial : ℝ≥0∞) * (r (a * (k + c)) : ℝ≥0∞) / (k : ℝ≥0∞) ^ D)
  have hk0 : (k : ℝ≥0∞) ^ D ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.2 (by omega))
  have hkt : (k : ℝ≥0∞) ^ D ≠ ⊤ := ENNReal.pow_ne_top (ENNReal.natCast_ne_top k)
  have hat : (a : ℝ≥0∞) ^ D ≠ ⊤ := ENNReal.pow_ne_top (ENNReal.natCast_ne_top a)
  have e : ((a : ℝ≥0∞) ^ D)⁻¹ * ((D.factorial : ℝ≥0∞) * (r (a * (k + c)) : ℝ≥0∞) / (k : ℝ≥0∞) ^ D) =
      (D.factorial : ℝ≥0∞) * (r (a * (k + c)) : ℝ≥0∞) / ((a : ℝ≥0∞) ^ D * (k : ℝ≥0∞) ^ D) := by
    rw [div_eq_mul_inv, div_eq_mul_inv, ENNReal.mul_inv (Or.inl ha0) (Or.inl hat)]
    ring
  rw [e]
  refine ENNReal.div_le_div (by gcongr; exact h k) ?_
  rw [← mul_pow]
  gcongr
  exact_mod_cast Nat.le_add_right _ _

theorem growth_mul_eq_of_classes (D : ℕ) {a : ℕ} (ha : 1 ≤ a) (r : ℕ → ℕ∞)
    (h : ∀ j, j < a → ∃ c, ∀ k, r (a * k + j) ≤ r (a * (k + c))) :
    growth D (fun k => r (a * k)) = (a : ℝ≥0∞) ^ D * growth D r := by
  refine le_antisymm (growth_mul_le D ha r) ?_
  have ha0 : (a : ℝ≥0∞) ^ D ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.2 (by omega))
  have hat : (a : ℝ≥0∞) ^ D ≠ ⊤ := ENNReal.pow_ne_top (ENNReal.natCast_ne_top a)
  have h1 : growth D r ≤ ((a : ℝ≥0∞) ^ D)⁻¹ * growth D (fun k => r (a * k)) := by
    refine (limsup_le_iSup_classes ha _).trans (iSup_le fun j => ?_)
    obtain ⟨c, hc⟩ := h j j.2
    exact limsup_class_le D ha r j c hc
  calc (a : ℝ≥0∞) ^ D * growth D r ≤ (a : ℝ≥0∞) ^ D * (((a : ℝ≥0∞) ^ D)⁻¹ * growth D (fun k => r (a * k))) :=
        mul_le_mul_of_nonneg_left h1 zero_le
    _ = growth D (fun k => r (a * k)) := by rw [← mul_assoc, ENNReal.mul_inv_cancel ha0 hat, one_mul]

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {r : ℕ} {U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r}

theorem pow_mul_mem_cuspOn {Z : Comp Xo c} {G : WTZ E} (hG : Even G.2) {τ₀ τ : ℕ} {g f : Rul Xo c}
    (hg : g ∈ cuspOn U Z (τ₀ • G)) (hf : f ∈ cuspOn U Z (τ • G)) (n : ℕ) :
    g ^ n * f ∈ cuspOn U Z ((τ + n * τ₀) • G) := by
  induction n with
  | zero => simpa using hf
  | succ n ih =>
    have e : (τ + (n + 1) * τ₀) • G = (τ + n * τ₀) • G + τ₀ • G := by rw [← add_nsmul]; ring_nf
    rw [e, pow_succ, mul_right_comm]
    exact GlobalTheory.DegTop.mul_mem_cuspOn (GlobalTheory.DegTop.even_nsmul hG _) (GlobalTheory.DegTop.even_nsmul hG _) ih hg.1

set_option synthInstance.maxHeartbeats 100000 in
theorem rank_le_of_ne_zero {Z : Comp Xo c} {G : WTZ E} (hG : Even G.2) {τ₀ : ℕ} {g : Rul Xo c}
    (hg : g ∈ cuspOn U Z (τ₀ • G)) (hg0 : g ≠ 0) (τ n : ℕ) :
    Module.rank c.F (cuspOn U Z (τ • G)) ≤ Module.rank c.F (cuspOn U Z ((τ + n * τ₀) • G)) := by
  have hv : genVal Z g ≠ 0 := fun h0 => hg0 (GlobalTheory.DegTop.eq_zero_of_genVal hg h0)
  let m := (genVal Z).toLinearMap ∘ₗ LinearMap.mulLeft c.F (g ^ n)
  have hpow : genVal Z (g ^ n) ≠ 0 := by
    rw [map_pow]
    exact pow_ne_zero _ hv
  have hinj : Function.Injective (m ∘ₗ (cuspOn U Z (τ • G)).subtype) := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in
      rw [injective_iff_map_eq_zero]
    intro f hf
    have hzero : genVal Z (g ^ n * f) = 0 := hf
    rw [map_mul] at hzero
    exact Subtype.ext (GlobalTheory.DegTop.eq_zero_of_genVal f.2
      ((mul_eq_zero.1 hzero).resolve_left hpow))
  have hrank : Module.rank c.F ((cuspOn U Z (τ • G)).map m) =
      Module.rank c.F (cuspOn U Z (τ • G)) := by
    rw [← rank_range_of_injective _ hinj, LinearMap.range_comp, Submodule.range_subtype]
  rw [← hrank]
  refine (Submodule.rank_mono ?_).trans (rank_map_le (genVal Z).toLinearMap _)
  rintro _ ⟨f, hf, rfl⟩
  exact ⟨_, pow_mul_mem_cuspOn hG hg hf n, rfl⟩

theorem classes_bound (Z : Comp Xo c) {G : WTZ E} (hG : Even G.2) {a : ℕ} (ha : 1 ≤ a) (j : ℕ) :
    ∃ c' : ℕ, ∀ k, Cardinal.toENat (Module.rank c.F (cuspOn U Z ((a * k + j) • G))) ≤
      Cardinal.toENat (Module.rank c.F (cuspOn U Z ((a * (k + c')) • G))) := by
  by_cases hex : ∃ q : ℕ, ∃ g ∈ cuspOn U Z ((a * q + j) • G), g ≠ 0
  · obtain ⟨q, g, hg, hg0⟩ := hex
    refine ⟨j + (a - 1) * q, fun k => ?_⟩
    have e : a * (k + (j + (a - 1) * q)) = (a * k + j) + (a - 1) * (a * q + j) := by
      obtain ⟨b, rfl⟩ : ∃ b, a = b + 1 := ⟨a - 1, by omega⟩
      simp only [Nat.add_sub_cancel]
      ring
    rw [e]
    exact OrderHomClass.mono Cardinal.toENat (rank_le_of_ne_zero hG hg hg0 _ _)
  · push_neg at hex
    refine ⟨0, fun k => ?_⟩
    have h0 : cuspOn U Z ((a * k + j) • G) = ⊥ := (Submodule.eq_bot_iff _).2 (hex k)
    rw [h0, rank_bot, map_zero]
    exact zero_le

end GlobalTheory.GrowthMul

theorem GlobalTheory.GrowthMul.growthOn_nsmul : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (r : ℕ) (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r), UnfAll U → ∀ (Z : Comp Xo c) (G : WTZ E), Even G.2 → ∀ a : ℕ, 1 ≤ a → growthOn U Z (a • G) = (a : ℝ≥0∞) ^ dimFlag Dw * growthOn U Z G := by
  intro E _ _ _ H Dw l Xo c r U _ Z G hG a ha
  rw [growthOn, growthOn]
  convert GlobalTheory.GrowthMul.growth_mul_eq_of_classes (dimFlag Dw) ha (fun τ => Cardinal.toENat (Module.rank c.F (cuspOn U Z (τ • G))))
    (fun j _ => GlobalTheory.GrowthMul.classes_bound (U := U) Z hG ha j) using 4 with τ
  rw [smul_smul, mul_comm]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormGrowthOnComponentNsmul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLinearSystemRatioOfDegreeOfGeneratesByRatios =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLinearSystemRatioOfDegreeOfGeneratesByRatios", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.DegVal

open GlobalTheory.DegCmp

section

variable {K V Ω : Type} [Field K] [AddCommGroup V] [Module K V] [Field Ω] [Algebra K Ω]

def sameDegQuot (ev : V →ₗ[K] Ω) : IntermediateField K Ω where
  carrier := {x | ∃ (e : ℕ) (q : Ω), q ∈ (LinearMap.range ev) ^ e ∧ q ≠ 0 ∧ x * q ∈ (LinearMap.range ev) ^ e}
  mul_mem' := by
    rintro x y ⟨e, q, hq, hq0, hxq⟩ ⟨e', q', hq', hq'0, hyq'⟩
    refine ⟨e + e', q * q', ?_, mul_ne_zero hq0 hq'0, ?_⟩
    · rw [pow_add]; exact Submodule.mul_mem_mul hq hq'
    · rw [pow_add, show x * y * (q * q') = (x * q) * (y * q') by ring]
      exact Submodule.mul_mem_mul hxq hyq'
  add_mem' := by
    rintro x y ⟨e, q, hq, hq0, hxq⟩ ⟨e', q', hq', hq'0, hyq'⟩
    refine ⟨e + e', q * q', ?_, mul_ne_zero hq0 hq'0, ?_⟩
    · rw [pow_add]; exact Submodule.mul_mem_mul hq hq'
    · rw [pow_add, show (x + y) * (q * q') = (x * q) * q' + q * (y * q') by ring]
      exact Submodule.add_mem _ (Submodule.mul_mem_mul hxq hq') (Submodule.mul_mem_mul hq hyq')
  algebraMap_mem' a := by
    refine ⟨0, 1, by simp [Submodule.one_eq_range], one_ne_zero, ?_⟩
    rw [pow_zero, mul_one]
    exact Submodule.algebraMap_mem a
  inv_mem' := by
    rintro x ⟨e, q, hq, hq0, hxq⟩
    by_cases hx : x = 0
    · subst hx
      exact ⟨e, q, hq, hq0, by simpa using hxq⟩
    · refine ⟨e, x * q, hxq, mul_ne_zero hx hq0, ?_⟩
      rwa [show x⁻¹ * (x * q) = q by field_simp]

theorem ratioField_le_sameDegQuot (ev : V →ₗ[K] Ω) : ratioField ev ≤ sameDegQuot ev := by
  rw [ratioField, IntermediateField.adjoin_le_iff]
  rintro a ⟨v, w, rfl⟩
  by_cases hw : ev w = 0
  · rw [hw, div_zero]; exact (sameDegQuot ev).zero_mem
  · refine ⟨1, ev w, by simp, hw, ?_⟩
    rw [div_mul_cancel₀ _ hw, pow_one]
    exact LinearMap.mem_range_self ev v

theorem isRatio_of_genRatios (K V Ω : Type) [Field K] [AddCommGroup V] [Module K V] [Field Ω] [Algebra K Ω]
    (ev : V →ₗ[K] Ω) : GenRatios ev → ∀ (τ : ℕ) (t : Ω), IsRatio ev τ t := by
  rintro ⟨hev, htop⟩ τ t
  obtain ⟨w, hw⟩ : ∃ w, ev w ≠ 0 := by
    by_contra h
    push_neg at h
    exact hev (LinearMap.ext h)
  have hmem : t / ev w ^ τ ∈ sameDegQuot ev := by
    apply ratioField_le_sameDegQuot ev
    rw [htop]; trivial
  obtain ⟨e, q, hq, hq0, hp⟩ := hmem
  refine ⟨e, q, hq, hq0, ?_⟩
  have : t * q = (t / ev w ^ τ * q) * ev w ^ τ := by
    field_simp
  rw [this, add_comm, pow_add]
  exact Submodule.mul_mem_mul hp (Submodule.pow_mem_pow _ (LinearMap.mem_range_self ev w) τ)

end

end GlobalTheory.DegVal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLinearSystemRatioOfDegreeOfGeneratesByRatios =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormsRatioOnComponentOfBirational =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormsRatioOnComponentOfBirational", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLinearSystemRatioOfDegreeOfGeneratesByRatios\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\n\n"}
section -- clump:auto
@[expose] public section

open NumberField GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.DegCmp GlobalTheory.DegVal GlobalTheory.CovTop ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
open scoped ENNReal NNReal

namespace GlobalTheory.DegVal

set_option synthInstance.maxHeartbeats 1000000 in
theorem ratioOn_of_birOn : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (r : ℕ) (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r), ∀ (Z : Comp Xo c) (G : WTZ E), BirOn U Z G → RatioOn U Z G := by
  intro E _ _ _ H Dw l Xo c r U Z G hB τ t _
  exact _root_.GlobalTheory.DegVal.isRatio_of_genRatios _ _ _ _ hB τ _

end GlobalTheory.DegVal

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormsRatioOnComponentOfBirational =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagSpaceComponentFunctionFieldFg =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagSpaceComponentFunctionFieldFg", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\npublic import Formalism.LocalToGlobal.ProjectiveLattices.KapTrdegPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\npublic import Formalism.LocalToGlobal.ProjectiveLattices.FnTrdegOf\n\n"}
section -- clump:auto
@[expose] public section

open NumberField GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.DegCmp GlobalTheory.DegVal GlobalTheory.CovTop ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
open scoped ENNReal NNReal

namespace GlobalTheory.DegVal

theorem om_fg : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (r : ℕ) (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r), UnfAll U → ∀ Z : Comp Xo c, (⊤ : IntermediateField c.F (Om Z)).FG := by
  intro E _ _ _ H Dw l Xo c r U _ Z
  exact fnFG_of Xo c (kapFG_pf Xo c) Z

end GlobalTheory.DegVal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagSpaceComponentFunctionFieldFg =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralOfForallRealValuationLeOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralOfForallRealValuationLeOne", "h": "module\n\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.Valuation.ValuationSubring\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.AevalEqZeroOfMemConeIdeal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\nimport Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsProbabilityMeasureMuPart\npublic import Mathlib.Data.Int.WithZero\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Algebra\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation\n\n"}
section -- clump:auto
@[expose] public section

open NumberField GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.DegCmp GlobalTheory.DegVal GlobalTheory.CovTop ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
open scoped ENNReal NNReal

namespace GlobalTheory.DegVal

open IsDedekindDomain IsLocalRing

theorem exists_realValuation_of_discreteValuationSubring {Ω : Type} [Field Ω]
    (V : ValuationSubring Ω) [IsDiscreteValuationRing V] :
    ∃ ν : Valuation Ω ℝ≥0, (∀ x : V, ν (x : Ω) ≤ 1) ∧ ∀ x ∈ maximalIdeal V, ν (x : Ω) < 1 := by
  have hne : maximalIdeal V ≠ ⊥ := IsDiscreteValuationRing.not_a_field V
  let v : HeightOneSpectrum V := ⟨maximalIdeal V, inferInstance, hne⟩
  let hmono := (WithZeroMulInt.toNNReal_strictMono (e := 2) (by norm_num))
  refine ⟨Valuation.map { WithZeroMulInt.toNNReal (e := 2) (by norm_num) with
    monotone' := hmono.monotone } (v.valuation Ω),
    fun x => ?_, fun x hx => ?_⟩
  · have h := v.valuation_le_one (K := Ω) x
    have := hmono.monotone h
    simpa using this
  · have h := (v.valuation_lt_one_iff_mem (K := Ω) x).mpr hx
    have := hmono h
    simpa using this

theorem isIntegral_of_forall_realValuation_le_one : ∀ (K Ω : Type) [Field K] [CharZero K] [Field Ω] [Algebra K Ω], (⊤ : IntermediateField K Ω).FG → ∀ (A : Subalgebra K Ω), A.FG → ∀ t : Ω, (∀ ν : Valuation Ω ℝ≥0, (∀ a ∈ A, ν a ≤ 1) → ν t ≤ 1) → IsIntegral A t := by
  intro K Ω _ _ _ _ hfg A hA t ht
  by_contra hn
  have ht0 : t ≠ 0 := by
    rintro rfl
    exact hn isIntegral_zero
  have : Algebra.EssFiniteType K Ω := IntermediateField.fg_top_iff.mp hfg
  have : Algebra.EssFiniteType A Ω := .of_comp K A Ω
  have : Algebra.FiniteType K A := (Subalgebra.fg_iff_finiteType A).mp hA
  have : IsNoetherianRing A := Algebra.FiniteType.isNoetherianRing K A
  have hic : IsIntegrallyClosedIn (integralClosure A Ω).toSubring Ω :=
    inferInstanceAs (IsIntegrallyClosedIn (integralClosure A Ω) Ω)
  obtain ⟨W, hW, htW⟩ := Subring.exists_le_valuationSubring_of_isIntegrallyClosedIn
    (R := (integralClosure A Ω).toSubring) (x := t) hn
  have hinv : t⁻¹ ∈ W.nonunits := W.inv_mem_nonunits_iff.mpr (Or.inr htW)
  obtain ⟨V, h1, h2, -, h3⟩ := GlobalTheory.exists_discreteValuationSubring_of_valuationSubring (R := A) W
    (fun r => hW ((integralClosure A Ω).algebraMap_mem r))
    Set.finite_empty (Set.finite_singleton t⁻¹) (by simp) (by simpa using hinv)
    ⟨_, rfl, inv_ne_zero ht0⟩
  obtain ⟨ν, hν1, hνm⟩ := exists_realValuation_of_discreteValuationSubring V
  have hle : ν t ≤ 1 := ht ν fun a ha => hν1 ⟨a, h2 ⟨a, ha⟩⟩
  have hn3 : t⁻¹ ∈ V.nonunits := h3 _ rfl
  have htV : t⁻¹ ∈ V :=
    (V.valuation_le_one_iff _).mp (le_of_lt ((V.mem_nonunits_iff).mp hn3))
  have hm : (⟨t⁻¹, htV⟩ : V) ∈ maximalIdeal V :=
    (ValuationSubring.coe_mem_nonunits_iff (a := ⟨t⁻¹, htV⟩)).mp hn3
  have hlt : ν t⁻¹ < 1 := hνm _ hm
  have h1' : ν (t * t⁻¹) = 1 := by rw [mul_inv_cancel₀ ht0, map_one]
  rw [map_mul] at h1'
  have : ν t * ν t⁻¹ < 1 := lt_of_le_of_lt (mul_le_of_le_one_left zero_le hle) hlt
  exact absurd h1' this.ne

end GlobalTheory.DegVal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralOfForallRealValuationLeOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralInConeDegreeOfValuativeBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralInConeDegreeOfValuativeBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs\npublic import Mathlib.RingTheory.Adjoin.FG\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Mathlib.RingTheory.Valuation.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralOfForallRealValuationLeOne\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\n\n"}
section -- clump:auto
@[expose] public section

open NumberField GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.DegCmp GlobalTheory.DegVal GlobalTheory.CovTop ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
open scoped ENNReal NNReal

noncomputable section

namespace GlobalTheory.DegVal.ValInt

theorem ratFunc_top_fg {K Ω : Type} [Field K] [Field Ω] [Algebra K Ω] (h : (⊤ : IntermediateField K Ω).FG) :
    (⊤ : IntermediateField K (RatFunc Ω)).FG := by
  classical
  obtain ⟨S, hS⟩ := h
  refine ⟨insert RatFunc.X (S.image (algebraMap Ω (RatFunc Ω))), ?_⟩
  set F := IntermediateField.adjoin K
    (↑(insert RatFunc.X (S.image (algebraMap Ω (RatFunc Ω)))) : Set (RatFunc Ω)) with hF
  have hX : (RatFunc.X : RatFunc Ω) ∈ F := IntermediateField.subset_adjoin _ _ (by simp)
  have hc : ∀ a : Ω, algebraMap Ω (RatFunc Ω) a ∈ F := by
    intro a
    have ha : a ∈ IntermediateField.adjoin K (S : Set Ω) := hS ▸ IntermediateField.mem_top
    have hm : algebraMap Ω (RatFunc Ω) a ∈
        (IntermediateField.adjoin K (S : Set Ω)).map (IsScalarTower.toAlgHom K Ω (RatFunc Ω)) := ⟨a, ha, rfl⟩
    rw [IntermediateField.adjoin_map] at hm
    refine IntermediateField.adjoin.mono K _ _ ?_ hm
    rintro _ ⟨y, hy, rfl⟩
    exact Finset.mem_coe.2 (Finset.mem_insert_of_mem (Finset.mem_image_of_mem _ hy))
  have hp : ∀ p : Polynomial Ω, algebraMap (Polynomial Ω) (RatFunc Ω) p ∈ F := by
    intro p
    induction p using Polynomial.induction_on with
    | C a => rw [RatFunc.algebraMap_C, ← RatFunc.algebraMap_eq_C]; exact hc a
    | add p q hp hq => rw [map_add]; exact add_mem hp hq
    | monomial n a ih => rw [pow_succ, ← mul_assoc, map_mul, RatFunc.algebraMap_X]; exact mul_mem ih hX
  refine eq_top_iff.2 fun x _ => ?_
  rw [← RatFunc.num_div_denom x]
  exact div_mem (hp _) (hp _)

theorem isIntegral_of_map_subalgebra {K R L : Type} [Field K] [CommRing R] [Algebra K R] [CommRing L] [Algebra K L]
    (φ : R →ₐ[K] L) (hφ : Function.Injective φ) (B : Subalgebra K R) (y : R)
    (h : IsIntegral (B.map φ) (φ y)) : IsIntegral B y := by
  let e := B.equivMapOfInjective φ hφ
  obtain ⟨p, hm, hp⟩ := h
  refine ⟨p.map e.symm.toRingHom, hm.map _, hφ ?_⟩
  rw [map_zero, ← hp]
  change φ.toRingHom _ = _
  rw [Polynomial.hom_eval₂, Polynomial.eval₂_map]
  congr 1
  ext x
  exact congrArg Subtype.val (e.apply_symm_apply x)

theorem coneAlg_fg {K V Ω : Type} [Field K] [AddCommGroup V] [Module K V] [Field Ω] [Algebra K Ω]
    [FiniteDimensional K V] (ev : V →ₗ[K] Ω) : (coneAlg ev).FG := by
  let b := Module.finBasis K V
  let ψ : V →ₗ[K] Polynomial Ω := (LinearMap.mulLeft K (Polynomial.X : Polynomial Ω)) ∘ₗ
    (IsScalarTower.toAlgHom K Ω (Polynomial Ω)).toLinearMap ∘ₗ ev
  have e : coneAlg ev = Algebra.adjoin K (ψ '' Set.range b) := by
    rw [← Algebra.adjoin_span, ← Submodule.map_span, b.span_eq, Submodule.map_top]
    rfl
  exact Subalgebra.fg_def.2 ⟨_, (Set.finite_range b).image ψ, e.symm⟩

theorem isIntDeg_of_valBound : ∀ (K V Ω : Type) [Field K] [AddCommGroup V] [Module K V] [Field Ω] [Algebra K Ω]
    (ev : V →ₗ[K] Ω), CharZero K → FiniteDimensional K V → (⊤ : IntermediateField K Ω).FG →
    ∀ (τ : ℕ) (t : Ω), ValBound ev τ t → IsIntDeg ev τ t := by
  intro K V Ω _ _ _ _ _ ev hK hV hfg τ t hb
  have := hK
  have := hV
  let φ : Polynomial Ω →ₐ[K] RatFunc Ω := IsScalarTower.toAlgHom K (Polynomial Ω) (RatFunc Ω)
  have hφ : Function.Injective φ := RatFunc.algebraMap_injective Ω
  have hφa : ∀ p, φ p = algebraMap (Polynomial Ω) (RatFunc Ω) p := fun _ => rfl
  refine isIntegral_of_map_subalgebra φ hφ _ _ (_root_.GlobalTheory.DegVal.isIntegral_of_forall_realValuation_le_one K (RatFunc Ω) (ratFunc_top_fg hfg)
    ((coneAlg ev).map φ) ((coneAlg_fg ev).map φ) _ fun μ hμ => ?_)
  have hK1 : ∀ a : K, a ≠ 0 → μ (algebraMap K (RatFunc Ω) a) = 1 := by
    intro a ha
    have h1 : μ (algebraMap K (RatFunc Ω) a) ≤ 1 := hμ _ (Subalgebra.algebraMap_mem _ a)
    have h2 : μ (algebraMap K (RatFunc Ω) a⁻¹) ≤ 1 := hμ _ (Subalgebra.algebraMap_mem _ a⁻¹)
    have h3 : μ (algebraMap K (RatFunc Ω) a) * μ (algebraMap K (RatFunc Ω) a⁻¹) = 1 := by
      rw [← map_mul, ← map_mul, mul_inv_cancel₀ ha, map_one, map_one]
    refine le_antisymm h1 ?_
    calc (1 : ℝ≥0) = _ := h3.symm
      _ ≤ μ (algebraMap K (RatFunc Ω) a) := mul_le_of_le_one_right zero_le h2
  obtain ⟨v, hv⟩ := hb (μ.comap (algebraMap Ω (RatFunc Ω))) fun a ha => by
    rw [Valuation.comap_apply, ← IsScalarTower.algebraMap_apply]; exact hK1 a ha
  rw [Valuation.comap_apply, Valuation.comap_apply] at hv
  have hXv : μ (RatFunc.X * algebraMap Ω (RatFunc Ω) (ev v)) ≤ 1 := by
    refine hμ _ (Subalgebra.mem_map.2 ⟨_, Algebra.subset_adjoin ⟨v, rfl⟩, ?_⟩)
    rw [hφa, map_mul, RatFunc.algebraMap_X, RatFunc.algebraMap_C, RatFunc.algebraMap_eq_C]
  rw [hφa, map_mul, map_pow, RatFunc.algebraMap_X, RatFunc.algebraMap_C, ← RatFunc.algebraMap_eq_C, map_mul, map_pow]
  calc μ RatFunc.X ^ τ * μ (algebraMap Ω (RatFunc Ω) t)
      ≤ μ RatFunc.X ^ τ * μ (algebraMap Ω (RatFunc Ω) (ev v)) ^ τ := mul_le_mul_of_nonneg_left hv zero_le
    _ = μ (RatFunc.X * algebraMap Ω (RatFunc Ω) (ev v)) ^ τ := by rw [map_mul, mul_pow]
    _ ≤ 1 := pow_le_one₀ zero_le hXv

end GlobalTheory.DegVal.ValInt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralInConeDegreeOfValuativeBound =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralInConeDegreeOfValuativeBoundStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralInConeDegreeOfValuativeBoundStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralInConeDegreeOfValuativeBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\n\n"}
section -- clump:auto
@[expose] public section

open NumberField GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.DegCmp GlobalTheory.DegVal GlobalTheory.CovTop ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
open scoped ENNReal NNReal

theorem _root_.GlobalTheory.T.isIntegralInConeDegree_of_valuativeBound : ∀ (K V Ω : Type) [Field K] [AddCommGroup V] [Module K V] [Field Ω] [Algebra K Ω] (ev : V →ₗ[K] Ω), CharZero K → FiniteDimensional K V → (⊤ : IntermediateField K Ω).FG → ∀ (τ : ℕ) (t : Ω), ValBound ev τ t → IsIntDeg ev τ t := by
  first | exact @GlobalTheory.DegVal.ValInt.isIntDeg_of_valBound
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralInConeDegreeOfValuativeBoundStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormGrowthLeImageDegreeLowerWeight =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormGrowthLeImageDegreeLowerWeight", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConeDegreeGrowthChowFormIntegrality\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormGrowthOnComponentNsmul\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormsRatioOnComponentOfBirational\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagSpaceComponentFunctionFieldFg\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralInConeDegreeOfValuativeBoundStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteDimensionalOfGrowthOn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.DegCmp GlobalTheory.DegVal GlobalTheory.CovTop ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
open scoped ENNReal NNReal

namespace GlobalTheory.DegVal

theorem growthOn_le_compDeg : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (r : ℕ) (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r), UnfAll U → ∀ (Z : Comp Xo c) (G G' : WTZ E), Even G.2 → Even G'.2 → growthOn U Z G ≠ ⊤ → BirOn U Z G → ValMult U Z G G' → growthOn U Z G' ≤ (compDeg U Z G : ℝ≥0∞) := by
  set_option synthInstance.maxHeartbeats 400000 in
    intro E _ _ _ H Dw l Xo c r U hU Z G G' hG hG' hfin hB hM
    rcases eq_or_ne (growthOn U Z G') 0 with h0 | h0
    · rw [h0]; exact bot_le
    obtain ⟨a, θ, ha, hθ, hmul⟩ := hM
    letI : FiniteDimensional c.F (cuspOn U Z G) :=
      GlobalTheory.DegTop.finiteDimensional_of_growthOn (U := U) (Z := Z) hG hfin
    have hR := _root_.GlobalTheory.DegVal.ratioOn_of_birOn E H Dw l Xo c r U Z G hB
    have hFG := _root_.GlobalTheory.DegVal.om_fg E H Dw l Xo c r U hU Z
    set ev := genPoint Z (cuspOn U Z G) with hev
    let S : ℕ → Submodule c.F (Om Z) := fun k =>
      if k = 0 then ⊥ else (cuspOn U Z ((a * k) • G')).map ((genVal Z).toLinearMap ∘ₗ LinearMap.mulLeft c.F (θ ^ k))
    have h1 := _root_.GlobalTheory.ConeDeg.degree_growth.2.2 c.F _ _ ev (dimFlag Dw) a ha S (by
      intro k t ht
      by_cases hk : k = 0
      · simp only [S, hk, if_true, Submodule.mem_bot] at ht
        subst ht
        refine ⟨?_, ⟨0, 1, by simp [Submodule.one_eq_span], one_ne_zero, by simp⟩⟩
        rw [IsIntDeg, map_zero, mul_zero]
        exact isIntegral_zero
      · simp only [S, hk, if_false] at ht
        obtain ⟨f, hf, rfl⟩ := ht
        have hk1 : 1 ≤ k := Nat.one_le_iff_ne_zero.2 hk
        obtain ⟨hc, hv⟩ := hmul k hk1 f hf
        exact ⟨GlobalTheory.T.isIntegralInConeDegree_of_valuativeBound c.F _ _ ev inferInstance inferInstance hFG _ _ hv, hR _ _ hc⟩)
    have hθk : ∀ k : ℕ, genVal Z (θ ^ k) ≠ 0 := fun k => by rw [map_pow]; exact pow_ne_zero _ hθ
    have h2 : growth (dimFlag Dw) (fun k => Cardinal.toENat (Module.rank c.F (cuspOn U Z ((a * k) • G')))) ≤
        growth (dimFlag Dw) (fun k => Cardinal.toENat (Module.rank c.F (S k))) :=
      GlobalTheory.DegTop.growth_mono _ fun k hk => by
        have hk0 : k ≠ 0 := by omega
        show _ ≤ Cardinal.toENat (Module.rank c.F (S k))
        have hS : S k = (cuspOn U Z ((a * k) • G')).map ((genVal Z).toLinearMap ∘ₗ LinearMap.mulLeft c.F (θ ^ k)) := if_neg hk0
        rw [hS, GlobalTheory.DegTop.rank_map_mul (U := U) (G := (a * k) • G') (hθk k)]
    have hmulG : ∀ G₀ : WTZ E, growth (dimFlag Dw) (fun k => Cardinal.toENat (Module.rank c.F (cuspOn U Z ((a * k) • G₀)))) =
        growthOn U Z (a • G₀) := fun G₀ => by
      rw [growthOn]
      congr 1
      funext k
      rw [mul_nsmul]
    have h3 : growth (dimFlag Dw) (fun k => Cardinal.toENat (Module.rank c.F (cuspOn U Z ((a * k) • G')))) =
        (a : ℝ≥0∞) ^ dimFlag Dw * growthOn U Z G' := by
      rw [hmulG, _root_.GlobalTheory.GrowthMul.growthOn_nsmul E H Dw l Xo c r U hU Z G' hG' a ha]
    have h4 : growth (dimFlag Dw) (fun k => hilb ev (a * k)) ≤ (a : ℝ≥0∞) ^ dimFlag Dw * growthOn U Z G := by
      rw [← _root_.GlobalTheory.GrowthMul.growthOn_nsmul E H Dw l Xo c r U hU Z G hG a ha, ← hmulG]
      exact GlobalTheory.DegTop.growth_mono _ fun k hk => GlobalTheory.DegTop.hilb_le hG (Nat.mul_pos ha hk)
    have haD0 : (a : ℝ≥0∞) ^ dimFlag Dw ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.2 (by omega))
    have haDT : (a : ℝ≥0∞) ^ dimFlag Dw ≠ ⊤ := ENNReal.pow_ne_top (ENNReal.natCast_ne_top a)
    have hlow : (a : ℝ≥0∞) ^ dimFlag Dw * growthOn U Z G' ≤ growth (dimFlag Dw) (fun k => hilb ev (a * k)) :=
      h3 ▸ h2.trans h1
    have hne0 : growth (dimFlag Dw) (fun k => hilb ev (a * k)) ≠ 0 :=
      ne_bot_of_le_ne_bot (mul_ne_zero haD0 h0) hlow
    have hneT : growth (dimFlag Dw) (fun k => hilb ev (a * k)) ≠ ⊤ :=
      ne_top_of_le_ne_top (ENNReal.mul_ne_top haDT hfin) h4
    obtain ⟨δ, hδ⟩ := _root_.GlobalTheory.ConeDeg.degree_growth.2.1 c.F _ _ ev (dimFlag Dw) a ha hne0 hneT
    rw [_root_.GlobalTheory.ConeDeg.degree_growth.1 c.F _ _ ev (dimFlag Dw) a ha δ hδ] at hlow
    rw [compDeg, ← hev, hδ.imageDeg_eq]
    first | exact (ENNReal.mul_le_mul_iff_right haD0 haDT).1 hlow

end GlobalTheory.DegVal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormGrowthLeImageDegreeLowerWeight =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComponentImageDegreeBetweenOfProportionality =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComponentImageDegreeBetweenOfProportionality", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormGrowthLeImageDegreeLowerWeight\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteDimensionalOfGrowthOn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.DegCmp GlobalTheory.DegVal GlobalTheory.CovTop ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
open scoped ENNReal NNReal

theorem GlobalTheory.DegVal.compDeg_between : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (r : ℕ) (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r), UnfAll U → Proport U → EqVolume U → ∀ u : GlobalTheory.AllWt.Weight Dw, (∀ τ, StrictAnti (u τ)) → (∀ τ, StrictAnti (uPrime Dw u τ)) → (∀ Z, BirOn U Z (wtOf Dw u 0)) → (∀ Z, ValMult U Z (wtOf Dw u 0) (wtOf Dw (uPrime Dw u) 0)) → ∀ Z Z' : Comp Xo c, delPrime U Z' u ≤ compDeg U Z (wtOf Dw u 0) ∧ (compDeg U Z (wtOf Dw u 0) : ℝ) ≤ delPrime U Z' u / (1 - rhoB Dw u) := by
  intro E _ _ _ H Dw l Xo c r U hU hP hV u hu hu' hB hM Z Z'
  have h1 : 0 < 1 - rhoB Dw u := sub_pos.2 (rhoOf_lt_one hu' hu)
  have h2 : ∀ la, topDeg U Z' la = topDeg U Z la := fun la => by rw [topDeg, topDeg, hV Z' Z]
  constructor
  · rw [delPrime, h2]
    have hlow := _root_.GlobalTheory.DegVal.growthOn_le_compDeg E H Dw l Xo c r U hU Z (wtOf Dw u 0) (wtOf Dw (uPrime Dw u) 0) (even_wtOf u 0)
      (even_wtOf _ 0) (by rw [hP Z u hu]; exact ENNReal.ofReal_ne_top) (hB Z) (hM Z)
    rw [hP Z _ hu', ← ENNReal.ofReal_natCast] at hlow
    exact (ENNReal.ofReal_le_ofReal_iff (Nat.cast_nonneg _)).1 hlow
  · rw [delPrime_eq U Z' (vdm_pos hu).ne', mul_div_cancel_left₀ _ h1.ne', h2]
    exact GlobalTheory.DegTop.compDeg_le hP Z hu
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComponentImageDegreeBetweenOfProportionality =====
