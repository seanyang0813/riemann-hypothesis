module

public import Formalism.SharpRestriction.GlobalSchurBounds.StandardLatticesGL3
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormPeriodSq
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.CompletedStandardAdelicLatticeProperties
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DefiniteThetaPairTestVectorExpansion
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUnitaryExtension
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.EmbeddingPermutesLettersHolds
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ClassFunctionSumIntegral
public import Development.AbelianVarietyTheory.Definitions.Foundations.NormSumPairRankZeroOfCurveCoordNorm
public import Development.AbelianVarietyTheory.Definitions.Jets.CmLatticeCommutatorPairingPowEqOneOfGoodLift
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinPt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergTranslateFixesThetaDeepLevel
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardLatticeDoubleCosetClassesStabilisers
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulEqZeroOfInf
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.CharLem
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.UnitaryHeckeCharacterValues
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.CmBaseFieldIntegersAndCurveIdealFacts
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsOpenNsmulAdelicCompletionOfVectorSet
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VacTheta
import Formalism.LocalRingCardinality.DataTheta
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelCurvePhaseEqOfClose, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNsmulSymplecticPairingCharacterTrivial, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPosNatMulInvIdealLatticeMemIntegral, Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardCharHalfSymplecticMovedFinitePointTrivia, Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslate, Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslateStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelCurvePhaseEqOfClose =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelCurvePhaseEqOfClose", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.StandardLatticesGL3\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormPeriodSq\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.CompletedStandardAdelicLatticeProperties\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DefiniteThetaPairTestVectorExpansion\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUnitaryExtension\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.UnitaryHeckeCharacterValues\nimport Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.CmBaseFieldIntegersAndCurveIdealFacts\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.EmbeddingPermutesLettersHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ClassFunctionSumIntegral\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NormSumPairRankZeroOfCurveCoordNorm\npublic import Development.AbelianVarietyTheory.Definitions.Jets.CmLatticeCommutatorPairingPowEqOneOfGoodLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinPt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormSum (Pair Tup minorPol ratG intG Cls gam)
open GlobalTheory.NormDict GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsDefiniteSpace IsOpenCompactLevel)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section
namespace GlobalTheory.PhaseMove

theorem trace_sum_int : ∀ (D : D7) (w : D.host.E), IsIntegral ℤ w → ∃ m : ℤ, 2 * (∑ τ, Formalism.MainNotions.TaylorLogMetric.embT D τ w).re = m := by
  intro D w hw
  have htr := Formalism.MainNotions.Ext.trace_sum_over_letters_holds D w
  have ht : IsIntegral ℤ (Algebra.trace D.host.K D.host.E w) := Algebra.isIntegral_trace hw
  obtain ⟨u, v, huv⟩ := ((GlobalTheory.MomDict.main D).2.2.1 _).2 ⟨⟨_, ht⟩, rfl⟩
  refine ⟨2 * u + v, ?_⟩
  rw [htr]
  erw [huv]
  simp [GlobalTheory.MomOne.wK]
  ring

def cTA (D : D7) {m p : ℕ} (B : Matrix (Fin m) (Fin p) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin p) (Fin m) (Formalism.MainNotions.StandardLatticesGL3.AE D) :=
  (B.map (Formalism.MainNotions.StandardLatticesGL3.sgA D)).transpose

