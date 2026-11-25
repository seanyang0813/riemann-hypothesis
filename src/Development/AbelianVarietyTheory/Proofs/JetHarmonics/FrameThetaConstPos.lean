module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.ModerateCoefficientPositivity
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.BasePsiLeviLowerBound
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.IsotropicThreshold
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.WeightFunctionOnFrames
public import Development.AbelianVarietyTheory.BlockTheory.JetGauges.ThetaWeightedNorm
public import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.BasePsiLeviLowerBound
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.CuspStatementPf
public import Development.AbelianVarietyTheory.BlockTheory.PoincareCuspForms.CurvatureFamilyNorm
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Mathlib.Topology.Sheaves.Init
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.ArakelovInstances.IsStrictDom
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.LiftFactorization
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MajPos
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.PhlaBlockWtCpt
import Mathlib.Algebra.Order.Star.Int
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.BlockTheory.PoincareCuspForms.LowSpanCombinations, Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.CfwMOfExtraBounds, Development.AbelianVarietyTheory.Proofs.JetHarmonics.FrameThetaConstPos

-- ===== clump member: Development.AbelianVarietyTheory.BlockTheory.PoincareCuspForms.LowSpanCombinations =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.BlockTheory.PoincareCuspForms.LowSpanCombinations", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.ModerateCoefficientPositivity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.ArakelovInstances.IsStrictDom\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.LiftFactorization\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.IndefiniteRowSideFullHecke.LowSpanCombinations

open NumberField ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.ChartRestriction.G.AR.Up ReciprocityTheory.L2DbarEstimates

noncomputable section

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ}

def hf (X : Data E r) (ξ : Fin r → E) (x : Frame X.Ψ r) (τ : X.Ψ) : ℝ :=
  X.c τ * X.maj x τ (Data.emb τ.1 ξ)

def ExtraBounds (X : Data E r) (ps : Frame X.Ψ r → ℝ) (a : ℝ) : Prop :=
  ∃ A : ℝ,
    (∀ η : ℝ, 0 < η → ∃ C : ℝ, ∀ x ∈ X.dom, ∀ ξ : Fin r → E, X.IsIso ξ → (∀ τ, hf X ξ x τ ≤ 1) →
      ps x ≤ C + A * Real.log (1 + 1 / X.la1 x) -
        8 * Real.pi * (1 - 2 * η) * a * ⨅ τ, X.tt ξ x τ) ∧
    ∃ C : ℝ, ∀ x ∈ X.dom, ps x ≤ C + A * Real.log (1 + 1 / X.la1 x)

theorem nonempty_cmType (X : Data E r) : Nonempty X.Ψ := by
  obtain ⟨τ⟩ : Nonempty (E →+* ℂ) := inferInstance
  by_cases h : τ ∈ X.Ψ
  · exact ⟨⟨τ, h⟩⟩
  · have := (X.cmType τ).not.1 h
    exact ⟨⟨_, not_not.1 this⟩⟩

theorem tt_eq (X : Data E r) (ξ : Fin r → E) (x : Frame X.Ψ r) (τ : X.Ψ) :
    X.tt ξ x τ = 1 / hf X ξ x τ := rfl

end

end GlobalTheory.IndefiniteRowSideFullHecke.LowSpanCombinations
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.BlockTheory.PoincareCuspForms.LowSpanCombinations =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.CfwMOfExtraBounds =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.CfwMOfExtraBounds", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.PoincareCuspForms.LowSpanCombinations\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.BasePsiLeviLowerBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.IsotropicThreshold\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MajPos\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.FlatCompare

open NumberField ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.ChartRestriction.G.AR.Up ReciprocityTheory.L2DbarEstimates
open GlobalTheory.IndefiniteRowSideFullHecke.LowSpanCombinations

noncomputable section

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ}

theorem hf_pos (X : Data E r) {ξ : Fin r → E} (hξ : ξ ≠ 0) {x : Frame X.Ψ r} (hx : x ∈ X.dom) (τ : X.Ψ) :
    0 < hf X ξ x τ := by
  unfold hf
  refine mul_pos (IsotropicThreshold.c_pos X τ) (X.maj_pos hx τ ?_)
  intro h0
  apply hξ
  funext a
  have h1 := congrFun h0 a
  simpa [Data.emb] using h1

theorem guard_iff (X : Data E r) {ξ : Fin r → E} (hξ : ξ ≠ 0) {x : Frame X.Ψ r} (hx : x ∈ X.dom) (τ : X.Ψ) :
    hf X ξ x τ ≤ 1 ↔ 1 ≤ X.tt ξ x τ := by
  rw [tt_eq X ξ x τ, one_le_div (hf_pos X hξ hx τ)]

