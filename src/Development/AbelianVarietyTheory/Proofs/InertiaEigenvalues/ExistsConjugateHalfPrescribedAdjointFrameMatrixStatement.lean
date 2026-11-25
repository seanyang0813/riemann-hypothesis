module

public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.MemLatOIffExistsActO
public import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FinTensMemLatO
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMapMulInv
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsDualHalfLatticeDetectingCharacter
public import Formalism.LocalToGlobal.IndefiniteReal.DatumVec
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
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl
import Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjugateHalfPrescribedAdjointFrameMatrix, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjugateHalfPrescribedAdjointFrameMatrixStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjugateHalfPrescribedAdjointFrameMatrix =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjugateHalfPrescribedAdjointFrameMatrix", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.MemLatOIffExistsActO\npublic import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FinTensMemLatO\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMapMulInv\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsDualHalfLatticeDetectingCharacter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.ConjTwist GlobalTheory.GalTw ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Classical

namespace GlobalTheory.AdjHalfLift

open GlobalTheory.AdelicLatMove

theorem gramInv_mul_gram {D : D7} (S : HSp D) : (S.gram⁻¹).map (eToEAf D) * S.gram.map (eToEAf D) = 1 := by
  rw [← Matrix.map_mul, Matrix.nonsing_inv_mul _ (GlobalTheory.LatVac.gram_det_isUnit S),
    Matrix.map_one _ (RingHom.map_zero _) (RingHom.map_one _)]

theorem cF_cF {D : D7} (w : EAf D) : cF D (cF D w) = w := by
  obtain ⟨Z, -, rfl⟩ := GlobalTheory.HalfDuality.exists_lift (D := D) w
  exact GlobalTheory.PlaceVec.cF_cF_toEAf Z




theorem exists_half_frMapAdj : ∀ (D : D7) (S T : HSp D) (βS : GL (Fin S.rank) (EAf D)) (βT : GL (Fin T.rank) (EAf D)) (e : AE D), e * e = e → ∀ z : Matrix (Fin S.rank) (Fin T.rank) (EAf D), (∀ i j, toEAf D e * z i j = z i j) → ∃ y : WO S T, IsHalf (cA D e) y ∧ (∀ i j, infPart D (y i j) = 0) ∧ frMapAdj S T βS βT y = z := by
  intro D S T βS βT e hee z hz
  choose L hL0 hL using fun t : EAf D => GlobalTheory.HalfDuality.exists_lift (D := D) t
  let N : Matrix (Fin S.rank) (Fin T.rank) (EAf D) :=
    HMul.hMul (HMul.hMul (HMul.hMul (S.gram.map (eToEAf D)) βS.val) z) (HMul.hMul (βT⁻¹).val ((T.gram⁻¹).map (eToEAf D)))
  let X : Matrix (Fin T.rank) (Fin S.rank) (EAf D) := Matrix.of fun i j => cF D (N j i)
  refine ⟨Matrix.of fun i j => cA D e * L (X i j), fun i j => ?_, fun i j => ?_, ?_⟩
  · simp only [Matrix.of_apply, ← mul_assoc, ← map_mul, hee]
  · simp only [Matrix.of_apply, map_mul, hL0, mul_zero]
  · have hcc : cF D (toEAf D (cA D e)) = toEAf D e := by
      rw [← toEAf_cA, GlobalTheory.DualPairCheck.cA_cA]
    have hY : (((Matrix.of fun i j => cA D e * L (X i j) : WO S T).map (toEAf D)).map (cF D))ᵀ = toEAf D e • N := by
      ext i j
      simp only [Matrix.transpose_apply, Matrix.map_apply, Matrix.of_apply, map_mul, hL, X, cF_cF, hcc,
        Matrix.smul_apply, smul_eq_mul]
    rw [GlobalTheory.PlaceVec.frMapAdj_eq, hY, Matrix.mul_smul, Matrix.smul_mul]
    have e1 : HMul.hMul (HMul.hMul (HMul.hMul (βS⁻¹).val ((S.gram⁻¹).map (eToEAf D))) N)
        (HMul.hMul (T.gram.map (eToEAf D)) βT.val) = z :=
      GlobalTheory.PlaceVec.sandwich_cancel _ _ _ _ _ _ _ _ z (gramInv_mul_gram S) (Units.inv_mul βS)
        (gramInv_mul_gram T) (Units.inv_mul βT)
    rw [e1]
    exact Matrix.ext fun i j => hz i j

end GlobalTheory.AdjHalfLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjugateHalfPrescribedAdjointFrameMatrix =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjugateHalfPrescribedAdjointFrameMatrixStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjugateHalfPrescribedAdjointFrameMatrixStatement", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjugateHalfPrescribedAdjointFrameMatrix\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.ConjTwist GlobalTheory.GalTw ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Classical

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConjugateHalfPrescribedAdjointFrameMatrixStatement =====
