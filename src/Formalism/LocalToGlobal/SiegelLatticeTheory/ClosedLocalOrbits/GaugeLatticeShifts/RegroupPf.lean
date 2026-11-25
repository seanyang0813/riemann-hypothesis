module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Mathlib.MeasureTheory.Group.FundamentalDomain
public import Mathlib.MeasureTheory.Integral.DominatedConvergence
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.DoubleCosetSingleUnfolding
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfUnfold, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPf

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfUnfold =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfUnfold", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Mathlib.MeasureTheory.Group.FundamentalDomain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import Mathlib.MeasureTheory.Integral.DominatedConvergence\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped ENNReal

namespace Formalism.L2.SG.Pf.RegroupPf

section OrbitUnfold

variable {H : Type*} [Group H] [MeasurableSpace H] [MeasurableMul H]

theorem isFund_of_exact (μ : Measure H) (R : Subgroup H) (W : Set H) (hm : MeasurableSet W)
    (hc : ∀ x, ∃ g ∈ R, g * x ∈ W) (hu : ∀ x ∈ W, ∀ g ∈ R, g * x ∈ W → g = 1) :
    IsFundamentalDomain R W μ := by
  refine IsFundamentalDomain.mk' hm.nullMeasurableSet fun x => ?_
  obtain ⟨g, hg, hgx⟩ := hc x
  refine ⟨⟨g, hg⟩, hgx, ?_⟩
  rintro ⟨k, hk⟩ hkx
  have hkx' : k * x ∈ W := hkx
  have h := hu (g * x) hgx (k * g⁻¹) (R.mul_mem hk (R.inv_mem hg))
    (by rwa [mul_assoc, inv_mul_cancel_left])
  exact Subtype.ext (mul_inv_eq_one.mp h)

