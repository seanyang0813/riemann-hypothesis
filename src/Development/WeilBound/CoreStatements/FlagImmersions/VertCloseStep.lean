module

public import Mathlib.RingTheory.RegularLocalRing.Defs
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.LengthCokerEqKerAddDimOneOrderSum
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.MetricsProjectionFormulaNef
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UnitRatioDivisorSupportEq
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ChartLatticeNormMembership
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FrameDefinitions.Values
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PVertFactorSmooth
public import Mathlib.NumberTheory.Padics.PadicVal.Basic
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.TowerOrigin
public import GroundTheory.HeightsAndTheta.Heights.Intersections.ProjLineRankTwoPushforwardHypotheses
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootOriginHeightComparisonThree
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootOriginHeightComparisonTwo
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LogResolutionReindexed
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.MemAbLocusIff
public import Development.WeilBound.CoreStatements.FlagImmersions.SamePotTransRsmul
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsSmoothHermTrivLine
import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLocalRep
import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PSectionOrderAtPoint
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.CoordinateIdeals.MemMCoordIdealOfAevalEqZero
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
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.MemDivSuppOfDivCycleNeZero
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.FlagLabelBasesExist
import GroundTheory.HeightsAndTheta.Heights.HeightComparison.IsMultiHomogIdealIff
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.DivCycleEqZeroOfNotMemZ, Development.WeilBound.CoreStatements.FlagImmersions.VertCloseStep

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.DivCycleEqZeroOfNotMemZ =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.DivCycleEqZeroOfNotMemZ", "h": "module\n\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.LengthCokerEqKerAddDimOneOrderSum\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.MetricsProjectionFormulaNef\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UnitRatioDivisorSupportEq\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ChartLatticeNormMembership\nimport GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLocalRep\nimport GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PSectionOrderAtPoint\nimport GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.CoordinateIdeals.MemMCoordIdealOfAevalEqZero\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FrameDefinitions.Values\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PVertFactorSmooth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.MemDivSuppOfDivCycleNeZero\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.NumberTheory.Padics.PadicVal.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace RootFieldNumerics.Ref

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo GlobalTheory.CompanionTheory.Ar
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)
open ReciprocityTheory.ChartRestriction.G.AI.I4 (imageZ IsPullHerm)

section SlopeTestRemainingChoices

set_option linter.unusedSectionVars false

open ReciprocityTheory.ChartRestriction.G.AI ReciprocityTheory.ChartRestriction.G.AI.I1 GroundTheory.Heights₂.Heights GroundTheory.Heights₂.Heights.HilbertSamuel

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem multAt_eqZ (J W : Ideal (MRing ι)) (hW : W.IsPrime) :
    multAt J W = (locLen (MRing ι ⧸ J) ⟨W, hW⟩).toNat := by
  simp [multAt, hW, locLen]

open Classical in
theorem divCycle_applyZ (V W : Ideal (MRing ι)) (f : MRing ι) :
    divCycle V f W = if W ∈ divSupp V f then multAt (V ⊔ Ideal.span {f}) W else 0 := by
  simp only [ReciprocityTheory.ChartRestriction.G.Geo.divCycle, Finsupp.ofSupportFinite_coe]

theorem mem_of_mem_divSuppZ {V W : Ideal (MRing ι)} {f : MRing ι} (hW : W ∈ divSupp V f) : f ∈ W :=
  hW.1.1.2 (Ideal.mem_sup_right (Ideal.mem_span_singleton_self _))

theorem mem_divSupp_of_memZ {V W : Ideal (MRing ι)} (hV : V.IsPrime) {f g : MRing ι}
    (hgV : g ∉ V) (hW : W ∈ divSupp V f) (hg : g ∈ W) : W ∈ divSupp V g := by
  have hVW : V ≤ W := le_sup_left.trans hW.1.1.2
  refine ⟨⟨⟨hW.1.1.1, sup_le hVW ((Ideal.span_singleton_le_iff_mem _).mpr hg)⟩, fun Q hQ hQW => ?_⟩, hW.2⟩
  exact (eq_of_le_of_mem_minimalPrimes hV hW.1 hQ.1 (le_sup_left.trans hQ.2)
    (hQ.2 (Ideal.mem_sup_right (Ideal.mem_span_singleton_self g))) hgV hQW).ge

theorem divCycle_eq_zero_of_not_memZ {V W : Ideal (MRing ι)} {f : MRing ι} (h : f ∉ W) : divCycle V f W = 0 := by
  rw [divCycle_applyZ, if_neg fun h2 => h (mem_of_mem_divSuppZ h2)]

theorem divCycle_mulZ {V : Ideal (MRing ι)} (hV : V.IsPrime) {f g : MRing ι}
    (hf : f ∉ V) (hg : g ∉ V) (W : Ideal (MRing ι)) :
    divCycle V (f * g) W = divCycle V f W + divCycle V g W := by
  classical
  have hfg : f * g ∉ V := fun h => (hV.mem_or_mem h).elim hf hg
  simp only [divCycle_applyZ]
  by_cases h : W ∈ divSupp V (f * g)
  · have hWp := h.1.1.1
    have key := locLen_mul hV hf g ⟨W, hWp⟩
    have hfin := locLen_ne_top h.1
    rw [key] at hfin
    rw [if_pos h, multAt_eqZ _ _ hWp, key]
    by_cases hfW : f ∈ W <;> by_cases hgW : g ∈ W
    · rw [if_pos (mem_divSupp_of_memZ hV hf h hfW), if_pos (mem_divSupp_of_memZ hV hg h hgW),
        multAt_eqZ _ _ hWp, multAt_eqZ _ _ hWp, ENat.toNat_add (WithTop.add_ne_top.mp hfin).1
          (WithTop.add_ne_top.mp hfin).2, add_comm]
    · rw [if_pos (mem_divSupp_of_memZ hV hf h hfW), if_neg fun h2 => hgW (mem_of_mem_divSuppZ h2),
        multAt_eqZ _ _ hWp, locLen_quot_eq_zero _ hgW, zero_add, add_zero]
    · rw [if_neg fun h2 => hfW (mem_of_mem_divSuppZ h2), if_pos (mem_divSupp_of_memZ hV hg h hgW),
        multAt_eqZ _ _ hWp, locLen_quot_eq_zero (V := V) (g := f) _ hfW, add_zero, zero_add]
    · exact absurd (hWp.mem_or_mem (mem_of_mem_divSuppZ h)) (by tauto)
  · rw [if_neg h, if_neg fun h2 => h (mem_divSupp_of_memZ hV hfg h2
        (W.mul_mem_right _ (mem_of_mem_divSuppZ h2))),
      if_neg fun h2 => h (mem_divSupp_of_memZ hV hfg h2 (W.mul_mem_left _ (mem_of_mem_divSuppZ h2)))]

theorem pow_not_memZ {V : Ideal (MRing ι)} (hV : V.IsPrime) {f : MRing ι} (hf : f ∉ V) (n : ℕ) : f ^ n ∉ V :=
  fun h => hf (hV.mem_of_pow_mem n h)

theorem divCycle_oneZ (V W : Ideal (MRing ι)) : divCycle V 1 W = 0 := by
  rw [divCycle_applyZ, if_neg]
  intro h
  exact h.1.1.1.ne_top ((Ideal.eq_top_iff_one _).2 (mem_of_mem_divSuppZ h))

