module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlphaDivBetaRamifiedAtLevel
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlphaDivBetaRamifiedFirst
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaGridCharacterQuotientNotUnramifiedOverBaseP
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianLatticeLocalBases
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLagrModelOfIsLin
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemPairLat
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SquareStanding
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTauEOverRealPlaceStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEmbeddingSplitPrimeGridLocalTensorPlacesStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGoodSchrodingerModelConjugateDoubledStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNegConjMemberHermitianLatticeSpaceDataStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSplitCompletelyAuxiliaryPlaceOutsideFinsetStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeilRepDualPairCharactersBetaQuotientStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeilRepSquarePairCharactersAlphaQuotientStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GridSquareSkewSumSpaceIsSkewHermitianSelfDual
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAdmissibleCMBaseDataOfSquareTupleStandingStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeConjDirectSumTraceSelfDualStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SquareCharactersIsGoodGridPlacesStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SquareModelNegSpaceGoodSchroedingerStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaGridCharactersArchExponentsGapGtRankStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaGridSquareRankInequalitiesStatement
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CmDataIsCMExtAndGramIsHermND
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasSign
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FactPrincipalDatum
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesUnderLocalDataMemGoodCharacterRamification, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesUnderLocalDataMemGoodCharacterRamificationStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaTripleOfSquareGridLatticeCompatible, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaTripleOfSquareGridLatticeCompatibleStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesUnderLocalDataMemGoodCharacterRamification =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesUnderLocalDataMemGoodCharacterRamification", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlphaDivBetaRamifiedAtLevel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlphaDivBetaRamifiedFirst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaGridCharacterQuotientNotUnramifiedOverBaseP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianLatticeLocalBases\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLagrModelOfIsLin\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemPairLat\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames GlobalTheory.BigNZ GlobalTheory.AdelicU
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ Num IsTripleOf IsDatumA skewGram blkU conjU UB alpha beta blk)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chars Rep IsTriple UAt ratU mat Acts SInf HasExp SplitsFully)

attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField borelKw borelSpaceKw

open GlobalTheory.TripleSpaceW (conjSub)
open GlobalTheory.SkewLat (scLat pairLat)

namespace GlobalTheory.BigNZ.LocalPlaceUnderMembership

theorem under_locPl_mem : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {μ₀ : T} (_hL : L.Is μ₀) (t : T)
    (i j : Fin D.R.m) (B : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E) (X : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars D.host.F D.host.E) (a a' : ℕ),
    X.α = alpha G t i j → X.β = beta G i j → X.IsGood B a a' →
    ∀ w ∈ locPl G t, w.under (𝓞 D.host.F) ∈ X.T := by
  classical
  intro D T L sc G μ₀ hL t i j B X a a' hα hβ hX w hw
  by_contra hn
  have hab : w ∉ GlobalTheory.LFun.above D.host.E (X.T : Set (HeightOneSpectrum (𝓞 D.host.F))) := fun h => hn h
  have hu : GlobalTheory.LFun.UnrAt (F := D.host.F) (E := D.host.E) (alpha G t i j / beta G i j) w := by
    rw [← hα, ← hβ, div_eq_mul_inv]
    exact (hX.unrα w hab).mul (hX.unrβ w hab).inv
  by_cases hs : w.under (𝓞 D.host.F) ∈ G.pl.S0
  · rcases G.pl.mem_S0_of_sum_eq.1 hs with h | h
    · exact GlobalTheory.ThetaGridRamifiedOverBasePlace.thetaGridCharacterQuotient_not_unramified_over_basePlace hL t i j w h hu
    · exact GlobalTheory.FunObj.SqNum.not_unrAt_alpha_div_beta_over_S₁ hL t i j w h hu
  · rcases Finset.mem_union.1 hw with h | h
    · unfold Places.W0 at h
      obtain ⟨v, hv, rfl⟩ := Finset.mem_image.1 h
      exact hs (by rw [G.pl.under_w hv]; exact hv)
    · exact GlobalTheory.TwistRam.not_unrAt_alpha_div_beta hL t i j w w h rfl hs hu

end GlobalTheory.BigNZ.LocalPlaceUnderMembership
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesUnderLocalDataMemGoodCharacterRamification =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesUnderLocalDataMemGoodCharacterRamificationStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesUnderLocalDataMemGoodCharacterRamificationStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesUnderLocalDataMemGoodCharacterRamification\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianLatticeLocalBases\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLagrModelOfIsLin\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemPairLat\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames GlobalTheory.BigNZ GlobalTheory.AdelicU
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ Num IsTripleOf IsDatumA skewGram blkU conjU UB alpha beta blk)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chars Rep IsTriple UAt ratU mat Acts SInf HasExp SplitsFully)

attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField borelKw borelSpaceKw

open GlobalTheory.TripleSpaceW (conjSub)
open GlobalTheory.SkewLat (scLat pairLat)


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesUnderLocalDataMemGoodCharacterRamificationStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaTripleOfSquareGridLatticeCompatible =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaTripleOfSquareGridLatticeCompatible", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLagrModelOfIsLin\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SquareStanding\nimport Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTauEOverRealPlaceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEmbeddingSplitPrimeGridLocalTensorPlacesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGoodSchrodingerModelConjugateDoubledStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNegConjMemberHermitianLatticeSpaceDataStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSplitCompletelyAuxiliaryPlaceOutsideFinsetStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeilRepDualPairCharactersBetaQuotientStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeilRepSquarePairCharactersAlphaQuotientStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GridSquareSkewSumSpaceIsSkewHermitianSelfDual\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAdmissibleCMBaseDataOfSquareTupleStandingStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesUnderLocalDataMemGoodCharacterRamificationStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeConjDirectSumTraceSelfDualStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SquareCharactersIsGoodGridPlacesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SquareModelNegSpaceGoodSchroedingerStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaGridCharactersArchExponentsGapGtRankStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaGridSquareRankInequalitiesStatement\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CmDataIsCMExtAndGramIsHermND\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasSign\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FactPrincipalDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames GlobalTheory.BigNZ GlobalTheory.AdelicU
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ Num IsTripleOf IsDatumA skewGram blkU conjU UB alpha beta blk)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chars Rep IsTriple UAt ratU mat Acts SInf HasExp SplitsFully)

attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField borelKw borelSpaceKw

noncomputable section

namespace GlobalTheory.BigNZ.Tied

open GlobalTheory.TripleSpaceW (conjSub)
open GlobalTheory.SkewLat (scLat pairLat)

theorem tau_choice : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {μ₀ : T} (_hL : L.Is μ₀) (t : T)
    (v : HeightOneSpectrum (𝓞 D.host.F)), (∃ w ∈ locPl G t, w.under (𝓞 D.host.F) = v) →
    ∃ τ : D.host.E →ₐ[D.host.F] Fv D.host.F v, ∀ w ∈ locPl G t, w.under (𝓞 D.host.F) = v → splitPrime τ = w := @GlobalTheory.T.exists_embedding_splitPrime_gridLocalTensorPlaces