theorem logTerm_nonneg (X : Data E r) (x : Frame X.Ψ r) : 0 ≤ Real.log (1 + 1 / X.la1 x) := by
  apply Real.log_nonneg
  have h1 : 0 ≤ 1 / X.la1 x := div_nonneg zero_le_one (Real.sqrt_nonneg _)
  linarith

theorem exists_short (X : Data E r) : ∃ ε : ℝ, 0 < ε ∧ ∀ x ∈ X.dom, 0 < X.firstMinimumSq x → X.firstMinimumSq x < ε →
    ∃ v, X.IsIso v ∧ (∀ τ, 1 ≤ X.tt v x τ) ∧ ∀ τ, 1 / (2 * X.firstMinimumSq x) ≤ X.tt v x τ := by
  obtain ⟨δ0, hδ0, hiso⟩ := IsotropicThreshold.iso_threshold X
  refine ⟨min (δ0 / 2) (1 / 2), lt_min (by linarith) (by norm_num), fun x hx hpos hsmall => ?_⟩
  have hmin1 := min_le_left (δ0 / 2) (1 / 2)
  have hmin2 := min_le_right (δ0 / 2) (1 / 2)
  have hne : {t | ∃ v ∈ X.Λ, v ≠ 0 ∧ t = ∑ τ, X.c τ * X.maj x τ (Data.emb τ.1 v)}.Nonempty := by
    by_contra hemp
    rw [Set.not_nonempty_iff_eq_empty] at hemp
    have h0 : X.firstMinimumSq x = 0 := by rw [Data.firstMinimumSq, hemp, Real.sInf_empty]
    linarith
  obtain ⟨t, ⟨v, hvΛ, hv0, rfl⟩, hlt⟩ :=
    exists_lt_of_csInf_lt hne (show X.firstMinimumSq x < 2 * X.firstMinimumSq x by linarith)
  have hsum_lt : ∑ τ, X.c τ * X.maj x τ (Data.emb τ.1 v) < δ0 := by linarith
  have hherm := hiso x hx v hvΛ hsum_lt
  have hterm : ∀ τ, hf X v x τ ≤ ∑ τ', X.c τ' * X.maj x τ' (Data.emb τ'.1 v) := fun τ =>
    Finset.single_le_sum (f := fun τ' => X.c τ' * X.maj x τ' (Data.emb τ'.1 v))
      (fun τ' _ => (hf_pos X hv0 hx τ').le) (Finset.mem_univ τ)
  refine ⟨v, ⟨hvΛ, hherm, hv0⟩, fun τ => ?_, fun τ => ?_⟩
  · rw [← guard_iff X hv0 hx τ]
    linarith [hterm τ]
  · rw [tt_eq X v x τ]
    exact one_div_le_one_div_of_le (hf_pos X hv0 hx τ) (by linarith [hterm τ])