theorem divCycle_powZ {V : Ideal (MRing ι)} (hV : V.IsPrime) {f : MRing ι} (hf : f ∉ V) (n : ℕ)
    (W : Ideal (MRing ι)) : divCycle V (f ^ n) W = n * divCycle V f W := by
  induction n with
  | zero => simp [divCycle_oneZ]
  | succ n ih => rw [pow_succ, divCycle_mulZ hV (pow_not_memZ hV hf n) hf, ih]; ring

theorem divCycle_congrZ {V : Ideal (MRing ι)} {f g : MRing ι} (h : f - g ∈ V) (W : Ideal (MRing ι)) :
    divCycle V f W = divCycle V g W := by
  have key : ∀ {a b : MRing ι}, a - b ∈ V → V ⊔ Ideal.span {a} ≤ V ⊔ Ideal.span {b} := by
    intro a b hab
    refine sup_le le_sup_left ((Ideal.span_singleton_le_iff_mem _).mpr ?_)
    have : a = (a - b) + b := by ring
    rw [this]
    exact add_mem (Ideal.mem_sup_left hab) (Ideal.mem_sup_right (Ideal.mem_span_singleton_self b))
  have e : V ⊔ Ideal.span {f} = V ⊔ Ideal.span {g} :=
    le_antisymm (key h) (key (by simpa using V.neg_mem h))
  have e2 : divSupp V f = divSupp V g := by simp only [divSupp, e]
  rw [divCycle_applyZ, divCycle_applyZ, e2, e]