theorem isHerm_conjLat : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {μ₀ : T} (_hL : L.Is μ₀) (W : G.Weil)
    (i j : Fin D.R.m) (B : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E) (τf : InfinitePlace D.host.F → D.what₂.Tau),
    (∀ w x, (B.emb w).1 x = conj (tauE D (τf w) x)) →
    ∃ bas : ∀ v : HeightOneSpectrum (𝓞 D.host.F), GL (Fin (spW G i j).rank) (Fv D.host.F v),
      Spc.IsHerm D.sp.cm.sig B
        (Spc.mk ((1 : D.host.E) • (spW G i j).gram) (conjSub (G.Λ (.grid ((i : ℕ) + 1) ((j : ℕ) + 1))))
          (fun w => W.cart (.grid ((i : ℕ) + 1) ((j : ℕ) + 1)) (τf w)) bas)
        ((spW G i j).rank - (D.R.m - j - 1) / 2) ((D.R.m - j - 1) / 2) := by
  classical
  intro D T L sc G μ₀ hL W i j B τf hemb
  have hX : (Node.grid ((i : ℕ) + 1) ((j : ℕ) + 1)).InRange D.R.m := ⟨i.2, j.2⟩
  have hV := node_isV G hL hX
  haveI hlat : (conjSub (G.Λ (.grid ((i : ℕ) + 1) ((j : ℕ) + 1)))).IsFullLattice D.host.E :=
    GlobalTheory.TripleSpaceW.conjSub_isFullLattice (GlobalTheory.FunObj.selfDual_isFullLattice _ _ hV.sd)
  choose bas0 hbas0 using fun v : B.P =>
    GlobalTheory.AdelicU.exists_isSplitBasis (B.τ v) (conjSub (G.Λ (.grid ((i : ℕ) + 1) ((j : ℕ) + 1))))
      (GlobalTheory.AdelicU.isCMExt_host D)
  have hq : Node.neg D.R.m (.grid ((i : ℕ) + 1) ((j : ℕ) + 1)) = (D.R.m - j - 1) / 2 := by
    show (D.R.m - ((j : ℕ) + 1)) / 2 = _
    rw [Nat.sub_sub]
  have hherm : ∀ a b, star ((spW G i j).gram b a) = (spW G i j).gram a b := fun a b =>
    (spW G i j).herm.eq ((spW G i j).frame b) ((spW G i j).frame a)
  refine ⟨fun v => if h : v ∈ B.P then bas0 ⟨v, h⟩ else 1,
    ⟨fun a b => ?_, fun w => ?_, hlat, fun y => ?_, fun w => ?_, fun v => ?_⟩⟩
  · show star (((1 : D.host.E) • (spW G i j).gram) b a) = ((1 : D.host.E) • (spW G i j).gram) a b
    rw [one_smul]
    exact hherm a b
  · show GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.HasSig (((1 : D.host.E) • (spW G i j).gram).map (B.emb w).1) _ _
    have hs := hV.sigOK (B.emb w).1
    rw [hV.sig, hq, ← hV.rank] at hs
    rw [one_smul]
    exact GlobalTheory.TripleSpaceW.hasSig_of_hasSignature hs
  · have hσ : ∀ z : D.host.E, D.sp.cm.sig z = star z := fun _ => rfl
    have hh' : ∀ a b, star ((spW G i j).gram a b) = (spW G i j).gram b a := fun a b => hherm b a
    have key : ∀ x, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.form D.sp.cm.sig ((1 : D.host.E) • (spW G i j).gram) y x =
        star (∑ a, ∑ b, star ((star x) a) * (spW G i j).gram a b * (star y) b) := fun x => by
      simp only [GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.form, one_smul, dotProduct, Matrix.mulVec, star_sum, star_mul', star_star,
        Pi.star_apply, hσ, hh', Finset.mul_sum]
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
      ring
    show star y ∈ G.Λ (.grid ((i : ℕ) + 1) ((j : ℕ) + 1)) ↔ _
    rw [hV.sd.2 (star y)]
    constructor
    · intro h x hx
      rw [key, ← GlobalTheory.TripleSpaceW.exists_coe_iff]
      exact h _ hx
    · intro h x' hx'
      have := h (star x') (by rw [GlobalTheory.TripleSpaceW.mem_conjSub, star_star]; exact hx')
      rw [key, ← GlobalTheory.TripleSpaceW.exists_coe_iff, star_star] at this
      exact this
  · have e : ((1 : D.host.E) • (spW G i j).gram).map (B.emb w).1 =
        (gramAt D (spW G i j) (τf w)).map (starRingEnd ℂ) := by
      ext a b
      simp only [one_smul, Matrix.map_apply, hemb, gramAt]
    show GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsCartan (((1 : D.host.E) • (spW G i j).gram).map (B.emb w).1) _
    rw [e]
    exact GlobalTheory.TripleSpaceW.isCartan_map_conj (W.cart_is _ hX (τf w))
  · show GlobalTheory.AdelicU.IsSplitBasis (B.τ v) _ (if h : v.1 ∈ B.P then bas0 ⟨v.1, h⟩ else 1)
    rw [dite_eq_left v.2]
    exact hbas0 v

theorem isSkew_conjLat : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {μ₀ : T} (_hL : L.Is μ₀) (W : G.Weil)
    (i j : Fin D.R.m) (e : Num G i j) (B : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E) (τf : InfinitePlace D.host.F → D.what₂.Tau),
    (∀ w x, (B.emb w).1 x = conj (tauE D (τf w) x)) →
    ∃ bas : ∀ v : HeightOneSpectrum (𝓞 D.host.F), GL (Fin ((spW G i j).rank + (spW₁ G i j).rank)) (Fv D.host.F v),
      Spc.IsSkew D.sp.cm.sig B
        (Spc.mk (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.skewGram (spV G i j) (spV₁ G i j) e)
          (pairLat (scLat D.host.AA (G.Λ (.grid (i : ℕ) ((j : ℕ) + 1))))
            (conjSub (scLat D.host.AA (conjSub (G.Λ (.grid ((i : ℕ) + 1) (j : ℕ)))))) e)
          (fun w => (blk e (W.cart (.grid (i : ℕ) ((j : ℕ) + 1)) (τf w)) (W.cart (.grid ((i : ℕ) + 1) (j : ℕ)) (τf w))).map conj) bas)
        ((spW G i j).rank + (spW₁ G i j).rank - ((D.R.m - j - 1) / 2 + (D.R.m - j) / 2))
        ((D.R.m - j - 1) / 2 + (D.R.m - j) / 2) := by
  intro D T L sc G μ₀ hL W i j e B τf hB
  have hi := i.2
  have hj := j.2
  have hrV : Node.InRange D.R.m (.grid (i : ℕ) ((j : ℕ) + 1)) := ⟨by omega, by omega⟩
  have hrV₁ : Node.InRange D.R.m (.grid ((i : ℕ) + 1) (j : ℕ)) := ⟨by omega, by omega⟩
  have hV := GlobalTheory.FunObj.node_isV G hL hrV
  have hV₁ := GlobalTheory.FunObj.node_isV G hL hrV₁
  have hcm := (GlobalTheory.Mem.Vol.cmData_isCMExt_and_gram_isHermND D.host.F D.host.E D.sp.cm).1
  have hAA : D.host.AA ≠ 0 := fun h => by
    have := Formalism.IndefR.Fin.factPrincipalDatum D.R D.host
    rw [h, mul_zero, zero_mul, zero_mul] at this
    exact zero_ne_one this
  set Λ := pairLat (scLat D.host.AA (G.Λ (.grid (i : ℕ) ((j : ℕ) + 1))))
    (conjSub (scLat D.host.AA (conjSub (G.Λ (.grid ((i : ℕ) + 1) (j : ℕ)))))) e with hΛ
  haveI hlat : Submodule.IsFullLattice D.host.E Λ :=
    GlobalTheory.SkewLat.pairLat_isFull (GlobalTheory.SkewLat.scLat_isFull hAA
      (GlobalTheory.FunObj.selfDual_isFullLattice _ _ hV.sd))
      (GlobalTheory.TripleSpaceW.conjSub_isFullLattice (GlobalTheory.SkewLat.scLat_isFull hAA
        (GlobalTheory.TripleSpaceW.conjSub_isFullLattice (GlobalTheory.FunObj.selfDual_isFullLattice _ _ hV₁.sd)))) e
  have hex : ∀ v : B.P, ∃ β, GlobalTheory.AdelicU.IsSplitBasis (B.τ v) Λ β := fun v => GlobalTheory.AdelicU.exists_isSplitBasis (B.τ v) Λ hcm
  classical
  refine ⟨fun v => if h : v ∈ B.P then (hex ⟨v, h⟩).choose else 1, ?skew, ?sig, hlat, ?dual, ?cartan, ?bas⟩
  case skew =>
    intro k l
    obtain ⟨k, rfl⟩ := e.surjective k
    obtain ⟨l, rfl⟩ := e.surjective l
    have hg : ∀ (S : HSp D) (a b : Fin S.rank), star (S.gram a b) = S.gram b a := fun S a b => by
      have h1 : S.gramᴴ = S.gram := Matrix.ext fun a b => S.herm.eq _ _
      have h2 := congrFun (congrFun h1 b) a
      rwa [Matrix.conjTranspose_apply] at h2
    show star (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.skewGram (spV G i j) (spV₁ G i j) e (e l) (e k)) = -GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.skewGram (spV G i j) (spV₁ G i j) e (e k) (e l)
    simp only [GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.skewGram, Matrix.smul_apply, smul_eq_mul, GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.blk, Matrix.reindex_apply,
      Matrix.submatrix_apply, Equiv.symm_apply_apply, star_mul', GlobalTheory.DualPairCheck.star_purely_imaginary_eq_neg D]
    rcases k with k | k <;> rcases l with l | l <;>
      simp only [Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₁₂, Matrix.fromBlocks_apply₂₁,
        Matrix.fromBlocks_apply₂₂, Matrix.transpose_apply, Matrix.zero_apply, star_zero, mul_zero, neg_zero, hg, neg_mul]
  case sig =>
    intro w
    show GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.HasSig (Complex.I • (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.skewGram (spV G i j) (spV₁ G i j) e).map (B.emb w).1) _ _
    rw [GlobalTheory.SkewLat.I_smul_skewGram_map _ _ e (τf w) (B.emb w).1 (hB w)]
    have hA := hV.sigOK (tauE D (τf w))
    have hA₁ := hV₁.sigOK (tauE D (τf w))
    rw [hV.sig] at hA
    rw [hV₁.sig] at hA₁
    have h := _root_.GlobalTheory.SigBlockSum.hasSig_smul_blk e (gramAt D (spV G i j) (τf w)) (gramAt D (spV₁ G i j) (τf w))
      (Formalism.L2.Theta.xi_zero_im_pos D (τf w)) hA hA₁
    have hsum := h.1
    have hd : Fintype.card (Fin (spV G i j).rank ⊕ Fin (spV₁ G i j).rank) =
        Fintype.card (Fin ((spW G i j).rank + (spW₁ G i j).rank)) := Fintype.card_congr e
    simp only [Fintype.card_sum, Fintype.card_fin] at hd
    have h1 := hV.rank
    have h2 := hV₁.rank
    simp only [Node.rank, Node.neg] at h1 h2 h hsum
    convert h using 2 <;> omega
  case dual => exact fun y => _root_.GlobalTheory.SkewLat.pairLat_conj_trace_selfDual _ _ hV.sd hV₁.sd e y
  case cartan =>
    intro w
    show GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsCartan (Complex.I • (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.skewGram (spV G i j) (spV₁ G i j) e).map (B.emb w).1) _
    rw [GlobalTheory.SkewLat.I_smul_skewGram_map _ _ e (τf w) (B.emb w).1 (hB w)]
    exact _root_.GlobalTheory.CartanBlocks.isCartan_blk e _ _ _ _ (Formalism.L2.Theta.xi_zero_im_pos D (τf w)) (W.cart_is _ hrV (τf w)) (W.cart_is _ hrV₁ (τf w))
  case bas =>
    intro v
    show GlobalTheory.AdelicU.IsSplitBasis (B.τ v) Λ (if h : (v : HeightOneSpectrum (𝓞 D.host.F)) ∈ B.P then (hex ⟨v, h⟩).choose else 1)
    rw [dite_eq_left v.2]
    exact (hex v).choose_spec

theorem squareTriple_tied : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {μ₀ : T} (hL : L.Is μ₀) (W : G.Weil) (t : T) (i j : Fin D.R.m), SquareStanding G t → ∀ M : Vol G, M.Is t →
    ∃ (e : Num G i j) (Bs : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E) (Γ : GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.Geo G i j) (X : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars D.host.F D.host.E)
      (om : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Rep D.sp.cm.sig Γ.V Γ.W) (om' : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Rep D.sp.cm.sig Γ.V' Γ.W),
      IsTripleOf W M t i j e Bs Γ X ∧ IsTriple Bs Γ X om om' ∧ IsTied t i j e Bs Γ X := by
  classical
  intro D T L sc G μ₀ hL W t i j hst M hM
  obtain ⟨S₀, Q, hSQ, hX⟩ := GlobalTheory.T.squareCharacters_isGood_gridPlaces hL t i j hst
  choose τf hτf using (GlobalTheory.T.exists_conj_tauE_comp_algebraMap_eq_embedding (D := D))
  obtain ⟨mα, mβ, hα, hβ, hκ⟩ := GlobalTheory.T.thetaGridCharacters_archExponents_gap_gt_rank hL t i j hst τf hτf
  obtain ⟨v₁, hv₁P, hv₁s, hv₁l, ⟨τ₁⟩⟩ := GlobalTheory.T.exists_splitCompletely_auxiliary_place_outside_finset (G := G) t (S₀ ∪ Q)
  choose τP hτP using fun v : (S₀ ∪ Q : Finset (HeightOneSpectrum (𝓞 D.host.F))) => tau_choice hL t v.1 (hSQ v v.2).1
  let B : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E :=
    ⟨W.ψ, fun w => ⟨_, hτf w⟩, mα, mβ, S₀ ∪ Q, τP, v₁, τ₁⟩
  have hB : B.IsGood D.sp.cm.sig := GlobalTheory.T.isAdmissibleCMBaseData_of_squareTupleStanding W t hst B rfl fun v hv => (hSQ v hv).1
  have hemb : ∀ w x, (B.emb w).1 x = conj (tauE D (τf w) x) := fun _ _ => rfl
  obtain ⟨e⟩ := GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.nonempty_num (G := G) (i := i) (j := j) hL (by omega) (by omega)
  obtain ⟨basV, hV⟩ := isHerm_conjLat hL W i j B τf hemb
  obtain ⟨ΛV', basV', hV'⟩ := GlobalTheory.T.exists_negConj_member_hermitianLatticeSpaceData hL W i j B τf hemb
  obtain ⟨basW, hW⟩ := isSkew_conjLat hL W i j e B τf hemb
  obtain ⟨co, vac, dom, hMo⟩ := _root_.GlobalTheory.SquareModel.exists_isGood_model_conj t i j M hM B hB _ _ rfl _ _ _ _ hV hW
  obtain ⟨co', vac', dom', hMo'⟩ := GlobalTheory.T.squareModel_negSpace_goodSchroedinger t i j M hM B hB _ _ rfl _ _ _ _ hV' hW
  obtain ⟨om, hom⟩ := GlobalTheory.T.exists_weilRep_dualPair_characters_beta_quotient hL t i j hst B hB _ _ _ _ _ _ hV hW _ hMo
  obtain ⟨om', hom'⟩ := GlobalTheory.T.exists_weilRep_squarePair_characters_alpha_quotient hL t i j hst B hB _ _ _ _ _ _ hV' hW _ hMo'
  obtain ⟨h1, h2, h3, h4⟩ := GlobalTheory.T.thetaGridSquare_rank_inequalities (G := G) hL i j
  have hgood := hX B subset_rfl hv₁P hv₁s hα hβ
  refine ⟨e, B, ⟨(D.R.m - j - 1) / 2, (D.R.m - j) / 2, _, _, _, Model.mk co vac ((M.ν (.grid ((i : ℕ) + 1) ((j : ℕ) + 1))).map
      (conjU (spW G i j) (J := (1 : D.host.E) • (spW G i j).gram) 1 rfl)) dom,
    Model.mk co' vac' ((M.ν (.grid (i : ℕ) (j : ℕ))).map
      (conjU (spW₁ G i j) (J := (-1 : D.host.E) • (spW₁ G i j).gram) (-1) rfl)) dom'⟩,
    ⟨alpha G t i j, beta G i j, S₀, Q⟩, om, om', ?_, ?_, ?_⟩
  · exact ⟨rfl, rfl, rfl, rfl, fun w => ⟨τf w, fun _ => rfl, rfl, rfl, rfl⟩, rfl, rfl, rfl, rfl⟩
  · exact ⟨hB, ⟨h1, h2, hκ, h3, h4, hV, hV', hW, hMo, hMo'⟩, hgood, hom, hom'⟩
  · refine ⟨rfl, rfl, fun v => ⟨fun hv => ?_, fun ⟨w, hw, hwv⟩ => ?_⟩, fun v w hw hwv => hτP v w hw hwv⟩
    · exact (hSQ v (by simpa [GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars.T, Finset.mem_union] using hv)).1
    · have := _root_.GlobalTheory.BigNZ.LocalPlaceUnderMembership.under_locPl_mem hL t i j B _ _ _ rfl rfl hgood w hw
      rwa [hwv] at this

end GlobalTheory.BigNZ.Tied

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaTripleOfSquareGridLatticeCompatible =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaTripleOfSquareGridLatticeCompatibleStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaTripleOfSquareGridLatticeCompatibleStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLagrModelOfIsLin\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SquareStanding\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaTripleOfSquareGridLatticeCompatible\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames GlobalTheory.BigNZ GlobalTheory.AdelicU
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ Num IsTripleOf IsDatumA skewGram blkU conjU UB)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chars Rep IsTriple UAt ratU mat Acts SInf)

attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField borelKw borelSpaceKw


theorem _root_.GlobalTheory.T.exists_thetaTripleOfSquareGrid_latticeCompatible : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {μ₀ : T} (hL : L.Is μ₀) (W : G.Weil) (t : T) (i j : Fin D.R.m), SquareStanding G t → ∀ M : Vol G, M.Is t →
    ∃ (e : Num G i j) (Bs : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E) (Γ : GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.Geo G i j) (X : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars D.host.F D.host.E)
      (om : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Rep D.sp.cm.sig Γ.V Γ.W) (om' : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Rep D.sp.cm.sig Γ.V' Γ.W),
      IsTripleOf W M t i j e Bs Γ X ∧ IsTriple Bs Γ X om om' ∧ IsTied t i j e Bs Γ X := by
  first | exact @GlobalTheory.BigNZ.Tied.squareTriple_tied
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaTripleOfSquareGridLatticeCompatibleStatement =====
