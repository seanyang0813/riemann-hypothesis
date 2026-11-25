module

import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IndicatorHomSelfDualComponentsSchwartzBruhat
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValueDoubleUnif
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IndicatorFunctionIdentity
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleThetaUnfoldingEquivariantUnitaryGroups
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleUnfoldingStepAtGluedFinitePlace
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GluedPlaceSourceConstantProof
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlacesToAdeles
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.SmallPair
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RamifiedOperatorBijectiveFiniteTranslationCombin
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValueDoubleExact
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RamifiedOperatorsBijectiveAtPlaces
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DataAsCombinationsAtSplitPlacesProof
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeVacuumIffPlacewise
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OverAllExists
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualLatticePrescribedFinitelyManySplitPlaces
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.VacOfShape
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsBiSmooth
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsQuasiFam
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.BesselThetaContractionExtendByZeroVacuumSmooth
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.BiVacuumOperatorZeroOrLeftInvertible
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.BilinearVacuumCentralCharacter
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ContractionOfVacuumCombinationsProof
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepEqTwoThetaColumnLiftsStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroAtSplitPlacesProof
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlatMapPreservesVacuumProof
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LevelPrimeLawLastTwoStepsAllTuplesStatement
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.DualLiftInvariance
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DualLatticeCosetIndicatorIsSchwartzBruhat
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceMatrixOfIsNonarchimedeanLocalField
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FourierPairingPairCharIndicatorCosetIndicator
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FourierPairingPairCharIndicatorDualLatticeIndica
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GluedLatticeFiniteExpansionsLocalFieldStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceLineComponentsContraction
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceLinearModelLatticeVacuumBase
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField
import Development.AbelianVarietyTheory.Proofs.HeightProofs.EmbeddingXiZeroNeZero
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsClopenIsCompactMapsPair
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HomLatticeIndicatorOnSplitHalfEqHalfIndicatorStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IndicatorHomSelfDualComponentsSchwartzBruhatStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualSplitComponentIsLatticeStabilizerEq
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceBaseVacuumDatumExistsUniqueStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceChangeBaseVacuumHeisenbergCombination
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceDataDistinctPlacesCommuteStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceHermitianFrameProperties

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GluedPlaceDoubleStepExactSignedConstant, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepSmallPairsValueAllGluedSplitPlacesProo, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.VacuumChangeAtSplitPlacesProof, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLevelPrimeLawDoubleStep, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLevelPrimeLawDoubleStepStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawLevelPrimeLawAllTuples

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GluedPlaceDoubleStepExactSignedConstant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GluedPlaceDoubleStepExactSignedConstant", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValueDoubleUnif\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IndicatorFunctionIdentity\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleThetaUnfoldingEquivariantUnitaryGroups\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleUnfoldingStepAtGluedFinitePlace\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GluedPlaceSourceConstantProof\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.DualLiftInvariance\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DualLatticeCosetIndicatorIsSchwartzBruhat\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceMatrixOfIsNonarchimedeanLocalField\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FourierPairingPairCharIndicatorCosetIndicator\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FourierPairingPairCharIndicatorDualLatticeIndica\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GluedLatticeFiniteExpansionsLocalFieldStatement\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlacesToAdeles\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceLineComponentsContraction\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceLinearModelLatticeVacuumBase\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.EmbeddingXiZeroNeZero\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsClopenIsCompactMapsPair\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil ValuativeRel IsLocalRing
open scoped TensorProduct Pointwise
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer lastPair cosetInd InDual mainDatum)
open GlobalTheory.FinPl.Comm (fpair)
open GlobalTheory.FinPl.Vertex

namespace GlobalTheory.FinPl.VertexExactCount

section Count

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  {n : Type} [Fintype n] [DecidableEq n]

theorem card_withLat_smul (g : GL n k) (L : Submodule 𝒪[k] (n → k)) :
    (withLat (g • L)).card = (withLat L).card := by
  refine Finset.card_bij (fun P _ => g⁻¹ • P) ?_ ?_ ?_
  · intro P hP
    rw [mem_withLat] at hP ⊢
    rw [Pair.smul_lat, hP, inv_smul_smul]
  · intro P _ P' _ h
    exact MulAction.injective g⁻¹ h
  · intro P hP
    refine ⟨g • P, ?_, inv_smul_smul g P⟩
    rw [mem_withLat] at hP ⊢
    rw [Pair.smul_lat, hP]

theorem card_withLat_eq (Q Q₀ : Pair k n) : (withLat Q.lat).card = (withLat Q₀.lat).card := by
  obtain ⟨g, hg⟩ := MulAction.exists_smul_eq (GL n k) Q₀ Q
  rw [← hg, Pair.smul_lat, card_withLat_smul]

theorem card_withLat_pos (Q : Pair k n) : 0 < (withLat Q.lat).card :=
  Finset.card_pos.2 ⟨Q, mem_withLat.2 rfl⟩