theorem sq_unitary : ∀ {D : D7} {a d : ℕ} (x : Formalism.MainNotions.StandardLatticesGL3.GA D a) (y : Formalism.MainNotions.StandardLatticesGL3.GA D d) (A : Matrix (Fin d) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)), (∑ i, ∑ j, (((y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin d) (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) * A * ((((x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D))⁻¹ : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D))) : Matrix (Fin a) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D))) i j * Formalism.MainNotions.StandardLatticesGL3.sgA D ((((y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin d) (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) * A * ((((x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D))⁻¹ : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D))) : Matrix (Fin a) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D))) i j)) = ∑ i, ∑ j, A i j * Formalism.MainNotions.StandardLatticesGL3.sgA D (A i j) := by
  intro D a d x y A
  have hinv : ∀ e : D.host.E, D.host.conj (D.host.conj e) = e := fun e => by
    apply D.host.φ₀.injective
    have h1 := D.host.conjE_apply D.host.φ₀
    change D.host.φ₀ (D.host.conj (D.host.conj e)) = _
    rw [h1, h1, Complex.conj_conj]
  have hsg : ∀ u : Formalism.MainNotions.StandardLatticesGL3.AE D, Formalism.MainNotions.StandardLatticesGL3.sgA D (Formalism.MainNotions.StandardLatticesGL3.sgA D u) = u := fun u => by
    induction u using TensorProduct.induction_on with
    | zero => simp
    | tmul e r =>
      change (Algebra.TensorProduct.map _ _) ((Algebra.TensorProduct.map _ _) (e ⊗ₜ r)) = e ⊗ₜ r
      simp only [Algebra.TensorProduct.map_tmul, AlgHom.id_apply]
      congr 1
      exact hinv e
    | add u v hu hv => rw [map_add (f := _), map_add (f := _), hu, hv]
  have hΦ : ∀ B : Matrix (Fin d) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D), (∑ i, ∑ j, B i j * Formalism.MainNotions.StandardLatticesGL3.sgA D (B i j)) = (B * cTA D B).trace := fun B => by
    simp [cTA, Matrix.trace, Matrix.mul_apply]
  have hmul : ∀ {m p q : ℕ} (B : Matrix (Fin m) (Fin p) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (C : Matrix (Fin p) (Fin q) (Formalism.MainNotions.StandardLatticesGL3.AE D)), cTA D (B * C) = cTA D C * cTA D B := fun B C => by
    simp only [cTA, Matrix.map_mul, Matrix.transpose_mul]
  have hcc : ∀ {m p : ℕ} (B : Matrix (Fin m) (Fin p) (Formalism.MainNotions.StandardLatticesGL3.AE D)), cTA D (cTA D B) = B := fun B => by
    ext i j; simp [cTA, hsg]
  have hU : ∀ {m : ℕ} (g : Formalism.MainNotions.StandardLatticesGL3.GA D m), cTA D ((g : GL (Fin m) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin m) (Fin m) (Formalism.MainNotions.StandardLatticesGL3.AE D)) * ((g : GL (Fin m) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin m) (Fin m) (Formalism.MainNotions.StandardLatticesGL3.AE D)) = 1 := fun g => by
    have h := g.2
    change Formalism.UG.cT _ _ * ((1 : Matrix _ _ D.host.E).map _) * _ = (1 : Matrix _ _ D.host.E).map _ at h
    rw [Matrix.map_one _ (map_zero _) (map_one _), Matrix.mul_one] at h
    exact h
  set X : Matrix (Fin a) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D) := ((x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin a) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) with hX
  set V : Matrix (Fin a) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D) := ((((x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D))⁻¹ : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D))) : Matrix (Fin a) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) with hV
  set Y : Matrix (Fin d) (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D) := ((y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin d) (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) with hY
  have hVX : V * X = 1 := by rw [hV, hX, ← Units.val_mul, inv_mul_cancel, Units.val_one]
  have hXc : X * cTA D X = 1 := mul_eq_one_comm.1 (hU x)
  have hVe : V = cTA D X := by
    calc V = V * (X * cTA D X) := by rw [hXc, Matrix.mul_one]
      _ = cTA D X := by rw [← Matrix.mul_assoc, hVX, Matrix.one_mul]
  have hVV : V * cTA D V = 1 := by rw [hVe, hcc, hU x]
  rw [hΦ, hΦ, hmul, hmul, Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_assoc V, hVV, Matrix.one_mul,
    ← Matrix.mul_assoc, Matrix.trace_mul_comm, ← Matrix.mul_assoc]
  have hY1 : cTA D Y * Y = 1 := hU y
  rw [Matrix.mul_assoc (cTA D A), hY1, Matrix.mul_one, Matrix.trace_mul_comm]

theorem sq_move_int : ∀ {D : D7} (cc : Ideal (𝓞 D.host.K)) {a d : ℕ} (A : Matrix (Fin d) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (M : ℕ), 0 < M → ∃ n : ℕ, 0 < n ∧ ∀ A' : Matrix (Fin d) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D), (∀ i j, ∃ t ∈ Formalism.MainNotions.StandardLatticesGL3.IhE D cc, A' i j - A i j = (n : Formalism.MainNotions.StandardLatticesGL3.AE D) * t) → ∃ s ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D, (∑ i, ∑ j, A' i j * Formalism.MainNotions.StandardLatticesGL3.sgA D (A' i j)) - (∑ i, ∑ j, A i j * Formalism.MainNotions.StandardLatticesGL3.sgA D (A i j)) = (M : Formalism.MainNotions.StandardLatticesGL3.AE D) * s := by
  intro D cc a d A M hM
  obtain ⟨B, hB, hBA⟩ := GlobalTheory.NormSum.Expand.denom_fin (fun k : Fin d × Fin a => A k.1 k.2)
  obtain ⟨m, hm, hmI⟩ := GlobalTheory.CompletedLattice.exists_mul_IhE_mem D cc
  refine ⟨M * B * m, by positivity, fun A' hA' => ?_⟩
  choose t ht et using hA'
  have hsg : ∀ u ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D, Formalism.MainNotions.StandardLatticesGL3.sgA D u ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D := fun u hu =>
    GlobalTheory.NormSum.UnramHecke.sgA_mem D hu
  have hA1 : ∀ i j, (B : Formalism.MainNotions.StandardLatticesGL3.AE D) * A i j ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D := fun i j => hBA (i, j)
  have ht1 : ∀ i j, (m : Formalism.MainNotions.StandardLatticesGL3.AE D) * t i j ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D := fun i j => hmI _ (ht i j)
  refine ⟨∑ i, ∑ j, (((B : Formalism.MainNotions.StandardLatticesGL3.AE D) * A i j) * Formalism.MainNotions.StandardLatticesGL3.sgA D ((m : Formalism.MainNotions.StandardLatticesGL3.AE D) * t i j) +
      ((m : Formalism.MainNotions.StandardLatticesGL3.AE D) * t i j) * Formalism.MainNotions.StandardLatticesGL3.sgA D ((B : Formalism.MainNotions.StandardLatticesGL3.AE D) * A i j) +
      ((M * B * B : ℕ) : Formalism.MainNotions.StandardLatticesGL3.AE D) * (((m : Formalism.MainNotions.StandardLatticesGL3.AE D) * t i j) * Formalism.MainNotions.StandardLatticesGL3.sgA D ((m : Formalism.MainNotions.StandardLatticesGL3.AE D) * t i j))),
    sum_mem fun i _ => sum_mem fun j _ => add_mem (add_mem (mul_mem (hA1 i j) (hsg _ (ht1 i j)))
      (mul_mem (ht1 i j) (hsg _ (hA1 i j)))) (mul_mem (natCast_mem _ _) (mul_mem (ht1 i j) (hsg _ (ht1 i j)))), ?_⟩
  have hA' : ∀ i j, A' i j = A i j + ((M * B * m : ℕ) : Formalism.MainNotions.StandardLatticesGL3.AE D) * t i j := fun i j => by
    rw [← et i j]; ring
  simp only [hA', Finset.mul_sum, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  simp only [map_add (f := _), map_mul, map_natCast]
  push_cast
  ring

theorem sq_diff_int : ∀ {D : D7} (cc : Ideal (𝓞 D.host.K)) {a d : ℕ} (x : Formalism.MainNotions.StandardLatticesGL3.GA D a) (y : Formalism.MainNotions.StandardLatticesGL3.GA D d) (z : Matrix (Fin d) (Fin a) D.host.E) (M : ℕ), 0 < M → ∃ n : ℕ, 0 < n ∧ ∀ z' : Matrix (Fin d) (Fin a) D.host.E, Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc n (x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) z z' → IsIntegral ℤ (((∑ i, ∑ j, z' i j * D.host.conj (z' i j)) - ∑ i, ∑ j, z i j * D.host.conj (z i j)) / (M : D.host.E)) := by
  intro D cc a d x y z M hM
  obtain ⟨n, hn, h⟩ := sq_move_int cc ((((y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin d) (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) * z.map (Formalism.MainNotions.StandardLatticesGL3.inc D) * ((((x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D))⁻¹ : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D))) : Matrix (Fin a) (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)))) M hM
  refine ⟨n, hn, fun z' hz' => ?_⟩
  obtain ⟨s, hs, e⟩ := h (z'.map (Formalism.MainNotions.StandardLatticesGL3.inc D)) fun i j => by
    obtain ⟨t, ht, et⟩ := hz' i j
    exact ⟨t, ht, by rw [← et, Matrix.sub_apply]⟩
  rw [sq_unitary] at e
  have hinc : ∀ w : Matrix (Fin d) (Fin a) D.host.E, (∑ i, ∑ j, w.map (Formalism.MainNotions.StandardLatticesGL3.inc D) i j * Formalism.MainNotions.StandardLatticesGL3.sgA D (w.map (Formalism.MainNotions.StandardLatticesGL3.inc D) i j)) = Formalism.MainNotions.StandardLatticesGL3.inc D (∑ i, ∑ j, w i j * D.host.conj (w i j)) := fun w => by

    simp only [Matrix.map_apply, map_sum, map_mul]
    rfl
  rw [hinc, hinc, ← map_sub] at e
  have hM0 : (M : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 hM.ne'
  rw [← GlobalTheory.HeckeVal.inc_mem_iff]
  have e2 : Formalism.MainNotions.StandardLatticesGL3.inc D (((∑ i, ∑ j, z' i j * D.host.conj (z' i j)) - ∑ i, ∑ j, z i j * D.host.conj (z i j)) / (M : D.host.E)) = Formalism.MainNotions.StandardLatticesGL3.inc D (M : D.host.E)⁻¹ * (M : Formalism.MainNotions.StandardLatticesGL3.AE D) * s := by
    rw [div_eq_inv_mul, map_mul, e, mul_assoc]
  have e3 : Formalism.MainNotions.StandardLatticesGL3.inc D (M : D.host.E)⁻¹ * (M : Formalism.MainNotions.StandardLatticesGL3.AE D) = 1 := by
    rw [← map_natCast (Formalism.MainNotions.StandardLatticesGL3.inc D), ← map_mul, inv_mul_cancel₀ hM0, map_one]
  rw [e2, e3, one_mul]
  exact hs

theorem qH_pt {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (hC : Formalism.MainNotions.StandardLatticesGL3.Crv D cc δ) {a d : ℕ}
    (z : Matrix (Fin d) (Fin a) D.host.E) :
    Formalism.MainNotions.TaylorLogMetric.qH D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z) =
      (∑ τ, embT D τ (∑ i, ∑ j, z i j * D.host.conj (z i j))).re / (Ideal.absNorm cc : ℝ) := by
  have hδ : δ ≠ 0 := GlobalTheory.NormExact.delta_ne_zero hC
  have hN : (0 : ℝ) < Ideal.absNorm cc := by
    exact_mod_cast Nat.pos_of_ne_zero (Ideal.absNorm_eq_zero_iff.not.2 hC.1.1)
  have hd : (0 : ℝ) < √(D.host.d : ℝ) := Real.sqrt_pos.2 (by exact_mod_cast D.host.hyp.2.1.pos)
  have hc : ∀ τ x, embT D τ (D.host.conj x) = starRingEnd ℂ (embT D τ x) := fun τ x =>
    D.host.conjE_apply (embT D τ) x
  have hpt : ∀ τ i j, pt D (tor0 D cc δ) δ z τ i j = δ * embT D τ (z i j) := fun τ i j => rfl
  have hS : ∑ τ, embT D τ (∑ i, ∑ j, z i j * D.host.conj (z i j)) =
      ∑ τ, ∑ i, ∑ j, embT D τ (z i j) * starRingEnd ℂ (embT D τ (z i j)) := by

    simp only [map_sum, map_mul, hc]
  have hH : Hf D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z) (pt D (tor0 D cc δ) δ z) =
      ((Complex.normSq δ : ℝ) : ℂ) * (∑ τ, embT D τ (∑ i, ∑ j, z i j * D.host.conj (z i j))) /
        ((area (lamOf D cc δ) : ℝ) : ℂ) := by
    rw [hS, Hf]
    simp only [hpt, map_mul, Finset.mul_sum]
    congr 1
    refine Finset.sum_congr rfl fun τ _ => Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
    rw [Complex.normSq_eq_conj_mul_self]
    ring
  rw [Formalism.MainNotions.TaylorLogMetric.qH, hH, GlobalTheory.MomDict.area_lamOf D cc δ hC.1.1]
  have hδ2 : 0 < Complex.normSq δ := Complex.normSq_pos.2 hδ
  rw [show ((Complex.normSq δ * (Ideal.absNorm cc : ℝ) * √(D.host.d : ℝ) / 2 : ℝ) : ℂ) =
    ((Complex.normSq δ * (Ideal.absNorm cc : ℝ) * √(D.host.d : ℝ) / 2 : ℝ) : ℂ) from rfl,
    mul_div_assoc, Complex.re_ofReal_mul, Complex.div_ofReal_re]
  field_simp

