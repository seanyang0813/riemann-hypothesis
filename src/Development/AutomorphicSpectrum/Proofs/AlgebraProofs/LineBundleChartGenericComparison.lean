module

public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Cartier
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PGenericProjClosureDivisor
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PPairCocycle
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleModelDegree
import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.OfSteps

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFormsExist, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XVertdivCommensurable, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MonomialRatioIntegralModel, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleChartGenericComparison

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFormsExist =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFormsExist", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace PositivityTheory.Xgn.A_forms_exist

variable {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω] {K : Type} [Fintype K] [DecidableEq K]
  {ι : K → Type}

theorem shift (x : (Σ k, ι k) → Ω) (t : ∀ k, ι k) (e : K → ℕ) {F : MRing ι O} {d : K → ℕ}
    (hF : IsMultiHomog F d) :
    ∃ G : MRing ι O, IsMultiHomog G (d + e) ∧ aeval x G = aeval x F * ∏ k, x ⟨k, t k⟩ ^ e k := by
  have h := IsWeightedHomogeneous.prod (Finset.univ : Finset K)
    (fun k => (X ⟨k, t k⟩ : MRing ι O) ^ e k) (fun k => e k • blockWeight ι ⟨k, t k⟩)
    (w := blockWeight ι)
    (fun k _ => (isWeightedHomogeneous_X O (blockWeight ι) ⟨k, t k⟩).pow (e k))
  have he : ∑ k, e k • blockWeight ι ⟨k, t k⟩ = e := by
    ext k'
    simp [blockWeight, Finset.sum_apply, Pi.single_apply]
  rw [he] at h
  refine ⟨F * ∏ k, (X ⟨k, t k⟩ : MRing ι O) ^ e k, IsWeightedHomogeneous.mul hF h, ?_⟩
  simp [map_prod]

def fracs (O : Type) [CommRing O] [Algebra O Ω] (x : (Σ k, ι k) → Ω) (s : ∀ k, ι k) : Subalgebra O Ω where
  carrier := {v | ∃ (d : K → ℕ) (F : MRing ι O), IsMultiHomog F d ∧ aeval x F = v * ∏ k, x ⟨k, s k⟩ ^ d k}
  mul_mem' := by
    rintro v w ⟨d, F, hF, eF⟩ ⟨e, G, hG, eG⟩
    refine ⟨d + e, F * G, IsWeightedHomogeneous.mul hF hG, ?_⟩
    simp only [map_mul, eF, eG, Pi.add_apply, pow_add, Finset.prod_mul_distrib]
    ring
  add_mem' := by
    rintro v w ⟨d, F, hF, eF⟩ ⟨e, G, hG, eG⟩
    obtain ⟨F', hF', eF'⟩ := shift x s e hF
    obtain ⟨G', hG', eG'⟩ := shift x s d hG
    rw [add_comm e d] at hG'
    refine ⟨d + e, F' + G', IsWeightedHomogeneous.add hF' hG', ?_⟩
    simp only [map_add (f := _), eF', eG', eF, eG, Pi.add_apply, pow_add, Finset.prod_mul_distrib]
    ring
  algebraMap_mem' r := ⟨0, C r, isWeightedHomogeneous_C _ _, by simp⟩

theorem chartRing_le_fracs (x : (Σ k, ι k) → Ω) (s : ∀ k, ι k) (hs : mseg x s ≠ 0) :
    chartRing O (mseg x) s ≤ fracs O x s := by
  unfold chartRing
  rw [Algebra.adjoin_le_iff]
  rintro _ ⟨j, rfl⟩
  refine ⟨fun _ => 1, ∏ k, (X ⟨k, j k⟩ : MRing ι O), ?_, ?_⟩
  · have h := IsWeightedHomogeneous.prod (Finset.univ : Finset K)
      (fun k => (X ⟨k, j k⟩ : MRing ι O)) (fun k => blockWeight ι ⟨k, j k⟩)
      (w := blockWeight ι) (fun k _ => isWeightedHomogeneous_X O (blockWeight ι) ⟨k, j k⟩)
    have he : ∑ k, blockWeight ι ⟨k, j k⟩ = fun _ => 1 := by
      ext k'
      simp [blockWeight, Finset.sum_apply, Pi.single_apply]
    rw [he] at h
    exact h
  · simp only [map_prod, aeval_X, pow_one]
    have hm : ∏ k, x ⟨k, s k⟩ = mseg x s := rfl
    rw [hm, div_mul_cancel₀ _ hs]
    try rfl

