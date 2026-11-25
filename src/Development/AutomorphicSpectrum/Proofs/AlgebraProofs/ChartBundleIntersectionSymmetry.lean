module

public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SmulMemSpanOver
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModelDescentValuationFibre
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVerticalDivisorJoinPullback
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagIndependence
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PSubQuotient
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.SameGenericSymm
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleBaseExtension
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleBaseExtensionUnique
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Inhabit
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChernClassOnFlagPair
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBaseExtension
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleChain
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleProduct
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementA
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamiliesGlueToBundle
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagComparison
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleShortExact, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagFrameBaseExtension, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullFlagpair, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagPairBaseExtension, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubQuotientStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementB, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionNumbers, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleQuotientEquivalence, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionSymmetry

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleShortExact =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleShortExact", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SmulMemSpanOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.PullSubQuot

open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (restrictChart)
open ReciprocityTheory.ChartRestriction.G.Geo (div_mem_chartRing)

variable {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω]
  {K K' : Type} [Fintype K] [Fintype K'] {ι : K → Type} {ι' : K' → Type}

def comb (t : ∀ k, ι k) (s : ∀ k : K ⊕ K', Sum.elim ι ι' k) : ∀ k : K ⊕ K', Sum.elim ι ι' k
  | .inl k => t k
  | .inr k => s (.inr k)

theorem mseg_join (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω)
    (s : ∀ k : K ⊕ K', Sum.elim ι ι' k) :
    mseg (joinCoord x z) s = mseg x (restrictChart s) * mseg z (fun k => s (.inr k)) := by
  simp only [mseg, Fintype.prod_sum_type]
  rfl