theorem bdd_add_log (X : Data E r) {ps : Frame X.Ψ r → ℝ} {a : ℝ} (h : cfwM X ps a) (ha : 0 < a)
    (K : ℝ) : ∃ B : ℝ, ∀ x ∈ X.dom, ps x + K * Real.log (1 + 1 / X.la1 x) ≤ B := by
  obtain ⟨⟨C1, A1, h1⟩, h2⟩ := h
  obtain ⟨C2, A2, h2'⟩ := h2 (1 / 4) (by norm_num) (by norm_num)
  obtain ⟨ε, hε, hshort⟩ := exists_short X
  have hM : 0 ≤ |A1| + |K| + |A2| := by positivity
  have hpa : 0 < 8 * Real.pi * a := by positivity
  refine ⟨max (C1 + (|A1| + |K| + |A2|) / Real.sqrt ε)
    (C2 + (|A1| + |K| + |A2|) ^ 2 / (8 * Real.pi * a)), fun x hx => ?_⟩
  have hL0 := logTerm_nonneg X x
  have hy0 : 0 ≤ 1 / X.la1 x := div_nonneg zero_le_one (Real.sqrt_nonneg _)
  have hLy : Real.log (1 + 1 / X.la1 x) ≤ 1 / X.la1 x := by
    have h3 := Real.log_le_sub_one_of_pos (show 0 < 1 + 1 / X.la1 x by linarith)
    linarith
  have hK := mul_le_mul_of_nonneg_right (le_abs_self K) hL0
  have hA1 := mul_le_mul_of_nonneg_right (le_abs_self A1) hL0
  have hA2 := mul_le_mul_of_nonneg_right (le_abs_self A2) hL0
  have hA1' := mul_nonneg (abs_nonneg A1) hL0
  have hA2' := mul_nonneg (abs_nonneg A2) hL0
  by_cases hs : 0 < X.firstMinimumSq x ∧ X.firstMinimumSq x < ε
  · obtain ⟨v, hv, hv1, hv2⟩ := hshort x hx hs.1 hs.2
    have hb := h2' x hx v hv hv1
    have := nonempty_cmType X
    have hinf : 1 / (2 * X.firstMinimumSq x) ≤ ⨅ τ, X.tt v x τ := le_ciInf hv2
    have hla : X.la1 x ^ 2 = X.firstMinimumSq x := Real.sq_sqrt hs.1.le
    have hyy : 1 / (2 * X.firstMinimumSq x) = (1 / X.la1 x) ^ 2 / 2 := by
      rw [div_pow, one_pow, hla]; ring
    rw [hyy] at hinf
    have hcoef : (0 : ℝ) ≤ 8 * Real.pi * (1 - 2 * (1 / 4)) * a := by nlinarith [Real.pi_pos]
    have hI := mul_le_mul_of_nonneg_left hinf hcoef
    have hMy := mul_le_mul_of_nonneg_left hLy hM
    have hq : (|A1| + |K| + |A2|) * (1 / X.la1 x) - 2 * Real.pi * a * (1 / X.la1 x) ^ 2 ≤
        (|A1| + |K| + |A2|) ^ 2 / (8 * Real.pi * a) := by
      rw [le_div_iff₀ hpa]
      nlinarith [sq_nonneg (4 * Real.pi * a * (1 / X.la1 x) - (|A1| + |K| + |A2|))]
    refine le_trans ?_ (le_max_right _ _)
    linarith
  · have hLe : Real.log (1 + 1 / X.la1 x) ≤ 1 / Real.sqrt ε := by
      rcases le_or_gt (X.firstMinimumSq x) 0 with h0 | h0
      · have hz : X.la1 x = 0 := Real.sqrt_eq_zero'.2 h0
        rw [hz, div_zero, add_zero, Real.log_one]
        positivity
      · have hge : ε ≤ X.firstMinimumSq x := by
          by_contra hlt
          exact hs ⟨h0, not_le.1 hlt⟩
        exact hLy.trans (one_div_le_one_div_of_le (Real.sqrt_pos.2 hε) (Real.sqrt_le_sqrt hge))
    have hb := h1 x hx
    have hMe := mul_le_mul_of_nonneg_left hLe hM
    have he : (|A1| + |K| + |A2|) * (1 / Real.sqrt ε) = (|A1| + |K| + |A2|) / Real.sqrt ε := by ring
    refine le_trans ?_ (le_max_left _ _)
    linarith

theorem cfwM_of_extraBounds (X : Data E r) {ps : Frame X.Ψ r → ℝ} {a : ℝ} (h : ExtraBounds X ps a) :
    cfwM X ps a := by
  obtain ⟨A, h1, C, h2⟩ := h
  refine ⟨⟨C, A, h2⟩, fun η hη _ => ?_⟩
  obtain ⟨C', hC'⟩ := h1 η hη
  exact ⟨C', A, fun x hx ξ hξ htt => hC' x hx ξ hξ fun τ => (guard_iff X hξ.2.2 hx τ).2 (htt τ)⟩