theorem phase_eq : ∀ {D : D7} (cc : Ideal (𝓞 D.host.K)) (δ : ℂ), Formalism.MainNotions.StandardLatticesGL3.Crv D cc δ →
  ∀ {a d : ℕ} (x : Formalism.MainNotions.StandardLatticesGL3.GA D a) (y : Formalism.MainNotions.StandardLatticesGL3.GA D d) (z : Matrix (Fin d) (Fin a) D.host.E),
  ∃ n : ℕ, 0 < n ∧ ∀ z', Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc n (x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) z z' →
    Formalism.MainNotions.StandardLatticesGL3.wdPh D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z') = Formalism.MainNotions.StandardLatticesGL3.wdPh D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z) := by
  intro D cc δ hC a d x y z
  have hN : 0 < Ideal.absNorm cc := Nat.pos_of_ne_zero (Ideal.absNorm_eq_zero_iff.not.2 hC.1.1)
  obtain ⟨n, hn, h⟩ := sq_diff_int cc x y z (8 * Ideal.absNorm cc) (by positivity)
  refine ⟨n, hn, fun z' hz' => ?_⟩
  obtain ⟨m, hm⟩ := trace_sum_int D _ (h z' hz')
  set S' := ∑ i, ∑ j, z' i j * D.host.conj (z' i j)
  set S := ∑ i, ∑ j, z i j * D.host.conj (z i j)
  have h8 : ((8 * Ideal.absNorm cc : ℕ) : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 (by positivity)
  have hsplit : S' = S + ((8 * Ideal.absNorm cc : ℕ) : D.host.E) * ((S' - S) / ((8 * Ideal.absNorm cc : ℕ) : D.host.E)) := by
    field_simp; ring
  have key : (∑ τ, embT D τ S').re = (∑ τ, embT D τ S).re + 4 * (Ideal.absNorm cc : ℝ) * m := by
    rw [hsplit]
    simp only [map_add (f := _), map_mul, map_natCast, Finset.sum_add_distrib, ← Finset.mul_sum, Complex.add_re]
    have e : ((8 * Ideal.absNorm cc : ℕ) : ℂ) = (((8 * Ideal.absNorm cc : ℕ) : ℝ) : ℂ) := rfl
    rw [e, Complex.re_ofReal_mul]
    push_cast at hm ⊢
    rw [← hm]; ring
  have hN' : (0 : ℝ) < Ideal.absNorm cc := by exact_mod_cast hN
  have harg : (∑ τ, embT D τ S').re / (Ideal.absNorm cc : ℝ) / 2 =
      (∑ τ, embT D τ S).re / (Ideal.absNorm cc : ℝ) / 2 + 2 * m := by
    rw [key]; field_simp; ring
  rw [Formalism.MainNotions.StandardLatticesGL3.wdPh, Formalism.MainNotions.StandardLatticesGL3.wdPh, qH_pt hC z', qH_pt hC z, harg]
  unfold Formalism.MainNotions.StandardLatticesGL3.ee
  rw [Complex.exp_eq_exp_iff_exists_int]
  refine ⟨2 * m, ?_⟩
  push_cast
  ring

end GlobalTheory.PhaseMove
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelCurvePhaseEqOfClose =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNsmulSymplecticPairingCharacterTrivial =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNsmulSymplecticPairingCharacterTrivial", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardLatticeDoubleCosetClassesStabilisers\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulEqZeroOfInf\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsOpenNsmulAdelicCompletionOfVectorSet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ClassFunctionSumIntegral\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.VacTheta\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormSum (Pair Tup minorPol ratG intG Cls gam)
open GlobalTheory.NormDict GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsDefiniteSpace IsOpenCompactLevel)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open scoped TensorProduct Topology

namespace GlobalTheory.FinCharInt

theorem tensInt_le {F E R : Type} [Field F] [CommRing E] [Algebra F E] [CommRing R] [Algebra F R]
    (S₁ : Subring E) (S₂ : Subring R) (K : AddSubgroup (E ⊗[F] R))
    (hK : ∀ b ∈ S₁, ∀ α ∈ S₂, b ⊗ₜ[F] α ∈ K) {x : E ⊗[F] R} (hx : x ∈ Formalism.UG.tensInt R S₁ S₂) : x ∈ K := by
  let C : AddSubgroup (E ⊗[F] R) := AddSubgroup.closure {z | ∃ b ∈ S₁, ∃ α ∈ S₂, z = b ⊗ₜ[F] α}
  have hC : C ≤ K := by
    refine (AddSubgroup.closure_le _).2 ?_
    rintro _ ⟨b, hb, α, hα, rfl⟩
    exact hK b hb α hα
  have hmul : ∀ x ∈ C, ∀ y ∈ C, x * y ∈ C := by
    intro x hx y hy
    induction hx, hy using AddSubgroup.closure_induction₂ with
    | mem x y hx hy =>
      obtain ⟨b, hb, α, hα, rfl⟩ := hx
      obtain ⟨c, hc, β, hβ, rfl⟩ := hy
      rw [Algebra.TensorProduct.tmul_mul_tmul]
      exact AddSubgroup.subset_closure ⟨_, S₁.mul_mem hb hc, _, S₂.mul_mem hα hβ, rfl⟩
    | zero_left x _ => rw [zero_mul]; exact C.zero_mem
    | zero_right x _ => rw [mul_zero]; exact C.zero_mem
    | add_left x y z _ _ _ h1 h2 => rw [add_mul]; exact C.add_mem h1 h2
    | add_right x y z _ _ _ h1 h2 => rw [mul_add]; exact C.add_mem h1 h2
    | neg_left x y _ _ h => rw [neg_mul]; exact C.neg_mem h
    | neg_right x y _ _ h => rw [mul_neg]; exact C.neg_mem h
  refine hC ?_
  unfold Formalism.UG.tensInt at hx
  induction hx using Subring.closure_induction with
  | mem x hx =>
    rcases hx with ⟨c, rfl⟩ | ⟨c, rfl⟩
    · exact AddSubgroup.subset_closure ⟨_, c.2, _, S₂.one_mem, rfl⟩
    · exact AddSubgroup.subset_closure ⟨_, S₁.one_mem, _, c.2, rfl⟩
  | zero => exact C.zero_mem
  | one => exact AddSubgroup.subset_closure ⟨_, S₁.one_mem, _, S₂.one_mem, Algebra.TensorProduct.one_def⟩
  | add x y _ _ ihx ihy => exact C.add_mem ihx ihy
  | neg x _ ihx => exact C.neg_mem ihx
  | mul x y _ _ ihx ihy => exact hmul _ ihx _ ihy

theorem exists_nsmul_kill {F : Type} [Field F] [NumberField F] {ψ : AddChar (AF F) ℂ} (hc : Continuous ψ)
    (hn : ∀ x, ‖ψ x‖ = 1) {ι : Type} [Finite ι] (c : ι → AF F) :
    ∃ N : ℕ, 0 < N ∧ ∀ i, ∀ α ∈ Formalism.UG.intAd F, ψ (N • (pairA F 0 α * c i)) = 1 := by
  have hU : (⋂ i, {α : Af F | ψ (pairA F 0 (α * (c i).2)) = 1}) ∈ 𝓝 (0 : Af F) := by
    refine Filter.iInter_mem.2 fun i => ?_
    have h1 : Continuous fun α : Af F => α * (c i).2 := continuous_id.mul continuous_const
    exact h1.continuousAt.preimage_mem_nhds (x := 0) (t := {a | ψ (pairA F 0 a) = 1})
      (by rw [zero_mul]; exact GlobalTheory.FinTranslate.ker_mem_nhds hc hn)
  obtain ⟨N, hN, h⟩ := _root_.GlobalTheory.LocalNormBound.main F _ hU
  refine ⟨N, hN, fun i α hα => ?_⟩
  have h1 : ψ (pairA F 0 ((N • α) * (c i).2)) = 1 := Set.mem_iInter.1 (h α hα) i
  have e : N • (pairA F 0 α * c i) = pairA F 0 ((N • α) * (c i).2) :=
    Prod.ext (show N • ((0 : Ainf F) * (c i).1) = 0 by rw [zero_mul, smul_zero])
      (show N • (α * (c i).2) = (N • α) * (c i).2 from (smul_mul_assoc N α _).symm)
  rw [e, h1]

def kerSub {A : Type} [AddCommGroup A] (ψ : AddChar A ℂ) : AddSubgroup A where
  carrier := {a | ψ a = 1}
  zero_mem' := ψ.map_zero_eq_one
  add_mem' {a b} ha hb := by
    have ha' : ψ a = 1 := ha
    have hb' : ψ b = 1 := hb
    show ψ (a + b) = 1
    rw [AddChar.map_add_eq_mul, ha', hb', one_mul]
  neg_mem' {a} ha := by
    have ha' : ψ a = 1 := ha
    show ψ (-a) = 1
    have := AddChar.map_add_eq_mul ψ a (-a)
    rw [add_neg_cancel, ψ.map_zero_eq_one, ha', one_mul] at this
    exact this.symm

variable {D : D7}

noncomputable def finIncl (D : D7) : Af D.host.F ⊗[D.host.F] D.host.E →ₗ[D.host.F] AE D :=
  TensorProduct.map (LinearMap.inr D.host.F (Ainf D.host.F) (Af D.host.F)) LinearMap.id

theorem finIncl_finPart {a : AE D} (h : infPart D a = 0) : finIncl D (finPart D a) = a := by
  have key : ∀ a : AE D, (1 - GlobalTheory.FinTranslate.eInf D) • a = finIncl D (finPart D a) := by
    intro a
    induction a using TensorProduct.induction_on with
    | zero => simp only [smul_zero, map_zero]
    | add a b ha hb => rw [smul_add, ha, hb, RingHom.map_add (f := _), map_add (f := _)]
    | tmul a x =>
      rw [TensorProduct.smul_tmul']
      have : (1 - GlobalTheory.FinTranslate.eInf D) • a =
          LinearMap.inr D.host.F (Ainf D.host.F) (Af D.host.F) (sndA D.host.F a) :=
        Prod.ext (show (1 - 1) * a.1 = 0 by rw [sub_self, zero_mul]) (show (1 - 0) * a.2 = a.2 by rw [sub_zero, one_mul])
      rw [this]
      rfl
  rw [← key, sub_smul, one_smul, GlobalTheory.FinTranslate.smul_eq_zero_of_inf h, sub_zero]

theorem exists_nsmul_kill_forms {ψ : AddChar (AF D.host.F) ℂ} (hc : Continuous ψ) (hn : ∀ x, ‖ψ x‖ = 1)
    {ι : Type} [Finite ι] (lam : ι → (AE D →ₗ[AF D.host.F] AF D.host.F)) :
    ∃ N : ℕ, 0 < N ∧ ∀ i, ∀ a : AE D, infPart D a = 0 → GlobalTheory.BotClassDict.finQ D a ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D →
      ψ (N • lam i a) = 1 := by
  let w := RingOfIntegers.basis D.host.E
  obtain ⟨N, hN, h⟩ := exists_nsmul_kill hc hn
    (fun p : ι × Module.Free.ChooseBasisIndex ℤ (𝓞 D.host.E) =>
      lam p.1 ((1 : AF D.host.F) ⊗ₜ[D.host.F] (algebraMap (𝓞 D.host.E) D.host.E (w p.2))))
  refine ⟨N, hN, fun i a ha hint => ?_⟩
  let g : D.host.E ⊗[D.host.F] Af D.host.F →+ AF D.host.F :=
    N • ((lam i).toAddMonoidHom.comp ((finIncl D).toAddMonoidHom.comp
      (TensorProduct.comm D.host.F D.host.E (Af D.host.F)).toLinearMap.toAddMonoidHom))
  have hg : ∀ y, g (Lev.swapAE D y) = N • lam i (finIncl D y) := by
    intro y
    have : TensorProduct.comm D.host.F D.host.E (Af D.host.F) (Lev.swapAE D y) = y :=
      (TensorProduct.comm D.host.F (Af D.host.F) D.host.E).symm_apply_apply y
    show N • lam i (finIncl D (TensorProduct.comm D.host.F D.host.E (Af D.host.F) (Lev.swapAE D y))) = _
    rw [this]
  have h1 : Lev.swapAE D (finPart D a) ∈ Formalism.L2.Herm.intAf D.host.F D.host.E := by
    have := (GlobalTheory.BotClassDict.toAfE_int_iff _).2 hint
    rwa [GlobalTheory.BotClassDict.toAfE_finQ] at this
  have h2 : Lev.swapAE D (finPart D a) ∈ (kerSub ψ).comap g := by
    refine tensInt_le _ _ _ ?_ h1
    rintro _ ⟨b, rfl⟩ α hα
    let φ : 𝓞 D.host.E →+ D.host.E ⊗[D.host.F] Af D.host.F :=
      ((TensorProduct.mk D.host.F D.host.E (Af D.host.F)).flip α).toAddMonoidHom.comp
        (algebraMap (𝓞 D.host.E) D.host.E).toAddMonoidHom
    have hb : b ∈ (((kerSub ψ).comap g).comap φ).toIntSubmodule := by
      have hsp : b ∈ Submodule.span ℤ (Set.range w) := by rw [w.span_eq]; trivial
      refine Submodule.span_le.2 ?_ hsp
      rintro _ ⟨k, rfl⟩
      have h3 := h (i, k) α hα
      rw [← smul_eq_mul, ← map_smul, TensorProduct.smul_tmul', smul_eq_mul, mul_one] at h3
      exact h3
    exact hb
  have h3 : ψ (g (Lev.swapAE D (finPart D a))) = 1 := h2
  rwa [hg, finIncl_finPart ha] at h3

noncomputable def symplR (S T : HSp D) (x : WO S T) : WO S T →ₗ[AF D.host.F] AF D.host.F where
  toFun := symplOH S T x
  map_add' := GlobalTheory.FinTranslate.symplOH_add_right S T x
  map_smul' c y := GlobalTheory.FinTranslate.symplOH_smul_right S T c x y

theorem char_sympl_nsmul_int : ∀ {D : D7} (ψ : AddChar (AF D.host.F) ℂ), Continuous ψ → (∀ x, ‖ψ x‖ = 1) →
    ∀ (S T : HSp D) (A0 : WO S T), ∃ N : ℕ, 0 < N ∧ ∀ v : WO S T, (∀ i j, infPart D (v i j) = 0) →
      (∀ i j, GlobalTheory.BotClassDict.finQ D (v i j) ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D) → ψ (symplOH S T A0 (N • v)) = 1 := by
  intro D ψ hc hn S T A0
  obtain ⟨N, hN, h⟩ := exists_nsmul_kill_forms hc hn
    (fun p : Fin T.rank × Fin S.rank => (symplR S T A0).comp (Matrix.singleLinearMap (AF D.host.F) p.1 p.2))
  refine ⟨N, hN, fun v hv hint => ?_⟩
  show symplR S T A0 (N • v) ∈ kerSub ψ

  rw [map_nsmul, Matrix.matrix_eq_sum_single v, map_sum, Finset.smul_sum]
  refine sum_mem fun i _ => ?_

  rw [map_sum, Finset.smul_sum]
  exact sum_mem fun j _ => h (i, j) (v i j) (hv i j) (hint i j)

end GlobalTheory.FinCharInt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNsmulSymplecticPairingCharacterTrivial =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPosNatMulInvIdealLatticeMemIntegral =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPosNatMulInvIdealLatticeMemIntegral", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.StandardLatticesGL3\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DefiniteThetaPairTestVectorExpansion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ClassFunctionSumIntegral\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NormSumPairRankZeroOfCurveCoordNorm\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinPt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.VacTheta\nimport Formalism.LocalRingCardinality.DataTheta\nimport Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange\nimport Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData\nimport Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormSum (Pair Tup minorPol ratG intG Cls gam)
open GlobalTheory.NormDict GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsDefiniteSpace IsOpenCompactLevel)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.NormSum.IdealDenom

open Formalism.MainNotions.StandardLatticesGL3 (IhE OhE inc)

theorem exists_nat_mul_mem {D : D7} (cc : Ideal (𝓞 D.host.K)) : ∃ n : ℕ, 0 < n ∧
    ∀ t ∈ IhE D cc, (n : Formalism.MainNotions.StandardLatticesGL3.AE D) * t ∈ OhE D := by
  apply _root_.GlobalTheory.CompletedLattice.exists_mul_IhE_mem <;> assumption

theorem exists_nat_mul_inv_mul_mem : ∀ {D : D7} (cc : Ideal (𝓞 D.host.K)) (r : D.host.E), ∃ M : ℕ, 0 < M ∧
    ∀ t ∈ Formalism.MainNotions.StandardLatticesGL3.IhE D cc, (M : Formalism.MainNotions.StandardLatticesGL3.AE D) * (Formalism.MainNotions.StandardLatticesGL3.inc D r⁻¹ * t) ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D := by
  intro D cc r
  obtain ⟨n₁, h₁, m₁⟩ := GlobalTheory.NormSum.Expand.denom (inc D r⁻¹)
  obtain ⟨n₂, h₂, m₂⟩ := exists_nat_mul_mem cc
  refine ⟨n₁ * n₂, Nat.mul_pos h₁ h₂, fun t ht => ?_⟩
  have key : ((n₁ * n₂ : ℕ) : Formalism.MainNotions.StandardLatticesGL3.AE D) * (inc D r⁻¹ * t) =
      ((n₁ : Formalism.MainNotions.StandardLatticesGL3.AE D) * inc D r⁻¹) * ((n₂ : Formalism.MainNotions.StandardLatticesGL3.AE D) * t) := by
    push_cast; ring
  rw [key]
  exact (OhE D).mul_mem m₁ (m₂ t ht)

end GlobalTheory.NormSum.IdealDenom
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPosNatMulInvIdealLatticeMemIntegral =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardCharHalfSymplecticMovedFinitePointTrivia =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardCharHalfSymplecticMovedFinitePointTrivia", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardLatticeDoubleCosetClassesStabilisers\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulEqZeroOfInf\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNsmulSymplecticPairingCharacterTrivial\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ClassFunctionSumIntegral\npublic import Formalism.SharpRestriction.GlobalSchurBounds.StandardLatticesGL3\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPosNatMulInvIdealLatticeMemIntegral\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NormSumPairRankZeroOfCurveCoordNorm\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.CharLem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormSum (Pair Tup minorPol ratG intG Cls gam)
open GlobalTheory.NormDict GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsDefiniteSpace IsOpenCompactLevel)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section
namespace GlobalTheory.MovedTrChar
open GlobalTheory.BotClassDict (finQ finStd)
open scoped TensorProduct

def secF (D : D7) : Af D.host.F ⊗[D.host.F] D.host.E →ₗ[D.host.F] AE D :=
  TensorProduct.map (LinearMap.inr D.host.F (Ainf D.host.F) (Af D.host.F)) LinearMap.id

def secI (D : D7) : Ainf D.host.F ⊗[D.host.F] D.host.E →ₗ[D.host.F] AE D :=
  TensorProduct.map (LinearMap.inl D.host.F (Ainf D.host.F) (Af D.host.F)) LinearMap.id

theorem decomp {D : D7} (a : AE D) : a = secI D (infPart D a) + secF D (finPart D a) := by
  induction a using TensorProduct.induction_on with
  | zero => rw [RingHom.map_zero, RingHom.map_zero, LinearMap.map_zero, LinearMap.map_zero, add_zero]
  | add a b ha hb =>
    rw [RingHom.map_add (f := _), RingHom.map_add (f := _), LinearMap.map_add (f := _), LinearMap.map_add (f := _)]
    conv_lhs => rw [ha, hb]
    abel
  | tmul c e =>
    have hc : c = LinearMap.inl D.host.F (Ainf D.host.F) (Af D.host.F) (fstA D.host.F c) +
        LinearMap.inr D.host.F (Ainf D.host.F) (Af D.host.F) (sndA D.host.F c) := by
      refine Prod.ext ?_ ?_
      · exact (add_zero _).symm
      · exact (zero_add _).symm
    conv_lhs => rw [hc]
    erw [TensorProduct.add_tmul]
    rfl

theorem infPart_secF {D : D7} (y : Af D.host.F ⊗[D.host.F] D.host.E) : infPart D (secF D y) = 0 := by
  induction y using TensorProduct.induction_on with
  | zero => rw [LinearMap.map_zero, RingHom.map_zero]
  | add a b ha hb => rw [LinearMap.map_add (f := _), RingHom.map_add (f := _), ha, hb, add_zero]
  | tmul c e =>
    show fstA D.host.F (LinearMap.inr D.host.F (Ainf D.host.F) (Af D.host.F) c) ⊗ₜ[D.host.F] e = 0
    have : fstA D.host.F (LinearMap.inr D.host.F (Ainf D.host.F) (Af D.host.F) c) = 0 := rfl
    rw [this, TensorProduct.zero_tmul]

theorem finPart_secF {D : D7} (y : Af D.host.F ⊗[D.host.F] D.host.E) : finPart D (secF D y) = y := by
  induction y using TensorProduct.induction_on with
  | zero => rw [LinearMap.map_zero, RingHom.map_zero]
  | add a b ha hb => rw [LinearMap.map_add (f := _), RingHom.map_add (f := _), ha, hb]
  | tmul c e =>
    show sndA D.host.F (LinearMap.inr D.host.F (Ainf D.host.F) (Af D.host.F) c) ⊗ₜ[D.host.F] e = c ⊗ₜ[D.host.F] e
    have : sndA D.host.F (LinearMap.inr D.host.F (Ainf D.host.F) (Af D.host.F) c) = c := rfl
    rw [this]

theorem finQ_eq {D : D7} (a : AE D) : finQ D a = (GlobalTheory.BotFormula.toAfE D).symm (finPart D a) := rfl

theorem recon_ex {D : D7} (q : Formalism.MainNotions.StandardLatticesGL3.AE D) : ∃ a : AE D, infPart D a = 0 ∧ finQ D a = q :=
  ⟨secF D (GlobalTheory.BotFormula.toAfE D q), infPart_secF _, by rw [finQ_eq, finPart_secF, RingEquiv.symm_apply_apply]⟩

theorem recon_uniq {D : D7} (a b : AE D) (h1 : infPart D a = infPart D b) (h2 : finQ D a = finQ D b) : a = b := by
  have h3 : finPart D a = finPart D b := by
    rw [finQ_eq, finQ_eq] at h2
    exact (GlobalTheory.BotFormula.toAfE D).symm.injective h2
  rw [decomp a, decomp b, h1, h3]

end GlobalTheory.MovedTrChar

namespace GlobalTheory.MovedTrChar
open GlobalTheory.BotClassDict (finQ finStd)
open scoped TensorProduct

theorem finPt_parts {D : D7} (S T : HSp D) (r : D.host.E) (z : Matrix (Fin T.rank) (Fin S.rank) D.host.E) (i : Fin T.rank) (j : Fin S.rank) :
    infPart D (finPt (S := S) (T := T) rfl rfl r z i j) = 0 ∧
      finQ D (finPt (S := S) (T := T) rfl rfl r z i j) = -(Formalism.MainNotions.StandardLatticesGL3.inc D r⁻¹ * Formalism.MainNotions.StandardLatticesGL3.inc D (z i j)) := by
  have e0 : finPt (S := S) (T := T) rfl rfl r z i j = pairA D.host.F 0 1 ⊗ₜ[D.host.F] (-(r⁻¹ * z i j)) := rfl
  rw [e0]
  constructor
  · show fstA D.host.F (pairA D.host.F 0 1) ⊗ₜ[D.host.F] (-(r⁻¹ * z i j)) = 0
    rw [show fstA D.host.F (pairA D.host.F 0 1) = 0 from rfl]
    erw [TensorProduct.zero_tmul]
  · have e1 : finPart D (pairA D.host.F 0 1 ⊗ₜ[D.host.F] (-(r⁻¹ * z i j))) = finPart D (incA D (-(r⁻¹ * z i j))) := rfl
    rw [finQ_eq, e1, ← finQ_eq]
    erw [GlobalTheory.BotClassDict.finQ_inclR]
    rw [RingHom.map_neg, RingHom.map_mul]

theorem uComp {D : D7} (S T : HSp D) (hGS : HSpace.gram S = 1) (hGT : HSpace.gram T = 1)
    (x : Formalism.MainNotions.StandardLatticesGL3.GA D S.rank) (y : Formalism.MainNotions.StandardLatticesGL3.GA D T.rank) (g : GA D S) (h : GA D T)
    (hg : IsFinPt S g x) (hh : IsFinPt T h y) (w : WO S T) (hw : ∀ i j, infPart D (w i j) = 0) (i : Fin T.rank) (j : Fin S.rank) :
    infPart D (actO S T g h w i j) = 0 ∧
      finQ D (actO S T g h w i j) =
        (((y : GL (Fin T.rank) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin T.rank) (Fin T.rank) (Formalism.MainNotions.StandardLatticesGL3.AE D)) * w.map (finQ D) *
          (((x : GL (Fin S.rank) (Formalism.MainNotions.StandardLatticesGL3.AE D))⁻¹ : GL (Fin S.rank) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin S.rank) (Fin S.rank) (Formalism.MainNotions.StandardLatticesGL3.AE D))) i j := by
  have hy : finStd T hGT h = y := GlobalTheory.BotClassDict.finStd_of_isFinPt T hGT hh
  have hx : finStd S hGS g⁻¹ = x⁻¹ := by rw [map_inv, GlobalTheory.BotClassDict.finStd_of_isFinPt S hGS hg]
  have eh : (Formalism.L2.Theta.mt T h).map (finQ D) = ((y : GL (Fin T.rank) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin T.rank) (Fin T.rank) (Formalism.MainNotions.StandardLatticesGL3.AE D)) := by
    ext k l
    rw [Matrix.map_apply, ← hy, GlobalTheory.BotClassDict.finStd_apply]
    rfl
  have eg : (Formalism.L2.Theta.mt S g⁻¹).map (finQ D) =
      (((x : GL (Fin S.rank) (Formalism.MainNotions.StandardLatticesGL3.AE D))⁻¹ : GL (Fin S.rank) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin S.rank) (Fin S.rank) (Formalism.MainNotions.StandardLatticesGL3.AE D)) := by
    ext k l
    rw [Matrix.map_apply]
    have := GlobalTheory.BotClassDict.finStd_apply S hGS g⁻¹ k l
    rw [hx] at this
    exact this.symm
  have key : ∀ {R : Type} [Ring R] (f : AE D →+* R), (actO S T g h w).map f =
      (Formalism.L2.Theta.mt T h).map f * w.map f * (Formalism.L2.Theta.mt S g⁻¹).map f := by
    intro R _ f
    simp only [actO, Matrix.map_mul]
  constructor
  · have hw0 : w.map (infPart D) = 0 := by ext k l; exact hw k l
    have := congrFun (congrFun (key (infPart D)) i) j
    rw [Matrix.map_apply, hw0, Matrix.mul_zero, Matrix.zero_mul] at this
    exact this
  · have := congrFun (congrFun (key (finQ D)) i) j
    rw [Matrix.map_apply, eh, eg] at this
    exact this

end GlobalTheory.MovedTrChar

namespace GlobalTheory.MovedTrChar
open GlobalTheory.BotClassDict (finQ finStd)

theorem symplOH_neg_self {D : D7} (S T : HSp D) (u : WO S T) : symplOH S T (-u) u = 0 := by
  have h0 := Formalism.IndefR.Fin.symplOH_add_left S T u (-u) u
  rw [add_neg_cancel, GlobalTheory.FinTranslate.symplOH_self, zero_add, GlobalTheory.FinTranslate.symplOH_zero_left] at h0
  exact h0.symm

theorem ent_smul {D : D7} {m n : ℕ} (Y : Matrix (Fin m) (Fin m) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (Z : Matrix (Fin m) (Fin n) (Formalism.MainNotions.StandardLatticesGL3.AE D))
    (X : Matrix (Fin n) (Fin n) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (c : Formalism.MainNotions.StandardLatticesGL3.AE D) (i : Fin m) (j : Fin n) :
    (Y * (c • Z) * X) i j = c * (Y * Z * X) i j := by
  rw [Matrix.mul_smul, Matrix.smul_mul, Matrix.smul_apply, smul_eq_mul]



theorem psi_sympl_moved_eq_one : ∀ {D : D7} (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (S T : HSp D) {a d : ℕ} (hS : S.rank = a) (hT : T.rank = d)
  (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (r : D.host.E), Setup ψ θ S T cc δ r →
  ∀ (x : Formalism.MainNotions.StandardLatticesGL3.GA D a) (y : Formalism.MainNotions.StandardLatticesGL3.GA D d) (g : GA D S) (h : GA D T), IsFinPt S g x → IsFinPt T h y →
  ∀ z : Matrix (Fin d) (Fin a) D.host.E,
  ∃ n : ℕ, 0 < n ∧ ∀ z', Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc n (x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) z z' →
    ψ (symplOH S T (finPt hS hT r z') (actO S T g h (finPt hS hT r z) - finPt hS hT r z')) = 1 := by
  intro D ψ θ S T a d hS hT cc δ r hset x y g h hg hh z
  subst hS; subst hT
  obtain ⟨A0, hA0⟩ : ∃ A0, A0 = actO S T g h (finPt rfl rfl r z) := ⟨_, rfl⟩
  obtain ⟨N, hN, hC⟩ := _root_.GlobalTheory.FinCharInt.char_sympl_nsmul_int ψ hset.std.1.1 hset.std.1.2.1 S T A0
  obtain ⟨M, hM, hMint⟩ := _root_.GlobalTheory.NormSum.IdealDenom.exists_nat_mul_inv_mul_mem cc r
  refine ⟨N * M, by positivity, fun z' hz' => ?_⟩
  choose t ht hte using hz'
  obtain ⟨u, hu⟩ : ∃ u : WO S T, u = A0 - finPt rfl rfl r z' := ⟨_, rfl⟩
  choose v hv1 hv2 using fun i j => recon_ex (D := D) ((M : Formalism.MainNotions.StandardLatticesGL3.AE D) * (Formalism.MainNotions.StandardLatticesGL3.inc D r⁻¹ * t i j))
  have hNv : ∀ i j, (N • Matrix.of v : WO S T) i j = (N : AE D) * v i j := fun i j => by
    rw [Matrix.smul_apply, Matrix.of_apply, nsmul_eq_mul]
  have hmap : (finPt (S := S) (T := T) rfl rfl r z).map (finQ D) = (-(Formalism.MainNotions.StandardLatticesGL3.inc D r⁻¹)) • z.map (Formalism.MainNotions.StandardLatticesGL3.inc D) := by
    ext i j; rw [Matrix.map_apply, (finPt_parts S T r z i j).2, Matrix.smul_apply, Matrix.map_apply, smul_eq_mul, neg_mul]
  have huv : u = N • (Matrix.of v) := by
    ext i j
    have e1 := (uComp S T hset.gS hset.gT x y g h hg hh _ (fun i j => (finPt_parts S T r z i j).1) i j)
    have e2 := finPt_parts S T r z' i j
    apply recon_uniq
    · rw [hNv, map_mul, hv1, mul_zero, hu, Matrix.sub_apply, map_sub, hA0, e1.1, e2.1, sub_zero]
    · rw [hNv, map_mul, hv2]
      rw [hu, Matrix.sub_apply, map_sub]
      rw [hA0, e1.2, e2.2]
      rw [hmap]
      rw [ent_smul]
      rw [map_natCast]
      have h3 := hte i j
      rw [Matrix.sub_apply, Matrix.map_apply] at h3
      push_cast at h3 ⊢
      linear_combination (Formalism.MainNotions.StandardLatticesGL3.inc D r⁻¹) * h3
  have hself : symplOH S T (-u) u = 0 := symplOH_neg_self S T u
  have hsum : finPt rfl rfl r z' + u = A0 := by rw [hu]; abel
  have geq : actO S T g h (finPt rfl rfl r z) - finPt rfl rfl r z' = u := by subst hA0; exact hu.symm
  have h1 := Formalism.IndefR.Fin.symplOH_add_left S T (finPt rfl rfl r z') u u
  rw [hsum, GlobalTheory.FinTranslate.symplOH_self, add_zero] at h1
  rw [geq, ← h1, huv]
  exact hC _ (fun i j => hv1 i j) (fun i j => by rw [Matrix.of_apply, hv2]; exact hMint _ (ht i j))

end GlobalTheory.MovedTrChar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardCharHalfSymplecticMovedFinitePointTrivia =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslate =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslate", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Formalism.SharpRestriction.GlobalSchurBounds.StandardLatticesGL3\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelCurvePhaseEqOfClose\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ClassFunctionSumIntegral\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NormSumPairRankZeroOfCurveCoordNorm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergTranslateFixesThetaDeepLevel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardCharHalfSymplecticMovedFinitePointTrivia\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.CharLem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormSum (Pair Tup minorPol ratG intG Cls gam)
open GlobalTheory.NormDict GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsDefiniteSpace IsOpenCompactLevel)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.MovedTr
variable {D : D7}

theorem heisO_add_eq (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (w₀ u : WO S T) (F : WO S T → ℂ) :
    heisO ψ S T (w₀ + u) F = ψ (-symplOH S T w₀ u) • heisO ψ S T w₀ (heisO ψ S T u F) := by
  funext w
  simp only [heisO, Pi.smul_apply, smul_eq_mul]
  rw [Formalism.IndefR.Fin.symplOH_add_right, Formalism.IndefR.Fin.symplOH_add_left, AddChar.map_add_eq_mul,
    AddChar.map_add_eq_mul, add_assoc]
  have h1 : ψ (-symplOH S T w₀ u) * ψ (symplOH S T w₀ u) = 1 := by
    rw [← AddChar.map_add_eq_mul, neg_add_cancel, AddChar.map_zero_eq_one]
  linear_combination (-(ψ (symplOH S T w w₀) * ψ (symplOH S T w u) * F (w + (w₀ + u)))) * h1

theorem closeTo_of_mul {cc : Ideal (𝓞 D.host.K)} {N N' : ℕ} {k m : ℕ} {g : GL (Fin N) (Formalism.MainNotions.StandardLatticesGL3.AE D)}
    {g' : GL (Fin N') (Formalism.MainNotions.StandardLatticesGL3.AE D)} {z z' : Matrix (Fin N') (Fin N) D.host.E}
    (h : Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc (k * m) g g' z z') : Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc m g g' z z' := by
  intro i j
  obtain ⟨t, ht, e⟩ := h i j
  refine ⟨(k : Formalism.MainNotions.StandardLatticesGL3.AE D) * t, ?_, ?_⟩
  · have : (k : Formalism.MainNotions.StandardLatticesGL3.AE D) * t = k • t := by rw [nsmul_eq_mul]
    rw [this]; exact AddSubgroup.nsmul_mem _ ht k
  · rw [e]; push_cast; ring

theorem moved_translate : ∀ {D : D7} (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (S T : HSp D) {a d : ℕ} (hS : S.rank = a) (hT : T.rank = d)
  (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (r : D.host.E), Setup ψ θ S T cc δ r →
  ∀ (χS χT : (AE D)ˣ →* Circle) (om : GA D S × GA D T →* Module.End ℂ (WO S T → ℂ)), IsWeilDatumO ψ S T χS χT om →
  ∀ (x : Formalism.MainNotions.StandardLatticesGL3.GA D a) (y : Formalism.MainNotions.StandardLatticesGL3.GA D d) (g : GA D S) (h : GA D T), IsFinPt S g x → IsFinPt T h y →
  ∀ f₀ : WO S T → ℂ, IsThetaFunO ψ S T f₀ → ∀ z : Matrix (Fin d) (Fin a) D.host.E,
  ∃ n : ℕ, 0 < n ∧ ∀ z', Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc n (x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) z z' →
    Formalism.MainNotions.StandardLatticesGL3.wdPh D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z) • om (g, h) (heisO ψ S T (finPt hS hT r z) f₀) =
      Formalism.MainNotions.StandardLatticesGL3.wdPh D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z') • heisO ψ S T (finPt hS hT r z') (om (g, h) f₀) := by
  intro D ψ θ S T a d hS hT cc δ r hset χS χT om hom x y g h hg hh f₀ hf₀ z
  have hF := hom.om_pres (g, h) f₀ hf₀
  obtain ⟨n₁, hn₁, H₁⟩ := _root_.GlobalTheory.LevelTr.level_translate ψ θ S T hS hT cc δ r hset x y g h hg hh _ hF z
  obtain ⟨n₂, hn₂, H₂⟩ := _root_.GlobalTheory.MovedTrChar.psi_sympl_moved_eq_one ψ θ S T hS hT cc δ r hset x y g h hg hh z
  obtain ⟨n₃, hn₃, H₃⟩ := _root_.GlobalTheory.PhaseMove.phase_eq cc δ hset.crv x y z
  refine ⟨n₁ * n₂ * n₃, by positivity, fun z' hz' => ?_⟩
  have c1 : Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc n₁ (x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) z z' :=
    closeTo_of_mul (k := n₂ * n₃) (by rwa [show n₂ * n₃ * n₁ = n₁ * n₂ * n₃ by ring])
  have c2 : Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc n₂ (x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) z z' :=
    closeTo_of_mul (k := n₁ * n₃) (by rwa [show n₁ * n₃ * n₂ = n₁ * n₂ * n₃ by ring])
  have c3 : Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc n₃ (x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D)) z z' :=
    closeTo_of_mul (k := n₁ * n₂) (by rwa [show n₁ * n₂ * n₃ = n₁ * n₂ * n₃ by ring])
  rw [hom.om_heis g h _ f₀ hf₀, H₃ z' c3]
  have e : actO S T g h (finPt hS hT r z) =
      finPt hS hT r z' + (actO S T g h (finPt hS hT r z) - finPt hS hT r z') := by abel
  have hψ : ψ (-symplOH S T (finPt hS hT r z') (actO S T g h (finPt hS hT r z) - finPt hS hT r z')) = 1 := by
    have h2 := H₂ z' c2
    have h0 : ψ (-symplOH S T (finPt hS hT r z') (actO S T g h (finPt hS hT r z) - finPt hS hT r z')) *
        ψ (symplOH S T (finPt hS hT r z') (actO S T g h (finPt hS hT r z) - finPt hS hT r z')) = 1 := by
      rw [← AddChar.map_add_eq_mul, neg_add_cancel, AddChar.map_zero_eq_one]
    rwa [h2, mul_one] at h0
  rw [e, heisO_add_eq, H₁ z' c1, hψ, one_smul]

end GlobalTheory.MovedTr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslate =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslateStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslateStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormSum (Pair Tup minorPol ratG intG Cls gam)
open GlobalTheory.NormDict GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsDefiniteSpace IsOpenCompactLevel)

attribute [local instance] Formalism.BasicNotions.Host.cmStar


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslateStatement =====