theorem orbit_unfold (μ : Measure H) [μ.IsMulLeftInvariant]
    (N : Subgroup H) [Countable N] {C : Type*} [Countable C] (act : N → C → C) (h1 : ∀ c, act 1 c = c)
    (hmul : ∀ n m c, act (n * m) c = act n (act m c))
    (F : C → H → ℂ) (hFm : ∀ c, Measurable (F c)) (hFeq : ∀ (n : N) c y, F (act n c) y = F c ((n : H)⁻¹ * y))
    (Ω : Set H) (hΩm : MeasurableSet Ω) (hΩc : ∀ x, ∃ n : N, (n : H) * x ∈ Ω)
    (hΩu : ∀ x ∈ Ω, ∀ n : N, (n : H) * x ∈ Ω → n = 1)
    {J : Type*} (r : J → C) (hcov : ∀ c, ∃ j n, act n (r j) = c) (huniq : ∀ j j' n, act n (r j) = r j' → j = j')
    (ΩJ : J → Set H) (hJm : ∀ j, MeasurableSet (ΩJ j))
    (hJc : ∀ j x, ∃ n : N, act n (r j) = r j ∧ (n : H) * x ∈ ΩJ j)
    (hJu : ∀ j, ∀ x ∈ ΩJ j, ∀ n : N, act n (r j) = r j → (n : H) * x ∈ ΩJ j → n = 1)
    (hint : ∫⁻ y in Ω, ∑' c, ‖F c y‖ₑ ∂μ < ⊤) :
    IntegrableOn (fun y => ∑' c, F c y) Ω μ ∧
      ∫ y in Ω, ∑' c, F c y ∂μ = ∑' j, ∫ y in ΩJ j, F (r j) y ∂μ := by
  classical
  have hsm : ∀ (n : N) (y : H), n⁻¹ • y = (n : H)⁻¹ * y := fun n y => by
    first | rfl
  have hFeq' : ∀ (n : N) (j : J) (y : H), F (act n (r j)) y = F (r j) (n⁻¹ • y) := by
    intro n j y; rw [hFeq, hsm]
  have hrinj : Function.Injective r := fun j j' h => huniq j j' 1 (by rw [h1, h])
  haveI : Countable J := hrinj.countable
  haveI : MeasurableConstSMul N H := by
    first
      | infer_instance
  haveI : SMulInvariantMeasure N H μ := by
    first
      | infer_instance

  have hΩ : IsFundamentalDomain N Ω μ := by
    refine isFund_of_exact μ N Ω hΩm (fun x => ?_) (fun x hx g hg hgx => ?_)
    · obtain ⟨n, hn⟩ := hΩc x
      exact ⟨n, n.2, hn⟩
    · have := hΩu x hx ⟨g, hg⟩ hgx
      simpa using congrArg Subtype.val this

  have hbij : ∀ y : H, Function.Bijective
      (fun p : ({p : J × N | p.2⁻¹ • y ∈ ΩJ p.1} : Set (J × N)) =>
        act (p : J × N).2 (r (p : J × N).1)) := by
    intro y
    constructor
    · rintro ⟨⟨j, n⟩, hy⟩ ⟨⟨j', n'⟩, hy'⟩ heq
      have hy1 : n⁻¹ • y ∈ ΩJ j := hy
      have hy2 : n'⁻¹ • y ∈ ΩJ j' := hy'
      have heq' : act n (r j) = act n' (r j') := heq
      have e1 : act (n'⁻¹ * n) (r j) = r j' := by
        rw [hmul, heq', ← hmul, inv_mul_cancel, h1]
      obtain rfl : j = j' := huniq j j' _ e1
      have e2 : n'⁻¹ * n = 1 := by
        refine hJu j _ hy1 _ e1 ?_
        have hh : ((n'⁻¹ * n : N) : H) * (n⁻¹ • y) = n'⁻¹ • y := by
          simp only [hsm]
          first | simp [mul_assoc]
        rw [hh]
        exact hy2
      obtain rfl : n = n' := (inv_mul_eq_one.mp e2).symm
      rfl
    · intro c
      obtain ⟨j, n0, hc⟩ := hcov c
      obtain ⟨s, hs1, hs2⟩ := hJc j (n0⁻¹ • y)
      have hmem : (n0 * s⁻¹)⁻¹ • y ∈ ΩJ j := by
        have hh : (n0 * s⁻¹)⁻¹ • y = (s : H) * (n0⁻¹ • y) := by
          simp only [hsm]
          first | simp [mul_assoc]
        rw [hh]
        exact hs2
      refine ⟨⟨(j, n0 * s⁻¹), hmem⟩, ?_⟩
      show act (n0 * s⁻¹) (r j) = c
      have hsi : act s⁻¹ (r j) = r j := by
        calc act s⁻¹ (r j) = act s⁻¹ (act s (r j)) := by rw [hs1]
          _ = r j := by rw [← hmul, inv_mul_cancel, h1]
      rw [hmul, hsi, hc]
  have key : ∀ (y : H) {M : Type} [AddCommMonoid M] [TopologicalSpace M] (G : C → M),
      ∑' p : J × N, ({p : J × N | p.2⁻¹ • y ∈ ΩJ p.1} : Set (J × N)).indicator
        (fun p => G (act p.2 (r p.1))) p = ∑' c, G c := by
    intro y M _ _ G
    rw [← tsum_subtype]
    exact (Equiv.ofBijective _ (hbij y)).tsum_eq G
  obtain ⟨Ψ, hΨdef⟩ : ∃ Ψ : J × N → H → ℂ,
      Ψ = fun p y => (ΩJ p.1).indicator (F (r p.1)) (p.2⁻¹ • y) := ⟨_, rfl⟩
  have hΨ : ∀ y p, Ψ p y = ({p : J × N | p.2⁻¹ • y ∈ ΩJ p.1} : Set (J × N)).indicator
      (fun p => F (act p.2 (r p.1)) y) p := by
    intro y p
    subst hΨdef
    by_cases h : p.2⁻¹ • y ∈ ΩJ p.1
    · first
        | simp only [Set.indicator_apply, Set.mem_setOf_eq, h, ↓reduceIte, hFeq']
    · first
        | simp only [Set.indicator_apply, Set.mem_setOf_eq, h, ↓reduceIte]
  have hΨe : ∀ y p, ‖Ψ p y‖ₑ = ({p : J × N | p.2⁻¹ • y ∈ ΩJ p.1} : Set (J × N)).indicator
      (fun p => ‖F (act p.2 (r p.1)) y‖ₑ) p := by
    intro y p
    rw [hΨ y p]
    by_cases h : p.2⁻¹ • y ∈ ΩJ p.1
    · first
        | simp only [Set.indicator_apply, Set.mem_setOf_eq, h, ↓reduceIte]
    · first
        | simp only [Set.indicator_apply, Set.mem_setOf_eq, h, ↓reduceIte, enorm_zero]
  have hΨm : ∀ p, Measurable (Ψ p) := by
    intro p
    subst hΨdef
    simp only [hsm]
    exact ((hFm _).indicator (hJm _)).comp (measurable_const_mul _)
  have sumC : ∀ y, ∑' p, Ψ p y = ∑' c, F c y := fun y =>
    (tsum_congr (hΨ y)).trans (key y (fun c => F c y))
  have sumE : ∀ y, ∑' p, ‖Ψ p y‖ₑ = ∑' c, ‖F c y‖ₑ := fun y =>
    (tsum_congr (hΨe y)).trans (key y (fun c => ‖F c y‖ₑ))
  have hT : ∑' p : J × N, ∫⁻ x in Ω, ‖Ψ p x‖ₑ ∂μ = ∫⁻ x in Ω, ∑' c, ‖F c x‖ₑ ∂μ := by
    rw [← lintegral_tsum (fun p => (hΨm p).enorm.aemeasurable)]
    exact lintegral_congr (fun x => sumE x)
  have hTfin : ∑' p : J × N, ∫⁻ x in Ω, ‖Ψ p x‖ₑ ∂μ ≠ ⊤ := by
    rw [hT]
    exact hint.ne

  have hIJ : ∀ j, ∫ y in ΩJ j, F (r j) y ∂μ = ∑' n : N, ∫ y in Ω, Ψ (j, n) y ∂μ := by
    intro j
    have hrow : ∫⁻ x, ‖(ΩJ j).indicator (F (r j)) x‖ₑ ∂μ
        = ∑' n : N, ∫⁻ x in Ω, ‖Ψ (j, n) x‖ₑ ∂μ := by
      refine (hΩ.lintegral_eq_tsum' _).trans ?_
      subst hΨdef
      rfl
    have hlt : ∑' n : N, ∫⁻ x in Ω, ‖Ψ (j, n) x‖ₑ ∂μ < ⊤ := by
      refine lt_of_le_of_lt ?_ (lt_top_iff_ne_top.mpr hTfin)
      calc ∑' n : N, ∫⁻ x in Ω, ‖Ψ (j, n) x‖ₑ ∂μ
          ≤ ∑' j' : J, ∑' n : N, ∫⁻ x in Ω, ‖Ψ (j', n) x‖ₑ ∂μ :=
            ENNReal.le_tsum (f := fun j' => ∑' n : N, ∫⁻ x in Ω, ‖Ψ (j', n) x‖ₑ ∂μ) j
        _ = ∑' p : J × N, ∫⁻ x in Ω, ‖Ψ p x‖ₑ ∂μ :=
            (ENNReal.tsum_prod (f := fun a b => ∫⁻ x in Ω, ‖Ψ (a, b) x‖ₑ ∂μ)).symm
    have hfi : Integrable ((ΩJ j).indicator (F (r j))) μ := by
      refine ⟨((hFm (r j)).indicator (hJm j)).aestronglyMeasurable, ?_⟩
      first
        | (show ∫⁻ x, ‖(ΩJ j).indicator (F (r j)) x‖ₑ ∂μ < ⊤
           rw [hrow]
           exact hlt)
    calc ∫ y in ΩJ j, F (r j) y ∂μ = ∫ x, (ΩJ j).indicator (F (r j)) x ∂μ :=
          (integral_indicator (hJm j)).symm
      _ = ∑' n : N, ∫ x in Ω, (ΩJ j).indicator (F (r j)) (n⁻¹ • x) ∂μ :=
          hΩ.integral_eq_tsum' _ hfi
      _ = ∑' n : N, ∫ y in Ω, Ψ (j, n) y ∂μ := by
          subst hΨdef
          rfl
  have hmain : ∫ y in Ω, ∑' c, F c y ∂μ = ∑' p : J × N, ∫ y in Ω, Ψ p y ∂μ := by
    rw [← integral_tsum (fun p => (hΨm p).aestronglyMeasurable) hTfin]
    first
      | simp only [sumC]
  have hsplit : ∑' p : J × N, ∫ y in Ω, Ψ p y ∂μ
      = ∑' j, ∑' n : N, ∫ y in Ω, Ψ (j, n) y ∂μ := by
    have hasum : Summable fun p : J × N => ∫ y in Ω, Ψ p y ∂μ := by
      refine Summable.of_norm (Summable.of_nonneg_of_le (fun p => norm_nonneg _) (fun p => ?_)
        (ENNReal.summable_toReal hTfin))
      have h0 := norm_integral_le_lintegral_norm (μ := μ.restrict Ω) (Ψ p)
      first
        | simpa only [ofReal_norm_eq_enorm] using h0
    exact ((hasum.hasSum.prod_fiberwise fun j => (hasum.prod_factor j).hasSum).tsum_eq).symm
  refine ⟨?_, ?_⟩
  · have hEm : Measurable fun y => ∑' c, ‖F c y‖ₑ :=
      Measurable.tsum fun c => (hFm c).enorm
    have hfin_ae : ∀ᵐ y ∂(μ.restrict Ω), ∑' c, ‖F c y‖ₑ < ⊤ := ae_lt_top hEm hint.ne
    have hsN : ∀ y, ∑' c, ‖F c y‖ₑ < ⊤ → Summable fun c => ‖F c y‖ := by
      intro y hy
      have h0 := ENNReal.summable_toReal hy.ne
      first
        | simpa only [toReal_enorm] using h0
    have hgint : Integrable (fun y => (∑' c, ‖F c y‖ₑ).toReal) (μ.restrict Ω) :=
      integrable_toReal_of_lintegral_ne_top hEm.aemeasurable hint.ne
    have hbound : ∀ᵐ y ∂(μ.restrict Ω), ‖∑' c, F c y‖ ≤ (∑' c, ‖F c y‖ₑ).toReal := by
      filter_upwards [hfin_ae] with y hy
      rw [ENNReal.tsum_toReal_eq (fun c => by first | exact enorm_ne_top)]
      simp only [toReal_enorm]
      exact norm_tsum_le_tsum_norm (hsN y hy)
    have hgm : AEStronglyMeasurable (fun y => ∑' c, F c y) (μ.restrict Ω) := by
      haveI : Encodable C := Encodable.ofCountable C
      have hlim : ∀ᵐ y ∂(μ.restrict Ω), Filter.Tendsto (fun s : Finset C => ∑ c ∈ s, F c y)
          Filter.atTop (nhds (∑' c, F c y)) := by
        filter_upwards [hfin_ae] with y hy
        exact (Summable.of_norm (hsN y hy)).hasSum
      have hfs : ∀ s : Finset C, Measurable fun y => ∑ c ∈ s, F c y := fun s => by
        first
          | exact Finset.measurable_sum s (fun c _ => hFm c)
      first
        | exact aestronglyMeasurable_of_tendsto_ae Filter.atTop
            (fun s => (hfs s).aestronglyMeasurable) hlim
    exact Integrable.mono' hgint hgm hbound
  · rw [hmain, hsplit]
    exact tsum_congr fun j => (hIJ j).symm

end OrbitUnfold

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfUnfold =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPf", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.DoubleCosetSingleUnfolding\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfUnfold\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary\nimport Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical ComplexConjugate ENNReal NNReal
open MeasureTheory

namespace Formalism.L2.SG.Pf.RegroupPf

open Formalism.L2.SG.FoldBound Formalism.L2.SG.PoincareSeriesSquareIntegrable NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermOp

section Defs

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.TermOp.KExpCut

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word}
  {F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)} {F0' : FlagG (VS D) D.R.rS ((Tu D u' : ℕ) : D.host.E)}
  {what₂ rows' : Finset (Submodule (𝓞 D.host.E) (VS D).V)}
  (cs : ColSys X u what₂) (cs' : ColSys X u' rows') (FdN FdN' : Set X.B.I.Ginf)

def aC (ρ : cs.Cl) : X.B.I.Gf := (cs.h ρ : X.B.I.Gf) * X.xu u

def TermOn (t : GTerm X u u' F0 F0' what₂ rows') (ρ : cs.Cl) (ρ' : cs'.Cl) : Prop :=
  cs.lamOf ρ = t.lam ∧ cs'.lamOf ρ' = t.lam' ∧
    kOf X u u' (cs.h ρ : X.B.I.Gf) (cs'.h ρ' : X.B.I.Gf) t.pt ∈ X.K2

def Fterm (hK : X.LevelSubgroupCharacter) (T : Cu X u hK) (T' : Cu X u' hK) (t : GTerm X u u' F0 F0' what₂ rows') (ρ : cs.Cl)
    (x : X.B.I.Ginf) : ℂ :=
  conj (Ph X u hK T (x, aC cs ρ)) * Ph X u' hK T' (t.pt⁻¹ * (x, aC cs ρ))

def GamCol (ρ : cs.Cl) (ρ' : cs'.Cl) : Set X.B.I.GA :=
  {γ | γ ∈ Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I ∧ kOf X u u' (cs.h ρ : X.B.I.Gf) (cs'.h ρ' : X.B.I.Gf) γ ∈ X.K2}

def colRel (ρ : cs.Cl) (ρ' : cs'.Cl) : Setoid (GamCol cs cs' ρ ρ') where
  r a b := (a : X.B.I.GA)⁻¹ * b ∈ Srat X u'
  iseqv := ⟨fun a => by simp,
    fun {a b} h => by
      have := Subgroup.inv_mem _ h
      simpa [mul_inv_rev] using this,
    fun {a b c} h1 h2 => by
      have := Subgroup.mul_mem _ h1 h2
      simpa [mul_assoc] using this⟩

abbrev ColCl (ρ : cs.Cl) (ρ' : cs'.Cl) : Type := Quotient (colRel cs cs' ρ ρ')

def ColCl.pt {ρ : cs.Cl} {ρ' : cs'.Cl} (c : ColCl cs cs' ρ ρ') : X.B.I.GA :=
  ((Quotient.out c : GamCol cs cs' ρ ρ') : X.B.I.GA)

def SupportReindex (hK : X.LevelSubgroupCharacter) (Dt' : Set X.B.I.GA) : Prop :=
  ∀ (T' : Cu X u' hK) (ρ : cs.Cl) (y : X.B.I.Ginf),
    (∑' δ : Dt', Ph X u' hK T' ((δ : X.B.I.GA) * (y, aC cs ρ))) =
        ∑ ρ', ∑' c : ColCl cs cs' ρ ρ', Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, aC cs ρ)) ∧
      (∑' δ : Dt', ‖Ph X u' hK T' ((δ : X.B.I.GA) * (y, aC cs ρ))‖ₑ) =
        ∑ ρ', ∑' c : ColCl cs cs' ρ ρ', ‖Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, aC cs ρ))‖ₑ


variable (F0) in
def SlabAbs (hK : X.LevelSubgroupCharacter) (Dt' : Set X.B.I.GA) : Prop :=
  ∀ (Ωs : cs.Cl → Set X.B.I.Ginf), (∀ ρ, Formalism.L2.SG.HidaSetting.IsSFund X.B.I (NOcol F0 cs ρ) (Ωs ρ)) →
  ∀ (T : Cu X u hK) (T' : Cu X u' hK) (ρ : cs.Cl),
    ∫⁻ y in Ωs ρ, ‖Ph X u hK T (y, aC cs ρ)‖ₑ * ∑' δ : Dt', ‖Ph X u' hK T' ((δ : X.B.I.GA) * (y, aC cs ρ))‖ₑ
      ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) < ⊤


variable (F0 F0') in
def OrbitUnfold (hK : X.LevelSubgroupCharacter) : Prop :=
  ∀ (Ωs : cs.Cl → Set X.B.I.Ginf), (∀ ρ, Formalism.L2.SG.HidaSetting.IsSFund X.B.I (NOcol F0 cs ρ) (Ωs ρ)) →
  ∀ (T : Cu X u hK) (T' : Cu X u' hK) (ρ : cs.Cl) (ρ' : cs'.Cl),
    ∫⁻ y in Ωs ρ, ‖Ph X u hK T (y, aC cs ρ)‖ₑ *
        ∑' c : ColCl cs cs' ρ ρ', ‖Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, aC cs ρ))‖ₑ
      ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) < ⊤ →
    IntegrableOn (fun y => conj (Ph X u hK T (y, aC cs ρ)) *
        ∑' c : ColCl cs cs' ρ ρ', Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, aC cs ρ)))
      (Ωs ρ) (Formalism.L2.SG.ProjRows.muInf X.B.I) ∧
    ∫ y in Ωs ρ, conj (Ph X u hK T (y, aC cs ρ)) *
        ∑' c : ColCl cs cs' ρ ρ', Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, aC cs ρ))
      ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) =
      ∑' t : GTerm X u u' F0 F0' what₂ rows',
        if TermOn cs cs' t ρ ρ' then ∫ x in FundOf t, Fterm cs hK T T' t ρ x ∂(Formalism.L2.SG.ProjRows.muInf X.B.I)
        else 0


variable (F0 F0') in
def TermVal (hK : X.LevelSubgroupCharacter) : Prop :=
  ∀ (T : Cu X u hK) (T' : Cu X u' hK) (t : GTerm X u u' F0 F0' what₂ rows') (ρ : cs.Cl) (ρ' : cs'.Cl),
    TermOn cs cs' t ρ ρ' →
    ((scl FdN FdN' (X := X) (u := u) (u' := u') * X.volK2 : ℝ) : ℂ) *
        ∫ x in FundOf t, Fterm cs hK T T' t ρ x ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) =
      inner ℂ (blk cs cs' FdN FdN' t ρ ρ' (sharp hK cs' T' ρ')) (sharp hK cs T ρ)

end Defs

section TermValPf

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.PoincareInHH.Cut Formalism.L2.SG.TermOp.KExpCut Matrix

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word}
  {F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)} {F0' : FlagG (VS D) D.R.rS ((Tu D u' : ℕ) : D.host.E)}
  {what₂ rows' : Finset (Submodule (𝓞 D.host.E) (VS D).V)}
  (cs : ColSys X u what₂) (cs' : ColSys X u' rows') (FdN FdN' : Set X.B.I.Ginf)


variable (X u) in
theorem psiFinU_one : X.psiFinU u 1 = 1 := by
  unfold Formalism.L2.SG.HidaSetting.HidaSetting.psiFinU Formalism.L2.SG.HidaSetting.psiFin
  have hf : X.B.I.fmat 1 = 1 := by simp [Formalism.MainNotions.S.AutInst.fmat]
  have h0 : ∀ a, Formalism.L2.SG.HidaSetting.hA X.B.I (Formalism.L2.SG.HidaSetting.incl X.B.I (X.fR a))
      (X.B.I.fmat 1 *ᵥ Formalism.L2.SG.HidaSetting.incl X.B.I (Formalism.L2.SG.HidaSetting.nxt X.eR (X.zR u) a)) = 0 := by
    intro a
    rw [hf, Matrix.one_mulVec]
    unfold Formalism.L2.SG.HidaSetting.nxt
    split_ifs with h
    · rw [hA_f_e X, if_neg]
      intro hc
      have := congrArg Fin.val hc
      simp at this
    · exact adelicHermitian_hyperbolicF_anisotropic_eq_zero X u a
  simp only [h0, Finset.sum_const_zero, Formalism.L2.SG.HidaSetting.divN, mul_zero]
  exact X.psiEf_int 0 (zero_mem _)

theorem quadratic_character_inv (hK : X.LevelSubgroupCharacter) (k : X.B.I.Gf) (hk : k ∈ X.K2) : X.chi2 k⁻¹ = conj (X.chi2 k) := by
  obtain ⟨h1, _hmul, hinv, hchi, hnorm⟩ := hK
  have hk' := hinv k hk
  have hn1 : X.chi2 1 ≠ 0 := by
    intro h0
    have := hnorm 1 h1
    rw [h0, norm_zero] at this
    exact zero_ne_one this
  have hone : X.chi2 1 = 1 := by
    have e1 := hchi 1 h1 1 h1
    rw [one_mul] at e1
    have : X.chi2 1 * (X.chi2 1 - 1) = 0 := by rw [mul_sub, mul_one, ← e1, sub_self]
    rcases mul_eq_zero.mp this with h | h
    · exact absurd h hn1
    · exact sub_eq_zero.mp h
  have hprod : X.chi2 k⁻¹ * X.chi2 k = 1 := by
    rw [← hchi _ hk' _ hk, inv_mul_cancel, hone]
  have hnk : ‖X.chi2 k‖ = 1 := hnorm k hk
  have hne : X.chi2 k ≠ 0 := by
    intro h0
    rw [h0, norm_zero] at hnk
    exact zero_ne_one hnk
  have hc : conj (X.chi2 k) * X.chi2 k = 1 := by
    rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq, hnk]
    norm_num
  exact mul_right_cancel₀ hne (hprod.trans hc.symm)

theorem ph_col (hK : X.LevelSubgroupCharacter) (hWD : PhWellDef X u hK) (T : Cu X u hK) (x : X.B.I.Ginf) (h : Hfin X u)
    (k : X.B.I.Gf) (hk : k ∈ X.K2) :
    Ph X u hK T (x, (h : X.B.I.Gf) * X.xu u * k) =
      X.chi2 k * (T : X.Vpi u →ₗ[ℂ] (Hinf X u × Hfin X u → ℂ)) (X.Wu u x) (1, h) := by
  have h1 : (1 : X.B.I.Gf) ∈ X.NfinU u := by
    simp [Formalism.L2.SG.HidaSetting.HidaSetting.NfinU, Formalism.L2.SG.HidaSetting.Nfin, Formalism.L2.SG.Pf.unitaryCongruence.fmat_one]
  have hdec : IsDec X u ((h : X.B.I.Gf) * X.xu u * k) 1 h k := ⟨h1, hk, by rw [one_mul]⟩
  have hex : ∃ n h' k', IsDec X u ((x, (h : X.B.I.Gf) * X.xu u * k) : X.B.I.GA).2 n h' k' := ⟨1, h, k, hdec⟩
  have hPh : Ph X u hK T (x, (h : X.B.I.Gf) * X.xu u * k) =
      phVal X u hK T x hex.choose hex.choose_spec.choose hex.choose_spec.choose_spec.choose := dif_pos hex
  rw [hPh, hWD T x _ _ _ _ _ _ _ hex.choose_spec.choose_spec.choose_spec hdec]
  simp only [phVal, psiFinU_one, one_mul]

theorem inner_sharp (hK : X.LevelSubgroupCharacter) (T : Cu X u hK) (ρ : cs.Cl) (ξ : X.Vpi u) :
    inner ℂ (sharp hK cs T ρ) ξ = (T : X.Vpi u →ₗ[ℂ] (Hinf X u × Hfin X u → ℂ)) ξ (1, cs.h ρ) := by
  simp [sharp, InnerProductSpace.toDual_symm_apply]

theorem termVal_of (hK : X.LevelSubgroupCharacter) (hWD : PhWellDef X u hK) (hWD' : PhWellDef X u' hK)
    (hOI : OOIntAll X u u' F0 F0' what₂ rows') : TermVal F0 F0' cs cs' FdN FdN' hK := by
  intro T T' t ρ ρ' ht
  have hk := ht.2.2
  have := FiniteDimensional.complete ℂ (X.Vpi u)
  set k := kOf X u u' (cs.h ρ : X.B.I.Gf) (cs'.h ρ' : X.B.I.Gf) t.pt with hkdef
  have hF : ∀ x, Fterm cs hK T T' t ρ x = conj (X.chi2 k) *
      (inner ℂ (X.Wu u x) (sharp hK cs T ρ) * inner ℂ (sharp hK cs' T' ρ') (X.Wu u' (t.pt.1⁻¹ * x))) := by
    intro x
    unfold Fterm aC
    have e1 : Ph X u hK T (x, (cs.h ρ : X.B.I.Gf) * X.xu u) = inner ℂ (sharp hK cs T ρ) (X.Wu u x) := by
      have := ph_col hK hWD T x (cs.h ρ) 1 (one_mem_level_subgroup X)
      rw [mul_one] at this
      rw [this, chi2_apply_one X hK, one_mul, inner_sharp]
    have e2 : t.pt⁻¹ * ((x, (cs.h ρ : X.B.I.Gf) * X.xu u) : X.B.I.GA) =
        (t.pt.1⁻¹ * x, (cs'.h ρ' : X.B.I.Gf) * X.xu u' * k⁻¹) := by
      refine Prod.ext rfl ?_
      simp only [Prod.snd_mul, Prod.snd_inv, hkdef, kOf]
      group
    rw [e1, e2, ph_col hK hWD' T' _ (cs'.h ρ') k⁻¹ (hK.2.2.1 _ hk), quadratic_character_inv hK k hk,
      ← inner_sharp cs' hK T' ρ', ← inner_conj_symm (X.Wu u x)]
    ring
  have hint := hOI t
  unfold OOInt at hint
  set μ := Formalism.L2.SG.ProjRows.muInf X.B.I
  have hint' : IntegrableOn (fun x => rk1 (X.Wu u x) (X.Wu u' (t.pt.1⁻¹ * x)) (sharp hK cs' T' ρ'))
      (FundOf t) μ :=
    (ContinuousLinearMap.apply ℂ (X.Vpi u) (sharp hK cs' T' ρ')).integrable_comp hint
  simp only [hF]
  rw [integral_const_mul]
  have hb : blk cs cs' FdN FdN' t ρ ρ' =
      ((scl FdN FdN' (X := X) (u := u) (u' := u') * X.volK2 : ℝ) : ℂ) • (X.chi2 k • OOt t) := by
    unfold blk; exact if_pos ht
  rw [hb, _root_.smul_apply, _root_.smul_apply, inner_smul_left, inner_smul_left,
    Complex.conj_ofReal]
  congr 2
  unfold OOt OO
  rw [ContinuousLinearMap.integral_apply hint, ← inner_conj_symm, ← integral_inner hint', ← integral_conj]
  refine integral_congr_ae (ae_of_all _ fun x => ?_)
  simp only [rankOneInnerOperator_apply, inner_smul_right, map_mul, inner_conj_symm]
  ring

end TermValPf

section Reindex

variable {G : Type*} [Group G] {M : Type*} [AddCommMonoid M] [TopologicalSpace M]

theorem reindex_tsum (Γ S : Subgroup G) (D : Set G) (hD : Formalism.L2.SG.FoldBound.IsRightTransversal Γ S D)
    {I : Type*} (p : I → G) (hp : ∀ i, p i ∈ Γ) (hinj : ∀ i j, (p i)⁻¹ * p j ∈ S → i = j)
    (F : G → M) (hF : ∀ s ∈ S, ∀ γ, F (s * γ) = F γ) (hcov : ∀ γ ∈ Γ, F γ ≠ 0 → ∃ i, γ * p i ∈ S) :
    ∑' δ : D, F δ = ∑' i, F (p i)⁻¹ := by
  obtain ⟨hDΓ, hU⟩ := hD
  have hex : ∀ i, ∃ q : S × D, ((q.1 : G) * (q.2 : G)) = (p i)⁻¹ :=
    fun i => (hU _ (Γ.inv_mem (hp i))).exists
  choose q hq using hex
  have hFq : ∀ i, F ((q i).2 : G) = F (p i)⁻¹ := by
    intro i
    rw [← hq i, hF _ (q i).1.2]
  have hinjq : Function.Injective (fun i => (q i).2) := by
    intro i j hij
    apply hinj
    have hd : ((q i).2 : G) = ((q j).2 : G) := congrArg Subtype.val hij
    have ej' : p j = (((q j).1 : G) * ((q j).2 : G))⁻¹ := by rw [hq j, inv_inv]
    have e3 : (p i)⁻¹ * p j = ((q i).1 : G) * ((q j).1 : G)⁻¹ := by
      rw [← hq i, ej', hd]
      group
    rw [e3]
    exact S.mul_mem (q i).1.2 (S.inv_mem (q j).1.2)
  have hsupp : Function.support (fun δ : D => F δ) ⊆ Set.range (fun i => (q i).2) := by
    intro δ hδ
    obtain ⟨i, hi⟩ := hcov δ (hDΓ δ.2) hδ
    refine ⟨i, ?_⟩
    have huq := (hU _ (Γ.inv_mem (hp i))).unique (y₁ := q i)
      (y₂ := ((⟨(δ * p i)⁻¹, S.inv_mem hi⟩ : S), δ)) (hq i) (by
        show (δ * p i)⁻¹ * (δ : G) = (p i)⁻¹
        group)
    exact congrArg Prod.snd huq
  calc ∑' δ : D, F δ = ∑' i, F ((q i).2 : G) := (Function.Injective.tsum_eq hinjq hsupp).symm
    _ = ∑' i, F (p i)⁻¹ := tsum_congr hFq

end Reindex

section SupportPf

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.PoincareInHH.Cut Formalism.L2.SG.TermOp.KExpCut

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word}
  {what₂ rows' : Finset (Submodule (𝓞 D.host.E) (VS D).V)}
  (cs : ColSys X u what₂) (cs' : ColSys X u' rows')

def ColUniq : Prop :=
  ∀ (ρ : cs.Cl) (ρ₁ ρ₂ : cs'.Cl) (γ₁ γ₂ : X.B.I.GA), γ₁ ∈ GamCol cs cs' ρ ρ₁ → γ₂ ∈ GamCol cs cs' ρ ρ₂ →
    γ₁⁻¹ * γ₂ ∈ Srat X u' → ρ₁ = ρ₂

def ColCover : Prop :=
  ∀ (ρ : cs.Cl) (δ : X.B.I.GA), δ ∈ Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I →
    (∃ n h k, IsDec X u' (δ.2 * aC cs ρ) n h k) → ∃ (ρ' : cs'.Cl) (γ : X.B.I.GA), γ ∈ GamCol cs cs' ρ ρ' ∧ δ * γ ∈ Srat X u'

theorem supportReindex_of (hK : X.LevelSubgroupCharacter) (Dt' : Set X.B.I.GA) (hD' : IsReps X u' Dt')
    (hinv : ∀ (T' : Cu X u' hK), ∀ s ∈ Srat X u', ∀ y, Ph X u' hK T' (s * y) = Ph X u' hK T' y)
    (hsum : ∀ (T' : Cu X u' hK) x, Summable fun δ : Dt' => ‖Ph X u' hK T' ((δ : X.B.I.GA) * x)‖)
    (hU : ColUniq cs cs') (hC : ColCover cs cs') : SupportReindex cs cs' hK Dt' := by
  intro T' ρ y
  set x : X.B.I.GA := (y, aC cs ρ) with hx
  let I := Σ ρ' : cs'.Cl, ColCl cs cs' ρ ρ'
  let p : I → X.B.I.GA := fun i => ColCl.pt cs cs' i.2
  have hp : ∀ i, p i ∈ Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I := fun i => (Quotient.out i.2).2.1
  have hinj : ∀ i j, (p i)⁻¹ * p j ∈ Srat X u' → i = j := by
    rintro ⟨ρ₁, c₁⟩ ⟨ρ₂, c₂⟩ h
    have e := hU ρ ρ₁ ρ₂ _ _ (Quotient.out c₁).2 (Quotient.out c₂).2 h
    subst e
    have : c₁ = c₂ := by
      rw [← Quotient.out_eq c₁, ← Quotient.out_eq c₂]
      exact Quotient.sound h
    rw [this]
  have hcov : ∀ (F : X.B.I.GA → ℂ), (∀ γ, F γ ≠ 0 → ∃ n h k, IsDec X u' (γ.2 * aC cs ρ) n h k) →
      ∀ γ ∈ Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I, F γ ≠ 0 → ∃ i, γ * p i ∈ Srat X u' := by
    intro F hF γ hγ hne
    obtain ⟨ρ', γ', hγ', hs⟩ := hC ρ γ hγ (hF γ hne)
    refine ⟨⟨ρ', Quotient.mk _ ⟨γ', hγ'⟩⟩, ?_⟩
    have hr : (colRel cs cs' ρ ρ') ⟨γ', hγ'⟩ (Quotient.out (Quotient.mk (colRel cs cs' ρ ρ') ⟨γ', hγ'⟩)) :=
      Quotient.exact (Quotient.out_eq _).symm
    have : γ * p ⟨ρ', Quotient.mk _ ⟨γ', hγ'⟩⟩ = (γ * γ') * (γ'⁻¹ * p ⟨ρ', Quotient.mk _ ⟨γ', hγ'⟩⟩) := by group
    rw [this]
    exact (Srat X u').mul_mem hs hr
  have hsupp : ∀ γ, Ph X u' hK T' (γ * x) ≠ 0 → ∃ n h k, IsDec X u' (γ.2 * aC cs ρ) n h k := by
    intro γ hne
    by_contra hn
    exact hne (ph_eq_zero X u' hK T' _ hn)
  have hinvF : ∀ s ∈ Srat X u', ∀ γ, Ph X u' hK T' (s * γ * x) = Ph X u' hK T' (γ * x) := by
    intro s hs γ; rw [mul_assoc, hinv T' s hs]
  have h1 := reindex_tsum _ (Srat X u') Dt' hD' p hp hinj (fun γ => Ph X u' hK T' (γ * x)) hinvF
    (hcov _ hsupp)
  have h2 := reindex_tsum _ (Srat X u') Dt' hD' p hp hinj (fun γ => ‖Ph X u' hK T' (γ * x)‖ₑ)
    (fun s hs γ => congrArg (‖·‖ₑ) (hinvF s hs γ))
    (fun γ hγ hne => hcov (fun γ => Ph X u' hK T' (γ * x)) hsupp γ hγ (by
      intro h0; apply hne; simp only [h0, enorm_zero]))
  have hfin : ∑' i, ‖Ph X u' hK T' ((p i)⁻¹ * x)‖ₑ ≠ ⊤ := by
    rw [← h2]
    have e : ∑' δ : Dt', ‖Ph X u' hK T' ((δ : X.B.I.GA) * x)‖ₑ =
        ENNReal.ofReal (∑' δ : Dt', ‖Ph X u' hK T' ((δ : X.B.I.GA) * x)‖) := by
      rw [ENNReal.ofReal_tsum_of_nonneg (fun _ => norm_nonneg _) (hsum T' x)]
      simp
    rw [e]
    exact ENNReal.ofReal_ne_top
  have hsI : Summable fun i => Ph X u' hK T' ((p i)⁻¹ * x) := by
    refine Summable.of_nnnorm ?_
    exact ENNReal.tsum_coe_ne_top_iff_summable.1 hfin
  refine ⟨?_, ?_⟩
  · rw [h1]
    rw [hsI.tsum_sigma, tsum_fintype]
  · rw [h2, ENNReal.tsum_sigma', tsum_fintype]

end SupportPf

section OrbitPf

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.PoincareInHH.Cut Formalism.L2.SG.TermOp.KExpCut

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word}
  {F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)} {F0' : FlagG (VS D) D.R.rS ((Tu D u' : ℕ) : D.host.E)}
  {what₂ rows' : Finset (Submodule (𝓞 D.host.E) (VS D).V)}
  (cs : ColSys X u what₂) (cs' : ColSys X u' rows')


variable (F0 F0') in
def OrbitAlg : Prop :=
  ∀ (ρ : cs.Cl) (ρ' : cs'.Cl), ∃ (N : Subgroup X.B.I.Ginf) (lift : N → X.B.I.GA),
    (N : Set X.B.I.Ginf) = NOcol F0 cs ρ ∧ Countable N ∧ Countable (ColCl cs cs' ρ ρ') ∧
    (∀ n, (lift n).1 = n) ∧ lift 1 = 1 ∧ (∀ n m, lift (n * m) = lift n * lift m) ∧
    (∀ n, lift n ∈ Srat X u) ∧ (∀ n, (aC cs ρ)⁻¹ * (lift n).2 * aC cs ρ ∈ X.K2) ∧
    (∀ c : ColCl cs cs' ρ ρ', ∃ t : GTerm X u u' F0 F0' what₂ rows', TermOn cs cs' t ρ ρ' ∧
      ∃ n : N, (lift n * t.pt)⁻¹ * ColCl.pt cs cs' c ∈ Srat X u') ∧
    (∀ (t t' : GTerm X u u' F0 F0' what₂ rows') (n : N), TermOn cs cs' t ρ ρ' → TermOn cs cs' t' ρ ρ' →
      (lift n * t.pt)⁻¹ * t'.pt ∈ Srat X u' → t = t') ∧
    (∀ t : GTerm X u u' F0 F0' what₂ rows', TermOn cs cs' t ρ ρ' →
      ROinf t = {y | ∃ n : N, (n : X.B.I.Ginf) = y ∧ (lift n * t.pt)⁻¹ * t.pt ∈ Srat X u'})

theorem rel_out {ρ : cs.Cl} {ρ' : cs'.Cl} (γ : GamCol cs cs' ρ ρ') :
    (γ : X.B.I.GA)⁻¹ * ColCl.pt cs cs' (Quotient.mk (colRel cs cs' ρ ρ') γ) ∈ Srat X u' := by
  exact (colRel cs cs' ρ ρ').iseqv.symm (@Quotient.mk_out _ (colRel cs cs' ρ ρ') γ)

theorem orbitUnfold_of (hK : X.LevelSubgroupCharacter) (hWD : PhWellDef X u hK) (hWD' : PhWellDef X u' hK)
    (hFE : FundExists X u u' F0 F0' what₂ rows')
    (hinv : ∀ (T : Cu X u hK), ∀ s ∈ Srat X u, ∀ y, Ph X u hK T (s * y) = Ph X u hK T y)
    (hinv' : ∀ (T' : Cu X u' hK), ∀ s ∈ Srat X u', ∀ y, Ph X u' hK T' (s * y) = Ph X u' hK T' y)
    (hm : ∀ (T : Cu X u hK), Measurable (Ph X u hK T)) (hm' : ∀ (T' : Cu X u' hK), Measurable (Ph X u' hK T'))
    (hOA : OrbitAlg F0 F0' cs cs') : OrbitUnfold F0 F0' cs cs' hK := by
  intro Ωs hΩ T T' ρ ρ' hbound
  obtain ⟨N, lift, hNset, hNc, hCc, hl1, hlone, hlmul, hlS, hlK, hcov, huniq, hstab⟩ := hOA ρ ρ'
  set a := aC cs ρ with ha
  have hmemG : ∀ (n : N) (γ : GamCol cs cs' ρ ρ'), lift n * (γ : X.B.I.GA) ∈ GamCol cs cs' ρ ρ' := by
    intro n γ
    refine ⟨(Formalism.MainNotions.LeviCoordinates.rr_GF X.B.I).mul_mem (Subgroup.mem_inf.1 (hlS n)).1 γ.2.1, ?_⟩
    have e : kOf X u u' (cs.h ρ : X.B.I.Gf) (cs'.h ρ' : X.B.I.Gf) (lift n * (γ : X.B.I.GA)) =
        (a⁻¹ * (lift n).2 * a) * kOf X u u' (cs.h ρ : X.B.I.Gf) (cs'.h ρ' : X.B.I.Gf) (γ : X.B.I.GA) := by
      simp only [kOf, Prod.snd_mul, ha, aC]; group
    rw [e]
    exact hK.2.1 _ (hlK n) _ γ.2.2
  let act : N → ColCl cs cs' ρ ρ' → ColCl cs cs' ρ ρ' := fun n c =>
    Quotient.mk _ ⟨lift n * ColCl.pt cs cs' c, hmemG n (Quotient.out c)⟩
  have hact_pt : ∀ n c, (lift n * ColCl.pt cs cs' c)⁻¹ * ColCl.pt cs cs' (act n c) ∈ Srat X u' :=
    fun n c => rel_out cs cs' ⟨lift n * ColCl.pt cs cs' c, hmemG n (Quotient.out c)⟩
  have h1 : ∀ c, act 1 c = c := by
    intro c
    conv_rhs => rw [← Quotient.out_eq c]
    apply Quotient.sound
    show (lift 1 * ColCl.pt cs cs' c)⁻¹ * ColCl.pt cs cs' c ∈ Srat X u'
    rw [hlone, one_mul, inv_mul_cancel]
    exact (Srat X u').one_mem
  have hmul : ∀ n m c, act (n * m) c = act n (act m c) := by
    intro n m c
    apply Quotient.sound
    show (lift (n * m) * ColCl.pt cs cs' c)⁻¹ * (lift n * ColCl.pt cs cs' (act m c)) ∈ Srat X u'
    have e : (lift (n * m) * ColCl.pt cs cs' c)⁻¹ * (lift n * ColCl.pt cs cs' (act m c)) =
        (lift m * ColCl.pt cs cs' c)⁻¹ * ColCl.pt cs cs' (act m c) := by
      rw [hlmul]; group
    rw [e]
    exact hact_pt m c
  let F : ColCl cs cs' ρ ρ' → X.B.I.Ginf → ℂ := fun c y =>
    conj (Ph X u hK T (y, a)) * Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, a))
  have hFm : ∀ c, Measurable (F c) := by
    intro c
    refine (Complex.continuous_conj.measurable.comp ((hm T).comp measurable_prodMk_right)).mul ?_
    exact (hm' T').comp ((measurable_const_mul _).comp measurable_prodMk_right)
  have hPh'rel : ∀ (γ δ : X.B.I.GA), γ⁻¹ * δ ∈ Srat X u' → ∀ x,
      Ph X u' hK T' (δ⁻¹ * x) = Ph X u' hK T' (γ⁻¹ * x) := by
    intro γ δ h x
    have e : δ⁻¹ * x = (γ⁻¹ * δ)⁻¹ * (γ⁻¹ * x) := by group
    rw [e, hinv' T' _ ((Srat X u').inv_mem h)]
  have hFeq : ∀ (n : N) c y, F (act n c) y = F c ((n : X.B.I.Ginf)⁻¹ * y) := by
    intro n c y
    set κ := a⁻¹ * (lift n).2 * a with hκ
    have hκK : κ ∈ X.K2 := hlK n
    have e1 : (((n : X.B.I.Ginf)⁻¹ * y, a) : X.B.I.GA) = (lift n)⁻¹ * (y, a) * (1, κ) := by
      refine Prod.ext ?_ ?_
      · simp [hl1 n]
      · simp only [Prod.snd_mul, Prod.snd_inv, hκ]; group
    have hn : conj (X.chi2 κ) * X.chi2 κ = 1 := by
      rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq, hK.2.2.2.2 κ hκK]; simp
    simp only [F]
    rw [e1, ph_right_K X u hK hWD T _ κ hκK, hinv T _ ((Srat X u).inv_mem (hlS n)),
      show (ColCl.pt cs cs' c)⁻¹ * ((lift n)⁻¹ * (y, a) * (1, κ)) =
        ((ColCl.pt cs cs' c)⁻¹ * (lift n)⁻¹ * (y, a)) * (1, κ) by group,
      ph_right_K X u' hK hWD' T' _ κ hκK,
      hPh'rel (lift n * ColCl.pt cs cs' c) (ColCl.pt cs cs' (act n c)) (hact_pt n c), map_mul]
    have e2 : (lift n * ColCl.pt cs cs' c)⁻¹ * ((y, a) : X.B.I.GA) =
        (ColCl.pt cs cs' c)⁻¹ * (lift n)⁻¹ * (y, a) := by group
    rw [e2]
    linear_combination (-(conj (Ph X u hK T (y, a)) * Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (lift n)⁻¹ * (y, a)))) * hn

  let J := {t : GTerm X u u' F0 F0' what₂ rows' // TermOn cs cs' t ρ ρ'}
  have hptG : ∀ t : J, t.1.pt ∈ GamCol cs cs' ρ ρ' :=
    fun t => ⟨ratLink_mem X t.1.rep.2.1, t.2.2.2⟩
  let r : J → ColCl cs cs' ρ ρ' := fun t => Quotient.mk _ ⟨t.1.pt, hptG t⟩
  have hr : ∀ t : J, (t.1.pt)⁻¹ * ColCl.pt cs cs' (r t) ∈ Srat X u' := fun t => rel_out cs cs' ⟨t.1.pt, hptG t⟩
  have hcov' : ∀ c, ∃ j n, act n (r j) = c := by
    intro c
    obtain ⟨t, ht, n, hn⟩ := hcov c
    refine ⟨⟨t, ht⟩, n, ?_⟩
    conv_rhs => rw [← Quotient.out_eq c]
    apply Quotient.sound
    show (lift n * ColCl.pt cs cs' (r ⟨t, ht⟩))⁻¹ * ColCl.pt cs cs' c ∈ Srat X u'
    have e : (lift n * ColCl.pt cs cs' (r ⟨t, ht⟩))⁻¹ * ColCl.pt cs cs' c =
        ((t.pt)⁻¹ * ColCl.pt cs cs' (r ⟨t, ht⟩))⁻¹ * ((lift n * t.pt)⁻¹ * ColCl.pt cs cs' c) := by group
    rw [e]
    exact (Srat X u').mul_mem ((Srat X u').inv_mem (hr ⟨t, ht⟩)) hn
  have hrel_act : ∀ (n : N) (j j' : J), act n (r j) = r j' → (lift n * j.1.pt)⁻¹ * j'.1.pt ∈ Srat X u' := by
    intro n j j' h
    have h2 : (colRel cs cs' ρ ρ') ⟨lift n * ColCl.pt cs cs' (r j), hmemG n (Quotient.out (r j))⟩
        (Quotient.out (r j')) := by
      have := Quotient.exact (h.trans (Quotient.out_eq (r j')).symm)
      exact this
    have h3 : (lift n * ColCl.pt cs cs' (r j))⁻¹ * ColCl.pt cs cs' (r j') ∈ Srat X u' := h2
    have e : (lift n * j.1.pt)⁻¹ * j'.1.pt =
        ((j.1.pt)⁻¹ * ColCl.pt cs cs' (r j)) * ((lift n * ColCl.pt cs cs' (r j))⁻¹ * ColCl.pt cs cs' (r j')) *
          ((j'.1.pt)⁻¹ * ColCl.pt cs cs' (r j'))⁻¹ := by group
    rw [e]
    exact (Srat X u').mul_mem ((Srat X u').mul_mem (hr j) h3) ((Srat X u').inv_mem (hr j'))
  have huniq' : ∀ j j' n, act n (r j) = r j' → j = j' := by
    intro j j' n h
    exact Subtype.ext (huniq j.1 j'.1 n j.2 j'.2 (hrel_act n j j' h))
  have hfund : ∀ t : J, Formalism.L2.SG.HidaSetting.IsSFund X.B.I (ROinf t.1) (FundOf t.1) := by
    intro t
    have h := hFE t.1
    unfold FundOf
    rw [dif_pos h]
    exact h.choose_spec
  have hstabJ : ∀ (t : J) (n : N), act n (r t) = r t ↔ (n : X.B.I.Ginf) ∈ ROinf t.1 := by
    intro t n
    rw [hstab t.1 t.2]
    constructor
    · intro h
      exact ⟨n, rfl, hrel_act n t t h⟩
    · rintro ⟨n', hn', h⟩
      have hnn : n' = n := Subtype.ext hn'
      subst hnn
      apply Quotient.sound
      show (lift n' * ColCl.pt cs cs' (r t))⁻¹ * t.1.pt ∈ Srat X u'
      have e : (lift n' * ColCl.pt cs cs' (r t))⁻¹ * t.1.pt =
          ((t.1.pt)⁻¹ * ColCl.pt cs cs' (r t))⁻¹ * ((lift n' * t.1.pt)⁻¹ * t.1.pt) := by group
      rw [e]
      exact (Srat X u').mul_mem ((Srat X u').inv_mem (hr t)) h
  have := hNc
  have := hCc
  have hΩ' := hΩ ρ
  have hNmem : ∀ s, s ∈ NOcol F0 cs ρ ↔ s ∈ N := by intro s; rw [← hNset]; rfl
  have hint : ∫⁻ y in Ωs ρ, ∑' c, ‖F c y‖ₑ ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) < ⊤ := by
    refine lt_of_le_of_lt (le_of_eq ?_) hbound
    refine lintegral_congr fun y => ?_
    simp only [F, enorm_mul, RCLike.enorm_conj]
    rw [ENNReal.tsum_mul_left]
  obtain ⟨hI, hE⟩ := orbit_unfold (Formalism.L2.SG.ProjRows.muInf X.B.I) N act h1 hmul F hFm hFeq (Ωs ρ) hΩ'.1
    (fun x => by
      obtain ⟨s, hs, hsx⟩ := hΩ'.2.1 x
      exact ⟨⟨s, (hNmem s).1 hs⟩, hsx⟩)
    (fun x hx n hnx => Subtype.ext (hΩ'.2.2 x hx n ((hNmem n).2 n.2) hnx))
    r hcov' huniq' (fun t => FundOf t.1) (fun t => (hfund t).1)
    (fun t x => by
      obtain ⟨s, hs, hsx⟩ := (hfund t).2.1 x
      have hsN : s ∈ N := by
        rw [hstab t.1 t.2] at hs
        obtain ⟨n, rfl, -⟩ := hs
        exact n.2
      exact ⟨⟨s, hsN⟩, (hstabJ t ⟨s, hsN⟩).2 hs, hsx⟩)
    (fun t x hx n hn hnx => Subtype.ext ((hfund t).2.2 x hx n ((hstabJ t n).1 hn) hnx))
    hint
  have hL : (fun y => conj (Ph X u hK T (y, aC cs ρ)) *
      ∑' c : ColCl cs cs' ρ ρ', Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, aC cs ρ))) = fun y => ∑' c, F c y := by
    funext y
    rw [← tsum_mul_left]
  rw [hL]
  refine ⟨hI, ?_⟩
  rw [hE]
  have hterm : ∀ t : J, ∫ y in FundOf t.1, F (r t) y ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) =
      ∫ x in FundOf t.1, Fterm cs hK T T' t.1 ρ x ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) := by
    intro t
    refine integral_congr_ae (ae_of_all _ fun x => ?_)
    simp only [F, Fterm]
    rw [hPh'rel t.1.pt (ColCl.pt cs cs' (r t)) (hr t)]
  rw [tsum_congr hterm]
  have hsub := tsum_subtype {t : GTerm X u u' F0 F0' what₂ rows' | TermOn cs cs' t ρ ρ'}
    (fun t => ∫ x in FundOf t, Fterm cs hK T T' t ρ x ∂(Formalism.L2.SG.ProjRows.muInf X.B.I))
  refine hsub.trans (tsum_congr fun t => ?_)
  simp only [Set.indicator_apply, Set.mem_ofPred_eq]

end OrbitPf

section Asm

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.TermOp.KExpCut

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word}
  {F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)} {F0' : FlagG (VS D) D.R.rS ((Tu D u' : ℕ) : D.host.E)}
  {what₂ rows' : Finset (Submodule (𝓞 D.host.E) (VS D).V)}
  (TR : TypedRed X) (cs : ColSys X u what₂) (cs' : ColSys X u' rows') (FdN FdN' : Set X.B.I.Ginf)

theorem inner_tsum_blk (hK : X.LevelSubgroupCharacter) (hA : AbsConvT F0 F0' TR cs cs' FdN FdN')
    (hTV : TermVal F0 F0' cs cs' FdN FdN' hK) (T : Cu X u hK) (T' : Cu X u' hK) (ρ : cs.Cl) (ρ' : cs'.Cl) :
    inner ℂ ((∑' t : GTerm X u u' F0 F0' what₂ rows', blk cs cs' FdN FdN' t ρ ρ') (sharp hK cs' T' ρ'))
        (sharp hK cs T ρ) =
      ((scl FdN FdN' (X := X) (u := u) (u' := u') * X.volK2 : ℝ) : ℂ) *
        ∑' t : GTerm X u u' F0 F0' what₂ rows', (if TermOn cs cs' t ρ ρ' then
          ∫ x in FundOf t, Fterm cs hK T T' t ρ x ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) else 0) := by
  have hs := (summable_blk_of_abs TR cs cs' FdN FdN' hA ρ ρ').hasSum
  have h1 := hs.mapL (ContinuousLinearMap.apply ℂ (X.Vpi u) (sharp hK cs' T' ρ'))
  have h2 := h1.mapL (innerSL ℂ (sharp hK cs T ρ))
  have h3 := h2.map (starRingEnd ℂ) Complex.continuous_conj
  have e : ∀ v : X.Vpi u, inner ℂ v (sharp hK cs T ρ) =
      starRingEnd ℂ (innerSL ℂ (sharp hK cs T ρ) v) := by
    intro v; rw [innerSL_apply_apply, inner_conj_symm]
  have h3' : HasSum (fun t : GTerm X u u' F0 F0' what₂ rows' =>
      starRingEnd ℂ (innerSL ℂ (sharp hK cs T ρ) (blk cs cs' FdN FdN' t ρ ρ' (sharp hK cs' T' ρ'))))
      (starRingEnd ℂ (innerSL ℂ (sharp hK cs T ρ)
        ((∑' t : GTerm X u u' F0 F0' what₂ rows', blk cs cs' FdN FdN' t ρ ρ') (sharp hK cs' T' ρ')))) := h3
  rw [e, ← h3'.tsum_eq, ← tsum_mul_left]
  congr 1
  funext t
  rw [← e]
  by_cases ht : TermOn cs cs' t ρ ρ'
  · rw [if_pos ht, hTV T T' t ρ ρ' ht]
  · rw [if_neg ht, mul_zero]
    have : blk cs cs' FdN FdN' t ρ ρ' = 0 := by unfold blk; exact if_neg ht
    rw [this]; simp

theorem regroup_of (hK : X.LevelSubgroupCharacter) (Dt' : Set X.B.I.GA) (hA : AbsConvT F0 F0' TR cs cs' FdN FdN')
    (hSR : SupportReindex cs cs' hK Dt') (hSA : SlabAbs F0 cs hK Dt' (u' := u')) (hOU : OrbitUnfold F0 F0' cs cs' hK)
    (hTV : TermVal F0 F0' cs cs' FdN FdN' hK) :
    Regroup F0 F0' cs cs' FdN FdN' hK Dt' := by
  intro Ωs hΩ T T' ρ
  have hPs : ∀ y, Pser X u' hK Dt' T' (y, (cs.h ρ : X.B.I.Gf) * X.xu u) =
      ∑ ρ', ∑' c : ColCl cs cs' ρ ρ', Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, aC cs ρ)) :=
    fun y => (hSR T' ρ y).1
  have hfin : ∀ ρ' : cs'.Cl, ∫⁻ y in Ωs ρ, ‖Ph X u hK T (y, aC cs ρ)‖ₑ *
        ∑' c : ColCl cs cs' ρ ρ', ‖Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, aC cs ρ))‖ₑ
      ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) < ⊤ := by
    intro ρ'
    refine lt_of_le_of_lt (lintegral_mono fun y => ?_) (hSA Ωs hΩ T T' ρ)
    rw [(hSR T' ρ y).2]
    exact mul_le_mul_of_nonneg_left (Finset.single_le_sum
      (f := fun ρ'' => ∑' c : ColCl cs cs' ρ ρ'', ‖Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, aC cs ρ))‖ₑ)
      (fun _ _ => zero_le) (Finset.mem_univ ρ')) zero_le
  have hOU' := fun ρ' => hOU Ωs hΩ T T' ρ ρ' (hfin ρ')
  have hL : (∫ y in Ωs ρ, conj (Ph X u hK T (y, (cs.h ρ : X.B.I.Gf) * X.xu u)) *
          Pser X u' hK Dt' T' (y, (cs.h ρ : X.B.I.Gf) * X.xu u) ∂(Formalism.L2.SG.ProjRows.muInf X.B.I)) =
      ∑ ρ', ∫ y in Ωs ρ, conj (Ph X u hK T (y, aC cs ρ)) *
          ∑' c : ColCl cs cs' ρ ρ', Ph X u' hK T' ((ColCl.pt cs cs' c)⁻¹ * (y, aC cs ρ))
            ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) := by
    rw [← integral_finsetSum _ (fun ρ' _ => (hOU' ρ').1)]
    refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
    try dsimp only
    rw [hPs y, Finset.mul_sum]
    rfl
  rw [hL, Finset.mul_sum]
  refine Finset.sum_congr rfl fun ρ' _ => ?_
  rw [inner_tsum_blk TR cs cs' FdN FdN' hK hA hTV T T' ρ ρ', ← (hOU' ρ').2, Complex.ofReal_mul]

end Asm

section Closed

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.TermOp.KExpCut Formalism.L2.SG.Full

def Hyps {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u u' : D.what₂.Word) : Prop :=
  X.LevelSubgroupNormalized ∧
    Formalism.L2.SG.WuDecay.FoldOK X u Y.hK ∧ Formalism.L2.SG.WuDecay.FoldOK X u' Y.hK ∧
    InHH X u Y.hK ∧ InHH X u' Y.hK ∧
    FundExists X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u') ∧
    OOIntAll X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u') ∧
    OOFundIndep X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u') ∧
    AmpWellDef (X.Fu u) (X.Fu u') (Y.cs u) (Y.cs u') ∧
    AbsConvT (X.Fu u) (X.Fu u') Y.TR (Y.cs u) (Y.cs u') (Y.FN u) (Y.FN u')

def SupportReindexC : Prop :=
  ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u u' : D.what₂.Word),
    Hyps X Y u u' → SupportReindex (Y.cs u) (Y.cs u') Y.hK (Y.Dt u')

def SlabAbsC : Prop :=
  ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u u' : D.what₂.Word),
    Hyps X Y u u' → SlabAbs (X.Fu u) (Y.cs u) Y.hK (Y.Dt u') (u' := u')

def OrbitUnfoldC : Prop :=
  ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u u' : D.what₂.Word),
    Hyps X Y u u' → OrbitUnfold (X.Fu u) (X.Fu u') (Y.cs u) (Y.cs u') Y.hK

def TermValC : Prop :=
  ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u u' : D.what₂.Word),
    Hyps X Y u u' → TermVal (X.Fu u) (X.Fu u') (Y.cs u) (Y.cs u') (Y.FN u) (Y.FN u') Y.hK

theorem regroupC_of (h1 : SupportReindexC) (h2 : SlabAbsC) (h3 : OrbitUnfoldC) (h4 : TermValC) :
    Formalism.L2.SG.Pf.Slab.RegroupC := by
  unfold Formalism.L2.SG.Pf.Slab.RegroupC
  intro D X Y u u' hL hF hF' hI hI' hFE hOI hOF hAW hA
  have hH : Hyps X Y u u' := ⟨hL, hF, hF', hI, hI', hFE, hOI, hOF, hAW, hA⟩
  exact regroup_of Y.TR (Y.cs u) (Y.cs u') (Y.FN u) (Y.FN u') Y.hK (Y.Dt u') hA (h1 D X Y u u' hH)
    (h2 D X Y u u' hH) (h3 D X Y u u' hH) (h4 D X Y u u' hH)

def PhWellDefC : Prop :=
  ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u : D.what₂.Word), X.LevelSubgroupNormalized → PhWellDef X u Y.hK

theorem termValC_of (h : PhWellDefC) : TermValC := by
  unfold TermValC
  intro D X Y u u' hH
  exact termVal_of (Y.cs u) (Y.cs u') (Y.FN u) (Y.FN u') Y.hK (h D X Y u hH.1) (h D X Y u' hH.1) hH.2.2.2.2.2.2.1

theorem regroupC_of' (hW : PhWellDefC) (h1 : SupportReindexC) (h2 : SlabAbsC) (h3 : OrbitUnfoldC) :
    Formalism.L2.SG.Pf.Slab.RegroupC := regroupC_of h1 h2 h3 (termValC_of hW)

def ColUniqC : Prop :=
  ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u u' : D.what₂.Word),
    Hyps X Y u u' → ColUniq (Y.cs u) (Y.cs u')

def ColCoverC : Prop :=
  ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u u' : D.what₂.Word),
    Hyps X Y u u' → ColCover (Y.cs u) (Y.cs u')

theorem supportReindexC_of (h1 : ColUniqC) (h2 : ColCoverC) : SupportReindexC := by
  unfold SupportReindexC
  intro D X Y u u' hH
  obtain ⟨-, Ω₀, a, hc, -, hT⟩ := hH.2.2.1
  exact supportReindex_of (Y.cs u) (Y.cs u') Y.hK (Y.Dt u') (Y.reps u')
    (fun T' => ((hT T').1 Ω₀ hc subset_rfl).2.1)
    (fun T' => (hH.2.2.2.2.1 T' (Y.Dt u') (Y.reps u')).1) (h1 D X Y u u' hH) (h2 D X Y u u' hH)

theorem regroupC_of'' (hW : PhWellDefC) (hU : ColUniqC) (hC : ColCoverC) (h2 : SlabAbsC) (h3 : OrbitUnfoldC) :
    Formalism.L2.SG.Pf.Slab.RegroupC := regroupC_of' hW (supportReindexC_of hU hC) h2 h3

def OrbitAlgC : Prop :=
  ∀ (D : D7) (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (Y : Full X) (u u' : D.what₂.Word),
    Hyps X Y u u' → OrbitAlg (X.Fu u) (X.Fu u') (Y.cs u) (Y.cs u')

theorem orbitUnfoldC_of (hW : PhWellDefC) (hO : OrbitAlgC) : OrbitUnfoldC := by
  unfold OrbitUnfoldC
  intro D X Y u u' hH
  obtain ⟨-, Ω₀, a, hc, -, hT⟩ := hH.2.1
  obtain ⟨-, Ω₀', a', hc', -, hT'⟩ := hH.2.2.1
  exact orbitUnfold_of (Y.cs u) (Y.cs u') Y.hK (hW D X Y u hH.1) (hW D X Y u' hH.1) hH.2.2.2.2.2.1
    (fun T => ((hT T).1 Ω₀ hc subset_rfl).2.1) (fun T' => ((hT' T').1 Ω₀' hc' subset_rfl).2.1)
    (fun T => ((hT T).1 Ω₀ hc subset_rfl).1) (fun T' => ((hT' T').1 Ω₀' hc' subset_rfl).1)
    (hO D X Y u u' hH)

theorem regrouping_of_closed_lemmas (hW : PhWellDefC) (hU : ColUniqC) (hC : ColCoverC) (hS : SlabAbsC) (hO : OrbitAlgC) :
    Formalism.L2.SG.Pf.Slab.RegroupC := regroupC_of'' hW hU hC hS (orbitUnfoldC_of hW hO)

end Closed

end Formalism.L2.SG.Pf.RegroupPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPf =====