theorem extraBounds_of_cfwM (X : Data E r) {ps : Frame X.Ψ r → ℝ} {a : ℝ} (ha : 0 ≤ a)
    (h : cfwM X ps a) : ExtraBounds X ps a := by
  rcases ha.eq_or_lt with ha0 | hapos
  · subst ha0
    obtain ⟨⟨C, A, hC⟩, -⟩ := h
    refine ⟨A, fun η _ => ⟨C, fun x hx ξ _ _ => ?_⟩, C, hC⟩
    have h1 := hC x hx
    simp only [mul_zero, zero_mul, sub_zero]
    exact h1
  · obtain ⟨B0, hB0⟩ := bdd_add_log X h hapos 0
    have := nonempty_cmType X
    refine ⟨0, fun η hη => ?_, B0, fun x hx => by linarith [hB0 x hx]⟩
    rcases lt_or_ge η (1 / 2) with hη2 | hη2
    · obtain ⟨C', A', hC'⟩ := h.2 (η / 2) (by linarith) (by linarith)
      obtain ⟨θ, hθ⟩ : ∃ θ : ℝ, θ = (1 - 2 * η) / (1 - η) := ⟨_, rfl⟩
      have h1η : 0 < 1 - η := by linarith
      have hθ0 : 0 < θ := by rw [hθ]; exact div_pos (by linarith) h1η
      have hθ1 : θ < 1 := by rw [hθ, div_lt_one h1η]; linarith
      have hθη : θ * (1 - η) = 1 - 2 * η := by rw [hθ]; field_simp
      obtain ⟨K, hK⟩ : ∃ K : ℝ, (1 - θ) * K = θ * |A'| :=
        ⟨θ * |A'| / (1 - θ), by field_simp [(sub_pos.2 hθ1).ne']⟩
      obtain ⟨BK, hBK⟩ := bdd_add_log X h hapos K
      refine ⟨θ * C' + (1 - θ) * BK, fun x hx ξ hξ hg => ?_⟩
      have htt : ∀ τ, 1 ≤ X.tt ξ x τ := fun τ => (guard_iff X hξ.2.2 hx τ).1 (hg τ)
      have hL0 := logTerm_nonneg X x
      have e1 := mul_le_mul_of_nonneg_left (hC' x hx ξ hξ htt) hθ0.le
      have e2 := mul_le_mul_of_nonneg_left (hBK x hx) (sub_pos.2 hθ1).le
      have hKL : (1 - θ) * K * Real.log (1 + 1 / X.la1 x) =
          θ * |A'| * Real.log (1 + 1 / X.la1 x) := by rw [hK]
      have hA : θ * A' * Real.log (1 + 1 / X.la1 x) ≤ θ * |A'| * Real.log (1 + 1 / X.la1 x) :=
        mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left (le_abs_self A') hθ0.le) hL0
      have h3 : θ * (8 * Real.pi * (1 - 2 * (η / 2)) * a * ⨅ τ, X.tt ξ x τ) =
          8 * Real.pi * (1 - 2 * η) * a * ⨅ τ, X.tt ξ x τ := by
        rw [← hθη]; ring
      linarith
    · refine ⟨B0, fun x hx ξ hξ hg => ?_⟩
      have htt : ∀ τ, 1 ≤ X.tt ξ x τ := fun τ => (guard_iff X hξ.2.2 hx τ).1 (hg τ)
      have hI : 1 ≤ ⨅ τ, X.tt ξ x τ := le_ciInf htt
      have h2 := hB0 x hx
      have hpI : 0 ≤ 8 * Real.pi * a * ⨅ τ, X.tt ξ x τ :=
        mul_nonneg (by positivity) (by linarith)
      nlinarith

theorem extraBounds_iff (X : Data E r) (ps : Frame X.Ψ r → ℝ) {a : ℝ} (ha : 0 ≤ a) :
    ExtraBounds X ps a ↔ cfwM X ps a := ⟨fun h => cfwM_of_extraBounds X h, extraBounds_of_cfwM X ha⟩

end

end GlobalTheory.FlatCompare
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.CfwMOfExtraBounds =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.FrameThetaConstPos =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.FrameThetaConstPos", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.WeightFunctionOnFrames\npublic import Development.AbelianVarietyTheory.BlockTheory.JetGauges.ThetaWeightedNorm\npublic import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.BasePsiLeviLowerBound\npublic import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.CfwMOfExtraBounds\nimport Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.PhlaBlockWtCpt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.CuspStatementPf\npublic import Development.AbelianVarietyTheory.BlockTheory.PoincareCuspForms.CurvatureFamilyNorm\n\n"}
section -- clump:auto
@[expose] public section

open NumberField ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.ChartRestriction.G.AR.Up ReciprocityTheory.L2DbarEstimates Topology
open scoped ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm
open GlobalTheory.FrameThetaCompare (transfer curv_lin diagForm chart_smooth smooth_of_chart mem_SS_iff lower_iff
  upper_iff bdd_of_upper curvDe_eq_omRh curvDe_nonneg card_pos)

namespace GlobalTheory.ThetaRecordCompare

noncomputable section

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ}

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
private lemma twoDelta_sub_eq_two_mul_blockWt_sub {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} {de : _root_.ReciprocityTheory.ChartRestriction.G.FD.Wt X.Ψ r}
    (h : _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.IsTwoDelta X de) (τ : X.Ψ) (a b : Fin r) :
    ((de τ a : ℤ) : ℝ) - ((de τ b : ℤ) : ℝ) =
      2 * (((_root_.GlobalTheory.CurvMargin.blockWt X τ a : ℤ) : ℝ) -
        ((_root_.GlobalTheory.CurvMargin.blockWt X τ b : ℤ) : ℝ)) := by
  have key : de τ a - de τ b =
      2 * (_root_.GlobalTheory.CurvMargin.blockWt X τ a - _root_.GlobalTheory.CurvMargin.blockWt X τ b) := by
    by_cases ha : (a : ℕ) < X.p0 <;> by_cases hb : (b : ℕ) < X.p0
    · have := (h τ a b).1 (iff_of_true ha hb)
      simp only [_root_.GlobalTheory.CurvMargin.blockWt, ha, hb, ↓reduceIte]
      omega
    · have := (h τ a b).2 ha (not_lt.1 hb)
      simp only [_root_.GlobalTheory.CurvMargin.blockWt, ha, hb, ↓reduceIte]
      omega
    · have := (h τ b a).2 hb (not_lt.1 ha)
      simp only [_root_.GlobalTheory.CurvMargin.blockWt, ha, hb, ↓reduceIte]
      omega
    · have := (h τ a b).1 (iff_of_false ha hb)
      simp only [_root_.GlobalTheory.CurvMargin.blockWt, ha, hb, ↓reduceIte]
      omega
  exact_mod_cast key


