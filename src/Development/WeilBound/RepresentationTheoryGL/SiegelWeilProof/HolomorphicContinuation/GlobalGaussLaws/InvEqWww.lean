module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.LinearAlgebra.Complex.FiniteDimensional
public import Mathlib.MeasureTheory.Constructions.BorelSpace.Complex
public import Mathlib.MeasureTheory.Constructions.Pi
public import Mathlib.MeasureTheory.Measure.Haar.OfBasis
public import Mathlib.MeasureTheory.Measure.WithDensity
public import Mathlib.MeasureTheory.Measure.Haar.Unique
public import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.ContinuousBw
public import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.LocCellT
public import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.LocalL2IsometryAlt
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HalfTrAddSwap
public import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.PsiInnerSIns
public import Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.SiegelWeilUnitarySchrodinger
public import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.ContinuousInsT
public import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.PlaceFacts
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaLiftEisensteinLevelSubgroup
import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.EvXTemperate
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar
import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.PsiEqOfFin
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.FibFact, Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.IntegrableRho, Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.SchDecay, Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.FtLocEqKer, Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.ContinuousKer, Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.CompAtSubSIns, Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.InvEqWww

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.FibFact =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.FibFact", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.LinearAlgebra.Complex.FiniteDimensional\npublic import Mathlib.MeasureTheory.Constructions.BorelSpace.Complex\npublic import Mathlib.MeasureTheory.Constructions.Pi\npublic import Mathlib.MeasureTheory.Measure.Haar.OfBasis\npublic import Mathlib.MeasureTheory.Measure.WithDensity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Measure.Haar.Unique\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped ENNReal NNReal

namespace PositivityTheory.Rg.Sw.Glob.Fib

variable {m n : ℕ} {X : Type*} [AddCommGroup X] [TopologicalSpace X] [IsTopologicalAddGroup X] [MeasurableSpace X]
  [BorelSpace X]