theorem chartRing_le (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω)
    (s : ∀ k : K ⊕ K', Sum.elim ι ι' k) (hs : mseg (joinCoord x z) s ≠ 0) :
    chartRing O (mseg x) (restrictChart s) ≤ chartRing O (mseg (joinCoord x z)) s := by
  have hw : mseg z (fun k => s (.inr k)) ≠ 0 := by
    rw [mseg_join] at hs
    exact right_ne_zero_of_mul hs
  unfold chartRing
  apply Algebra.adjoin_le
  rintro _ ⟨t, rfl⟩
  have h : mseg x t / mseg x (restrictChart s) =
      mseg (joinCoord x z) (comb t s) / mseg (joinCoord x z) s := by
    rw [mseg_join x z (comb t s), mseg_join x z s]
    exact (mul_div_mul_right _ _ hw).symm
  have h2 := div_mem_chartRing (o := O) (mseg (joinCoord x z)) s (comb t s)
  rw [← h] at h2
  exact h2

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (N N₁ N₂ : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (V₁ : Type) [AddCommGroup V₁] [Module Ω V₁] (V₂ : Type) [AddCommGroup V₂] [Module Ω V₂] (E : ChartBundle O (mseg x) N V) (i : V₁ →ₗ[Ω] V) (p : V →ₗ[Ω] V₂) (E₁ : ChartBundle O (mseg x) N₁ V₁) (E₂ : ChartBundle O (mseg x) N₂ V₂), IsSubQuot O x E i p E₁ E₂ → ∀ (K' : Type) [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω) (EB : ChartBundle O (mseg (joinCoord x z)) N V) (EB₁ : ChartBundle O (mseg (joinCoord x z)) N₁ V₁) (EB₂ : ChartBundle O (mseg (joinCoord x z)) N₂ V₂), IsPull O x z E EB → IsPull O x z E₁ EB₁ → IsPull O x z E₂ EB₂ → IsSubQuot O (joinCoord x z) EB i p EB₁ EB₂ := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x N N₁ N₂ V _ _ V₁ _ _ V₂ _ _ E i p E₁ E₂ h K' _ _ ι' _ z EB EB₁ EB₂ hE hE₁ hE₂
  obtain ⟨hi, hp, hex, hc⟩ := h
  refine ⟨hi, hp, hex, fun s hs => ?_⟩
  have hx : mseg x (restrictChart s) ≠ 0 := by
    rw [mseg_join] at hs
    exact left_ne_zero_of_mul hs
  obtain ⟨h₁, h₂⟩ := hc _ hx
  have hF : LocFree (chartRing O (mseg x) (restrictChart s)) N₂
      ((E.lat (restrictChart s)).map p.toAddMonoidHom) := by
    rw [← h₂]
    exact ⟨fun a ha v hv => E₂.stable _ a ha v hv, E₂.frame _ hx⟩
  obtain ⟨c₁, c₂⟩ := SpanExact.span_comap_exact _ _ (chartRing_le x z s hs) i p hi hex
    (E.lat (restrictChart s)) N₂ (fun a ha v hv => E.stable _ a ha v hv) hF
  have e : EB.lat s = spanOver (chartRing O (mseg (joinCoord x z)) s)
      (E.lat (restrictChart s) : Set V) := hE s hs
  have e₁ : EB₁.lat s = spanOver (chartRing O (mseg (joinCoord x z)) s)
      (E₁.lat (restrictChart s) : Set V₁) := hE₁ s hs
  have e₂ : EB₂.lat s = spanOver (chartRing O (mseg (joinCoord x z)) s)
      (E₂.lat (restrictChart s) : Set V₂) := hE₂ s hs
  rw [e, e₁, e₂, h₁, h₂]
  exact ⟨c₁.symm, c₂.symm⟩

end GlobalTheory.CompanionTheory.Ar.Num.PullSubQuot
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleShortExact =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagFrameBaseExtension =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagFrameBaseExtension", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModelDescentValuationFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.PullFlagFrame

open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (restrictChart)

theorem tri_solve {F : Type} [Field F] {N : ℕ} (T : Fin N → Fin N → F) (a : Fin N → F)
    (hT : ∀ j l, j < l → T j l = 0) (hd : ∀ j, T j j ≠ 0) (i : Fin N)
    (h : ∀ l, i < l → ∑ j, a j * T j l = 0) : ∀ j, i < j → a j = 0 := by
  classical
  by_contra hne
  push_neg at hne
  obtain ⟨j₀, hj₀, ha₀⟩ := hne
  let S := Finset.univ.filter (fun j => i < j ∧ a j ≠ 0)
  have hS : S.Nonempty := ⟨j₀, by simp [S, hj₀, ha₀]⟩
  have hm : S.max' hS ∈ S := S.max'_mem hS
  obtain ⟨m, hmd⟩ : ∃ m, m = S.max' hS := ⟨_, rfl⟩
  rw [← hmd] at hm
  have hm' : i < m ∧ a m ≠ 0 := by simpa [S] using hm
  have hsum := h m hm'.1
  rw [Finset.sum_eq_single m] at hsum
  · exact mul_ne_zero hm'.2 (hd m) hsum
  · intro j _ hjm
    rcases lt_or_gt_of_ne hjm with hlt | hgt
    · rw [hT j m hlt, mul_zero]
    · have hz : a j = 0 := by
        by_contra hz
        have hjS : j ∈ S := by simp [S, hz, hm'.1.trans hgt]
        have := S.le_max' j hjS
        rw [← hmd] at this
        exact absurd this (not_le.2 hgt)
      rw [hz, zero_mul]
  · simp

section BC

variable {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω]
  {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {Ω₁ : Type} [Field Ω₁] [Algebra O Ω₁] [Algebra Ω Ω₁] [IsScalarTower O Ω Ω₁]
  {K' : Type} [Fintype K'] {ι' : K' → Type} [∀ k, Fintype (ι' k)]

theorem mseg_bcCoord (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω₁)
    (s : ∀ k : K ⊕ K', Sum.elim ι ι' k) :
    mseg (bcCoord x z) s =
      algebraMap Ω Ω₁ (mseg x (restrictChart s)) * ∏ k, z ⟨k, s (.inr k)⟩ := by
  simp [mseg, Fintype.prod_sum_type, bcCoord, joinCoord, restrictChart, map_prod]

theorem map_mem_chartRing_bc (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω₁)
    (s : ∀ k : K ⊕ K', Sum.elim ι ι' k) (hs : mseg (bcCoord x z) s ≠ 0) {a : Ω}
    (ha : a ∈ chartRing O (mseg x) (restrictChart s)) :
    algebraMap Ω Ω₁ a ∈ chartRing O (mseg (bcCoord x z)) s := by
  have hZ : (∏ k, z ⟨k, s (.inr k)⟩) ≠ 0 := by
    intro h0
    exact hs (by rw [mseg_bcCoord, h0, mul_zero])
  induction ha using Algebra.adjoin_induction with
  | mem t ht =>
    obtain ⟨j, rfl⟩ := ht
    let j' : ∀ k : K ⊕ K', Sum.elim ι ι' k := fun k =>
      match k with
      | .inl k => j k
      | .inr k => s (.inr k)
    have hj : restrictChart j' = j := rfl
    have hz : (∏ k, z ⟨k, j' (.inr k)⟩) = ∏ k, z ⟨k, s (.inr k)⟩ := rfl
    have e : algebraMap Ω Ω₁ (mseg x j / mseg x (restrictChart s)) =
        mseg (bcCoord x z) j' / mseg (bcCoord x z) s := by
      rw [mseg_bcCoord, mseg_bcCoord, hj, hz, map_div₀, mul_div_mul_right _ _ hZ]
    rw [e]
    exact Algebra.subset_adjoin ⟨j', rfl⟩
  | algebraMap r =>
    rw [← IsScalarTower.algebraMap_apply O Ω Ω₁]
    exact Subalgebra.algebraMap_mem _ r
  | add s t _ _ hs ht => rw [map_add (f := _)]; exact Subalgebra.add_mem _ hs ht
  | mul s t _ _ hs ht => rw [map_mul]; exact Subalgebra.mul_mem _ hs ht

variable {N : ℕ} {V : Type} [AddCommGroup V] [Module Ω V]
  {V₁ : Type} [AddCommGroup V₁] [Module Ω₁ V₁] [Module Ω V₁] [IsScalarTower Ω Ω₁ V₁]

theorem repr_bc (bc : V →ₗ[Ω] V₁) (w : Module.Basis (Fin N) Ω V) (w₁ : Module.Basis (Fin N) Ω₁ V₁)
    (hw : ∀ i, w₁ i = bc (w i)) (e : V) (j : Fin N) :
    w₁.repr (bc e) j = algebraMap Ω Ω₁ (w.repr e j) := by
  have h1 : bc e = ∑ i, algebraMap Ω Ω₁ (w.repr e i) • w₁ i := by
    conv_lhs => rw [← w.sum_repr e]

    rw [map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_smul, hw, algebraMap_smul]

  rw [h1, map_sum, Finsupp.finsetSum_apply, Finset.sum_eq_single j]
  · rw [map_smul, Module.Basis.repr_self, Finsupp.smul_apply, Finsupp.single_eq_same, smul_eq_mul,
      mul_one]
  · intro i _ hij
    rw [map_smul, Module.Basis.repr_self, Finsupp.smul_apply, Finsupp.single_apply, if_neg hij,
      smul_zero]
  · intro hj
    exact absurd (Finset.mem_univ j) hj

theorem isFlagFrame_bc (x : (Σ k, ι k) → Ω) (E : ChartBundle O (mseg x) N V)
    (w : Module.Basis (Fin N) Ω V) (b : Fin N → K → ℤ) (h : IsFlagFrame x E w b)
    (z : (Σ k, ι' k) → Ω₁) (bc : V →ₗ[Ω] V₁) (w₁ : Module.Basis (Fin N) Ω₁ V₁)
    (hw : ∀ i, w₁ i = bc (w i)) (EB : ChartBundle O (mseg (bcCoord x z)) N V₁)
    (hp : IsPullBC O x z bc E EB) :
    IsFlagFrame (bcCoord x z) EB w₁ (fun i => pullDeg (K' := K') (b i)) := by
  classical
  refine ⟨fun s hs0 i => ?_⟩
  have hs : mseg (bcCoord x z) s ≠ 0 := hs0
  have hc : mseg x (restrictChart s) ≠ 0 := by
    intro h0
    exact hs (by rw [mseg_bcCoord, h0, map_zero, zero_mul])
  obtain ⟨u, hu, hup, hdiag, hgen⟩ :=
    FlagPairExt.exists_frame x E w b h (restrictChart s) hc
  have hx : ∀ k, x ⟨k, restrictChart s k⟩ ≠ 0 := fun k =>
    (Finset.prod_ne_zero_iff.1 hc) k (Finset.mem_univ k)
  have hM : ∀ i, (∏ k, x ⟨k, restrictChart s k⟩ ^ b i k) ≠ 0 := fun i =>
    Finset.prod_ne_zero_iff.2 fun k _ => zpow_ne_zero _ (hx k)
  have hMon : (∏ k : K ⊕ K', (bcCoord x z) ⟨k, s k⟩ ^ pullDeg (K' := K') (b i) k) =
      algebraMap Ω Ω₁ (∏ k, x ⟨k, restrictChart s k⟩ ^ b i k) := by
    rw [Fintype.prod_sum_type]
    simp [pullDeg, bcCoord, joinCoord, restrictChart, map_prod, map_zpow₀]
  have hbu : ∀ j, bc (u j) ∈ EB.lat s := by
    intro j
    rw [hp s hs]
    exact AddSubgroup.subset_closure ⟨1, Subalgebra.one_mem _, u j, hu j, (one_smul _ _).symm⟩
  have hgenL : ∀ v ∈ EB.lat s, ∃ a : Fin N → Ω₁,
      (∀ j, a j ∈ chartRing O (mseg (bcCoord x z)) s) ∧ v = ∑ j, a j • bc (u j) := by
    intro v hv
    rw [hp s hs] at hv
    induction hv using AddSubgroup.closure_induction with
    | mem v hv =>
      obtain ⟨a, ha, e, he, rfl⟩ := hv
      obtain ⟨t, ht, rfl⟩ := hgen e he
      refine ⟨fun j => a * algebraMap Ω Ω₁ (t j), fun j =>
        Subalgebra.mul_mem _ ha (map_mem_chartRing_bc x z s hs (ht j)), ?_⟩

      rw [map_sum, Finset.smul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [map_smul, ← algebraMap_smul Ω₁ (t j), smul_smul]
    | zero => exact ⟨0, fun _ => Subalgebra.zero_mem _, by simp⟩
    | add v v' _ _ hv hv' =>
      obtain ⟨a, ha, rfl⟩ := hv
      obtain ⟨a', ha', rfl⟩ := hv'
      exact ⟨a + a', fun j => Subalgebra.add_mem _ (ha j) (ha' j), by
        simp [add_smul, Finset.sum_add_distrib]⟩
    | neg v _ hv =>
      obtain ⟨a, ha, rfl⟩ := hv
      exact ⟨-a, fun j => Subalgebra.neg_mem _ (ha j), by simp [Finset.sum_neg_distrib]⟩
  ext t
  constructor
  · rintro ⟨v, hv, htri, rfl⟩
    obtain ⟨a, ha, hav⟩ := hgenL v hv
    let T : Fin N → Fin N → Ω₁ := fun j l => algebraMap Ω Ω₁ (w.repr (u j) l)
    have hrepr : ∀ l, w₁.repr v l = ∑ j, a j * T j l := by
      intro l
      rw [hav]

      simp [T, map_sum, repr_bc bc w w₁ hw]
    have hT : ∀ j l, j < l → T j l = 0 := fun j l hjl => by simp [T, hup j l hjl]
    have hd : ∀ j, T j j ≠ 0 := fun j => by
      simp only [T, hdiag j]
      exact (map_ne_zero _).2 (hM j)
    have hz := tri_solve T a hT hd i fun l hl => by rw [← hrepr l]; exact htri l hl
    refine ⟨a i, ha i, ?_⟩
    rw [hrepr i, Finset.sum_eq_single i]
    · show a i * T i i = _
      rw [hMon]
      simp only [T, hdiag i]
    · intro j _ hji
      rcases lt_or_gt_of_ne hji with hlt | hgt
      · rw [hT j i hlt, mul_zero]
      · rw [hz j hgt, zero_mul]
    · simp
  · rintro ⟨a, ha, rfl⟩
    refine ⟨a • bc (u i), EB.stable s a ha _ (hbu i), fun j hj => ?_, ?_⟩
    · simp [repr_bc bc w w₁ hw, hup i j hj]
    · rw [hMon]
      simp [repr_bc bc w w₁ hw, hdiag i]

end BC

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (E : ChartBundle O (mseg x) N V) (w : Module.Basis (Fin N) Ω V) (b : Fin N → K → ℤ), IsFlagFrame x E w b → (∀ (K' : Type) [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω) (EB : ChartBundle O (mseg (joinCoord x z)) N V), IsPull O x z E EB → IsFlagFrame (joinCoord x z) EB w (fun i => pullDeg (K' := K') (b i))) ∧ ∀ (Ω₁ : Type) [Field Ω₁] [Algebra O Ω₁] [Algebra Ω Ω₁] [IsScalarTower O Ω Ω₁] (K' : Type) [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω₁) (V₁ : Type) [AddCommGroup V₁] [Module Ω₁ V₁] [Module Ω V₁] [IsScalarTower Ω Ω₁ V₁] (bc : V →ₗ[Ω] V₁) (w₁ : Module.Basis (Fin N) Ω₁ V₁), (∀ i, w₁ i = bc (w i)) → ∀ EB : ChartBundle O (mseg (bcCoord x z)) N V₁, IsPullBC O x z bc E EB → IsFlagFrame (bcCoord x z) EB w₁ (fun i => pullDeg (K' := K') (b i)) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x N V _ _ E w b h
  refine ⟨?_, ?_⟩
  · intro K' _ _ ι' _ z EB hp
    exact isFlagFrame_bc (Ω₁ := Ω) (V₁ := V) x E w b h z LinearMap.id w (fun _ => rfl) EB hp
  · intro Ω₁ _ _ _ _ K' _ _ ι' _ z V₁ _ _ _ _ bc w₁ hw EB hp
    exact isFlagFrame_bc x E w b h z bc w₁ hw EB hp

end GlobalTheory.CompanionTheory.Ar.Num.PullFlagFrame
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagFrameBaseExtension =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullFlagpair =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullFlagpair", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagFrameBaseExtension\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVerticalDivisorJoinPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace PositivityTheory.Xgn.A_pull_flagpair

theorem joinCoord_eq {K K' : Type} {ι : K → Type} {ι' : K' → Type} {Ω : Type} [Field Ω]
    (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω) : joinCoord x z = joinCoords x z := by
  funext p
  rcases p with ⟨k | k, i⟩ <;> rfl

theorem pullDeg_sub {K K' : Type} (b b' : K → ℤ) :
    pullDeg (K' := K') b - pullDeg (K' := K') b' = joinDeg (K' := K') (b - b') := by
  funext s
  rcases s with k | k <;> simp [pullDeg, joinDeg]

theorem pointIdeal_algebraMap {K : Type} {ι : K → Type} (O : Type) [CommRing O] {Ω Ω₁ : Type}
    [Field Ω] [Field Ω₁] [Algebra O Ω] [Algebra O Ω₁] [Algebra Ω Ω₁] [IsScalarTower O Ω Ω₁]
    (x : (Σ k, ι k) → Ω) :
    pointIdeal O (fun p => algebraMap Ω Ω₁ (x p)) = pointIdeal O x := by
  have key : ∀ f : MRing ι O, pointConeMap O (fun p => algebraMap Ω Ω₁ (x p)) f =
      MvPolynomial.map (algebraMap Ω Ω₁) (pointConeMap O x f) := by
    intro f
    simp only [pointConeMap]
    induction f using MvPolynomial.induction_on with
    | C a => simp [IsScalarTower.algebraMap_apply O Ω Ω₁]
    | add p q hp hq => simp [hp, hq]
    | mul_X p v hp => simp [hp]
  ext f
  simp only [pointIdeal, RingHom.mem_ker, key]
  exact map_eq_zero_iff _ (MvPolynomial.map_injective _ (algebraMap Ω Ω₁).injective)

theorem vertical_join (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O)
    {Ω : Type} [Field Ω] [Algebra O Ω]
    {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {K' : Type} [Fintype K'] [DecidableEq K'] {ι' : K' → Type} [∀ k, Fintype (ι' k)]
    (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω) (b b' : K → ℤ) (f g : MRing ι O)
    (h : IsVerticalDivisor (pointIdeal O x) ϖ (b - b') f g) :
    IsVerticalDivisor (pointIdeal O (joinCoord x z)) ϖ
      (pullDeg (K' := K') b - pullDeg (K' := K') b') (rename (liftVar ι') f) (rename (liftVar ι') g) := by
  rw [joinCoord_eq, pullDeg_sub]
  exact VerticalDivisorJoinPullback.proof O ϖ Ω K ι K' ι' x z (b - b') f g h

theorem aeval_join {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω]
    {K K' : Type} {ι : K → Type} {ι' : K' → Type}
    (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω) (f : MRing ι O) :
    aeval (joinCoord x z) (rename (liftVar ι') f) = aeval x f := by
  rw [aeval_rename]
  rfl

theorem repr_bc {Ω Ω₁ : Type} [Field Ω] [Field Ω₁] [Algebra Ω Ω₁] {N : ℕ}
    {V : Type} [AddCommGroup V] [Module Ω V]
    {V₁ : Type} [AddCommGroup V₁] [Module Ω₁ V₁] [Module Ω V₁] [IsScalarTower Ω Ω₁ V₁]
    (bc : V →ₗ[Ω] V₁) (w : Module.Basis (Fin N) Ω V) (w₁ : Module.Basis (Fin N) Ω₁ V₁)
    (hw : ∀ i, w₁ i = bc (w i)) (v : V) (j : Fin N) :
    w₁.repr (bc v) j = algebraMap Ω Ω₁ (w.repr v j) := by
  have h : bc v = ∑ i, algebraMap Ω Ω₁ (w.repr v i) • w₁ i := by

    conv_lhs => rw [← w.sum_repr v, map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_smul, hw, algebraMap_smul]
  rw [h, w₁.repr_sum_self]

end PositivityTheory.Xgn.A_pull_flagpair

open PositivityTheory.Xgn.A_pull_flagpair in
theorem PositivityTheory.Xgn.t_pull_flagpair : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (ϖ : O) (N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (E E' : ChartBundle O (mseg x) N V) (w w' : Module.Basis (Fin N) Ω V) (b b' : Fin N → K → ℤ) (f g : Fin N → MRing ι O), IsFlagPair ϖ x E E' w w' b b' f g → (∀ (K' : Type) [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω) (EB E'B : ChartBundle O (mseg (joinCoord x z)) N V), IsPull O x z E EB → IsPull O x z E' E'B → IsFlagPair ϖ (joinCoord x z) EB E'B w w' (fun i => pullDeg (K' := K') (b i)) (fun i => pullDeg (K' := K') (b' i)) (fun i => rename (liftVar ι') (f i)) (fun i => rename (liftVar ι') (g i))) ∧ ∀ (Ω₁ : Type) [Field Ω₁] [Algebra O Ω₁] [Algebra Ω Ω₁] [IsScalarTower O Ω Ω₁] (K' : Type) [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω₁) (V₁ : Type) [AddCommGroup V₁] [Module Ω₁ V₁] [Module Ω V₁] [IsScalarTower Ω Ω₁ V₁] (bc : V →ₗ[Ω] V₁) (w₁ w₁' : Module.Basis (Fin N) Ω₁ V₁), (∀ i, w₁ i = bc (w i)) → (∀ i, w₁' i = bc (w' i)) → ∀ EB E'B : ChartBundle O (mseg (bcCoord x z)) N V₁, IsPullBC O x z bc E EB → IsPullBC O x z bc E' E'B → IsFlagPair ϖ (bcCoord x z) EB E'B w₁ w₁' (fun i => pullDeg (K' := K') (b i)) (fun i => pullDeg (K' := K') (b' i)) (fun i => rename (liftVar ι') (f i)) (fun i => rename (liftVar ι') (g i)) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x ϖ N V _ _ E E' w w' b b' f g h
  obtain ⟨h1, h1'⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.PullFlagFrame.main O Ω K ι x N V E w b h.flag
  obtain ⟨h2, h2'⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.PullFlagFrame.main O Ω K ι x N V E' w' b' h.flag'
  refine ⟨?_, ?_⟩
  · intro K' _ _ ι' _ z EB E'B hE hE'
    refine ⟨h1 K' ι' z EB hE, h2 K' ι' z E'B hE', h.sameFlag, fun i => ?_, fun i => ?_⟩
    · exact vertical_join O ϖ x z _ _ _ _ (h.vertical i)
    · rw [aeval_join, aeval_join]
      exact h.generic i
  · intro Ω₁ _ _ _ _ K' _ _ ι' _ z V₁ _ _ _ _ bc w₁ w₁' hw hw' EB E'B hE hE'
    refine ⟨h1' Ω₁ K' ι' z V₁ bc w₁ hw EB hE, h2' Ω₁ K' ι' z V₁ bc w₁' hw' E'B hE',
      fun i j hij => ?_, fun i => ?_, fun i => ?_⟩
    · rw [hw', repr_bc bc w w₁ hw, h.sameFlag i j hij, map_zero]
    · refine vertical_join O ϖ _ z _ _ _ _ ?_
      rw [pointIdeal_algebraMap]
      exact h.vertical i
    · unfold bcCoord
      have e : ∀ p : MRing ι O, aeval (fun q => algebraMap Ω Ω₁ (x q)) p =
          algebraMap Ω Ω₁ (aeval x p) := fun p => aeval_algebraMap_apply Ω₁ x p
      rw [aeval_join, aeval_join, hw', repr_bc bc w w₁ hw, e, e, h.generic i, map_mul]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullFlagpair =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagPairBaseExtension =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagPairBaseExtension", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullFlagpair\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.PullFlagPair

alias main := _root_.PositivityTheory.Xgn.t_pull_flagpair

end GlobalTheory.CompanionTheory.Ar.Num.PullFlagPair
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagPairBaseExtension =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubQuotientStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubQuotientStatement", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagIndependence\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PSubQuotient\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.Num.SubQuotFlags

theorem main : GroundTheory.Heights₂.Heights.NumbersDVR.SubQuotient.Statement :=
  GroundTheory.Heights₂.Heights.NumbersDVR.SubQuotient.proof _root_.GlobalTheory.CompanionTheory.CommAlg.FlagIndependence.main

end GlobalTheory.CompanionTheory.Ar.Num.SubQuotFlags
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubQuotientStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementB =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementB", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.SameGenericSymm\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleBaseExtension\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleBaseExtensionUnique\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleShortExact\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Inhabit\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChernClassOnFlagPair\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagPairBaseExtension\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBaseExtension\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleChain\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubQuotientStatement\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagComparison\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.SubQuotCk

section Generic

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {Ω : Type} [Field Ω]
  [Algebra O Ω] {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {x : (Σ k, ι k) → Ω} {N N₁ N₂ : ℕ} {V V₁ V₂ : Type} [AddCommGroup V] [Module Ω V]
  [AddCommGroup V₁] [Module Ω V₁] [AddCommGroup V₂] [Module Ω V₂]

theorem sameGeneric_self (E : ChartBundle O (mseg x) N V) : SameGeneric O x E E :=
  fun _ _ => ⟨fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩,
    fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩⟩

theorem sameGeneric_sub {E E' : ChartBundle O (mseg x) N V} {i : V₁ →ₗ[Ω] V} {p : V →ₗ[Ω] V₂}
    {E₁ E₁' : ChartBundle O (mseg x) N₁ V₁} {E₂ E₂' : ChartBundle O (mseg x) N₂ V₂}
    (hs : SameGeneric O x E E') (h : IsSubQuot O x E i p E₁ E₂)
    (h' : IsSubQuot O x E' i p E₁' E₂') : SameGeneric O x E₁ E₁' := by
  intro s hx
  have l := (h.2.2.2 s hx).1
  have l' := (h'.2.2.2 s hx).1
  refine ⟨fun v hv => ?_, fun v hv => ?_⟩
  · rw [l] at hv
    obtain ⟨c, hc, hcv⟩ := (hs s hx).1 (i v) hv
    refine ⟨c, hc, ?_⟩
    rw [l']
    change i (algebraMap O Ω c • v) ∈ E'.lat s
    rwa [map_smul]
  · rw [l'] at hv
    obtain ⟨c, hc, hcv⟩ := (hs s hx).2 (i v) hv
    refine ⟨c, hc, ?_⟩
    rw [l]
    change i (algebraMap O Ω c • v) ∈ E.lat s
    rwa [map_smul]

theorem sameGeneric_quot {E E' : ChartBundle O (mseg x) N V} {i : V₁ →ₗ[Ω] V} {p : V →ₗ[Ω] V₂}
    {E₁ E₁' : ChartBundle O (mseg x) N₁ V₁} {E₂ E₂' : ChartBundle O (mseg x) N₂ V₂}
    (hs : SameGeneric O x E E') (h : IsSubQuot O x E i p E₁ E₂)
    (h' : IsSubQuot O x E' i p E₁' E₂') : SameGeneric O x E₂ E₂' := by
  intro s hx
  have l := (h.2.2.2 s hx).2
  have l' := (h'.2.2.2 s hx).2
  refine ⟨fun v hv => ?_, fun v hv => ?_⟩
  · rw [l] at hv
    obtain ⟨e, he, rfl⟩ := hv
    obtain ⟨c, hc, hce⟩ := (hs s hx).1 e he
    refine ⟨c, hc, ?_⟩
    rw [l']
    exact ⟨_, hce, map_smul p _ e⟩
  · rw [l'] at hv
    obtain ⟨e, he, rfl⟩ := hv
    obtain ⟨c, hc, hce⟩ := (hs s hx).2 e he
    refine ⟨c, hc, ?_⟩
    rw [l]
    exact ⟨_, hce, map_smul p _ e⟩

theorem rank_add {i : V₁ →ₗ[Ω] V} {p : V →ₗ[Ω] V₂} (hi : Function.Injective i)
    (hp : Function.Surjective p) (hr : LinearMap.range i = LinearMap.ker p)
    (w : Module.Basis (Fin N) Ω V) (w₁ : Module.Basis (Fin N₁) Ω V₁)
    (w₂ : Module.Basis (Fin N₂) Ω V₂) : N = N₁ + N₂ := by
  haveI : FiniteDimensional Ω V := w.finiteDimensional_of_finite
  have h := LinearMap.finrank_range_add_finrank_ker p
  rw [LinearMap.range_eq_top.2 hp, finrank_top, ← hr, LinearMap.finrank_range_of_inj hi] at h
  have e := Module.finrank_eq_card_basis w
  have e₁ := Module.finrank_eq_card_basis w₁
  have e₂ := Module.finrank_eq_card_basis w₂
  simp only [Fintype.card_fin] at e e₁ e₂
  omega

end Generic

theorem length_classList {K : Type} {q m : ℕ} (cls : Fin q → K → ℤ) {Q : MvPolynomial (Fin q) ℤ}
    (hQ : Q.IsHomogeneous m) {μ : Fin q →₀ ℕ} (hμ : μ ∈ Q.support) :
    (classList cls μ).length = m := by
  have h := hQ (mem_support_iff.1 hμ)
  rw [classList, Multiset.length_toList, Multiset.card_map, Finsupp.card_toMultiset, ← h]
  simp [Finsupp.weight_apply, Finsupp.sum]

section Stages

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {Ω : Type} [Field Ω]
  [Algebra O Ω] {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {N N₁ N₂ : ℕ} {V V₁ V₂ : Type} [AddCommGroup V] [Module Ω V]
  [AddCommGroup V₁] [Module Ω V₁] [AddCommGroup V₂] [Module Ω V₂]

def Setup (x : (Σ k, ι k) → Ω) (d : ℕ) (E E' : ChartBundle O (mseg x) N V) (i : V₁ →ₗ[Ω] V)
    (p : V →ₗ[Ω] V₂) (E₁ E₁' : ChartBundle O (mseg x) N₁ V₁)
    (E₂ E₂' : ChartBundle O (mseg x) N₂ V₂) : Prop :=
  GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d ∧
    SameGeneric O x E E' ∧ IsSubQuot O x E i p E₁ E₂ ∧ IsSubQuot O x E' i p E₁' E₂'

def CkAdd (x : (Σ k, ι k) → Ω) (d : ℕ) (E E' : ChartBundle O (mseg x) N V)
    (E₁ E₁' : ChartBundle O (mseg x) N₁ V₁) (E₂ E₂' : ChartBundle O (mseg x) N₂ V₂) : Prop :=
  ∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ),
    Q.IsHomogeneous (d + 1 - k) →
    ck O x d N E E' k L Q = ck O x d N₁ E₁ E₁' k L Q + ck O x d N₂ E₂ E₂' k L Q

def HasFlag {M : ℕ} {W : Type} [AddCommGroup W] [Module Ω W] (ϖ : O) (x : (Σ k, ι k) → Ω)
    (B B' : ChartBundle O (mseg x) M W) : Prop :=
  ∃ (w w' : Module.Basis (Fin M) Ω W) (b b' : Fin M → K → ℤ) (f g : Fin M → MRing ι O),
    IsFlagPair ϖ x B B' w w' b b' f g

theorem HasFlag.pull {M : ℕ} {W : Type} [AddCommGroup W] [Module Ω W] {ϖ : O}
    {x : (Σ k, ι k) → Ω} {B B' : ChartBundle O (mseg x) M W} (h : HasFlag ϖ x B B')
    {K' : Type} [Fintype K'] [DecidableEq K'] {ι' : K' → Type} [∀ k, Fintype (ι' k)]
    {z : (Σ k, ι' k) → Ω} {BB B'B : ChartBundle O (mseg (joinCoord x z)) M W}
    (hp : IsPull O x z B BB) (hp' : IsPull O x z B' B'B) :
    HasFlag ϖ (joinCoord x z) BB B'B := by
  obtain ⟨w, w', b, b', f, g, hf⟩ := h
  exact ⟨w, w', _, _, _, _,
    (_root_.GlobalTheory.CompanionTheory.Ar.Num.PullFlagPair.main O Ω K ι x ϖ M W B B' w w' b b' f g hf).1 K' ι' z BB B'B hp hp'⟩

theorem exists_flag {M : ℕ} {W : Type} [AddCommGroup W] [Module Ω W] {ϖ : O} (hϖ : Irreducible ϖ)
    {x : (Σ k, ι k) → Ω} {d : ℕ}
    (hM : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d)
    {B B' : ChartBundle O (mseg x) M W} (hs : SameGeneric O x B B') :
    ∃ (K' : Type) (_ : Fintype K') (_ : DecidableEq K') (ι' : K' → Type)
      (_ : ∀ k, Fintype (ι' k)) (z : (Σ k, ι' k) → Ω)
      (BB B'B : ChartBundle O (mseg (joinCoord x z)) M W),
      GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d ∧
      fnField O (joinCoord x z) = fnField O x ∧ IsPull O x z B BB ∧ IsPull O x z B' B'B ∧
      HasFlag ϖ (joinCoord x z) BB B'B := by
  obtain ⟨K', _, _, ι', _, z, EB, w, b, hMB, hbir, hEB⟩ :=
    _root_.GlobalTheory.CompanionTheory.Ar.CommonFlag.main O Ω K ι x d hM M 1 W ![B, B'] (by
      intro j
      fin_cases j
      · exact sameGeneric_self B
      · exact hs)
  have hM' : IsModelOver (pointIdeal O (joinCoord x z)) d :=
    ((GroundTheory.Heights₂.Heights.NumbersDVR.BundleExamples.isModelOver_iff O _ d).1 hMB).2
  have p0 : IsPull O x z B (EB 0) := (hEB 0).1
  have p1 : IsPull O x z B' (EB 1) := (hEB 1).1
  have tri : ∀ i j : Fin M, i < j → w.repr (w i) j = 0 := by
    intro i j hij
    simp [Module.Basis.repr_self, ne_of_lt hij]
  have s01 := (_root_.GlobalTheory.CompanionTheory.Ar.Num.PullPreserve.pull_preserve O Ω K ι x M W B B' K' ι' z (EB 0) (EB 1) p0 p1).2.1 hs
  obtain ⟨-, f, g, hf⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FlagPairOfFrames.main O Ω (K ⊕ K') (Sum.elim ι ι') (joinCoord x z) ϖ hϖ d hM' M W
    (EB 0) (EB 1) s01 w w (b 0) (b 1) (hEB 0).2 (hEB 1).2 tri
  exact ⟨K', _, _, ι', _, z, EB 0, EB 1, hMB, hbir, p0, p1, w, w, b 0, b 1, f, g, hf⟩

theorem exists_pull {M : ℕ} {W : Type} [AddCommGroup W] [Module Ω W] {x : (Σ k, ι k) → Ω}
    (B : ChartBundle O (mseg x) M W) {K' : Type} [Fintype K'] [DecidableEq K'] {ι' : K' → Type}
    [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω) :
    ∃ BB : ChartBundle O (mseg (joinCoord x z)) M W, IsPull O x z B BB :=
  (_root_.GlobalTheory.CompanionTheory.Ar.Num.PullExists.main O Ω K ι x M W B).1 K' ι' z

theorem descend {x : (Σ k, ι k) → Ω} {d : ℕ} {E E' : ChartBundle O (mseg x) N V}
    {i : V₁ →ₗ[Ω] V} {p : V →ₗ[Ω] V₂} {E₁ E₁' : ChartBundle O (mseg x) N₁ V₁}
    {E₂ E₂' : ChartBundle O (mseg x) N₂ V₂} (hS : Setup x d E E' i p E₁ E₁' E₂ E₂')
    {K' : Type} [Fintype K'] [DecidableEq K'] {ι' : K' → Type} [∀ k, Fintype (ι' k)]
    {z : (Σ k, ι' k) → Ω}
    (hz : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d)
    (hb : fnField O (joinCoord x z) = fnField O x)
    {EB E'B : ChartBundle O (mseg (joinCoord x z)) N V}
    {E₁B E₁'B : ChartBundle O (mseg (joinCoord x z)) N₁ V₁}
    {E₂B E₂'B : ChartBundle O (mseg (joinCoord x z)) N₂ V₂}
    (p0 : IsPull O x z E EB) (p0' : IsPull O x z E' E'B)
    (p1 : IsPull O x z E₁ E₁B) (p1' : IsPull O x z E₁' E₁'B)
    (p2 : IsPull O x z E₂ E₂B) (p2' : IsPull O x z E₂' E₂'B)
    (H : Setup (joinCoord x z) d EB E'B i p E₁B E₁'B E₂B E₂'B →
      CkAdd (joinCoord x z) d EB E'B E₁B E₁'B E₂B E₂'B) :
    CkAdd x d E E' E₁ E₁' E₂ E₂' := by
  obtain ⟨hM, hs, h, h'⟩ := hS
  have hS' : Setup (joinCoord x z) d EB E'B i p E₁B E₁'B E₂B E₂'B :=
    ⟨hz, (_root_.GlobalTheory.CompanionTheory.Ar.Num.PullPreserve.pull_preserve O Ω K ι x N V E E' K' ι' z EB E'B p0 p0').2.1 hs,
      _root_.GlobalTheory.CompanionTheory.Ar.Num.PullSubQuot.main O Ω K ι x N N₁ N₂ V V₁ V₂ E i p E₁ E₂ h K' ι' z EB E₁B E₂B p0 p1 p2,
      _root_.GlobalTheory.CompanionTheory.Ar.Num.PullSubQuot.main O Ω K ι x N N₁ N₂ V V₁ V₂ E' i p E₁' E₂' h' K' ι' z E'B E₁'B E₂'B p0' p1' p2'⟩
  intro k hk1 hk2 q L Q hQ
  have e := H hS' k hk1 hk2 q (fun j => pullDeg (K' := K') (L j)) Q hQ
  rw [(_root_.GlobalTheory.CompanionTheory.Ar.CkPullBirat.main O Ω K ι x d hM N V E E' hs K' ι' z hz hb EB E'B p0 p0').1 k hk1 hk2 q L Q hQ,
    (_root_.GlobalTheory.CompanionTheory.Ar.CkPullBirat.main O Ω K ι x d hM N₁ V₁ E₁ E₁' (sameGeneric_sub hs h h') K' ι' z hz hb E₁B E₁'B
      p1 p1').1 k hk1 hk2 q L Q hQ,
    (_root_.GlobalTheory.CompanionTheory.Ar.CkPullBirat.main O Ω K ι x d hM N₂ V₂ E₂ E₂' (sameGeneric_quot hs h h') K' ι' z hz hb E₂B E₂'B
      p2 p2').1 k hk1 hk2 q L Q hQ] at e
  exact e

theorem ckAdd_of_flags {ϖ : O} (hϖ : Irreducible ϖ) {x : (Σ k, ι k) → Ω} {d : ℕ}
    {E E' : ChartBundle O (mseg x) N V} {i : V₁ →ₗ[Ω] V} {p : V →ₗ[Ω] V₂}
    {E₁ E₁' : ChartBundle O (mseg x) N₁ V₁} {E₂ E₂' : ChartBundle O (mseg x) N₂ V₂}
    (hS : Setup x d E E' i p E₁ E₁' E₂ E₂') (ha : HasFlag ϖ x E E') (hb : HasFlag ϖ x E₁ E₁')
    (hc : HasFlag ϖ x E₂ E₂') : CkAdd x d E E' E₁ E₁' E₂ E₂' := by
  obtain ⟨hM, hs, h, h'⟩ := hS
  obtain ⟨hK, hM'⟩ := (GroundTheory.Heights₂.Heights.NumbersDVR.BundleExamples.isModelOver_iff O _ d).1 hM
  obtain ⟨w, w', b, b', f, g, hf⟩ := ha
  obtain ⟨w₁, w₁', b₁, b₁', f₁, g₁, hf₁⟩ := hb
  obtain ⟨w₂, w₂', b₂, b₂', f₂, g₂, hf₂⟩ := hc
  have hN : N = N₁ + N₂ := rank_add h.1 h.2.1 h.2.2.1 w w₁ w₂
  have hN₂ : N₂ = N - N₁ := by omega
  subst hN₂
  have s0 := (GroundTheory.Heights₂.Heights.NumbersDVR.BundleExamples.sameGeneric_iff hϖ x E E').1 hs
  have s1 := (GroundTheory.Heights₂.Heights.NumbersDVR.BundleExamples.sameGeneric_iff hϖ x E₁ E₁').1
    (sameGeneric_sub hs h h')
  have s2 := (GroundTheory.Heights₂.Heights.NumbersDVR.BundleExamples.sameGeneric_iff hϖ x E₂ E₂').1
    (sameGeneric_quot hs h h')
  intro k hk1 hk2 q L Q hQ
  have c0 := (_root_.GlobalTheory.CompanionTheory.ChernFlagPairRootPolynomial.main O ϖ hϖ Ω K ι x d hK hM' N V E E' s0 w w' b b' f g hf).1 k hk1 hk2
    (psumExpansion N k) (isPairExpansion_psum N k) q L Q hQ
  have c1 := (_root_.GlobalTheory.CompanionTheory.ChernFlagPairRootPolynomial.main O ϖ hϖ Ω K ι x d hK hM' N₁ V₁ E₁ E₁' s1 w₁ w₁' b₁ b₁' f₁ g₁ hf₁).1 k hk1
    hk2 (psumExpansion N₁ k) (isPairExpansion_psum N₁ k) q L Q hQ
  have c2 := (_root_.GlobalTheory.CompanionTheory.ChernFlagPairRootPolynomial.main O ϖ hϖ Ω K ι x d hK hM' (N - N₁) V₂ E₂ E₂' s2 w₂ w₂' b₂ b₂' f₂ g₂ hf₂).1
    k hk1 hk2 (psumExpansion (N - N₁) k) (isPairExpansion_psum (N - N₁) k) q L Q hQ
  rw [c0, c1, c2, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun μ hμ => ?_
  rw [← mul_add]
  congr 1
  exact _root_.GlobalTheory.CompanionTheory.Ar.Num.SubQuotFlags.main O ϖ hϖ Ω K ι x d hM' N N₁ V V₁ V₂ E E' E₁ E₁' E₂ E₂' i p h.1 h.2.1 h.2.2.1 s0
    (fun c hc => ⟨fun z => by rw [(h.2.2.2 c hc).1]; rfl, fun z => by rw [(h'.2.2.2 c hc).1]; rfl,
      fun q => by rw [(h.2.2.2 c hc).2]; rfl, fun q => by rw [(h'.2.2.2 c hc).2]; rfl⟩)
    w w' b b' f g hf w₁ w₁' b₁ b₁' f₁ g₁ hf₁ w₂ w₂' b₂ b₂' f₂ g₂ hf₂ k (psumExpansion N k)
    (psumExpansion N₁ k) (psumExpansion (N - N₁) k) (isPairExpansion_psum N k)
    (isPairExpansion_psum N₁ k) (isPairExpansion_psum (N - N₁) k) (classList L μ)
    (by rw [length_classList _ hQ hμ]; omega)

theorem ckAdd_of_two {ϖ : O} (hϖ : Irreducible ϖ) {x : (Σ k, ι k) → Ω} {d : ℕ}
    {E E' : ChartBundle O (mseg x) N V} {i : V₁ →ₗ[Ω] V} {p : V →ₗ[Ω] V₂}
    {E₁ E₁' : ChartBundle O (mseg x) N₁ V₁} {E₂ E₂' : ChartBundle O (mseg x) N₂ V₂}
    (hS : Setup x d E E' i p E₁ E₁' E₂ E₂') (ha : HasFlag ϖ x E E') (hb : HasFlag ϖ x E₁ E₁') :
    CkAdd x d E E' E₁ E₁' E₂ E₂' := by
  obtain ⟨K', _, _, ι', _, z, B, B', hz, hbir, q2, q2', hc⟩ :=
    exists_flag hϖ hS.1 (sameGeneric_quot hS.2.1 hS.2.2.1 hS.2.2.2)
  obtain ⟨EB, p0⟩ := exists_pull E z
  obtain ⟨E'B, p0'⟩ := exists_pull E' z
  obtain ⟨E₁B, p1⟩ := exists_pull E₁ z
  obtain ⟨E₁'B, p1'⟩ := exists_pull E₁' z
  exact descend hS hz hbir p0 p0' p1 p1' q2 q2' fun hS' =>
    ckAdd_of_flags hϖ hS' (ha.pull p0 p0') (hb.pull p1 p1') hc

theorem ckAdd_of_one {ϖ : O} (hϖ : Irreducible ϖ) {x : (Σ k, ι k) → Ω} {d : ℕ}
    {E E' : ChartBundle O (mseg x) N V} {i : V₁ →ₗ[Ω] V} {p : V →ₗ[Ω] V₂}
    {E₁ E₁' : ChartBundle O (mseg x) N₁ V₁} {E₂ E₂' : ChartBundle O (mseg x) N₂ V₂}
    (hS : Setup x d E E' i p E₁ E₁' E₂ E₂') (ha : HasFlag ϖ x E E') :
    CkAdd x d E E' E₁ E₁' E₂ E₂' := by
  obtain ⟨K', _, _, ι', _, z, B, B', hz, hbir, q1, q1', hc⟩ :=
    exists_flag hϖ hS.1 (sameGeneric_sub hS.2.1 hS.2.2.1 hS.2.2.2)
  obtain ⟨EB, p0⟩ := exists_pull E z
  obtain ⟨E'B, p0'⟩ := exists_pull E' z
  obtain ⟨E₂B, p2⟩ := exists_pull E₂ z
  obtain ⟨E₂'B, p2'⟩ := exists_pull E₂' z
  exact descend hS hz hbir p0 p0' q1 q1' p2 p2' fun hS' =>
    ckAdd_of_two hϖ hS' (ha.pull p0 p0') hc

theorem ckAdd {ϖ : O} (hϖ : Irreducible ϖ) {x : (Σ k, ι k) → Ω} {d : ℕ}
    {E E' : ChartBundle O (mseg x) N V} {i : V₁ →ₗ[Ω] V} {p : V →ₗ[Ω] V₂}
    {E₁ E₁' : ChartBundle O (mseg x) N₁ V₁} {E₂ E₂' : ChartBundle O (mseg x) N₂ V₂}
    (hS : Setup x d E E' i p E₁ E₁' E₂ E₂') : CkAdd x d E E' E₁ E₁' E₂ E₂' := by
  obtain ⟨K', _, _, ι', _, z, B, B', hz, hbir, q0, q0', hc⟩ := exists_flag hϖ hS.1 hS.2.1
  obtain ⟨E₁B, p1⟩ := exists_pull E₁ z
  obtain ⟨E₁'B, p1'⟩ := exists_pull E₁' z
  obtain ⟨E₂B, p2⟩ := exists_pull E₂ z
  obtain ⟨E₂'B, p2'⟩ := exists_pull E₂' z
  exact descend hS hz hbir q0 q0' p1 p1' p2 p2' fun hS' => ckAdd_of_one hϖ hS' hc

end Stages

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)], GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.Bb.Statement.{0,0,0} O Ω ι := by
  intro O _ _ _ Ω _ _ K _ ι _
  classical
  intro x d N N₁ N₂ V V₁ V₂ _ _ _ _ _ _ E E' i p E₁ E₁' E₂ E₂' hM hs h h' k hk1 hk2 q L Q hQ
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  exact ckAdd hϖ ⟨hM, hs, h, h'⟩ k hk1 hk2 q L Q hQ

end GlobalTheory.CompanionTheory.Ar.Num.SubQuotCk
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementB =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionNumbers =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionNumbers", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleProduct\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.SameGenericSymm\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementA\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.QuotIsoCk

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d N N₁ : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (V₁ : Type) [AddCommGroup V₁] [Module Ω V₁] (E E' : ChartBundle O (mseg x) N V) (F F' : ChartBundle O (mseg x) N₁ V₁), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → SameGeneric O x E E' → SameGeneric O x F F' → QuotIso O x E E' F F' → ∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O x d N E E' k L Q = ck O x d N₁ F F' k L Q := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d N N₁ V _ _ V₁ _ _ E E' F F' hM hE hF hQ k hk1 hk2 q L Q hQh
  obtain ⟨P, hP⟩ := hQ
  obtain ⟨S, hS⟩ := (_root_.GlobalTheory.CompanionTheory.Ar.BundleOps.main O Ω K ι x).1 N N₁ V V₁ E F
  have hSP : SameGeneric O x S P := by
    intro s hs
    obtain ⟨h1, h2, h3, h4⟩ := hP s hs
    refine ⟨?_, ?_⟩
    · rintro ⟨v, w⟩ hvw
      rw [hS s hs, AddSubgroup.mem_prod] at hvw
      obtain ⟨c, hc, hcv⟩ := (hE s hs).1 v hvw.1
      obtain ⟨c', hc', hcw⟩ := (hF s hs).1 w hvw.2
      refine ⟨c * c', mul_ne_zero hc hc', ?_⟩
      have a1 := P.stable s (algebraMap O Ω c') (Subalgebra.algebraMap_mem _ _) _ ((h1 _).2 hcv)
      have a2 := P.stable s (algebraMap O Ω c) (Subalgebra.algebraMap_mem _ _) _ ((h3 _).2 hcw)
      have a3 := (P.lat s).add_mem a1 a2
      convert a3 using 1
      ext
      · simp [smul_smul, mul_comm]
      · simp [smul_smul]
    · rintro ⟨v, w⟩ hvw
      refine ⟨1, one_ne_zero, ?_⟩
      rw [hS s hs, AddSubgroup.mem_prod]
      simp only [map_one, one_smul]
      exact ⟨(h2 v).1 ⟨w, hvw⟩, (h4 w).1 ⟨v, hvw⟩⟩
  have hrefE : SameGeneric O x E E := fun s _ =>
    ⟨fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩, fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩⟩
  have hrefF : SameGeneric O x F F := fun s _ =>
    ⟨fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩, fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩⟩
  have zE := (_root_.GlobalTheory.CompanionTheory.Ar.Num.Cocycle.main O Ω K ι x d N V E E E hM hrefE hrefE k hk1 hk2 q L Q hQh).2
  have zF := (_root_.GlobalTheory.CompanionTheory.Ar.Num.Cocycle.main O Ω K ι x d N₁ V₁ F F F hM hrefF hrefF k hk1 hk2 q L Q hQh).2
  have s1 : IsSubQuot O x S (LinearMap.inl Ω V V₁) (LinearMap.snd Ω V V₁) E F := by
    refine ⟨LinearMap.inl_injective, LinearMap.snd_surjective, LinearMap.range_inl Ω V V₁,
      fun s hs => ⟨?_, ?_⟩⟩
    · ext v
      rw [hS s hs]
      simp [AddSubgroup.mem_prod]
    · ext w
      rw [hS s hs, AddSubgroup.mem_map]
      constructor
      · intro hw
        exact ⟨(0, w), AddSubgroup.mem_prod.2 ⟨zero_mem _, hw⟩, rfl⟩
      · rintro ⟨⟨v, w'⟩, h, rfl⟩
        exact (AddSubgroup.mem_prod.1 h).2
  have s2 : IsSubQuot O x P (LinearMap.inl Ω V V₁) (LinearMap.snd Ω V V₁) E' F := by
    refine ⟨LinearMap.inl_injective, LinearMap.snd_surjective, LinearMap.range_inl Ω V V₁,
      fun s hs => ⟨?_, ?_⟩⟩
    · ext v
      exact ((hP s hs).1 v).symm
    · ext w
      rw [AddSubgroup.mem_map, ← (hP s hs).2.2.2 w]
      constructor
      · rintro ⟨v, h⟩
        exact ⟨(v, w), h, rfl⟩
      · rintro ⟨⟨v, w'⟩, h, rfl⟩
        exact ⟨v, h⟩
  have s3 : IsSubQuot O x S (LinearMap.inr Ω V V₁) (LinearMap.fst Ω V V₁) F E := by
    refine ⟨LinearMap.inr_injective, LinearMap.fst_surjective, LinearMap.range_inr Ω V V₁,
      fun s hs => ⟨?_, ?_⟩⟩
    · ext v
      rw [hS s hs]
      simp [AddSubgroup.mem_prod]
    · ext v
      rw [hS s hs, AddSubgroup.mem_map]
      constructor
      · intro hv
        exact ⟨(v, 0), AddSubgroup.mem_prod.2 ⟨hv, zero_mem _⟩, rfl⟩
      · rintro ⟨⟨v', w⟩, h, rfl⟩
        exact (AddSubgroup.mem_prod.1 h).1
  have s4 : IsSubQuot O x P (LinearMap.inr Ω V V₁) (LinearMap.fst Ω V V₁) F' E := by
    refine ⟨LinearMap.inr_injective, LinearMap.fst_surjective, LinearMap.range_inr Ω V V₁,
      fun s hs => ⟨?_, ?_⟩⟩
    · ext w
      exact ((hP s hs).2.2.1 w).symm
    · ext v
      rw [AddSubgroup.mem_map, ← (hP s hs).2.1 v]
      constructor
      · rintro ⟨w, h⟩
        exact ⟨(v, w), h, rfl⟩
      · rintro ⟨⟨v', w⟩, h, rfl⟩
        exact ⟨w, h⟩
  have e1 := _root_.GlobalTheory.CompanionTheory.Ar.Num.SubQuotCk.main O Ω K ι x d (N + N₁) N N₁ (V × V₁) V V₁ S P _ _ E E' F F hM hSP s1 s2
    k hk1 hk2 q L Q hQh
  have e2 := _root_.GlobalTheory.CompanionTheory.Ar.Num.SubQuotCk.main O Ω K ι x d (N + N₁) N₁ N (V × V₁) V₁ V S P _ _ F F' E E hM hSP s3 s4
    k hk1 hk2 q L Q hQh
  omega

end GlobalTheory.CompanionTheory.Ar.Num.QuotIsoCk
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionNumbers =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleQuotientEquivalence =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleQuotientEquivalence", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamiliesGlueToBundle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.QuotEquivIso

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (N N₁ : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (V₁ : Type) [AddCommGroup V₁] [Module Ω V₁] (E E' : ChartBundle O (mseg x) N V) (F F' : ChartBundle O (mseg x) N₁ V₁), QuotEquiv O x E.lat E'.lat F.lat F'.lat ↔ QuotIso O x E E' F F' := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x N N₁ V _ _ V₁ _ _ E E' F F'
  unfold GlobalTheory.CompanionTheory.Ar.Num.QuotEquiv GlobalTheory.CompanionTheory.Ar.Num.IsQuotHom
    GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.QuotIso
  constructor
  · rintro ⟨Γ, ⟨hlat, hΓ⟩, hΓ'⟩
    have hloc : ∀ s, GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.mseg x s ≠ 0 →
        GlobalTheory.CompanionTheory.Ar.Num.LocFree
          (ReciprocityTheory.ChartRestriction.G.Geo.chartRing O (GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.mseg x) s)
          (N + N₁) (Γ s) := by
      intro s hs
      obtain ⟨h1, h2, h3, _⟩ := hΓ s hs
      obtain ⟨_, h6⟩ := hΓ' s hs
      exact (GlobalTheory.CompanionTheory.Ar.Num.LocFreeSchanuel.main _ N N₁ (E.lat s) (F.lat s) (F'.lat s) (Γ s)
        (((GlobalTheory.CompanionTheory.Ar.Num.BundleOfFamily.main O Ω K ι x N V).2 E).2 s hs)
        (((GlobalTheory.CompanionTheory.Ar.Num.BundleOfFamily.main O Ω K ι x N₁ V₁).2 F).2 s hs)
        (((GlobalTheory.CompanionTheory.Ar.Num.BundleOfFamily.main O Ω K ι x N₁ V₁).2 F').2 s hs)
        (hlat.1 s hs) h1 h2 h3 h6).1
    obtain ⟨Pb, hPb⟩ := (GlobalTheory.CompanionTheory.Ar.Num.BundleOfFamily.main O Ω K ι x (N + N₁) (V × V₁)).1 Γ hlat hloc
    refine ⟨Pb, fun s hs => ?_⟩
    rw [hPb s hs]
    obtain ⟨h1, h2, h3, h4⟩ := hΓ s hs
    obtain ⟨h5, h6⟩ := hΓ' s hs
    exact ⟨fun v => ⟨h5 v, h4 v⟩, fun v => ⟨fun h => Exists.elim h fun w hw => (h1 v w hw).1, h2 v⟩, h3,
      fun w => ⟨fun h => Exists.elim h fun v hv => (h1 v w hv).2, h6 w⟩⟩
  · rintro ⟨Pb, hPb⟩
    refine ⟨Pb.lat, ⟨((GlobalTheory.CompanionTheory.Ar.Num.BundleOfFamily.main O Ω K ι x _ _).2 Pb).1, fun s hs => ?_⟩,
      fun s hs => ?_⟩
    · obtain ⟨h1, h2, h3, h4⟩ := hPb s hs
      exact ⟨fun v w hvw => ⟨(h2 v).1 ⟨w, hvw⟩, (h4 w).1 ⟨v, hvw⟩⟩, fun v hv => (h2 v).2 hv, h3,
        fun v hv => (h1 v).2 hv⟩
    · obtain ⟨h1, -, -, h4⟩ := hPb s hs
      exact ⟨fun v hv => (h1 v).1 hv, fun w hw => (h4 w).2 hw⟩

end GlobalTheory.CompanionTheory.Ar.Num.QuotEquivIso
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleQuotientEquivalence =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionSymmetry =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionSymmetry", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionNumbers\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleQuotientEquivalence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem ck_eq_of_quotEquiv : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d N N₁ : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (V₁ : Type) [AddCommGroup V₁] [Module Ω V₁] (E E' : ChartBundle O (mseg x) N V) (F F' : ChartBundle O (mseg x) N₁ V₁), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → SameGeneric O x E E' → SameGeneric O x F F' → QuotEquiv O x E.lat E'.lat F.lat F'.lat → ∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O x d N E E' k L Q = ck O x d N₁ F F' k L Q := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d N N₁ V _ _ V₁ _ _ E E' F F' hM hE hF hq k hk1 hk2 q L Q hQ
  exact _root_.GlobalTheory.CompanionTheory.Ar.Num.QuotIsoCk.main O Ω K ι x d N N₁ V V₁ E E' F F' hM hE hF
    ((_root_.GlobalTheory.CompanionTheory.Ar.Num.QuotEquivIso.main O Ω K ι x N N₁ V V₁ E E' F F').mp hq) k hk1 hk2 q L Q hQ

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionSymmetry =====
