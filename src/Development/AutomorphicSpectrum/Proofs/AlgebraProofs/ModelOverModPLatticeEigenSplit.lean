module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionSymmetry
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.SameGenericSymm
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementD
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericLinearEquiv
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModelFacts
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Inhabit
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChernClassOnFlagPair
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleModelDegree
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagComparison
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleProduct
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleChartGenericComparison
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PPairCocycle
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleBaseExtension
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeFiniteProjectiveBaseChange
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleChain
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagDifference
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFlagframeDual
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullLine
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullPreserve
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PScalarQuotient
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamiliesGlueToBundle
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementA
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterGoodD
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm
import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XBundleOfFamily
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.OfSteps

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleExtensionComparison, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleExtensionIntersection, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeLieBundleIntersection, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InjectiveModPLatticeCharacterBound, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualLatticeCoordinateGenerator, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XCkFlagSum, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleFrames, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeCharacter, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeCharacterStatement, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XRootnumDual, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualBundleIntersection, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticePermuted, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeEigenSplit

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleExtensionComparison =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleExtensionComparison", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.QuotExactMiddle

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (N₀ N N₂ : ℕ) (V₀ : Type) [AddCommGroup V₀] [Module Ω V₀] (V : Type) [AddCommGroup V] [Module Ω V] (V₂ : Type) [AddCommGroup V₂] [Module Ω V₂] (A A' : (∀ k, ι k) → AddSubgroup V₀) (E E' : ChartBundle O (mseg x) N V) (C C' : ChartBundle O (mseg x) N₂ V₂), QuotExact O x A A' E.lat E'.lat C.lat C'.lat → ∃ E'' : ChartBundle O (mseg x) N V, LatLE O x E' E'' ∧ LatLE O x E'' E ∧ QuotEquiv O x A A' E''.lat E'.lat ∧ QuotEquiv O x E.lat E''.lat C.lat C'.lat := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x N₀ N N₂ V₀ _ _ V _ _ V₂ _ _ A A' E E' C C' hQ
  obtain ⟨Γ, Δ, hΓ, hΔ, hX⟩ := hQ
  have bundleOfFamily : ∀ (N : ℕ) (W : Type) [AddCommGroup W] [Module Ω W],
      (∀ Γ : (∀ k, ι k) → AddSubgroup W, IsLatFamily O x Γ →
        (∀ s, mseg x s ≠ 0 → LocFree (chartRing O (mseg x) s) N (Γ s)) →
        ∃ E : ChartBundle O (mseg x) N W, ∀ s, mseg x s ≠ 0 → E.lat s = Γ s) ∧
      ∀ E : ChartBundle O (mseg x) N W, IsLatFamily O x E.lat ∧
        ∀ s, mseg x s ≠ 0 → LocFree (chartRing O (mseg x) s) N (E.lat s) := by
    classical
    intro N W _ _
    refine ⟨fun Γ hfam hloc => ?_, fun E => ⟨⟨fun s _ => E.stable s, fun s t hs ht => E.overlap s t hs ht⟩, fun s hs => ⟨E.stable s, E.frame s hs⟩⟩⟩
    refine ⟨{ lat := fun s => if mseg x s = 0 then ⊥ else Γ s
              stable := ?_
              frame := ?_
              overlap := ?_ }, ?_⟩
    · intro s a ha e he
      by_cases h : mseg x s = 0
      · simp only [h, if_true, AddSubgroup.mem_bot] at he ⊢
        rw [he, smul_zero]
      · simp only [h, if_false] at he ⊢
        exact hfam.1 s h a ha e he
    · intro s hs
      simp only [hs, if_false]
      exact (hloc s hs).2
    · intro s t hs ht e he
      simp only [hs, ht, if_false] at he ⊢
      exact hfam.2 s t hs ht e he
    · intro s hs
      simp only [hs, if_false]
  obtain ⟨F, hF⟩ : ∃ F : (∀ k, ι k) → AddSubgroup V,
      F = fun s => (Δ s).comap (AddMonoidHom.inl V V₂) := ⟨_, rfl⟩
  have memF : ∀ s b, b ∈ F s ↔ (b, (0 : V₂)) ∈ Δ s := by
    intro s b
    subst hF
    exact Iff.rfl
  have hFlat : IsLatFamily O x F := by
    refine ⟨fun s hs a ha v hv => ?_, fun s t hs ht v hv => ?_⟩
    · have h := hΔ.1.1 s hs a ha (v, 0) ((memF s v).1 hv)
      rw [memF]
      simpa using h
    · obtain ⟨m, hm⟩ := hΔ.1.2 s t hs ht (v, 0) ((memF s v).1 hv)
      refine ⟨m, ?_⟩
      rw [memF]
      simpa using hm
  have hFfree : ∀ s, mseg x s ≠ 0 → LocFree (chartRing O (mseg x) s) N (F s) := by
    intro s hs
    have hE := ((bundleOfFamily N V).2 E).2 s hs
    have hC := ((bundleOfFamily N₂ V₂).2 C).2 s hs
    have hC' := ((bundleOfFamily N₂ V₂).2 C').2 s hs
    have h := (GlobalTheory.CompanionTheory.Ar.Num.LocFreeSchanuel.main (chartRing O (mseg x) s) N N₂ (E.lat s) (C.lat s)
      (C'.lat s) (Δ s) hE hC hC' (fun a ha v hv => hΔ.1.1 s hs a ha v hv)
      (fun v w h => (hΔ.2 s hs).1 v w h) (fun v hv => (hΔ.2 s hs).2.1 v hv)
      (fun w => (hΔ.2 s hs).2.2.1 w) (fun w hw => (hX s hs).2.1 w hw)).2
    rw [hF]
    exact h
  obtain ⟨E'', hE''⟩ := (bundleOfFamily N V).1 F hFlat hFfree
  have memE'' : ∀ s, mseg x s ≠ 0 → ∀ b, b ∈ E''.lat s ↔ (b, (0 : V₂)) ∈ Δ s := by
    intro s hs b
    rw [hE'' s hs, memF]
  refine ⟨E'', fun s hs b hb => ?_, fun s hs b hb => ?_,
    ⟨Γ, ⟨hΓ.1, fun s hs => ⟨fun v w h => ⟨((hΓ.2 s hs).1 v w h).1,
        (memE'' s hs w).2 (((hX s hs).2.2 w).2 ⟨v, h⟩)⟩,
      (hΓ.2 s hs).2.1, (hΓ.2 s hs).2.2.1, (hΓ.2 s hs).2.2.2⟩⟩,
      fun s hs => ⟨(hX s hs).1, fun w hw => ((hX s hs).2.2 w).1 ((memE'' s hs w).1 hw)⟩⟩,
    ⟨Δ, ⟨hΔ.1, fun s hs => ⟨(hΔ.2 s hs).1, (hΔ.2 s hs).2.1, (hΔ.2 s hs).2.2.1,
        fun v hv => (memE'' s hs v).1 hv⟩⟩,
      fun s hs => ⟨fun v hv => (memE'' s hs v).2 hv, (hX s hs).2.1⟩⟩⟩
  · exact (memE'' s hs b).2 ((hΔ.2 s hs).2.2.2 b hb)
  · exact ((hΔ.2 s hs).1 b 0 ((memE'' s hs b).1 hb)).1

end GlobalTheory.CompanionTheory.Ar.Num.QuotExactMiddle
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleExtensionComparison =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleExtensionIntersection =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleExtensionIntersection", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleExtensionComparison\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionSymmetry\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.SameGenericSymm\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.QuotAdd

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d N₀ N N₂ : ℕ) (V₀ : Type) [AddCommGroup V₀] [Module Ω V₀] (V : Type) [AddCommGroup V] [Module Ω V] (V₂ : Type) [AddCommGroup V₂] [Module Ω V₂] (A A' : ChartBundle O (mseg x) N₀ V₀) (E E' : ChartBundle O (mseg x) N V) (C C' : ChartBundle O (mseg x) N₂ V₂), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → SameGeneric O x A A' → SameGeneric O x E E' → SameGeneric O x C C' → QuotExact O x A.lat A'.lat E.lat E'.lat C.lat C'.lat → ∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O x d N E E' k L Q = ck O x d N₀ A A' k L Q + ck O x d N₂ C C' k L Q := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d N₀ N N₂ V₀ _ _ V _ _ V₂ _ _ A A' E E' C C' hM hA hE hC hX k hk1 hk2 q L Q hQ
  obtain ⟨E'', h1, h2, h3, h4⟩ :=
    _root_.GlobalTheory.CompanionTheory.Ar.Num.QuotExactMiddle.main O Ω K ι x N₀ N N₂ V₀ V V₂ A.lat A'.lat E E' C C' hX
  have hEE'' : SameGeneric O x E E'' := fun s hs =>
    ⟨fun v hv => by
        obtain ⟨c, hc, hcv⟩ := (hE s hs).1 v hv
        exact ⟨c, hc, h1 s hs hcv⟩,
      fun v hv => ⟨1, one_ne_zero, by simpa using h2 s hs hv⟩⟩
  have hE''E' : SameGeneric O x E'' E' := fun s hs =>
    ⟨fun v hv => (hE s hs).1 v (h2 s hs hv),
      fun v hv => ⟨1, one_ne_zero, by simpa using h1 s hs hv⟩⟩
  have hcoc := (_root_.GlobalTheory.CompanionTheory.Ar.Num.Cocycle.main O Ω K ι x d N V E E'' E' hM hEE'' hE''E' k hk1 hk2 q L Q hQ).1
  have hAe := _root_.GlobalTheory.CompanionTheory.Ar.Num.ck_eq_of_quotEquiv O Ω K ι x d N₀ N V₀ V A A' E'' E' hM hA hE''E' h3 k hk1 hk2 q L Q hQ
  have hCe := _root_.GlobalTheory.CompanionTheory.Ar.Num.ck_eq_of_quotEquiv O Ω K ι x d N N₂ V V₂ E E'' C C' hM hEE'' hC h4 k hk1 hk2 q L Q hQ
  rw [hcoc, hAe, hCe, add_comm]

end GlobalTheory.CompanionTheory.Ar.Num.QuotAdd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleExtensionIntersection =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeLieBundleIntersection =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeLieBundleIntersection", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleExtensionIntersection\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.SameGenericSymm\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementD\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericLinearEquiv\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementA\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num.HodgeTate

theorem algebraMap_ne_zero_of_model {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    {Ω : Type} [Field Ω] [Algebra O Ω] {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {x : (Σ k, ι k) → Ω} {d : ℕ}
    (hm : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d)
    {w : O} (hw : w ≠ 0) : algebraMap O Ω w ≠ 0 := by
  intro h0
  apply hw
  have hmem : w ∈ (mcIdeal O x).comap (C : O →+* MvPolynomial (Σ k, ι k) O) := by
    rw [Ideal.mem_comap]
    show _ = _
    have : (C w : MvPolynomial (Σ k, ι k) O) = algebraMap O _ w := rfl
    rw [this, AlgHom.commutes]
    simp [h0]
  rw [hm.2.2.1] at hmem
  simpa using hmem

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d r s n : ℕ) (VL : Type) [AddCommGroup VL] [Module Ω VL] (VO : Type) [AddCommGroup VO] [Module Ω VO] (VH : Type) [AddCommGroup VH] [Module Ω VH] (Lie W La : ChartBundle O (mseg x) r VL) (om omHT : ChartBundle O (mseg x) s VO) (T H : ChartBundle O (mseg x) n VH) (w : O), w ≠ 0 → GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → LatLE O x Lie W → LatLE O x W La → IsScaled x (algebraMap O Ω w) La.lat Lie.lat → SameGeneric O x om omHT → SameGeneric O x H T → QuotExact O x La.lat W.lat H.lat T.lat om.lat omHT.lat → ∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O x d r Lie W k L Q + ck O x d s om omHT k L Q = ck O x d n H T k L Q - (k : ℤ) * rootNum O x d r Lie (psum (Fin r) ℤ (k - 1)) L Q w := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d r s n VL _ _ VO _ _ VH _ _ Lie W La om omHT T H w hw hm hLW hWL hsc
    hom hHT hex k hk1 hk2 q L Q hQ
  have hw' : algebraMap O Ω w ≠ 0 := algebraMap_ne_zero_of_model hm hw
  have hscale : ∀ s, mseg x s ≠ 0 → ∀ v ∈ La.lat s, algebraMap O Ω w • v ∈ Lie.lat s :=
    fun s hs v hv => (hsc s hs _).2 ⟨v, hv, rfl⟩
  have sWLa : SameGeneric O x W La := fun s hs =>
    ⟨fun v hv => ⟨1, one_ne_zero, by simpa using hWL s hs hv⟩,
      fun v hv => ⟨w, hw, hLW s hs (hscale s hs v hv)⟩⟩
  have sLaW : SameGeneric O x La W := fun s hs => ⟨(sWLa s hs).2, (sWLa s hs).1⟩
  have sLieW : SameGeneric O x Lie W := fun s hs =>
    ⟨fun v hv => ⟨1, one_ne_zero, by simpa using hLW s hs hv⟩,
      fun v hv => ⟨w, hw, hscale s hs v (hWL s hs hv)⟩⟩
  have sWLie : SameGeneric O x W Lie := fun s hs => ⟨(sLieW s hs).2, (sLieW s hs).1⟩
  have sLaLa : SameGeneric O x La La := fun s hs =>
    ⟨fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩, fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩⟩
  have h1 := _root_.GlobalTheory.CompanionTheory.Ar.Num.QuotAdd.main O Ω K ι x d r n s VL VH VO La W H T om omHT hm sLaW hHT hom hex k hk1 hk2
    q L Q hQ
  have h2 := (_root_.GlobalTheory.CompanionTheory.Ar.Num.Cocycle.main O Ω K ι x d r VL La W Lie hm sLaW sWLie k hk1 hk2 q L Q hQ).1
  have h3 := (_root_.GlobalTheory.CompanionTheory.Ar.Num.Cocycle.main O Ω K ι x d r VL Lie W Lie hm sLieW sWLie k hk1 hk2 q L Q hQ).2
  have h4 := (_root_.GlobalTheory.CompanionTheory.Ar.Num.Constants.main O Ω K ι x d r VL La Lie w hw hm hsc k hk1 hk2 q L Q hQ).1
  have hcarry : ∀ s, mseg x s ≠ 0 → ∀ v,
      ((LinearEquiv.smulOfNeZero Ω VL _ hw') v ∈ Lie.lat s ↔ v ∈ La.lat s) ∧
        ((LinearEquiv.smulOfNeZero Ω VL _ hw') v ∈ Lie.lat s ↔ v ∈ La.lat s) := by
    intro s hs v
    have : (LinearEquiv.smulOfNeZero Ω VL _ hw') v ∈ Lie.lat s ↔ v ∈ La.lat s := by
      rw [LinearEquiv.smulOfNeZero_apply, hsc s hs]
      constructor
      · rintro ⟨e, he, hve⟩
        rwa [smul_right_injective VL hw' hve]
      · exact fun hv => ⟨v, hv, rfl⟩
    exact ⟨this, this⟩
  have hQ' : Q.IsHomogeneous (d - (k - 1)) := by
    have : d - (k - 1) = d + 1 - k := by omega
    rwa [this]
  have h5 := (_root_.GlobalTheory.CompanionTheory.Ar.Num.CkTransport.main O Ω K ι x d hm r VL VL (LinearEquiv.smulOfNeZero Ω VL _ hw') La La Lie Lie
    sLaLa hcarry).2 (k - 1) (psum (Fin r) ℤ (k - 1)) (psum_isSymmetric _ _ _)
    (isHomogeneous_psum r (k - 1)) (by omega) q L Q hQ' w hw
  rw [h5]
  linarith

end GlobalTheory.CompanionTheory.Ar.Num.HodgeTate
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeLieBundleIntersection =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InjectiveModPLatticeCharacterBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InjectiveModPLatticeCharacterBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModelFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.Num.RelSeq

section Lattices

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω]

theorem mem_stdLat (R : Subalgebra o Ω) {κ : Type} (v : κ → Ω) :
    v ∈ stdLat R κ ↔ ∀ i, v i ∈ R := by
  simp [stdLat, AddSubgroup.mem_pi]

theorem mem_dotDual (R : Subalgebra o Ω) {m : ℕ} (L : AddSubgroup (Fin m → Ω)) (v : Fin m → Ω) :
    v ∈ dotDual R L ↔ ∀ l ∈ L, l ⬝ᵥ v ∈ R := by
  simp [dotDual, AddSubgroup.mem_iInf]

variable {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ}

theorem af_le_std (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (hB : D.Base R p w)
    (χ : F → Ω) (h0 : χ 0 = 0) (h1 : χ 1 = 1) : D.af R p χ ≤ stdLat R (Fin n) := by
  have hl1 : D.l1 R p ≤ stdLat R _ := by
    refine sup_le hB.M_le ?_
    rintro _ ⟨f, hf, rfl⟩
    refine (mem_stdLat R _).2 fun i => ?_
    have := (mem_stdLat R f).1 hf i
    simpa using R.mul_mem (natCast_mem R p) this
  intro l hl
  refine (mem_stdLat R l).2 fun i => ?_
  have h := (mem_stdLat R _).1 (hl1 hl) (Pi.single i 1)
  have e : (linMap n χ) l (Pi.single i 1) = l i := by
    simp only [linMap, Fintype.linearCombination_apply, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
    rw [Finset.sum_eq_single i]
    · simp [h1]
    · intro j _ hj
      simp [Pi.single_eq_of_ne hj, h0]
    · simp
  have e' : (linMap n χ).toAddMonoidHom l (Pi.single i 1) = l i := e
  rwa [e'] at h

theorem std_le_hh (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (hB : D.Base R p w)
    (χ : F → Ω) (h0 : χ 0 = 0) (h1 : χ 1 = 1) : stdLat R (Fin n) ≤ D.hh R p χ := by
  intro v hv
  refine (mem_dotDual R _ v).2 fun l hl => ?_
  have hl' := (mem_stdLat R l).1 (af_le_std D R p w hB χ h0 h1 hl)
  have hv' := (mem_stdLat R v).1 hv
  exact sum_mem fun i _ => R.mul_mem (hl' i) (hv' i)

theorem smul_mem_std_of_mem_hh (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω)
    (χ : F → Ω) (h : mulLat w (stdLat R _) ≤ D.af R p χ) {b : Fin n → Ω} (hb : b ∈ D.hh R p χ) :
    w • b ∈ stdLat R (Fin n) := by
  refine (mem_stdLat R _).2 fun i => ?_
  have hi : (Pi.single i 1 : Fin n → Ω) ∈ stdLat R (Fin n) := by
    refine (mem_stdLat R _).2 fun j => ?_
    by_cases hj : j = i
    · subst hj; simp [one_mem]
    · simp [Pi.single_eq_of_ne hj, zero_mem]
  have hm : w • (Pi.single i 1 : Fin n → Ω) ∈ D.af R p χ := h ⟨_, hi, rfl⟩
  have := (mem_dotDual R _ b).1 hb _ hm
  simpa [smul_dotProduct, single_one_dotProduct] using this

theorem mem_kerH (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (τ : Sg) (χ : F → Ω)
    (v : Fin (r τ) → Ω) :
    v ∈ D.kerH R p τ χ ↔ ∃ b, (v, b) ∈ D.Gam τ ∧ b ∈ D.hh R p χ := by
  simp [LieLatticeData.kerH, AddSubgroup.mem_map, AddSubgroup.mem_inf, AddSubgroup.mem_prod]

theorem mem_imH (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (τ : Sg) (χ : F → Ω)
    (c : Fin (s τ) → Ω) :
    c ∈ D.imH R p τ χ ↔ ∃ b, (b, c) ∈ D.Del τ ∧ b ∈ D.hh R p χ := by
  simp [LieLatticeData.imH, AddSubgroup.mem_map, AddSubgroup.mem_inf, AddSubgroup.mem_prod]

def gamH (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (τ : Sg) (χ : F → Ω) :
    AddSubgroup ((Fin (r τ) → Ω) × (Fin n → Ω)) :=
  D.Gam τ ⊓ (⊤ : AddSubgroup (Fin (r τ) → Ω)).prod (D.hh R p χ)

def delH (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (τ : Sg) (χ : F → Ω) :
    AddSubgroup ((Fin n → Ω) × (Fin (s τ) → Ω)) :=
  D.Del τ ⊓ (D.hh R p χ).prod (⊤ : AddSubgroup (Fin (s τ) → Ω))

theorem mem_gamH (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (τ : Sg) (χ : F → Ω)
    (a : Fin (r τ) → Ω) (b : Fin n → Ω) :
    (a, b) ∈ gamH D R p τ χ ↔ (a, b) ∈ D.Gam τ ∧ b ∈ D.hh R p χ := by
  simp [gamH, AddSubgroup.mem_inf, AddSubgroup.mem_prod]

theorem mem_delH (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (τ : Sg) (χ : F → Ω)
    (b : Fin n → Ω) (c : Fin (s τ) → Ω) :
    (b, c) ∈ delH D R p τ χ ↔ (b, c) ∈ D.Del τ ∧ b ∈ D.hh R p χ := by
  simp [delH, AddSubgroup.mem_inf, AddSubgroup.mem_prod]

end Lattices

section Families

variable (o : Type) [CommRing o] {Ω : Type} [Field Ω] [Algebra o Ω]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
variable {V V₁ : Type} [AddCommGroup V] [Module Ω V] [AddCommGroup V₁] [Module Ω V₁]

theorem isLatFamily_inf_prod_right (x : (Σ k, ι k) → Ω) {G : (∀ k, ι k) → AddSubgroup (V × V₁)}
    {H : (∀ k, ι k) → AddSubgroup V₁} (hG : IsLatFamily o x G) (hH : IsLatFamily o x H) :
    IsLatFamily o x fun c => G c ⊓ (⊤ : AddSubgroup V).prod (H c) := by
  refine ⟨fun c hc a ha v hv => ?_, fun c t hc ht v hv => ?_⟩
  · have h2 := (AddSubgroup.mem_prod.1 hv.2).2
    exact ⟨hG.1 c hc a ha v hv.1, AddSubgroup.mem_prod.2 ⟨trivial, hH.1 c hc a ha _ h2⟩⟩
  · have h2 := (AddSubgroup.mem_prod.1 hv.2).2
    obtain ⟨m₁, h₁⟩ := hG.2 c t hc ht v hv.1
    obtain ⟨m₂, h₂⟩ := hH.2 c t hc ht _ h2
    have hq := ReciprocityTheory.ChartRestriction.G.Geo.div_mem_chartRing (o := o) (mseg x) t c
    refine ⟨m₂ + m₁, ?_, AddSubgroup.mem_prod.2 ⟨trivial, ?_⟩⟩
    · have := hG.1 t ht _ (pow_mem hq m₂) _ h₁
      rwa [smul_smul, ← pow_add] at this
    · have := hH.1 t ht _ (pow_mem hq m₁) _ h₂
      rw [smul_smul, ← pow_add, add_comm] at this
      simpa using this

theorem isLatFamily_inf_prod_left (x : (Σ k, ι k) → Ω) {G : (∀ k, ι k) → AddSubgroup (V × V₁)}
    {H : (∀ k, ι k) → AddSubgroup V} (hG : IsLatFamily o x G) (hH : IsLatFamily o x H) :
    IsLatFamily o x fun c => G c ⊓ (H c).prod (⊤ : AddSubgroup V₁) := by
  refine ⟨fun c hc a ha v hv => ?_, fun c t hc ht v hv => ?_⟩
  · have h2 := (AddSubgroup.mem_prod.1 hv.2).1
    exact ⟨hG.1 c hc a ha v hv.1, AddSubgroup.mem_prod.2 ⟨hH.1 c hc a ha _ h2, trivial⟩⟩
  · have h2 := (AddSubgroup.mem_prod.1 hv.2).1
    obtain ⟨m₁, h₁⟩ := hG.2 c t hc ht v hv.1
    obtain ⟨m₂, h₂⟩ := hH.2 c t hc ht _ h2
    have hq := ReciprocityTheory.ChartRestriction.G.Geo.div_mem_chartRing (o := o) (mseg x) t c
    refine ⟨m₂ + m₁, ?_, AddSubgroup.mem_prod.2 ⟨?_, trivial⟩⟩
    · have := hG.1 t ht _ (pow_mem hq m₂) _ h₁
      rwa [smul_smul, ← pow_add] at this
    · have := hH.1 t ht _ (pow_mem hq m₁) _ h₂
      rw [smul_smul, ← pow_add, add_comm] at this
      simpa using this

end Families

theorem relSeq : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω), Function.Injective (algebraMap O Ω) → ∀ {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ} (p : ℕ), p.Prime → ∀ (w : O) (χ : Sg → F → O) (φ : Equiv.Perm Sg) (D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s), IsLatticeFamily O x p w χ φ D → (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg x c ≠ 0 → (D c).Facts (chartRing O (mseg x) c) p (algebraMap O Ω w) (fun τ a => algebraMap O Ω (χ τ a)) φ) → ∀ τ, QuotExact O x (fun c => divLat (algebraMap O Ω w) ((D c).lie τ)) (fun c => (D c).W τ) (fun c => (D c).hh (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a))) (fun c => stdLat (chartRing O (mseg x) c) (Fin n)) (fun c => (D c).om τ) (fun c => (D c).omHT τ) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x hinj F _ _ _ n Sg _ r s p hp w χ φ D hD hG hF τ
  have hhfam := (((_root_.GlobalTheory.CompanionTheory.Ar.Num.FamConstr.main O Ω K ι x hinj p hp w χ φ D hD).2 τ).2.2.2.2 hG).1
  obtain ⟨-, -, -, -, hGam, hDel, -⟩ := hD.fam τ
  have h0 : χ τ 0 = 0 := (hD.char.2.2.2.2 τ).1
  have h1 : χ τ 1 = 1 := (hD.char.2.2.2.2 τ).2
  have h0' : algebraMap O Ω (χ τ 0) = 0 := by rw [h0, map_zero]
  have h1' : algebraMap O Ω (χ τ 1) = 1 := by rw [h1, map_one]
  have hstd : ∀ c, mseg x c ≠ 0 → stdLat (chartRing O (mseg x) c) (Fin n) ≤
      (D c).hh (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a)) :=
    fun c hc => std_le_hh (D c) _ p _ (hD.base c hc) _ h0' h1'
  refine ⟨fun c => gamH (D c) (chartRing O (mseg x) c) p τ (fun a => algebraMap O Ω (χ τ a)),
    fun c => delH (D c) (chartRing O (mseg x) c) p τ (fun a => algebraMap O Ω (χ τ a)),
    ⟨isLatFamily_inf_prod_right O x hGam hhfam, fun c hc => ?_⟩,
    ⟨isLatFamily_inf_prod_left O x hDel hhfam, fun c hc => ?_⟩, fun c hc => ?_⟩
  · have hB := hD.base c hc
    have hk := (hF c hc).ker τ
    refine ⟨fun v b hvb => ?_, fun v hv => ?_, fun b => ?_, fun v hv => ?_⟩
    · have h := (mem_gamH _ _ _ _ _ _ _).1 hvb
      refine ⟨?_, h.2⟩
      beta_reduce
      rw [← hk]
      exact (mem_kerH _ _ _ _ _ _).2 ⟨b, h⟩
    · beta_reduce at hv
      rw [← hk] at hv
      obtain ⟨b, h⟩ := (mem_kerH _ _ _ _ _ _).1 hv
      exact ⟨b, (mem_gamH _ _ _ _ _ _ _).2 h⟩
    · rw [mem_gamH]
      exact ⟨fun h => ((hB.gam τ).2.1 b).1 h.1, fun h => ⟨((hB.gam τ).2.1 b).2 h, hstd c hc h⟩⟩
    · exact (mem_gamH _ _ _ _ _ _ _).2 ⟨((hB.gam τ).2.2 v).2 hv, zero_mem _⟩
  · have hB := hD.base c hc
    have hi := (hF c hc).im τ
    refine ⟨fun b e hbe => ?_, fun b hb => ?_, fun e => ?_, fun b hb => ?_⟩
    · have h := (mem_delH _ _ _ _ _ _ _).1 hbe
      refine ⟨h.2, ?_⟩
      beta_reduce
      rw [← hi]
      exact (mem_imH _ _ _ _ _ _).2 ⟨b, h⟩
    · obtain ⟨e, he⟩ := ((hB.del τ).1 b).2
        (smul_mem_std_of_mem_hh (D c) _ p _ _ ((hF c hc).le_af τ) hb)
      exact ⟨e, (mem_delH _ _ _ _ _ _ _).2 ⟨he, hb⟩⟩
    · rw [mem_delH]
      exact ⟨fun h => ((hB.del τ).2.2.1 e).1 h.1, fun h => ⟨((hB.del τ).2.2.1 e).2 h, zero_mem _⟩⟩
    · refine (mem_delH _ _ _ _ _ _ _).2 ⟨((hB.del τ).2.2.2 b).2 ⟨0, ((hB.gam τ).2.1 b).2 hb⟩, hstd c hc hb⟩
  · have hB := hD.base c hc
    have hi := (hF c hc).im τ
    refine ⟨fun v hv => ?_, fun e he => ?_, fun b => ?_⟩
    · exact ((hB.gam τ).2.2 v).1 ((mem_gamH _ _ _ _ _ _ _).1 hv).1
    · beta_reduce at he
      rw [← hi] at he
      obtain ⟨b, h⟩ := (mem_imH _ _ _ _ _ _).1 he
      exact ⟨b, (mem_delH _ _ _ _ _ _ _).2 h⟩
    · rw [mem_delH]
      constructor
      · rintro ⟨h, hb⟩
        obtain ⟨a, ha⟩ := ((hB.del τ).2.2.2 b).1 h
        exact ⟨a, (mem_gamH _ _ _ _ _ _ _).2 ⟨ha, hb⟩⟩
      · rintro ⟨a, ha⟩
        have h := (mem_gamH _ _ _ _ _ _ _).1 ha
        exact ⟨((hB.del τ).2.2.2 b).2 ⟨a, h.1⟩, h.2⟩

end GlobalTheory.CompanionTheory.Ar.Num.RelSeq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InjectiveModPLatticeCharacterBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualLatticeCoordinateGenerator =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualLatticeCoordinateGenerator", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XDotdualBc\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.Num.HhGraded

open GlobalTheory.CompanionTheory.Ar.Num

theorem mem_annSub_iff {Ω : Type} [Field Ω] {n k : ℕ} (l : Fin n → Ω) :
    l ∈ annSub Ω n k ↔ ∀ j : Fin n, (j : ℕ) < k → l j = 0 := by
  simp [annSub, Submodule.mem_pi]

theorem single_mem_annSub {Ω : Type} [Field Ω] {n k : ℕ} (j : Fin n) (hj : k ≤ (j : ℕ)) :
    (Pi.single j 1 : Fin n → Ω) ∈ annSub Ω n k := by
  rw [mem_annSub_iff]
  intro m hm
  have : m ≠ j := fun h => by subst h; omega
  simp [this]

theorem map_eq_sum {Ω : Type} [Field Ω] {n : ℕ} (ρ : (Fin n → Ω) →ₗ[Ω] (Fin n → Ω)) (l : Fin n → Ω) :
    ρ l = ∑ j, l j • ρ (Pi.single j 1) := by
  have h : l = ∑ j, l j • (Pi.single j 1 : Fin n → Ω) := by
    ext k
    simp [Finset.sum_apply, Pi.single_apply]

  conv_lhs => rw [h, map_sum]
  simp only [map_smul]

theorem main : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω) (n : ℕ)
    (L : AddSubgroup (Fin n → Ω)), LocFree R n L → (∀ i, Summand L (annSub Ω n i)) →
    ∀ (i : Fin n) (u : Ω), u ≠ 0 →
    (∀ c, c ∈ (L ⊓ (annSub Ω n i).toAddSubgroup).map (Pi.evalAddMonoidHom (fun _ => Ω) i) ↔
      ∃ a ∈ R, c = a * u) →
    ∀ t : Ω, (∃ v ∈ dotDual R L, (∀ j, i < j → v j = 0) ∧ v i = t) ↔ ∃ a ∈ R, t = a * u⁻¹ := by
  intro o Ω _ _ _ R n L _ hS i u hu hc t
  constructor
  · rintro ⟨v, hv, hz, rfl⟩
    obtain ⟨l, hl, hlu⟩ := (hc u).2 ⟨1, R.one_mem, (one_mul u).symm⟩
    have hlL : l ∈ L := (AddSubgroup.mem_inf.1 hl).1
    have hlA : l ∈ annSub Ω n i := (AddSubgroup.mem_inf.1 hl).2
    have hlu' : l i = u := hlu
    have h2 : l ⬝ᵥ v = u * v i := by
      rw [dotProduct, Finset.sum_eq_single i, hlu']
      · intro j _ hj
        rcases lt_or_gt_of_ne hj with h | h
        · rw [(mem_annSub_iff l).1 hlA j h, zero_mul]
        · rw [hz j h, mul_zero]
      · simp
    refine ⟨u * v i, ?_, ?_⟩
    · rw [← h2]
      exact (PositivityTheory.Xgn.A_dotdual_bc.mem_dotDual R L v).1 hv l hlL
    · field_simp
  · rintro ⟨a, ha, rfl⟩
    obtain ⟨ρ, hρU, hρid, hρL⟩ := hS i
    have hfix : ∀ j : Fin n, i ≤ j → ρ (Pi.single j 1) = Pi.single j 1 := fun j hj =>
      hρid _ (single_mem_annSub j hj)
    refine ⟨fun j => (a * u⁻¹) * ρ (Pi.single j 1) i, ?_, ?_, ?_⟩
    · rw [PositivityTheory.Xgn.A_dotdual_bc.mem_dotDual]
      intro l hl
      have key : l ⬝ᵥ (fun j => (a * u⁻¹) * ρ (Pi.single j 1) i) = (a * u⁻¹) * ρ l i := by
        rw [map_eq_sum ρ l, dotProduct, Finset.sum_apply, Finset.mul_sum]
        refine Finset.sum_congr rfl fun j _ => ?_
        simp only [Pi.smul_apply, smul_eq_mul]
        ring
      have hl' : ρ l i ∈ (L ⊓ (annSub Ω n i).toAddSubgroup).map
          (Pi.evalAddMonoidHom (fun _ => Ω) i) :=
        ⟨ρ l, AddSubgroup.mem_inf.2 ⟨hρL l hl, hρU l⟩, rfl⟩
      obtain ⟨b, hb, hbe⟩ := (hc _).1 hl'
      have h3 : a * u⁻¹ * (b * u) = a * b := by field_simp
      rw [key, hbe, h3]
      exact R.mul_mem ha hb
    · intro j hj
      have hne : i ≠ j := ne_of_lt hj
      simp only [hfix j hj.le, Pi.single_apply, hne, if_false, mul_zero]
    · simp only [hfix i le_rfl, Pi.single_eq_same, mul_one]

end GlobalTheory.CompanionTheory.Ar.Num.HhGraded
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualLatticeCoordinateGenerator =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XCkFlagSum =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XCkFlagSum", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterGoodD\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace PositivityTheory.Xgn.A_ck_flag_sum

theorem classList_mapDomain {K σ τ : Type} (cls : τ → K → ℤ) (e : σ → τ) (μ : σ →₀ ℕ) :
    classList cls (Finsupp.mapDomain e μ) = classList (cls ∘ e) μ := by
  unfold classList
  rw [← Finsupp.toMultiset_map, Multiset.map_map]

theorem classNum_rename {K : Type} [DecidableEq K] {ι : K → Type} {O : Type} [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] {σ τ : Type} (cls : τ → K → ℤ) (e : σ → τ) (he : Function.Injective e)
    (H : MvPolynomial σ ℤ) (Q : List (K → ℤ)) (W : Ideal (MRing ι O)) :
    classNum cls (rename e H) Q W = classNum (cls ∘ e) H Q W := by
  classical
  unfold classNum
  rw [support_rename_of_injective he,
    Finset.sum_image fun a _ b _ h => Finsupp.mapDomain_injective he h]
  refine Finset.sum_congr rfl fun μ _ => ?_
  rw [coeff_rename_mapDomain e he, classList_mapDomain]

theorem psumExpansion_eq_rename (N k : ℕ) (i : Fin N) :
    psumExpansion N k i =
      rename (Sum.map (fun _ : Fin 1 => i) (fun _ : Fin 1 => i)) (psumExpansion 1 k 0) := by
  simp [psumExpansion]

theorem pairNum_psum {K : Type} [DecidableEq K] {ι : K → Type} {O : Type} [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] {N : ℕ} (P : Ideal (MRing ι O)) (x x' : Fin N → K → ℤ)
    (f g : Fin N → MRing ι O) (k : ℕ) (Q : List (K → ℤ)) :
    pairNum P x x' f g (psumExpansion N k) Q =
      ∑ i, pairNum P (fun _ : Fin 1 => x i) (fun _ => x' i) (fun _ => f i) (fun _ => g i)
        (psumExpansion 1 k) Q := by
  unfold pairNum
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Fin.sum_univ_one]
  have he : Function.Injective (Sum.map (fun _ : Fin 1 => i) (fun _ : Fin 1 => i)) :=
    Sum.map_injective.mpr ⟨fun _ _ _ => Subsingleton.elim _ _, fun _ _ _ => Subsingleton.elim _ _⟩
  have hc : Sum.elim x x' ∘ Sum.map (fun _ : Fin 1 => i) (fun _ : Fin 1 => i) =
      Sum.elim (fun _ : Fin 1 => x i) (fun _ : Fin 1 => x' i) := by
    funext s
    rcases s with s | s <;> rfl
  simp only [psumExpansion_eq_rename N k i, classNum_rename _ _ he, hc]

end PositivityTheory.Xgn.A_ck_flag_sum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XCkFlagSum =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleFrames =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleFrames", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Inhabit\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChernClassOnFlagPair\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleModelDegree\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagComparison\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XCkFlagSum\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.CkFlagSum

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ (N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (B B' : ChartBundle O (mseg x) N V), SameGeneric O x B B' → ∀ (w w' : Module.Basis (Fin N) Ω V) (b b' : Fin N → K → ℤ), IsFlagFrame x B w b → IsFlagFrame x B' w' b' → (∀ i j : Fin N, i < j → w.repr (w' i) j = 0) → ∀ A A' : Fin N → ChartBundle O (mseg x) 1 Ω, (∀ i, IsLine O x 1 (b i) (A i).lat ∧ IsLine O x (w.repr (w' i) i) (b' i) (A' i).lat) → ∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O x d N B B' k L Q = ∑ i, ck O x d 1 (A i) (A' i) k L Q := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hM N V _ _ B B' hS w w' b b' hF hF' hw A A' hA k hk1 hk2 q L Q hQ
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  obtain ⟨hK, hW⟩ := (BundleExamples.isModelOver_iff O _ d).mp hM
  have hW' : GroundTheory.Heights₂.Heights.NumbersDVR.IsModelOver (pointIdeal O x) d := hW
  obtain ⟨hG, f, g, hP⟩ :=
    _root_.GlobalTheory.CompanionTheory.Ar.FlagPairOfFrames.main O Ω K ι x ϖ hϖ d hW' N V B B' hS w w' b b' hF hF' hw
  have h1 := (_root_.GlobalTheory.CompanionTheory.ChernFlagPairRootPolynomial.main O ϖ hϖ Ω K ι x d hK hW' N V B B' hG w w' b b' f g hP).1 k hk1 hk2
    (psumExpansion N k) (isPairExpansion_psum N k) q L Q hQ
  have h2 : ∀ i, ck O x d 1 (A i) (A' i) k L Q = _ := fun i =>
    (_root_.GlobalTheory.CompanionTheory.Ar.Num.LineCk.main O Ω K ι x ϖ hϖ d hM (A i) (A' i) 1 (w.repr (w' i) i) (b i) (b' i)
      (hA i).1 (hA i).2 (f i) (g i) (hP.vertical i)
      (by rw [mul_one, mul_comm]; exact hP.generic i)).2 k hk1 hk2 q L Q hQ
  refine h1.trans ?_
  rw [Finset.sum_congr rfl fun i _ => h2 i, Finset.sum_comm]
  refine Finset.sum_congr rfl fun μ _ => ?_
  rw [PositivityTheory.Xgn.A_ck_flag_sum.pairNum_psum, Finset.mul_sum]

end GlobalTheory.CompanionTheory.Ar.CkFlagSum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleFrames =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeCharacter =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeCharacter", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleProduct\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualLatticeCoordinateGenerator\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleChartGenericComparison\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleFrames\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericLinearEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.Num.RelH

section Chart

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω]

theorem mem_stdLat' (R : Subalgebra o Ω) {n : ℕ} {v : Fin n → Ω} :
    v ∈ stdLat R (Fin n) ↔ ∀ i, v i ∈ R := by
  simp [stdLat, AddSubgroup.mem_pi]

theorem mem_dotDual' (R : Subalgebra o Ω) {n : ℕ} {L : AddSubgroup (Fin n → Ω)} {v : Fin n → Ω} :
    v ∈ dotDual R L ↔ ∀ l ∈ L, l ⬝ᵥ v ∈ R := by
  simp only [dotDual, AddSubgroup.mem_iInf, AddSubgroup.mem_comap]
  rfl

theorem std_le_dual (R : Subalgebra o Ω) {n : ℕ} {L : AddSubgroup (Fin n → Ω)}
    (hL : L ≤ stdLat R (Fin n)) : stdLat R (Fin n) ≤ dotDual R L := by
  intro v hv
  refine (mem_dotDual' R).2 fun l hl => ?_
  have h1 := (mem_stdLat' R).1 (hL hl)
  have h2 := (mem_stdLat' R).1 hv
  exact sum_mem fun i _ => mul_mem (h1 i) (h2 i)

theorem smul_mem_of_dual (R : Subalgebra o Ω) {n : ℕ} {L : AddSubgroup (Fin n → Ω)} {w : Ω}
    (hL : mulLat w (stdLat R (Fin n)) ≤ L) {v : Fin n → Ω} (hv : v ∈ dotDual R L) :
    w • v ∈ stdLat R (Fin n) := by
  refine (mem_stdLat' R).2 fun i => ?_
  have h1 : w • (Pi.single i 1 : Fin n → Ω) ∈ L := by
    refine hL ⟨Pi.single i 1, (mem_stdLat' R).2 fun j => ?_, rfl⟩
    by_cases h : j = i
    · subst h; simpa using one_mem R
    · simpa [h] using zero_mem R
  have h2 := (mem_dotDual' R).1 hv _ h1
  simpa [dotProduct, Pi.single_apply] using h2

theorem coord_mem_of_le (R : Subalgebra o Ω) {n : ℕ} {L : AddSubgroup (Fin n → Ω)}
    (hL : L ≤ stdLat R (Fin n)) (i : Fin n) {t : Ω}
    (ht : t ∈ (L ⊓ (annSub Ω n i).toAddSubgroup).map (Pi.evalAddMonoidHom (fun _ => Ω) i)) :
    t ∈ R := by
  obtain ⟨v, hv, rfl⟩ := ht
  exact (mem_stdLat' R).1 (hL hv.1) i

theorem mul_mem_coord (R : Subalgebra o Ω) {n : ℕ} {L : AddSubgroup (Fin n → Ω)} {w : Ω}
    (hL : mulLat w (stdLat R (Fin n)) ≤ L) (i : Fin n) {a : Ω} (ha : a ∈ R) :
    w * a ∈ (L ⊓ (annSub Ω n i).toAddSubgroup).map (Pi.evalAddMonoidHom (fun _ => Ω) i) := by
  refine ⟨w • (Pi.single i a : Fin n → Ω), ⟨hL ⟨Pi.single i a, (mem_stdLat' R).2 fun j => ?_, rfl⟩, ?_⟩, ?_⟩
  · by_cases h : j = i
    · subst h; simpa using ha
    · simpa [h] using zero_mem R
  · show _ ∈ annSub Ω n i
    simp only [annSub, Submodule.mem_pi, Set.mem_setOf_eq, Submodule.mem_bot]
    intro j hj
    have : j ≠ i := fun h => by subst h; exact lt_irrefl _ hj
    simp [this]
  · simp

variable {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ}

theorem chart_facts (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (χ : Sg → F → Ω)
    (φ : Equiv.Perm Sg) (hcd : CharData R p w χ) (hb : D.Base R p w) (h1 : D.Good₁ R p χ)
    (h2 : D.Good₂ R p χ) (hf : D.Facts R p w χ φ) (τ : Sg) :
    stdLat R (Fin n) ≤ D.hh R p (χ τ) ∧ (∀ v ∈ D.hh R p (χ τ), w • v ∈ stdLat R (Fin n)) ∧
      ∀ i : Fin n, (∀ t ∈ D.xId (χ τ) i, t ∈ R) ∧ (∀ a ∈ R, w * a ∈ D.xId (χ τ) i) ∧
        ∀ u : Ω, u ≠ 0 → (∀ c, c ∈ D.xId (χ τ) i ↔ ∃ a ∈ R, c = a * u) →
          ∀ t, (∃ v ∈ D.hh R p (χ τ), (∀ j, i < j → v j = 0) ∧ v i = t) ↔ ∃ a ∈ R, t = a * u⁻¹ := by
  obtain ⟨hfree, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodBaseChange.main D R p w χ hcd hb h1
  obtain ⟨hLF, -, hle, -⟩ := hfree τ
  have hle' : mulLat w (stdLat R _) ≤ D.af R p (χ τ) := hf.le_af τ
  refine ⟨std_le_dual R hle, fun v hv => smul_mem_of_dual R hle' hv, fun i => ⟨?_, ?_, ?_⟩⟩
  · intro t ht
    rw [← hf.dx τ i] at ht
    exact coord_mem_of_le R hle i ht
  · intro a ha
    rw [← hf.dx τ i]
    exact mul_mem_coord R hle' i ha
  · intro u hu hc t
    refine _root_.GlobalTheory.CompanionTheory.Ar.Num.HhGraded.main R n (D.af R p (χ τ)) hLF (h2.ann τ) i u hu (fun c => ?_) t
    have := hc c
    rw [← hf.dx τ i] at this
    exact this

end Chart

section Model

variable {Ω : Type} [Field Ω] {K : Type} [Fintype K] {ι : K → Type}

theorem coord_ne_zero {x : (Σ k, ι k) → Ω} {c : ∀ k, ι k} (hc : mseg x c ≠ 0) (k : K) :
    x ⟨k, c k⟩ ≠ 0 := fun h => hc (Finset.prod_eq_zero (Finset.mem_univ k) h)

theorem chartMon_ne_zero' {x : (Σ k, ι k) → Ω} {c : ∀ k, ι k} (hc : mseg x c ≠ 0) (b : K → ℤ) :
    chartMon x c b ≠ 0 :=
  Finset.prod_ne_zero_iff.2 fun k _ => zpow_ne_zero _ (coord_ne_zero hc k)

theorem chartMon_neg' (x : (Σ k, ι k) → Ω) (c : ∀ k, ι k) (b : K → ℤ) :
    chartMon x c (-b) = (chartMon x c b)⁻¹ := by
  simp [chartMon, Finset.prod_inv_distrib, zpow_neg]

theorem chartMon_zero' (x : (Σ k, ι k) → Ω) (c : ∀ k, ι k) : chartMon x c (0 : K → ℤ) = 1 := by
  simp [chartMon]

theorem inv_line {u : Ω} (hu : u ≠ 0) (v r m : Ω) :
    u⁻¹ * v = r * (u⁻¹ * m) ↔ v = r * (1 * m) := by
  rw [show r * (u⁻¹ * m) = u⁻¹ * (r * (1 * m)) by ring, mul_right_inj' (inv_ne_zero hu)]

theorem inv_line' {u : Ω} (hu : u ≠ 0) (v r m : Ω) :
    u⁻¹ * v = r * (1 * m) ↔ v = r * (u * m) := by
  rw [show r * (u * m) = u * (r * (1 * m)) by ring, inv_mul_eq_iff_eq_mul₀ hu]

end Model

theorem relH_main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ} (p : ℕ), p.Prime → ∀ (w : O) (χ : Sg → F → O) (φ : Equiv.Perm Sg) (D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s), IsLatticeFamily O x p w χ φ D → (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg x c ≠ 0 → (D c).Good₂ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg x c ≠ 0 → (D c).Facts (chartRing O (mseg x) c) p (algebraMap O Ω w) (fun τ a => algebraMap O Ω (χ τ a)) φ) → (∀ τ i, ∃ (u : Ω) (a : _ → ℤ), u ≠ 0 ∧ IsLine O x u a fun c => (D c).xId (fun a => algebraMap O Ω (χ τ a)) i) → ∀ (Xb : Sg → Fin n → ChartBundle O (mseg x) 1 Ω) (T : ChartBundle O (mseg x) 1 Ω), (∀ τ i c, mseg x c ≠ 0 → (Xb τ i).lat c = (D c).xId (fun a => algebraMap O Ω (χ τ a)) i) → IsLine O x 1 0 T.lat → ∀ τ (H Tn : ChartBundle O (mseg x) n (Fin n → Ω)), (∀ c, mseg x c ≠ 0 → H.lat c = (D c).hh (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a)) ∧ Tn.lat c = stdLat (chartRing O (mseg x) c) (Fin n)) → SameGeneric O x H Tn ∧ ∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O x d n H Tn k L Q = (-1) ^ k * ∑ i, ck O x d 1 (Xb τ i) T k L Q := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hmodel F _ _ _ n Sg _ r s p hp w χ φ D hfam hg1 hg2 hfacts hline
    Xb T hXb hT τ H Tn hHT
  have hinj : ∀ a : O, algebraMap O Ω a = 0 → a = 0 := by
    intro a ha
    have h1 : (MvPolynomial.C a : MvPolynomial (Σ k, ι k) O) ∈ mcIdeal O x := by
      show GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.mcMap O x (MvPolynomial.C a) = 0
      have h2 : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.mcMap O x (MvPolynomial.C a) =
          algebraMap O (MvPolynomial K Ω) a :=
        (GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.mcMap O x).commutes a
      rw [h2, MvPolynomial.algebraMap_apply, ha, map_zero]
    have h2 : a ∈ ((mcIdeal O x).comap (MvPolynomial.C : O →+* MvPolynomial (Σ k, ι k) O)) := h1
    rw [hmodel.2.2.1] at h2
    simpa using h2
  obtain ⟨hp0, ⟨u0, hu0, hwu⟩, -, h01, hχ⟩ := hfam.char
  have hp2 : 2 ≤ p := hp.two_le
  have hpΩ : (p : Ω) ≠ 0 := by
    intro h
    exact hp0 (hinj _ (by simpa using h))
  have hw0 : w ≠ 0 := by
    rintro rfl
    rw [zero_pow (by omega)] at hwu
    rcases mul_eq_zero.1 hwu.symm with h | h
    · exact hu0.ne_zero h
    · exact hp0 h
  obtain ⟨b, hb⟩ : ∃ b : O, (p : O) = b * w := by
    obtain ⟨v, rfl⟩ := hu0
    refine ⟨↑v⁻¹ * w ^ (p - 2), ?_⟩
    have h1 : w ^ (p - 1) = w ^ (p - 2) * w := by
      rw [← pow_succ]
      congr 1
      omega
    calc (p : O) = ↑v⁻¹ * (↑v * (p : O)) := by simp
      _ = _ := by rw [← hwu, h1, mul_assoc]
  have hcd : ∀ c, CharData (chartRing O (mseg x) c) p (algebraMap O Ω w)
      (fun τ a => algebraMap O Ω (χ τ a)) := fun c =>
    ⟨hpΩ, Subalgebra.algebraMap_mem _ w,
      ⟨algebraMap O Ω b, Subalgebra.algebraMap_mem _ b, by rw [← map_mul, ← hb, map_natCast]⟩, h01,
      fun τ => ⟨by simp [(hχ τ).1], by simp [(hχ τ).2], fun a => Subalgebra.algebraMap_mem _ _⟩⟩
  have CF : ∀ c, mseg x c ≠ 0 →
      stdLat (chartRing O (mseg x) c) (Fin n) ≤ H.lat c ∧
      (∀ v ∈ H.lat c, algebraMap O Ω w • v ∈ stdLat (chartRing O (mseg x) c) (Fin n)) ∧
      ∀ i : Fin n, (∀ t ∈ (D c).xId (fun a => algebraMap O Ω (χ τ a)) i, t ∈ chartRing O (mseg x) c) ∧
        (∀ a ∈ chartRing O (mseg x) c,
          algebraMap O Ω w * a ∈ (D c).xId (fun a => algebraMap O Ω (χ τ a)) i) ∧
        ∀ u : Ω, u ≠ 0 → (∀ c', c' ∈ (D c).xId (fun a => algebraMap O Ω (χ τ a)) i ↔
            ∃ a ∈ chartRing O (mseg x) c, c' = a * u) →
          ∀ t, (∃ v ∈ H.lat c, (∀ j, i < j → v j = 0) ∧ v i = t) ↔
            ∃ a ∈ chartRing O (mseg x) c, t = a * u⁻¹ := by
    intro c hc
    rw [(hHT c hc).1]
    exact chart_facts (D c) (chartRing O (mseg x) c) p _ _ φ (hcd c) (hfam.base c hc) (hg1 c hc)
      (hg2 c hc) (hfacts c hc) τ
  choose u a hu hl using hline
  have hgR : ∀ (i : Fin n) c, mseg x c ≠ 0 → u τ i * chartMon x c (a τ i) ∈ chartRing O (mseg x) c ∧
      ∃ e ∈ chartRing O (mseg x) c, algebraMap O Ω w = e * (u τ i * chartMon x c (a τ i)) := by
    intro i c hc
    refine ⟨((CF c hc).2.2 i).1 _ ((hl τ i c hc _).2 ⟨1, one_mem _, by simp⟩), ?_⟩
    have h1 := ((CF c hc).2.2 i).2.1 1 (one_mem _)
    rw [mul_one] at h1
    exact (hl τ i c hc _).1 h1
  have hgne : ∀ (i : Fin n) c, mseg x c ≠ 0 → u τ i * chartMon x c (a τ i) ≠ 0 := fun i c hc =>
    mul_ne_zero (hu τ i) (chartMon_ne_zero' hc _)
  have hgm : ∀ (i : Fin n) c, mseg x c ≠ 0 →
      (u τ i * chartMon x c (a τ i)) * chartMon x c (-a τ i) = u τ i := by
    intro i c hc
    rw [chartMon_neg', mul_assoc, mul_inv_cancel₀ (chartMon_ne_zero' hc _), mul_one]
  have hSG : SameGeneric O x H Tn := by
    intro c hc
    refine ⟨fun v hv => ⟨w, hw0, ?_⟩, fun v hv => ⟨1, one_ne_zero, ?_⟩⟩
    · rw [(hHT c hc).2]
      exact (CF c hc).2.1 v hv
    · rw [map_one, one_smul]
      rw [(hHT c hc).2] at hv
      exact (CF c hc).1 hv
  let wB : Module.Basis (Fin n) Ω (Fin n → Ω) :=
    (Pi.basisFun Ω (Fin n)).unitsSMul fun i => Units.mk0 (u τ i)⁻¹ (inv_ne_zero (hu τ i))
  have hrepr : ∀ (v : Fin n → Ω) i, wB.repr v i = u τ i * v i := by
    intro v i
    simp [wB, Units.smul_def]
  have hflagH : IsFlagFrame x H wB (fun i => -a τ i) := by
    refine ⟨fun c hc i => ?_⟩
    have hc' : mseg x c ≠ 0 := hc
    have key := ((CF c hc').2.2 i).2.2 _ (hgne i c hc') (hl τ i c hc')
    ext z
    constructor
    · rintro ⟨v, hv, hz, rfl⟩
      have h0 : ∀ j, i < j → v j = 0 := fun j hj => by
        have h1 := hz j hj
        rw [hrepr] at h1
        exact (mul_eq_zero.1 h1).resolve_left (hu τ j)
      obtain ⟨e, he, hev⟩ := (key (v i)).1 ⟨v, hv, h0, rfl⟩
      refine ⟨e, he, ?_⟩
      show wB.repr v i = e * chartMon x c (-a τ i)
      rw [hrepr, hev, chartMon_neg', mul_inv]
      field_simp [hu τ i]
    · rintro ⟨e, he, rfl⟩
      obtain ⟨v, hv, h0, hvi⟩ := (key (e * (u τ i * chartMon x c (a τ i))⁻¹)).2 ⟨e, he, rfl⟩
      refine ⟨v, hv, fun j hj => by rw [hrepr, h0 j hj, mul_zero], ?_⟩
      show wB.repr v i = e * chartMon x c (-a τ i)
      rw [hrepr, hvi, chartMon_neg', mul_inv]
      field_simp [hu τ i]
  have hflagT : IsFlagFrame x Tn (Pi.basisFun Ω (Fin n)) 0 := by
    refine ⟨fun c hc i => ?_⟩
    have hc' : mseg x c ≠ 0 := hc
    ext z
    constructor
    · rintro ⟨v, hv, -, rfl⟩
      rw [(hHT c hc').2] at hv
      refine ⟨v i, (mem_stdLat' _).1 hv i, ?_⟩
      simp
    · rintro ⟨e, he, rfl⟩
      refine ⟨Pi.single i e, ?_, fun j hj => ?_, ?_⟩
      · rw [(hHT c hc').2]
        refine (mem_stdLat' _).2 fun j => ?_
        by_cases h : j = i
        · subst h
          have he' : e ∈ chartRing O (mseg x) c := he
          simpa using he'
        · simpa [h] using zero_mem (chartRing O (mseg x) c)
      · simp [(ne_of_lt hj).symm]
      · simp
  have htri : ∀ i j : Fin n, i < j → wB.repr (Pi.basisFun Ω (Fin n) i) j = 0 := by
    intro i j hij
    rw [hrepr]
    simp [(ne_of_lt hij).symm]
  have ops := _root_.GlobalTheory.CompanionTheory.Ar.BundleOps.main O Ω K ι x
  have e1 : ∀ i, ∃ A : ChartBundle O (mseg x) 1 Ω, IsLine O x 1 (-a τ i) A.lat :=
    fun i => ops.2.2.1 1 _ one_ne_zero
  have e2 : ∀ i, ∃ A : ChartBundle O (mseg x) 1 Ω, IsLine O x (u τ i) 0 A.lat :=
    fun i => ops.2.2.1 _ _ (hu τ i)
  have e3 : ∀ i, ∃ A : ChartBundle O (mseg x) 1 Ω,
      IsLine O x (u τ i ^ (-1 : ℤ)) ((-1 : ℤ) • a τ i) A.lat :=
    fun i => ops.2.2.1 _ _ (zpow_ne_zero _ (hu τ i))
  choose A1 hA1 using e1
  choose A2 hA2 using e2
  choose A3 hA3 using e3
  have hlX : ∀ i, IsLine O x (u τ i) (a τ i) (Xb τ i).lat := by
    intro i c hc v
    rw [hXb τ i c hc]
    exact hl τ i c hc v
  have hSG12 : ∀ i, SameGeneric O x (A1 i) (A2 i) := by
    intro i c hc
    obtain ⟨hg, e, he, hwe⟩ := hgR i c hc
    refine ⟨fun v hv => ⟨w, hw0, ?_⟩, fun v hv => ⟨1, one_ne_zero, ?_⟩⟩
    · obtain ⟨ρ, hρ, rfl⟩ := (hA1 i c hc v).1 hv
      refine (hA2 i c hc _).2 ⟨ρ * e, mul_mem hρ he, ?_⟩
      rw [chartMon_zero', smul_eq_mul, hwe]
      have h1 := hgm i c hc
      calc e * (u τ i * chartMon x c (a τ i)) * (ρ * (1 * chartMon x c (-a τ i)))
          = ρ * e * ((u τ i * chartMon x c (a τ i)) * chartMon x c (-a τ i)) := by ring
        _ = _ := by rw [h1, mul_one]
    · obtain ⟨ρ, hρ, rfl⟩ := (hA2 i c hc v).1 hv
      rw [map_one, one_smul]
      refine (hA1 i c hc _).2 ⟨ρ * (u τ i * chartMon x c (a τ i)), mul_mem hρ hg, ?_⟩
      rw [chartMon_zero', one_mul, mul_one, mul_assoc, hgm i c hc]
  have hSGX : ∀ i, SameGeneric O x (Xb τ i) T := by
    intro i c hc
    obtain ⟨hg, e, he, hwe⟩ := hgR i c hc
    refine ⟨fun v hv => ⟨1, one_ne_zero, ?_⟩, fun v hv => ⟨w, hw0, ?_⟩⟩
    · obtain ⟨ρ, hρ, rfl⟩ := (hlX i c hc v).1 hv
      rw [map_one, one_smul]
      refine (hT c hc _).2 ⟨ρ * (u τ i * chartMon x c (a τ i)), mul_mem hρ hg, ?_⟩
      rw [chartMon_zero']
      ring
    · obtain ⟨ρ, hρ, rfl⟩ := (hT c hc v).1 hv
      refine (hlX i c hc _).2 ⟨ρ * e, mul_mem hρ he, ?_⟩
      rw [chartMon_zero', smul_eq_mul, hwe]
      ring
  refine ⟨hSG, fun k hk1 hk2 q L Q hQ => ?_⟩
  have hsum := _root_.GlobalTheory.CompanionTheory.Ar.CkFlagSum.main O Ω K ι x d hmodel n (Fin n → Ω) H Tn hSG wB (Pi.basisFun Ω (Fin n))
    (fun i => -a τ i) 0 hflagH hflagT htri A1 A2
    (fun i => ⟨hA1 i, by
      have h1 : wB.repr (Pi.basisFun Ω (Fin n) i) i = u τ i := by
        rw [hrepr]
        simp
      rw [h1]
      exact hA2 i⟩) k hk1 hk2 q L Q hQ
  rw [hsum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  have hP := (_root_.GlobalTheory.CompanionTheory.Ar.CkLinePow.main O Ω K ι x d hmodel (Xb τ i) T (A3 i) (u τ i) (a τ i) (-1) (hu τ i) (hlX i)
    hT (hSGX i) (hA3 i)).2 k hk1 hk2 q L Q hQ
  have hTr := (_root_.GlobalTheory.CompanionTheory.Ar.Num.CkTransport.main O Ω K ι x d hmodel 1 Ω Ω
    (LinearEquiv.smulOfNeZero Ω Ω (u τ i)⁻¹ (inv_ne_zero (hu τ i))) (A1 i) (A2 i) (A3 i) T (hSG12 i)
    (fun c hc v => ?_)).1 k hk1 hk2 q L Q hQ
  · rw [← hTr, hP]
  · have he : (LinearEquiv.smulOfNeZero Ω Ω (u τ i)⁻¹ (inv_ne_zero (hu τ i))) v = (u τ i)⁻¹ * v := rfl
    rw [he]
    constructor
    · rw [hA3 i c hc, hA1 i c hc]
      simp only [zpow_neg_one, neg_smul, one_smul, inv_line (hu τ i)]
    · rw [hT c hc, hA2 i c hc]
      simp only [inv_line' (hu τ i)]

end GlobalTheory.CompanionTheory.Ar.Num.RelH
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeCharacter =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeCharacterStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeCharacterStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeCharacter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

theorem _root_.GlobalTheory.T.model_over_mod_p_lattice_character : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ} (p : ℕ), p.Prime → ∀ (w : O) (χ : Sg → F → O) (φ : Equiv.Perm Sg) (D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s), IsLatticeFamily O x p w χ φ D → (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg x c ≠ 0 → (D c).Good₂ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg x c ≠ 0 → (D c).Facts (chartRing O (mseg x) c) p (algebraMap O Ω w) (fun τ a => algebraMap O Ω (χ τ a)) φ) → (∀ τ i, ∃ (u : Ω) (a : _ → ℤ), u ≠ 0 ∧ IsLine O x u a fun c => (D c).xId (fun a => algebraMap O Ω (χ τ a)) i) → ∀ (Xb : Sg → Fin n → ChartBundle O (mseg x) 1 Ω) (T : ChartBundle O (mseg x) 1 Ω), (∀ τ i c, mseg x c ≠ 0 → (Xb τ i).lat c = (D c).xId (fun a => algebraMap O Ω (χ τ a)) i) → IsLine O x 1 0 T.lat → ∀ τ (H Tn : ChartBundle O (mseg x) n (Fin n → Ω)), (∀ c, mseg x c ≠ 0 → H.lat c = (D c).hh (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a)) ∧ Tn.lat c = stdLat (chartRing O (mseg x) c) (Fin n)) → SameGeneric O x H Tn ∧ ∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O x d n H Tn k L Q = (-1) ^ k * ∑ i, ck O x d 1 (Xb τ i) T k L Q := by
  first | exact @GlobalTheory.CompanionTheory.Ar.Num.RelH.relH_main
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeCharacterStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XRootnumDual =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XRootnumDual", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PPairCocycle\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleBaseExtension\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeFiniteProjectiveBaseChange\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBundleChain\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagComparison\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericFlagDifference\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFlagframeDual\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullLine\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullPreserve\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PScalarQuotient\nimport Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XBundleOfFamily\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.OfSteps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleChartGenericComparison\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace PositivityTheory.Xgn.A_rootnum_dual

section Lists

variable {K : Type*} {σ : Type*}

theorem headAdd_neg {A : List (K → ℤ) → ℤ} (hA : HeadAdd A) (u : K → ℤ)
    (l : List (K → ℤ)) : A ((-u) :: l) = -A (u :: l) := by
  let φ : (K → ℤ) →+ ℤ := AddMonoidHom.mk' (fun v => A (v :: l)) fun v w => hA v w l
  exact map_neg φ u

theorem map_neg_append {A : List (K → ℤ) → ℤ} (hp : PermInv A) (hA : HeadAdd A)
    (l r : List (K → ℤ)) : A (l.map (- ·) ++ r) = (-1) ^ l.length * A (l ++ r) := by
  induction l generalizing r with
  | nil => simp
  | cons u l ih =>
    rw [List.map_cons, List.cons_append, headAdd_neg hA,
      hp _ _ (List.perm_middle (a := u) (l₁ := l.map (- ·)) (l₂ := r)).symm, ih,
      hp _ _ (List.perm_middle (a := u) (l₁ := l) (l₂ := r)), List.length_cons, List.cons_append]
    ring

theorem length_classList (cls : σ → K → ℤ) {H : MvPolynomial σ ℤ} {n : ℕ}
    (hH : H.IsHomogeneous n) {μ : σ →₀ ℕ} (hμ : μ ∈ H.support) :
    (classList cls μ).length = n := by
  have h1 := hH (mem_support_iff.mp hμ)
  rw [← h1]
  simp only [classList, Multiset.length_toList, Multiset.card_map, Finsupp.card_toMultiset,
    Finsupp.weight_apply]
  simp [Finsupp.sum]

theorem polyVal_neg {A : List (K → ℤ) → ℤ} (hp : PermInv A) (hA : HeadAdd A)
    (cls : σ → K → ℤ) {H : MvPolynomial σ ℤ} {n : ℕ} (hH : H.IsHomogeneous n) :
    polyVal A (fun s => -cls s) H = (-1) ^ n * polyVal A cls H := by
  unfold polyVal
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun μ hμ => ?_
  have hperm : (classList (fun s => -cls s) μ).Perm ((classList cls μ).map (- ·) ++ []) := by
    unfold classList
    rw [List.append_nil, ← Multiset.coe_eq_coe, ← Multiset.map_coe, Multiset.coe_toList,
      Multiset.coe_toList, Multiset.map_map]
    rfl
  rw [hp _ _ hperm, map_neg_append hp hA, length_classList cls hH hμ, List.append_nil]
  ring

end Lists

section Numbers

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem pairNum_dual {ϖ : O} (hϖ : Irreducible ϖ) {P : Ideal (MRing ι O)} {d : ℕ}
    (hP : IsModelOver P d) {N : ℕ} {b b' : Fin N → K → ℤ} {f g : Fin N → MRing ι O}
    (hD : ∀ i, IsVerticalDivisor P ϖ (b i - b' i) (f i) (g i))
    {k : ℕ} (hk : 1 ≤ k) {Q : List (K → ℤ)} (hQ : Q.length + k = d + 1) :
    pairNum P (fun j => -b j.rev) (fun j => -b' j.rev) (fun j => g j.rev) (fun j => f j.rev)
        (psumExpansion N k) Q =
      (-1) ^ k * pairNum P b b' f g (psumExpansion N k) Q := by
  unfold pairNum
  rw [Finset.mul_sum]
  refine Fintype.sum_equiv Fin.revPerm _ _ fun i => ?_
  have hH := isHomogeneous_psumExpansion N k i
  have hn : k - 1 + Q.length = d := by omega
  have hcls : (Sum.elim (fun j : Fin N => -b j.rev) (fun j : Fin N => -b' j.rev)) =
      fun s => -(Sum.elim (fun j : Fin N => b j.rev) (fun j : Fin N => b' j.rev)) s := by
    funext s
    cases s <;> simp
  unfold cycEval
  rw [mul_finsum]
  refine finsum_congr fun W => ?_
  have hr : ratDiv P (g i.rev) (f i.rev) W = -ratDiv P (f i.rev) (g i.rev) W := by
    unfold ratDiv
    ring
  rw [Fin.revPerm_apply]
  beta_reduce
  rw [hr]
  by_cases hW : ratDiv P (f i.rev) (g i.rev) W = 0
  · simp [hW]
  rw [classNum_eq_polyVal _ hH hn, hcls,
    polyVal_neg (listNum_perm W Q d)
      (listNum_headAdd IntNumAddFirst.full hϖ hP (hD i.rev) hW Q) _ hH,
    ← classNum_eq_polyVal _ hH hn, classNum_psumExpansion _ _ k _ hQ,
    classNum_psumExpansion _ _ k _ hQ]
  obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by omega⟩
  rw [Nat.add_sub_cancel]
  ring

theorem root_dual {ϖ : O} (hϖ : Irreducible ϖ) {P : Ideal (MRing ι O)} {d : ℕ}
    (hP : IsModelOver P d) {N : ℕ} (b : Fin N → K → ℤ) {a : O} (ha : a ≠ 0)
    {j : ℕ} {Q : List (K → ℤ)} (hQ : j + Q.length = d) :
    cycEval (fun W => classNum (fun i : Fin N => -b i.rev) (psum (Fin N) ℤ j) Q W)
        (divCycle P (C a)) =
      (-1) ^ j * cycEval (fun W => classNum b (psum (Fin N) ℤ j) Q W) (divCycle P (C a)) := by
  have : P.IsPrime := hP.multiProj.isPrime
  have hC : (C a : MRing ι O) ∉ P := by
    intro hmem
    have h1 : a ∈ P.comap (C : O →+* MRing ι O) := hmem
    rw [hP.noTorsion] at h1
    exact ha (Ideal.mem_bot.mp h1)
  obtain ⟨n, u, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible ha hϖ
  have hD := ScalarQuotient.isVerticalDivisor_const P ϖ u n hC
  have hH := isHomogeneous_psum N j
  unfold cycEval
  rw [mul_finsum]
  refine finsum_congr fun W => ?_
  by_cases hW : divCycle P (C ((u : O) * ϖ ^ n)) W = 0
  · simp only [hW, zero_mul, mul_zero]
  have hW' : ratDiv P (C ((u : O) * ϖ ^ n)) 1 W ≠ 0 := by
    unfold ratDiv
    rwa [divCycle_one, sub_zero]
  have e : polyVal (listNum W Q d) (fun i : Fin N => b i.rev) (psum (Fin N) ℤ j) =
      polyVal (listNum W Q d) b (psum (Fin N) ℤ j) := by
    conv_rhs => rw [← psum_isSymmetric (Fin N) ℤ j Fin.revPerm, polyVal_rename]
    rfl
  beta_reduce
  rw [classNum_eq_polyVal _ hH hQ, classNum_eq_polyVal _ hH hQ,
    polyVal_neg (listNum_perm W Q d) (listNum_headAdd IntNumAddFirst.full hϖ hP hD hW' Q)
      (fun i : Fin N => b i.rev) hH, e]
  ring

end Numbers

section Lattices

variable {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω]
  {V V₁ : Type} [AddCommGroup V] [Module Ω V] [AddCommGroup V₁] [Module Ω V₁]

theorem exists_system (R : Subalgebra O Ω) {N : ℕ} (L : AddSubgroup V) (h : LocFree R N L)
    (β : V →ₗ[Ω] V₁ →ₗ[Ω] Ω) (hβ : Function.Bijective β.flip) :
    ∃ (k : ℕ) (v : Fin k × Fin N → V) (l : Fin k × Fin N → V₁), (∀ i, v i ∈ L) ∧
      (∀ i, ∀ e ∈ L, β e (l i) ∈ R) ∧ (∀ e, ∑ i, β e (l i) • v i = e) ∧
      ∀ w, ∑ i, β (v i) w • l i = w := by
  let L' : Submodule R V := { L with smul_mem' := fun a e he => h.1 a a.2 e he }
  obtain ⟨k, φ, v, hφ, hv⟩ := LocFreeProj.exists_dualBasis (L := L') (r := N) h
  choose l hl using fun i => hβ.2 (φ i)
  have hl' : ∀ i e, β e (l i) = φ i e := fun i e => by rw [← hl i]; rfl
  refine ⟨k, fun i => v i, l, fun i => (v i).2, fun i e he => ?_, fun e => ?_, fun w => ?_⟩
  · rw [hl']
    exact hφ i e he
  · simp only [hl']
    exact hv e
  · apply hβ.1
    ext e

    rw [LinearMap.flip_apply, LinearMap.flip_apply, map_sum]

    conv_rhs => rw [← hv e, map_sum, LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_smul, map_smul, LinearMap.smul_apply, hl', smul_eq_mul, smul_eq_mul, mul_comm]

theorem dual_closure (R R' : Subalgebra O Ω) (hR : ∀ a ∈ R, a ∈ R') {N : ℕ} (L : AddSubgroup V)
    (h : LocFree R N L) (β : V →ₗ[Ω] V₁ →ₗ[Ω] Ω) (hβ : Function.Bijective β.flip)
    (M : AddSubgroup V₁) (hM : ∀ w, w ∈ M ↔ ∀ v ∈ L, β v w ∈ R) (w : V₁) :
    w ∈ AddSubgroup.closure {v | ∃ a ∈ R', ∃ e ∈ M, v = a • e} ↔
      ∀ v ∈ AddSubgroup.closure {v | ∃ a ∈ R', ∃ e ∈ L, v = a • e}, β v w ∈ R' := by
  constructor
  · intro hw
    induction hw using AddSubgroup.closure_induction with
    | mem w hw =>
      obtain ⟨a, ha, e, he, rfl⟩ := hw
      intro v hv
      induction hv using AddSubgroup.closure_induction with
      | mem v hv =>
        obtain ⟨c, hc, y, hy, rfl⟩ := hv
        rw [map_smul, map_smul, LinearMap.smul_apply, smul_eq_mul, smul_eq_mul]
        exact R'.mul_mem ha (R'.mul_mem hc (hR _ ((hM e).1 he y hy)))
      | zero => rw [map_zero, LinearMap.zero_apply]; exact R'.zero_mem
      | add x y _ _ hx hy => rw [map_add (f := _), LinearMap.add_apply]; exact R'.add_mem hx hy
      | neg x _ hx => rw [map_neg, LinearMap.neg_apply]; exact R'.neg_mem hx
    | zero => intro v _; rw [map_zero]; exact R'.zero_mem
    | add x y _ _ hx hy => intro v hv; rw [map_add (f := _)]; exact R'.add_mem (hx v hv) (hy v hv)
    | neg x _ hx => intro v hv; rw [map_neg]; exact R'.neg_mem (hx v hv)
  · intro hw
    obtain ⟨k, v, l, hv, hl, -, hs⟩ := exists_system R L h β hβ
    rw [← hs w]
    exact AddSubgroup.sum_mem _ fun i _ => AddSubgroup.subset_closure
      ⟨_, hw _ (AddSubgroup.subset_closure ⟨1, R'.one_mem, _, hv i, (one_smul _ _).symm⟩), _,
        (hM _).2 (hl i), rfl⟩

theorem dual_generic [IsDomain O] (R : Subalgebra O Ω) {N : ℕ} (L L' : AddSubgroup V)
    (hL : ∀ a ∈ R, ∀ e ∈ L, a • e ∈ L)
    (h : LocFree R N L') (β : V →ₗ[Ω] V₁ →ₗ[Ω] Ω) (hβ : Function.Bijective β.flip)
    (M M' : AddSubgroup V₁) (hM : ∀ w, w ∈ M ↔ ∀ v ∈ L, β v w ∈ R)
    (hM' : ∀ w, w ∈ M' ↔ ∀ v ∈ L', β v w ∈ R)
    (hg : ∀ v ∈ L', ∃ c : O, c ≠ 0 ∧ algebraMap O Ω c • v ∈ L) :
    ∀ w ∈ M, ∃ c : O, c ≠ 0 ∧ algebraMap O Ω c • w ∈ M' := by
  classical
  intro w hw
  obtain ⟨k, v, l, hv, hl, hs, -⟩ := exists_system R L' h β hβ
  choose c hc0 hc using fun i => hg (v i) (hv i)
  refine ⟨∏ i, c i, Finset.prod_ne_zero_iff.2 fun i _ => hc0 i, (hM' _).2 fun e he => ?_⟩
  have key : algebraMap O Ω (∏ i, c i) • e ∈ L := by
    rw [← hs e, Finset.smul_sum]
    refine AddSubgroup.sum_mem _ fun i _ => ?_
    rw [smul_comm, ← Finset.prod_erase_mul _ _ (Finset.mem_univ i), map_mul, mul_smul]
    exact hL _ (hl i e he) _ (hL _ (R.algebraMap_mem _) _ (hc i))
  have := (hM w).1 hw _ key
  rw [map_smul, LinearMap.smul_apply] at this
  rw [map_smul]
  exact this

end Lattices

section Bundles

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {Ω : Type} [Field Ω]
  [Algebra O Ω] {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {x : (Σ k, ι k) → Ω} {N : ℕ} {V : Type} [AddCommGroup V] [Module Ω V]
  {V₁ : Type} [AddCommGroup V₁] [Module Ω V₁] {β : V →ₗ[Ω] V₁ →ₗ[Ω] Ω}

theorem pull_dual {E : ChartBundle O (mseg x) N V} {F : ChartBundle O (mseg x) N V₁}
    (hD : IsDualLat O x β E.lat F.lat) {K' : Type} [Fintype K'] {ι' : K' → Type}
    [∀ k, Fintype (ι' k)] {z : (Σ k, ι' k) → Ω} {EB : ChartBundle O (mseg (joinCoord x z)) N V}
    {FB : ChartBundle O (mseg (joinCoord x z)) N V₁} (hE : IsPull O x z E EB)
    (hF : IsPull O x z F FB) : IsDualLat O (joinCoord x z) β EB.lat FB.lat := by
  refine ⟨hD.1, fun s hs w => ?_⟩
  have hx := A_pull_preserve.below_ne x z s hs
  rw [hE s hs, hF s hs]
  exact dual_closure _ _ (fun a ha => A_pull_line.map_mem (AlgHom.id O Ω) x z s hs a ha) _
    (((t_bundle_of_family O Ω K ι x N V).2 E).2 _ hx) β hD.1 _ (hD.2 _ hx) w

theorem sameGeneric_dual {E E' : ChartBundle O (mseg x) N V} {F F' : ChartBundle O (mseg x) N V₁}
    (hS : SameGeneric O x E E') (hD : IsDualLat O x β E.lat F.lat)
    (hD' : IsDualLat O x β E'.lat F'.lat) : SameGeneric O x F F' := by
  intro s hs
  have h := ((t_bundle_of_family O Ω K ι x N V).2 E).2 s hs
  have h' := ((t_bundle_of_family O Ω K ι x N V).2 E').2 s hs
  exact ⟨dual_generic _ _ _ h.1 h' β hD.1 _ _ (hD.2 s hs) (hD'.2 s hs) (hS s hs).2,
    dual_generic _ _ _ h'.1 h β hD.1 _ _ (hD'.2 s hs) (hD.2 s hs) (hS s hs).1⟩

end Bundles

end PositivityTheory.Xgn.A_rootnum_dual

open PositivityTheory.Xgn.A_rootnum_dual in
theorem PositivityTheory.Xgn.t_rootnum_dual : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (V₁ : Type) [AddCommGroup V₁] [Module Ω V₁] (β : V →ₗ[Ω] V₁ →ₗ[Ω] Ω) (E E' : ChartBundle O (mseg x) N V) (F F' : ChartBundle O (mseg x) N V₁), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → SameGeneric O x E E' → IsDualLat O x β E.lat F.lat → IsDualLat O x β E'.lat F'.lat → (∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O x d N F F' k L Q = (-1) ^ k * ck O x d N E E' k L Q) ∧ ∀ (j : ℕ), j ≤ d → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d - j) → ∀ a : O, a ≠ 0 → rootNum O x d N F (psum (Fin N) ℤ j) L Q a = (-1) ^ j * rootNum O x d N E (psum (Fin N) ℤ j) L Q a := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d N V _ _ V₁ _ _ β E E' F F' hM hS hD hD'
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  obtain ⟨K', _, _, ι', _, z, EB, w, b, hm, hb, hj⟩ := _root_.GlobalTheory.CompanionTheory.Ar.CommonFlag.main O Ω K ι x d hM N 1 V ![E, E'] (by
    intro j
    fin_cases j
    · exact fun s _ => ⟨fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩,
        fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩⟩
    · exact hS)
  have hp : IsPull O x z E (EB 0) := (hj 0).1
  have hp' : IsPull O x z E' (EB 1) := (hj 1).1
  obtain ⟨-, hB⟩ := (BundleExamples.isModelOver_iff O _ d).mp hm
  have hB' : IsModelOver (pointIdeal O (joinCoord x z)) d := hB
  have hSB := (PositivityTheory.Xgn.t_pull_preserve O Ω K ι x N V E E' K' ι' z _ _ hp hp').2.1 hS
  obtain ⟨-, f, g, hfp⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FlagPairOfFrames.main O Ω (K ⊕ K') (Sum.elim ι ι') (joinCoord x z) ϖ hϖ d hB' N V
    (EB 0) (EB 1) hSB w w (b 0) (b 1) (hj 0).2 (hj 1).2
    (fun i j hij => by simp [Module.Basis.repr_self, hij.ne])
  obtain ⟨FB, hF⟩ := (_root_.GlobalTheory.CompanionTheory.Ar.Num.PullExists.main O Ω K ι x N V₁ F).1 K' ι' z
  obtain ⟨F'B, hF'⟩ := (_root_.GlobalTheory.CompanionTheory.Ar.Num.PullExists.main O Ω K ι x N V₁ F').1 K' ι' z
  obtain ⟨w₁, hw₁⟩ := PositivityTheory.Xgn.A_flagframe_dual.exists_dual β hD.1 w
  have hw : ∀ i j, β (w i) (w₁ j) = if i = j.rev then 1 else 0 := fun i j => by
    rw [hw₁]; simp [Finsupp.single_apply]
  have hfp₁ : IsFlagPair ϖ (joinCoord x z) FB F'B w₁ w₁ (fun j => -b 0 j.rev) (fun j => -b 1 j.rev)
      (fun j => g j.rev) (fun j => f j.rev) := by
    refine ⟨PositivityTheory.Xgn.t_flagframe_dual O Ω _ _ _ N V V₁ _ _ β (pull_dual hD hp hF) w _ hfp.flag w₁ hw,
      PositivityTheory.Xgn.t_flagframe_dual O Ω _ _ _ N V V₁ _ _ β (pull_dual hD' hp' hF') w _ hfp.flag' w₁ hw,
      fun i j hij => by simp [Module.Basis.repr_self, hij.ne], fun i => ?_, fun i => ?_⟩
    · have h := GlobalTheory.CompanionTheory.Ar.CkLinePow.isVerticalDivisor_swap (hfp.vertical i.rev)
      have e : -b 0 i.rev - -b 1 i.rev = -(b 0 i.rev - b 1 i.rev) := by abel
      rw [e]
      exact h
    · have h := hfp.generic i.rev
      rw [Module.Basis.repr_self, Finsupp.single_eq_same, one_mul] at h ⊢
      exact h.symm
  obtain ⟨h1, h2⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.ck_rootNum_eq_pairNum_on_flagPair O Ω K ι x ϖ hϖ d hM N V E E' hS K' ι' z hm hb _ _ hp hp'
    w w _ _ f g hfp
  obtain ⟨h3, h4⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.ck_rootNum_eq_pairNum_on_flagPair O Ω K ι x ϖ hϖ d hM N V₁ F F' (sameGeneric_dual hS hD hD')
    K' ι' z hm hb _ _ hF hF' w₁ w₁ _ _ _ _ hfp₁
  refine ⟨fun k hk1 hk2 q L Q hQ => ?_, fun j hj q L Q hQ a ha => ?_⟩
  · rw [h1 k hk1 hk2 q L Q hQ, h3 k hk1 hk2 q L Q hQ, Finset.mul_sum]
    refine Finset.sum_congr rfl fun μ hμ => ?_
    rw [pairNum_dual hϖ hB' hfp.vertical hk1 (by rw [length_classList _ hQ hμ]; omega)]
    ring
  · rw [h2 j _ (psum_isSymmetric _ _ j) (isHomogeneous_psum N j) hj q L Q hQ a ha,
      h4 j _ (psum_isSymmetric _ _ j) (isHomogeneous_psum N j) hj q L Q hQ a ha, Finset.mul_sum]
    refine Finset.sum_congr rfl fun μ hμ => ?_
    rw [root_dual hϖ hB' (b 0) ha (by rw [length_classList _ hQ hμ]; omega)]
    ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XRootnumDual =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualBundleIntersection =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualBundleIntersection", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XRootnumDual\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem ck_rootNum_dual : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (V₁ : Type) [AddCommGroup V₁] [Module Ω V₁] (β : V →ₗ[Ω] V₁ →ₗ[Ω] Ω) (E E' : ChartBundle O (mseg x) N V) (F F' : ChartBundle O (mseg x) N V₁), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → SameGeneric O x E E' → IsDualLat O x β E.lat F.lat → IsDualLat O x β E'.lat F'.lat → (∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → ck O x d N F F' k L Q = (-1) ^ k * ck O x d N E E' k L Q) ∧ ∀ (j : ℕ), j ≤ d → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d - j) → ∀ a : O, a ≠ 0 → rootNum O x d N F (psum (Fin N) ℤ j) L Q a = (-1) ^ j * rootNum O x d N E (psum (Fin N) ℤ j) L Q a :=
  @PositivityTheory.Xgn.t_rootnum_dual

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualBundleIntersection =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticePermuted =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticePermuted", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleIntersectionSymmetry\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DualBundleIntersection\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.SameGenericSymm\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementD\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamiliesGlueToBundle\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModelFacts\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineBundleChartGenericComparison\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleProduct\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.Num.RelK

section Lat

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] {n : ℕ} {Sg : Type}
  {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s)

theorem mem_vanSub {i : ℕ} {g : (Fin n → F) → Ω} : g ∈ vanSub Ω F n i ↔
    ∀ y : Fin n → F, (∀ j : Fin n, i ≤ (j : ℕ) → y j = 0) → g y = 0 := by
  simp [vanSub, Submodule.mem_pi]

theorem mem_kk {τ : Sg} {i : ℕ} {m : Fin (r τ) → Ω} :
    m ∈ D.kk τ i ↔ ∃ g, (g, m) ∈ D.Th τ ∧ g ∈ vanSub Ω F n i := by
  simp only [LieLatticeData.kk, AddSubgroup.mem_map, AddSubgroup.mem_inf, AddSubgroup.mem_prod]
  constructor
  · rintro ⟨⟨g, m'⟩, ⟨h1, h2, -⟩, rfl⟩
    exact ⟨g, h1, h2⟩
  · rintro ⟨g, h1, h2⟩
    exact ⟨(g, m), ⟨h1, h2, AddSubgroup.mem_top _⟩, rfl⟩

theorem mem_xId {χ : F → Ω} {i : Fin n} {c : Ω} : c ∈ D.xId χ i ↔
    ∃ g ∈ D.M, ∃ h ∈ vanSub Ω F n ((i : ℕ) + 1), g + h = c • fun y : Fin n → F => χ (y i) := by
  simp only [LieLatticeData.xId, AddSubgroup.mem_comap, AddSubgroup.mem_sup]
  rfl

theorem mem_stepGraph {τ : Sg} {χ : F → Ω} {i : Fin n} {c : Ω} {m : Fin (r τ) → Ω} :
    (c, m) ∈ D.stepGraph τ χ i ↔ ∃ g h, (g, m) ∈ D.Th τ ∧ h ∈ vanSub Ω F n ((i : ℕ) + 1) ∧
      g + h = c • fun y : Fin n → F => χ (y i) := by
  simp only [LieLatticeData.stepGraph, AddSubgroup.mem_comap, AddSubgroup.mem_sup]
  constructor
  · rintro ⟨⟨g, m'⟩, h1, ⟨h, m''⟩, h2, h3⟩
    have hz : m'' = 0 := (AddSubgroup.mem_prod.1 h2).2
    subst hz
    have e := congrArg Prod.fst h3
    have e' := congrArg Prod.snd h3
    simp at e e'
    subst e'
    exact ⟨g, h, h1, (AddSubgroup.mem_prod.1 h2).1, e⟩
  · rintro ⟨g, h, h1, h2, h3⟩
    refine ⟨(g, m), h1, (h, 0), AddSubgroup.mem_prod.2 ⟨h2, AddSubgroup.mem_bot.2 rfl⟩, ?_⟩
    simp [h3]

theorem mem_mulLat {V : Type} [AddCommGroup V] [Module Ω V] {c : Ω} {L : AddSubgroup V} {v : V} :
    v ∈ mulLat c L ↔ ∃ e ∈ L, v = c • e := by
  simp only [mulLat, AddSubgroup.mem_map, DistribSMul.toAddMonoidHom_apply]
  constructor
  · rintro ⟨e, he, rfl⟩; exact ⟨e, he, rfl⟩
  · rintro ⟨e, he, rfl⟩; exact ⟨e, he, rfl⟩

theorem mem_dotDual {R : Subalgebra o Ω} {N : ℕ} {L : AddSubgroup (Fin N → Ω)} {v : Fin N → Ω} :
    v ∈ dotDual R L ↔ ∀ l ∈ L, l ⬝ᵥ v ∈ R := by
  simp [dotDual, AddSubgroup.mem_iInf]

variable [Fintype F] {R : Subalgebra o Ω} {p : ℕ} {w : Ω}

theorem kk_zero (hb : D.Base R p w) (τ : Sg) : D.kk τ 0 = dotDual R (D.lie τ) := by
  ext m
  rw [mem_kk]
  constructor
  · rintro ⟨g, hg, -⟩
    exact ((hb.th τ).2.1 m).1 ⟨g, hg⟩
  · intro hm
    obtain ⟨g, hg⟩ := ((hb.th τ).2.1 m).2 hm
    refine ⟨g, hg, mem_vanSub.2 fun y hy => ?_⟩
    have : y = 0 := funext fun j => hy j (Nat.zero_le _)
    rw [this]
    exact (((hb.th τ).1 g).1 ⟨m, hg⟩).2

theorem kk_top (hb : D.Base R p w) (τ : Sg) : D.kk τ n = mulLat (p : Ω) (dotDual R (D.lie τ)) := by
  ext m
  rw [mem_kk, ← (hb.th τ).2.2 m]
  constructor
  · rintro ⟨g, hg, hv⟩
    have : g = 0 := funext fun y => mem_vanSub.1 hv y fun j hj => absurd j.2 (not_lt.2 hj)
    rwa [this] at hg
  · intro h
    exact ⟨0, h, (vanSub Ω F n n).zero_mem⟩

theorem kk_anti {i j : ℕ} (h : i ≤ j) (τ : Sg) : D.kk τ j ≤ D.kk τ i := by
  intro m hm
  obtain ⟨g, hg, hv⟩ := (mem_kk D).1 hm
  exact (mem_kk D).2 ⟨g, hg, mem_vanSub.2 fun y hy => mem_vanSub.1 hv y fun l hl => hy l (h.trans hl)⟩

theorem smul_mem_kk (hb : D.Base R p w) {τ : Sg} {i j : ℕ} (hi : i ≤ n) {m : Fin (r τ) → Ω}
    (hm : m ∈ D.kk τ j) : (p : Ω) • m ∈ D.kk τ i := by
  have h0 : m ∈ dotDual R (D.lie τ) := by
    rw [← kk_zero D hb τ]
    exact kk_anti D (Nat.zero_le j) τ hm
  exact kk_anti D hi τ (by rw [kk_top D hb τ]; exact mem_mulLat.2 ⟨m, h0, rfl⟩)

end Lat

section Step

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] [One F] [Fintype F]
  {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) {R : Subalgebra o Ω} {p : ℕ} {w : Ω}

theorem mem_of_mem_xId (hb : D.Base R p w) {χ : F → Ω} (h1 : χ 1 = 1) (h01 : (0 : F) ≠ 1)
    {i : Fin n} {c : Ω} (hc : c ∈ D.xId χ i) : c ∈ R := by
  classical
  obtain ⟨g, hg, h, hh, e⟩ := (mem_xId D).1 hc
  let y : Fin n → F := fun j => if j = i then 1 else 0
  have hy : h y = 0 := mem_vanSub.1 hh y fun j hj => by
    have : j ≠ i := fun hji => by
      rw [hji] at hj
      omega
    simp [y, this]
  have e' := congrFun e y
  have hyi : y i = 1 := by simp [y]
  simp only [Pi.add_apply, hy, add_zero, Pi.smul_apply, hyi, h1, smul_eq_mul, mul_one] at e'
  rw [← e']
  have := hb.M_le hg
  exact (AddSubgroup.mem_pi _).1 this y (Set.mem_univ _)

theorem exists_mul_mem_xId (hb : D.Base R p w) {χ : F → Ω} (hχ : ∀ a, χ a ∈ R) (i : Fin n) :
    ∃ m : ℕ, ∀ c ∈ R, (p : Ω) ^ m * c ∈ D.xId χ i := by
  obtain ⟨m, hm⟩ := hb.le_M
  refine ⟨m, fun c hc => (mem_xId D).2 ⟨_, hm (mem_mulLat.2 ⟨fun y => c * χ (y i), ?_, rfl⟩), 0,
    (vanSub Ω F n _).zero_mem, ?_⟩⟩
  · exact (AddSubgroup.mem_pi _).2 fun y _ => R.mul_mem hc (hχ _)
  · funext y
    simp [mul_assoc]

theorem step_facts (hb : D.Base R p w) {τ : Sg} {χ : F → Ω} (h0 : χ 0 = 0) {i : Fin n}
    {X : AddSubgroup Ω} (honto : (D.stepGraph τ χ i).map (AddMonoidHom.snd _ _) = D.kk τ i)
    (hinj : (D.stepGraph τ χ i).comap (AddMonoidHom.inl _ _) = X) :
    (∀ v m, (v, m) ∈ D.stepGraph τ χ i → v ∈ D.xId χ i ∧ m ∈ D.kk τ i) ∧
    (∀ v ∈ D.xId χ i, ∃ m, (v, m) ∈ D.stepGraph τ χ i) ∧
    (∀ m, (0, m) ∈ D.stepGraph τ χ i ↔ m ∈ D.kk τ ((i : ℕ) + 1)) ∧
    (∀ v, (v, 0) ∈ D.stepGraph τ χ i ↔ v ∈ X) ∧
    (∀ m ∈ D.kk τ i, ∃ v, (v, m) ∈ D.stepGraph τ χ i) := by
  refine ⟨fun v m h => ⟨?_, ?_⟩, fun v hv => ?_, fun m => ?_, fun v => ?_, fun m hm => ?_⟩
  · obtain ⟨g, h', hg, hh, e⟩ := (mem_stepGraph D).1 h
    exact (mem_xId D).2 ⟨g, (((hb.th τ).1 g).1 ⟨m, hg⟩).1, h', hh, e⟩
  · rw [← honto]
    exact ⟨(v, m), h, rfl⟩
  · obtain ⟨g, hg, h, hh, e⟩ := (mem_xId D).1 hv
    have hh0 : h 0 = 0 := mem_vanSub.1 hh 0 fun _ _ => rfl
    have e' := congrFun e 0
    simp only [Pi.add_apply, hh0, add_zero, Pi.smul_apply, Pi.zero_apply, h0, smul_zero] at e'
    obtain ⟨m, hm⟩ := ((hb.th τ).1 g).2 ⟨hg, e'⟩
    exact ⟨m, (mem_stepGraph D).2 ⟨g, h, hm, hh, e⟩⟩
  · rw [mem_stepGraph, mem_kk]
    constructor
    · rintro ⟨g, h, hg, hh, e⟩
      have : g = -h := by
        rw [zero_smul] at e
        exact eq_neg_of_add_eq_zero_left e
      exact ⟨g, hg, this ▸ (vanSub Ω F n _).neg_mem hh⟩
    · rintro ⟨g, hg, hv⟩
      exact ⟨g, -g, hg, (vanSub Ω F n _).neg_mem hv, by simp⟩
  · rw [← hinj]
    rfl
  · rw [← honto] at hm
    obtain ⟨⟨v, m'⟩, h, rfl⟩ := hm
    exact ⟨v, h⟩

end Step

section Line

variable {O Ω : Type} [CommRing O] [Field Ω] [Algebra O Ω] {K : Type} [Fintype K] {ι : K → Type}

theorem chartMon_smul (x : (Σ k, ι k) → Ω) (c : ∀ k, ι k) (a : K → ℤ) (p : ℕ) :
    chartMon x c ((p : ℤ) • a) = chartMon x c a ^ p := by
  simp only [chartMon, ← Finset.prod_pow]
  refine Finset.prod_congr rfl fun k _ => ?_
  rw [Pi.smul_apply, smul_eq_mul, mul_comm, zpow_mul, zpow_natCast]

theorem powSpan_line {R : Subalgebra O Ω} {p : ℕ} {X Y : AddSubgroup Ω} {e : Ω}
    (hX : ∀ v, v ∈ X ↔ ∃ a ∈ R, v = a * e) (hY : ∀ v, v ∈ Y ↔ ∃ a ∈ R, v = a * e ^ p) :
    Y = powSpan R p X := by
  apply le_antisymm
  · intro v hv
    obtain ⟨a, ha, rfl⟩ := (hY v).1 hv
    refine AddSubgroup.subset_closure ⟨a, ha, e ^ p, ⟨e, (hX e).2 ⟨1, R.one_mem, by simp⟩, rfl⟩, rfl⟩
  · refine (AddSubgroup.closure_le _).2 ?_
    rintro v ⟨a, ha, _, ⟨b, hb, rfl⟩, rfl⟩
    obtain ⟨t, ht, rfl⟩ := (hX b).1 hb
    exact (hY _).2 ⟨a * t ^ p, R.mul_mem ha (R.pow_mem ht p), by simp [mul_pow, mul_assoc]⟩

end Line

section Dot

variable {Ω : Type} [Field Ω]

noncomputable def dotB (N : ℕ) : (Fin N → Ω) →ₗ[Ω] (Fin N → Ω) →ₗ[Ω] Ω :=
  LinearMap.mk₂ Ω (fun a b => a ⬝ᵥ b) add_dotProduct smul_dotProduct dotProduct_add dotProduct_smul

theorem dotB_apply (N : ℕ) (a b : Fin N → Ω) : dotB N a b = a ⬝ᵥ b := rfl

theorem dotB_bijective (N : ℕ) : Function.Bijective (dotB (Ω := Ω) N).flip := by
  classical
  constructor
  · intro a b h
    funext i
    have := LinearMap.congr_fun h (Pi.single i 1)
    simpa [dotB_apply] using this
  · intro f
    refine ⟨fun i => f (Pi.single i 1), LinearMap.ext fun v => ?_⟩
    rw [LinearMap.flip_apply, dotB_apply]
    conv_rhs => rw [← Finset.univ_sum_single v]

    simp only [dotProduct, map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    have e : Pi.single i (v i) = v i • (Pi.single i 1 : Fin N → Ω) := by
      rw [← Pi.single_smul]
      simp
    rw [e, map_smul, smul_eq_mul]

end Dot

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ} (p : ℕ), p.Prime → ∀ (w : O) (χ : Sg → F → O) (φ : Equiv.Perm Sg) (D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s), IsLatticeFamily O x p w χ φ D → (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg x c ≠ 0 → (D c).Good₂ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg x c ≠ 0 → (D c).Facts (chartRing O (mseg x) c) p (algebraMap O Ω w) (fun τ a => algebraMap O Ω (χ τ a)) φ) → (∀ τ i, ∃ (u : Ω) (a : _ → ℤ), u ≠ 0 ∧ IsLine O x u a fun c => (D c).xId (fun a => algebraMap O Ω (χ τ a)) i) → ∀ (Xb : Sg → Fin n → ChartBundle O (mseg x) 1 Ω) (T : ChartBundle O (mseg x) 1 Ω), (∀ τ i c, mseg x c ≠ 0 → (Xb τ i).lat c = (D c).xId (fun a => algebraMap O Ω (χ τ a)) i) → IsLine O x 1 0 T.lat → ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → ∀ τ, ∀ (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (q : ℕ) (L : Fin q → K → ℤ) (Q : MvPolynomial (Fin q) ℤ), Q.IsHomogeneous (d + 1 - k) → (k : ℤ) * rootNum O x d (r (φ τ)) (Lie (φ τ)) (psum (Fin (r (φ τ))) ℤ (k - 1)) L Q (p : O) = (-1) ^ (k - 1) * ∑ i, (ck O x d 1 (Xb (φ τ) i) T k L Q - (p : ℤ) ^ k * ck O x d 1 (Xb τ i) T k L Q) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hmod F _ _ _ n Sg _ r s p hp w χ φ D hfam hG1 hG2 hF hline Xb T hXb
    hT Lie W Om OmHT hB τ k hk1 hk2 q L Q hQ
  have hinj : Function.Injective (algebraMap O Ω) := by
    obtain ⟨-, -, hc, -⟩ := hmod
    refine (injective_iff_map_eq_zero _).2 fun a ha => ?_
    have : a ∈ Ideal.comap (C : O →+* _) (mcIdeal O x) := by
      rw [Ideal.mem_comap]
      simp [mcIdeal, RingHom.mem_ker, GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.mcMap,
        MvPolynomial.algebraMap_apply, ha]
    rw [hc] at this
    simpa using this
  have hfc := _root_.GlobalTheory.CompanionTheory.Ar.Num.FamConstr.main O Ω K ι x hinj p hp w χ φ D hfam
  have hbase := hfam.base
  have hch := hfam.char
  have hp0 : (p : O) ≠ 0 := hch.1
  have hpΩ : algebraMap O Ω (p : O) = (p : Ω) := map_natCast _ _
  have hBa := _root_.GlobalTheory.CompanionTheory.Ar.Num.Cocycle.main O Ω K ι
  have hKK : ∀ i : ℕ, ∃ E : ChartBundle O (mseg x) (r (φ τ)) (Fin (r (φ τ)) → Ω),
      ∀ c, mseg x c ≠ 0 → E.lat c = (D c).kk (φ τ) i := fun i =>
    (_root_.GlobalTheory.CompanionTheory.Ar.Num.BundleOfFamily.main O Ω K ι x (r (φ τ)) _).1 _ ((hfc.2 (φ τ)).2.2.1 i)
      (fun c hc => (hG2 c hc).kk (φ τ) i)
  choose KK hKK using hKK

  have hSG : ∀ i j, i ≤ n → j ≤ n → SameGeneric O x (KK i) (KK j) := by
    intro i j hi hj c hc
    refine ⟨fun v hv => ⟨p, hp0, ?_⟩, fun v hv => ⟨p, hp0, ?_⟩⟩
    · rw [hKK i c hc] at hv
      rw [hKK j c hc, hpΩ]
      exact smul_mem_kk (D c) (hbase c hc) hj hv
    · rw [hKK j c hc] at hv
      rw [hKK i c hc, hpΩ]
      exact smul_mem_kk (D c) (hbase c hc) hi hv
  have hXT : ∀ (σ : Sg) (i : Fin n), SameGeneric O x (Xb σ i) T := by
    intro σ i c hc
    have hb := hbase c hc
    have hTc : ∀ v, v ∈ T.lat c ↔ v ∈ chartRing O (mseg x) c := by
      intro v
      rw [hT c hc v]
      simp [chartMon]
    have hχR : ∀ a, algebraMap O Ω (χ σ a) ∈ chartRing O (mseg x) c :=
      fun a => Subalgebra.algebraMap_mem _ _
    obtain ⟨m, hm⟩ := exists_mul_mem_xId (D c) hb hχR i
    refine ⟨fun v hv => ⟨1, one_ne_zero, ?_⟩, fun v hv => ⟨(p : O) ^ m, pow_ne_zero _ hp0, ?_⟩⟩
    · rw [hXb σ i c hc] at hv
      rw [map_one, one_smul, hTc]
      exact mem_of_mem_xId (D c) hb (by rw [(hch.2.2.2.2 σ).2, map_one]) hch.2.2.2.1 hv
    · rw [hXb σ i c hc, map_pow, hpΩ, smul_eq_mul]
      exact hm v ((hTc v).1 hv)
  have hstep : ∀ i : Fin n, ck O x d _ (KK i) (KK ((i : ℕ) + 1)) k L Q =
      ck O x d 1 (Xb (φ τ) i) T k L Q - (p : ℤ) ^ k * ck O x d 1 (Xb τ i) T k L Q := by
    intro i
    obtain ⟨u, a, hu, hl⟩ := hline τ i
    obtain ⟨PB, hPB⟩ := (_root_.GlobalTheory.CompanionTheory.Ar.BundleOps.main O Ω K ι x).2.2.1 (u ^ (p : ℤ)) ((p : ℤ) • a)
      (zpow_ne_zero _ hu)
    have hA : IsLine O x u a (Xb τ i).lat := fun c hc v => by
      rw [hXb τ i c hc]
      exact hl c hc v
    have hPBlat : ∀ c, mseg x c ≠ 0 → PB.lat c = powSpan (chartRing O (mseg x) c) p
        ((D c).xId (fun a => algebraMap O Ω (χ τ a)) i) := by
      intro c hc
      refine powSpan_line (e := u * chartMon x c a) (fun v => hl c hc v) (fun v => ?_)
      rw [hPB c hc v, chartMon_smul, zpow_natCast, mul_pow]
    obtain ⟨hPT, hpow⟩ := _root_.GlobalTheory.CompanionTheory.Ar.CkLinePow.main O Ω K ι x d hmod (Xb τ i) T PB u a (p : ℤ) hu hA hT
      (hXT τ i) hPB
    have hfacts := fun c (hc : mseg x c ≠ 0) => step_facts (D c) (hbase c hc) (τ := φ τ)
      (χ := fun a => algebraMap O Ω (χ (φ τ) a)) (i := i)
      (by rw [(hch.2.2.2.2 _).1, map_zero]) ((hF c hc).onto (φ τ) i) ((hF c hc).inj τ i)
    have hq : QuotEquiv O x (Xb (φ τ) i).lat PB.lat (KK i).lat (KK ((i : ℕ) + 1)).lat := by
      refine ⟨fun c => (D c).stepGraph (φ τ) (fun a => algebraMap O Ω (χ (φ τ) a)) i,
        ⟨((hfc.2 (φ τ)).2.1 i).2, fun c hc => ?_⟩, fun c hc => ?_⟩
      · obtain ⟨f1, f2, f3, f4, -⟩ := hfacts c hc
        rw [hXb _ i c hc, hKK (i : ℕ) c hc, hKK ((i : ℕ) + 1) c hc, hPBlat c hc]
        exact ⟨f1, f2, f3, fun v hv => (f4 v).2 hv⟩
      · obtain ⟨-, -, -, f4, f5⟩ := hfacts c hc
        rw [hKK (i : ℕ) c hc, hPBlat c hc]
        exact ⟨fun v hv => (f4 v).1 hv, f5⟩
    have hXP : SameGeneric O x (Xb (φ τ) i) PB := by
      intro c hc
      obtain ⟨f1, f2, f3, f4, -⟩ := hfacts c hc
      refine ⟨fun v hv => ⟨p, hp0, ?_⟩, fun v hv => ⟨1, one_ne_zero, ?_⟩⟩
      · rw [hXb _ i c hc] at hv
        rw [hPBlat c hc, hpΩ, ← f4]
        obtain ⟨m, hm⟩ := f2 v hv
        have hkm := (f1 v m hm).2
        have h1 : ((p : Ω) • v, (p : Ω) • m) ∈
            (D c).stepGraph (φ τ) (fun a => algebraMap O Ω (χ (φ τ) a)) i := by
          rw [Nat.cast_smul_eq_nsmul, Nat.cast_smul_eq_nsmul]
          exact nsmul_mem hm p
        have h2 := (f3 _).2 (smul_mem_kk (D c) (hbase c hc) (Nat.succ_le_of_lt i.2) hkm)
        have h3 := sub_mem h1 h2
        simpa using h3
      · rw [hPBlat c hc] at hv
        rw [map_one, one_smul, hXb _ i c hc]
        exact (f1 v 0 ((f4 v).2 hv)).1
    have hEq := _root_.GlobalTheory.CompanionTheory.Ar.Num.ck_eq_of_quotEquiv O Ω K ι x d 1 (r (φ τ)) Ω (Fin (r (φ τ)) → Ω) (Xb (φ τ) i) PB (KK i)
      (KK ((i : ℕ) + 1)) hmod hXP (hSG _ _ i.2.le (Nat.succ_le_of_lt i.2)) hq k hk1 hk2 q L Q hQ
    have hsym := GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.sameGeneric_symm O hPT
    have hc1 := (hBa x d 1 Ω (Xb (φ τ) i) T PB hmod (hXT _ i) hsym k hk1 hk2 q L Q hQ).1
    have hc2 := (hBa x d 1 Ω PB T PB hmod hPT hsym k hk1 hk2 q L Q hQ).2
    have hpw := hpow k hk1 hk2 q L Q hQ
    rw [← hEq, hc1, hc2, hpw]
    ring
  have htel : ∀ j, j ≤ n → ck O x d _ (KK 0) (KK j) k L Q =
      ∑ i ∈ Finset.range j, ck O x d _ (KK i) (KK (i + 1)) k L Q := by
    intro j
    induction j with
    | zero =>
      intro _
      have h00 := hSG 0 0 (Nat.zero_le _) (Nat.zero_le _)
      have := (hBa x d _ _ (KK 0) (KK 0) (KK 0) hmod h00 h00 k hk1 hk2 q L Q hQ).1
      simp only [Finset.range_zero, Finset.sum_empty]
      omega
    | succ j ih =>
      intro hj
      rw [Finset.sum_range_succ, ← ih (by omega)]
      exact (hBa x d _ _ (KK 0) (KK j) (KK (j + 1)) hmod (hSG _ _ (Nat.zero_le _) (by omega))
        (hSG _ _ (by omega) hj) k hk1 hk2 q L Q hQ).1
  have hd : IsDualLat O x (dotB (r (φ τ))) (Lie (φ τ)).lat (KK 0).lat := by
    refine ⟨dotB_bijective _, fun c hc v => ?_⟩
    rw [hKK 0 c hc, kk_zero (D c) (hbase c hc), mem_dotDual, (hB (φ τ) c hc).1]
    rfl
  have hrefl : SameGeneric O x (Lie (φ τ)) (Lie (φ τ)) := fun c _ =>
    ⟨fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩, fun v hv => ⟨1, one_ne_zero, by simpa using hv⟩⟩
  have hQ' : Q.IsHomogeneous (d - (k - 1)) := by
    have : d - (k - 1) = d + 1 - k := by omega
    rwa [this]
  have hdu := (_root_.GlobalTheory.CompanionTheory.Ar.Num.ck_rootNum_dual O Ω K ι x d (r (φ τ)) _ _ (dotB (r (φ τ))) (Lie (φ τ)) (Lie (φ τ)) (KK 0)
    (KK 0) hmod hrefl hd hd).2 (k - 1) (by omega) q L Q hQ' (p : O) hp0
  have hscale : ∀ c, mseg x c ≠ 0 → ∀ v, v ∈ (KK n).lat c ↔
      ∃ e ∈ (KK 0).lat c, v = algebraMap O Ω (p : O) • e := by
    intro c hc v
    rw [hKK n c hc, hKK 0 c hc, kk_top (D c) (hbase c hc), kk_zero (D c) (hbase c hc), hpΩ, mem_mulLat]
  have hBd := (_root_.GlobalTheory.CompanionTheory.Ar.Num.Constants.main O Ω K ι x d (r (φ τ)) _ (KK 0) (KK n) (p : O) hp0 hmod hscale k hk1 hk2
    q L Q hQ).1
  have hsum : ∑ i : Fin n, (ck O x d 1 (Xb (φ τ) i) T k L Q - (p : ℤ) ^ k * ck O x d 1 (Xb τ i) T k L Q) =
      ck O x d _ (KK 0) (KK n) k L Q := by
    rw [htel n le_rfl, ← Fin.sum_univ_eq_sum_range
      (fun i => ck O x d _ (KK i) (KK (i + 1)) k L Q) n]
    exact Finset.sum_congr rfl fun i _ => (hstep i).symm
  have hs : ((-1 : ℤ) ^ (k - 1)) * (-1) ^ (k - 1) = 1 := by
    rw [← mul_pow]
    simp
  rw [hsum, hBd, hdu]
  linear_combination (-(k : ℤ) * rootNum O x d (r (φ τ)) (Lie (φ τ)) (psum (Fin (r (φ τ))) ℤ (k - 1)) L Q (p : O)) * hs

end GlobalTheory.CompanionTheory.Ar.Num.RelK
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticePermuted =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeEigenSplit =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeEigenSplit", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleProduct\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.SameGenericSymm\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DvrBundleStatementD\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeLieBundleIntersection\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.InjectiveModPLatticeCharacterBound\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamiliesGlueToBundle\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeCharacterStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticePermuted\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModelFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.Num.GoodModel

theorem algebraMap_injective_of_model {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    {Ω : Type} [Field Ω] [Algebra O Ω] {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {x : (Σ k, ι k) → Ω} {d : ℕ}
    (h : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) :
    Function.Injective (algebraMap O Ω) := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro a ha
  have h3 := h.2.2.1
  have hmem : a ∈ (mcIdeal O x).comap (C : O →+* _) := by
    rw [Ideal.mem_comap]
    simp only [mcIdeal, RingHom.mem_ker, GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.mcMap]
    erw [MvPolynomial.aeval_C]
    rw [MvPolynomial.algebraMap_apply, ha, map_zero]
  rw [h3] at hmem
  simpa using hmem

theorem quotExact_congr {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω]
    {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {x : (Σ k, ι k) → Ω}
    {V V₁ V₂ : Type} [AddCommGroup V] [Module Ω V] [AddCommGroup V₁] [Module Ω V₁]
    [AddCommGroup V₂] [Module Ω V₂]
    {A A' A₂ A₂' : (∀ k, ι k) → AddSubgroup V} {B B' B₂ B₂' : (∀ k, ι k) → AddSubgroup V₁}
    {C C' C₂ C₂' : (∀ k, ι k) → AddSubgroup V₂}
    (hA : ∀ s, mseg x s ≠ 0 → A s = A₂ s) (hA' : ∀ s, mseg x s ≠ 0 → A' s = A₂' s)
    (hB : ∀ s, mseg x s ≠ 0 → B s = B₂ s) (hB' : ∀ s, mseg x s ≠ 0 → B' s = B₂' s)
    (hC : ∀ s, mseg x s ≠ 0 → C s = C₂ s) (hC' : ∀ s, mseg x s ≠ 0 → C' s = C₂' s)
    (h : QuotExact O x A A' B B' C C') : QuotExact O x A₂ A₂' B₂ B₂' C₂ C₂' := by
  obtain ⟨Γ, Δ, ⟨h1, h2⟩, ⟨h3, h4⟩, h5⟩ := h
  refine ⟨Γ, Δ, ⟨h1, fun s hs => ?_⟩, ⟨h3, fun s hs => ?_⟩, fun s hs => ?_⟩
  · have := h2 s hs
    rw [hA s hs, hA' s hs, hB s hs, hB' s hs] at this
    exact this
  · have := h4 s hs
    rw [hB s hs, hB' s hs, hC s hs, hC' s hs] at this
    exact this
  · have := h5 s hs
    rw [hA' s hs, hC s hs] at this
    exact this

theorem arith_first (a b c rw rp : ℤ) (P k : ℕ) (hP : 2 ≤ P) (e : a + b = c - (k : ℤ) * rw)
    (bd : ((P - 1 : ℕ) : ℤ) * rw = ((1 : ℕ) : ℤ) * rp) :
    (a : ℝ) + (b : ℝ) = (c : ℝ) - (k : ℝ) * (rp : ℝ) / ((P : ℝ) - 1) := by
  have hP1 : (P : ℝ) - 1 ≠ 0 := by
    have : (2 : ℝ) ≤ (P : ℝ) := by exact_mod_cast hP
    intro h0
    linarith
  have bdR : ((P : ℝ) - 1) * (rw : ℝ) = (rp : ℝ) := by
    have h1 := congrArg (Int.cast : ℤ → ℝ) bd
    have h2 : (((P - 1 : ℕ) : ℤ) : ℝ) = (P : ℝ) - 1 := by
      rw [Int.cast_natCast, Nat.cast_sub (by omega), Nat.cast_one]
    rw [Int.cast_mul, h2, Int.cast_mul] at h1
    simpa using h1
  have eR : (a : ℝ) + (b : ℝ) = (c : ℝ) - (k : ℝ) * (rw : ℝ) := by exact_mod_cast e
  rw [eR, ← bdR]
  field_simp

theorem arith_second {m : ℕ} (A B : Fin m → ℤ) (Λ : ℤ) (P k : ℕ) (hk : 1 ≤ k)
    (e : (k : ℤ) * Λ = (-1) ^ (k - 1) * ∑ i, (A i - (P : ℤ) ^ k * B i)) :
    (P : ℝ) ^ k * ((((-1) ^ k * ∑ i, B i : ℤ)) : ℝ) =
      ((((-1) ^ k * ∑ i, A i : ℤ)) : ℝ) + (k : ℝ) * (Λ : ℝ) := by
  obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by omega⟩
  have hz : (P : ℤ) ^ (j + 1) * ((-1) ^ (j + 1) * ∑ i, B i) =
      (-1) ^ (j + 1) * ∑ i, A i + ((j + 1 : ℕ) : ℤ) * Λ := by
    rw [e, Finset.sum_sub_distrib, ← Finset.mul_sum, Nat.add_sub_cancel]
    ring
  exact_mod_cast hz

theorem relations : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ} (p : ℕ), p.Prime → ∀ (w : O) (χ : Sg → F → O) (φ : Equiv.Perm Sg) (D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s), IsLatticeFamily O x p w χ φ D → (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg x c ≠ 0 → (D c).Good₂ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg x c ≠ 0 → (D c).Facts (chartRing O (mseg x) c) p (algebraMap O Ω w) (fun τ a => algebraMap O Ω (χ τ a)) φ) → (∀ τ i, ∃ (u : Ω) (a : _ → ℤ), u ≠ 0 ∧ IsLine O x u a fun c => (D c).xId (fun a => algebraMap O Ω (χ τ a)) i) → ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → CkRelations O x d p φ Lie W Om OmHT := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hM F _ _ _ n Sg _ r s p hp w χ φ D hD hG1 hG2 hF hX Lie W Om OmHT hB
  have inj : Function.Injective (algebraMap O Ω) := algebraMap_injective_of_model hM
  obtain ⟨hp0, ⟨u, hu, hwu⟩, -, h01, hχ⟩ := hD.char
  have hp2 : 2 ≤ p := hp.two_le
  have hw0 : w ≠ 0 := by
    rintro rfl
    rw [zero_pow (by omega)] at hwu
    exact hp0 (by simpa [hu.ne_zero] using hwu.symm)
  have hwΩ : algebraMap O Ω w ≠ 0 := (map_ne_zero_iff _ inj).2 hw0
  have hCD : ∀ c, CharData (chartRing O (mseg x) c) p (algebraMap O Ω w)
      (fun τ a => algebraMap O Ω (χ τ a)) := by
    intro c
    refine ⟨?_, Subalgebra.algebraMap_mem _ _, ?_, h01, fun τ => ⟨?_, ?_, fun a => Subalgebra.algebraMap_mem _ _⟩⟩
    · rw [← map_natCast (algebraMap O Ω)]
      exact (map_ne_zero_iff _ inj).2 hp0
    · obtain ⟨v, hv⟩ := hu.exists_left_inv
      refine ⟨algebraMap O Ω (v * w ^ (p - 2)), Subalgebra.algebraMap_mem _ _, ?_⟩
      rw [← map_natCast (algebraMap O Ω), ← map_mul]
      congr 1
      have : w ^ (p - 1) = w ^ (p - 2) * w := by
        rw [← pow_succ]; congr 1; omega
      calc (p : O) = v * (u * p) := by rw [← mul_assoc, hv, one_mul]
        _ = v * w ^ (p - 1) := by rw [hwu]
        _ = v * w ^ (p - 2) * w := by rw [this, mul_assoc]
    · simp [(hχ τ).1]
    · simp [(hχ τ).2]
  have hfc := _root_.GlobalTheory.CompanionTheory.Ar.Num.FamConstr.main O Ω K ι x inj p hp w χ φ D hD
  have hgb := fun c (hc : mseg x c ≠ 0) =>
    _root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodBaseChange.main (D c) (chartRing O (mseg x) c) p _ _ (hCD c) (hD.base c hc) (hG1 c hc)
  have hbf := _root_.GlobalTheory.CompanionTheory.Ar.Num.BundleOfFamily.main O Ω K ι x
  have hbo := _root_.GlobalTheory.CompanionTheory.Ar.BundleOps.main O Ω K ι x
  have hXb : ∀ τ i, ∃ E : ChartBundle O (mseg x) 1 Ω, ∀ c, mseg x c ≠ 0 →
      E.lat c = (D c).xId (fun a => algebraMap O Ω (χ τ a)) i := fun τ i =>
    (hbf 1 Ω).1 _ ((hfc.2 τ).2.1 i).1 (fun c hc => ((hgb c hc).1 τ).2.2.2 i)
  choose Xb hXb using hXb
  obtain ⟨T, hT⟩ := hbo.2.2.1 1 0 one_ne_zero
  obtain ⟨Tn, hTn⟩ := hbo.2.2.2.1 n (Fin n → Ω) (Pi.basisFun Ω (Fin n))
  have hTn' : ∀ c, mseg x c ≠ 0 → Tn.lat c = stdLat (chartRing O (mseg x) c) (Fin n) := by
    intro c hc
    ext v
    rw [hTn c hc v]
    simp [stdLat, AddSubgroup.mem_pi]
  have hH : ∀ τ, ∃ E : ChartBundle O (mseg x) n (Fin n → Ω), ∀ c, mseg x c ≠ 0 →
      E.lat c = (D c).hh (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a)) := fun τ =>
    (hbf n _).1 _ ((hfc.2 τ).2.2.2.2 hG1).1 (fun c hc => ((hgb c hc).1 τ).2.1)
  choose H hH using hH
  have hLa : ∀ τ, ∃ E : ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω),
      IsScaled x (algebraMap O Ω w)⁻¹ (Lie τ).lat E.lat := fun τ =>
    hbo.2.1 _ _ (Lie τ) _ (inv_ne_zero hwΩ)
  choose La hLa using hLa
  have hdiv : ∀ {m : ℕ} (L : AddSubgroup (Fin m → Ω)) (v : Fin m → Ω),
      v ∈ divLat (algebraMap O Ω w) L ↔ algebraMap O Ω w • v ∈ L := fun _ _ => Iff.rfl
  have hLa' : ∀ τ c, mseg x c ≠ 0 →
      (La τ).lat c = divLat (algebraMap O Ω w) ((Lie τ).lat c) := by
    intro τ c hc
    ext v
    rw [hLa τ c hc v]
    constructor
    · rintro ⟨e, he, rfl⟩
      rw [hdiv, smul_inv_smul₀ hwΩ]
      exact he
    · intro hv
      exact ⟨algebraMap O Ω w • v, (hdiv _ _).1 hv, (inv_smul_smul₀ hwΩ v).symm⟩
  have hSc : ∀ τ, IsScaled x (algebraMap O Ω w) (La τ).lat (Lie τ).lat := by
    intro τ c hc v
    rw [hLa' τ c hc]
    constructor
    · intro hv
      refine ⟨(algebraMap O Ω w)⁻¹ • v, ?_, (smul_inv_smul₀ hwΩ v).symm⟩
      rw [hdiv, smul_inv_smul₀ hwΩ]
      exact hv
    · rintro ⟨e, he, rfl⟩
      exact (hdiv _ _).1 he
  have hLW : ∀ τ, LatLE O x (Lie τ) (W τ) := by
    intro τ c hc
    rw [(hB τ c hc).1, (hB τ c hc).2.1]
    exact ((hD.base c hc).incl τ).1
  have hWLa : ∀ τ, LatLE O x (W τ) (La τ) := by
    intro τ c hc
    rw [hLa' τ c hc, (hB τ c hc).1, (hB τ c hc).2.1]
    exact ((hD.base c hc).incl τ).2.1
  have hOm : ∀ τ, SameGeneric O x (Om τ) (OmHT τ) := by
    intro τ c hc
    rw [(hB τ c hc).2.2.1, (hB τ c hc).2.2.2]
    have hi := (hD.base c hc).incl τ
    refine ⟨fun v hv => ⟨w, hw0, hi.2.2.2 hv⟩, fun v hv => ⟨1, one_ne_zero, ?_⟩⟩
    rw [map_one, one_smul]
    exact hi.2.2.1 hv
  have hRH := fun τ => GlobalTheory.T.model_over_mod_p_lattice_character O Ω K ι x d hM p hp w χ φ D hD hG1 hG2 hF hX Xb T
    (fun τ i c hc => hXb τ i c hc) hT τ (H τ) Tn (fun c hc => ⟨hH τ c hc, hTn' c hc⟩)
  have hSeq : ∀ τ, QuotExact O x (La τ).lat (W τ).lat (H τ).lat Tn.lat (Om τ).lat (OmHT τ).lat := by
    intro τ
    refine quotExact_congr ?_ ?_ ?_ ?_ ?_ ?_ (_root_.GlobalTheory.CompanionTheory.Ar.Num.RelSeq.relSeq O Ω K ι x inj p hp w χ φ D hD hG1 hF τ)
    · intro c hc; rw [hLa' τ c hc, (hB τ c hc).1]
    · intro c hc; rw [(hB τ c hc).2.1]
    · intro c hc; rw [hH τ c hc]
    · intro c hc; rw [hTn' c hc]
    · intro c hc; rw [(hB τ c hc).2.2.1]
    · intro c hc; rw [(hB τ c hc).2.2.2]
  intro k hk1 hk2 q L Q hQ
  refine ⟨fun τ => (((-1) ^ k * ∑ i, ck O x d 1 (Xb τ i) T k L Q : ℤ) : ℝ), fun τ => ?_, fun τ => ?_⟩
  · obtain ⟨Ew, hEw⟩ := hbo.2.1 _ _ (Lie τ) _ hwΩ
    have bd := ((_root_.GlobalTheory.CompanionTheory.Ar.Num.Constants.main O Ω K ι) x d (r τ) _ (Lie τ) Ew w hw0 hM hEw k hk1 hk2 q L Q hQ).2
      (p - 1) 1 (p : O) u hu (by omega) (by rw [pow_one]; exact hwu)
    have l61 := _root_.GlobalTheory.CompanionTheory.Ar.Num.HodgeTate.main O Ω K ι x d (r τ) (s τ) n _ _ _ (Lie τ) (W τ) (La τ) (Om τ) (OmHT τ) Tn (H τ)
      w hw0 hM (hLW τ) (hWLa τ) (hSc τ) (hOm τ) (hRH τ).1 (hSeq τ) k hk1 hk2 q L Q hQ
    rw [(hRH τ).2 k hk1 hk2 q L Q hQ] at l61
    exact arith_first _ _ _ _ _ p k hp2 l61 bd
  · exact arith_second _ _ _ p k hk1
      (_root_.GlobalTheory.CompanionTheory.Ar.Num.RelK.main O Ω K ι x d hM p hp w χ φ D hD hG1 hG2 hF hX Xb T
        (fun τ i c hc => hXb τ i c hc) hT Lie W Om OmHT hB τ k hk1 hk2 q L Q hQ)

end GlobalTheory.CompanionTheory.Ar.Num.GoodModel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeEigenSplit =====