theorem fib_meas (μ : Measure X) [μ.IsAddRightInvariant] (π : X →+ (Fin m → Fin n → ℂ)) (hπ : Continuous π)
    (s : (Fin m → Fin n → ℂ) →+ X) (hπs : ∀ u, π (s u) = u) (g : X → ℝ≥0∞) (hg : Measurable g)
    (hgs : ∀ z u, g (z + s u) = g z)
    (hloc : ∀ K : Set (Fin m → Fin n → ℂ), IsCompact K → ∫⁻ z, K.indicator 1 (π z) * g z ∂μ ≠ ∞) :
    ∃ c : ℝ≥0, (μ.withDensity g).map π = c • (volume : Measure (Fin m → Fin n → ℂ)) := by
  set ν : Measure (Fin m → Fin n → ℂ) := (μ.withDensity g).map π with hν
  have hπm : Measurable π := hπ.measurable
  have hint : ∀ a : (Fin m → Fin n → ℂ) → ℝ≥0∞, Measurable a → ∫⁻ u, a u ∂ν = ∫⁻ z, a (π z) * g z ∂μ := by
    intro a ha
    rw [hν, lintegral_map ha hπm]
    have e := lintegral_withDensity_eq_lintegral_mul μ hg (ha.comp hπm)
    simp only [Function.comp_def] at e
    rw [e]
    congr 1; ext z; simp [mul_comm]
  have hinv : ν.IsAddLeftInvariant := by
    refine ⟨fun u => ?_⟩
    ext A hA
    rw [Measure.map_apply (measurable_const_add u) hA, ← lintegral_indicator_one (measurable_const_add u hA),
      ← lintegral_indicator_one hA, hint _ (measurable_one.indicator (measurable_const_add u hA)),
      hint _ (measurable_one.indicator hA)]
    have key : ∀ z, ((fun x => u + x) ⁻¹' A).indicator 1 (π z) * g z =
        (fun z => A.indicator 1 (π z) * g z) (z + s u) := by
      intro z
      simp only [map_add (f := _), hπs, hgs]
      congr 1
      by_cases h : u + π z ∈ A
      · simp [Set.indicator, h, add_comm]
      · simp [Set.indicator, h, add_comm]
    simp_rw [key]
    exact lintegral_add_right_eq_self (fun z => A.indicator 1 (π z) * g z) (s u)
  have hfc : IsFiniteMeasureOnCompacts ν := by
    refine ⟨fun K hK => ?_⟩
    rw [← lintegral_indicator_one hK.measurableSet, hint _ (measurable_one.indicator hK.measurableSet)]
    exact (hloc K hK).lt_top
  have : (volume : Measure (Fin n → ℂ)).IsAddHaarMeasure := Measure.pi.isAddHaarMeasure _
  have : (volume : Measure (Fin m → Fin n → ℂ)).IsAddHaarMeasure := Measure.pi.isAddHaarMeasure _
  exact ⟨Measure.addHaarScalarFactor ν volume, Measure.isAddLeftInvariant_eq_smul ν volume⟩

end PositivityTheory.Rg.Sw.Glob.Fib
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.FibFact =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.IntegrableRho =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.IntegrableRho", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.ContinuousBw\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaLiftEisensteinLevelSubgroup\nimport Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.EvXTemperate\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.FibFact\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.PsiEqOfFin\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel GlobalTheory.StdUnn
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace PositivityTheory.Rg.Sw.Glob.FTH

open PositivityTheory.Rg.Sw.Glob.FTP
open Classical

variable {D : D7} {n m : ℕ}

def rr (m n : ℕ) : ℝ := ((Module.finrank ℝ (Fin m → Fin n → ℂ) + 1 : ℕ) : ℝ)

theorem integrable_rho : Integrable (fun u : Fin m → Fin n → ℂ => (1 + ‖u‖) ^ (-rr m n)) := by
  have : (volume : Measure (Fin n → ℂ)).IsAddHaarMeasure := Measure.pi.isAddHaarMeasure _
  have : (volume : Measure (Fin m → Fin n → ℂ)).IsAddHaarMeasure := Measure.pi.isAddHaarMeasure _
  apply integrable_one_add_norm
  unfold rr; push_cast; linarith


set_option synthInstance.maxHeartbeats 400000 in
theorem hloc_away {θ : InfFam D} (hθ : IsInfFam θ) {τ : D.what₂.Tau} {fr : Matrix (Fin m) (Fin m) ℂ}
    (μ : Measure (Mx D m n)) [μ.IsAddHaarMeasure] {Ψ : Mx D m n → ℂ} (hΨ : AwayCls θ τ fr Ψ)
    (K : Set (Fin m → Fin n → ℂ)) (hK : IsCompact K) :
    ∫⁻ z, K.indicator 1 (piF θ τ fr z) * ‖Ψ z‖ₑ ∂μ ≠ ∞ := by
  obtain ⟨S, hS⟩ := gs_sch (m := m) (n := n) 1 one_pos
  have hmem := hΨ.2 (gs 1) ⟨S, funext hS⟩
  have hI := GlobalTheory.RegSch.CentreWeilComm.integrable_of_mem hθ μ ⟨_, hmem⟩
  rcases K.eq_empty_or_nonempty with rfl | hne
  · simp
  have hgc : Continuous fun u : Fin m → Fin n → ℂ => ‖gs (n := n) 1 u‖ :=
    continuous_norm.comp (S.continuous.congr fun u => hS u)
  obtain ⟨u0, -, hu0⟩ := hK.exists_isMinOn hne hgc.continuousOn
  have hδ : 0 < ‖gs (n := n) 1 u0‖ := norm_pos_iff.2 (Complex.exp_ne_zero _)
  have hle : ∀ z, K.indicator 1 (piF θ τ fr z) * ‖Ψ z‖ₑ ≤
      ENNReal.ofReal (‖gs (n := n) 1 u0‖)⁻¹ * ‖tens θ τ fr (gs 1) Ψ z‖ₑ := by
    intro z
    by_cases hz : piF θ τ fr z ∈ K
    · rw [Set.indicator_of_mem hz, Pi.one_apply, one_mul]
      have h1 : tens θ τ fr (gs 1) Ψ z = gs (n := n) 1 (piF θ τ fr z) * Ψ z := rfl
      rw [h1, enorm_mul, ← mul_assoc]
      conv_lhs => rw [← one_mul ‖Ψ z‖ₑ]
      gcongr
      rw [← ofReal_norm_eq_enorm, ← ENNReal.ofReal_mul (inv_nonneg.2 hδ.le), ← ENNReal.ofReal_one]
      apply ENNReal.ofReal_le_ofReal
      rw [← div_eq_inv_mul, one_le_div hδ]
      exact hu0 hz
    · rw [Set.indicator_of_notMem hz, zero_mul]; exact zero_le
  refine ne_top_of_le_ne_top ?_ (lintegral_mono hle)
  rw [lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
  exact ENNReal.mul_ne_top ENNReal.ofReal_ne_top hI.hasFiniteIntegral.ne



theorem hint_int {θ : InfFam D} (hθ : IsInfFam θ) {V : HSp D} {τ : D.what₂.Tau}
    {fr : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hdet : IsUnit fr.det) (μ : Measure (Mx D V.rank n)) [μ.IsAddHaarMeasure]
    {Ψ : Mx D V.rank n → ℂ} (hΨ : AwayCls θ τ fr Ψ) {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ)
    (x : Mx D V.rank n) :
    Integrable (fun z => (1 + ‖piF θ τ fr z‖) ^ (-rr V.rank n) * ‖Bw ψ V θ τ fr Ψ x z‖) μ := by
  have := GlobalTheory.Doubling.isTopologicalRing_tens (F := D.host.F) (E := D.host.E) (R := AF D.host.F)
  have : BorelSpace (Mx D V.rank n) := ⟨rfl⟩
  have hΨc := cont_of_away hθ hΨ
  have hπ := continuous_piF (n := n) hθ τ fr
  obtain ⟨c, hc⟩ := Fib.fib_meas μ (piF θ τ fr) hπ (sIns τ fr) (piF_sIns hθ τ hdet) (fun z => ‖Ψ z‖ₑ)
    hΨc.enorm.measurable (fun z u => by simp only [away_add hθ hΨ]) (hloc_away hθ μ hΨ)
  have hρc : Continuous fun u : Fin V.rank → Fin n → ℂ => (1 + ‖u‖) ^ (-rr V.rank n) :=
    (continuous_const.add continuous_norm).rpow_const fun u => Or.inl (add_pos_of_pos_of_nonneg one_pos (norm_nonneg u)).ne'
  refine ⟨((hρc.comp hπ).mul (continuous_Bw hθ hψ hΨ x).norm).aestronglyMeasurable, ?_⟩
  unfold HasFiniteIntegral
  have e1 : ∀ z, ‖(1 + ‖piF θ τ fr z‖) ^ (-rr V.rank n) * ‖Bw ψ V θ τ fr Ψ x z‖‖ₑ =
      ENNReal.ofReal ((1 + ‖piF θ τ fr z‖) ^ (-rr V.rank n)) * ‖Ψ z‖ₑ := by
    intro z
    rw [enorm_mul, norm_Bw hψ, ← ofReal_norm_eq_enorm, ← ofReal_norm_eq_enorm (Ψ z), Real.norm_of_nonneg (Real.rpow_nonneg (by positivity) _),
      enorm_norm, ofReal_norm_eq_enorm]
  simp_rw [e1]
  have e2 : ∫⁻ z, ENNReal.ofReal ((1 + ‖piF θ τ fr z‖) ^ (-rr V.rank n)) * ‖Ψ z‖ₑ ∂μ =
      ∫⁻ u, ENNReal.ofReal ((1 + ‖u‖) ^ (-rr V.rank n)) ∂((μ.withDensity fun z => ‖Ψ z‖ₑ).map (piF θ τ fr)) := by
    rw [lintegral_map (f := fun u : Fin V.rank → Fin n → ℂ => ENNReal.ofReal ((1 + ‖u‖) ^ (-rr V.rank n)))
      (ENNReal.measurable_ofReal.comp hρc.measurable) hπ.measurable]
    have e := lintegral_withDensity_eq_lintegral_mul μ hΨc.enorm.measurable
      ((ENNReal.measurable_ofReal.comp hρc.measurable).comp hπ.measurable)
    simp only [Function.comp_def] at e
    rw [e]
    congr 1; ext z; simp [mul_comm]
  rw [e2, hc, lintegral_smul_measure]
  refine ENNReal.mul_lt_top ENNReal.coe_lt_top ?_
  have hI := (integrable_rho (m := V.rank) (n := n)).hasFiniteIntegral
  refine lt_of_le_of_lt (le_of_eq ?_) hI
  congr 1; ext u
  rw [← ofReal_norm_eq_enorm, Real.norm_of_nonneg (Real.rpow_nonneg (by positivity) _)]

end PositivityTheory.Rg.Sw.Glob.FTH
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.IntegrableRho =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.SchDecay =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.SchDecay", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.IntegrableRho\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.LocCellT\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.PsiEqOfFin\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel GlobalTheory.StdUnn
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace PositivityTheory.Rg.Sw.Glob.FTH

open PositivityTheory.Rg.Sw.Glob.FTP
open Classical

variable {D : D7} {n m : ℕ}

def Pk (μ : Measure (Mx D m n)) (π : Mx D m n → (Fin m → Fin n → ℂ)) (B : Mx D m n → ℂ) (κ : ℂ) : Prop :=
  ∀ a : (Fin m → Fin n → ℂ) → ℂ, Measurable a → (∃ C, ∀ u, ‖a u‖ ≤ C * (1 + ‖u‖) ^ (-rr m n)) →
    ∫ z, a (π z) * B z ∂μ = κ * ∫ u, a u

def kap (μ : Measure (Mx D m n)) (π : Mx D m n → (Fin m → Fin n → ℂ)) (B : Mx D m n → ℂ) : ℂ :=
  Classical.epsilon (Pk μ π B)


theorem kap_spec {θ : InfFam D} (hθ : IsInfFam θ) {V : HSp D} {τ : D.what₂.Tau}
    {fr : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hdet : IsUnit fr.det) (μ : Measure (Mx D V.rank n)) [μ.IsAddHaarMeasure]
    {Ψ : Mx D V.rank n → ℂ} (hΨ : AwayCls θ τ fr Ψ) {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ)
    (x : Mx D V.rank n) :
    Pk μ (piF θ τ fr) (Bw ψ V θ τ fr Ψ x) (kap μ (piF θ τ fr) (Bw ψ V θ τ fr Ψ x)) := by
  have := GlobalTheory.Doubling.isTopologicalRing_tens (F := D.host.F) (E := D.host.E) (R := AF D.host.F)
  have : BorelSpace (Mx D V.rank n) := ⟨rfl⟩
  apply Classical.epsilon_spec
  have hρc : Continuous fun u : Fin V.rank → Fin n → ℂ => (1 + ‖u‖) ^ (-rr V.rank n) :=
    (continuous_const.add continuous_norm).rpow_const fun u => Or.inl (add_pos_of_pos_of_nonneg one_pos (norm_nonneg u)).ne'
  exact LocCellT.tauFact μ (piF θ τ fr) (continuous_piF hθ τ fr) (sIns τ fr)
    (fun z u => by rw [map_add (piF θ τ fr), piF_sIns hθ τ hdet]) (Bw ψ V θ τ fr Ψ x)
    (continuous_Bw hθ hψ hΨ x).measurable (fun z u => Bw_add hθ hdet ψ hΨ x z u)
    (fun u => (1 + ‖u‖) ^ (-rr V.rank n)) hρc (fun u => Real.rpow_pos_of_pos (by positivity) _)
    (hint_int hθ hdet μ hΨ hψ x)

theorem sch_decay (f : (Fin m → Fin n → ℂ) → ℂ) (hf : IsSch f) :
    ∃ C, ∀ u, ‖f u‖ ≤ C * (1 + ‖u‖) ^ (-rr m n) := by
  obtain ⟨S, rfl⟩ := hf
  set k : ℕ := Module.finrank ℝ (Fin m → Fin n → ℂ) + 1 with hk
  refine ⟨2 ^ k * (Finset.Iic (k, 0)).sup (schwartzSeminormFamily ℂ (Fin m → Fin n → ℂ) ℂ) S, fun u => ?_⟩
  have h := SchwartzMap.one_add_le_sup_seminorm_apply (𝕜 := ℂ) (m := (k, 0)) le_rfl le_rfl S u
  rw [norm_iteratedFDeriv_zero] at h
  have hpos : 0 < (1 + ‖u‖) ^ k := by positivity
  have e : (1 + ‖u‖) ^ (-rr m n) = ((1 + ‖u‖) ^ k)⁻¹ := by
    rw [rr, Real.rpow_neg (by positivity), Real.rpow_natCast]
  rw [e, ← div_eq_mul_inv, le_div_iff₀ hpos, mul_comm]
  exact h

end PositivityTheory.Rg.Sw.Glob.FTH
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.SchDecay =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.FtLocEqKer =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.FtLocEqKer", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.ContinuousBw\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.LocalL2IsometryAlt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HalfTrAddSwap\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.PsiInnerSIns\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel GlobalTheory.StdUnn
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open Formalism.IndefR.Eqv (psiT eq_thetaC)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace PositivityTheory.Rg.Sw.Glob.FTH

open PositivityTheory.Rg.Sw.Glob.FTP
open Classical

variable {D : D7} {n m : ℕ}

def ker (ε : Fin m → Bool) (t : ℝ) (v u : Fin m → Fin n → ℂ) : ℂ :=
  Complex.exp (Complex.I * ((2 * t : ℝ) : ℂ) * (((Matrix.of v)ᴴ * Matrix.diagonal (sgn ε) * Matrix.of u).trace.re : ℂ))



theorem integrand_eq {θ : InfFam D} (hθ : IsInfFam θ) {ψ : AddChar (AF D.host.F) ℂ} {l : D.what₂.Tau → ℝ}
    (hl : HasRealPar ψ θ l) {V : HSp D} {τ : D.what₂.Tau} {s : D.what₂.Tau → Matrix (Fin V.rank) (Fin V.rank) ℂ}
    {ε : Fin V.rank → Bool} {fr : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hfr : IsTauFrame V τ s ε fr)
    (f : (Fin V.rank → Fin n → ℂ) → ℂ) (Ψ : Mx D V.rank n → ℂ) (x y : Mx D V.rank n) :
    tens θ τ fr f Ψ y * ψ (trA (Matrix.trace (inner V x y))) =
      (f (piF θ τ fr y) * ker ε (tLoc l τ) (piF θ τ fr x) (piF θ τ fr y)) * Bw ψ V θ τ fr Ψ x y := by
  have hsplit : inner V x y = inner V x (y - sIns τ fr (piF θ τ fr y)) + inner V x (sIns τ fr (piF θ τ fr y)) := by
    rw [← GlobalTheory.CompanionTheory.EisCovar.Weyl.inner_add_right, sub_add_cancel]
  have hψ2 : ψ (trA (Matrix.trace (inner V x y))) =
      ψ (trA (Matrix.trace (inner V x (y - sIns τ fr (piF θ τ fr y))))) *
        ψ (trA (Matrix.trace (inner V x (sIns τ fr (piF θ τ fr y))))) := by
    rw [hsplit, Matrix.trace_add, GlobalTheory.CompanionTheory.EisCovar.Weyl.trA_add, AddChar.map_add_eq_mul]
  rw [hψ2, psi_inner_sIns hθ hl hfr]
  have hp : (fr⁻¹ * compAt θ τ y : Matrix (Fin V.rank) (Fin n) ℂ) = piF θ τ fr y := rfl
  unfold Bw tens ker
  rw [hp]
  ring

end PositivityTheory.Rg.Sw.Glob.FTH
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.FtLocEqKer =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.ContinuousKer =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.ContinuousKer", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.SchDecay\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.FtLocEqKer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel GlobalTheory.StdUnn
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace PositivityTheory.Rg.Sw.Glob.FTH

open PositivityTheory.Rg.Sw.Glob.FTP
open Classical

variable {D : D7} {n m : ℕ}

theorem norm_ker (ε : Fin m → Bool) (t : ℝ) (v u : Fin m → Fin n → ℂ) : ‖ker ε t v u‖ = 1 := by
  unfold ker
  rw [show Complex.I * ((2 * t : ℝ) : ℂ) * ((((Matrix.of v)ᴴ * Matrix.diagonal (sgn ε) * Matrix.of u).trace.re : ℝ) : ℂ) =
      ((2 * t * ((Matrix.of v)ᴴ * Matrix.diagonal (sgn ε) * Matrix.of u).trace.re : ℝ) : ℂ) * Complex.I by
    push_cast; ring]
  exact Complex.norm_exp_ofReal_mul_I _

theorem continuous_ker (ε : Fin m → Bool) (t : ℝ) (v : Fin m → Fin n → ℂ) : Continuous (ker ε t v) := by
  unfold ker
  refine Complex.continuous_exp.comp (continuous_const.mul (Complex.continuous_ofReal.comp
    (Complex.continuous_re.comp ?_)))
  have h2 : Continuous fun u : Fin m → Fin n → ℂ => Matrix.of u := continuous_id
  have h : Continuous fun u : Fin m → Fin n → ℂ => ((Matrix.of v)ᴴ * Matrix.diagonal (sgn ε) * Matrix.of u) :=
    continuous_const.matrix_mul h2
  exact h.matrix_trace

def Aw (ψ : AddChar (AF D.host.F) ℂ) (V : HSp D) (θ : InfFam D) (τ : D.what₂.Tau)
    (fr : Matrix (Fin V.rank) (Fin V.rank) ℂ) (μ : Measure (Mx D V.rank n)) (Ψ : Mx D V.rank n → ℂ) :
    Mx D V.rank n → ℂ :=
  fun x => kap μ (piF θ τ fr) (Bw ψ V θ τ fr Ψ x)



theorem weyl_tens {θ : InfFam D} (hθ : IsInfFam θ) {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ)
    {l : D.what₂.Tau → ℝ} (hl : HasRealPar ψ θ l) {V : HSp D} {τ : D.what₂.Tau}
    {s : D.what₂.Tau → Matrix (Fin V.rank) (Fin V.rank) ℂ} {ε : Fin V.rank → Bool}
    {fr : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hfr : IsTauFrame V τ s ε fr) {χ : (AE D)ˣ →* Circle}
    (μ : Measure (Mx D V.rank n)) [μ.IsAddHaarMeasure] {ω : G D n →* Module.End ℂ (schwartzA θ V.rank n)}
    (hω : IsWeilSch ψ χ θ V μ ω) (w : G D n) (hw : mat w = blk4 0 1 (-1) 0) (Ψ : Mx D V.rank n → ℂ)
    (hΨ : AwayCls θ τ fr Ψ) (f : (Fin V.rank → Fin n → ℂ) → ℂ) (hf : IsSch f) :
    (ω w ⟨tens θ τ fr f Ψ, hΨ.2 f hf⟩).1 =
      tens θ τ fr (fun u => 1 * ftLoc ε (tLoc l τ) f u) (Aw ψ V θ τ fr μ Ψ) := by
  funext x
  rw [hω.weyl w hw]
  have e1 : ∀ y, (⟨tens θ τ fr f Ψ, hΨ.2 f hf⟩ : schwartzA θ V.rank n).1 y * ψ (trA (Matrix.trace (inner V x y))) =
      (fun u => f u * ker ε (tLoc l τ) (piF θ τ fr x) u) (piF θ τ fr y) * Bw ψ V θ τ fr Ψ x y :=
    fun y => integrand_eq hθ hl hfr f Ψ x y
  simp_rw [e1]
  obtain ⟨S, hS⟩ := hf
  have hfc : Continuous f := hS ▸ S.continuous
  obtain ⟨C, hC⟩ := sch_decay f ⟨S, hS⟩
  have hk := kap_spec hθ hfr.1 μ hΨ hψ x (fun u => f u * ker ε (tLoc l τ) (piF θ τ fr x) u)
    ((hfc.mul (continuous_ker ε (tLoc l τ) (piF θ τ fr x))).measurable)
    ⟨C, fun u => by rw [norm_mul, norm_ker, mul_one]; exact hC u⟩
  rw [hk]
  simp only [tens, Aw, one_mul]
  rw [mul_comm]
  rfl

end PositivityTheory.Rg.Sw.Glob.FTH
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.ContinuousKer =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.CompAtSubSIns =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.CompAtSubSIns", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.SiegelWeilUnitarySchrodinger\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.ContinuousInsT\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.PlaceFacts\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.PsiInnerSIns\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel GlobalTheory.StdUnn
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open Formalism.IndefR.Eqv (psiT eq_thetaC mat_ext psiT_sigR finPart_sigR)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace PositivityTheory.Rg.Sw.Glob.FTH

open PositivityTheory.Rg.Sw.Glob.FTP
open Classical

variable {D : D7} {n m : ℕ}


theorem compAt_sub_sIns {θ : InfFam D} (hθ : IsInfFam θ) {τ : D.what₂.Tau} {fr : Matrix (Fin m) (Fin m) ℂ}
    (hdet : IsUnit fr.det) (y : Mx D m n) :
    (y - sIns τ fr (piF θ τ fr y)).map (psiT D τ) = 0 := by
  have hp : Matrix.of (piF θ τ fr y) = fr⁻¹ * compAt θ τ y := rfl
  rw [Matrix.map_sub (psiT D τ) (fun a b => map_sub (psiT D τ) a b), ← PlaceFactsH.compAt_eq_psiT hθ,
    ← PlaceFactsH.compAt_eq_psiT hθ, show sIns (D := D) τ fr (piF θ τ fr y) = insT τ (fr * Matrix.of (piF θ τ fr y)) from rfl,
    compAt_insT hθ, if_pos rfl, hp, ← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hdet, Matrix.one_mul, sub_self]



theorem inner_away {θ : InfFam D} (hθ : IsInfFam θ) {V : HSp D} {τ : D.what₂.Tau} (x x' z : Mx D V.rank n)
    (hx : ∀ τ', τ' ≠ τ → compAt θ τ' x = compAt θ τ' x') (hf : x.map (finPart D) = x'.map (finPart D))
    (hz : z.map (psiT D τ) = 0) : inner V x z = inner V x' z := by
  apply mat_ext D
  · intro τ''
    rw [map_inner, map_inner]
    by_cases h : τ'' = τ
    · subst h; rw [hz, Matrix.mul_zero, Matrix.mul_zero, Matrix.mul_zero]
    · have := hx τ'' h
      rw [eq_thetaC D hθ] at this
      change x.map (psiT D τ'') = x'.map (psiT D τ'') at this
      rw [this]
  · have ha : (adj x).map (finPart D) = (adj x').map (finPart D) := by
      ext i j
      simp only [adj, Matrix.map_apply, Matrix.transpose_apply, cA]
      rw [finPart_sigR, finPart_sigR]
      congr 1
      exact congrFun (congrFun hf j) i
    show (adj x * (gA V * z)).map (finPart D) = (adj x' * (gA V * z)).map (finPart D)
    rw [Matrix.map_mul, ha, ← Matrix.map_mul]

end PositivityTheory.Rg.Sw.Glob.FTH
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.CompAtSubSIns =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.InvEqWww =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.InvEqWww", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.ContinuousKer\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HalfTrAddSwap\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.CompAtSubSIns\nimport Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.PlaceFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel GlobalTheory.StdUnn
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open Formalism.IndefR.Eqv (psiT eq_thetaC)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace PositivityTheory.Rg.Sw.Glob.FTH

open PositivityTheory.Rg.Sw.Glob.FTP PositivityTheory.Rg.Sw.Glob.PlaceFactsH
open Classical

variable {D : D7} {n m : ℕ}

theorem Aw_away {θ : InfFam D} (hθ : IsInfFam θ) {V : HSp D} {τ : D.what₂.Tau}
    {fr : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hdet : IsUnit fr.det) (ψ : AddChar (AF D.host.F) ℂ)
    (μ : Measure (Mx D V.rank n)) (Ψ : Mx D V.rank n → ℂ) (x x' : Mx D V.rank n)
    (hx : ∀ τ', τ' ≠ τ → compAt θ τ' x = compAt θ τ' x') (hf : x.map (finPart D) = x'.map (finPart D)) :
    Aw ψ V θ τ fr μ Ψ x = Aw ψ V θ τ fr μ Ψ x' := by
  have e : Bw ψ V θ τ fr Ψ x = Bw ψ V θ τ fr Ψ x' := by
    funext y
    unfold Bw
    rw [inner_away hθ x x' _ hx hf (compAt_sub_sIns hθ hdet y)]
  unfold Aw
  rw [e]


theorem mat_ww (w : G D n) (hw : mat w = blk4 0 1 (-1) 0) : mat (w * w) = blk4 (-1) 0 0 (-1) := by
  rw [mat_mul', hw, submatrix_fromBlocks_mul]
  simp


theorem inv_eq_www (w : G D n) (hw : mat w = blk4 0 1 (-1) 0) : w⁻¹ = w * w * w := by
  apply mat_inj
  rw [GlobalTheory.CompanionTheory.EisCovar.Weyl.mat_inv_eq w hw, mat_mul', mat_ww w hw, hw, submatrix_fromBlocks_mul]
  simp

end PositivityTheory.Rg.Sw.Glob.FTH
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.GlobalGaussLaws.InvEqWww =====
