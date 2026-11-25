module

public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.ThetaLine
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.AnalyticIdentityTheoremsZetaFacts
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.Legendre
public import Mathlib.Analysis.Complex.CauchyIntegral
public import Mathlib.Analysis.Complex.RemovableSingularity
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.Elliptic
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.PDeriv
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.ThreeTermNumEqTwistedGammaOfSigmaZero
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SigmaLogDeriv2
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.QuasiPeriodConstUnique

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.OnePole, Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.SigmaAdd, Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.SigmaOrder, Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EllipticOnePole

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.OnePole =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.OnePole", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.ThetaLine\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.AnalyticIdentityTheoremsZetaFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Filter Topology

namespace Formalism.L2.Th1.F
namespace OnePole

open AnalyticIdentityTheoremsZetaFacts

lemma eq_of_eventuallyEq_nhdsNE {g₁ g₂ : ℂ → ℂ} {z : ℂ} (h₁ : ContinuousAt g₁ z)
    (h₂ : ContinuousAt g₂ z) (h : g₁ =ᶠ[𝓝[≠] z] g₂) : g₁ z = g₂ z := by
  exact tendsto_nhds_unique (h₁.tendsto.mono_left nhdsWithin_le_nhds)
    ((h₂.tendsto.mono_left nhdsWithin_le_nhds).congr' h.symm)

lemma tendsto_add_nhdsNE (z ω : ℂ) : Tendsto (fun w : ℂ => w + ω) (𝓝[≠] z) (𝓝[≠] (z + ω)) := by
  refine tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _
    ((continuous_add_const ω).continuousAt.tendsto.mono_left nhdsWithin_le_nhds) ?_
  filter_upwards [self_mem_nhdsWithin] with w hw
  simpa using hw

lemma eventually_notMem (L : PeriodPair) (p z : ℂ) : ∀ᶠ w in 𝓝[≠] z, w - p ∉ L.lattice := by
  have hx : ∀ x : ℂ, ∀ᶠ u in 𝓝[≠] x, u ∉ L.lattice := by
    intro x
    by_cases hx : x ∈ L.lattice
    · have hd : DiscreteTopology (L.lattice : Set ℂ) := (inferInstance : DiscreteTopology L.lattice)
      exact Filter.inf_principal_eq_bot.1 ((discreteTopology_subtype_iff.1 hd) x hx)
    · exact eventually_nhdsWithin_of_eventually_nhds ((L.isClosed_lattice.isOpen_compl).mem_nhds hx)
  have := (tendsto_add_nhdsNE z (-p)).eventually (hx (z + -p))
  simpa [sub_eq_add_neg] using this

lemma analyticAt_wZeta (L : PeriodPair) (z : ℂ) (hz : z ∉ L.lattice) : AnalyticAt ℂ (wZeta L) z := by
  exact (differentiableOn_wZeta L).analyticAt ((L.isClosed_lattice.isOpen_compl).mem_nhds hz)

lemma analyticAt_zetaExcept (L : PeriodPair) : AnalyticAt ℂ (zetaExcept L 0) 0 := by
  refine (differentiableOn_zetaExcept L 0).analyticAt ?_
  filter_upwards [eventually_nhdsWithin_iff.1 (eventually_notMem L 0 0)] with w hw
  simp only [Set.mem_compl_iff, Set.mem_diff, Set.mem_singleton_iff, SetLike.mem_coe, not_and, not_not]
  intro hmem
  by_contra hne
  exact hw hne (by simpa using hmem)

lemma zeta_local (hq : ZetaQuasi) (L : PeriodPair) (p z₀ : ℂ) (h : z₀ - p ∈ L.lattice) :
    ∀ᶠ w in 𝓝[≠] z₀,
      wZeta L (w - p) = zetaExcept L 0 (w - z₀) + 1 / (w - z₀) + wEta L (z₀ - p) := by
  filter_upwards [eventually_notMem L z₀ z₀] with w hw
  rw [show w - p = w - z₀ + (z₀ - p) by ring, hq L (z₀ - p) (w - z₀) h hw, ← zetaExcept_zero_add]

lemma simple_local {f : ℂ → ℂ} {p : ℂ} (hf : MeromorphicAt f p) (ho : -1 ≤ meromorphicOrderAt f p) :
    ∃ (r : ℂ) (k : ℂ → ℂ), AnalyticAt ℂ k p ∧ ∀ᶠ w in 𝓝[≠] p, f w = r / (w - p) + k w := by
  cases h : meromorphicOrderAt f p with
  | top =>
    refine ⟨0, fun _ => 0, analyticAt_const, ?_⟩
    filter_upwards [meromorphicOrderAt_eq_top_iff.1 h] with w hw
    simp [hw]
  | coe n =>
    obtain ⟨g, hg, -, hfg⟩ := (meromorphicOrderAt_eq_int_iff hf).1 h
    have hn : (-1 : ℤ) ≤ n := by
      rw [h] at ho
      have h2 : ((-1 : ℤ) : WithTop ℤ) ≤ (n : WithTop ℤ) := by simpa using ho
      exact WithTop.coe_le_coe.1 h2
    rcases eq_or_lt_of_le hn with hn | hn
    · subst hn
      obtain ⟨q, hq⟩ := hg
      refine ⟨g p, dslope g p, ⟨_, hq.has_fpower_series_dslope_fslope⟩, ?_⟩
      filter_upwards [hfg, self_mem_nhdsWithin] with w hw hwp
      have hwp' : w ≠ p := hwp
      have hne : w - p ≠ 0 := sub_ne_zero.2 hwp'
      rw [hw, zpow_neg_one, smul_eq_mul, dslope_of_ne _ hwp', slope_def_field]
      field_simp
      ring
    · have hn0 : 0 ≤ n := by omega
      lift n to ℕ using hn0
      refine ⟨0, fun w => (w - p) ^ n * g w, by fun_prop, ?_⟩
      filter_upwards [hfg] with w hw
      rw [hw]
      simp [zpow_natCast, smul_eq_mul]

end OnePole

open OnePole AnalyticIdentityTheoremsZetaFacts

theorem ellipticOnePole_of (hN : EllipticNoPole) (hE : EllipticEntire) (hq : ZetaQuasi)
    (hL : Legendre) : EllipticOnePole := by
  intro L f p hmer hper hord hp
  obtain ⟨r, k, hk, hfk⟩ := simple_local (hmer p) hp
  set g : ℂ → ℂ := fun w => f w - r * wZeta L (w - p) with hg

  have hB : ∀ z, 0 ≤ meromorphicOrderAt f z →
      ∃ B : ℂ → ℂ, AnalyticAt ℂ B z ∧ f =ᶠ[𝓝[≠] z] B := by
    intro z hz
    cases h : meromorphicOrderAt f z with
    | top =>
      exact ⟨fun _ => 0, analyticAt_const, meromorphicOrderAt_eq_top_iff.1 h⟩
    | coe n =>
      obtain ⟨B, hBa, -, hfB⟩ := (meromorphicOrderAt_eq_int_iff (hmer z)).1 h
      have hn : 0 ≤ n := by rw [h] at hz; exact_mod_cast hz
      lift n to ℕ using hn
      refine ⟨fun w => (w - z) ^ n * B w, by fun_prop, ?_⟩
      filter_upwards [hfB] with w hw
      rw [hw]
      simp [zpow_natCast, smul_eq_mul]

  have hloc : ∀ z, ∃ A : ℂ → ℂ, AnalyticAt ℂ A z ∧ g =ᶠ[𝓝[≠] z] A := by
    intro z
    by_cases hz : z - p ∈ L.lattice
    · refine ⟨fun w => k (w - (z - p)) - r * zetaExcept L 0 (w - z) - r * wEta L (z - p), ?_, ?_⟩
      · have h1 : AnalyticAt ℂ (fun w => k (w - (z - p))) z := by
          have hk' : AnalyticAt ℂ k (z - (z - p)) := by simpa using hk
          exact AnalyticAt.comp (f := fun w : ℂ => w - (z - p)) (g := k) hk' (by fun_prop)
        have h2 : AnalyticAt ℂ (fun w => zetaExcept L 0 (w - z)) z := by
          have hz' : AnalyticAt ℂ (zetaExcept L 0) (z - z) := by simpa using analyticAt_zetaExcept L
          exact AnalyticAt.comp (f := fun w : ℂ => w - z) (g := zetaExcept L 0) hz' (by fun_prop)
        exact (h1.sub (analyticAt_const.mul h2)).sub analyticAt_const
      · have hshift : Tendsto (fun w : ℂ => w - (z - p)) (𝓝[≠] z) (𝓝[≠] p) := by
          have h' := tendsto_add_nhdsNE z (-(z - p))
          rw [show z + -(z - p) = p by ring] at h'
          simpa only [← sub_eq_add_neg] using h'
        filter_upwards [hshift.eventually hfk, zeta_local hq L p z hz] with w hw1 hw2
        have hfw : f w = f (w - (z - p)) := by
          have := hper (z - p) hz (w - (z - p))
          rw [sub_add_cancel] at this
          exact this
        show f w - r * wZeta L (w - p) = _
        rw [hfw, hw1, hw2, show w - (z - p) - p = w - z by ring]
        ring
    · obtain ⟨B, hBa, hfB⟩ := hB z (hord z hz)
      refine ⟨fun w => B w - r * wZeta L (w - p), ?_, ?_⟩
      · have : AnalyticAt ℂ (wZeta L) (z - p) := analyticAt_wZeta L _ hz
        exact hBa.sub (analyticAt_const.mul
          (AnalyticAt.comp (f := fun w : ℂ => w - p) (g := wZeta L) this (by fun_prop)))
      · filter_upwards [hfB] with w hw
        show f w - r * wZeta L (w - p) = _
        rw [hw]

  set G : ℂ → ℂ := fun w => limUnder (𝓝[≠] w) g with hG
  have hGA : ∀ z, ∀ A : ℂ → ℂ, AnalyticAt ℂ A z → g =ᶠ[𝓝[≠] z] A → G =ᶠ[𝓝 z] A := by
    intro z A hA hgA
    have h1 : ∀ᶠ y in 𝓝 z, y ∈ ({z}ᶜ : Set ℂ) → g y = A y := eventually_nhdsWithin_iff.1 hgA
    filter_upwards [eventually_eventually_nhds.2 h1, hA.eventually_analyticAt] with w hw hAw
    show limUnder (𝓝[≠] w) g = A w
    apply Tendsto.limUnder_eq
    by_cases hwz : w = z
    · subst hwz
      exact (hAw.continuousAt.tendsto.mono_left nhdsWithin_le_nhds).congr' hgA.symm
    · have hgw : g =ᶠ[𝓝[≠] w] A := by
        apply eventually_nhdsWithin_of_eventually_nhds
        filter_upwards [hw, isOpen_ne.mem_nhds hwz] with y hy hyz
        exact hy hyz
      exact (hAw.continuousAt.tendsto.mono_left nhdsWithin_le_nhds).congr' hgw.symm
  have hGd : Differentiable ℂ G := fun z => by
    obtain ⟨A, hA, hgA⟩ := hloc z
    exact hA.differentiableAt.congr_of_eventuallyEq (hGA z A hA hgA)
  have hgG : ∀ z, g =ᶠ[𝓝[≠] z] G := fun z => by
    obtain ⟨A, hA, hgA⟩ := hloc z
    filter_upwards [hgA, nhdsWithin_le_nhds (hGA z A hA hgA)] with w h1 h2
    rw [h1, h2]

  have hGq : ∀ ω ∈ L.lattice, ∀ w, G (w + ω) = G w - r * wEta L ω := by
    intro ω hω w
    refine eq_of_eventuallyEq_nhdsNE (g₁ := fun y => G (y + ω)) (g₂ := fun y => G y - r * wEta L ω)
      (hGd.continuous.comp (continuous_add_const ω)).continuousAt
      (hGd.continuous.sub continuous_const).continuousAt ?_
    filter_upwards [(tendsto_add_nhdsNE w ω).eventually (hgG (w + ω)), hgG w,
      eventually_notMem L p w] with y h1 h2 h3
    show G (y + ω) = G y - r * wEta L ω
    rw [← h1, ← h2]
    show f (y + ω) - r * wZeta L (y + ω - p) = f y - r * wZeta L (y - p) - r * wEta L ω
    rw [hper ω hω y, show y + ω - p = (y - p) + ω by ring, hq L ω (y - p) hω h3]
    ring

  have hDd : Differentiable ℂ (deriv G) := fun z => ((hGd.analyticAt z).deriv).differentiableAt
  have hDp : IsPeriodic L (deriv G) := by
    intro ω hω z
    have hfun : (fun y => G (y + ω)) = fun y => G y - r * wEta L ω := funext fun y => hGq ω hω y
    rw [← deriv_comp_add_const, hfun, deriv_sub_const]
  have hDc := hE L (deriv G) hDd hDp
  set a := deriv G 0 with ha
  have hlin : ∀ w, G w = a * w + G 0 := by
    have hH : Differentiable ℂ (fun w => G w - a * w) := hGd.sub (differentiable_id.const_mul a)
    have hH' : ∀ x, deriv (fun w => G w - a * w) x = 0 := by
      intro x
      have h1 : HasDerivAt G a x := by rw [← hDc x]; exact (hGd x).hasDerivAt
      have h2 : HasDerivAt (fun w : ℂ => a * w) (a * 1) x := (hasDerivAt_id' x).const_mul a
      have h3 : HasDerivAt (fun w => G w - a * w) (a - a * 1) x := h1.sub h2
      rw [h3.deriv]
      ring
    intro w
    have := is_const_of_deriv_eq_zero hH hH' w 0
    simp only [mul_zero, sub_zero] at this
    linear_combination this

  have hr : r = 0 := by
    have e1 := hGq L.ω₁ L.ω₁_mem_lattice 0
    have e2 := hGq L.ω₂ L.ω₂_mem_lattice 0
    rw [zero_add, hlin L.ω₁] at e1
    rw [zero_add, hlin L.ω₂] at e2
    have hs : (if 0 < (L.ω₂ / L.ω₁).im then (1 : ℂ) else -1) * (2 * (Real.pi : ℂ) * Complex.I) ≠ 0 := by
      apply mul_ne_zero
      · split_ifs <;> norm_num
      · simp [Real.pi_ne_zero, Complex.I_ne_zero]
    have key : r * (wEta L L.ω₁ * L.ω₂ - wEta L L.ω₂ * L.ω₁) = 0 := by
      linear_combination L.ω₂ * e1 - L.ω₁ * e2
    rw [hL L] at key
    exact (mul_eq_zero.1 key).resolve_right hs

  have hGp : IsPeriodic L G := fun ω hω w => by rw [hGq ω hω w, hr]; ring
  refine ⟨G 0, fun z hz => ?_⟩
  have hfG : f =ᶠ[𝓝[≠] z] G := by
    filter_upwards [hgG z] with w hw
    rw [← hw]
    show f w = f w - r * wZeta L (w - p)
    rw [hr]
    ring
  rw [eq_of_eventuallyEq_nhdsNE hz (hGd z).continuousAt hfG]
  exact hE L G hGd hGp z

end Formalism.L2.Th1.F
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.OnePole =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.SigmaAdd =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.SigmaAdd", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.ThetaLine\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.Legendre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.Complex.CauchyIntegral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Filter Topology

namespace Formalism.L2.Th1.F
namespace SigmaAdditionFormula

variable (L : PeriodPair) (w : ℂ)

def additionQuotient (z : ℂ) : ℂ :=
  wSigma L (z + w) * wSigma L (z - w) / wSigma L z ^ 2 + wSigma L w ^ 2 * L.weierstrassP z

def frobeniusStickelbergerDetMulSigmaCube (z : ℂ) : ℂ :=
  wSigma L (z + w) * wSigma L (z - w)
    + wSigma L w ^ 2 * (dslope (wSigma L) 0 z ^ 2 + wSigma L z ^ 2 * L.weierstrassPExcept 0 z)

lemma semiChar_sq (ω : ℂ) : semiChar L ω ^ 2 = 1 := by
  unfold semiChar
  split_ifs <;> norm_num

lemma additionQuotient_periodic (hq : SigmaQuasi) : IsPeriodic L (additionQuotient L w) := by
  intro ω hω z
  have h1 := hq L ω (z + w) hω
  have h2 := hq L ω (z - w) hω
  have h0 := hq L ω z hω
  have hP : L.weierstrassP (z + ω) = L.weierstrassP z := L.weierstrassP_add_coe z ⟨ω, hω⟩
  have hs := semiChar_sq L ω
  have he : Complex.exp (wEta L ω * (z + w + ω / 2)) * Complex.exp (wEta L ω * (z - w + ω / 2))
      = Complex.exp (wEta L ω * (z + ω / 2)) ^ 2 := by
    rw [← Complex.exp_add, sq, ← Complex.exp_add]
    congr 1
    ring
  have hne : Complex.exp (wEta L ω * (z + ω / 2)) ^ 2 ≠ 0 := pow_ne_zero _ (Complex.exp_ne_zero _)
  unfold additionQuotient
  rw [show z + ω + w = (z + w) + ω by ring, show z + ω - w = (z - w) + ω by ring, h1, h2, h0, hP]
  congr 1
  calc _ = (semiChar L ω ^ 2 * (Complex.exp (wEta L ω * (z + w + ω / 2))
          * Complex.exp (wEta L ω * (z - w + ω / 2)))) * (wSigma L (z + w) * wSigma L (z - w))
          / ((semiChar L ω ^ 2 * Complex.exp (wEta L ω * (z + ω / 2)) ^ 2) * wSigma L z ^ 2) := by
        ring
    _ = _ := by rw [hs, he, one_mul, mul_div_mul_left _ _ hne]

lemma analyticAt_dslope (he : SigmaEntire) : AnalyticAt ℂ (dslope (wSigma L) 0) 0 := by
  obtain ⟨p, hp⟩ := (he L).analyticAt 0
  exact ⟨_, hp.has_fpower_series_dslope_fslope⟩

lemma sigma_zero (hz : SigmaZero) : wSigma L 0 = 0 := (hz L 0).2 L.lattice.zero_mem

lemma dslope_neg (ho : SigmaOdd) (z : ℂ) : dslope (wSigma L) 0 (-z) = dslope (wSigma L) 0 z := by
  rcases eq_or_ne z 0 with rfl | hz0
  · rw [neg_zero]
  · have h0 : wSigma L 0 = 0 := by
      have := ho L 0
      rw [neg_zero] at this
      linear_combination this / 2
    rw [dslope_of_ne _ (neg_ne_zero.2 hz0), dslope_of_ne _ hz0, slope_def_field, slope_def_field,
      ho L z, h0, sub_zero, sub_zero, sub_zero, sub_zero, neg_div_neg_eq]

lemma additionNumerator_neg (ho : SigmaOdd) (z : ℂ) : frobeniusStickelbergerDetMulSigmaCube L w (-z) = frobeniusStickelbergerDetMulSigmaCube L w z := by
  unfold frobeniusStickelbergerDetMulSigmaCube
  rw [dslope_neg L ho z, ho L z, L.weierstrassPExcept_neg, neg_zero,
    show -z + w = -(z - w) by ring, show -z - w = -(z + w) by ring, ho L (z - w), ho L (z + w)]
  ring

lemma twistedGamma_analyticAt_zero (he : SigmaEntire) : AnalyticAt ℂ (frobeniusStickelbergerDetMulSigmaCube L w) 0 := by
  have hσd : Differentiable ℂ (wSigma L) := he L
  have hs : ∀ c : ℂ, AnalyticAt ℂ (fun z => wSigma L (z + c)) 0 := fun c =>
    (hσd.comp (differentiable_id.add_const c)).analyticAt 0
  have hs' : ∀ c : ℂ, AnalyticAt ℂ (fun z => wSigma L (z - c)) 0 := fun c =>
    (hσd.comp (differentiable_id.sub_const c)).analyticAt 0
  have hP : AnalyticAt ℂ (L.weierstrassPExcept 0) 0 :=
    L.analyticOnNhd_weierstrassPExcept 0 0 (by simp)
  have hd := analyticAt_dslope L he
  have hσ : AnalyticAt ℂ (wSigma L) 0 := hσd.analyticAt 0
  exact ((hs w).mul (hs' w)).add (analyticAt_const.mul ((hd.pow 2).add ((hσ.pow 2).mul hP)))

lemma twistedGamma_zero (ho : SigmaOdd) (hz : SigmaZero) (hs : SigmaSimple) : frobeniusStickelbergerDetMulSigmaCube L w 0 = 0 := by
  unfold frobeniusStickelbergerDetMulSigmaCube
  rw [dslope_same, (hs L).1, sigma_zero L hz, zero_add, zero_sub, ho L w]
  ring

private lemma weierstrassP_eq_except_zero_add_inv_sq (z : ℂ) : L.weierstrassP z = L.weierstrassPExcept 0 z + 1 / z ^ 2 := by
  rw [← L.weierstrassPExcept_add 0 z]
  simp

private lemma eventually_not_mem_lattice_punctured_zero : ∀ᶠ z in 𝓝[≠] (0 : ℂ), z ∉ L.lattice := by
  have hD : DiscreteTopology (L.lattice : Set ℂ) := (inferInstance : DiscreteTopology L.lattice)
  exact Filter.inf_principal_eq_bot.1 (discreteTopology_subtype_iff.1 hD 0 L.lattice.zero_mem)

lemma additionQuotient_mul_eventuallyEq (hz : SigmaZero) :
    (fun z => additionQuotient L w z * wSigma L z ^ 2) =ᶠ[𝓝[≠] 0] frobeniusStickelbergerDetMulSigmaCube L w := by
  filter_upwards [eventually_not_mem_lattice_punctured_zero L, self_mem_nhdsWithin] with z hzL hz0
  have hσ : wSigma L z ≠ 0 := fun h => hzL ((hz L z).1 h)
  have hz0' : z ≠ 0 := hz0
  have h0 := sigma_zero L hz
  have hd : dslope (wSigma L) 0 z = wSigma L z / z := by
    rw [dslope_of_ne _ hz0', slope_def_field, h0, sub_zero, sub_zero]
  unfold additionQuotient frobeniusStickelbergerDetMulSigmaCube
  rw [weierstrassP_eq_except_zero_add_inv_sq L z, hd]
  field_simp
  ring

private lemma exists_twistedGamma_eq_sq_mul_analytic (he : SigmaEntire) (ho : SigmaOdd) (hz : SigmaZero) (hs : SigmaSimple) :
    ∃ m : ℂ → ℂ, AnalyticAt ℂ m 0 ∧ ∀ y, frobeniusStickelbergerDetMulSigmaCube L w y = y ^ 2 * m y := by
  have hg0 := twistedGamma_zero L w ho hz hs

  have hder : deriv (frobeniusStickelbergerDetMulSigmaCube L w) 0 = 0 := by
    have h1 : deriv (fun y => frobeniusStickelbergerDetMulSigmaCube L w (-y)) 0 = -deriv (frobeniusStickelbergerDetMulSigmaCube L w) (-0) :=
      deriv_comp_neg (f := frobeniusStickelbergerDetMulSigmaCube L w) (x := 0)
    have h2 : (fun y => frobeniusStickelbergerDetMulSigmaCube L w (-y)) = frobeniusStickelbergerDetMulSigmaCube L w := funext (additionNumerator_neg L w ho)
    rw [h2, neg_zero] at h1
    linear_combination h1 / 2
  obtain ⟨p, hp⟩ := twistedGamma_analyticAt_zero L w he
  have hm := hp.has_fpower_series_dslope_fslope.has_fpower_series_dslope_fslope
  refine ⟨dslope (dslope (frobeniusStickelbergerDetMulSigmaCube L w) 0) 0, ⟨_, hm⟩, fun y => ?_⟩
  have e1 := sub_smul_dslope (frobeniusStickelbergerDetMulSigmaCube L w) 0 y
  have e2 := sub_smul_dslope (dslope (frobeniusStickelbergerDetMulSigmaCube L w) 0) 0 y
  rw [dslope_same, hder] at e2
  simp only [sub_zero, smul_eq_mul, hg0] at e1 e2
  rw [← e1, ← e2]
  ring

private lemma meromorphicAt_weierstrassP (z : ℂ) : MeromorphicAt L.weierstrassP z := by
  classical
  obtain ⟨l, hl⟩ : ∃ l : L.lattice, z ∉ (L.lattice : Set ℂ) \ {(l : ℂ)} := by
    by_cases h : z ∈ L.lattice
    · exact ⟨⟨z, h⟩, fun h' => h'.2 rfl⟩
    · exact ⟨0, fun h' => h h'.1⟩
  have e : L.weierstrassP = fun x => L.weierstrassPExcept l x + (1 / (x - l) ^ 2 - 1 / (l : ℂ) ^ 2) :=
    funext fun x => (L.weierstrassPExcept_add l x).symm
  rw [e]
  exact (L.analyticOnNhd_weierstrassPExcept l z hl).meromorphicAt.add
    ((analyticAt_const.meromorphicAt.div ((analyticAt_id.sub analyticAt_const).pow 2).meromorphicAt).sub
      analyticAt_const.meromorphicAt)

lemma additionQuotient_meromorphicAt (he : SigmaEntire) (z : ℂ) : MeromorphicAt (additionQuotient L w) z := by
  have hσd : Differentiable ℂ (wSigma L) := he L
  have a1 : AnalyticAt ℂ (fun x => wSigma L (x + w)) z :=
    (hσd.comp (differentiable_id.add_const w)).analyticAt z
  have a2 : AnalyticAt ℂ (fun x => wSigma L (x - w)) z :=
    (hσd.comp (differentiable_id.sub_const w)).analyticAt z
  have a3 : AnalyticAt ℂ (wSigma L) z := hσd.analyticAt z
  exact ((a1.mul a2).meromorphicAt.div (a3.pow 2).meromorphicAt).add
    (analyticAt_const.meromorphicAt.mul (meromorphicAt_weierstrassP L z))

lemma additionQuotient_analyticAt (he : SigmaEntire) (hz : SigmaZero) (z : ℂ) (hzL : z ∉ L.lattice) :
    AnalyticAt ℂ (additionQuotient L w) z := by
  have hσd : Differentiable ℂ (wSigma L) := he L
  have a1 : AnalyticAt ℂ (fun x => wSigma L (x + w)) z :=
    (hσd.comp (differentiable_id.add_const w)).analyticAt z
  have a2 : AnalyticAt ℂ (fun x => wSigma L (x - w)) z :=
    (hσd.comp (differentiable_id.sub_const w)).analyticAt z
  have a3 : AnalyticAt ℂ (wSigma L) z := hσd.analyticAt z
  have hσz : wSigma L z ≠ 0 := fun h => hzL ((hz L z).1 h)
  have hz0 : z ∉ (L.lattice : Set ℂ) \ {0} := fun h => hzL h.1
  have hzne : z ≠ 0 := by
    rintro rfl
    exact hzL L.lattice.zero_mem
  have hP : AnalyticAt ℂ L.weierstrassP z := by
    rw [show L.weierstrassP = fun x => L.weierstrassPExcept 0 x + 1 / x ^ 2 from funext (weierstrassP_eq_except_zero_add_inv_sq L)]
    exact (L.analyticOnNhd_weierstrassPExcept 0 z hz0).add
      (analyticAt_const.div (analyticAt_id.pow 2) (pow_ne_zero _ hzne))
  exact ((a1.mul a2).div (a3.pow 2) (pow_ne_zero _ hσz)).add (analyticAt_const.mul hP)

private lemma exists_analytic_eq_additionQuotient_near_zero (he : SigmaEntire) (ho : SigmaOdd) (hz : SigmaZero) (hs : SigmaSimple) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A 0 ∧ additionQuotient L w =ᶠ[𝓝[≠] 0] A := by
  obtain ⟨m, hm, hgm⟩ := exists_twistedGamma_eq_sq_mul_analytic L w he ho hz hs
  have hd : AnalyticAt ℂ (dslope (wSigma L) 0) 0 := analyticAt_dslope L he
  have hd0 : dslope (wSigma L) 0 0 ≠ 0 := by
    rw [dslope_same, (hs L).1]
    exact one_ne_zero
  have hσ : ∀ y, wSigma L y = y * dslope (wSigma L) 0 y := fun y => by
    have := sub_smul_dslope (wSigma L) 0 y
    simp only [sub_zero, smul_eq_mul, sigma_zero L hz] at this
    exact this.symm
  refine ⟨fun y => m y / dslope (wSigma L) 0 y ^ 2, hm.div (hd.pow 2) (pow_ne_zero _ hd0), ?_⟩
  have hdne : ∀ᶠ y in 𝓝[≠] (0 : ℂ), dslope (wSigma L) 0 y ≠ 0 :=
    (hd.continuousAt.eventually_ne hd0).filter_mono nhdsWithin_le_nhds
  filter_upwards [additionQuotient_mul_eventuallyEq L w hz, hdne, self_mem_nhdsWithin] with y h1 h2 h3
  have hy : y ≠ 0 := h3
  rw [hgm, hσ y] at h1
  rw [eq_div_iff (pow_ne_zero _ h2)]
  apply mul_left_cancel₀ (pow_ne_zero 2 hy)
  linear_combination h1

lemma additionQuotient_order (he : SigmaEntire) (ho : SigmaOdd) (hz : SigmaZero) (hs : SigmaSimple)
    (hq : SigmaQuasi) (hord : SigmaOrder) (z : ℂ) : 0 ≤ meromorphicOrderAt (additionQuotient L w) z := by
  by_cases hzL : z ∈ L.lattice
  · obtain ⟨A, hA, hfA⟩ := exists_analytic_eq_additionQuotient_near_zero L w he ho hz hs
    have hfun : additionQuotient L w = fun x => additionQuotient L w (x - z) := funext fun x => by
      have := additionQuotient_periodic L w hq (-z) (neg_mem hzL) x
      rw [← sub_eq_add_neg] at this
      exact this.symm
    have ht : Filter.Tendsto (fun x => x - z) (𝓝[≠] z) (𝓝[≠] 0) :=
      tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _
        (((continuous_id.sub continuous_const).tendsto' z 0 (sub_self z)).mono_left
          nhdsWithin_le_nhds)
        (Filter.mem_of_superset self_mem_nhdsWithin fun x hx => sub_ne_zero.2 hx)
    have h2 : (fun x => additionQuotient L w (x - z)) =ᶠ[𝓝[≠] z] fun x => A (x - z) := ht.eventually hfA
    rw [hfun, meromorphicOrderAt_congr h2]
    exact (hA.comp_of_eq (analyticAt_id.sub analyticAt_const) (sub_self z)).meromorphicOrderAt_nonneg
  · exact (additionQuotient_analyticAt L w he hz z hzL).meromorphicOrderAt_nonneg

end SigmaAdditionFormula

open SigmaAdditionFormula in
theorem sigmaAdd_of (hN : EllipticNoPole) (he : SigmaEntire) (ho : SigmaOdd) (hz : SigmaZero)
    (hs : SigmaSimple) (hq : SigmaQuasi) (hord : SigmaOrder) : SigmaAdd := by
  intro L z w hzL hwL
  obtain ⟨c, hc⟩ := hN L (additionQuotient L w) (additionQuotient_meromorphicAt L w he) (additionQuotient_periodic L w hq)
    (additionQuotient_order L w he ho hz hs hq hord)
  have hfz := hc z (additionQuotient_analyticAt L w he hz z hzL).continuousAt
  have hfw := hc w (additionQuotient_analyticAt L w he hz w hwL).continuousAt
  have hσz : wSigma L z ≠ 0 := fun h => hzL ((hz L z).1 h)
  have h0 := sigma_zero L hz
  rw [← hfw] at hfz
  unfold additionQuotient at hfz
  rw [sub_self, h0, mul_zero, zero_div, zero_add] at hfz
  have e : wSigma L (z + w) * wSigma L (z - w) / wSigma L z ^ 2 * wSigma L z ^ 2
      = wSigma L (z + w) * wSigma L (z - w) := div_mul_cancel₀ _ (pow_ne_zero 2 hσz)
  linear_combination (wSigma L z ^ 2) * hfz - e

theorem sgStarAdd_of (h : SigmaAdd) : SgStarAdd := by
  intro L z w hz hw
  unfold sgStar
  have e := h L z w hz hw
  have ex : Complex.exp (-(s2 L) * (z + w) ^ 2 / 2) * Complex.exp (-(s2 L) * (z - w) ^ 2 / 2)
      = Complex.exp (-(s2 L) * z ^ 2 / 2) ^ 2 * Complex.exp (-(s2 L) * w ^ 2 / 2) ^ 2 := by
    rw [← Complex.exp_nat_mul, ← Complex.exp_nat_mul, ← Complex.exp_add, ← Complex.exp_add]
    congr 1
    push_cast
    ring
  calc _ = (wSigma L (z + w) * wSigma L (z - w)) * (Complex.exp (-(s2 L) * (z + w) ^ 2 / 2)
          * Complex.exp (-(s2 L) * (z - w) ^ 2 / 2)) := by ring
    _ = _ := by
        rw [e, ex]
        ring

theorem pInjective_of (h : SigmaAdd) (hz : SigmaZero) : PInjective := by
  intro L z w hzL hwL
  have e := h L z w hzL hwL
  have hσz : wSigma L z ≠ 0 := fun h' => hzL ((hz L z).1 h')
  have hσw : wSigma L w ≠ 0 := fun h' => hwL ((hz L w).1 h')
  constructor
  · intro hP
    rw [hP, sub_self, mul_zero, neg_zero] at e
    rcases mul_eq_zero.1 e with h1 | h1
    · exact Or.inr ((hz L _).1 h1)
    · exact Or.inl ((hz L _).1 h1)
  · intro hor
    have h0 : wSigma L (z + w) * wSigma L (z - w) = 0 := by
      rcases hor with h1 | h1
      · rw [(hz L _).2 h1, mul_zero]
      · rw [(hz L _).2 h1, zero_mul]
    rw [h0] at e
    have h3 : wSigma L z ^ 2 * wSigma L w ^ 2 * (L.weierstrassP z - L.weierstrassP w) = 0 := by
      linear_combination e
    rcases mul_eq_zero.1 h3 with h1 | h1
    · exact absurd h1 (mul_ne_zero (pow_ne_zero _ hσz) (pow_ne_zero _ hσw))
    · exact sub_eq_zero.1 h1

end Formalism.L2.Th1.F
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.SigmaAdd =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.SigmaOrder =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.SigmaOrder", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.ThetaLine\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.Legendre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Complex.RemovableSingularity\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Complex.CauchyIntegral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Th1.F

theorem sigmaOrder_of (he : SigmaEntire) (hz : SigmaZero) (hs : SigmaSimple) : SigmaOrder := by
  intro L a b z ha
  classical
  set f : ℂ → ℂ := fun w => wSigma L (a * w + b) with hfdef
  have hlin : Differentiable ℂ (fun w : ℂ => a * w + b) :=
    (differentiable_id.const_mul a).add_const b
  have hfd : Differentiable ℂ f := (he L).comp hlin
  have hfa : AnalyticAt ℂ f z := hfd.analyticAt z
  have hder : HasDerivAt f (deriv (wSigma L) (a * z + b) * (a * 1)) z := by
    have h1 : HasDerivAt (fun w : ℂ => a * w + b) (a * 1) z :=
      ((hasDerivAt_id z).const_mul a).add_const b
    exact ((he L) (a * z + b)).hasDerivAt.comp z h1
  rw [hfa.meromorphicOrderAt_eq]
  split_ifs with hmem
  · have h0 : f z = 0 := (hz L (a * z + b)).2 hmem
    have hord : analyticOrderAt f z = ((1 : ℕ) : ℕ∞) := by
      rw [hfa.analyticOrderAt_eq_natCast]
      refine ⟨dslope f z, ?_, ?_, ?_⟩
      · have hon : DifferentiableOn ℂ (dslope f z) Set.univ :=
          (Complex.differentiableOn_dslope Filter.univ_mem).2 hfd.differentiableOn
        exact (differentiableOn_univ.1 hon).analyticAt z
      · rw [dslope_same, hder.deriv]
        exact mul_ne_zero ((hs L).2 _ hmem) (by simpa using ha)
      · filter_upwards with w
        rw [pow_one, sub_smul_dslope, h0, sub_zero]
    rw [hord]
    rfl
  · have hne : f z ≠ 0 := fun h => hmem ((hz L (a * z + b)).1 h)
    have hord : analyticOrderAt f z = 0 := analyticOrderAt_eq_zero.2 (Or.inr hne)
    rw [hord]
    rfl

end Formalism.L2.Th1.F
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.SigmaOrder =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EllipticOnePole =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EllipticOnePole", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.ThetaLine\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.Elliptic\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.OnePole\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.PDeriv\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.SigmaAdd\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.SigmaOrder\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.ThreeTermNumEqTwistedGammaOfSigmaZero\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.QuasiPeriodConstUnique\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SigmaLogDeriv2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.F

alias ellipticNoPole := _root_.Formalism.L2.Th1.F.elliptic_no_pole_const
theorem ellipticOnePole : EllipticOnePole :=
  ellipticOnePole_of ellipticNoPole _root_.Formalism.L2.Th1.F.elliptic_entire_const zetaQuasi legendre
theorem sigmaOrder : SigmaOrder := sigmaOrder_of sigmaEntire sigmaZero sigmaSimple
theorem sigmaAdd : SigmaAdd :=
  sigmaAdd_of ellipticNoPole sigmaEntire _root_.Formalism.L2.Th1.F.sigma_odd sigmaZero sigmaSimple sigmaQuasi sigmaOrder
theorem sgStarAdd : SgStarAdd := sgStarAdd_of sigmaAdd
theorem pInjective : PInjective := pInjective_of sigmaAdd sigmaZero
theorem sigmaDouble : SigmaDouble := sigmaDouble_of sigmaAdd sigmaEntire sigmaSimple
theorem pDerivZero : PDerivZero := pDerivZero_of sigmaDouble sigmaZero
theorem discNeZero : DiscNeZero := discNeZero_of pDerivZero pInjective
theorem zetaAdd : ZetaAdd := zetaAdd_of sigmaAdd sigmaLogDeriv sigmaZero
theorem sigmaThree : SigmaThree :=
  sigmaThree_of ellipticOnePole sigmaOrder sigmaQuasi sigmaZero sigmaEntire _root_.Formalism.L2.Th1.F.sigma_odd sigmaSimple sigmaAdd
theorem sgStarThree : SgStarThree := sgStarThree_of sigmaThree
theorem thetaLine : ThetaLine := thetaLine_of ellipticOnePole sgStarQuasi sgStarBasic

end Formalism.L2.Th1.F
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EllipticOnePole =====
