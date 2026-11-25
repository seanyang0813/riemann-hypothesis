module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.Precomp
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.TwistingSheafOneChartEqPreimageStandardChart
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeCocycleClassIndependent
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeCocycleClosed
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConeLift
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeLiftRatioMemIdeal
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SupremumTwistingOpensEqTop, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RSubOneMem

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SupremumTwistingOpensEqTop =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SupremumTwistingOpensEqTop", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.Precomp\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.TwistingSheafOneChartEqPreimageStandardChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.ConeCover

attribute [local instance] MvPolynomial.gradedAlgebra

theorem main : ∀ {R : Type} [CommRing R] {X : Scheme.{0}} (D : E.LineData X) (N : ℕ)
    (i : X ⟶ ReciprocityTheory.ChartRestriction.G.Geo.Tor.PSpace R N), IsTautologicalLineAt D N i → sSup (𝒱D D) = ⊤ := by
  intro R _ X D N i h
  obtain ⟨-, s, hs, -⟩ := h
  rw [eq_top_iff]
  intro x _
  obtain ⟨j, hj⟩ := GlobalTheory.ProjSpace.exists_mem_chart R N (i x)
  haveI : IsOpenImmersion (chart R N j) := by
    unfold chart
    infer_instance
  have hmem : (pullback.fst i (chart R N j)).opensRange ∈ 𝒱D D :=
    ⟨(pullback.fst i (chart R N j)).isoOpensRange.inv ≫ s j, by
      rw [Category.assoc, hs, Scheme.Hom.isoOpensRange_inv_comp]⟩
  refine TopologicalSpace.Opens.mem_sSup.2 ⟨_, hmem, ?_⟩
  have e : (chart R N j).opensRange = GlobalTheory.ProjSpace.chart R N j := Proj.opensRange_awayι _ _ _ _
  have hr : i x ∈ ((chart R N j).opensRange : Set _) := by
    rw [e]
    exact hj
  rw [Scheme.Hom.coe_opensRange] at hr
  show x ∈ ((pullback.fst i (chart R N j)).opensRange : Set X)
  rw [Scheme.Hom.coe_opensRange, Scheme.Pullback.range_fst]
  exact hr

end GlobalTheory.CompanionTheory.ConeCover
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SupremumTwistingOpensEqTop =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RSubOneMem =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RSubOneMem", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.Precomp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeCocycleClassIndependent\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeCocycleClosed\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConeLift\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SupremumTwistingOpensEqTop\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeLiftRatioMemIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

theorem dpow_mem_pdP {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) (n : ℕ) {x : B} (hx : x ∈ J) :
    δ.dpow n x ∈ pdP δ n :=
  Ideal.subset_span ⟨[(n, x)], by simpa using hx, by simp, by simp⟩

theorem dividedPowerFiltration_anti {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) {r r' : ℕ} (h : r ≤ r') :
    pdP δ r' ≤ pdP δ r :=
  Ideal.span_le.2 fun _ ⟨l, hl, hr, hz⟩ => Ideal.subset_span ⟨l, hl, h.trans hr, hz⟩

theorem plogK_congr {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) {s s' : ℕ} (h : s ≤ s')
    (hs : pdP δ s = ⊥) {x : B} (hx : x ∈ J) : plogK δ s x = plogK δ s' x := by
  unfold plogK
  refine Finset.sum_subset (Finset.range_mono h) fun k _ hk => ?_
  have hk' : s ≤ k + 1 := by simp at hk; omega
  have hm : δ.dpow (k + 1) x ∈ pdP δ s := dividedPowerFiltration_anti δ hk' (dpow_mem_pdP δ _ hx)
  rw [hs, Ideal.mem_bot] at hm
  rw [hm, mul_zero]

theorem plogK_mem {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) (s : ℕ) {x : B} (hx : x ∈ J) :
    plogK δ s x ∈ J :=
  Ideal.sum_mem _ fun k _ => Ideal.mul_mem_left _ _ (δ.dpow_mem (Nat.succ_ne_zero k) hx)

section K
variable {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

theorem r_sub_one_mem {C : Type 1} [Category.{0} C] {g : C ⥤ Thick (smFun X q)} {D : E.LineData X} (Λ : CLiftK g D)
    (σ : ComposableArrows C 2) : ((Λ.r σ : (g.obj (σ.obj (Fin.last 2))).B) - 1) ∈ (g.obj (σ.obj (Fin.last 2))).J := _root_.GlobalTheory.CompanionTheory.ConeUnit.r_sub_one Λ σ


omit [CharZero K] in
theorem zK_precomp {C C' : Type 1} [Category.{0} C] [Category.{0} C'] {g : C ⥤ Thick (smFun X q)} {D : E.LineData X}
    (Λ : CLiftK g D) (h : C' ⥤ C) (s : ℕ) :
    zK (Λ.precomp h) s = (CH.Mor.restrict (g ⋙ O (smFun X q)) h).pullC 2 (zK Λ s) := by
  funext σ
  rfl

end K

theorem lift_exists {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (D : E.LineData X)
    (s : ℕ) : Nonempty (CLiftK (KS q s (𝒱D D)).ι D) := _root_.GlobalTheory.CompanionTheory.ConeLiftEx.nonempty_cLiftK q D s

theorem sSup_𝒱D {R : Type} [CommRing R] {X : Scheme.{0}} (D : E.LineData X) (N : ℕ)
    (i : X ⟶ ReciprocityTheory.ChartRestriction.G.Geo.Tor.PSpace R N) (h : IsTautologicalLineAt D N i) : sSup (𝒱D D) = ⊤ := _root_.GlobalTheory.CompanionTheory.ConeCover.main D N i h

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RSubOneMem =====