open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
theorem _root_.GlobalTheory.ThetaRecordCompare.levi_twoDelta {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} {de : _root_.ReciprocityTheory.ChartRestriction.G.FD.Wt X.Ψ r}
    (h : _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.IsTwoDelta X de) {x0 : _root_.ReciprocityTheory.ChartRestriction.G.FD.Frame X.Ψ r}
    (ho : _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.IsOrth X x0) {z : _root_.ReciprocityTheory.L2DbarEstimates.V (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X)} (hz : z ∈ _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.OmF X x0)
    (ξ : Fin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X) → ℂ) :
    _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.levi X x0 (_root_.ReciprocityTheory.ChartRestriction.G.AR.Up.phla X de) z ξ = 2 * _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.leviRh X x0 z ξ := by
  rw [_root_.GlobalTheory.CurvMargin.leviRh_eq X x0 ho hz ξ]
  obtain ⟨x1, D, -, -, -, hdiag, -⟩ := _root_.GlobalTheory.FrameThetaCompare.transfer X x0 z hz
  change _root_.GlobalTheory.IndefiniteRowSideFullHecke.CurvatureFamilyNorm.curv X x0 de z ξ =
    2 * _root_.GlobalTheory.IndefiniteRowSideFullHecke.CurvatureFamilyNorm.curv X x0 (_root_.GlobalTheory.CurvMargin.blockWt X) z ξ
  rw [hdiag, hdiag]
  unfold _root_.GlobalTheory.FrameThetaCompare.diagForm
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun e _ => ?_
  rw [twoDelta_sub_eq_two_mul_blockWt_sub h]
  ring

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
theorem _root_.GlobalTheory.ThetaRecordCompare.leviRh_nonneg (X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r) {x0 : _root_.ReciprocityTheory.ChartRestriction.G.FD.Frame X.Ψ r}
    (ho : _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.IsOrth X x0) {z : _root_.ReciprocityTheory.L2DbarEstimates.V (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X)}
    (hz : z ∈ _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.OmF X x0) (ξ : Fin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X) → ℂ) : 0 ≤ _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.leviRh X x0 z ξ := by
  have h0 := _root_.GlobalTheory.FrameThetaCompare.curvDe_nonneg X (x0 := x0) hz ξ
  rw [_root_.GlobalTheory.FrameThetaCompare.curvDe_eq_omRh X ho hz ξ] at h0
  exact h0

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
theorem _root_.GlobalTheory.ThetaRecordCompare.gapsGe_mono {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} {la : _root_.ReciprocityTheory.ChartRestriction.G.FD.Wt X.Ψ r} {g g' : ℝ}
    (h : _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.GapsGe X la g) (hg : g' ≤ g) :
    _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.GapsGe X la g' :=
  fun τ i j hij hne => hg.trans (h τ i j hij hne)


open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
theorem _root_.GlobalTheory.ThetaRecordCompare.cusp_of_gaps {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} (hn : 2 ≤ _root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X)
    (h0 : 0 < X.p0) (hr : X.p0 < r) {la : _root_.ReciprocityTheory.ChartRestriction.G.FD.Wt X.Ψ r}
    (hg : _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.GapsGe X la 0) (hp : _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.PairingGe X la 1) {P : _root_.ReciprocityTheory.ChartRestriction.G.FD.Frame X.Ψ r → ℂ}
    (hP : X.IsBddSec la P) :
    P ∈ X.SS la := by
  obtain ⟨τ0, hτ0⟩ := Finset.card_pos.1 (_root_.GlobalTheory.FrameThetaCompare.card_pos hn)
  have key := @_root_.ReciprocityTheory.ChartRestriction.G.AR.Up.cuspStatement_holds E _ _ _
  unfold _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.CuspStatement at key
  refine key r X la ⟨τ0, hτ0⟩ h0 hr (fun i j hij hne => ?_) (fun i0 i1 hi0 hi1 => ?_) P hP
  · have h1 : (0 : ℤ) ≤ la ⟨τ0, hτ0⟩ i - la ⟨τ0, hτ0⟩ j := by exact_mod_cast hg _ i j hij hne
    omega
  · have h1 : (1 : ℤ) ≤ la ⟨τ0, hτ0⟩ i1 - la ⟨τ0, hτ0⟩ i0 := by
      exact_mod_cast hp _ i0 i1 hi0 hi1
    omega

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
theorem _root_.GlobalTheory.ThetaRecordCompare.two_le_r {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} (hn : 2 ≤ _root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X) : 2 ≤ r := by
  by_contra hlt
  push_neg at hlt
  have hempty : IsEmpty (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.Ent X) := by
    unfold _root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.Ent
    refine ⟨fun ⟨_, ⟨p, hp⟩⟩ => ?_⟩
    have h1 := p.1.isLt
    have h2 : (p.2 : ℕ) < p.1 := hp
    omega
  unfold _root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd at hn
  rw [Fintype.card_eq_zero_iff.2 hempty] at hn
  omega

section Records

variable {X : Data E r}

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
variable {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} in
private lemma exists_surjective_diagForm_leviM (A : _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.ArchInM X) :
    ∃ x0 ∈ X.dom, _root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.cpt X x0 0 ∈ X.dom ∧
      ∃ D : (Fin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X) → ℂ) →ₗ[ℂ] Fin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X) → ℂ, Function.Surjective D ∧
        ∀ la ξ, _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.leviM X (_root_.ReciprocityTheory.ChartRestriction.G.AR.Up.phla X la) x0 0 ξ = _root_.GlobalTheory.FrameThetaCompare.diagForm X la (D ξ) := by
  obtain ⟨x0, hx0, -⟩ := A.et_ne
  have hd : _root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.cpt X x0 0 ∈ X.dom := by rw [_root_.ReciprocityTheory.ChartRestriction.G.AR.Up.IW.cpt_zero]; exact hx0
  obtain ⟨x1, D, -, hD, -, hdiag, -⟩ := _root_.GlobalTheory.FrameThetaCompare.transfer X x0 0 hd
  exact ⟨x0, hx0, hd, D, LinearMap.injective_iff_surjective.1 hD, fun la ξ => hdiag la ξ⟩

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
variable {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} in
private lemma diagForm_L_pos (A : _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.ArchInM X) {η : Fin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X) → ℂ} (hη : η ≠ 0) :
    0 < _root_.GlobalTheory.FrameThetaCompare.diagForm X A.L η := by
  obtain ⟨x0, hx0, hd, D, hD, hdiag⟩ := exists_surjective_diagForm_leviM A
  obtain ⟨ξ, rfl⟩ := hD η
  have hξ : ξ ≠ 0 := by rintro rfl; exact hη (map_zero D)
  rw [← hdiag]
  exact A.posL x0 hx0 0 hd ξ hξ

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
variable {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} in
private lemma single_ne_zero_jet_harmonics (τ : X.Ψ) (i j : Fin r) (h : i < j) :
    (fun k : Fin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X) =>
      if (k : ℕ) = (Fintype.equivFin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.Ent X) (τ, ⟨(j, i), h⟩) : ℕ) then (1 : ℂ) else 0 :
      Fin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X) → ℂ) ≠ 0 := fun hz => by
  have := congrFun hz (Fintype.equivFin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.Ent X) (τ, ⟨(j, i), h⟩))
  simp only at this
  exact one_ne_zero this

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
variable {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} in
private lemma diagForm_single' (la : _root_.ReciprocityTheory.ChartRestriction.G.FD.Wt X.Ψ r) (τ : X.Ψ) (i j : Fin r) (h : i < j) :
    _root_.GlobalTheory.FrameThetaCompare.diagForm X la
        (fun k : Fin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X) =>
          if (k : ℕ) = (Fintype.equivFin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.Ent X) (τ, ⟨(j, i), h⟩) : ℕ) then 1 else 0) =
      _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn X.p0 j * _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn X.p0 i * (((la τ i : ℤ) : ℝ) - ((la τ j : ℤ) : ℝ)) := by
  unfold _root_.GlobalTheory.FrameThetaCompare.diagForm
  rw [Finset.sum_eq_single (τ, ⟨(j, i), h⟩)]
  · simp
  · intro e _ he
    have hne : ((Fintype.equivFin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.Ent X) e : Fin _) : ℕ) ≠
        (Fintype.equivFin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.Ent X) (τ, ⟨(j, i), h⟩) : ℕ) := fun h' =>
      he ((Fintype.equivFin _).injective (Fin.ext h'))
    simp only [hne, if_false]
    simp
  · simp

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
variable {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} in
private lemma diagForm_Fp_sub_pos (A : _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.ArchInM X) {η : Fin (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X) → ℂ} (hη : η ≠ 0) :
    0 < _root_.GlobalTheory.FrameThetaCompare.diagForm X (A.Fp - _root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.kapW X - _root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X • A.L) η := by
  obtain ⟨x0, hx0, hd, D, hD, hdiag⟩ := exists_surjective_diagForm_leviM A
  obtain ⟨ξ, rfl⟩ := hD η
  have hξ : ξ ≠ 0 := by rintro rfl; exact hη (map_zero D)
  obtain ⟨c, hc, hF⟩ := A.posF
  have h1 := A.posL x0 hx0 0 hd ξ hξ
  have h2 := hF 0 le_rfl (by rw [zero_mul]; positivity) x0 hx0 0 hd ξ
  rw [← hdiag]
  have h3 := mul_pos (mul_pos two_pos hc) h1
  linarith


open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
variable {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} in
theorem _root_.GlobalTheory.ThetaRecordCompare.arch_gaps (A : _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.ArchInM X) (h0 : 0 < X.p0)
    (hr : X.p0 < r) :
    _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.GapsGe X A.L 1 ∧ _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.PairingGe X A.L 1 ∧ _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.GapsGe X A.Fp 0 ∧
      _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.PairingGe X A.Fp 1 := by
  have hn : (2 : ℤ) ≤ (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X : ℤ) := by exact_mod_cast A.n_ge
  have gL : ∀ (τ : X.Ψ) (i j : Fin r), (j : ℕ) = i + 1 → (j : ℕ) ≠ X.p0 →
      1 ≤ A.L τ i - A.L τ j := by
    intro τ i j hij hne
    have hlt : i < j := by rw [Fin.lt_def]; omega
    have hs : _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn X.p0 j * _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn X.p0 i = 1 := by
      unfold _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn
      by_cases hj : (j : ℕ) < X.p0
      · rw [if_pos hj, if_pos (by omega)]; norm_num
      · rw [if_neg hj, if_neg (by omega)]; norm_num
    have h1 := diagForm_L_pos A (single_ne_zero_jet_harmonics τ i j hlt)
    rw [diagForm_single' A.L τ i j hlt, hs, one_mul] at h1
    have h2 : (0 : ℤ) < A.L τ i - A.L τ j := by
      exact_mod_cast (by linarith : (0 : ℝ) < ((A.L τ i : ℤ) : ℝ) - ((A.L τ j : ℤ) : ℝ))
    omega
  have pL : ∀ (τ : X.Ψ) (i0 i1 : Fin r), (i0 : ℕ) = 0 → (i1 : ℕ) = r - 1 →
      1 ≤ A.L τ i1 - A.L τ i0 := by
    intro τ i0 i1 hi0 hi1
    have hlt : i0 < i1 := by rw [Fin.lt_def]; omega
    have hs : _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn X.p0 i1 * _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn X.p0 i0 = -1 := by
      unfold _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn
      rw [if_neg (by omega), if_pos (by omega)]; norm_num
    have h1 := diagForm_L_pos A (single_ne_zero_jet_harmonics τ i0 i1 hlt)
    rw [diagForm_single' A.L τ i0 i1 hlt, hs] at h1
    have h2 : (0 : ℤ) < A.L τ i1 - A.L τ i0 := by
      exact_mod_cast (by linarith : (0 : ℝ) < ((A.L τ i1 : ℤ) : ℝ) - ((A.L τ i0 : ℤ) : ℝ))
    omega
  refine ⟨fun τ i j hij hne => by exact_mod_cast gL τ i j hij hne,
    fun τ i0 i1 hi0 hi1 => by exact_mod_cast pL τ i0 i1 hi0 hi1, ?_, ?_⟩
  · intro τ i j hij hne
    have hlt : i < j := by rw [Fin.lt_def]; omega
    have hs : _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn X.p0 j * _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn X.p0 i = 1 := by
      unfold _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn
      by_cases hj : (j : ℕ) < X.p0
      · rw [if_pos hj, if_pos (by omega)]; norm_num
      · rw [if_neg hj, if_neg (by omega)]; norm_num
    have h1 := diagForm_Fp_sub_pos A (single_ne_zero_jet_harmonics τ i j hlt)
    rw [diagForm_single' _ τ i j hlt, hs, one_mul] at h1
    simp only [Pi.sub_apply, nsmul_eq_mul, Pi.mul_apply, Pi.natCast_apply,
      _root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.kapW] at h1
    push_cast at h1
    have hR : (0 : ℝ) < ((A.Fp τ i - A.Fp τ j + 2 * ((j : ℤ) - i) -
        (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X : ℤ) * (A.L τ i - A.L τ j) : ℤ) : ℝ) := by
      push_cast; linarith
    have hZ : (0 : ℤ) < A.Fp τ i - A.Fp τ j + 2 * ((j : ℤ) - i) -
        (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X : ℤ) * (A.L τ i - A.L τ j) := by exact_mod_cast hR
    have hg := gL τ i j hij hne
    have hji : (j : ℤ) - i = 1 := by omega
    have hm : (2 : ℤ) ≤ (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X : ℤ) * (A.L τ i - A.L τ j) := by nlinarith
    have : (0 : ℤ) ≤ A.Fp τ i - A.Fp τ j := by linarith
    exact_mod_cast this
  · intro τ i0 i1 hi0 hi1
    have hlt : i0 < i1 := by rw [Fin.lt_def]; omega
    have hs : _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn X.p0 i1 * _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn X.p0 i0 = -1 := by
      unfold _root_.ReciprocityTheory.ChartRestriction.G.FD.sgn
      rw [if_neg (by omega), if_pos (by omega)]; norm_num
    have h1 := diagForm_Fp_sub_pos A (single_ne_zero_jet_harmonics τ i0 i1 hlt)
    rw [diagForm_single' _ τ i0 i1 hlt, hs] at h1
    simp only [Pi.sub_apply, nsmul_eq_mul, Pi.mul_apply, Pi.natCast_apply,
      _root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.kapW] at h1
    push_cast at h1
    have hR : (0 : ℝ) < ((A.Fp τ i1 - A.Fp τ i0 - 2 * ((i1 : ℤ) - i0) -
        (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X : ℤ) * (A.L τ i1 - A.L τ i0) : ℤ) : ℝ) := by
      push_cast; linarith
    have hZ : (0 : ℤ) < A.Fp τ i1 - A.Fp τ i0 - 2 * ((i1 : ℤ) - i0) -
        (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X : ℤ) * (A.L τ i1 - A.L τ i0) := by exact_mod_cast hR
    have hg := pL τ i0 i1 hi0 hi1
    have hji : (0 : ℤ) ≤ (i1 : ℤ) - i0 := by omega
    have hm : (2 : ℤ) ≤ (_root_.ReciprocityTheory.ChartRestriction.G.AR.Inst.nd X : ℤ) * (A.L τ i1 - A.L τ i0) := by nlinarith
    have : (1 : ℤ) ≤ A.Fp τ i1 - A.Fp τ i0 := by linarith
    exact_mod_cast this

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
variable {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} in
theorem _root_.GlobalTheory.ThetaRecordCompare.arch_extra (A : _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.ArchInM X) :
    _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.IsExtra X A.ps0 A.a1 := by
  have hinv : _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.IsInv X A.ps0 :=
    (_root_.GlobalTheory.FrameThetaCompare.isInv_iff X _).2 A.potential_invariant
  refine ⟨A.frame_theta_weight_pos.le, hinv, ?_, ?_, ?_⟩
  · exact _root_.GlobalTheory.FrameThetaCompare.smooth_of_chart X hinv.1 A.potential_smooth
  · obtain ⟨B, hB⟩ := _root_.GlobalTheory.FlatCompare.bdd_add_log X A.base_psi_weighted_cf A.frame_theta_weight_pos 0
    exact ⟨B, fun x hx => by simpa using hB x hx⟩
  · obtain ⟨A', hdec, C, hC⟩ := (_root_.GlobalTheory.FlatCompare.extraBounds_iff X A.ps0 A.frame_theta_weight_pos.le).2 A.base_psi_weighted_cf
    exact ⟨A', ⟨C, hC⟩, fun η hη => hdec η hη⟩

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
variable {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} in
theorem _root_.GlobalTheory.ThetaRecordCompare.gaps_add {la la' : _root_.ReciprocityTheory.ChartRestriction.G.FD.Wt X.Ψ r} (h : _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.GapsGe X la 0)
    (h' : _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.GapsGe X la' 0) (k : ℕ) :
    _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.GapsGe X (la + k • la') 0 := by
  intro τ i j hij hne
  have a1 : (0 : ℤ) ≤ la τ i - la τ j := by exact_mod_cast h τ i j hij hne
  have a2 : (0 : ℤ) ≤ la' τ i - la' τ j := by exact_mod_cast h' τ i j hij hne
  have hk : (0 : ℤ) ≤ (k : ℤ) := Int.natCast_nonneg k
  have : (0 : ℤ) ≤ (la + k • la') τ i - (la + k • la') τ j := by
    simp only [Pi.add_apply, nsmul_eq_mul, Pi.mul_apply, Pi.natCast_apply]
    nlinarith
  exact_mod_cast this

open NumberField Topology in
open scoped ContDiff in
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} in
variable {X : _root_.ReciprocityTheory.ChartRestriction.G.FD.Data E r} in
theorem _root_.GlobalTheory.ThetaRecordCompare.pair_add {la la' : _root_.ReciprocityTheory.ChartRestriction.G.FD.Wt X.Ψ r} (h : _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.PairingGe X la 1)
    (h' : _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.PairingGe X la' 1) (k : ℕ) :
    _root_.GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightedNorm.PairingGe X (la + k • la') 1 := by
  intro τ i0 i1 hi0 hi1
  have a1 : (1 : ℤ) ≤ la τ i1 - la τ i0 := by exact_mod_cast h τ i0 i1 hi0 hi1
  have a2 : (1 : ℤ) ≤ la' τ i1 - la' τ i0 := by exact_mod_cast h' τ i0 i1 hi0 hi1
  have hk : (0 : ℤ) ≤ (k : ℤ) := Int.natCast_nonneg k
  have : (1 : ℤ) ≤ (la + k • la') τ i1 - (la + k • la') τ i0 := by
    simp only [Pi.add_apply, nsmul_eq_mul, Pi.mul_apply, Pi.natCast_apply]
    nlinarith
  exact_mod_cast this

end Records

end

end GlobalTheory.ThetaRecordCompare
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.FrameThetaConstPos =====