end PositivityTheory.Xgn.A_forms_exist
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFormsExist =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XVertdivCommensurable =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XVertdivCommensurable", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFormsExist\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Cartier\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PGenericProjClosureDivisor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace PositivityTheory.Xgn.A_vertdiv_commensurable

variable {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω] {K : Type} [Fintype K] [DecidableEq K]
  {ι : K → Type} [∀ k, Fintype (ι k)]

def Pair (x : (Σ k, ι k) → Ω) (c : K → ℤ) (u : Ω) (f g : MRing ι O) : Prop :=
  (∃ bf bg : K → ℕ, IsMultiHomog f bf ∧ IsMultiHomog g bg ∧ (fun k => (bf k : ℤ) - bg k) = c) ∧
    aeval x f = u * aeval x g

theorem cross {x : (Σ k, ι k) → Ω} {c : K → ℤ} {u : Ω} {f g f' g' : MRing ι O}
    (h : Pair x c u f g) (h' : Pair x c u f' g') : f * g' - f' * g ∈ pointIdeal O x := by
  obtain ⟨⟨bf, bg, hf, hg, hd⟩, hv⟩ := h
  obtain ⟨⟨bf', bg', hf', hg', hd'⟩, hv'⟩ := h'
  have he : bf + bg' = bf' + bg := by
    funext k
    have h1 := congrFun hd k
    have h2 := congrFun hd' k
    simp only [Pi.add_apply] at h1 h2 ⊢
    omega
  have h1 : IsWeightedHomogeneous (blockWeight ι) (f * g') (bf + bg') := IsWeightedHomogeneous.mul hf hg'
  have h2 : IsWeightedHomogeneous (blockWeight ι) (f' * g) (bf + bg') := by
    rw [he]; exact IsWeightedHomogeneous.mul hf' hg
  refine GenericProjClosureDivisor.mem_of_homog (b := bf + bg') ?_ ?_
  · exact (mem_weightedHomogeneousSubmodule _ _ _ _).mp
      (sub_mem ((mem_weightedHomogeneousSubmodule _ _ _ _).mpr h1)
        ((mem_weightedHomogeneousSubmodule _ _ _ _).mpr h2))
  · rw [map_sub, map_mul, map_mul, hv, hv']
    ring

omit [∀ k, Fintype (ι k)] in
theorem mono_homog (s : ∀ k, ι k) (e : K → ℕ) :
    IsMultiHomog (∏ k, X ⟨k, s k⟩ ^ e k : MRing ι O) e := by
  have he : e = ∑ k, e k • blockWeight ι ⟨k, s k⟩ := by
    ext j
    simp [blockWeight, Pi.single_apply]
  unfold IsMultiHomog
  conv => enter [3]; rw [he]
  exact IsWeightedHomogeneous.prod _ _ _ fun k _ => (isWeightedHomogeneous_X O _ _).pow _

theorem product_powers_not_mem_prime {A : Type} [CommRing A] {W : Ideal A} (hW : W.IsPrime) {c : A} (hc : c ∉ W) (y : K → A)
    (hy : ∀ k, y k ∉ W) (n : ℕ) (e : K → ℕ) : c ^ n * ∏ k, y k ^ e k ∉ W := by
  intro hf
  rcases hW.mem_or_mem hf with h3 | h3
  · exact hc (hW.mem_of_pow_mem n h3)
  · obtain ⟨k, -, hk⟩ := (Ideal.IsPrime.prod_mem_iff (p := W)).1 h3
    exact hy k (hW.mem_of_pow_mem (e k) hk)

theorem zpow_aux (y : K → Ω) (hy : ∀ k, y k ≠ 0) (b b' : K → ℤ) (p q : K → ℕ)
    (h : ∀ k, b k + q k = b' k + p k) :
    (∏ k, y k ^ b k) * ∏ k, y k ^ q k = (∏ k, y k ^ b' k) * ∏ k, y k ^ p k := by
  rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun k _ => ?_
  rw [← zpow_natCast, ← zpow_natCast, ← zpow_add₀ (hy k), ← zpow_add₀ (hy k), h k]

theorem mul_eq_one_of_covolume_identity {m m' t D P Q r u : Ω} (hm : m' ≠ 0) (h : t * m = r * (u * m')) (hb : m * Q = m' * P) :
    t * (D * P) = u * (r * D * Q) := by
  apply mul_left_cancel₀ hm
  linear_combination D * Q * h - D * t * hb

omit [∀ k, Fintype (ι k)] in
theorem pair_num {x : (Σ k, ι k) → Ω} {ϖ : O} {b b' : K → ℤ} {u : Ω} {s : ∀ k, ι k} (hs : mseg x s ≠ 0)
    {W : Ideal (MRing ι O)} (hW : W.IsPrime) (hϖ : (C ϖ : MRing ι O) ∉ W)
    (hX : ∀ k, (X ⟨k, s k⟩ : MRing ι O) ∉ W) {n : ℕ} {r : Ω} (hr : r ∈ chartRing O (mseg x) s)
    (h : algebraMap O Ω ϖ ^ n * chartMon x s b = r * (u * chartMon x s b')) :
    ∃ f g : MRing ι O, Pair x (b - b') u f g ∧ f ∉ W := by
  obtain ⟨d, F, hF, eF⟩ := A_forms_exist.chartRing_le_fracs x s hs hr
  have hx : ∀ k, x ⟨k, s k⟩ ≠ 0 := fun k => Finset.prod_ne_zero_iff.1 hs k (Finset.mem_univ k)
  have hm : chartMon x s b' ≠ 0 := Finset.prod_ne_zero_iff.2 fun k _ => zpow_ne_zero _ (hx k)
  obtain ⟨p, hp⟩ : ∃ p : K → ℕ, ∀ k, p k = (b k - b' k).toNat := ⟨_, fun _ => rfl⟩
  obtain ⟨q, hq⟩ : ∃ q : K → ℕ, ∀ k, q k = (b' k - b k).toNat := ⟨_, fun _ => rfl⟩
  have hpq : ∀ k, b k + q k = b' k + p k := fun k => by
    have e1 := hp k
    have e2 := hq k
    omega
  have hb : chartMon x s b * ∏ k, x ⟨k, s k⟩ ^ q k = chartMon x s b' * ∏ k, x ⟨k, s k⟩ ^ p k :=
    zpow_aux (fun k => x ⟨k, s k⟩) hx b b' p q hpq
  have h0 : IsMultiHomog (C ϖ ^ n : MRing ι O) 0 := by
    rw [← map_pow]
    exact isWeightedHomogeneous_C _ _
  have h1 : IsMultiHomog (C ϖ ^ n * ∏ k, X ⟨k, s k⟩ ^ (d + p) k : MRing ι O) (0 + (d + p)) :=
    IsWeightedHomogeneous.mul h0 (mono_homog s (d + p))
  have h2 : IsMultiHomog (F * ∏ k, X ⟨k, s k⟩ ^ q k : MRing ι O) (d + q) :=
    IsWeightedHomogeneous.mul hF (mono_homog s q)
  refine ⟨_, _, ⟨⟨_, _, h1, h2, ?_⟩, ?_⟩, product_powers_not_mem_prime hW hϖ (fun k => X ⟨k, s k⟩) hX n (d + p)⟩
  · funext k
    have e1 := hpq k
    simp only [Pi.add_apply, Pi.sub_apply, Pi.zero_apply]
    omega
  · simp only [map_mul, map_prod, map_pow, aeval_X, aeval_C, eF, Pi.add_apply, pow_add,
      Finset.prod_mul_distrib]
    exact mul_eq_one_of_covolume_identity hm h hb

theorem pair_at {x : (Σ k, ι k) → Ω} {ϖ : O} {b b' : K → ℤ} {u : Ω} (hu : u ≠ 0)
    (H : ∀ s, mseg x s ≠ 0 → (∃ n : ℕ, ∃ r ∈ chartRing O (mseg x) s, algebraMap O Ω ϖ ^ n * chartMon x s b = r * (u * chartMon x s b')) ∧ ∃ n : ℕ, ∃ r ∈ chartRing O (mseg x) s, algebraMap O Ω ϖ ^ n * (u * chartMon x s b') = r * chartMon x s b)
    (W : Ideal (MRing ι O)) (hW : W.IsPrime) (hPW : pointIdeal O x ≤ W) (hrel : IsRelevant W)
    (hϖ : (C ϖ : MRing ι O) ∉ W) :
    ∃ f g : MRing ι O, Pair x (b - b') u f g ∧ f ∉ W ∧ g ∉ W := by
  choose s hX using hrel
  have hs : mseg x s ≠ 0 := by
    refine Finset.prod_ne_zero_iff.2 fun k _ h0 => hX k (hPW ?_)
    exact GenericProjClosureDivisor.mem_of_homog (isWeightedHomogeneous_X O _ _) (by rw [aeval_X, h0])
  obtain ⟨⟨n, r, hr, h⟩, n', r', hr', h'⟩ := H s hs
  obtain ⟨f, g, hp, hf⟩ := pair_num hs hW hϖ hX hr h
  have h'' : algebraMap O Ω ϖ ^ n' * chartMon x s b' = r' * (u⁻¹ * chartMon x s b) := by
    apply mul_left_cancel₀ hu
    rw [mul_left_comm r', ← mul_assoc u u⁻¹, mul_inv_cancel₀ hu, one_mul, ← h']
    ring
  obtain ⟨g', f', ⟨⟨bg, bf, hg1, hf1, hd⟩, hv⟩, hg'⟩ := pair_num hs hW hϖ hX hr' h''
  have hp' : Pair x (b - b') u f' g' := by
    refine ⟨⟨bf, bg, hf1, hg1, ?_⟩, ?_⟩
    · funext k
      have h1 := congrFun hd k
      simp only [Pi.sub_apply] at h1 ⊢
      omega
    · rw [hv, ← mul_assoc, mul_inv_cancel₀ hu, one_mul]
  refine ⟨f, g, hp, hf, fun hg => ?_⟩
  have h1 := W.add_mem (hPW (cross hp hp')) (W.mul_mem_left f' hg)
  rw [sub_add_cancel] at h1
  exact (hW.mem_or_mem h1).elim hf hg'

end PositivityTheory.Xgn.A_vertdiv_commensurable

theorem PositivityTheory.Xgn.t_vertdiv_commensurable : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (ϖ : O), Irreducible ϖ → ∀ d : ℕ, IsModelOver (pointIdeal O x) d → ∀ (b b' : K → ℤ) (u : Ω), u ≠ 0 → (∀ s, mseg x s ≠ 0 → (∃ n : ℕ, ∃ r ∈ chartRing O (mseg x) s, algebraMap O Ω ϖ ^ n * chartMon x s b = r * (u * chartMon x s b')) ∧ ∃ n : ℕ, ∃ r ∈ chartRing O (mseg x) s, algebraMap O Ω ϖ ^ n * (u * chartMon x s b') = r * chartMon x s b) → ∃ f g : MRing ι O, IsVerticalDivisor (pointIdeal O x) ϖ (b - b') f g ∧ aeval x f = u * aeval x g := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x ϖ hϖ d hM b b' u hu H
  have hϖP : (C ϖ : MRing ι O) ∉ pointIdeal O x := by
    intro hm
    have h1 : ϖ ∈ (pointIdeal O x).comap (C : O →+* MRing ι O) := hm
    rw [hM.noTorsion, Ideal.mem_bot] at h1
    exact hϖ.ne_zero h1
  obtain ⟨f, g, hp, hf, hg⟩ := A_vertdiv_commensurable.pair_at hu H _ hM.multiProj.isPrime le_rfl
    hM.multiProj.relevant hϖP
  refine ⟨f, g, IsVerticalDivisor.of_unit_off_special hp.1 hf hg fun W hW hPW hrel hϖW => ?_, hp.2⟩
  obtain ⟨f', g', hp', hf', hg'⟩ := A_vertdiv_commensurable.pair_at hu H W hW hPW hrel hϖW
  refine ⟨g', f', hg', hf', ?_⟩
  rw [mul_comm g' f]
  exact A_vertdiv_commensurable.cross hp hp'
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XVertdivCommensurable =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MonomialRatioIntegralModel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MonomialRatioIntegralModel", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XVertdivCommensurable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.VertDiv

theorem commensurable_vertical : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (ϖ : O), Irreducible ϖ → ∀ d : ℕ, IsModelOver (pointIdeal O x) d → ∀ (b b' : K → ℤ) (u : Ω), u ≠ 0 → (∀ s, mseg x s ≠ 0 → (∃ n : ℕ, ∃ r ∈ chartRing O (mseg x) s, algebraMap O Ω ϖ ^ n * chartMon x s b = r * (u * chartMon x s b')) ∧ ∃ n : ℕ, ∃ r ∈ chartRing O (mseg x) s, algebraMap O Ω ϖ ^ n * (u * chartMon x s b') = r * chartMon x s b) → ∃ f g : MRing ι O, IsVerticalDivisor (pointIdeal O x) ϖ (b - b') f g ∧ aeval x f = u * aeval x g :=
  @PositivityTheory.Xgn.t_vertdiv_commensurable

end GlobalTheory.CompanionTheory.Ar.Num.VertDiv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MonomialRatioIntegralModel =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleChartGenericComparison =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleChartGenericComparison", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PPairCocycle\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleModelDegree\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MonomialRatioIntegralModel\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.OfSteps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.CkLinePow

section Lists

variable {K : Type*} {σ : Type*}

theorem headAdd_zsmul {A : List (K → ℤ) → ℤ} (hA : HeadAdd A) (m : ℤ) (u : K → ℤ)
    (l : List (K → ℤ)) : A ((m • u) :: l) = m * A (u :: l) := by
  let φ : (K → ℤ) →+ ℤ := AddMonoidHom.mk' (fun v => A (v :: l)) fun v w => hA v w l
  exact map_zsmul φ m u

theorem map_zsmul_append {A : List (K → ℤ) → ℤ} (hp : PermInv A) (hA : HeadAdd A) (m : ℤ)
    (l r : List (K → ℤ)) : A (l.map (m • ·) ++ r) = m ^ l.length * A (l ++ r) := by
  induction l generalizing r with
  | nil => simp
  | cons u l ih =>
    rw [List.map_cons, List.cons_append, headAdd_zsmul hA,
      hp _ _ (List.perm_middle (a := u) (l₁ := l.map (m • ·)) (l₂ := r)).symm, ih,
      hp _ _ (List.perm_middle (a := u) (l₁ := l) (l₂ := r)), List.length_cons, List.cons_append]
    ring

theorem polyVal_zsmul {A : List (K → ℤ) → ℤ} (hp : PermInv A) (hA : HeadAdd A) (m : ℤ)
    (cls : σ → K → ℤ) {H : MvPolynomial σ ℤ} {n : ℕ} (hH : H.IsHomogeneous n) :
    polyVal A (fun s => m • cls s) H = m ^ n * polyVal A cls H := by
  unfold polyVal
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun μ hμ => ?_
  have hperm : (classList (fun s => m • cls s) μ).Perm ((classList cls μ).map (m • ·) ++ []) := by
    unfold classList
    rw [List.append_nil, ← Multiset.coe_eq_coe, ← Multiset.map_coe, Multiset.coe_toList,
      Multiset.coe_toList, Multiset.map_map]
    rfl
  rw [hp _ _ hperm, map_zsmul_append hp hA, GroundTheory.Heights₂.Heights.NumbersDVR.classList_length_of_mem_support cls hH hμ, List.append_nil]
  ring

end Lists

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]

omit [Fintype K] [∀ k, Fintype (ι k)] in
theorem isVerticalDivisor_swap {P : Ideal (MRing ι O)} {ϖ : O} {b : K → ℤ} {f g : MRing ι O}
    (hD : IsVerticalDivisor P ϖ b f g) : IsVerticalDivisor P ϖ (-b) g f := by
  refine IsVerticalDivisor.of_unit_off_special ?_ hD.den_not_mem hD.num_not_mem
      fun W hW hPW hrel hϖ => ?_
  · obtain ⟨bf, bg, hf, hg, hb⟩ := hD.degrees
    exact ⟨bg, bf, hg, hf, funext fun k => by rw [← hb]; simp⟩
  · obtain ⟨u, v, hu, hv, h⟩ := hD.unit_off_special W hW hPW hrel hϖ
    exact ⟨v, u, hv, hu, by rw [← neg_sub]; exact P.neg_mem h⟩

theorem exists_zpow {Ω : Type} [Field Ω] (φ : MRing ι O →+* Ω) {P : Ideal (MRing ι O)} [P.IsPrime]
    {ϖ : O} {b : K → ℤ} {f g : MRing ι O} (hD : IsVerticalDivisor P ϖ b f g) {u : Ω} (hu : u ≠ 0)
    (hfg : φ f * u = φ g) (m : ℤ) :
    ∃ F G : MRing ι O, IsVerticalDivisor P ϖ (m • b) F G ∧ φ F * u ^ m = φ G ∧
      ∀ W, ratDiv P F G W = m * ratDiv P f g W := by
  induction m using Int.induction_on with
  | zero =>
    refine ⟨1, 1, ?_, by simp, fun W => by simp [ratDiv]⟩
    rw [zero_smul]
    exact isVerticalDivisor_one ϖ P
  | succ n ih =>
    obtain ⟨F, G, hFG, hv, hr⟩ := ih
    refine ⟨F * f, G * g, ?_, ?_, fun W => ?_⟩
    · rw [add_smul, one_smul]
      exact isVerticalDivisor_mul hFG hD
    · rw [zpow_add_one₀ hu, map_mul, map_mul, ← hv, ← hfg]
      ring
    · rw [ratDiv_mul hFG.num_not_mem hFG.den_not_mem hD.num_not_mem hD.den_not_mem, Pi.add_apply,
        hr]
      ring
  | pred n ih =>
    obtain ⟨F, G, hFG, hv, hr⟩ := ih
    refine ⟨F * g, G * f, ?_, ?_, fun W => ?_⟩
    · rw [sub_smul, one_smul, sub_eq_add_neg]
      exact isVerticalDivisor_mul hFG (isVerticalDivisor_swap hD)
    · rw [zpow_sub_one₀ hu, map_mul, map_mul, ← hv, ← hfg]
      field_simp
    · rw [ratDiv_mul hFG.num_not_mem hFG.den_not_mem hD.den_not_mem hD.num_not_mem, Pi.add_apply,
        hr]
      unfold ratDiv
      ring

theorem pairNum_scale {ϖ : O} (hϖ : Irreducible ϖ) {P : Ideal (MRing ι O)} {d : ℕ}
    (hP : IsModelOver P d) {a b : K → ℤ} {f g F G : MRing ι O}
    (hD : IsVerticalDivisor P ϖ b f g) (m : ℤ) (hr : ∀ W, ratDiv P F G W = m * ratDiv P f g W)
    {k : ℕ} (hk : 1 ≤ k) {Q : List (K → ℤ)} (hQ : Q.length + k = d + 1) :
    pairNum P (fun _ : Fin 1 => m • a) (fun _ => 0) (fun _ => F) (fun _ => G)
        (psumExpansion 1 k) Q =
      m ^ k * pairNum P (fun _ : Fin 1 => a) (fun _ => 0) (fun _ => f) (fun _ => g)
        (psumExpansion 1 k) Q := by
  unfold pairNum
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  have hH := isHomogeneous_psumExpansion 1 k i
  have hn : k - 1 + Q.length = d := by omega
  have hcls : (Sum.elim (fun _ : Fin 1 => m • a) (fun _ : Fin 1 => (0 : K → ℤ))) =
      fun s => m • (Sum.elim (fun _ : Fin 1 => a) (fun _ : Fin 1 => (0 : K → ℤ))) s := by
    funext s
    cases s <;> simp
  unfold cycEval
  rw [mul_finsum]
  refine finsum_congr fun W => ?_
  beta_reduce
  rw [hr W]
  by_cases hW : ratDiv P f g W = 0
  · simp [hW]
  rw [classNum_eq_polyVal _ hH hn, classNum_eq_polyVal _ hH hn, hcls,
    polyVal_zsmul (listNum_perm W Q d) (listNum_headAdd IntNumAddFirst.full hϖ hP hD hW Q) m _ hH]
  obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by omega⟩
  rw [Nat.add_sub_cancel]
  ring

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ (A T Am : ChartBundle O (mseg x) 1 Ω) (u : Ω) (a : K → ℤ) (m : ℤ), u ≠ 0 → IsLine O x u a A.lat → IsLine O x 1 0 T.lat → SameGeneric O x A T → IsLine O x (u ^ m) (m • a) Am.lat → SameGeneric O x Am T ∧ ∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O x d 1 Am T k L Q = m ^ k * ck O x d 1 A T k L Q := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hM A T Am u a m hu hA hT hS hAm
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  obtain ⟨-, hW⟩ := (BundleExamples.isModelOver_iff O _ d).mp hM
  have hW' : GroundTheory.Heights₂.Heights.NumbersDVR.IsModelOver (pointIdeal O x) d := hW
  have hS' := (BundleExamples.sameGeneric_iff hϖ x A T).mp hS
  obtain ⟨f, g, hD, hfg⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.VertDiv.commensurable_vertical O Ω K ι x ϖ hϖ d hW' a 0 u⁻¹ (inv_ne_zero hu) (by
    intro s hs
    obtain ⟨h1, h2⟩ := hS' s hs
    constructor
    · obtain ⟨n, hn⟩ := h1 _ ((hA s hs _).2 ⟨1, one_mem _, rfl⟩)
      obtain ⟨r, hr, e⟩ := (hT s hs _).1 hn
      refine ⟨n, r, hr, ?_⟩
      rw [smul_eq_mul] at e
      apply mul_left_cancel₀ hu
      field_simp
      linear_combination e
    · obtain ⟨n, hn⟩ := h2 _ ((hT s hs _).2 ⟨1, one_mem _, rfl⟩)
      obtain ⟨r, hr, e⟩ := (hA s hs _).1 hn
      refine ⟨n, r, hr, ?_⟩
      rw [smul_eq_mul] at e
      apply mul_left_cancel₀ hu
      field_simp
      linear_combination e)
  have hfg' : aeval x f * u = aeval x g := by
    rw [hfg]
    field_simp
  have : (pointIdeal O x).IsPrime := hW'.multiProj.isPrime
  obtain ⟨F, G, hFG, hv, hr⟩ := exists_zpow
    (aeval x : MRing ι O →ₐ[O] Ω).toRingHom hD hu hfg' m
  have hFG' : IsVerticalDivisor (pointIdeal O x) ϖ (m • a - 0) F G := by
    simpa using hFG
  obtain ⟨hs1, h1⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.LineCk.main O Ω K ι x ϖ hϖ d hM Am T (u ^ m) 1 (m • a) 0 hAm hT F G hFG'
    (by rw [mul_one]; exact hv)
  obtain ⟨-, h2⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.LineCk.main O Ω K ι x ϖ hϖ d hM A T u 1 a 0 hA hT f g hD
    (by rw [mul_one]; exact hfg')
  refine ⟨hs1, fun k hk1 hk2 q L Q hQ => ?_⟩
  rw [h1 k hk1 hk2 q L Q hQ, h2 k hk1 hk2 q L Q hQ, Finset.mul_sum]
  refine Finset.sum_congr rfl fun μ hμ => ?_
  rw [pairNum_scale hϖ hW' hD m hr hk1
    (by rw [GroundTheory.Heights₂.Heights.NumbersDVR.classList_length_of_mem_support L hQ hμ]; omega)]
  ring

end GlobalTheory.CompanionTheory.Ar.CkLinePow
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleChartGenericComparison =====