theorem divCycle_le_of_rel {V W : Ideal (MRing ι)} (hV : V.IsPrime) {a b u : MRing ι} (ha : a ∉ V) (hb : b ∉ V)
    (hu : u ∉ W) {n : ℕ} (c : ℕ → MRing ι)
    (hrel : u * a ^ n + ∑ j ∈ Finset.range n, c j * a ^ j * b ^ (n - j) ∈ V) :
    divCycle V b W ≤ divCycle V a W := by
  classical
  by_cases h : W ∈ divSupp V b
  · have hWp := h.1.1.1
    have hVW : V ≤ W := le_sup_left.trans h.1.1.2
    have haW : a ∈ W := SectionOrderAtPoint.mem_of_rel hWp (mem_of_mem_divSuppZ h) hu c (hVW hrel)
    have h' := mem_divSupp_of_memZ hV ha h haW
    rw [divCycle_applyZ, divCycle_applyZ, if_pos h, if_pos h', multAt_eqZ _ _ hWp, multAt_eqZ _ _ hWp]
    exact ENat.toNat_le_toNat
      (SectionOrderAtPoint.locLen_le_of_rel hV ha hb ⟨W, hWp⟩ hVW hu c hrel (locLen_ne_top h.1))
      (locLen_ne_top h'.1)
  · rw [divCycle_applyZ, if_neg h]
    exact Nat.zero_le _

variable {Ω : Type} [Field Ω]

theorem mono_not_mem {W : Ideal (MRing ι)} (hW : W.IsPrime) (c : ∀ k, ι k)
    (hc : ∀ k, (X ⟨k, c k⟩ : MRing ι) ∉ W) (e : K → ℕ) : (∏ k, (X ⟨k, c k⟩ : MRing ι) ^ e k) ∉ W := by
  intro h
  obtain ⟨k, -, hk⟩ := (Ideal.IsPrime.prod_mem_iff (hp := hW)).1 h
  exact pow_not_memZ hW (hc k) _ hk

theorem chart_form (y : (Σ k, ι k) → Ω) (c : ∀ k, ι k) (hc : ∀ k, y ⟨k, c k⟩ ≠ 0) {x : Ω}
    (hx : x ∈ chartRingZ y c) : ∃ e₀ : K → ℕ, ∀ e : K → ℕ, e₀ ≤ e → ∃ h : MRing ι, IsMultiHomog h e ∧
      aeval y h = x * ∏ k, y ⟨k, c k⟩ ^ e k := by
  classical
  have up : ∀ (x : Ω) (e₀ : K → ℕ), (∃ h : MRing ι, IsMultiHomog h e₀ ∧ aeval y h = x * ∏ k, y ⟨k, c k⟩ ^ e₀ k) →
      ∀ e : K → ℕ, e₀ ≤ e → ∃ h : MRing ι, IsMultiHomog h e ∧ aeval y h = x * ∏ k, y ⟨k, c k⟩ ^ e k := by
    rintro x e₀ ⟨h, hh, he⟩ e hle
    refine ⟨h * ∏ k, (X ⟨k, c k⟩ : MRing ι) ^ (e k - e₀ k), ?_, ?_⟩
    · have := LowerBoundFree.isMultiHomog_mul hh (_root_.GroundTheory.Heights₂.Heights.HilbertSamuel.LocalRep.isMultiHomog_chartMono c fun k => e k - e₀ k)
      convert this using 1
      funext k
      have : e₀ k ≤ e k := hle k
      simp only [Pi.add_apply]
      omega
    · simp only [map_mul, map_prod, map_pow, aeval_X, he, mul_assoc, ← Finset.prod_mul_distrib, ← pow_add]
      congr 1
      refine Finset.prod_congr rfl fun k _ => ?_
      rw [Nat.add_sub_cancel' (hle k)]
  induction hx using Algebra.adjoin_induction with
  | mem x hx =>
    obtain ⟨p, rfl⟩ := hx
    refine ⟨fun k => if k = p.1 then 1 else 0, up _ _ ⟨X p, LowerBoundFree.isMultiHomog_X_single p, ?_⟩⟩
    rw [Finset.prod_eq_single p.1 (fun k _ hk => by simp [hk]) (by simp)]
    have := hc p.1
    simp only [aeval_X, if_true, pow_one]
    field_simp
  | algebraMap r =>
    exact ⟨0, up _ _ ⟨C r, LocalRep.isMultiHomog_C r, by simp⟩⟩
  | add a b _ _ ha hb =>
    obtain ⟨e₁, h₁⟩ := ha
    obtain ⟨e₂, h₂⟩ := hb
    refine ⟨e₁ + e₂, fun e he => ?_⟩
    obtain ⟨f, hf, ef⟩ := h₁ e (le_trans le_self_add he)
    obtain ⟨g, hg, eg⟩ := h₂ e (le_trans le_add_self he)
    exact ⟨f + g, LowerBoundFree.isMultiHomog_add hf hg, by rw [map_add (f := _), ef, eg, add_mul]⟩
  | mul a b _ _ ha hb =>
    obtain ⟨e₁, h₁⟩ := ha
    obtain ⟨e₂, h₂⟩ := hb
    obtain ⟨f, hf, ef⟩ := h₁ e₁ le_rfl
    obtain ⟨g, hg, eg⟩ := h₂ e₂ le_rfl
    refine ⟨e₁ + e₂, up _ _ ⟨f * g, LowerBoundFree.isMultiHomog_mul hf hg, ?_⟩⟩
    simp only [map_mul, ef, eg, Pi.add_apply, pow_add, Finset.prod_mul_distrib]
    ring

theorem div_le_of_integral (y : (Σ k, ι k) → Ω) (hP : (mCoordIdeal y).IsPrime) {W : Ideal (MRing ι)}
    (hW : W.IsPrime) (c : ∀ k, ι k) (hcW : ∀ k, (X ⟨k, c k⟩ : MRing ι) ∉ W) (hc : ∀ k, y ⟨k, c k⟩ ≠ 0)
    {a b : MRing ι} {d : K → ℕ} (ha : IsMultiHomog a d) (hb : IsMultiHomog b d)
    (haP : a ∉ mCoordIdeal y) (hbP : b ∉ mCoordIdeal y) {t : Ω} (ht : aeval y a = t * aeval y b)
    (hint : IsIntegral (chartRingZ y c) t) :
    divCycle (mCoordIdeal y) b W ≤ divCycle (mCoordIdeal y) a W := by
  classical
  obtain ⟨p, hpm, hp⟩ := hint
  set n := p.natDegree
  rw [hpm.as_sum] at hp
  simp only [Polynomial.eval₂_add, Polynomial.eval₂_X_pow, Polynomial.eval₂_finsetSum,
    Polynomial.eval₂_mul, Polynomial.eval₂_C] at hp
  choose e₀ he₀ using fun j => chart_form y c hc (p.coeff j).2
  let e : K → ℕ := ∑ j ∈ Finset.range n, e₀ j
  have hex : ∀ j, ∃ h : MRing ι, j ∈ Finset.range n → IsMultiHomog h e ∧
      aeval y h = (p.coeff j : Ω) * ∏ k, y ⟨k, c k⟩ ^ e k := by
    intro j
    by_cases hj : j ∈ Finset.range n
    · obtain ⟨h, hh⟩ := he₀ j e (Finset.single_le_sum (f := e₀) (fun _ _ => zero_le) hj)
      exact ⟨h, fun _ => hh⟩
    · exact ⟨0, fun h => absurd h hj⟩
  choose h hh using hex
  refine divCycle_le_of_rel hP haP hbP (mono_not_mem hW c hcW e) (n := n) h ?_
  refine LowerBoundFree.mem_mCoordIdeal_of_aeval_eq_zero y (d := e + n • d) ?_ ?_
  · refine LowerBoundFree.isMultiHomog_add
      (LowerBoundFree.isMultiHomog_mul (_root_.GroundTheory.Heights₂.Heights.HilbertSamuel.LocalRep.isMultiHomog_chartMono c e) (SectionOrderAtPoint.isMultiHomog_pow' ha n))
      (SectionOrderAtPoint.isMultiHomog_sum' _ _ fun j hj => ?_)
    have h1 := LowerBoundFree.isMultiHomog_mul (LowerBoundFree.isMultiHomog_mul
      (hh j hj).1 (SectionOrderAtPoint.isMultiHomog_pow' ha j))
      (SectionOrderAtPoint.isMultiHomog_pow' hb (n - j))
    convert h1 using 1
    have hj' : j ≤ n := (Finset.mem_range.mp hj).le
    funext k
    simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, add_assoc]
    rw [← add_mul, Nat.add_sub_cancel' hj']
  · have hsum : ∀ j ∈ Finset.range n,
        aeval y (h j * a ^ j * b ^ (n - j)) = ((∏ k, y ⟨k, c k⟩ ^ e k) *
          aeval y b ^ n) * (algebraMap (chartRingZ y c) Ω (p.coeff j) * t ^ j) := by
      intro j hj
      have hj' : j ≤ n := (Finset.mem_range.mp hj).le
      have e3 : aeval y b ^ n = aeval y b ^ j * aeval y b ^ (n - j) := by
        rw [← pow_add, Nat.add_sub_cancel' hj']
      simp only [map_mul, map_pow, ht, (hh j hj).2]
      rw [e3]
      show _ = _ * ((p.coeff j : Ω) * t ^ j)
      ring

    rw [map_add (f := _), map_sum, Finset.sum_congr rfl hsum, ← Finset.mul_sum, map_mul, map_pow, ht, mul_pow]
    simp only [map_prod, map_pow, aeval_X]
    linear_combination ((∏ k, y ⟨k, c k⟩ ^ e k) * aeval y b ^ n) * hp

theorem C_not_mem {P : Ideal (MRing ι)} (hP : IsHorizontal P) {n : ℤ} (hn : n ≠ 0) : (C n : MRing ι) ∉ P := by
  intro h
  have h2 : n ∈ P.comap (C : ℤ →+* MRing ι) := h
  rw [hP, Ideal.mem_bot] at h2
  exact hn h2

theorem half_bound (y : (Σ k, ι k) → Ω) (hP : (mCoordIdeal y).IsPrime) (hH : IsHorizontal (mCoordIdeal y))
    {q m : ℕ} (hm : 0 < m) {f g : MRing ι} {df dg : K → ℕ} (hf : IsMultiHomog f df) (hg : IsMultiHomog g dg)
    (hfP : f ∉ mCoordIdeal y) (hgP : g ∉ mCoordIdeal y) {u : Ω} (hu : aeval y f = u * aeval y g)
    (hval : ∀ c : ∀ k, ι k, (∀ k, y ⟨k, c k⟩ ≠ 0) → ∀ W : ValuationSubring Ω, (∀ p, y p / y ⟨p.1, c p.1⟩ ∈ W) →
      (m : Ω) * (u * ∏ k, y ⟨k, c k⟩ ^ (-((df k : ℤ) - dg k))) ^ q ∈ W) (W : Ideal (MRing ι)) :
    q * divCycle (mCoordIdeal y) g W ≤
      divCycle (mCoordIdeal y) (C (m : ℤ)) W + q * divCycle (mCoordIdeal y) f W := by
  classical
  by_cases h : W ∈ divSupp (mCoordIdeal y) g
  swap
  · rw [divCycle_applyZ _ _ g, if_neg h]
    simp
  have hWp := h.1.1.1
  have hVW : mCoordIdeal y ≤ W := le_sup_left.trans h.1.1.2
  choose c hcW using h.2
  have hcP : ∀ k, (X ⟨k, c k⟩ : MRing ι) ∉ mCoordIdeal y := fun k hk => hcW k (hVW hk)
  have hc : ∀ k, y ⟨k, c k⟩ ≠ 0 := fun k hk => hcP k ((GlobalTheory.CompanionTheory.Ar.Top.LineUnit.X_mem_mCoordIdeal_iff y _).2 hk)
  have hmP : (C (m : ℤ) : MRing ι) ∉ mCoordIdeal y := C_not_mem hH (by exact_mod_cast hm.ne')
  have hint : IsIntegral (chartRingZ y c) ((m : Ω) * (u * ∏ k, y ⟨k, c k⟩ ^ (-((df k : ℤ) - dg k))) ^ q) := by
    refine GlobalTheory.CompanionTheory.Ar.ChartVal.isIntegral_of_forall_valuationSubring Subtype.val_injective _
      fun V hV => hval c hc V fun p => ?_
    exact hV ⟨_, Algebra.subset_adjoin ⟨p, rfl⟩⟩
  have m1 := mono_not_mem hP c hcP dg
  have m2 := mono_not_mem hP c hcP df
  have n1 : f * ∏ k, (X ⟨k, c k⟩ : MRing ι) ^ dg k ∉ mCoordIdeal y := fun h => (hP.mem_or_mem h).elim hfP m1
  have n2 : g * ∏ k, (X ⟨k, c k⟩ : MRing ι) ^ df k ∉ mCoordIdeal y := fun h => (hP.mem_or_mem h).elim hgP m2
  have n3 := pow_not_memZ hP n1 q
  have n4 := pow_not_memZ hP n2 q
  have n5 : C (m : ℤ) * (f * ∏ k, (X ⟨k, c k⟩ : MRing ι) ^ dg k) ^ q ∉ mCoordIdeal y :=
    fun h => (hP.mem_or_mem h).elim hmP n3
  have key := div_le_of_integral y hP hWp c hcW hc (d := q • (df + dg))
    (a := C (m : ℤ) * (f * ∏ k, (X ⟨k, c k⟩ : MRing ι) ^ dg k) ^ q)
    (b := (g * ∏ k, (X ⟨k, c k⟩ : MRing ι) ^ df k) ^ q)
    (by
      have := LowerBoundFree.isMultiHomog_mul (LocalRep.isMultiHomog_C (ι := ι) (m : ℤ))
        (SectionOrderAtPoint.isMultiHomog_pow' (LowerBoundFree.isMultiHomog_mul hf (_root_.GroundTheory.Heights₂.Heights.HilbertSamuel.LocalRep.isMultiHomog_chartMono c dg)) q)
      simpa using this)
    (by
      have := SectionOrderAtPoint.isMultiHomog_pow' (LowerBoundFree.isMultiHomog_mul hg (_root_.GroundTheory.Heights₂.Heights.HilbertSamuel.LocalRep.isMultiHomog_chartMono c df)) q
      rwa [add_comm dg df] at this)
    n5 n4 (by
      have e : (∏ k, y ⟨k, c k⟩ ^ dg k) =
          (∏ k, y ⟨k, c k⟩ ^ (-((df k : ℤ) - dg k))) * ∏ k, y ⟨k, c k⟩ ^ df k := by
        rw [← Finset.prod_mul_distrib]
        refine Finset.prod_congr rfl fun k _ => ?_
        rw [← zpow_natCast, ← zpow_natCast, ← zpow_add₀ (hc k)]
        congr 1
        ring
      simp only [map_mul, map_pow, map_prod, aeval_X, hu, e, map_natCast]
      ring) hint
  rw [divCycle_mulZ hP hmP n3, divCycle_powZ hP n1, divCycle_powZ hP n2, divCycle_mulZ hP hfP m1,
    divCycle_mulZ hP hgP m2, divCycle_eq_zero_of_not_memZ (mono_not_mem hWp c hcW dg),
    divCycle_eq_zero_of_not_memZ (mono_not_mem hWp c hcW df)] at key
  simpa using key

theorem charOf_dvd {W : Ideal (MRing ι)} {n : ℕ} (h : (C (n : ℤ) : MRing ι) ∈ W) : charOf W ∣ n := by
  set I := W.comap (C : ℤ →+* MRing ι)
  have hd : Submodule.IsPrincipal.generator I ∣ (n : ℤ) := (Submodule.IsPrincipal.mem_iff_generator_dvd I).1 h
  exact Int.natAbs_dvd_natAbs.2 hd

theorem div_const_off {P W : Ideal (MRing ι)} {m : ℕ} (hm : 0 < m)
    (h : ¬ ((charOf W).Prime ∧ charOf W ∣ m)) : divCycle P (C (m : ℤ)) W = 0 := by
  classical
  rw [divCycle_applyZ, if_neg]
  intro hW
  have hd := charOf_dvd (mem_of_mem_divSuppZ hW)
  refine h ⟨PB.prime_charOf_of_ne_zero hW.1.1.1 fun h0 => ?_, hd⟩
  rw [h0, zero_dvd_iff] at hd
  omega

theorem div_const_on {P W : Ideal (MRing ι)} (hP : P.IsPrime) (hH : IsHorizontal P) {m : ℕ} (hm : 0 < m)
    (hp : (charOf W).Prime) :
    divCycle P (C (m : ℤ)) W = padicValNat (charOf W) m * divCycle P (C (charOf W : ℤ)) W := by
  set p := charOf W with hpd
  have : Fact p.Prime := ⟨hp⟩
  obtain ⟨m', hm'⟩ : p ^ padicValNat p m ∣ m := (_root_.Dvd.intro_left _ (_root_.Nat.divMaxPow_mul_pow_padicValNat _ _))
  have hm0 : 0 < m' := Nat.pos_of_ne_zero fun h => by rw [h, mul_zero] at hm'; omega
  have hnd : ¬ p ∣ m' := by
    intro hd
    refine pow_succ_padicValNat_not_dvd (p := p) hm.ne' ?_
    rw [pow_succ]
    conv_rhs => rw [hm']
    rw [← Nat.padicValNat_def]
    exact Nat.mul_dvd_mul_left _ hd
  have e : (C (m : ℤ) : MRing ι) = C (p : ℤ) ^ padicValNat p m * C (m' : ℤ) := by
    rw [← map_pow, ← map_mul]
    congr 1
    exact_mod_cast hm'
  have h1 : (C (p : ℤ) : MRing ι) ∉ P := C_not_mem hH (by exact_mod_cast hp.ne_zero)
  have h2 : (C (m' : ℤ) : MRing ι) ∉ P := C_not_mem hH (by exact_mod_cast hm0.ne')
  rw [e, divCycle_mulZ hP (pow_not_memZ hP h1 _) h2, divCycle_powZ hP h1,
    div_const_off hm0 fun h => hnd h.2, add_zero]

end SlopeTestRemainingChoices

theorem div_close {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {Ω : Type} [Field Ω]
    (y : (Σ k, ι k) → Ω) {d : ℕ} (hA : IsArithVar (mCoordIdeal y) d) (T : Finset ℕ) (hT : ∀ p ∈ T, p.Prime)
    {q m : ℕ} (hq : 0 < q) (hm : 0 < m) (hmT : ∀ p : ℕ, p.Prime → p ∣ m → p ∈ T)
    {f g : MRing ι} {df dg : K → ℕ} (hf : IsMultiHomog f df) (hg : IsMultiHomog g dg)
    (hfP : f ∉ mCoordIdeal y) (hgP : g ∉ mCoordIdeal y) {u : Ω} (hu : aeval y f = u * aeval y g)
    (hval : ∀ c : ∀ k, ι k, (∀ k, y ⟨k, c k⟩ ≠ 0) → ∀ W : ValuationSubring Ω, (∀ p, y p / y ⟨p.1, c p.1⟩ ∈ W) →
      (m : Ω) * (u * ∏ k, y ⟨k, c k⟩ ^ (-((df k : ℤ) - dg k))) ^ q ∈ W ∧
      (m : Ω) * ((u * ∏ k, y ⟨k, c k⟩ ^ (-((df k : ℤ) - dg k)))⁻¹) ^ q ∈ W) :
    (∀ W, charOf W ∉ T → divCycle (mCoordIdeal y) f W = divCycle (mCoordIdeal y) g W) ∧
      ∀ W, charOf W ∈ T → |(divCycle (mCoordIdeal y) f W : ℝ) - divCycle (mCoordIdeal y) g W| ≤
        ((padicValNat (charOf W) m : ℝ) / q) * divCycle (mCoordIdeal y) (C (charOf W : ℤ)) W := by
  have hP : (mCoordIdeal y).IsPrime := hA.2.1.1
  have hH : IsHorizontal (mCoordIdeal y) := hA.2.2.1
  have hf0 : aeval y f ≠ 0 := fun h =>
    hfP (GroundTheory.Heights₂.Heights.LowerBoundFree.mem_mCoordIdeal_of_aeval_eq_zero y hf h)
  have hu0 : u ≠ 0 := fun h => hf0 (by rw [hu, h, zero_mul])
  have h1 := half_bound y hP hH hm hf hg hfP hgP hu fun c hc W hW => (hval c hc W hW).1
  have h2 := half_bound y hP hH (q := q) hm hg hf hgP hfP (u := u⁻¹)
    (by rw [hu, ← mul_assoc, inv_mul_cancel₀ hu0, one_mul]) fun c hc W hW => by
      have := (hval c hc W hW).2
      rw [mul_inv, ← Finset.prod_inv_distrib] at this
      convert this using 5 with k
      rw [← zpow_neg]
      congr 1
      ring
  refine ⟨fun W hW => ?_, fun W hW => ?_⟩
  · have h0 : divCycle (mCoordIdeal y) (C (m : ℤ)) W = 0 := div_const_off hm fun h => hW (hmT _ h.1 h.2)
    have a1 := h1 W
    have a2 := h2 W
    rw [h0, zero_add] at a1 a2
    exact Nat.eq_of_mul_eq_mul_left hq (le_antisymm a2 a1)
  · have h0 := div_const_on hP hH hm (hT _ hW)
    have a1 := h1 W
    have a2 := h2 W
    rw [h0] at a1 a2
    have b1 := (Nat.cast_le (α := ℝ)).2 a1
    have b2 := (Nat.cast_le (α := ℝ)).2 a2
    push_cast at b1 b2
    have hq' : (0 : ℝ) < q := by exact_mod_cast hq
    rw [div_mul_eq_mul_div, le_div_iff₀ hq', ← abs_of_pos hq', ← abs_mul, abs_le]
    constructor <;> nlinarith

theorem div_eq_of_unit {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {P : Ideal (MRing ι)}
    (hP : P.IsPrime) {f g : MRing ι} (hfP : f ∉ P) (hgP : g ∉ P)
    (h : ∀ W : Ideal (MRing ι), W.IsPrime → P ≤ W → IsRelevant W → ∃ u v : MRing ι, u ∉ W ∧ v ∉ W ∧ u * f - v * g ∈ P) :
    divCycle P f = divCycle P g := by
  classical
  ext W
  by_cases hW : W ∈ divSupp P f ∨ W ∈ divSupp P g
  · have hW' : W.IsPrime ∧ P ≤ W ∧ IsRelevant W := by
      rcases hW with hW | hW <;> exact ⟨hW.1.1.1, le_sup_left.trans hW.1.1.2, hW.2⟩
    obtain ⟨u, v, hu, hv, huv⟩ := h W hW'.1 hW'.2.1 hW'.2.2
    have := divCycle_congrZ huv W
    rwa [divCycle_mulZ hP (fun h => hu (hW'.2.1 h)) hfP, divCycle_mulZ hP (fun h => hv (hW'.2.1 h)) hgP,
      divCycle_eq_zero_of_not_memZ hu, divCycle_eq_zero_of_not_memZ hv, zero_add, zero_add] at this
  · rw [divCycle_applyZ, divCycle_applyZ, if_neg fun h => hW (Or.inl h), if_neg fun h => hW (Or.inr h)]

theorem exists_forms {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {Ω : Type} [Field Ω]
    (y : (Σ k, ι k) → Ω) (hB : Birational y) (hy : ∀ k, ∃ i, y ⟨k, i⟩ ≠ 0) (a : K → ℤ) {u : Ω} (hu : u ≠ 0) :
    ∃ (f g : MRing ι) (df dg : K → ℕ), IsMultiHomog f df ∧ IsMultiHomog g dg ∧ f ∉ mCoordIdeal y ∧
      g ∉ mCoordIdeal y ∧ (∀ k, (df k : ℤ) - dg k = a k) ∧ aeval y f = u * aeval y g := by
  choose c hc using hy
  obtain ⟨d, g, h, hg, hh, h0, e⟩ := hB (u * ∏ k, y ⟨k, c k⟩ ^ (-a k))
  have hn : ∀ b : K → ℕ, (∏ k, y ⟨k, c k⟩ ^ b k) ≠ 0 := fun b =>
    Finset.prod_ne_zero_iff.2 fun k _ => pow_ne_zero _ (hc k)
  have e2 : (∏ k, y ⟨k, c k⟩ ^ (-a k)) * ∏ k, y ⟨k, c k⟩ ^ (a k).toNat = ∏ k, y ⟨k, c k⟩ ^ (-a k).toNat := by
    rw [← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun k _ => ?_
    rw [← zpow_natCast, ← zpow_natCast, ← zpow_add₀ (hc k)]
    congr 1
    omega
  have eg : aeval y (h * ∏ k, (X ⟨k, c k⟩ : MRing ι) ^ (-a k).toNat) ≠ 0 := by
    simp only [map_mul, map_prod, map_pow, aeval_X]
    exact mul_ne_zero h0 (hn _)
  have ef : aeval y (g * ∏ k, (X ⟨k, c k⟩ : MRing ι) ^ (a k).toNat) =
      u * aeval y (h * ∏ k, (X ⟨k, c k⟩ : MRing ι) ^ (-a k).toNat) := by
    simp only [map_mul, map_prod, map_pow, aeval_X, e, ← e2]
    ring
  refine ⟨_, _, _, _, GroundTheory.Heights₂.Heights.LowerBoundFree.isMultiHomog_mul hg (_root_.GroundTheory.Heights₂.Heights.HilbertSamuel.LocalRep.isMultiHomog_chartMono c fun k => (a k).toNat),
    GroundTheory.Heights₂.Heights.LowerBoundFree.isMultiHomog_mul hh (_root_.GroundTheory.Heights₂.Heights.HilbertSamuel.LocalRep.isMultiHomog_chartMono c fun k => (-a k).toNat),
    fun hm => ?_, fun hm => eg (GlobalTheory.CompanionTheory.Ar.Giv.aeval_eq_zero_of_mem_mCoordIdeal y hm), fun k => ?_, ef⟩
  · have := GlobalTheory.CompanionTheory.Ar.Giv.aeval_eq_zero_of_mem_mCoordIdeal y hm
    rw [ef] at this
    exact mul_ne_zero hu eg this
  · simp only [Pi.add_apply]
    push_cast
    omega

end RootFieldNumerics.Ref
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.DivCycleEqZeroOfNotMemZ =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.VertCloseStep =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.VertCloseStep", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.TowerOrigin\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.ProjLineRankTwoPushforwardHypotheses\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootOriginHeightComparisonThree\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootOriginHeightComparisonTwo\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LogResolutionReindexed\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.MemAbLocusIff\npublic import Development.WeilBound.CoreStatements.FlagImmersions.DivCycleEqZeroOfNotMemZ\npublic import Development.WeilBound.CoreStatements.FlagImmersions.SamePotTransRsmul\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsSmoothHermTrivLine\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.FlagLabelBasesExist\nimport GroundTheory.HeightsAndTheta.Heights.HeightComparison.IsMultiHomogIdealIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace RootFieldNumerics.Ref

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo GlobalTheory.CompanionTheory.Ar ReciprocityTheory.AnForm.M GlobalTheory.CompanionTheory.Ar.Chg
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)
open ReciprocityTheory.ChartRestriction.G.AI.I4 (imageZ IsPullHerm blockFnField)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Inter (pullHerm)

theorem vertClose_step {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {Ω : Type} [Field Ω]
    (y : (Σ k, ι k) → Ω) {d : ℕ} (hA : IsArithVar (mCoordIdeal y) d) (T : Finset ℕ) (hT : ∀ p ∈ T, p.Prime)
    {q m N : ℕ} (hq : 0 < q) (hm : 0 < m) (hmT : ∀ p : ℕ, p.Prime → p ∣ m → p ∈ T) {β : Type} (I : Finset β)
    (hI : I.card ≤ N) (f g : β → MRing ι) (df dg : β → K → ℕ) (u : β → Ω) (A₁ B₁ : β → HermLine ι) (A B : HermLine ι)
    (hf : ∀ r, IsMultiHomog (f r) (df r)) (hg : ∀ r, IsMultiHomog (g r) (dg r)) (hfP : ∀ r, f r ∉ mCoordIdeal y)
    (hgP : ∀ r, g r ∉ mCoordIdeal y) (hu0 : ∀ r, u r ≠ 0) (hu : ∀ r, aeval y (f r) = u r * aeval y (g r))
    (hd : ∀ r k, (df r k : ℤ) - dg r k = (A₁ r).a k - (B₁ r).a k)
    (hiso : ∀ r, ∀ z ∈ mcPts (mCoordIdeal y), ‖eval z (map (Int.castRingHom ℂ) (f r))‖ * (B₁ r).h z =
      ‖eval z (map (Int.castRingHom ℂ) (g r))‖ * (A₁ r).h z)
    (hval : ∀ r, ∀ c : ∀ k, ι k, (∀ k, y ⟨k, c k⟩ ≠ 0) → ∀ W : ValuationSubring Ω,
      (∀ p, y p / y ⟨p.1, c p.1⟩ ∈ W) →
      (m : Ω) * (u r * ∏ k, y ⟨k, c k⟩ ^ (-((df r k : ℤ) - dg r k))) ^ q ∈ W ∧
      (m : Ω) * ((u r * ∏ k, y ⟨k, c k⟩ ^ (-((df r k : ℤ) - dg r k)))⁻¹) ^ q ∈ W)
    (hAa : A.a = -∑ r ∈ I, (A₁ r).a) (hBa : B.a = -∑ r ∈ I, (B₁ r).a)
    (hAh : ∀ z ∈ mcPts (mCoordIdeal y), Real.log (A.h z) = -∑ r ∈ I, Real.log ((A₁ r).h z))
    (hBh : ∀ z ∈ mcPts (mCoordIdeal y), Real.log (B.h z) = -∑ r ∈ I, Real.log ((B₁ r).h z)) :
    PB.VertClose (mCoordIdeal y) T (fun p => (padicValNat p (m ^ N) : ℝ) / q) A B := by
  classical
  have hP : (mCoordIdeal y).IsPrime := hA.2.1.1
  have hF : IsMultiHomog (∏ r ∈ I, g r) (∑ r ∈ I, dg r) := DegBlock.isMultiHomog_prod' I fun r _ => hg r
  have hG : IsMultiHomog (∏ r ∈ I, f r) (∑ r ∈ I, df r) := DegBlock.isMultiHomog_prod' I fun r _ => hf r
  have hFP : ∏ r ∈ I, g r ∉ mCoordIdeal y := fun h => by
    obtain ⟨r, -, hr⟩ := (Ideal.IsPrime.prod_mem_iff (hp := hP)).1 h
    exact hgP r hr
  have hGP : ∏ r ∈ I, f r ∉ mCoordIdeal y := fun h => by
    obtain ⟨r, -, hr⟩ := (Ideal.IsPrime.prod_mem_iff (hp := hP)).1 h
    exact hfP r hr
  have hU : aeval y (∏ r ∈ I, g r) = (∏ r ∈ I, (u r)⁻¹) * aeval y (∏ r ∈ I, f r) := by
    rw [map_prod, map_prod, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun r _ => ?_
    rw [hu, inv_mul_cancel_left₀ (hu0 r)]
  have hprod : ∀ (W : ValuationSubring Ω) (t : β → Ω), (∀ r, (m : Ω) * t r ^ q ∈ W) →
      ((m ^ N : ℕ) : Ω) * (∏ r ∈ I, t r) ^ q ∈ W := by
    intro W t ht
    have e : ((m ^ N : ℕ) : Ω) * (∏ r ∈ I, t r) ^ q =
        ((m ^ (N - I.card) : ℕ) : Ω) * ∏ r ∈ I, ((m : Ω) * t r ^ q) := by
      rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.prod_pow, ← mul_assoc]
      congr 1
      push_cast
      rw [← pow_add, Nat.sub_add_cancel hI]
    rw [e]
    exact mul_mem (natCast_mem W _) (prod_mem fun r _ => ht r)
  have hdiv := div_close y hA T hT hq (pow_pos hm N) (fun p hp h => hmT p hp (hp.dvd_of_dvd_pow h)) hF hG hFP hGP hU
    (fun c hc W hW => by
      have e : (∏ r ∈ I, (u r)⁻¹) * ∏ k, y ⟨k, c k⟩ ^ (-((((∑ r ∈ I, dg r) k : ℕ) : ℤ) - ((∑ r ∈ I, df r) k : ℕ))) =
          ∏ r ∈ I, (u r * ∏ k, y ⟨k, c k⟩ ^ (-((df r k : ℤ) - dg r k)))⁻¹ := by
        simp only [mul_inv, Finset.prod_mul_distrib]
        congr 1
        simp only [← Finset.prod_inv_distrib, ← zpow_neg]
        rw [Finset.prod_comm]
        refine Finset.prod_congr rfl fun k _ => ?_
        rw [prod_zpow_sum _ (hc k)]
        congr 1
        simp [Finset.sum_apply, Finset.sum_sub_distrib]
      rw [e]
      refine ⟨hprod W _ fun r => (hval r c hc W hW).2, ?_⟩
      rw [← Finset.prod_inv_distrib]
      exact hprod W _ fun r => by rw [inv_inv]; exact (hval r c hc W hW).1)
  refine ⟨_, _, _, _, hF, hG, hFP, hGP, fun k => ?_, fun z hz => ?_, hdiv.1, hdiv.2⟩
  · rw [hAa, hBa]
    simp only [Finset.sum_apply, Pi.neg_apply]
    push_cast
    have := Finset.sum_congr (rfl : I = I) fun r _ => hd r k
    simp only [Finset.sum_sub_distrib] at this
    linarith
  · have eA : A.h z = (∏ r ∈ I, (A₁ r).h z)⁻¹ := by
      have hp : 0 < ∏ r ∈ I, (A₁ r).h z := Finset.prod_pos fun r _ => (A₁ r).pos z hz.1
      refine Real.log_injOn_pos (A.pos z hz.1) (inv_pos.2 hp) ?_
      rw [hAh z hz, Real.log_inv, Real.log_prod fun r _ => ((A₁ r).pos z hz.1).ne']
    have eB : B.h z = (∏ r ∈ I, (B₁ r).h z)⁻¹ := by
      have hp : 0 < ∏ r ∈ I, (B₁ r).h z := Finset.prod_pos fun r _ => (B₁ r).pos z hz.1
      refine Real.log_injOn_pos (B.pos z hz.1) (inv_pos.2 hp) ?_
      rw [hBh z hz, Real.log_inv, Real.log_prod fun r _ => ((B₁ r).pos z hz.1).ne']
    rw [eA, eB, map_prod, map_prod, map_prod, map_prod, norm_prod, norm_prod, ← Finset.prod_inv_distrib,
      ← Finset.prod_inv_distrib, ← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun r _ => ?_
    have a := ((A₁ r).pos z hz.1).ne'
    have b := ((B₁ r).pos z hz.1).ne'
    have := hiso r z hz
    field_simp
    linarith

section Origin

open AlgebraicGeometry CategoryTheory NumberField ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar.Top

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {Xo : Moduli D l} {c : Coeff l} {Y : Model Xo c (algebraMap (𝓞 c.F) c.F)}
  {Sys : PB.AnSys (dimFl (CMType H) (D.p + D.q)) (Option (RootIx D))} {Fx : FixedData Y Sys}
  {S : Finset ℕ} {M R : RootModel (CMType H) (D.p + D.q)} (o : RootOrigin Y S M Fx) (o₀ : RootOrigin Y ∅ R Fx)
  {i : R.Ω →+* M.Ω} {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {y : (Σ k, ι k) → M.Ω}
  {κ : M.K → K} {v : (Σ k, M.ι k) → Σ k, ι k} {κ₀ : R.K → K} {v₀ : (Σ k, R.ι k) → Σ k, ι k}

theorem pi_agree (hi : i.comp o₀.g = o.g) (hv : IsBlockMap κ v) (hv₀ : IsBlockMap κ₀ v₀) (hy : ∀ p, y (v p) = M.y p)
    (hy₀ : ∀ p, y (v₀ p) = i (R.y p)) {z : (Σ k, ι k) → ℂ} (hz : z ∈ mcPts (mCoordIdeal y)) (x : o.Re.R.X)
    (x₀ : o₀.Re.R.X) (hx : SameOrbit (o.Re.R.lift x x) fun p => z (v p))
    (hx₀ : SameOrbit (o₀.Re.R.lift x₀ x₀) fun p => z (v₀ p)) : o.Re.π x = o₀.Re.π x₀ := by
  classical
  obtain ⟨r, hr, hp⟩ := LineUnit.exists_prop (y := y) (w₀ := fun j => v ⟨o.k₀, o.ix j⟩)
    (w₁ := fun j => v₀ ⟨o₀.k₀, o₀.ix j⟩) (fun j => hv.2.2.1 _) (fun j => hv₀.2.2.1 _)
    (LineUnit.block_onto hv o.k₀ o.ix) (LineUnit.block_onto hv₀ o₀.k₀ o₀.ix)
    (fun j => by rw [hy, hy₀, o.y_eq, o₀.y_eq, ← hi]; rfl) hz
  obtain ⟨a, ha⟩ := o.π_pt x
  obtain ⟨a₀, ha₀⟩ := o₀.π_pt x₀
  obtain ⟨s, hs, e⟩ := hx
  obtain ⟨s₀, hs₀, e₀⟩ := hx₀
  have ha0 : a ≠ 0 := by
    rintro rfl
    obtain ⟨j, hj⟩ := (o.Re.R.mem x x (o.Re.R.mem_U x)).1 o.k₀
    apply hj
    have := congrFun ha (o.ix.symm j)
    simpa using this
  refine Fx.pt_inj _ _ (a⁻¹ * s o.k₀ * r * (s₀ o₀.k₀)⁻¹ * a₀) ?_
  funext j
  have b := congrFun ha j
  have b₀ := congrFun ha₀ j
  have d := congrFun e ⟨o.k₀, o.ix j⟩
  have d₀ := congrFun e₀ ⟨o₀.k₀, o₀.ix j⟩
  have f := hp j
  simp only [Pi.smul_apply, smul_eq_mul] at b b₀ d d₀ f ⊢
  have n₀ := hs₀ o₀.k₀
  rw [d, f] at b
  rw [d₀] at b₀
  field_simp
  linear_combination (s₀ o₀.k₀) * b.symm + (s o.k₀ * r) * b₀

theorem vertClose_none (hi : i.comp o₀.g = o.g) (hv : IsBlockMap κ v) (hv₀ : IsBlockMap κ₀ v₀)
    (hy : ∀ p, y (v p) = M.y p) (hy₀ : ∀ p, y (v₀ p) = i (R.y p))
    (hA : IsArithVar (mCoordIdeal y) (dimFl (CMType H) (D.p + D.q) + 1)) (hJ : o.Re.J = ⊤) (hJ₀ : o₀.Re.J = ⊤)
    (T : Finset ℕ) (α : ℕ → ℝ) (hα : ∀ p, 0 ≤ α p) {t : ℝ} (h0 : 0 < t) (h1 : t ≤ Sys.t₀) :
    PB.VertClose (mCoordIdeal y) T α (pullHerm hv (o.Re.line none t)) (pullHerm hv₀ (o₀.Re.line none t)) := by
  classical
  obtain ⟨Tp, hx, hx', hvert, hiso⟩ := LineUnit.lines_isometric E H D l Xo c Y S ∅ M R Sys Fx o o₀ M.Ω K ι y κ v κ₀ v₀
    (RingHom.id _) i hv hv₀ hy hy₀ (by rw [hi]; rfl) hA
  obtain ⟨⟨bf, bg, hbf, hbg, hb⟩, hfP, hgP, hW⟩ := hvert ()
  have hdiv : divCycle (mCoordIdeal y) (Tp.f ()) = divCycle (mCoordIdeal y) (Tp.g ()) :=
    div_eq_of_unit hA.2.1.1 hfP hgP fun W h₁ h₂ h₃ => hW W h₁ h₂ h₃ (by simp)
  refine ⟨Tp.f (), Tp.g (), bf, bg, (GroundTheory.Heights₂.Heights.Bridge.isMultiHomog_iff _ _).1 hbf,
    (GroundTheory.Heights₂.Heights.Bridge.isMultiHomog_iff _ _).1 hbg, hfP, hgP, fun k => ?_, fun z hz => ?_,
    fun W _ => by rw [hdiv], fun W _ => ?_⟩
  · have := congrFun hb k
    rw [hx, hx'] at this
    show _ = pullDeg κ (o.Re.line none t).a k - pullDeg κ₀ (o₀.Re.line none t).a k
    rw [o.Re.line_deg, o₀.Re.line_deg, o.ref_none.1, o₀.ref_none.1]
    exact this
  · have z₁ := LineUnit.pull_mem_mcPts (RingHom.id _) hv hy hz
    have z₀ := LineUnit.pull_mem_mcPts i hv₀ hy₀ hz
    have e₁ := line_h_of_phT o.Re hJ h0 h1 (fun x => (Fx.ph_none x).2 t) z₁
    have e₀ := line_h_of_phT o₀.Re hJ₀ h0 h1 (fun x => (Fx.ph_none x).2 t) z₀
    show _ * (o₀.Re.line none t).h (fun p => z (v₀ p)) = _ * (o.Re.line none t).h (fun p => z (v p))
    rw [e₁, e₀, o.ref_none.2 _ z₁, o₀.ref_none.2 _ z₀]
    exact (hiso ()).2.2 z hz
  · rw [hdiv, sub_self, abs_zero]
    exact mul_nonneg (hα _) (Nat.cast_nonneg _)

theorem vertClose_some (hi : i.comp o₀.g = o.g) (hv : IsBlockMap κ v) (hv₀ : IsBlockMap κ₀ v₀)
    (hy : ∀ p, y (v p) = M.y p) (hy₀ : ∀ p, y (v₀ p) = i (R.y p))
    (hA : IsArithVar (mCoordIdeal y) (dimFl (CMType H) (D.p + D.q) + 1)) (hJ : o.Re.J = ⊤) (hJ₀ : o₀.Re.J = ⊤)
    (hdeg : o₀.Fl.deg = 1) {q m : ℕ} (hq : 0 < q) (hm : 0 < m) (hmS : ∀ p : ℕ, p.Prime → p ∣ m → p ∈ S)
    (hval : ∀ (r : RootIx D) (cM : (k : M.K) → M.ι k) (cR : (k : R.K) → R.ι k) (W : ValuationSubring M.Ω),
          (∀ k, M.y ⟨k, cM k⟩ ≠ 0) → (∀ k, R.y ⟨k, cR k⟩ ≠ 0) → (∀ k j, M.y ⟨k, j⟩ / M.y ⟨k, cM k⟩ ∈ W) →
          (∀ k j, i (R.y ⟨k, j⟩ / R.y ⟨k, cR k⟩) ∈ W) →
          (m : M.Ω) * (i ((∏ k, R.y ⟨k, cR k⟩ ^ R.xdeg r k) * o₀.e r) /
            ((∏ k, M.y ⟨k, cM k⟩ ^ M.xdeg r k) * o.e r)) ^ q ∈ W ∧
          (m : M.Ω) * (((∏ k, M.y ⟨k, cM k⟩ ^ M.xdeg r k) * o.e r) /
            i ((∏ k, R.y ⟨k, cR k⟩ ^ R.xdeg r k) * o₀.e r)) ^ q ∈ W)
    (r : RootIx D) {t : ℝ} (h0 : 0 < t) (h1 : t ≤ Sys.t₀) :
    PB.VertClose (mCoordIdeal y) S (fun p => (padicValNat p (m ^ (D.p + D.q)) : ℝ) / q)
      (pullHerm hv (o.Re.line (some r) t)) (pullHerm hv₀ (o₀.Re.line (some r) t)) := by
  classical
  obtain ⟨τ, j⟩ := r
  haveI : CharZero M.Ω := Sandwich.charZero_of_hodgeCpt o.𝔐
  have hB : Birational y := birational_of_block hv hy M.birational
  have hu : ∀ r : RootIx D, i (o₀.e r) / o.e r ≠ 0 := fun r =>
    div_ne_zero ((map_ne_zero i).2 (o₀.lines r).1) (o.lines r).1
  choose f g df dg hf hg hfP hgP hd hfg using fun r : RootIx D =>
    exists_forms y hB (_root_.GroundTheory.Heights₂.Heights.HilbertSamuel.UpperNormalisation.exists_coord_ne_zero hA) (pullDeg κ (M.xdeg r) - pullDeg κ₀ (R.xdeg r)) (hu r)
  refine vertClose_step y hA S o.𝔐.S_prime hq hm hmS (Finset.Iic j) (by simpa using (Finset.Iic j).card_le_univ)
    (fun k => f (τ, k)) (fun k => g (τ, k)) (fun k => df (τ, k)) (fun k => dg (τ, k))
    (fun k => i (o₀.e (τ, k)) / o.e (τ, k)) (fun k => pullHerm hv (M.x t (τ, k))) (fun k => pullHerm hv₀ (R.x t (τ, k)))
    _ _ (fun k => hf _) (fun k => hg _) (fun k => hfP _) (fun k => hgP _) (fun k => hu _) (fun k => hfg _)
    (fun k b => ?_) (fun k z hz => ?_) (fun k cc hc W hW => ?_) ?_ ?_ (fun z hz => ?_) (fun z hz => ?_)
  · rw [hd]
    show _ = pullDeg κ (M.x t (τ, k)).a b - pullDeg κ₀ (R.x t (τ, k)).a b
    rw [M.x_deg, R.x_deg]
    rfl
  · exact _root_.GlobalTheory.CompanionTheory.Ar.OrIso.root_isometric E H D l Xo c Y S ∅ M R R Sys Fx o o₀ o₀ M.Ω K ι y κ v κ₀ v₀ κ₀ v₀ (RingHom.id _) i i hv hv₀ hv₀
      hy hy₀ hy₀ (by rw [hi]; rfl) rfl hJ hJ₀ hJ₀ hdeg hA (τ, k) (f _) (g _) (df _) (dg _)
      ((GroundTheory.Heights₂.Heights.Bridge.isMultiHomog_iff _ _).2 (hf _))
      ((GroundTheory.Heights₂.Heights.Bridge.isMultiHomog_iff _ _).2 (hg _)) (funext (hd _)) (hfP _) (hgP _) (hfg _) t h0 h1 z hz
  · obtain ⟨cM, hcM⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FlagPull.exists_chart hv cc
    obtain ⟨cR, hcR⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FlagPull.exists_chart hv₀ cc
    have eM : ∀ b, M.y ⟨b, cM b⟩ = y ⟨κ b, cc (κ b)⟩ := fun b => by rw [← hy, hcM]
    have eR : ∀ b, i (R.y ⟨b, cR b⟩) = y ⟨κ₀ b, cc (κ₀ b)⟩ := fun b => by rw [← hy₀, hcR]
    have w := hval (τ, k) cM cR W (fun b => by rw [eM]; exact hc _)
      (fun b h => hc (κ₀ b) (by rw [← eR, h, map_zero])) (fun b a => by
        have := hW (v ⟨b, a⟩)
        rw [hy] at this
        rw [eM]
        convert this using 3
        exact Sigma.ext (hv.2.2.1 ⟨b, a⟩).symm (by rw [hv.2.2.1 ⟨b, a⟩])) (fun b a => by
        have := hW (v₀ ⟨b, a⟩)
        rw [hy₀] at this
        rw [map_div₀, eR]
        convert this using 3
        exact Sigma.ext (hv₀.2.2.1 ⟨b, a⟩).symm (by rw [hv₀.2.2.1 ⟨b, a⟩]))
    have e : i (o₀.e (τ, k)) / o.e (τ, k) * ∏ b, y ⟨b, cc b⟩ ^ (-((df (τ, k) b : ℤ) - dg (τ, k) b)) =
        i ((∏ b, R.y ⟨b, cR b⟩ ^ R.xdeg (τ, k) b) * o₀.e (τ, k)) /
          ((∏ b, M.y ⟨b, cM b⟩ ^ M.xdeg (τ, k) b) * o.e (τ, k)) := by
      have e1 : ∏ b, y ⟨b, cc b⟩ ^ (-((df (τ, k) b : ℤ) - dg (τ, k) b)) =
          (∏ b, y ⟨b, cc b⟩ ^ pullDeg κ₀ (R.xdeg (τ, k)) b) / ∏ b, y ⟨b, cc b⟩ ^ pullDeg κ (M.xdeg (τ, k)) b := by
        rw [← Finset.prod_div_distrib]
        refine Finset.prod_congr rfl fun b _ => ?_
        rw [hd, ← zpow_sub₀ (hc b)]
        simp
      rw [e1, prod_pullDeg hv₀.1, prod_pullDeg hv.1, map_mul, map_prod]
      simp only [map_zpow₀, eM, eR]
      rw [div_mul_div_comm, mul_comm, mul_comm (o.e _)]
    rw [e, inv_div]
    exact w
  · show pullDeg κ (o.Re.line (some (τ, j)) t).a = -∑ k ∈ Finset.Iic j, pullDeg κ (M.x t (τ, k)).a
    rw [o.Re.line_deg, o.fund_deg, pullDeg_neg_sum hv.1]
    simp only [M.x_deg]
  · show pullDeg κ₀ (o₀.Re.line (some (τ, j)) t).a = -∑ k ∈ Finset.Iic j, pullDeg κ₀ (R.x t (τ, k)).a
    rw [o₀.Re.line_deg, o₀.fund_deg, pullDeg_neg_sum hv₀.1]
    simp only [R.x_deg]
  · exact o.fund_reg τ j t h0 h1 _ (LineUnit.pull_mem_mcPts (RingHom.id _) hv hy hz)
  · exact o₀.fund_reg τ j t h0 h1 _ (LineUnit.pull_mem_mcPts i hv₀ hy₀ hz)

end Origin

end RootFieldNumerics.Ref
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.VertCloseStep =====
