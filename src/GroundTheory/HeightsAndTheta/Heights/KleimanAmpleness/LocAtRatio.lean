module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.AlgebraMapMemChartRingLine
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsGraphGenTwistBundleZero
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsMultiProjPrimeMIdealOverGraph
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.RestrictionSystems
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.RestrictionBundle
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsMoreTail
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.RestrictionLocal
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.EqZeroOrIsHomogeneousOfMemPolyPiece
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.MConeMapOverBaseRename, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PLineBundleRestrict, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.LocAtRatio

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.MConeMapOverBaseRename =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.MConeMapOverBaseRename", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.AlgebraMapMemChartRingLine\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsGraphGenTwistBundleZero\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsMultiProjPrimeMIdealOverGraph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

open MvPolynomial
open ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH (mConeMapOver mIdealOver)

noncomputable section

universe u w

section Scale

variable {k : Type u} [Field k] {K' : Type w} [Field K'] [Algebra k K'] {N : ℕ} {y : Fin (N + 1) → K'}

def scaleBundle (P : Kleiman.LineBundle k y) (μ : K') (hμ : μ ≠ 0) : Kleiman.LineBundle k y where
  sub I := Submodule.span (Kleiman.chartRing k y I) {μ} * P.sub I
  mono I J h z hz := by
    obtain ⟨w, hw, rfl⟩ := Submodule.mem_span_singleton_mul.mp hz
    exact Submodule.mem_span_singleton_mul.mpr ⟨w, P.mono I J h w hw, rfl⟩
  mem_iff I J h z := by
    simp only [Submodule.mem_span_singleton_mul]
    constructor
    · rintro ⟨w, hw, rfl⟩
      obtain ⟨a, ha, haw⟩ := (P.mem_iff I J h w).mp hw
      refine ⟨a, ha, (a : K') • w, haw, ?_⟩
      simp only [smul_eq_mul]; ring
    · rintro ⟨a, ha, w, hw, hwz⟩
      refine ⟨μ⁻¹ * z, (P.mem_iff I J h _).mpr ⟨a, ha, ?_⟩, by field_simp⟩
      rw [smul_eq_mul] at hwz ⊢
      rw [show (a : K') * (μ⁻¹ * z) = w by
        rw [mul_left_comm, ← hwz, ← mul_assoc, inv_mul_cancel₀ hμ, one_mul]]
      exact hw
  fg I := (Submodule.fg_span_singleton μ).mul (P.fg I)
  invertible I := by
    obtain ⟨M, hM⟩ := P.invertible I
    refine ⟨Submodule.span (Kleiman.chartRing k y I) {μ⁻¹} * M, ?_⟩
    rw [mul_mul_mul_comm, hM, Submodule.span_mul_span, Set.singleton_mul_singleton, mul_inv_cancel₀ hμ,
      mul_one, ← Submodule.one_eq_span]

theorem restrictData_scale {Ω : Type w} [Field Ω] [Algebra k Ω] {x : Fin (N + 1) → Ω}
    {Q : Kleiman.SubSystem k x Ω} {hxy : ∀ i, y i ≠ 0 → x i ≠ 0} {P : Kleiman.LineBundle k y} {r : Ω → K'}
    (hr : Kleiman.RestrictData Q hxy P.toSubSystem r) (μ : K') (hμ : μ ≠ 0) :
    Kleiman.RestrictData Q hxy (scaleBundle P μ hμ).toSubSystem (fun q => μ * r q) := by
  constructor
  · intro I q hq
    exact Submodule.mem_span_singleton_mul.mpr ⟨r q, hr.mem I q hq, rfl⟩
  · intro I q hq q' hq'
    simp only [hr.add I q hq q' hq', mul_add]
  · intro I q hq f s e hs hf hse
    simp only [hr.smul I q hq f s e hs hf hse]
    ring
  · intro I
    change _ = Submodule.span _ {μ} * P.sub I
    rw [← hr.span I, Submodule.span_mul_span, Set.singleton_mul, Set.image_image]

end Scale

section GraphEq

variable {k : Type} [Field k] {Ω : Type} [Field Ω] [Algebra k Ω] {N m : ℕ}

abbrev baseRename : Kleiman.Poly k N →ₐ[k] MvPolynomial (Σ c, graphIdx N m c) k :=
  rename fun a : Fin (N + 1) => (⟨baseBlock, a⟩ : Σ c, graphIdx N m c)

theorem mConeMapOver_baseRename (x : Fin (N + 1) → Ω) (s : Fin m → Ω) {g : Kleiman.Poly k N} {e : ℕ}
    (hg : g.IsHomogeneous e) :
    mConeMapOver k (graphVec x s) (baseRename g) = C (aeval x g) * X baseBlock ^ e := by
  have h1 := DFunLike.congr_fun (mConeMapOver_graph_comp_base (S := k) x s) g
  rw [AlgHom.comp_apply, AlgHom.comp_apply] at h1
  rw [h1, Kleiman.cone_of_isHomogeneous x hg, AlgHom.restrictScalars_apply, map_mul, map_pow,
    Polynomial.aeval_C, Polynomial.aeval_X, MvPolynomial.algebraMap_eq]

theorem mConeMapOver_graphEq (x : Fin (N + 1) → Ω) (s : Fin m → Ω) {f h : Kleiman.Poly k N} {e : ℕ}
    (hf : f.IsHomogeneous e) (hh : h.IsHomogeneous e) (b l : Fin m) :
    mConeMapOver k (graphVec x s) (X ⟨Sum.inr (), b⟩ * baseRename h - X ⟨Sum.inr (), l⟩ * baseRename f) =
      C (s b * aeval x h - s l * aeval x f) * (X (Sum.inr ()) * X baseBlock ^ e) := by
  rw [map_sub, map_mul, map_mul, mConeMapOver_baseRename x s hh, mConeMapOver_baseRename x s hf]
  simp only [mConeMapOver, aeval_X, graphVec_inr, map_sub, map_mul]
  ring

theorem graphEq_of_le {K' : Type} [Field K'] [Algebra k K'] {x : Fin (N + 1) → Ω} {s : Fin m → Ω}
    {x' : Fin (N + 1) → K'} {s' : Fin m → K'}
    (hle : mIdealOver k (graphVec x s) ≤ mIdealOver k (graphVec x' s')) {f h : Kleiman.Poly k N} {e : ℕ}
    (hf : f.IsHomogeneous e) (hh : h.IsHomogeneous e) (b l : Fin m)
    (hx : s b * aeval x h = s l * aeval x f) : s' b * aeval x' h = s' l * aeval x' f := by
  have hmem : X ⟨Sum.inr (), b⟩ * baseRename h - X ⟨Sum.inr (), l⟩ * baseRename f ∈
      mIdealOver k (graphVec x s) := by
    change _ ∈ RingHom.ker _
    rw [RingHom.mem_ker]
    rw [mConeMapOver_graphEq x s hf hh, hx, sub_self, map_zero, zero_mul]
  have h0 := hle hmem
  change _ ∈ RingHom.ker _ at h0
  rw [RingHom.mem_ker] at h0
  change mConeMapOver k (graphVec x' s') _ = 0 at h0
  rw [mConeMapOver_graphEq x' s' hf hh, mul_eq_zero, C_eq_zero, sub_eq_zero] at h0
  exact h0.resolve_right (mul_ne_zero (X_ne_zero _) (pow_ne_zero _ (X_ne_zero _)))

end GraphEq

end

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.MConeMapOverBaseRename =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PLineBundleRestrict =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PLineBundleRestrict", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.RestrictionSystems\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.RestrictionBundle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u w

variable {k : Type u} [Field k] {Ω : Type w} [Field Ω] [Algebra k Ω] {K' : Type w} [Field K']
  [Algebra k K'] {N : ℕ} {x : Fin (N + 1) → Ω} {y : Fin (N + 1) → K'}

def restrictUnion (I J : Chart y) : Chart y :=
  ⟨I.1 ∪ J.1, I.2.1.mono Finset.subset_union_left, Finset.union_subset I.2.2 J.2.2⟩

variable (hsp : primeOf (S := k) x ≤ primeOf (S := k) y) (hxy : ∀ i, y i ≠ 0 → x i ≠ 0)
include hsp

theorem redAt_isUnit_of_isUnit {I J : Chart y} (h : I.1 ⊆ J.1)
    (a : chartRing k x (liftChart hxy I))
    (ha : IsUnit (chartIncl (S := k) (x := x) (I := liftChart hxy I) (J := liftChart hxy J) h a)) :
    (a : Ω) ∈ locAt k x y ∧ ∃ b ∈ chartRing k y J, redAt k x y a * b = 1 := by
  obtain ⟨c, hc⟩ := ha.exists_right_inv
  have hc' : (a : Ω) * (c : Ω) = 1 := congrArg Subtype.val hc
  have haL := chartRing_sub_locAt hsp hxy I a.2
  have hcL := chartRing_sub_locAt hsp hxy J c.2
  refine ⟨haL.1, _, hcL.2, ?_⟩
  rw [← (locAt_mul hsp haL.1 hcL.1).2, hc', (locAt_one hsp).2]

theorem exists_mul_mem_of_mem_restrictUnion (Q : LineBundle k x) (I J : Chart y) {z : Ω}
    (hz : z ∈ Q.sub (liftChart hxy (restrictUnion I J))) :
    ∃ a ∈ chartRing k x (liftChart hxy I), a ∈ locAt k x y ∧ redAt k x y a ≠ 0 ∧
      a * z ∈ Q.sub (liftChart hxy I) := by
  have hIJ : I.1 ⊆ (restrictUnion I J).1 := Finset.subset_union_left
  obtain ⟨a, ha, haz⟩ := (Q.mem_iff (liftChart hxy I) (liftChart hxy (restrictUnion I J)) hIJ z).mp hz
  obtain ⟨haL, b, -, hb⟩ := redAt_isUnit_of_isUnit hsp hxy hIJ a ha
  rw [smul_eq_mul] at haz
  exact ⟨a, a.2, haL, left_ne_zero_of_mul_eq_one hb, haz⟩

theorem exists_restrict_gen (Q : LineBundle k x) :
    ∃ γ : Ω, γ ≠ 0 ∧ RedGood hxy Q.toSubSystem γ ∧ ∀ I : Chart y,
      ∃ b ∈ chartRing k x (liftChart hxy I), b ∈ locAt k x y ∧ redAt k x y b ≠ 0 ∧
        b * γ ∈ Q.sub (liftChart hxy I) := by
  by_cases hI : Nonempty (Chart y)
  swap
  · exact ⟨1, one_ne_zero, fun I => (hI ⟨I⟩).elim, fun I => (hI ⟨I⟩).elim⟩
  obtain ⟨I₀⟩ := hI
  obtain ⟨M, hM⟩ := Q.invertible (liftChart hxy I₀)
  have hA : ∀ {q m : Ω}, q ∈ Q.sub (liftChart hxy I₀) → m ∈ M → q * m ∈ locAt k x y :=
    fun hq hm => (chartRing_sub_locAt hsp hxy I₀ (mul_mem_chartRing_of_mul_eq_one hM hq hm)).1
  have h1 : (1 : Ω) ∈ Q.sub (liftChart hxy I₀) * M := by
    rw [hM]; exact Submodule.mem_one.mpr ⟨1, map_one _⟩
  obtain ⟨γ, hγ, m₀, hm₀, hne⟩ :
      ∃ γ ∈ Q.sub (liftChart hxy I₀), ∃ m₀ ∈ M, redAt k x y (γ * m₀) ≠ 0 := by
    by_contra hcon
    push Not at hcon
    have := Submodule.mul_induction_on (C := fun z => z ∈ locAt k x y ∧ redAt k x y z = 0) h1
      (fun q hq m hm => ⟨hA hq hm, hcon q hq m hm⟩)
      (fun u v hu hv => ⟨(locAt_add hsp hu.1 hv.1).1, by
        rw [(locAt_add hsp hu.1 hv.1).2, hu.2, hv.2, add_zero]⟩)
    rw [(locAt_one hsp).2] at this
    exact one_ne_zero this.2
  have hγm := hA hγ hm₀
  have hγm0 := (locAt_inv hsp hγm hne).1
  have hγ0 : γ ≠ 0 := left_ne_zero_of_mul hγm0
  have hm0 : m₀ ≠ 0 := right_ne_zero_of_mul hγm0
  refine ⟨γ, hγ0, ?_, ?_⟩
  · intro I q hq
    have hsub : I.1 ⊆ (restrictUnion I₀ I).1 := Finset.subset_union_right
    obtain ⟨a, -, haL, har, haq⟩ := exists_mul_mem_of_mem_restrictUnion hsp hxy Q I₀ I
      (Q.mono (liftChart hxy I) (liftChart hxy (restrictUnion I₀ I)) hsub q hq)
    have ha0 : a ≠ 0 := (locAt_inv hsp haL har).1
    have hnum := hA haq hm₀
    have hden := locAt_mul hsp haL hγm
    have hden0 : redAt k x y (a * (γ * m₀)) ≠ 0 := by rw [hden.2]; exact mul_ne_zero har hne
    have heq : q / γ = a * q * m₀ / (a * (γ * m₀)) := by
      rw [mul_assoc a q m₀, mul_div_mul_left _ _ ha0, mul_div_mul_right _ _ hm0]
    rw [heq]; exact (locAt_div hsp hnum hden.1 hden0).1
  · intro I
    have hsub : I₀.1 ⊆ (restrictUnion I I₀).1 := Finset.subset_union_right
    exact exists_mul_mem_of_mem_restrictUnion hsp hxy Q I I₀
      (Q.mono (liftChart hxy I₀) (liftChart hxy (restrictUnion I I₀)) hsub γ hγ)

variable {γ : Ω} {Q : LineBundle k x}

theorem redSys_sub_eq_span (hg : RedGood hxy Q.toSubSystem γ) (I : Chart y) {s : Set Ω}
    (hs : Submodule.span (chartRing k x (liftChart hxy I)) s = Q.sub (liftChart hxy I)) :
    (redSys hxy Q.toSubSystem γ).sub I =
      Submodule.span (chartRing k y I) ((fun q => redAt k x y (q / γ)) '' s) := by
  apply le_antisymm
  · refine Submodule.span_le.mpr ?_
    rintro _ ⟨q, hq, rfl⟩
    have hq' : q ∈ Submodule.span (chartRing k x (liftChart hxy I)) s := by rw [hs]; exact hq
    refine Submodule.span_induction (p := fun q _ => redAt k x y (q / γ) ∈
      Submodule.span (chartRing k y I) ((fun q => redAt k x y (q / γ)) '' s)) ?_ ?_ ?_ ?_ hq'
    · intro q hq; exact Submodule.subset_span ⟨q, hq, rfl⟩
    · rw [zero_div, (locAt_zero hsp).2]; exact Submodule.zero_mem _
    · intro u v hu hv ihu ihv
      rw [add_div, (locAt_add hsp (hg I u (hs ▸ hu)) (hg I v (hs ▸ hv))).2]
      exact Submodule.add_mem _ ihu ihv
    · intro c u hu ihu
      rw [chartRing_smul_def, mul_div_assoc,
        (locAt_mul hsp (chartRing_sub_locAt hsp hxy I c.2).1 (hg I u (hs ▸ hu))).2]
      have := Submodule.smul_mem _ (⟨_, (chartRing_sub_locAt hsp hxy I c.2).2⟩ : chartRing k y I) ihu
      rwa [chartRing_smul_def] at this
  · refine Submodule.span_le.mpr ?_
    rintro _ ⟨q, hq, rfl⟩
    have hq' : q ∈ Q.sub (liftChart hxy I) := by rw [← hs]; exact Submodule.subset_span hq
    exact Submodule.subset_span ⟨q, hq', rfl⟩

theorem redSys_mem_iff (hg : RedGood hxy Q.toSubSystem γ) (I J : Chart y) (h : I.1 ⊆ J.1) (z : K') :
    z ∈ (redSys hxy Q.toSubSystem γ).sub J ↔ ∃ c : chartRing k y I, IsUnit (chartIncl h c) ∧
      (c : K') • z ∈ (redSys hxy Q.toSubSystem γ).sub I := by
  constructor
  · intro hz
    obtain ⟨q, hq, rfl⟩ := (mem_redSys_iff hsp hxy hg J z).mp hz
    obtain ⟨b, hb, hbq⟩ := (Q.mem_iff (liftChart hxy I) (liftChart hxy J) h q).mp hq
    obtain ⟨hbL, b', hb'A, hbb'⟩ := redAt_isUnit_of_isUnit hsp hxy h b hb
    have hbI := (chartRing_sub_locAt hsp hxy I b.2).2
    refine ⟨⟨_, hbI⟩, IsUnit.of_mul_eq_one ⟨b', hb'A⟩ (Subtype.ext hbb'), ?_⟩
    rw [smul_eq_mul] at hbq
    change redAt k x y b * redAt k x y (q / γ) ∈ (redSys hxy Q.toSubSystem γ).sub I
    rw [← (locAt_mul hsp hbL (hg J q hq)).2, ← mul_div_assoc]
    exact Submodule.subset_span ⟨_, hbq, rfl⟩
  · rintro ⟨c, hc, hcz⟩
    obtain ⟨c', hc'⟩ := hc.exists_left_inv
    have hc'' : (c' : K') * (c : K') = 1 := congrArg Subtype.val hc'
    have := Submodule.smul_mem _ c' ((redSys hxy Q.toSubSystem γ).mono I J h _ hcz)
    rwa [chartRing_smul_def, smul_eq_mul, ← mul_assoc, hc'', one_mul] at this

theorem redSys_invertible (hγ0 : γ ≠ 0) (hg : RedGood hxy Q.toSubSystem γ) (I : Chart y)
    (hb : ∃ b ∈ chartRing k x (liftChart hxy I), b ∈ locAt k x y ∧ redAt k x y b ≠ 0 ∧
      b * γ ∈ Q.sub (liftChart hxy I)) :
    ∃ M' : Submodule (chartRing k y I) K', (redSys hxy Q.toSubSystem γ).sub I * M' = 1 := by
  obtain ⟨b, -, hbL, hbr, hbγ⟩ := hb
  obtain ⟨M, hM⟩ := Q.invertible (liftChart hxy I)
  refine ⟨Submodule.span (chartRing k y I) ((fun m => redAt k x y (m * γ)) '' M), ?_⟩
  have hA : ∀ {q m : Ω}, q ∈ Q.sub (liftChart hxy I) → m ∈ M →
      q * m ∈ chartRing k x (liftChart hxy I) :=
    fun hq hm => mul_mem_chartRing_of_mul_eq_one hM hq hm
  have hb0 : b ≠ 0 := (locAt_inv hsp hbL hbr).1
  have hmg : ∀ {m : Ω}, m ∈ M → m * γ ∈ locAt k x y := by
    intro m hm
    have h1 := (chartRing_sub_locAt hsp hxy I (hA hbγ hm)).1
    have heq : m * γ = b * γ * m / b := by rw [eq_div_iff hb0]; ring
    rw [heq]; exact (locAt_div hsp h1 hbL hbr).1
  have hsplit : ∀ q m : Ω, q * m = q / γ * (m * γ) := fun q m => by field_simp
  apply le_antisymm
  · change Submodule.span _ _ * Submodule.span _ _ ≤ 1
    rw [Submodule.span_mul_span, Submodule.span_le]
    rintro _ ⟨_, ⟨q, hq, rfl⟩, _, ⟨m, hm, rfl⟩, rfl⟩
    show redAt k x y (q / γ) * redAt k x y (m * γ) ∈ (1 : Submodule (chartRing k y I) K')
    rw [← (locAt_mul hsp (hg I q hq) (hmg hm)).2, ← hsplit]
    exact Submodule.mem_one.mpr ⟨⟨_, (chartRing_sub_locAt hsp hxy I (hA hq hm)).2⟩, rfl⟩
  · rw [Submodule.one_le]
    have h1 : (1 : Ω) ∈ Q.sub (liftChart hxy I) * M := by
      rw [hM]; exact Submodule.mem_one.mpr ⟨1, map_one _⟩
    have := Submodule.mul_induction_on (C := fun z => z ∈ locAt k x y ∧ redAt k x y z ∈
        (redSys hxy Q.toSubSystem γ).sub I *
          Submodule.span (chartRing k y I) ((fun m => redAt k x y (m * γ)) '' M)) h1
      (fun q hq m hm => ⟨(chartRing_sub_locAt hsp hxy I (hA hq hm)).1, by
        rw [hsplit, (locAt_mul hsp (hg I q hq) (hmg hm)).2]
        exact Submodule.mul_mem_mul (Submodule.subset_span ⟨q, hq, rfl⟩)
          (Submodule.subset_span ⟨m, hm, rfl⟩)⟩)
      (fun u v hu hv => ⟨(locAt_add hsp hu.1 hv.1).1, by
        rw [(locAt_add hsp hu.1 hv.1).2]; exact Submodule.add_mem _ hu.2 hv.2⟩)
    rw [(locAt_one hsp).2] at this
    exact this.2


end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PLineBundleRestrict =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.LocAtRatio =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.LocAtRatio", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsMoreTail\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.RestrictionLocal\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.EqZeroOrIsHomogeneousOfMemPolyPiece\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsMultiProjPrimeMIdealOverGraph\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.MConeMapOverBaseRename\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PLineBundleRestrict\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.RestrictionBundle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

open MvPolynomial
open ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH (mIdealOver)

noncomputable section

section Loc

variable {k : Type} [Field k] {Ω : Type} [Field Ω] [Algebra k Ω] {K' : Type} [Field K'] [Algebra k K']
  {N : ℕ} {x : Fin (N + 1) → Ω} {x' : Fin (N + 1) → K'}
  (hsp : Kleiman.primeOf (S := k) x ≤ Kleiman.primeOf (S := k) x')
include hsp

theorem locAt_ratio {c : Fin (N + 1)} (hc : x' c ≠ 0) (a : Fin (N + 1)) :
    x a / x c ∈ Kleiman.locAt k x x' ∧ Kleiman.redAt k x x' (x a / x c) = x' a / x' c := by
  have hsy : aeval x' (X c : Kleiman.Poly k N) ≠ 0 := by rw [aeval_X]; exact hc
  have h1 := Kleiman.mem_locAt (x := x) (isHomogeneous_X k a) (isHomogeneous_X k c) hsy
  have h2 := Kleiman.redAt_eq hsp (isHomogeneous_X k a) (isHomogeneous_X k c) hsy
  simp only [aeval_X] at h1 h2
  exact ⟨h1, h2⟩

theorem locAt_zpow {a : Ω} (ha : a ∈ Kleiman.locAt k x x') (hr : Kleiman.redAt k x x' a ≠ 0) (n : ℤ) :
    a ^ n ∈ Kleiman.locAt k x x' ∧ Kleiman.redAt k x x' (a ^ n) = Kleiman.redAt k x x' a ^ n := by
  obtain ⟨n, rfl | rfl⟩ := Int.eq_nat_or_neg n
  · simpa only [zpow_natCast] using Kleiman.locAt_pow hsp ha n
  · have hp := Kleiman.locAt_pow hsp ha n
    have hpr : Kleiman.redAt k x x' (a ^ n) ≠ 0 := by rw [hp.2]; exact pow_ne_zero _ hr
    obtain ⟨-, h1, h2⟩ := Kleiman.locAt_inv hsp hp.1 hpr
    simp only [zpow_neg, zpow_natCast]
    rw [← hp.2]
    exact ⟨h1, h2⟩

end Loc

theorem GraphRestrict.full : GraphRestrict.Statement := by
  intro k _ N Ω _ _ x Q n m s K' _ _ x' s' hxy hgen hle ⟨i₀, hi₀⟩ ⟨j₁, hj₁⟩
  classical
  have hsp : Kleiman.primeOf (S := k) x ≤ Kleiman.primeOf (S := k) x' := by
    rw [← comap_mIdealOver_graph x s, ← comap_mIdealOver_graph x' s']
    exact Ideal.comap_mono hle
  obtain ⟨γ, hγ0, hg, hb⟩ := Kleiman.exists_restrict_gen hsp hxy Q

  have hmemQ : ∀ (I : Kleiman.Chart x') {i : Fin (N + 1)}, i ∈ I.1 → ∀ b,
      x i ^ (-n) * s b ∈ Q.sub (Kleiman.liftChart hxy I) := by
    intro I i hi b
    have hxi : x i ≠ 0 := (Kleiman.mem_support x).mp ((Kleiman.liftChart hxy I).2.2 hi)
    have hsb : s b ∈ (Q.twist (Kleiman.twistSys k x n)).sub (Kleiman.liftChart hxy I) := by
      rw [← hgen]; exact Submodule.subset_span ⟨b, rfl⟩
    obtain ⟨q, hq, hqb⟩ :=
      (TranslateEq.mem_twist_twistSys_iff Q.toSubSystem n (Kleiman.liftChart hxy I) hi (s b)).mp hsb
    rw [hqb, smul_eq_mul, ← mul_assoc, ← zpow_add₀ hxi, neg_add_cancel, zpow_zero, one_mul]
    exact hq
  have hi₀I : i₀ ∈ (Kleiman.singleChart hi₀).1 := Finset.mem_singleton_self i₀
  have hx₀ : x i₀ ≠ 0 := hxy i₀ hi₀
  obtain ⟨t, ht⟩ : ∃ t : Fin m → Ω, t = fun b => x i₀ ^ (-n) * s b / γ := ⟨_, rfl⟩
  have htL : ∀ b, t b ∈ Kleiman.locAt k x x' := fun b => by
    rw [ht]; exact hg (Kleiman.singleChart hi₀) _ (hmemQ _ hi₀I b)

  obtain ⟨l₀, hl₀⟩ : ∃ l, Kleiman.redAt k x x' (t l) ≠ 0 := by
    by_contra hcon
    push Not at hcon
    obtain ⟨b₀, -, hb₀L, hb₀r, hb₀Q⟩ := hb (Kleiman.singleChart hi₀)
    have hmem : x i₀ ^ n • (b₀ * γ) ∈
        (Q.twist (Kleiman.twistSys k x n)).sub (Kleiman.liftChart hxy (Kleiman.singleChart hi₀)) :=
      (TranslateEq.mem_twist_twistSys_iff Q.toSubSystem n _ hi₀I _).mpr ⟨_, hb₀Q, rfl⟩
    rw [← hgen, Submodule.mem_span_range_iff_exists_fun] at hmem
    obtain ⟨a, ha⟩ := hmem
    simp only [Subalgebra.smul_def, smul_eq_mul] at ha
    have haL : ∀ b, (a b : Ω) ∈ Kleiman.locAt k x x' := fun b =>
      (Kleiman.chartRing_sub_locAt hsp hxy _ (a b).2).1
    have hsum : b₀ = ∑ b, (a b : Ω) * t b := by
      have hxn : x i₀ ^ n ≠ 0 := zpow_ne_zero n hx₀
      have : ∑ b, (a b : Ω) * t b = x i₀ ^ (-n) / γ * ∑ b, (a b : Ω) * s b := by
        rw [Finset.mul_sum]
        exact Finset.sum_congr rfl fun b _ => by rw [ht]; ring
      rw [this, ha, zpow_neg]
      field_simp
    have hL := Kleiman.locAt_sum hsp Finset.univ (fun b => (a b : Ω) * t b) fun b _ =>
      (Kleiman.locAt_mul hsp (haL b) (htL b)).1
    apply hb₀r
    rw [hsum, hL.2]
    exact Finset.sum_eq_zero fun b _ => by
      rw [(Kleiman.locAt_mul hsp (haL b) (htL b)).2, hcon b, mul_zero]

  have htl0 : t l₀ ≠ 0 := (Kleiman.locAt_inv hsp (htL l₀) hl₀).1
  have hsl0 : s l₀ ≠ 0 := fun h0 => htl0 (by rw [ht]; simp [h0])
  have hkey : ∀ b, s' b * Kleiman.redAt k x x' (t l₀) = s' l₀ * Kleiman.redAt k x x' (t b) := by
    intro b
    obtain ⟨hdL, hdr⟩ := Kleiman.locAt_div hsp (htL b) (htL l₀) hl₀
    obtain ⟨f, h, e, hf, hh, hhy, hfh⟩ := hdL
    have hhx := Kleiman.aeval_ne_zero_of_primeOf_le hsp hh hhy
    have hr2 : Kleiman.redAt k x x' (t b) / Kleiman.redAt k x x' (t l₀) = aeval x' f / aeval x' h := by
      rw [← hdr, hfh, Kleiman.redAt_eq hsp hf hh hhy]
    have hst : t b / t l₀ = s b / s l₀ := by
      rw [div_eq_div_iff htl0 hsl0, ht]; dsimp only; ring
    rw [hst, div_eq_div_iff hsl0 hhx] at hfh
    have hgr := graphEq_of_le hle hf hh b l₀ (by rw [hfh]; ring)
    rw [div_eq_div_iff hl₀ hhy] at hr2
    apply mul_right_cancel₀ hhy
    linear_combination Kleiman.redAt k x x' (t l₀) * hgr - s' l₀ * hr2
  have hlam : s' l₀ ≠ 0 := by
    intro h0
    apply hj₁
    have := hkey j₁
    rw [h0, zero_mul] at this
    exact (mul_eq_zero.mp this).resolve_right hl₀
  obtain ⟨μ, hμdef⟩ : ∃ μ : K', μ = s' l₀ / (Kleiman.redAt k x x' (t l₀) * x' i₀ ^ n) := ⟨_, rfl⟩
  have hμ : μ ≠ 0 := by
    rw [hμdef]; exact div_ne_zero hlam (mul_ne_zero hl₀ (zpow_ne_zero n hi₀))

  let Q'' : Kleiman.LineBundle k x' :=
    Kleiman.LineBundle.mk
      (Kleiman.SubFamily.mk (Kleiman.redSys hxy Q.toSubSystem γ) (Kleiman.redSys_mem_iff hsp hxy hg))
      (fun I => by
        obtain ⟨S0, hS0⟩ := Q.fg (Kleiman.liftChart hxy I)
        change (Kleiman.redSys hxy Q.toSubSystem γ).sub I |>.FG
        rw [Kleiman.redSys_sub_eq_span hsp hxy hg I hS0]
        exact Submodule.fg_span (S0.finite_toSet.image _))
      (fun I => Kleiman.redSys_invertible hsp hxy hγ0 hg I (hb I))
  have hR'' : Kleiman.RestrictData Q.toSubSystem hxy Q''.toSubSystem
      (fun q => Kleiman.redAt k x x' (q / γ)) := Kleiman.restrictData_redSys hsp hxy hg Q'' rfl
  have hR' := restrictData_scale hR'' μ hμ
  refine ⟨scaleBundle Q'' μ hμ, fun q => μ * Kleiman.redAt k x x' (q / γ), hR', ?_⟩
  intro I
  obtain ⟨i, hi⟩ := I.2.1
  have hxi' : x' i ≠ 0 := (Kleiman.mem_support x').mp (I.2.2 hi)
  have hxi : x i ≠ 0 := hxy i hxi'

  have hc : ∀ b, x i ^ (-n) * s b / γ ∈ Kleiman.locAt k x x' ∧
      Kleiman.redAt k x x' (x i ^ (-n) * s b / γ) = (x' i₀ / x' i) ^ n * Kleiman.redAt k x x' (t b) := by
    intro b
    obtain ⟨hr1, hr2⟩ := locAt_ratio hsp hxi' i₀
    have hr0 : Kleiman.redAt k x x' (x i₀ / x i) ≠ 0 := by rw [hr2]; exact div_ne_zero hi₀ hxi'
    obtain ⟨hz1, hz2⟩ := locAt_zpow hsp hr1 hr0 n
    have hxn : x i ^ n ≠ 0 := zpow_ne_zero n hxi
    have hxn₀ : x i₀ ^ n ≠ 0 := zpow_ne_zero n hx₀
    have heq : x i ^ (-n) * s b / γ = (x i₀ / x i) ^ n * t b := by
      rw [ht, div_zpow, zpow_neg, zpow_neg]
      field_simp
    rw [heq, ← hr2, ← hz2]
    exact Kleiman.locAt_mul hsp hz1 (htL b)

  have hval : ∀ b, s' b = x' i ^ n * (μ * Kleiman.redAt k x x' (x i ^ (-n) * s b / γ)) := by
    intro b
    have hk := hkey b
    have hxn : x' i ^ n ≠ 0 := zpow_ne_zero n hxi'
    have hxn₀ : x' i₀ ^ n ≠ 0 := zpow_ne_zero n hi₀
    rw [(hc b).2, hμdef, div_zpow]
    field_simp
    linear_combination hk
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨b, rfl⟩
    rw [SetLike.mem_coe, TranslateEq.mem_twist_twistSys_iff _ n I hi]
    exact ⟨_, hR'.mem I _ (hmemQ I hi b), by rw [smul_eq_mul]; exact hval b⟩
  · intro z hz
    obtain ⟨w, hw, rfl⟩ := (TranslateEq.mem_twist_twistSys_iff _ n I hi z).mp hz
    obtain ⟨v, hv, rfl⟩ := Submodule.mem_span_singleton_mul.mp hw
    obtain ⟨q, hq, rfl⟩ := (Kleiman.mem_redSys_iff hsp hxy hg I v).mp hv
    have hxq : x i ^ n • q ∈ (Q.twist (Kleiman.twistSys k x n)).sub (Kleiman.liftChart hxy I) :=
      (TranslateEq.mem_twist_twistSys_iff Q.toSubSystem n _ hi _).mpr ⟨q, hq, rfl⟩
    rw [← hgen, Submodule.mem_span_range_iff_exists_fun] at hxq
    obtain ⟨a, ha⟩ := hxq
    simp only [Subalgebra.smul_def, smul_eq_mul] at ha
    have haL : ∀ b, (a b : Ω) ∈ Kleiman.locAt k x x' ∧ Kleiman.redAt k x x' (a b) ∈ Kleiman.chartRing k x' I :=
      fun b => Kleiman.chartRing_sub_locAt hsp hxy I (a b).2
    have hqs : q / γ = ∑ b, (a b : Ω) * (x i ^ (-n) * s b / γ) := by
      have hxn : x i ^ n ≠ 0 := zpow_ne_zero n hxi
      have : ∑ b, (a b : Ω) * (x i ^ (-n) * s b / γ) = x i ^ (-n) / γ * ∑ b, (a b : Ω) * s b := by
        rw [Finset.mul_sum]
        exact Finset.sum_congr rfl fun b _ => by ring
      rw [this, ha, zpow_neg]
      field_simp
    have hsumL := Kleiman.locAt_sum hsp Finset.univ (fun b => (a b : Ω) * (x i ^ (-n) * s b / γ))
      fun b _ => (Kleiman.locAt_mul hsp (haL b).1 (hc b).1).1
    rw [Submodule.mem_span_range_iff_exists_fun]
    refine ⟨fun b => ⟨Kleiman.redAt k x x' (a b), (haL b).2⟩, ?_⟩
    simp only [Subalgebra.smul_def, smul_eq_mul]
    rw [hqs, hsumL.2, Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun b _ => ?_
    rw [(Kleiman.locAt_mul hsp (haL b).1 (hc b).1).2, hval b]
    ring

end

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.LocAtRatio =====