open Classical in
def pairCount (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (n : Type) [Fintype n] [DecidableEq n] : ℕ :=
  if h : Nonempty (Pair k n) then (withLat h.some.lat).card else 1

theorem pairCount_pos : 0 < pairCount k n := by
  unfold pairCount
  split_ifs with h
  · exact card_withLat_pos _
  · exact one_pos

theorem card_withLat_eq_pairCount (Q : Pair k n) : (withLat Q.lat).card = pairCount k n := by
  unfold pairCount
  rw [dite_eq_left ⟨Q⟩]
  exact card_withLat_eq _ _

end Count

end GlobalTheory.FinPl.VertexExactCount

namespace GlobalTheory.FinPl.VertexExactCount


open Classical in
theorem vertexExact (D : D7) : VertexExact D := by
  intro k _ _ _ _ p q ψ χ hχ hIs
  letI : MeasurableSpace k := borel k
  haveI : BorelSpace k := ⟨rfl⟩
  haveI := secondCountable k
  obtain ⟨e, he, HC⟩ := _root_.GlobalTheory.FinPl.contraction_all D k p ψ χ hIs
  obtain ⟨ν, hν, -⟩ := exists_isUnitVol k
  let ε : 𝓀[k]ˣ := if e = 1 then 1 else -1
  have hεe : (e = 1 ∧ ε = 1) ∨ (e = -1 ∧ ε = -1) := by
    by_cases h1 : e = 1
    · exact Or.inl ⟨h1, if_pos h1⟩
    · exact Or.inr ⟨he.resolve_left h1, if_neg h1⟩
  refine ⟨ε, ?_, ?_⟩
  · rcases hεe with ⟨-, h⟩ | ⟨-, h⟩
    · exact Or.inl h
    · exact Or.inr h
  intro n n' n'' _ _ _ _ _ _
  obtain ⟨r₁, e₁, hr₁, HS⟩ := _root_.GlobalTheory.FinPl.sourceExact D k p n n' q χ hχ
  refine ⟨r₁ * (pairCount k n : ℝ), e₁, mul_pos hr₁ (Nat.cast_pos.2 pairCount_pos), ?_⟩
  intro P Q R σ B J B' s₁ s₂ l vL hu₁ hu₂ α α₀ β γ γ₀ hα hγ L₁ L₂ L₂' L₃ f₁ Ξ₁ Ξ₁' f₂ Ξ₂ Ξ₂' o₁ o₁' o₂ o₂' φ hφ
  have hψ : IsStdChar D ψ (-1) := s₁.weil₀.std
  have hχc : Continuous χ := by
    have ht : Continuous (Algebra.trace (AF D.host.F) (AE D)) := IsModuleTopology.continuous_of_linearMap _
    have h1 : Continuous fun a => psiE ψ (p.sec a) := hψ.1.1.comp (ht.comp p.cont_sec)
    have h2 : (fun a => ((χ a : Circle) : ℂ)) = fun a => psiE ψ (p.sec a) := funext hIs
    refine continuous_induced_rng.2 ?_
    change Continuous (fun a => ((χ a : Circle) : ℂ))
    rw [h2]
    exact h1
  obtain ⟨lS₁, lT₁, uS₁, uT₁, lin₁⟩ := _root_.GlobalTheory.SplitLinAt.linModelAt D k p ψ _ _ _ _ _ s₁.weil₀
  obtain ⟨lS₂, lT₂, uS₂, uT₂, lin₂⟩ := _root_.GlobalTheory.SplitLinAt.linModelAt D k p ψ _ _ _ _ _ s₂.weil₀
  have vS₁ := uS₁ hu₁.2
  have vT₁ := uT₁ hu₁.1
  have vS₂ := uS₂ hu₂.2
  have vT₂ := uT₂ hu₂.1
  obtain ⟨-, D2, -⟩ := GlobalTheory.T.gluedLattice_finite_expansions_localField k n n'' q (resChar χ hχ q) (resChar_ne_one hχ q) Q.lat
  let μ : Measure (n → k) := Measure.pi fun _ => ν
  have I0 : fpair χ e μ (vecInd Q.lat) (dualInd Q.lat) ≠ 0 := Comm.fpair_ne_zero χ hχc e he μ Q.lat
  have hvec := Comm.vecInd_mem Q.lat
  have hdual := Comm.dualInd_mem Q.lat
  let col : ∀ Ψ : Matrix n n' k → ℂ, Ψ ∈ SB (Matrix n n' k) → ∀ a : (n → k) → ℂ, a ∈ SB (n → k) →
      SB (Matrix n (n' ⊕ Fin 1) k) := fun Ψ hΨ a ha => ⟨tensCol Ψ a, Comm.tensCol_mem hΨ ha⟩
  let row : ∀ Ψ : Matrix n'' n k → ℂ, Ψ ∈ SB (Matrix n'' n k) → ∀ b : (n → k) → ℂ, b ∈ SB (n → k) →
      SB (Matrix (n'' ⊕ Fin 1) n k) := fun Ψ hΨ b hb => ⟨tensRow Ψ b, Comm.tensRow_mem hΨ hb⟩
  have one_emb : ∀ {S₀ A L : HSp D} (o : OrthDec S₀ A L), o.emb (1, 1) = 1 := fun o => map_one o.emb
  obtain ⟨U₁, a₁, b₁, t₁⟩ := overMap hψ o₁ fun Ψ f h => (lin₁ _ _ α₀ β L₁ L₂ f₁ Ψ f h).2.2
  obtain ⟨U₂, a₂, b₂, t₂⟩ := overMap hψ o₂ fun Ψ f h => (lin₂ _ _ β γ₀ L₂' L₃ f₂ Ψ f h).2.2
  obtain ⟨Θ, hΘ⟩ := exists_trilinear s₁ s₂ l vL U₁ U₂ t₁ t₂
  have key : ∀ (v : caSub B.A) (Ψ₁ : Matrix n n' k → ℂ) (h₁ : Ψ₁ ∈ SB (Matrix n n' k)) (Ψ₂ : Matrix n'' n k → ℂ)
      (h₂ : Ψ₂ ∈ SB (Matrix n'' n k)) (a a' b b' : (n → k) → ℂ) (ha : a ∈ SB (n → k)) (ha' : a' ∈ SB (n → k))
      (hb : b ∈ SB (n → k)) (hb' : b' ∈ SB (n → k)),
      fpair χ e μ a' b' • (Θ v (col Ψ₁ h₁ a ha) (row Ψ₂ h₂ b hb)).1 =
        fpair χ e μ a b • (Θ v (col Ψ₁ h₁ a' ha') (row Ψ₂ h₂ b' hb')).1 := by
    intro v Ψ₁ h₁ Ψ₂ h₂ a a' b b' ha ha' hb hb'
    rw [hΘ, hΘ]
    exact HC n n' n'' σ B J B' s₁ s₂ l vL α α₀ β γ γ₀ hα hγ μ L₁ L₂ L₂' L₃ f₁ _ _ f₂ _ _ Ψ₁ Ψ₂ a a' b b' ha ha' hb hb'
      (a₁ (col Ψ₁ h₁ a ha)) (a₁ (col Ψ₁ h₁ a' ha')) (a₂ (row Ψ₂ h₂ b hb)) (a₂ (row Ψ₂ h₂ b' hb')) v.1 v.2
  have hFF : ∀ A : Pair k n', IsContAut B.A (FFStar q (resChar χ hχ q) φ A) := fun A => by
    have := (FFStar q (resChar χ hχ q) (fun P₂ => (⟨φ P₂, hφ.2.2 P₂⟩ : caSub B.A)) A).2
    rwa [val_FFStar'] at this
  let v' : caSub B.A := ⟨_, hFF P⟩
  let x : Pair k n → SB (Matrix n (n' ⊕ Fin 1) k) := fun Q' =>
    col (phiOne P Q') (GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.phiOne_mem P Q') (charInd (resChar χ hχ q) Q') (charInd_mem' _ Q')
  let xv : Pair k n' → Pair k n → SB (Matrix n (n' ⊕ Fin 1) k) := fun A Q' =>
    col (phiOne A Q') (GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.phiOne_mem A Q') (vecInd Q.lat) hvec
  let yd : Pair k n → SB (Matrix (n'' ⊕ Fin 1) n k) := fun Q'' =>
    row (phiOne Q'' R) (GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.phiOne_mem Q'' R) (dualInd Q.lat) hdual
  let y₀ : SB (Matrix (n'' ⊕ Fin 1) n k) := row (latInd Q.lat R.ker) (latInd_mem_SB _ _) (dualInd Q.lat) hdual
  let y : Pair k n → SB (Matrix (n'' ⊕ Fin 1) n k) := fun Q'' =>
    row (phiOne Q'' R) (GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.phiOne_mem Q'' R) (cosetInd q Q''.lat Q''.red) (_root_.GlobalTheory.FinPl.CosetSB.cosetInd_mem_SB k n q _ _)

  have h2 : hand0 s₁ s₂ l vL (φ P) Ξ₁ Ξ₂ = ((r₁ : ℂ) * chrPow s₁.χW (p.idele q.unit) e₁) •
      hand0 s₁ s₂ l vL (FFStar q (resChar χ hχ q) φ P) (U₁ (∑ Q' ∈ withLat Q.lat, x Q')) Ξ₂ :=
    lift_step s₁ s₂ l vL (hFF P) U₁ t₁ (withLat Q.lat) x Ξ₁ Ξ₂
      (HS ψ B.V₀ B.A B.L J.W₀ B.o B.ζ B.line B.cpt B.vA s₁.χV s₁.χW s₁.om₀ s₁.weil₀ hu₁.1 hu₁.2 α α₀ β hα P Q.lat
        L₁ L₂ f₁ Ξ₁ (fun Q' => U₁ (x Q')) o₁ (fun Q' _ => a₁ (x Q')) φ hφ)

  have hΞ₂ : Ξ₂ = U₂ (y₀ + ∑ Q'' ∈ withLat Q.lat, y Q'') := by
    rw [b₂ ⟨_, o₂.2.2.2.1⟩ Ξ₂ o₂]
    congr 1
    apply Subtype.ext
    simp only [Submodule.coe_add, Submodule.coe_sum]
    exact D2 R

  have t0 : ∀ Q' ∈ withLat Q.lat, (Θ v' (x Q') y₀).1 = 0 := fun Q' hQ' => by
    have := key v' (phiOne P Q') (GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.phiOne_mem P Q') (latInd Q.lat R.ker) (latInd_mem_SB _ _)
      (charInd (resChar χ hχ q) Q') (vecInd Q.lat) (dualInd Q.lat) (dualInd Q.lat) (charInd_mem' _ Q') hvec hdual hdual
    have hf := _root_.GlobalTheory.FinPl.Comm.fpair_charInd_dualInd k n q χ hχ e he μ Q'
    rw [mem_withLat.1 hQ'] at hf
    rw [hf, zero_smul] at this
    exact (smul_eq_zero.1 this).resolve_left I0

  have t1 : ∀ Q' ∈ withLat Q.lat, ∑ Q'' ∈ withLat Q.lat, (Θ v' (x Q') (y Q'')).1 =
      (Θ v' (xv P Q') (yd (ε • Q'))).1 := by
    intro Q' hQ'
    have hQ'l : Q'.lat = Q.lat := mem_withLat.1 hQ'
    have hmem : ε • Q' ∈ withLat Q.lat := mem_withLat.2 (by rw [Pair.dia_lat, hQ'l])
    rw [Finset.sum_eq_single_of_mem (ε • Q') hmem]
    · have := key v' (phiOne P Q') (GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.phiOne_mem P Q') (phiOne (ε • Q') R)
        (GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.phiOne_mem _ R) (charInd (resChar χ hχ q) Q') (vecInd Q.lat)
        (cosetInd q (ε • Q').lat (ε • Q').red) (dualInd Q.lat) (charInd_mem' _ Q') hvec (_root_.GlobalTheory.FinPl.CosetSB.cosetInd_mem_SB k n q _ _) hdual
      rw [(_root_.GlobalTheory.FinPl.CosetPairing.fpair_charInd_cosetInd k n q χ hχ e ε hεe μ Q' (ε • Q') (by rw [Pair.dia_lat])).1 rfl, hQ'l] at this
      exact smul_right_injective _ I0 this
    · intro Q'' hQ'' hne
      have hQ''l : Q''.lat = Q.lat := mem_withLat.1 hQ''
      have := key v' (phiOne P Q') (GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.phiOne_mem P Q') (phiOne Q'' R)
        (GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.phiOne_mem _ R) (charInd (resChar χ hχ q) Q') (vecInd Q.lat)
        (cosetInd q Q''.lat Q''.red) (dualInd Q.lat) (charInd_mem' _ Q') hvec (_root_.GlobalTheory.FinPl.CosetSB.cosetInd_mem_SB k n q _ _) hdual
      rw [(_root_.GlobalTheory.FinPl.CosetPairing.fpair_charInd_cosetInd k n q χ hχ e ε hεe μ Q' Q'' (hQ''l.trans hQ'l.symm)).2 hne, zero_smul] at this
      exact (smul_eq_zero.1 this).resolve_left I0

  have hmove : ∀ (Q₀ : Pair k n) (g : GL n k), g • Q.lat = Q.lat →
      (Θ v' (xv P (g • Q₀)) (yd (g • ε • Q₀))).1 = (Θ v' (xv P Q₀) (yd (ε • Q₀))).1 := by
    intro Q₀ g hgL
    have hdet := GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity.valuation_det_of_fix Q.lat hgL
    have hgL' : g⁻¹ • Q.lat = Q.lat := by
      conv_lhs => rw [← hgL]
      exact inv_smul_smul g Q.lat
    have e1 : s₁.om₀ (α₀.gl 1, β.gl g) (U₁ (xv P Q₀)) = U₁ (xv P (g • Q₀)) := by
      refine b₁ _ _ ?_
      have := (lin₁ _ _ α₀ β L₁ L₂ f₁ _ _ (a₁ (xv P Q₀))).1 1 g
      convert this using 1
      funext z
      have hl : ((lS₁ (Matrix.GeneralLinearGroup.det (1 : GL (n' ⊕ Fin 1) k)) : ℂˣ) : ℂ) = 1 := by simp
      have hr : ((lT₁ (Matrix.GeneralLinearGroup.det g) : ℂˣ) : ℂ) = 1 := by rw [vT₁ _ hdet]; rfl
      show tensCol (phiOne P (g • Q₀)) (vecInd Q.lat) z = _ * _ * tensCol (phiOne P Q₀) (vecInd Q.lat) _
      rw [hl, hr, one_mul, one_mul,
        show (1 : GL (n' ⊕ Fin 1) k) = GlobalTheory.RootEx.embX 1 (1 : GL n' k) from (map_one _).symm,
        tensCol_subst' (vecInd Q.lat) ((g⁻¹ : GL n k) : Matrix n n k) (1 : GL n' k)
          (Ψ' := phiOne P (g • Q₀)) (fun x => by
            have := phiOne_smul (P := P) (Q := Q₀) (x := x) (1 : GL n' k) g
            rw [one_smul] at this
            exact this) z]
      congr 1
      funext w
      exact (vecInd_mulVec hgL' w).symm
    have e2 : s₂.om₀ (β.gl g, γ₀.gl 1) (U₂ (yd (ε • Q₀))) = U₂ (yd (g • ε • Q₀)) := by
      refine b₂ _ _ ?_
      have := (lin₂ _ _ β γ₀ L₂' L₃ f₂ _ _ (a₂ (yd (ε • Q₀)))).1 g 1
      convert this using 1
      funext z
      have hl : ((lS₂ (Matrix.GeneralLinearGroup.det g) : ℂˣ) : ℂ) = 1 := by rw [vS₂ _ hdet]; rfl
      have hr : ((lT₂ (Matrix.GeneralLinearGroup.det (1 : GL (n'' ⊕ Fin 1) k)) : ℂˣ) : ℂ) = 1 := by simp
      show tensRow (phiOne (g • ε • Q₀) R) (dualInd Q.lat) z = _ * _ * tensRow (phiOne (ε • Q₀) R) (dualInd Q.lat) _
      rw [hl, hr, one_mul, one_mul,
        show (1 : GL (n'' ⊕ Fin 1) k) = GlobalTheory.RootEx.embX 1 (1 : GL n'' k) from (map_one _).symm,
        tensRow_subst' (dualInd Q.lat) (1 : GL n'' k) (g : Matrix n n k)
          (Ψ' := phiOne (g • ε • Q₀) R) (fun x => by
            have := phiOne_smul (P := ε • Q₀) (Q := R) (x := x) g (1 : GL n'' k)
            rw [one_smul] at this
            exact this) z]
      congr 1
      funext w
      exact (dualInd_vecMul hgL w).symm
    have e3 := Comm.doubleThetaUnfolding_equivariant_unitaryGroups s₁ s₂ l vL (hFF P) (t₁ (xv P Q₀)) (t₂ (yd (ε • Q₀))) 1 (β.gl g) 1
    rw [one_emb, one_emb] at e3
    rw [hΘ, hΘ, ← e1, ← e2, map_one α₀.gl, map_one γ₀.gl]
    rw [show (fun x : GA D B.A => FFStar q (resChar χ hχ q) φ P (x * 1)) = FFStar q (resChar χ hχ q) φ P from
      funext fun x => by rw [mul_one]] at e3
    rw [e3]
    funext x
    rw [mul_one]
  have hall : ∀ Q' ∈ withLat Q.lat, (Θ v' (xv P Q') (yd (ε • Q'))).1 =
      (Θ v' (xv P (ε⁻¹ • Q)) (yd (ε • ε⁻¹ • Q))).1 := by
    intro Q' hQ'
    obtain ⟨g, hg⟩ := MulAction.exists_smul_eq (GL n k) (ε⁻¹ • Q) Q'
    have hgL : g • Q.lat = Q.lat := by
      have := congrArg Pair.lat hg
      rw [Pair.smul_lat, Pair.dia_lat, mem_withLat.1 hQ'] at this
      exact this
    have := hmove (ε⁻¹ • Q) g hgL
    rw [hg, smul_comm g ε (ε⁻¹ • Q), hg] at this
    exact this

  have hid : ∀ Y', s₂.om₀ (1, 1) Y' = Y' := fun Y' => by
    rw [show ((1 : GA D J.W₀), (1 : GA D B'.V₀)) = 1 from rfl, map_one]
    rfl
  have hsrc : ∀ (g : GL n' k), valuation k ((Matrix.GeneralLinearGroup.det g : kˣ) : k) = 1 → ∀ A A' : Pair k n',
      hand0 s₁ s₂ l vL (FFStar q (resChar χ hχ q) φ (g • A)) (U₁ (xv (g • A') Q)) (U₂ (yd Q)) =
        hand0 s₁ s₂ l vL (FFStar q (resChar χ hχ q) φ A) (U₁ (xv A' Q)) (U₂ (yd Q)) := by
    intro g hdet A A'
    have e1 : s₁.om₀ (α₀.gl (GlobalTheory.RootEx.embX 1 g), β.gl 1) (U₁ (xv A' Q)) = U₁ (xv (g • A') Q) := by
      refine b₁ _ _ ?_
      have := (lin₁ _ _ α₀ β L₁ L₂ f₁ _ _ (a₁ (xv A' Q))).1 (GlobalTheory.RootEx.embX 1 g) 1
      convert this using 1
      funext z
      have hl : ((lS₁ (Matrix.GeneralLinearGroup.det (GlobalTheory.RootEx.embX 1 g)) : ℂˣ) : ℂ) = 1 := by
        rw [det_embX_one', vS₁ _ hdet]; rfl
      have hr : ((lT₁ (Matrix.GeneralLinearGroup.det (1 : GL n k)) : ℂˣ) : ℂ) = 1 := by simp
      show tensCol (phiOne (g • A') Q) (vecInd Q.lat) z = _ * _ * tensCol (phiOne A' Q) (vecInd Q.lat) _
      rw [hl, hr, one_mul, one_mul,
        tensCol_subst' (vecInd Q.lat) (((1 : GL n k)⁻¹ : GL n k) : Matrix n n k) g
          (Ψ' := phiOne (g • A') Q) (fun x => by
            have := phiOne_smul (P := A') (Q := Q) (x := x) g (1 : GL n k)
            rw [one_smul] at this
            exact this) z]
      congr 1
      simp
    have e3 := Comm.doubleThetaUnfolding_equivariant_unitaryGroups s₁ s₂ l vL (hFF A) (t₁ (xv A' Q)) (t₂ (yd Q)) (α.gl g) 1 1
    rw [one_emb, Comm.emb_gl hα g, hid] at e3
    have e4 : FFStar q (resChar χ hχ q) φ (g • A) = fun x => FFStar q (resChar χ hχ q) φ A (x * α.gl g) :=
      FFStar_mem_EqForm q _ hφ.1 g A
    rw [e4, ← e1, map_one β.gl, e3]
    funext x
    rw [mul_one]
  obtain ⟨g₁, hg₁a, hg₁b, hg₁d⟩ : ∃ g₁ : GL n' k, g₁ • P = ε • P ∧ g₁ • (ε • P) = P ∧
      valuation k ((Matrix.GeneralLinearGroup.det g₁ : kˣ) : k) = 1 := by
    rcases hεe with ⟨-, h⟩ | ⟨-, h⟩
    · exact ⟨1, by rw [h, one_smul, one_smul], by rw [h, one_smul, one_smul], by simp⟩
    · refine ⟨-1, by rw [neg_one_smul_pair, h], ?_, val_det_neg_one⟩
      rw [neg_one_smul_pair, h, smul_smul]
      simp
  have hfin : (Θ v' (xv P (ε⁻¹ • Q)) (yd (ε • ε⁻¹ • Q))).1 =
      hand0 s₁ s₂ l vL (dia ε (FFStar q (resChar χ hχ q) φ) P) Ξ₁' Ξ₂' := by
    rw [hΘ, b₁ (xv P Q) Ξ₁' o₁', b₂ (yd Q) Ξ₂' o₂', dia_apply, smul_inv_smul]
    have hx : xv P (ε⁻¹ • Q) = xv (ε • P) Q := by
      apply Subtype.ext
      show tensCol (phiOne P (ε⁻¹ • Q)) _ = tensCol (phiOne (ε • P) Q) _
      have := phiOne_dia (P := P) (Q := ε⁻¹ • Q) ε
      rw [smul_inv_smul] at this
      rw [this]
    rw [hx]
    have := hsrc g₁ hg₁d P (ε • P)
    rw [hg₁a, hg₁b] at this
    exact this.symm
  have hexp : hand0 s₁ s₂ l vL (FFStar q (resChar χ hχ q) φ P) (U₁ (∑ Q' ∈ withLat Q.lat, x Q'))
      (U₂ (y₀ + ∑ Q'' ∈ withLat Q.lat, y Q'')) =
      ∑ Q' ∈ withLat Q.lat, ((Θ v' (x Q') y₀).1 + ∑ Q'' ∈ withLat Q.lat, (Θ v' (x Q') (y Q'')).1) := by
    refine (hΘ v' _ _).symm.trans ?_

    rw [map_sum, LinearMap.sum_apply, Submodule.coe_sum]
    refine Finset.sum_congr rfl fun Q' _ => ?_

    rw [map_add (f := _), map_sum, Submodule.coe_add, Submodule.coe_sum]
  rw [h2, hΞ₂, hexp, Finset.sum_congr rfl fun Q' hQ' => by rw [t0 Q' hQ', zero_add, t1 Q' hQ', hall Q' hQ'],
    Finset.sum_const, ← Nat.cast_smul_eq_nsmul ℂ, smul_smul, hfin, card_withLat_eq_pairCount Q]
  congr 1
  push_cast
  ring

end GlobalTheory.FinPl.VertexExactCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GluedPlaceDoubleStepExactSignedConstant =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepSmallPairsValueAllGluedSplitPlacesProo =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepSmallPairsValueAllGluedSplitPlacesProo", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.SmallPair\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValueDoubleUnif\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GluedPlaceDoubleStepExactSignedConstant\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlacesToAdeles\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RamifiedOperatorBijectiveFiniteTranslationCombin\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValueDoubleExact\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RamifiedOperatorsBijectiveAtPlaces\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HomLatticeIndicatorOnSplitHalfEqHalfIndicatorStatement\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IndicatorHomSelfDualComponentsSchwartzBruhatStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OverAllExists\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil ValuativeRel IsLocalRing
open GlobalTheory.FinPl
open GlobalTheory.IndefiniteRowSideFullHecke.UnramifiedCharacter (compFin ExtUnramAt CharUnramAt)
open scoped TensorProduct Pointwise
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.FinPl.VertexAllProof

variable {D : D7} {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem over_self {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {LS : Lat S} {LT : Lat T} {p : SplitPt D k}
    {m m' : Type} [Fintype m] [DecidableEq m] [Fintype m'] [DecidableEq m'] {α : Frame p S m'} {β : Frame p T m}
    {g f : WO S T → ℂ} {Φ : Matrix m m' k → ℂ} (h : Over ψ α β LS LT g Φ f) (hU : p.UnitAA)
    (ΛS : Submodule 𝒪[k] (m' → k)) (ΛT : Submodule 𝒪[k] (m → k)) (hLS : α.IsLat LS ΛS) (hLT : β.IsLat LT ΛT) :
    Over ψ α β LS LT g (latInd ΛS ΛT) g := by
  obtain ⟨hS, hT, hvac, -, ⟨Tm, hTm⟩, -⟩ := h
  have hE := GlobalTheory.T.homLatticeIndicator_on_split_half_eq_half_indicator D k p m m' S T α β LS LT hS hT hU ΛS ΛT hLS hLT
  refine ⟨hS, hT, hvac, GlobalTheory.T.indicator_hom_selfDual_components_schwartzBruhat D k p m m' S T α β LS LT hS hT ΛS ΛT hLS hLT, ⟨Tm, hTm⟩, fun T' hT' => ?_⟩
  have hv := hT'.vac
  rw [one_smul] at hv
  change g = T' (extFun α β (latInd ΛS ΛT))
  rw [hE, hv]

end GlobalTheory.FinPl.VertexAllProof


open GlobalTheory.FinPl.VertexAllProof in
theorem GlobalTheory.FinPl.vertexAll : ∀ D : D7, GlobalTheory.FinPl.VertexAll D := by
  intro D k _ _ _ _ ι p I P hPl q ψ χ hχ hc
  have hvg := fun i => _root_.GlobalTheory.FinPl.VertexExactCount.vertexExact D k (p i) q ψ (χ i) (hχ i) (hc i)
  refine ⟨fun i => (hvg i).choose, fun i => (hvg i).choose_spec.1, ?_⟩
  intro n n' n'' _ _ _ _ _ _
  have hrc := fun i => (hvg i).choose_spec.2 n n' n''
  choose r e hr hre using hrc
  refine ⟨r, e, hr, ?_⟩
  intro σ B J B' s₁ s₂ l vL hunr a b a' M₀ M₁ M₂ _ _ _ hgl Ξ₁ Ξ₂ _ _
  have hP : ∀ i, P (p i).v := fun i => (hPl.mem _).2 ⟨i, rfl⟩
  have hmaps : ∀ (ls : List ι) (φ : GA D B.A → ℂ), a.Ram φ →
      a.Ram (a.sAll q (fun i => resChar (χ i) (hχ i) q) (fun i => (hvg i).choose) ls φ) := fun ls φ hφ =>
    (_root_.GlobalTheory.FinPl.allBijective_all D k ι p q χ hχ (fun i => (hvg i).choose) n' B.A B.V₀ a hPl.inj ls).1.mapsTo hφ
  have hV : ∀ ls : List ι, ∀ Ξ₁' Ξ₂',
      OverAll ψ a.α₀ b.β M₀ M₁ (fun i => tensCol (phiOne (a.P i) (b.Q i)) (vecInd (b.Q i).lat)) ls Ξ₁ Ξ₁' →
      OverAll ψ b.β a'.α₀ M₁ M₂ (fun i => tensRow (phiOne (b.Q i) (a'.P i)) (dualInd (b.Q i).lat)) ls Ξ₂ Ξ₂' →
      ∀ φ, a.Ram φ → hand0 s₁ s₂ l vL φ Ξ₁ Ξ₂ =
        (ls.map fun i => (r i : ℂ) * chrPow s₁.χW ((p i).idele q.unit) (e i)).prod •
          hand0 s₁ s₂ l vL (a.sAll q (fun i => resChar (χ i) (hχ i) q) (fun i => (hvg i).choose) ls φ) Ξ₁' Ξ₂' := by
    intro ls
    induction ls with
    | nil =>
      intro Ξ₁' Ξ₂' h1 h2 φ _
      rw [GlobalTheory.FinPl.ValDbl.overAll_nil.1 h1, GlobalTheory.FinPl.ValDbl.overAll_nil.1 h2, List.map_nil, List.prod_nil, one_smul]
      rfl
    | cons i ls ih =>
      intro Ξ₁' Ξ₂' h1 h2 φ hφ
      obtain ⟨g₁, hg₁, hΞ₁'⟩ := GlobalTheory.FinPl.ValDbl.overAll_cons.1 h1
      obtain ⟨g₂, hg₂, hΞ₂'⟩ := GlobalTheory.FinPl.ValDbl.overAll_cons.1 h2
      have ho₁ := over_self hΞ₁' (hgl i).1.unit _ _ (hgl i).1.lat (hgl i).2.2
      have ho₂ := over_self hΞ₂' (hgl i).1.unit _ _ (hgl i).2.2 (hgl i).2.1.lat
      obtain ⟨F, hF, hFP⟩ := (hmaps ls φ hφ).2 i
      have hv := hre i (a.P i) (b.Q i) (a'.P i) σ B J B' s₁ s₂ l vL (hunr _ (hP i)).1 (hunr _ (hP i)).2 (a.α i)
        (a.α₀ i) (b.β i) (a'.α i) (a'.α₀ i) (hgl i).1.sum (hgl i).2.1.sum M₀ M₁ M₁ M₂ g₁ g₁ Ξ₁' g₂ g₂ Ξ₂' ho₁ hΞ₁'
        ho₂ hΞ₂' F hF
      have hsop := ((_root_.GlobalTheory.FinPl.ramBijective_holds D k (p i) n' q (χ i) (hχ i) _ rfl ((hvg i).choose) B.A (a.α i) (a.P i)).2.1 F hF).2
      rw [ih g₁ g₂ hg₁ hg₂ φ hφ, ← hFP, hv, ← hsop, hFP, smul_smul, List.map_cons, List.prod_cons, mul_comm]
      rfl
  intro Ξ₁' Ξ₂' h1 h2 φ hφ
  exact hV I Ξ₁' Ξ₂' h1 h2 φ hφ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepSmallPairsValueAllGluedSplitPlacesProo =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.VacuumChangeAtSplitPlacesProof =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.VacuumChangeAtSplitPlacesProof", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.SmallPair\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DataAsCombinationsAtSplitPlacesProof\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeVacuumIffPlacewise\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OverAllExists\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualLatticePrescribedFinitelyManySplitPlaces\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualSplitComponentIsLatticeStabilizerEq\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceBaseVacuumDatumExistsUniqueStatement\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceChangeBaseVacuumHeisenbergCombination\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceDataDistinctPlacesCommuteStatement\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceHermitianFrameProperties\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsClopenIsCompactMapsPair\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing
open scoped TensorProduct Pointwise
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.FinPl.RebaseProof

variable {D : D7} {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem full_of_isLat {p : SplitPt D k} {S : HSp D} {n : Type} [Fintype n] [DecidableEq n]
    (β : Frame p S n) (L : Lat S) (hL : IsSelfDualC S L)
    (Λ : Submodule 𝒪[k] (n → k)) (hΛ : Λ.IsLattice k) (h : β.IsLat L Λ) : Λ.IsFullLattice k := by
  apply _root_.GlobalTheory.FinPl.isLattice_of_isLat_selfDual <;> assumption

section One

variable {p : SplitPt D k} {n n' : Type} [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n']
  {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {α : Frame p S n'} {β : Frame p T n}

theorem cc (hstd : IsStdChar D ψ (-1)) (hu : p.UnitAA) {NS NS' : Lat S} {NT NT' : Lat T}
    (h1 : IsSelfDualC S NS) (h2 : IsSelfDualC T NT) (h3 : IsSelfDualC S NS') (h4 : IsSelfDualC T NT')
    {ΛS : Submodule 𝒪[k] (n' → k)} {ΛT : Submodule 𝒪[k] (n → k)} (hS : α.IsLat NS ΛS) (hS' : α.IsLat NS' ΛS)
    (hT : β.IsLat NT ΛT) (hT' : β.IsLat NT' ΛT) {f : WO S T → ℂ} (hf : Vac ψ S T NS NT (· = p.v) f) :
    Vac ψ S T NS' NT' (· = p.v) f ∧ ∀ Ψ h, Over ψ α β NS NT f Ψ h → Over ψ α β NS' NT' f Ψ h := by
  have hb := (GlobalTheory.T.splitPlace_baseVacuum_datum_exists_unique D k p n n' ψ hstd S T α β NS NT h1 h2 f hf).2.2 hu ΛS ΛT hS hT
  exact (_root_.GlobalTheory.FinPl.Rebase.rebase D k p n n' ψ hstd hu S T α β NS NS' NT NT' h1 h2 h3 h4).1 ΛS ΛT hS' hT' f f hb

theorem sp1 (hstd : IsStdChar D ψ (-1)) (hu : p.UnitAA) {NS N'S : Lat S} {NT N'T : Lat T}
    (h1 : IsSelfDualC S NS) (h2 : IsSelfDualC T NT) (h3 : IsSelfDualC S N'S) (h4 : IsSelfDualC T N'T)
    {AS A'S : Submodule 𝒪[k] (n' → k)} {AT A'T : Submodule 𝒪[k] (n → k)} [AS.IsLattice k] [AT.IsLattice k]
    (hAS : α.IsLat NS AS) (hAT : β.IsLat NT AT) (hA'S : α.IsLat N'S A'S) (hA'T : β.IsLat N'T A'T)
    {f₀ g : WO S T → ℂ} (hf₀ : Vac ψ S T NS NT (· = p.v) f₀) (hg : Over ψ α β NS NT f₀ (latInd A'S A'T) g) :
    Vac ψ S T N'S N'T (· = p.v) g ∧ ∀ Ψ h, Over ψ α β NS NT f₀ Ψ h ↔ Over ψ α β N'S N'T g Ψ h := by
  haveI := full_of_isLat α NS h1 AS inferInstance hAS
  haveI := full_of_isLat β NT h2 AT inferInstance hAT
  have R := (_root_.GlobalTheory.FinPl.Rebase.rebase D k p n n' ψ hstd hu S T α β NS N'S NT N'T h1 h2 h3 h4).1 A'S A'T hA'S hA'T f₀ g hg
  refine ⟨R.1, fun Ψ h => ⟨R.2 Ψ h, fun hh => ?_⟩⟩
  obtain ⟨g', hg', huniq⟩ := (GlobalTheory.T.splitPlace_baseVacuum_datum_exists_unique D k p n n' ψ hstd S T α β N'S N'T h3 h4 g R.1).1 (latInd AS AT)
    (latInd_mem_SB AS AT)
  have R' := (_root_.GlobalTheory.FinPl.Rebase.rebase D k p n n' ψ hstd hu S T α β N'S NS N'T NT h3 h4 h1 h2).1 AS AT hAS hAT g g' hg'
  have hself := (GlobalTheory.T.splitPlace_baseVacuum_datum_exists_unique D k p n n' ψ hstd S T α β NS NT h1 h2 f₀ hf₀).2.2 hu AS AT hAS hAT
  have he : f₀ = g' := huniq f₀ (R.2 _ _ hself)
  rw [he]
  exact R'.2 Ψ h hh

end One

section Chain

variable {ι : Type} {p : ι → SplitPt D k} {n n' : Type} [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n']
  {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {α : ∀ i, Frame (p i) S n'} {β : ∀ i, Frame (p i) T n}

theorem overAll_congrΨ {LS : Lat S} {LT : Lat T} {Ψ Ψ' : ι → Matrix n n' k → ℂ} (l : List ι)
    (h : ∀ j ∈ l, Ψ j = Ψ' j) : ∀ f f', OverAll ψ α β LS LT Ψ l f f' → OverAll ψ α β LS LT Ψ' l f f' := by
  induction l with
  | nil => intro f f' hf; exact hf
  | cons i l ih =>
    intro f f' hf
    obtain ⟨g, hg, hO⟩ := ValDbl.overAll_cons.1 hf
    refine ValDbl.overAll_cons.2 ⟨g, ih (fun j hj => h j (List.mem_cons_of_mem _ hj)) f g hg, ?_⟩
    rw [← h i List.mem_cons_self]
    exact hO

theorem overAll_congr (hstd : IsStdChar D ψ (-1)) (hunit : ∀ i, (p i).UnitAA) {NS NS' : Lat S} {NT NT' : Lat T}
    (h1 : IsSelfDualC S NS) (h2 : IsSelfDualC T NT) (h3 : IsSelfDualC S NS') (h4 : IsSelfDualC T NT')
    {Ψ : ι → Matrix n n' k → ℂ} (l : List ι)
    (hsame : ∀ j ∈ l, ∃ (ΛS : Submodule 𝒪[k] (n' → k)) (ΛT : Submodule 𝒪[k] (n → k)),
      (α j).IsLat NS ΛS ∧ (α j).IsLat NS' ΛS ∧ (β j).IsLat NT ΛT ∧ (β j).IsLat NT' ΛT) :
    ∀ f f', OverAll ψ α β NS NT Ψ l f f' → OverAll ψ α β NS' NT' Ψ l f f' := by
  induction l with
  | nil => intro f f' hf; exact hf
  | cons i l ih =>
    intro f f' hf
    obtain ⟨g, hg, hO⟩ := ValDbl.overAll_cons.1 hf
    obtain ⟨ΛS, ΛT, a, b, c, d⟩ := hsame i List.mem_cons_self
    exact ValDbl.overAll_cons.2 ⟨g, ih (fun j hj => hsame j (List.mem_cons_of_mem _ hj)) f g hg,
      (cc hstd (hunit i) h1 h2 h3 h4 a b c d hO.2.2.1).2 _ _ hO⟩

theorem overAll_self (hstd : IsStdChar D ψ (-1)) (hunit : ∀ i, (p i).UnitAA) {NS : Lat S} {NT : Lat T}
    (h1 : IsSelfDualC S NS) (h2 : IsSelfDualC T NT) {AS : ι → Submodule 𝒪[k] (n' → k)}
    {AT : ι → Submodule 𝒪[k] (n → k)} (hA : ∀ j, (α j).IsLat NS (AS j) ∧ (β j).IsLat NT (AT j)) (f : WO S T → ℂ)
    (l : List ι) (hf : ∀ j ∈ l, Vac ψ S T NS NT (· = (p j).v) f) :
    OverAll ψ α β NS NT (fun j => latInd (AS j) (AT j)) l f f := by
  induction l with
  | nil => exact ValDbl.overAll_nil.2 rfl
  | cons i l ih =>
    exact ValDbl.overAll_cons.2 ⟨f, ih (fun j hj => hf j (List.mem_cons_of_mem _ hj)),
      (GlobalTheory.T.splitPlace_baseVacuum_datum_exists_unique D k (p i) n n' ψ hstd S T (α i) (β i) NS NT h1 h2 f (hf i List.mem_cons_self)).2.2 (hunit i)
        (AS i) (AT i) (hA i).1 (hA i).2⟩

variable {NS : Lat S} {NT : Lat T} {Ψ : ι → Matrix n n' k → ℂ}

theorem swap_fwd (hstd : IsStdChar D ψ (-1)) (hunit : ∀ i, (p i).UnitAA) (hinj : Function.Injective fun i => (p i).v)
    (i : ι) (l : List ι) (hil : i ∉ l) (b : WO S T → ℂ) (hb : Vac ψ S T NS NT (· = (p i).v) b) :
    ∀ f', (∃ h, OverAll ψ α β NS NT Ψ l b h ∧ Over ψ (α i) (β i) NS NT h (Ψ i) f') →
      ∃ k', Over ψ (α i) (β i) NS NT b (Ψ i) k' ∧ OverAll ψ α β NS NT Ψ l k' f' := by
  induction l with
  | nil =>
    rintro f' ⟨h, hh, hO⟩
    rw [ValDbl.overAll_nil.1 hh] at hO
    exact ⟨f', hO, ValDbl.overAll_nil.2 rfl⟩
  | cons j l ih =>
    rintro f' ⟨h, hh, hO⟩
    have hij : i ≠ j := fun e => hil (e ▸ List.mem_cons_self)
    have hil' : i ∉ l := fun h' => hil (List.mem_cons_of_mem _ h')
    obtain ⟨m, hm, hmO⟩ := ValDbl.overAll_cons.1 hh
    have hmv := ValDbl.overAll_vac hstd hinj l b m hm i hil' hb
    obtain ⟨g', hg'1, hg'2⟩ := GlobalTheory.T.splitPlaceData_distinct_places_commute D k (p j) (p i) n n' n n' ψ hstd (hunit j) (hunit i)
      (fun e => hij (hinj e.symm)) S T (α j) (β j) (α i) (β i) NS NT m h f' (Ψ j) (Ψ i) hmv hmO hO
    obtain ⟨k', hk', hl⟩ := ih hil' g' ⟨m, hm, hg'1⟩
    exact ⟨k', hk', ValDbl.overAll_cons.2 ⟨g', hl, hg'2⟩⟩

theorem swap_bwd (hstd : IsStdChar D ψ (-1)) (hunit : ∀ i, (p i).UnitAA) (hinj : Function.Injective fun i => (p i).v)
    (i : ι) (l : List ι) (hnd : l.Nodup) (hil : i ∉ l) (b : WO S T → ℂ)
    (hb : ∀ j ∈ l, Vac ψ S T NS NT (· = (p j).v) b) :
    ∀ f', (∃ k', Over ψ (α i) (β i) NS NT b (Ψ i) k' ∧ OverAll ψ α β NS NT Ψ l k' f') →
      ∃ h, OverAll ψ α β NS NT Ψ l b h ∧ Over ψ (α i) (β i) NS NT h (Ψ i) f' := by
  induction l with
  | nil =>
    rintro f' ⟨k', hk', hl⟩
    rw [ValDbl.overAll_nil.1 hl]
    exact ⟨b, ValDbl.overAll_nil.2 rfl, hk'⟩
  | cons j l ih =>
    rintro f' ⟨k', hk', hl⟩
    rw [List.nodup_cons] at hnd
    have hij : i ≠ j := fun e => hil (e ▸ List.mem_cons_self)
    have hil' : i ∉ l := fun h' => hil (List.mem_cons_of_mem _ h')
    obtain ⟨m, hm, hmO⟩ := ValDbl.overAll_cons.1 hl
    obtain ⟨h₀, hh₀, hO₀⟩ := ih hnd.2 hil' (fun j' hj' => hb j' (List.mem_cons_of_mem _ hj')) m ⟨k', hk', hm⟩
    have hv := ValDbl.overAll_vac hstd hinj l b h₀ hh₀ j hnd.1 (hb j List.mem_cons_self)
    obtain ⟨g', hg'1, hg'2⟩ := GlobalTheory.T.splitPlaceData_distinct_places_commute D k (p i) (p j) n n' n n' ψ hstd (hunit i) (hunit j)
      (fun e => hij (hinj e)) S T (α i) (β i) (α j) (β j) NS NT h₀ m f' (Ψ i) (Ψ j) hv hO₀ hmO
    exact ⟨g', ValDbl.overAll_cons.2 ⟨h₀, hh₀, hg'1⟩, hg'2⟩

end Chain

section Front

variable {ι : Type} {p : ι → SplitPt D k} {n n' : Type} [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n']
  {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {α : ∀ i, Frame (p i) S n'} {β : ∀ i, Frame (p i) T n}
  {Ψ : ι → Matrix n n' k → ℂ}

theorem front (hstd : IsStdChar D ψ (-1)) (hunit : ∀ i, (p i).UnitAA) (hinj : Function.Injective fun i => (p i).v)
    {N₁S N'S : Lat S} {N₁T N'T : Lat T} (h1 : IsSelfDualC S N₁S) (h2 : IsSelfDualC T N₁T) (h3 : IsSelfDualC S N'S)
    (h4 : IsSelfDualC T N'T) (i : ι) (l : List ι) (hnd : l.Nodup) (hil : i ∉ l)
    {AS A'S : Submodule 𝒪[k] (n' → k)} {AT A'T : Submodule 𝒪[k] (n → k)} [AS.IsLattice k] [AT.IsLattice k]
    (hAS : (α i).IsLat N₁S AS) (hAT : (β i).IsLat N₁T AT) (hA'S : (α i).IsLat N'S A'S) (hA'T : (β i).IsLat N'T A'T)
    (hsame : ∀ j ∈ l, ∃ (ΛS : Submodule 𝒪[k] (n' → k)) (ΛT : Submodule 𝒪[k] (n → k)),
      (α j).IsLat N₁S ΛS ∧ (α j).IsLat N'S ΛS ∧ (β j).IsLat N₁T ΛT ∧ (β j).IsLat N'T ΛT)
    {g₁ g : WO S T → ℂ} (hg₁i : Vac ψ S T N₁S N₁T (· = (p i).v) g₁)
    (hg₁ : ∀ j ∈ l, Vac ψ S T N₁S N₁T (· = (p j).v) g₁) (hg : ∀ j ∈ l, Vac ψ S T N'S N'T (· = (p j).v) g)
    (hO : Over ψ (α i) (β i) N₁S N₁T g₁ (latInd A'S A'T) g) :
    ∀ f', OverAll ψ α β N₁S N₁T Ψ (i :: l) g₁ f' ↔ OverAll ψ α β N'S N'T Ψ (i :: l) g f' := by
  have hsp := sp1 hstd (hunit i) h1 h2 h3 h4 hAS hAT hA'S hA'T hg₁i hO
  have hsame' : ∀ j ∈ l, ∃ (ΛS : Submodule 𝒪[k] (n' → k)) (ΛT : Submodule 𝒪[k] (n → k)),
      (α j).IsLat N'S ΛS ∧ (α j).IsLat N₁S ΛS ∧ (β j).IsLat N'T ΛT ∧ (β j).IsLat N₁T ΛT := fun j hj => by
    obtain ⟨ΛS, ΛT, a, b, c, d⟩ := hsame j hj
    exact ⟨ΛS, ΛT, b, a, d, c⟩
  intro f'
  constructor
  · intro hL
    obtain ⟨k', hk', hl⟩ := swap_fwd hstd hunit hinj i l hil g₁ hg₁i f' (ValDbl.overAll_cons.1 hL)
    exact ValDbl.overAll_cons.2 (swap_bwd hstd hunit hinj i l hnd hil g hg f'
      ⟨k', (hsp.2 _ _).1 hk', overAll_congr hstd hunit h1 h2 h3 h4 l hsame k' f' hl⟩)
  · intro hR
    obtain ⟨k', hk', hl⟩ := swap_fwd hstd hunit hinj i l hil g hsp.1 f' (ValDbl.overAll_cons.1 hR)
    exact ValDbl.overAll_cons.2 (swap_bwd hstd hunit hinj i l hnd hil g₁ hg₁ f'
      ⟨k', (hsp.2 _ _).2 hk', overAll_congr hstd hunit h3 h4 h1 h2 l hsame' k' f' hl⟩)

end Front

section Gen

variable {ι : Type} {p : ι → SplitPt D k} {n n' : Type} [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n']
  {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {α : ∀ i, Frame (p i) S n'} {β : ∀ i, Frame (p i) T n}


open Classical in
theorem gen (hstd : IsStdChar D ψ (-1)) {I : List ι} {P : Pl D → Prop} (hPl : Places p I P) (l : List ι) :
    l.Nodup → ∀ (NS N'S : Lat S) (NT N'T : Lat T) (AS A'S : ι → Submodule 𝒪[k] (n' → k))
      (AT A'T : ι → Submodule 𝒪[k] (n → k)),
    IsSelfDualC S NS → IsSelfDualC T NT → IsSelfDualC S N'S → IsSelfDualC T N'T →
    (∀ j, (AS j).IsLattice k ∧ (A'S j).IsLattice k ∧ (AT j).IsLattice k ∧ (A'T j).IsLattice k) →
    (∀ j, (α j).IsLat NS (AS j) ∧ (α j).IsLat N'S (A'S j) ∧ (β j).IsLat NT (AT j) ∧ (β j).IsLat N'T (A'T j)) →
    (∀ j, j ∉ l → A'S j = AS j ∧ A'T j = AT j) →
    ∀ f g, (∀ j ∈ l, Vac ψ S T NS NT (· = (p j).v) f) →
      OverAll ψ α β NS NT (fun j => latInd (A'S j) (A'T j)) l f g →
      (∀ j ∈ l, Vac ψ S T N'S N'T (· = (p j).v) g) ∧
        ∀ Ψ f', OverAll ψ α β NS NT Ψ l f f' ↔ OverAll ψ α β N'S N'T Ψ l g f' := by
  have hunit := hPl.unit
  have hinj := hPl.inj
  induction l with
  | nil =>
    intro _ NS N'S NT N'T AS A'S AT A'T _ _ _ _ _ _ _ f g _ hg
    rw [ValDbl.overAll_nil.1 hg]
    exact ⟨fun j hj => by simp at hj, fun Ψ f' => Iff.rfl⟩
  | cons i l ih =>
    intro hl NS N'S NT N'T AS A'S AT A'T h1 h2 h3 h4 hL hA hout f g hf hg
    rw [List.nodup_cons] at hl
    obtain ⟨hil, hnd⟩ := hl
    let BS : ι → Submodule 𝒪[k] (n' → k) := fun j => if j ∈ l then A'S j else AS j
    let BT : ι → Submodule 𝒪[k] (n → k) := fun j => if j ∈ l then A'T j else AT j
    have hBS : ∀ j, (BS j).IsLattice k := fun j => by
      by_cases hj : j ∈ l
      · simp only [BS, if_pos hj]; exact (hL j).2.1
      · simp only [BS, if_neg hj]; exact (hL j).1
    have hBT : ∀ j, (BT j).IsLattice k := fun j => by
      by_cases hj : j ∈ l
      · simp only [BT, if_pos hj]; exact (hL j).2.2.2
      · simp only [BT, if_neg hj]; exact (hL j).2.2.1
    have hBSfull : ∀ j, (BS j).IsFullLattice k := fun j => by
      by_cases hj : j ∈ l
      · apply full_of_isLat (α j) N'S h3 _ (hBS j)
        simpa only [BS, if_pos hj] using (hA j).2.1
      · apply full_of_isLat (α j) NS h1 _ (hBS j)
        simpa only [BS, if_neg hj] using (hA j).1
    have hBTfull : ∀ j, (BT j).IsFullLattice k := fun j => by
      by_cases hj : j ∈ l
      · apply full_of_isLat (β j) N'T h4 _ (hBT j)
        simpa only [BT, if_pos hj] using (hA j).2.2.2
      · apply full_of_isLat (β j) NT h2 _ (hBT j)
        simpa only [BT, if_neg hj] using (hA j).2.2.1
    obtain ⟨N₁S, hN₁S, hlatS, -⟩ := _root_.GlobalTheory.LatPresc.latAll D k ι p I P hPl n' S α NS h1 BS hBSfull
    obtain ⟨N₁T, hN₁T, hlatT, -⟩ := _root_.GlobalTheory.LatPresc.latAll D k ι p I P hPl n T β NT h2 BT hBTfull
    obtain ⟨g₁, hg₁, hO⟩ := ValDbl.overAll_cons.1 hg
    have hg₁' : OverAll ψ α β NS NT (fun j => latInd (BS j) (BT j)) l f g₁ :=
      overAll_congrΨ l (fun j hj => by simp only [BS, BT, if_pos hj]) f g₁ hg₁
    have IH := ih hnd NS N₁S NT N₁T AS BS AT BT h1 h2 hN₁S hN₁T
      (fun j => ⟨(hL j).1, hBS j, (hL j).2.2.1, hBT j⟩) (fun j => ⟨(hA j).1, hlatS j, (hA j).2.2.1, hlatT j⟩)
      (fun j hj => ⟨by simp only [BS, if_neg hj], by simp only [BT, if_neg hj]⟩)
      f g₁ (fun j hj => hf j (List.mem_cons_of_mem _ hj)) hg₁'
    have hBi : BS i = AS i ∧ BT i = AT i := ⟨by simp only [BS, if_neg hil], by simp only [BT, if_neg hil]⟩
    have hN₁Si : (α i).IsLat N₁S (AS i) := hBi.1 ▸ hlatS i
    have hN₁Ti : (β i).IsLat N₁T (AT i) := hBi.2 ▸ hlatT i
    have hg₁v : Vac ψ S T NS NT (· = (p i).v) g₁ :=
      ValDbl.overAll_vac hstd hinj l f g₁ hg₁ i hil (hf i List.mem_cons_self)
    have C := cc hstd (hunit i) h1 h2 hN₁S hN₁T (hA i).1 hN₁Si (hA i).2.2.1 hN₁Ti hg₁v
    have hO₁ := C.2 _ _ hO
    have hsame : ∀ j ∈ l, ∃ (ΛS : Submodule 𝒪[k] (n' → k)) (ΛT : Submodule 𝒪[k] (n → k)),
        (α j).IsLat N₁S ΛS ∧ (α j).IsLat N'S ΛS ∧ (β j).IsLat N₁T ΛT ∧ (β j).IsLat N'T ΛT := fun j hj =>
      ⟨A'S j, A'T j, by simpa only [BS, if_pos hj] using hlatS j, (hA j).2.1,
        by simpa only [BT, if_pos hj] using hlatT j, (hA j).2.2.2⟩
    have hgv : ∀ j ∈ l, Vac ψ S T N'S N'T (· = (p j).v) g := fun j hj => by
      obtain ⟨ΛS, ΛT, a, b, c, d⟩ := hsame j hj
      have hji : (p j).v ≠ (p i).v := fun e => hil (by rw [← hinj e]; exact hj)
      have hk := (ValDbl.over_keep hstd hO₁).2 (p j).v hji (IH.1 j hj)
      exact (cc hstd (hunit j) hN₁S hN₁T h3 h4 a b c d hk).1
    haveI := (hL i).1
    haveI := (hL i).2.2.1
    have hsp := sp1 hstd (hunit i) hN₁S hN₁T h3 h4 hN₁Si hN₁Ti (hA i).2.1 (hA i).2.2.2 C.1 hO₁
    refine ⟨fun j hj => ?_, fun Ψ f' => ?_⟩
    · rcases List.mem_cons.1 hj with rfl | hj'
      · exact hsp.1
      · exact hgv j hj'
    · rw [← front hstd hunit hinj hN₁S hN₁T h3 h4 i l hnd hil hN₁Si hN₁Ti (hA i).2.1 (hA i).2.2.2
        hsame C.1 IH.1 hgv hO₁ f']
      constructor
      · intro h
        obtain ⟨m, hm, hmO⟩ := ValDbl.overAll_cons.1 h
        exact ValDbl.overAll_cons.2 ⟨m, (IH.2 Ψ m).1 hm,
          (cc hstd (hunit i) h1 h2 hN₁S hN₁T (hA i).1 hN₁Si (hA i).2.2.1 hN₁Ti hmO.2.2.1).2 _ _ hmO⟩
      · intro h
        obtain ⟨m, hm, hmO⟩ := ValDbl.overAll_cons.1 h
        exact ValDbl.overAll_cons.2 ⟨m, (IH.2 Ψ m).2 hm,
          (cc hstd (hunit i) hN₁S hN₁T h1 h2 hN₁Si (hA i).1 hN₁Ti (hA i).2.2.1 hmO.2.2.1).2 _ _ hmO⟩

end Gen

theorem rebaseAll : ∀ D : D7, RebaseAll D := by
  intro D
  unfold RebaseAll
  intro k _ _ _ _ ι p I P hPl n n' _ _ _ _ ψ hstd S T α β LS MS LT MT hLS hLT hMS hMT
  choose ALS hALS1 hALS2 _hALS3 using fun i => (_root_.GlobalTheory.FrameAt.frame_facts D k (p i) S n' (α i)).2.2.2.1 LS hLS
  choose AMS hAMS1 hAMS2 _hAMS3 using fun i => (_root_.GlobalTheory.FrameAt.frame_facts D k (p i) S n' (α i)).2.2.2.1 MS hMS
  choose ALT hALT1 hALT2 _hALT3 using fun i => (_root_.GlobalTheory.FrameAt.frame_facts D k (p i) T n (β i)).2.2.2.1 LT hLT
  choose AMT hAMT1 hAMT2 _hAMT3 using fun i => (_root_.GlobalTheory.FrameAt.frame_facts D k (p i) T n (β i)).2.2.2.1 MT hMT
  have hL : ∀ j, (ALS j).IsLattice k ∧ (AMS j).IsLattice k ∧ (ALT j).IsLattice k ∧ (AMT j).IsLattice k :=
    fun j => ⟨hALS1 j, hAMS1 j, hALT1 j, hAMT1 j⟩
  have hA : ∀ j, (α j).IsLat LS (ALS j) ∧ (α j).IsLat MS (AMS j) ∧ (β j).IsLat LT (ALT j) ∧ (β j).IsLat MT (AMT j) :=
    fun j => ⟨hALS2 j, hAMS2 j, hALT2 j, hAMT2 j⟩
  obtain ⟨e, he1, he2⟩ := (_root_.GlobalTheory.FinPl.allComb D k ι p I P hPl n n' ψ hstd S T α β LS LT hLS hLT
    (fun i => latInd (AMS i) (AMT i))).1 (fun i => by haveI := full_of_isLat (α i) MS hMS _ (hAMS1 i) (hAMS2 i); haveI := full_of_isLat (β i) MT hMT _ (hAMT1 i) (hAMT2 i); exact latInd_mem_SB _ _)
  have AC' := _root_.GlobalTheory.FinPl.allComb D k ι p I P hPl n n' ψ hstd S T α β MS MT hMS hMT (fun i => latInd (ALS i) (ALT i))
  obtain ⟨e', he'1, he'2⟩ := AC'.1 (fun i => by haveI := full_of_isLat (α i) LS hLS _ (hALS1 i) (hALS2 i); haveI := full_of_isLat (β i) LT hLT _ (hALT1 i) (hALT2 i); exact latInd_mem_SB _ _)
  refine ⟨e, e', he1, he'1, fun f hf => ?_⟩
  have hfv : ∀ j, Vac ψ S T LS LT (· = (p j).v) f := fun j => ValDbl.vac_at ((hPl.mem _).2 ⟨j, rfl⟩) hf
  obtain ⟨hgv, hiff⟩ := gen hstd hPl I hPl.nodup LS MS LT MT ALS AMS ALT AMT hLS hLT hMS hMT hL hA
    (fun j hj => absurd (hPl.all j) hj) f (comb ψ S T e f) (fun j _ => hfv j) (he2 f hf)
  have hth : IsThetaFunO ψ S T (comb ψ S T e f) := ValDbl.overAll_theta hstd I f _ (he2 f hf) hf.1
  have hgV : Vac ψ S T MS MT P (comb ψ S T e f) := ⟨hth, GlobalTheory.VacLoc.latVac_of_places ψ S T MS MT P _ hth
    fun v hv => by obtain ⟨j, rfl⟩ := (hPl.mem v).1 hv; exact hgv j (hPl.all j)⟩
  refine ⟨hgV, ?_, hiff⟩
  have hs := (hiff _ f).1 (overAll_self hstd hPl.unit hLS hLT (fun j => ⟨(hA j).1, (hA j).2.2.1⟩) f I
    fun j _ => hfv j)
  exact AC'.2.1 _ _ _ (he'2 _ hgV) hs

end GlobalTheory.FinPl.RebaseProof
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.VacuumChangeAtSplitPlacesProof =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLevelPrimeLawDoubleStep =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLevelPrimeLawDoubleStep", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.SmallPair\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.VacOfShape\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsBiSmooth\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsQuasiFam\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.BesselThetaContractionExtendByZeroVacuumSmooth\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.BiVacuumOperatorZeroOrLeftInvertible\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.BilinearVacuumCentralCharacter\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ContractionOfVacuumCombinationsProof\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DataAsCombinationsAtSplitPlacesProof\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepEqTwoThetaColumnLiftsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepSmallPairsValueAllGluedSplitPlacesProo\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroAtSplitPlacesProof\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlatMapPreservesVacuumProof\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualLatticePrescribedFinitelyManySplitPlaces\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.VacuumChangeAtSplitPlacesProof\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValueDoubleExact\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RamifiedOperatorsBijectiveAtPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory Matrix ValuativeRel IsLocalRing GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw GlobalTheory.FinPl
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.LevPrimeMid

variable {D : D7}

theorem mxAt_mul_right (P : Pl D → Prop) {m n r : ℕ} {x : Mx D m n} (hx : MxAt P x) (M : Matrix (Fin n) (Fin r) (AE D)) :
    MxAt P (x * M) := fun i j => by
  rw [Matrix.mul_apply]
  exact Ideal.sum_mem _ fun l _ => Ideal.mul_mem_right _ _ (hx i l)

theorem mxAt_mul_left (P : Pl D → Prop) {m n r : ℕ} {x : Mx D n r} (hx : MxAt P x) (M : Matrix (Fin m) (Fin n) (AE D)) :
    MxAt P (M * x) := fun i j => by
  rw [Matrix.mul_apply]
  exact Ideal.sum_mem _ fun l _ => Ideal.mul_mem_left _ _ (hx l j)

theorem combAt_extS (P : Pl D → Prop) {S A L : HSp D} (o : OrthDec S A L) (T : HSp D) {c : WO A T →₀ ℂ}
    (hc : CombAt P c) : CombAt P (extS o T c) := by
  intro u hu
  classical
  obtain ⟨w, hw, rfl⟩ := Finset.mem_image.1 (Finsupp.mapDomain_support hu)
  intro i j
  change (w ⬝ o.pA + (0 : WO L T) ⬝ o.pB) i j ∈ idAt D P
  rw [Matrix.zero_mul, add_zero]
  exact mxAt_mul_right P (hc w hw) _ i j

theorem combAt_extT (P : Pl D → Prop) {T A L : HSp D} (o : OrthDec T A L) (S : HSp D) {c : WO S A →₀ ℂ}
    (hc : CombAt P c) : CombAt P (extT o S c) := by
  intro u hu
  classical
  obtain ⟨w, hw, rfl⟩ := Finset.mem_image.1 (Finsupp.mapDomain_support hu)
  intro i j
  change (o.jA ⬝ w + o.jB ⬝ (0 : WO S L)) i j ∈ idAt D P
  rw [Matrix.mul_zero, add_zero]
  exact mxAt_mul_left P (hc w hw) _ i j

theorem isFinComb_of_combAt (P : Pl D → Prop) {S T : HSp D} {c : WO S T →₀ ℂ} (hc : CombAt P c) : IsFinComb c := by
  intro u hu
  ext i j
  exact (RingHom.mem_ker).1 (Ideal.mem_inf.1 (hc u hu i j)).1

theorem places_of_preT {c : Comm D} {v : VCom c} {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k]
    [IsNonarchimedeanLocalField k] {ι : Type} {o : TDat c k ι} (H : PreT v o) : Places o.p o.I (· ∈ v.tP) :=
  ⟨H.nodup, H.all, H.inj, fun x => H.tP x, fun i => (H.char i).2⟩

theorem heisO_zero (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (u : WO S T) : heisO ψ S T u (fun _ => 0) = fun _ => 0 := by
  funext w
  simp [heisO]

theorem vac_zero (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (LS : Lat S) (LT : Lat T) (P : Pl D → Prop) :
    Vac ψ S T LS LT P (fun _ => 0) :=
  ⟨GlobalTheory.OrientedHeis.theta_zero, fun u _ => heisO_zero ψ S T _, fun _ _ u _ _ => heisO_zero ψ S T u⟩

theorem biVacAt_zero (ψ : AddChar (AF D.host.F) ℂ) {A S A' : HSp D} (LA : Lat A) (LS : Lat S) (LA' : Lat A')
    (P : Pl D → Prop) : BiVacAt ψ LA LS LA' P (fun _ _ => 0) :=
  ⟨fun _ => vac_zero ψ A S LA LS P, fun _ => vac_zero ψ S A' LS LA' P⟩

theorem comb_zero (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (c : WO S T →₀ ℂ) : comb ψ S T c (fun _ => 0) = fun _ => 0 := by
  funext w
  simp [comb, heisO_zero]

theorem biComb_zero (ψ : AddChar (AF D.host.F) ℂ) (A S A' : HSp D) (c : WO A S →₀ ℂ) (c' : WO S A' →₀ ℂ) :
    biComb ψ A S A' c c' (fun _ _ => 0) = fun _ _ => 0 := by
  funext u v
  simp only [biComb, comb_zero]

theorem biLift_zero {A S A' : HSp D} (oma : Om A S) (omb : Om S A') (vA : Vol A) (vS : Vol S) (φ : GA D A → ℂ) :
    biLift oma omb vA vS φ (fun _ _ => 0) = 0 := by
  funext h₂
  simp only [biLift]
  have e1 : ∀ h₀ h₁, (fun v : WO S A' => oma (h₀, h₁) (fun _ => 0) 0) = 0 := fun h₀ h₁ => by
    funext v; exact congrFun (map_zero (oma (h₀, h₁))) 0
  simp only [e1, map_zero, Pi.zero_apply, mul_zero, MeasureTheory.integral_zero]

end GlobalTheory.LevPrimeMid

namespace GlobalTheory.LevPrimeMid

variable {D : D7}

theorem bl_contr (hCL : ContrLaw D) {c : Comm D} (v : VCom c) (t : Tup c) (hW : WeilOK (t := t) v) {j σ : ℕ}
    (h : j + 2 * (σ + 1) + 2 = D.R.m) {φ : GA D (c.X j) → ℂ} (hφ : IsContAut (c.X j) φ)
    {Ξ₁ : WO (c.B j (σ + 1) h).V₀ (c.X (j + 1)) → ℂ} {Ξ₂ : WO (c.X (j + 1)) (c.B (j + 1 + 1) σ (idx_step h)).V₀ → ℂ}
    (h₁ : IsThetaFunO c.ψ _ _ Ξ₁) (h₂ : IsThetaFunO c.ψ _ _ Ξ₂) :
    c.bl j (t.kom j) (t.kom (j + 1)) φ (GlobalTheory.Unf.contr (c.lnk j σ h) (c.X (j + 1)) (c.vL j σ h) Ξ₁ Ξ₂) =
      hand0 (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) φ Ξ₁ Ξ₂ := by
  obtain ⟨χA, χA', χz, omz, omz', e1, e2, w1, w2, w3, w4⟩ := hW.mid j σ h
  funext g
  have := (hCL c.ψ σ _ _ _ (t.sBF j (σ + 1) h) (t.sFB j σ h) (c.lnk j σ h) (c.vL j σ h) χA χA' χz (t.kom j) omz
    (t.kom (j + 1)) omz' e1 e2 w1 w2 w3 w4 φ Ξ₁ Ξ₂ hφ h₁ h₂).2.2 g
  rw [hand0, this]
  rfl

end GlobalTheory.LevPrimeMid

namespace GlobalTheory.LevPrimeMid

variable {D : D7}

end GlobalTheory.LevPrimeMid

namespace GlobalTheory.LevPrimeMid

theorem lawLevelPrime_double : ∀ (D : D7) (c : Comm D) (v : VCom c) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (ι : Type) (o : TDat c k ι), c.Is → v.Is → ShapeOff v o → ∀ j σ (h : j + 2 * (σ + 1) + 2 = D.R.m), ∃ (ε : ι → 𝓀[k]ˣ) (op : BiOp (c.X j) (c.X (j + 1)) (c.X (j + 1 + 1))) (r : ι → ℝ) (e : ι → ℤ), (∀ i, 0 < r i) ∧ OpAt (· ∈ v.tP) op ∧ ∀ t : Tup c, t.Is → WeilOK (t := t) v → t.UnrOn (· ∈ v.tP) → ∀ Ψ₁ Ψ₂, Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (· ∈ v.tP) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (· ∈ v.tP) Ψ₂ → BiVacAt c.ψ (c.x j).L (c.x (j + 1)).L (c.x (j + 1 + 1)).L (· ∈ v.tP) (op.app c.ψ (c.ctr j σ h (t.sBF j (σ + 1) h) (t.sFB j σ h) Ψ₁ Ψ₂)) ∧ ∀ d d', CombAt (· ∉ v.tP) d → CombAt (· ∉ v.tP) d' → ∀ φ ∈ o.Ram j, c.bl j (t.kom j) (t.kom (j + 1)) φ (biComb c.ψ _ _ _ d d' (c.ctr j σ h (t.sBF j (σ + 1) h) (t.sFB j σ h) Ψ₁ Ψ₂)) = o.mono r e (t.sBF j (σ + 1) h).χW • c.bl j (t.kom j) (t.kom (j + 1)) (o.S (fun _ => ε) j φ) (biComb c.ψ _ _ _ d d' (biComb c.ψ _ _ _ (v.dT j) (v.dT (j + 1)) (op.app c.ψ (c.ctr j σ h (t.sBF j (σ + 1) h) (t.sFB j σ h) Ψ₁ Ψ₂)))) := by
  intro D c v k _ _ _ _ ι o hc hv hS j σ h
  have hPl := places_of_preT hS.pre
  obtain ⟨x₀⟩ := Formalism.L2.Col.nonempty_places D.host.F
  have hstd := hc.std
  have sd0 : IsSelfDualC _ (c.x j).L := (hc.x j (by omega)).sd
  have sd1 : IsSelfDualC _ (c.x (j + 1)).L := (hc.x (j + 1) (by omega)).sd
  have sd2 : IsSelfDualC _ (c.x (j + 1 + 1)).L := (hc.x (j + 1 + 1) (by omega)).sd
  have sdG : IsSelfDualC _ (o.M j (σ + 1) h) := ((hS.good x₀).bf j (σ + 1) h).sdV₀
  have sdG' : IsSelfDualC _ (o.M (j + 1 + 1) σ (idx_step h)) := ((hS.good x₀).fb j σ h).sdW₀
  obtain ⟨M0, sdM0, latM0, -⟩ := _root_.GlobalTheory.LatPresc.latAll D k ι o.p o.I _ hPl _ _ (o.β₀ j (σ + 1) h) (o.M j (σ + 1) h) sdG
    (fun i => lastKer (o.Q j i).lat) (fun i => by rw [GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData.lastKer_eq o.q]; exact gluedLat_isLattice o.q 1 2 _ 0)
  obtain ⟨M0', sdM0', latM0', -⟩ := _root_.GlobalTheory.LatPresc.latAll D k ι o.p o.I _ hPl _ _ (o.β₀ (j + 1 + 1) σ (idx_step h))
    (o.M (j + 1 + 1) σ (idx_step h)) sdG' (fun i => lastKer (o.Q (j + 1 + 1) i).lat) (fun i => by rw [GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData.lastKer_eq o.q]; exact gluedLat_isLattice o.q 1 2 _ 0)
  obtain ⟨e1, e1', he1, he1', hR1⟩ := _root_.GlobalTheory.FinPl.RebaseProof.rebaseAll D k ι o.p o.I _ hPl (Fin (c.X (j + 1)).rank) (Fin (c.X j).rank ⊕ Fin 1)
    c.ψ hstd _ _ (o.β₀ j (σ + 1) h) (o.β (j + 1)) (o.M j (σ + 1) h) M0 (c.x (j + 1)).L (c.x (j + 1)).L sdG sd1 sdM0 sd1
  obtain ⟨e2, e2', he2, he2', hR2⟩ := _root_.GlobalTheory.FinPl.RebaseProof.rebaseAll D k ι o.p o.I _ hPl (Fin (c.X (j + 1 + 1)).rank ⊕ Fin 1)
    (Fin (c.X (j + 1)).rank) c.ψ hstd _ _ (o.β (j + 1)) (o.β₀ (j + 1 + 1) σ (idx_step h)) (c.x (j + 1)).L (c.x (j + 1)).L
    (o.M (j + 1 + 1) σ (idx_step h)) M0' sd1 sdG' sd1 sdM0'

  have hext1 := _root_.GlobalTheory.FinPl.ExtAllPf.ext_all D k ι o.p o.I _ hPl (Fin (c.X (j + 1)).rank) (Fin (c.X j).rank) c.ψ hstd
    (c.bes j (σ + 1) h).V₀ (c.X j) (c.bes j (σ + 1) h).L (c.X (j + 1)) (c.bes j (σ + 1) h).o (c.bes j (σ + 1) h).ζ
    (c.bes j (σ + 1) h).line (o.β j) (o.β₀ j (σ + 1) h) (o.β (j + 1)) (fun i => (hS.glued j (σ + 1) h i).sum)
    (c.x j).L M0 (c.x (j + 1)).L (fun i => (o.Q j i).lat) (fun i => (o.Q (j + 1) i).lat) sd0 sdM0 sd1
    (fun i => ⟨hS.pre.latT j (by omega) i, latM0 i, hS.pre.latT (j + 1) (by omega) i⟩)
  have hext2 := _root_.GlobalTheory.FinPl.ExtAllPf.ext_all D k ι o.p o.I _ hPl (Fin (c.X (j + 1)).rank) (Fin (c.X (j + 1 + 1)).rank) c.ψ hstd
    (c.bes (j + 1 + 1) σ (idx_step h)).V₀ (c.X (j + 1 + 1)) (c.bes (j + 1 + 1) σ (idx_step h)).L (c.X (j + 1))
    (c.bes (j + 1 + 1) σ (idx_step h)).o (c.bes (j + 1 + 1) σ (idx_step h)).ζ (c.bes (j + 1 + 1) σ (idx_step h)).line
    (o.β (j + 1 + 1)) (o.β₀ (j + 1 + 1) σ (idx_step h)) (o.β (j + 1)) (fun i => (hS.glued (j + 1 + 1) σ (idx_step h) i).sum)
    (c.x (j + 1 + 1)).L M0' (c.x (j + 1)).L (fun i => (o.Q (j + 1 + 1) i).lat) (fun i => (o.Q (j + 1) i).lat) sd2 sdM0' sd1
    (fun i => ⟨hS.pre.latT (j + 1 + 1) (by omega) i, latM0' i, hS.pre.latT (j + 1) (by omega) i⟩)
  have hrep1 : Reps c.ψ (o.β j) (o.β (j + 1)) (c.x j).L (c.x (j + 1)).L (fun i => phiOne (o.Q j i) (o.Q (j + 1) i)) o.I
      (· ∈ v.tP) (v.dT j) := ⟨(hv.atT j).1, hS.rep j (by omega)⟩
  have hrep2 : Reps c.ψ (o.β (j + 1)) (o.β (j + 1 + 1)) (c.x (j + 1)).L (c.x (j + 1 + 1)).L
      (fun i => phiOne (o.Q (j + 1) i) (o.Q (j + 1 + 1) i)) o.I (· ∈ v.tP) (v.dT (j + 1)) :=
    ⟨(hv.atT (j + 1)).1, hS.rep (j + 1) (by omega)⟩
  have hX1 := hext1.2.1 _ _ hrep1
  have hX2 := hext2.2.2 _ _ hrep2
  obtain ⟨op0, hop0, hC⟩ := _root_.GlobalTheory.FinPl.ContrOpProof.contrOp D k ι o.p o.I _ hPl (Fin (c.X j).rank) (Fin (c.X (j + 1 + 1)).rank) c.ψ hstd
    (σ + 1) σ (c.B j (σ + 1) h) (c.B (j + 1 + 1) σ (idx_step h)) (c.lnk j σ h) (c.X (j + 1)) (c.vL j σ h) (o.β j)
    (o.β₀ j (σ + 1) h) (o.β (j + 1 + 1)) (o.β₀ (j + 1 + 1) σ (idx_step h)) M0 (c.x (j + 1)).L M0'
    (fun i => (o.Q j i).lat) (fun i => (o.Q (j + 1 + 1) i).lat) sdM0 sd1 sdM0'
    (fun i => ⟨(hS.glued j (σ + 1) h i).sum, (hS.glued (j + 1 + 1) σ (idx_step h) i).sum, latM0 i, latM0' i⟩) e1' e2' he1' he2'
  have hInv := (_root_.GlobalTheory.FinPl.biInv_main D k ι o.p o.I _ hPl c.ψ hstd _ _ _ op0 hop0).1 (c.x j).L (c.x (j + 1)).L (c.x (j + 1 + 1)).L
    sd0 sd1 sd2
  obtain ⟨ε, -, hV⟩ := _root_.GlobalTheory.FinPl.vertexAll D k ι o.p o.I _ hPl o.q c.ψ o.χ o.hχ (fun i => (hS.pre.char i).1)
  obtain ⟨r, e, hr, hVE⟩ := hV (Fin (c.X (j + 1)).rank) (Fin (c.X j).rank) (Fin (c.X (j + 1 + 1)).rank)

  let a : PairDat o.p (c.B j (σ + 1) h).A (c.B j (σ + 1) h).V₀ (Fin (c.X j).rank) := ⟨o.β j, o.β₀ j (σ + 1) h, o.Q j⟩
  let b : MidDat o.p (c.J j (σ + 1) h).W₀ (Fin (c.X (j + 1)).rank) := ⟨o.β (j + 1), o.Q (j + 1)⟩
  let a' : PairDat o.p (c.B (j + 1 + 1) σ (idx_step h)).A (c.B (j + 1 + 1) σ (idx_step h)).V₀ (Fin (c.X (j + 1 + 1)).rank) :=
    ⟨o.β (j + 1 + 1), o.β₀ (j + 1 + 1) σ (idx_step h), o.Q (j + 1 + 1)⟩
  have hcore : ∀ i, GluedCore (c.B j (σ + 1) h) (o.M j (σ + 1) h) o.q (a.α i) (a.α₀ i) (a.P i) ∧
      GluedCore (c.B (j + 1 + 1) σ (idx_step h)) (o.M (j + 1 + 1) σ (idx_step h)) o.q (a'.α i) (a'.α₀ i) (a'.P i) ∧
      (b.β i).IsLat (c.x (j + 1)).L (b.Q i).lat := fun i =>
    ⟨hS.glued j (σ + 1) h i, hS.glued (j + 1 + 1) σ (idx_step h) i, hS.pre.latT (j + 1) (by omega) i⟩
  have hOrth : ∀ x, x ∈ v.tP → (∃ LL, OrthAt (c.B j (σ + 1) h).o M0 (c.x j).L LL x) ∧
      ∃ LL, OrthAt (c.B (j + 1 + 1) σ (idx_step h)).o M0' (c.x (j + 1 + 1)).L LL x := fun x hx => ⟨hext1.1 x hx, hext2.1 x hx⟩

  have key : ∀ t : Tup c, ∀ Ψ₁ Ψ₂, Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (· ∈ v.tP) Ψ₁ →
      Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (· ∈ v.tP) Ψ₂ →
      ∃ f₁ f₂, Vac c.ψ _ _ (o.M j (σ + 1) h) (c.x (j + 1)).L (· ∈ v.tP) (flatBF (t.sBF j (σ + 1) h) Ψ₁) ∧
        Vac c.ψ _ _ (c.x (j + 1)).L (o.M (j + 1 + 1) σ (idx_step h)) (· ∈ v.tP) (flatFB (t.sFB j σ h) Ψ₂) ∧
        Vac c.ψ _ _ M0 (c.x (j + 1)).L (· ∈ v.tP) f₁ ∧ Vac c.ψ _ _ (c.x (j + 1)).L M0' (· ∈ v.tP) f₂ ∧
        c.ctr j σ h (t.sBF j (σ + 1) h) (t.sFB j σ h) Ψ₁ Ψ₂ = op0.app c.ψ (GlobalTheory.Unf.contr (B := c.B j (σ + 1) h) (B' := c.B (j + 1 + 1) σ (idx_step h)) (c.lnk j σ h) (c.X (j + 1)) (c.vL j σ h) f₁ f₂) ∧
        BiVacAt c.ψ (c.x j).L (c.x (j + 1)).L (c.x (j + 1 + 1)).L (· ∈ v.tP)
          (GlobalTheory.Unf.contr (B := c.B j (σ + 1) h) (B' := c.B (j + 1 + 1) σ (idx_step h)) (c.lnk j σ h) (c.X (j + 1)) (c.vL j σ h) f₁ f₂) ∧
        OverAll c.ψ a.α₀ b.β (o.M j (σ + 1) h) (c.x (j + 1)).L
          (fun i => tensCol (phiOne (a.P i) (b.Q i)) (vecInd (b.Q i).lat)) o.I
          (flatBF (t.sBF j (σ + 1) h) Ψ₁) (comb c.ψ _ _ (extS (c.bes j (σ + 1) h).o (c.X (j + 1)) (v.dT j)) f₁) ∧
        OverAll c.ψ b.β a'.α₀ (c.x (j + 1)).L (o.M (j + 1 + 1) σ (idx_step h))
          (fun i => tensRow (phiOne (b.Q i) (a'.P i)) (dualInd (b.Q i).lat)) o.I
          (flatFB (t.sFB j σ h) Ψ₂) (comb c.ψ _ _ (extT (c.bes (j + 1 + 1) σ (idx_step h)).o (c.X (j + 1)) (v.dT (j + 1))) f₂) := by
    intro t Ψ₁ Ψ₂ hΨ₁ hΨ₂
    have hF := _root_.GlobalTheory.FinPl.FlatVacuum.flatVac D c.ψ (· ∈ v.tP)
    have hXi1 := hF.1 (σ + 1) (c.B j (σ + 1) h) (c.J j (σ + 1) h) (t.sBF j (σ + 1) h) (v.N j) (o.M j (σ + 1) h) (v.N (j + 1))
      (c.x (j + 1)).L (fun x _ => (hS.good x).bf j (σ + 1) h) Ψ₁ hΨ₁
    have hXi2 := hF.2.1 σ (c.J j (σ + 1) h) (c.B (j + 1 + 1) σ (idx_step h)) (t.sFB j σ h) (v.N (j + 1)) (c.x (j + 1)).L
      (v.N (j + 1 + 1)) (o.M (j + 1 + 1) σ (idx_step h)) (fun x _ => (hS.good x).fb j σ h) Ψ₂ hΨ₂
    obtain ⟨hf1, hinv1, hov1⟩ := hR1 _ hXi1
    obtain ⟨hf2, hinv2, hov2⟩ := hR2 _ hXi2
    refine ⟨_, _, hXi1, hXi2, hf1, hf2, ?_, ?_, ?_, ?_⟩
    · have := hC _ _ hf1 hf2
      rw [hinv1, hinv2] at this
      exact this
    · exact (_root_.GlobalTheory.ContrComb.contr_comb_main D c.ψ hstd (σ + 1) σ (c.B j (σ + 1) h) (c.B (j + 1 + 1) σ (idx_step h)) (c.lnk j σ h) (c.X (j + 1))
        (c.vL j σ h) _ _ hf1.1 hf2.1).2.2 (· ∈ v.tP) (c.x j).L (c.x (j + 1)).L (c.x (j + 1 + 1)).L M0 M0' sd0 sd1 sd2 sdM0 sdM0'
        hOrth hf1 hf2
    · exact (hov1 _ _).2 (hX1.2 _ hf1)
    · exact (hov2 _ _).2 (hX2.2 _ hf2)

  have hCL : ContrLaw D := GlobalTheory.T.doubleStep_eq_two_thetaColumnLifts D
  have hCC := _root_.GlobalTheory.ContrComb.contr_comb_main D c.ψ hstd (σ + 1) σ (c.B j (σ + 1) h) (c.B (j + 1 + 1) σ (idx_step h)) (c.lnk j σ h) (c.X (j + 1))
    (c.vL j σ h)
  rcases hInv with hz | ⟨op', hop', hinv⟩
  ·
    have happ : ∀ C, BiOp.app c.ψ (⟨0, Fin.elim0, Fin.elim0⟩ : BiOp (c.X j) (c.X (j + 1)) (c.X (j + 1 + 1))) C = fun _ _ => 0 :=
      fun C => by funext u w; simp [BiOp.app]
    refine ⟨ε, ⟨0, Fin.elim0, Fin.elim0⟩, r, e, hr, fun i => i.elim0, ?_⟩
    intro t _ _ _ Ψ₁ Ψ₂ hΨ₁ hΨ₂
    obtain ⟨f₁, f₂, -, -, -, -, hctr, hC0, -, -⟩ := key t Ψ₁ Ψ₂ hΨ₁ hΨ₂
    have h0 : c.ctr j σ h (t.sBF j (σ + 1) h) (t.sFB j σ h) Ψ₁ Ψ₂ = fun _ _ => 0 := by rw [hctr, hz _ hC0]; rfl
    refine ⟨by rw [happ]; exact biVacAt_zero _ _ _ _ _, fun d d' _ _ φ _ => ?_⟩
    rw [h0, happ, biComb_zero, biComb_zero, biComb_zero]
    simp only [Comm.bl, biLift_zero, smul_zero]
  · refine ⟨ε, op', r, e, hr, hop', ?_⟩
    intro t _ hW hU Ψ₁ Ψ₂ hΨ₁ hΨ₂
    obtain ⟨f₁, f₂, hXi1, hXi2, hf₁, hf₂, hctr, hC0, hov1, hov2⟩ := key t Ψ₁ Ψ₂ hΨ₁ hΨ₂
    have hback : op'.app c.ψ (c.ctr j σ h (t.sBF j (σ + 1) h) (t.sFB j σ h) Ψ₁ Ψ₂) = (GlobalTheory.Unf.contr (B := c.B j (σ + 1) h) (B' := c.B (j + 1 + 1) σ (idx_step h)) (c.lnk j σ h) (c.X (j + 1)) (c.vL j σ h) f₁ f₂) := by
      rw [hctr]; exact hinv _ hC0
    refine ⟨by rw [hback]; exact hC0, fun d d' hd hd' φ hφ => ?_⟩
    rw [hback]
    have hD1 := combAt_extS (fun x => x ∉ v.tP) (c.bes j (σ + 1) h).o (c.X (j + 1)) hd
    have hD2 := combAt_extT (fun x => x ∉ v.tP) (c.bes (j + 1 + 1) σ (idx_step h)).o (c.X (j + 1)) hd'
    have hT1 := combAt_extS (· ∈ v.tP) (c.bes j (σ + 1) h).o (c.X (j + 1)) (hv.atT j).1
    have hT2 := combAt_extT (· ∈ v.tP) (c.bes (j + 1 + 1) σ (idx_step h)).o (c.X (j + 1)) (hv.atT (j + 1)).1
    have hAC1 := (_root_.GlobalTheory.FinPl.allComb D k ι o.p o.I _ hPl (Fin (c.X (j + 1)).rank) (Fin (c.X j).rank ⊕ Fin 1) c.ψ hstd _ _
      (o.β₀ j (σ + 1) h) (o.β (j + 1)) (o.M j (σ + 1) h) (c.x (j + 1)).L sdG sd1
      (fun i => tensCol (phiOne (a.P i) (b.Q i)) (vecInd (b.Q i).lat))).2.2 _ hD1 _ hXi1
    have hAC2 := (_root_.GlobalTheory.FinPl.allComb D k ι o.p o.I _ hPl (Fin (c.X (j + 1 + 1)).rank ⊕ Fin 1) (Fin (c.X (j + 1)).rank) c.ψ hstd _ _
      (o.β (j + 1)) (o.β₀ (j + 1 + 1) σ (idx_step h)) (c.x (j + 1)).L (o.M (j + 1 + 1) σ (idx_step h)) sd1 sdG'
      (fun i => tensRow (phiOne (b.Q i) (a'.P i)) (dualInd (b.Q i).lat))).2.2 _ hD2 _ hXi2
    have th1' := GlobalTheory.AvgMid.theta_comb hstd (isFinComb_of_combAt _ hT1) hf₁.1
    have th2' := GlobalTheory.AvgMid.theta_comb hstd (isFinComb_of_combAt _ hT2) hf₂.1
    have thD1' := GlobalTheory.AvgMid.theta_comb hstd (isFinComb_of_combAt _ hD1) th1'
    have thD2' := GlobalTheory.AvgMid.theta_comb hstd (isFinComb_of_combAt _ hD2) th2'
    have hVx := hVE σ (c.B j (σ + 1) h) (c.J j (σ + 1) h) (c.B (j + 1 + 1) σ (idx_step h)) (t.sBF j (σ + 1) h) (t.sFB j σ h)
      (c.lnk j σ h) (c.vL j σ h) (fun x hx => ⟨hU.bf j (σ + 1) h x hx, hU.fb j σ h x hx⟩) a b a' (o.M j (σ + 1) h)
      (c.x (j + 1)).L (o.M (j + 1 + 1) σ (idx_step h)) sdG sd1 sdG' hcore _ _ hAC1.1 hAC2.1 _ _ (hAC1.2 _ hov1)
      (hAC2.2 _ hov2) φ hφ
    have hSφ : IsContAut (c.X j) (a.sAll o.q (fun i => resChar (o.χ i) (o.hχ i) o.q) ε o.I φ) :=
      ((_root_.GlobalTheory.FinPl.allBijective_all D k ι o.p o.q o.χ o.hχ ε (Fin (c.X j).rank) _ _ a hS.pre.inj o.I).1.mapsTo hφ).1
    have e1 := (hCC _ _ hXi1.1 hXi2.1).2.1 d d'
    have e2 := bl_contr hCL v t hW h hφ.1 hAC1.1.1 hAC2.1.1
    have e4 := bl_contr hCL v t hW h hSφ thD1' thD2'
    have e5 := (hCC _ _ th1' th2').2.1 d d'
    have e6 := (hCC _ _ hf₁.1 hf₂.1).2.1 (v.dT j) (v.dT (j + 1))
    show c.bl j (t.kom j) (t.kom (j + 1)) φ (biComb c.ψ _ _ _ d d' (GlobalTheory.Unf.contr (B := c.B j (σ + 1) h) (B' := c.B (j + 1 + 1) σ (idx_step h)) (c.lnk j σ h) (c.X (j + 1)) (c.vL j σ h) (flatBF (t.sBF j (σ + 1) h) Ψ₁) (flatFB (t.sFB j σ h) Ψ₂))) = _
    rw [← e1, e2, hVx, ← e4, e5, e6]
    rfl

end GlobalTheory.LevPrimeMid
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLevelPrimeLawDoubleStep =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLevelPrimeLawDoubleStepStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLevelPrimeLawDoubleStepStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.SmallPair\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.VacOfShape\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLevelPrimeLawDoubleStep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory Matrix ValuativeRel IsLocalRing GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw GlobalTheory.FinPl

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLevelPrimeLawDoubleStepStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawLevelPrimeLawAllTuples =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawLevelPrimeLawAllTuples", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.SmallPair\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.VacOfShape\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LevelPrimeLawLastTwoStepsAllTuplesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLevelPrimeLawDoubleStepStatement\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlacesToAdeles\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RamifiedOperatorBijectiveFiniteTranslationCombin\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RamifiedOperatorsBijectiveAtPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory Matrix ValuativeRel IsLocalRing GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw GlobalTheory.FinPl
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.LevPrimeAll

variable {D : D7}


open GlobalTheory.FinPl.AllBij in
theorem ram_sOp {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {ι : Type}
    {p : ι → SplitPt D k} {n : Type} [Fintype n] [DecidableEq n] {A : HSp D} (α : ∀ i, Frame (p i) A n) (P : ι → Pair k n)
    (hinj : Function.Injective fun i => (p i).v) (q : Unif k) (χ : AddChar k Circle) (hχ : HasConductor χ 1) (ε : 𝓀[k]ˣ) (i : ι)
    (φ : GA D A → ℂ) (hφ : IsContAut A φ ∧ ∀ j, RamAt (α j) (P j) φ) :
    IsContAut A (sOp (α i) (P i) q (resChar χ hχ q) ε φ) ∧ ∀ j, RamAt (α j) (P j) (sOp (α i) (P i) q (resChar χ hχ q) ε φ) := by
  obtain ⟨hbij, -, c, c', hc, -⟩ := _root_.GlobalTheory.FinPl.ramBijective_holds D k (p i) n q χ hχ _ rfl ε A (α i) (P i)
  have hC := mapDomain_mem _ (gl_mem (α i)) c
  have hT : ∀ φ, sOp (α i) (P i) q (resChar χ hχ q) ε φ = act (Finsupp.mapDomain (α i).gl c) φ :=
    fun φ => (hc φ).trans (sum_rep_eq _ _ _)
  refine ⟨?_, fun j => ?_⟩
  · rw [hT]; exact isContAut_act _ hφ.1
  · rcases eq_or_ne j i with rfl | hj
    · exact hbij.mapsTo (hφ.2 j)
    · rw [hT]
      exact ramAt_act _ _ _ (fun x hx g => grpAt_comm A (fun e => hj (hinj e)) (hC x hx) (gl_mem _ g)) (hφ.2 j)

theorem ram_S {c : Comm D} {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {ι : Type}
    (o : TDat c k ι) (hinj : Function.Injective fun i => (o.p i).v) (ε : ℕ → ι → 𝓀[k]ˣ) (j : ℕ) (φ : GA D (c.X j) → ℂ)
    (hφ : φ ∈ o.Ram j) : o.S ε j φ ∈ o.Ram j := by
  unfold TDat.S
  induction o.I with
  | nil => exact hφ
  | cons i l ih => exact ram_sOp (o.β j) (o.Q j) hinj o.q (o.χ i) (o.hχ i) (ε j i) i _ ih

theorem exists_choice (c : Comm D) (v : VCom c) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k]
    [IsNonarchimedeanLocalField k] (ι : Type) (o : TDat c k ι) (hc : c.Is) (hv : v.Is) (hS : ShapeOff v o) (j : ℕ) :
    ∃ (ε : ι → 𝓀[k]ˣ) (op : BiOp (c.X j) (c.X (j + 1)) (c.X (j + 1 + 1))) (r : ι → ℝ) (e : ι → ℤ), (∀ i, 0 < r i) ∧
      OpAt (· ∈ v.tP) op ∧
      (∀ σ (h : j + 2 * (σ + 1) + 2 = D.R.m), ∀ t : Tup c, t.Is → WeilOK (t := t) v → t.UnrOn (· ∈ v.tP) → ∀ Ψ₁ Ψ₂,
        Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (· ∈ v.tP) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (· ∈ v.tP) Ψ₂ →
        BiVacAt c.ψ (c.x j).L (c.x (j + 1)).L (c.x (j + 1 + 1)).L (· ∈ v.tP)
          (op.app c.ψ (c.ctr j σ h (t.sBF j (σ + 1) h) (t.sFB j σ h) Ψ₁ Ψ₂)) ∧
        ∀ d d', CombAt (· ∉ v.tP) d → CombAt (· ∉ v.tP) d' → ∀ φ ∈ o.Ram j,
          c.bl j (t.kom j) (t.kom (j + 1)) φ (biComb c.ψ _ _ _ d d' (c.ctr j σ h (t.sBF j (σ + 1) h) (t.sFB j σ h) Ψ₁ Ψ₂)) =
            o.mono r e (t.sBF j (σ + 1) h).χW • c.bl j (t.kom j) (t.kom (j + 1)) (o.S (fun _ => ε) j φ)
              (biComb c.ψ _ _ _ d d' (biComb c.ψ _ _ _ (v.dT j) (v.dT (j + 1))
                (op.app c.ψ (c.ctr j σ h (t.sBF j (σ + 1) h) (t.sFB j σ h) Ψ₁ Ψ₂))))) ∧
      ∀ (h : j + 2 * 0 + 2 = D.R.m), ∀ t : Tup c, t.Is → WeilOK (t := t) v → t.UnrOn (· ∈ v.tP) → t.UnrK (· ∈ v.tP) → ∀ Ψ₁ Ψ₂,
        Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (· ∈ v.tP) Ψ₁ → Vac c.ψ _ _ (v.N (j + 1)) v.NT (· ∈ v.tP) Ψ₂ →
        BiVacAt c.ψ (c.x j).L (c.x (j + 1)).L (c.x (j + 1 + 1)).L (· ∈ v.tP)
          (op.app c.ψ (c.lst j h (v.τ j h) (t.sBF j 0 h) Ψ₁ Ψ₂)) ∧
        ∀ d d', CombAt (· ∉ v.tP) d → CombAt (· ∉ v.tP) d' → ∀ φ ∈ o.Ram j, ∀ f, IsContAut c.T f →
          ∫ h' in c.volT.𝓕, f h' * c.bl j (t.kom j) (t.kom (j + 1)) φ
              (biComb c.ψ _ _ _ d d' (c.lst j h (v.τ j h) (t.sBF j 0 h) Ψ₁ Ψ₂)) ((c.oT (j + 1 + 1) h).emb (h', 1)) ∂c.volT.μ =
            o.mono r e (t.sBF j 0 h).χW * ∫ h' in c.volT.𝓕, f h' * c.bl j (t.kom j) (t.kom (j + 1)) (o.S (fun _ => ε) j φ)
              (biComb c.ψ _ _ _ d d' (biComb c.ψ _ _ _ (v.dT j) (v.dT (j + 1))
                (op.app c.ψ (c.lst j h (v.τ j h) (t.sBF j 0 h) Ψ₁ Ψ₂)))) ((c.oT (j + 1 + 1) h).emb (h', 1)) ∂c.volT.μ := by
  by_cases h1 : ∃ σ, j + 2 * (σ + 1) + 2 = D.R.m
  · obtain ⟨σ, h⟩ := h1
    obtain ⟨ε, op, r, e, hr, hop, H⟩ := _root_.GlobalTheory.LevPrimeMid.lawLevelPrime_double D c v k ι o hc hv hS j σ h
    refine ⟨ε, op, r, e, hr, hop, fun σ' h' => ?_, fun h' => absurd h' (by omega)⟩
    obtain rfl : σ = σ' := by omega
    exact H
  · by_cases h2 : j + 2 * 0 + 2 = D.R.m
    · obtain ⟨ε, op, r, e, hr, hop, H⟩ := _root_.GlobalTheory.FinPl.TLastAll.main D c v k ι o hc hv hS j h2
      exact ⟨ε, op, r, e, hr, hop, fun σ h => absurd ⟨σ, h⟩ h1, fun _ => H⟩
    · exact ⟨fun _ => 1, ⟨0, Fin.elim0, Fin.elim0⟩, fun _ => 1, fun _ => 0, fun _ => one_pos, fun i => i.elim0,
        fun σ h => absurd ⟨σ, h⟩ h1, fun h => absurd h h2⟩

theorem lawLevelPrime_all : ∀ D : D7, GlobalTheory.SeeSaw.TOfShape D := by
  intro D c v k _ _ _ _ ι o hc hv hS
  choose ε op r e hr hop Hm Hl using exists_choice c v k ι o hc hv hS
  refine ⟨ε, op, r, e, hr, ?_, fun t w ht hW hU hK hT => ⟨?_, ?_⟩⟩
  · refine ⟨hv.disj, hv.sd, hv.sdT, hv.b, hv.bT, hv.Ψ, hv.ΨT, hv.JG, hv.atG, fun j => ⟨(hv.atT j).1, hop j⟩, fun j φ hφ => ?_⟩
    refine ⟨(hv.ram j φ hφ).1, ?_⟩
    change o.S ε j φ ∈ v.RamAd j
    change φ ∈ v.RamAd j at hφ
    rw [hS.ram j] at hφ ⊢
    exact ram_S o hS.pre.inj ε j φ hφ
  · intro j σ h Ψ₁ Ψ₂ h₁ h₂
    obtain ⟨H1, H2⟩ := Hm j σ h t ht hW hU Ψ₁ Ψ₂ h₁ h₂
    refine ⟨H1, fun d d' hd hd' φ hφ => ?_⟩
    rw [hT j (σ + 1) h]
    exact H2 d d' hd hd' φ (hS.ram j ▸ hφ)
  · intro j h Ψ₁ Ψ₂ h₁ h₂
    obtain ⟨H1, H2⟩ := Hl j h t ht hW hU hK Ψ₁ Ψ₂ h₁ h₂
    refine ⟨H1, fun d d' hd hd' φ hφ f hf _ => ?_⟩
    rw [hT j 0 h]
    exact H2 d d' hd hd' φ (hS.ram j ▸ hφ) f hf

end GlobalTheory.LevPrimeAll

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawLevelPrimeLawAllTuples =====
