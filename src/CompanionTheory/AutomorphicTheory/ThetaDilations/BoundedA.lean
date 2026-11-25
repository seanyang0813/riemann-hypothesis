module

public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData
public import CompanionTheory.AutomorphicTheory.ThetaDilations.OrbitAdelic
public import CompanionTheory.AutomorphicTheory.ThetaDilations.ProdRho
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ReductionToSiegelDomain
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaAverageExpectedCount
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaAverageIntegralFormula
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionAutomorphy
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionCuspExpansion
public import Development.WeilBound.CoreStatements.ThetaDilations.IsOpenCoset
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.LatticeFundamentalDomainVolume
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.QuadraticLevelSetDensity
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.RealQuadraticFormLemma
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.SchurFunctionSmoothRightInvariant
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.SchurFunctionWhittakerEquivariant
import CompanionTheory.AutomorphicTheory.ThetaDilations.SqPosOfNe
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.FiniteAdeleTopology
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.MobiusActionUpperHalfPlane
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionGrowthBound
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionModularity
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaSeriesSummable
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilRepresentationQuadraticDatum
import CompanionTheory.AutomorphicTheory.ThetaDilations.FstarDil
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.StandardAdelicCharacter
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilOperatorIntegralInvariance

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.AutomorphicTheory.ThetaDilations.Bounded, CompanionTheory.AutomorphicTheory.ThetaDilations.BoundedA

-- ===== clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.Bounded =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.ThetaDilations.Bounded", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData\npublic import CompanionTheory.AutomorphicTheory.ThetaDilations.OrbitAdelic\npublic import CompanionTheory.AutomorphicTheory.ThetaDilations.ProdRho\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ReductionToSiegelDomain\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaAverageExpectedCount\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaAverageIntegralFormula\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionAutomorphy\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionCuspExpansion\npublic import Development.WeilBound.CoreStatements.ThetaDilations.IsOpenCoset\nimport CompanionTheory.AutomorphicTheory.ThetaDilations.SqPosOfNe\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.FiniteAdeleTopology\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.MobiusActionUpperHalfPlane\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionGrowthBound\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionModularity\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaSeriesSummable\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilRepresentationQuadraticDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Matrix Topology GlobalTheory.CompanionTheory.SW.Core
open scoped ENNReal NNReal MatrixGroups

noncomputable section

namespace CompanionTheory.PlacePermOperatorBicommutantSpan

open PositivityTheory.PlacePermOperatorBicommutantSpan (map_sum_sb sb_ind sb_int)

theorem bounded : ∀ (F : Type) [Field F] [NumberField F] [MeasurableSpace (A F)] [BorelSpace (A F)] (lf : Measure (A F)), lf.IsAddHaarMeasure → lf (Oh F) = 1 → ∀ ψ : AddChar (A F) ℂ, IsStdChar F ψ → ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (M : ℕ) (B : Matrix ι ι F) (ρ : InfinitePlace F → (F →+* ℝ)) (P : InfinitePlace F → Matrix ι ι ℝ), QSetup M B ρ P → 3 ≤ M → ∀ (Ω : Type) [MeasurableSpace Ω] (Pr : Measure Ω) (gf : Ω → Matrix ι ι (A F)) (gi : Ω → InfinitePlace F → Matrix ι ι ℝ), CountData M B ρ Pr gf gi → ∀ φ : (ι → A F) → ℂ, SB φ → ∃ C : ℝ, ∀ τ : InfinitePlace F → ℂ, (∀ w, 0 < (τ w).im) → wt M τ * ‖((∫ ω, theta B ρ P (gf ω) (gi ω) φ τ ∂Pr) - eis ψ lf B ρ P φ τ)‖ ≤ C := by
  intro F _ _ _ _ lf hlf h1 ψ hψ ι _ _ M B ρ P hQ hM Ω _ Pr gf gi hC φ hφ
  have H := _root_.GlobalTheory.CompanionTheory.SW.Core.SelfDual.naQuad F lf hlf h1 ψ hψ ι B hQ.2.2.1 hQ.2.2.2.1
  have hO := hC.2.2.2.1
  obtain ⟨𝒟, h𝒟⟩ : ∃ 𝒟 : ((ι → A F) → ℂ) → (InfinitePlace F → ℂ) → ℂ, ∀ φ τ,
    𝒟 φ τ = (∫ ω, theta B ρ P (gf ω) (gi ω) φ τ ∂Pr) - eis ψ lf B ρ P φ τ := ⟨_, fun _ _ => rfl⟩
  have hUD := fun ω => _root_.GlobalTheory.CompanionTheory.SW.ThetaUD.main F ψ hψ ι M B ρ P hQ _ _ (hO ω)
  have hei := _root_.GlobalTheory.CompanionTheory.SW.Core.EiInv.ei_inv F lf hlf h1 ψ hψ ι M B ρ P hQ hM
  have heb := _root_.GlobalTheory.CompanionTheory.SW.Core.EiBound.ei_bound F lf hlf h1 ψ hψ ι M B ρ P hQ hM
  have hti := _root_.GlobalTheory.CompanionTheory.SW.Core.ThetaIntegral.main F lf hlf h1 ψ hψ ι M B ρ P hQ Ω Pr gf gi hC
  have hsm : ∀ φ τ, SB φ → (∀ w, 0 < (τ w).im) → ∀ c : ℂ, 𝒟 (c • φ) τ = c * 𝒟 φ τ := fun φ τ hφ hτ c => by
    simp only [h𝒟, fun ω => (hUD ω φ τ).2.2 c, (hei φ hφ τ hτ).2.2.2 c, integral_const_mul, mul_sub]
  have good := good_ex hlf h1 hψ hQ (𝒟 := 𝒟) fun φ τ hφ hτ =>
    ⟨fun b => by simp only [h𝒟, fun ω => (hUD ω φ τ).1 b, (hei φ hφ τ hτ).1 b],
      fun a ha => by simp only [h𝒟, fun ω => (hUD ω φ τ).2.1 a ha, (hei φ hφ τ hτ).2.1 a ha],
      by simp only [h𝒟, mul_sub, ← integral_const_mul, (hei φ hφ τ hτ).2.2.1,
        fun ω => _root_.GlobalTheory.CompanionTheory.SW.ThW.thetaInvariance F lf hlf h1 ψ hψ ι M B ρ P hQ _ _ (hO ω) φ hφ τ hτ], hsm φ τ hφ hτ⟩
  have hadd : ∀ τ, (∀ w, 0 < (τ w).im) → ∀ φ φ', SB φ → SB φ' → 𝒟 (φ + φ') τ = 𝒟 φ τ + 𝒟 φ' τ := by
    intro τ hτ φ φ' hφ hφ'
    obtain ⟨w₀, hw₀⟩ := Finite.exists_min fun w => (τ w).im
    have e1 : ∀ ω, theta B ρ P (gf ω) (gi ω) (φ + φ') τ =
        theta B ρ P (gf ω) (gi ω) φ τ + theta B ρ P (gf ω) (gi ω) φ' τ := fun ω => by
      have hs := (_root_.GlobalTheory.CompanionTheory.SW.ThetaSum.theta_summable_and_ne_zero F ι M B ρ P hQ _ _ (hO ω) τ hτ).1
      rw [theta, theta, theta, ← (hs φ hφ).of_norm.tsum_add (hs φ' hφ').of_norm]
      simp only [thTerm, Pi.add_apply, add_mul]
    have e2 : ∀ b, eiTerm ψ lf B ρ P (φ + φ') τ b = eiTerm ψ lf B ρ P φ τ b + eiTerm ψ lf B ρ P φ' τ b := fun b => by
      rw [eiTerm, eiTerm, eiTerm, ← add_mul, fstar, fstar, fstar,
        ← integral_add (sb_int H.2.2.2.2.2 (sb_opU H _ hφ)) (sb_int H.2.2.2.2.2 (sb_opU H _ hφ'))]
      simp only [opU, Pi.add_apply, mul_add]
    obtain ⟨_, s1⟩ := heb φ hφ _ (hτ w₀)
    obtain ⟨_, s2⟩ := heb φ' hφ' _ (hτ w₀)
    simp only [h𝒟, e1, eis, e2, Pi.add_apply, integral_add (hti φ τ hφ hτ).1 (hti φ' τ hφ' hτ).1,
      (s1 τ hw₀).1.of_norm.tsum_add (s2 τ hw₀).1.of_norm]
    ring
  obtain ⟨S, κ, t, hκ, ht, hred⟩ := _root_.GlobalTheory.CompanionTheory.SW.Red.reduction F hQ.1 ρ hQ.2.2.2.2.1
  have hwt : ∀ τ : InfinitePlace F → ℂ, 0 ≤ wt M τ := fun τ => Finset.prod_nonneg fun _ _ => by positivity
  have hS : ∀ φ, SB φ → ∃ C : ℝ, 0 ≤ C ∧ ∀ τ : InfinitePlace F → ℂ, (∀ w, t ≤ (τ w).im) →
      (∀ v w, κ * (τ w).im ≤ (τ v).im) → wt M τ * ‖𝒟 φ τ‖ ≤ C := fun φ hφ => by
    obtain ⟨C₁, b1⟩ := _root_.GlobalTheory.CompanionTheory.SW.Core.ThetaBound.theta_integral_bound F ι M B ρ P hQ Ω Pr gf gi hC φ hφ κ t hκ ht
    obtain ⟨C₂, b2⟩ := heb φ hφ t ht
    refine ⟨|C₁| + |C₂|, by positivity, fun τ h2 h3 => ?_⟩
    have hτ : ∀ w, 0 < (τ w).im := fun w => ht.trans_le (h2 w)
    have h4 := (mul_le_mul_right (hti φ τ hφ hτ).2 _).trans (b1 τ h2 h3).2
    rw [← ENNReal.ofReal_mul (hwt τ)] at h4
    have h5 := (ENNReal.ofReal_le_ofReal_iff (abs_nonneg C₁)).1 (h4.trans (ENNReal.ofReal_le_ofReal (le_abs_self _)))
    have h6 : ‖𝒟 φ τ‖ ≤ ‖(∫ ω, theta B ρ P (gf ω) (gi ω) φ τ ∂Pr) - φ 0‖ + ∑' b, ‖eiTerm ψ lf B ρ P φ τ b‖ := by
      simp only [h𝒟, eis, ← sub_sub]
      exact (norm_sub_le _ _).trans (add_le_add le_rfl (norm_tsum_le_tsum_norm (b2 τ h2).1))
    refine (mul_le_mul_of_nonneg_left h6 (hwt τ)).trans ?_
    rw [mul_add]
    exact add_le_add h5 ((b2 τ h2).2.trans (le_abs_self _))
  choose T hT1 hT2 using good
  obtain ⟨L, s, C₀, hL, horb⟩ := orbit_adelic H hφ
  have := H.2.2.2.2.2.1
  have := H.2.2.2.2.2.2.1
  choose C hC0 hCb using fun (r : SL(2, F)) (a : ι → A F) => hS _ ((hT1 r).1 _ (sb_ind a hL))
  refine ⟨∑ r ∈ S, ∑ a ∈ s, |C₀| * C r a, fun τ hτ => ?_⟩
  rw [← h𝒟]
  obtain ⟨r, hr, k, hk, h2, h3⟩ := hred τ hτ
  have hmob := _root_.GlobalTheory.CompanionTheory.SW.Core.Mobius.main F ρ τ hτ
  obtain ⟨-, c, hc, e⟩ := horb (Matrix.SpecialLinearGroup.map (algebraMap F (A F)) k) (fun i j => ((_root_.GlobalTheory.CompanionTheory.SW.Core.AfTop.finiteAdele_topology F).2.2.2.2.2.2.1 (k i j)).2 (hk i j)) _ (hT1 k)
  have hτ' : ∀ w, 0 < (mob ρ (r * k) τ w).im := fun w => (hmob.1 _ w).2
  rw [← hT2 k φ τ hφ hτ, ← hT2 r _ _ ((hT1 k).1 φ hφ) fun w => (hmob.1 k w).2, ← hmob.2.1, e,
    map_sum_sb (hT1 r).2.2.1 (hT1 r).2.2.2.1 s c fun a => sb_ind a hL]
  have e2 := congrFun (map_sum_sb (T := fun φ _ => 𝒟 φ (mob ρ (r * k) τ))
    (fun φ φ' h h' => funext fun _ => hadd _ hτ' φ φ' h h') (fun c φ h => funext fun _ => hsm φ _ h hτ' c) s c
    fun a => (hT1 r).1 _ (sb_ind a hL)) 0
  rw [e2, Finset.sum_apply]
  refine le_trans ?_ (Finset.single_le_sum (f := fun r => ∑ a ∈ s, |C₀| * C r a)
    (fun r _ => Finset.sum_nonneg fun a _ => mul_nonneg (abs_nonneg _) (hC0 r a)) hr)
  refine (mul_le_mul_of_nonneg_left (norm_sum_le _ _) (hwt _)).trans ?_
  rw [Finset.mul_sum]
  refine Finset.sum_le_sum fun a _ => ?_
  rw [Pi.smul_apply, norm_smul, mul_left_comm]
  exact mul_le_mul ((hc a).trans (le_abs_self _)) (hCb r a _ h2 h3) (mul_nonneg (hwt _) (norm_nonneg _)) (abs_nonneg _)

end CompanionTheory.PlacePermOperatorBicommutantSpan
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.Bounded =====

-- ===== clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.BoundedA =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.ThetaDilations.BoundedA", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData\npublic import CompanionTheory.AutomorphicTheory.ThetaDilations.Bounded\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.LatticeFundamentalDomainVolume\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.QuadraticLevelSetDensity\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.RealQuadraticFormLemma\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.SchurFunctionSmoothRightInvariant\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.SchurFunctionWhittakerEquivariant\nimport CompanionTheory.AutomorphicTheory.ThetaDilations.FstarDil\nimport CompanionTheory.AutomorphicTheory.ThetaDilations.OrbitAdelic\nimport CompanionTheory.AutomorphicTheory.ThetaDilations.ProdRho\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.FiniteAdeleTopology\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.StandardAdelicCharacter\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionModularity\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilOperatorIntegralInvariance\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Matrix Topology GlobalTheory.CompanionTheory.SW.Core
open scoped ENNReal NNReal MatrixGroups

noncomputable section

namespace CompanionTheory.PlacePermOperatorBicommutantSpan

open PositivityTheory.PlacePermOperatorBicommutantSpan (ind ind_of_mem ind_of_not sb_homeo sb_ind)

theorem sb_indL {F : Type} [Field F] [NumberField F] {ι : Type} [Fintype ι] {a : ℕ} (ha : 0 < a) :
    SB (indL (F := F) (ι := ι) a) := by
  have := (_root_.GlobalTheory.CompanionTheory.SW.Core.AfTop.finiteAdele_topology F).2.2.1
  have ha' : (a : F) ≠ 0 := by exact_mod_cast ha.ne'
  have e : indL (F := F) (ι := ι) a = ind 0 (LN F ι 1) ∘ Homeomorph.smul (uA (Units.mk0 (a : F) ha')) := by
    funext u
    have h : (∀ i, (a : A F) * u i ∈ Oh F) ↔ uA (Units.mk0 (a : F) ha') • u - 0 ∈ LN F ι 1 := by
      rw [sub_zero]
      refine forall_congr' fun i => ?_
      have : (uA (Units.mk0 (a : F) ha') • u) i = (a : A F) * u i := by simp [uA, Units.smul_def]
      simp [this]
    by_cases hu : ∀ i, (a : A F) * u i ∈ Oh F
    · exact (Set.indicator_of_mem (s := {x : ι → A F | ∀ i, (a : A F) * x i ∈ Oh F}) hu _).trans
        (ind_of_mem (h.1 hu)).symm
    · exact (Set.indicator_of_notMem (s := {x : ι → A F | ∀ i, (a : A F) * x i ∈ Oh F}) hu _).trans
        (ind_of_not (mt h.2 hu)).symm
  exact e ▸ sb_homeo (sb_ind 0 (co_LN one_pos)) _

theorem bounded_a : ∀ (F : Type) [Field F] [NumberField F] [MeasurableSpace (A F)] [BorelSpace (A F)] (lf : Measure (A F)), lf.IsAddHaarMeasure → lf (Oh F) = 1 → ∀ ψ : AddChar (A F) ℂ, IsStdChar F ψ → ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (M : ℕ) (B : Matrix ι ι F) (ρ : InfinitePlace F → (F →+* ℝ)) (P : InfinitePlace F → Matrix ι ι ℝ), QSetup M B ρ P → 3 ≤ M → ∀ (Ω : Type) [MeasurableSpace Ω] (Pr : Measure Ω) (gf : Ω → Matrix ι ι (A F)) (gi : Ω → InfinitePlace F → Matrix ι ι ℝ), CountData M B ρ Pr gf gi → ∃ C : ℝ, ∀ a : ℕ, 0 < a → ∀ x : InfinitePlace F → ℝ, SB (indL (F := F) (ι := ι) a) ∧ ‖((∫ ω, theta B ρ P (gf ω) (gi ω) (indL a) (fun w => (x w : ℂ) + Complex.I) ∂Pr) - eis ψ lf B ρ P (indL a) (fun w => (x w : ℂ) + Complex.I))‖ ≤ C * (a : ℝ) ^ (Module.finrank ℚ F * M) := by
  intro F _ _ _ _ lf hlf h1 ψ hψ ι _ _ M B ρ P hQ hM Ω _ Pr gf gi hC
  obtain ⟨C, hb⟩ := bounded F lf hlf h1 ψ hψ ι M B ρ P hQ hM Ω Pr gf gi hC _ (sb_indL one_pos)
  refine ⟨C, fun a ha x => ⟨sb_indL ha, ?_⟩⟩
  have ha' : (a : F) ≠ 0 := by exact_mod_cast ha.ne'
  have haR : (0 : ℝ) < a := by exact_mod_cast ha
  have haC : (a : ℂ) ≠ 0 := by exact_mod_cast ha.ne'
  set τ : InfinitePlace F → ℂ := fun w => ((((a : ℝ) ^ 2)⁻¹ : ℝ) : ℂ) * ((x w : ℂ) + Complex.I) with hτ
  have him : ∀ w, (τ w).im = ((a : ℝ) ^ 2)⁻¹ := fun w => by simp only [hτ, Complex.im_ofReal_mul]; simp
  have hp : ∀ w, 0 < (τ w).im := fun w => by rw [him]; positivity
  have e1 : opD 1 (algebraMap F (A F) a) (indL (F := F) (ι := ι) 1) = indL a := by
    funext u
    have h : (∀ i, ((1 : ℕ) : A F) * (algebraMap F (A F) a • u) i ∈ Oh F) ↔ ∀ i, (a : A F) * u i ∈ Oh F := by
      simp only [Nat.cast_one, one_mul, Pi.smul_apply, smul_eq_mul, map_natCast]
    simp only [opD, indL, Set.indicator, Complex.ofReal_one, one_mul]
    classical
    convert if_congr h (rfl : (1 : ℂ) = 1) (rfl : (0 : ℂ) = 0)
  have e2 : (fun w => ((ρ w (a : F) : ℝ) : ℂ) ^ 2 * τ w) = fun w => (x w : ℂ) + Complex.I := by
    funext w; simp only [hτ, map_natCast]; push_cast; field_simp
  have e3 := fun ω => (_root_.GlobalTheory.CompanionTheory.SW.ThetaUD.main F ψ hψ ι M B ρ P hQ _ _ (hC.2.2.2.1 ω) (indL 1) τ).2.1 a ha'
  have e4 := (ei_inv F lf hlf h1 ψ hψ ι M B ρ P hQ hM _ (sb_indL one_pos) τ hp).2.1 a ha'
  rw [e1, e2] at e4
  simp only [e1, e2] at e3
  have h2 := hb τ hp
  have hcard : Fintype.card (InfinitePlace F) = Module.finrank ℚ F := by
    have := hQ.1
    rw [IsTotallyReal.finrank F, InfinitePlace.card_eq_nrRealPlaces_add_nrComplexPlaces,
      IsTotallyReal.nrComplexPlaces_eq_zero, add_zero]
  have hw : wt M τ = ((a : ℝ) ^ (Module.finrank ℚ F * M))⁻¹ := by
    simp only [wt, him, Real.sqrt_inv, Real.sqrt_sq haR.le, Finset.prod_const, Finset.card_univ, hcard, ← pow_mul,
      inv_pow, mul_comm M]
  simp only [e3, e4]
  rwa [hw, inv_mul_le_iff₀ (by positivity), mul_comm] at h2

theorem core : ∀ (F : Type) [Field F] [NumberField F], IsTotallyReal F → ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (M : ℕ), Fintype.card ι = 2 * M → 3 ≤ M → ∀ (B : Matrix ι ι F), B.IsSymm → B.det ≠ 0 → ∀ (ρ : InfinitePlace F → (F →+* ℝ)), (∀ w x, ((ρ w x : ℝ) : ℂ) = w.embedding x) → ∀ (Pm : InfinitePlace F → Matrix ι ι ℝ), (∀ w, (Pm w).PosDef) → (∀ w, Pm w * (B.map (ρ w))⁻¹ * Pm w = B.map (ρ w)) → ∀ [MeasurableSpace (FiniteAdeleRing (𝓞 F) F)] [BorelSpace (FiniteAdeleRing (𝓞 F) F)] (lf : Measure (FiniteAdeleRing (𝓞 F) F)), lf.IsAddHaarMeasure → lf {x | ∀ v, x v ∈ v.adicCompletionIntegers F} = 1 → ∀ (Ω : Type) [MeasurableSpace Ω] (Pr : Measure Ω) [IsProbabilityMeasure Pr] (ginf : Ω → InfinitePlace F → Matrix ι ι ℝ) (gf : Ω → Matrix ι ι (FiniteAdeleRing (𝓞 F) F)), (∀ w i j, Measurable fun ω => ginf ω w i j) → (∀ i j, Measurable fun ω => gf ω i j) → (∀ ω w, (ginf ω w)ᵀ * B.map (ρ w) * ginf ω w = B.map (ρ w)) → (∀ ω, (gf ω)ᵀ * B.map (algebraMap F (FiniteAdeleRing (𝓞 F) F)) * gf ω = B.map (algebraMap F (FiniteAdeleRing (𝓞 F) F))) → (∀ N : ℕ, 0 < N → ∃ C : ℝ, ∀ R : ℝ, 0 < R → ∫⁻ ω, ∑' x : {x : ι → F // x ≠ 0}, Set.indicator {x : ι → F | (∀ i v, ((N : FiniteAdeleRing (𝓞 F) F) * (gf ω *ᵥ fun j => algebraMap F (FiniteAdeleRing (𝓞 F) F) (x j)) i) v ∈ v.adicCompletionIntegers F) ∧ ∀ w, ‖ginf ω w *ᵥ fun j => ρ w (x j)‖ ≤ R} (fun _ => (1 : ℝ≥0∞)) x.1 ∂Pr ≤ ENNReal.ofReal (C * (R ^ (Module.finrank ℚ F * M) + R ^ (2 * Module.finrank ℚ F * M)))) → ∃ (C : ℝ) (Df : ℕ → FiniteAdeleRing (𝓞 F) F → ℝ) (Dinf : (InfinitePlace F → ℝ) → ℝ), (∀ a : ℕ, 0 < a → Continuous (Df a) ∧ (∀ y, 0 ≤ Df a y) ∧ ∀ U : Set (FiniteAdeleRing (𝓞 F) F), MeasurableSet U → (Measure.pi fun _ : ι => lf) {x | (∀ i v, ((a : FiniteAdeleRing (𝓞 F) F) * x i) v ∈ v.adicCompletionIntegers F) ∧ algebraMap F (FiniteAdeleRing (𝓞 F) F) (1 / 2) * (x ⬝ᵥ (B.map (algebraMap F (FiniteAdeleRing (𝓞 F) F)) *ᵥ x)) ∈ U} = ∫⁻ y in U, ENNReal.ofReal (Df a y) ∂lf) ∧ (Continuous Dinf ∧ (∀ y, 0 ≤ Dinf y) ∧ ∀ U : Set (InfinitePlace F → ℝ), MeasurableSet U → ∫⁻ x in {x : InfinitePlace F → ι → ℝ | (fun w => (1 / 2 : ℝ) * (x w ⬝ᵥ (B.map (ρ w) *ᵥ x w))) ∈ U}, ENNReal.ofReal (Real.exp (-Real.pi * ∑ w, x w ⬝ᵥ (Pm w *ᵥ x w))) = ∫⁻ y in U, ENNReal.ofReal (Dinf y)) ∧ ∀ a : ℕ, 0 < a → ∀ β : F, β ≠ 0 → ∃ I : ℝ≥0, ∫⁻ ω, ∑' x : {x : ι → F // (1 / 2 : F) * (x ⬝ᵥ (B *ᵥ x)) = β}, Set.indicator {x : ι → F | ∀ i v, ((a : FiniteAdeleRing (𝓞 F) F) * (gf ω *ᵥ fun j => algebraMap F (FiniteAdeleRing (𝓞 F) F) (x j)) i) v ∈ v.adicCompletionIntegers F} (fun x => ENNReal.ofReal (Real.exp (-Real.pi * ∑ w, (ginf ω w *ᵥ fun j => ρ w (x j)) ⬝ᵥ (Pm w *ᵥ (ginf ω w *ᵥ fun j => ρ w (x j)))))) x.1 ∂Pr = (I : ℝ≥0∞) ∧ |(I : ℝ) - (Real.sqrt |(discr F : ℝ)|)⁻¹ ^ (2 * M - 1) * Df a (algebraMap F (FiniteAdeleRing (𝓞 F) F) β) * Dinf (fun w => ρ w β)| ≤ C * (a : ℝ) ^ (Module.finrank ℚ F * M) := by
  intro F _ _ hF ι _ _ M hc hM B hB hdet ρ hρ P hP hPP _ _ lf hlf h1 Ω _ Pr _ gi gf m1 m2 o1 o2 hcnt
  have hQ : QSetup M B ρ P := ⟨hF, hc, hB, hdet, hρ, hP, hPP⟩
  have hC : CountData M B ρ Pr gf gi := ⟨inferInstance, m1, m2, fun ω => ⟨o2 ω, o1 ω⟩, hcnt⟩
  obtain ⟨ψ, hψ⟩ := (_root_.GlobalTheory.CompanionTheory.SW.Core.StdChar.main F).1
  obtain ⟨C, hb⟩ := bounded_a F lf hlf h1 ψ hψ ι M B ρ P hQ hM Ω Pr gf gi hC
  choose! Df d1 d2 d3 d4 d5 using _root_.GlobalTheory.CompanionTheory.SW.Core.Dens.density_main F lf hlf h1 ψ hψ ι M B ρ P hQ hM
  obtain ⟨Di, i1, i2, i3, i4, i5⟩ := _root_.GlobalTheory.CompanionTheory.SW.Core.Dens.density_of_q F ι M B ρ P hQ hM
  refine ⟨C, Df, Di, fun a ha => ⟨d1 a ha, d2 a ha, d3 a ha⟩, ⟨i1, i2, i3⟩, fun a ha β hβ => ?_⟩
  obtain ⟨-, -, -, -, -, -, hint, -, hK, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.Core.AfTop.finiteAdele_topology F
  have hs := sb_indL (F := F) (ι := ι) ha
  obtain ⟨N₁, p1, n1⟩ := _root_.GlobalTheory.CompanionTheory.SW.FstarPer.fstar_periodic F lf hlf h1 ψ hψ ι M B ρ P hQ _ hs
  have hq : Continuous (qf (hf F) (Bf B) : (ι → A F) → A F) := by unfold qf; fun_prop
  obtain ⟨N₂, p2, n2⟩ := hK _ ((hs.2.isCompact.image hq).insert (algebraMap F (A F) β))
  have hN : 0 < N₁ * N₂ := Nat.mul_pos p1 p2
  have hβN : ∃ r : 𝓞 F, (r : F) = ((N₁ * N₂ : ℕ) : F) * β := (hint _).1 (by
    rw [map_mul, map_natCast, Nat.cast_mul, mul_assoc]
    exact oh_mul (oh_nat N₁) (n2 _ (Set.mem_insert _ _)))
  obtain ⟨⟨D, hD⟩, -, -, hvol⟩ := _root_.GlobalTheory.CompanionTheory.SW.FD.main F hF ρ hρ _ hN
  obtain ⟨I, e1, j1, e2⟩ := _root_.GlobalTheory.CompanionTheory.SW.CoefTheta.fourier_coefficient F ι M B ρ P hQ Ω Pr gf gi hC a ha β hβ _ hN hβN (fun y hy => by
    rw [Nat.cast_mul, mul_assoc]
    refine oh_mul (oh_nat N₁) (n2 _ (Set.mem_insert_of_mem _ ⟨y, subset_tsupport _ ?_, rfl⟩))
    rw [Function.mem_support, indL, Set.indicator_of_mem (s := {x : ι → A F | ∀ i, (a : A F) * x i ∈ Oh F}) hy]
    exact one_ne_zero) D hD
  obtain ⟨j2, e3⟩ := _root_.GlobalTheory.CompanionTheory.SW.CoefEis.fourier_coeff_eis F lf hlf h1 ψ hψ ι M B ρ P hQ hM _ hs (d4 a ha) i4 β hβ _ hN hβN
    (fun x hx y => by
      rw [Nat.cast_mul, mul_assoc]
      exact (n1 _ (oh_mul (oh_nat N₂) hx)).2 y) D hD
  refine ⟨I, Eq.trans (lintegral_congr fun ω => tsum_congr fun x => ?_) e1, ?_⟩
  · by_cases hx : ∀ i, (a : A F) * (gf ω *ᵥ fun j => algebraMap F (A F) (x.1 j)) i ∈ Oh F
    · rw [Set.indicator_of_mem (by exact hx), thTerm, indL,
        Set.indicator_of_mem (s := {x : ι → A F | ∀ i, (a : A F) * x i ∈ Oh F}) hx, one_mul, ← ofReal_norm, gauss,
        Complex.norm_exp]
      congr 2
      simp [Finset.mul_sum]
    · rw [Set.indicator_of_notMem (by exact hx), thTerm, indL,
        Set.indicator_of_notMem (s := {x : ι → A F | ∀ i, (a : A F) * x i ∈ Oh F}) hx, zero_mul, enorm_zero]
  · have hk : 0 < kap F := inv_pos.2 (Real.sqrt_pos.2 (abs_pos.2 (by exact_mod_cast discr_ne_zero F)))
    have hsq : 0 < Real.sqrt |((Algebra.norm ℚ B.det : ℚ) : ℝ)| :=
      Real.sqrt_pos.2 (abs_pos.2 (by exact_mod_cast Algebra.norm_ne_zero_iff.2 hdet))
    set v : ℝ := ((N₁ * N₂ : ℕ) : ℝ) ^ Module.finrank ℚ F * (kap F)⁻¹ with hv
    have hv0 : 0 < v := by positivity
    have hvD : volume.real D = v := by rw [Measure.real, (hvol D hD).1, ENNReal.toReal_ofReal hv0.le]
    have h2 := norm_setIntegral_le_of_norm_le_const (μ := volume) (s := D)
      (f := fun x : InfinitePlace F → ℝ => (∫ ω, theta B ρ P (gf ω) (gi ω) (indL a) (fun w => (x w : ℂ) + Complex.I) ∂Pr) *
        Complex.exp (-(2 * (Real.pi : ℂ) * Complex.I) * ((∑ w, ρ w β * x w : ℝ) : ℂ)) -
        eis ψ lf B ρ P (indL a) (fun w => (x w : ℂ) + Complex.I) *
        Complex.exp (-(2 * (Real.pi : ℂ) * Complex.I) * ((∑ w, ρ w β * x w : ℝ) : ℂ)))
      (C := C * (a : ℝ) ^ (Module.finrank ℚ F * M)) (by rw [(hvol D hD).1]; exact ENNReal.ofReal_lt_top) fun x _ => by
        rw [← sub_mul, norm_mul, Complex.norm_exp]
        simpa using (hb a ha x).2
    rw [integral_sub j1 j2, e2, e3, d5 a ha, i5, hvD, show (volume D).toReal = v from hvD] at h2
    have e4 : ((v : ℝ) : ℂ) * ((I : ℝ) : ℂ) - ((N₁ * N₂ : ℕ) : ℂ) ^ Module.finrank ℚ F *
        ((kap F ^ (2 * M - 2) * (Real.sqrt |((Algebra.norm ℚ B.det : ℚ) : ℝ)|)⁻¹ * Df a (algebraMap F (A F) β) : ℝ) : ℂ) *
        ((Real.sqrt |((Algebra.norm ℚ B.det : ℚ) : ℝ)| * Di (fun w => ρ w β) : ℝ) : ℂ) =
        ((v * ((I : ℝ) - kap F ^ (2 * M - 1) * Df a (algebraMap F (A F) β) * Di fun w => ρ w β) : ℝ) : ℂ) := by
      rw [← Complex.ofReal_natCast, ← Complex.ofReal_pow, ← Complex.ofReal_mul, ← Complex.ofReal_mul,
        ← Complex.ofReal_mul, ← Complex.ofReal_sub, show 2 * M - 1 = 2 * M - 2 + 1 by omega, pow_succ, hv]
      congr 1
      field_simp
    rw [e4, Complex.norm_real, Real.norm_eq_abs, abs_mul, abs_of_pos hv0, mul_comm v] at h2
    exact le_of_mul_le_mul_right h2 hv0

end CompanionTheory.PlacePermOperatorBicommutantSpan
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.BoundedA =====
