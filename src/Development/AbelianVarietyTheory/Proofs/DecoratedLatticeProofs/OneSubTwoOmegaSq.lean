module

import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.CoeffOneSubstOfConstantCoeffEqZero
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.TranslateProduct
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.IsogenyFormulaInstance
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.MulStableIntegral
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.SecondLogDerivativeUnique
public import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.AnalyticTransOfAdd
public import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.CmIntegralityOfTorsionPoints
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.CubeThreeR
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EndoZInstance
public import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsHomotheticPeriodPairLattice
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.NotRedOfMem
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.WeierstrassCurvePointOfLatticeAddOfGeneric
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Mathlib.Analysis.Normed.Field.Instances
public import Mathlib.Analysis.SpecialFunctions.Elliptic.Weierstrass
public import Mathlib.NumberTheory.Padics.Complex
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EllipticOnePole
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementK
public import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.Taylor
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.CurveIntegerMultiplicationSeries
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FglInvariant
public import Mathlib.NumberTheory.Padics.RingHoms
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.IsLawOfLog
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.HasSecondLogDeriv
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeightTwoFormalGroupUnramifiedMultiplier
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.FinalOfNRDense
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.CurveSecondLogDerivative
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.PhNormFromDatum
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
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.WeierstrassPAddOfNeOfDerivNeZero
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Lemma
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SemiChar
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic.TypeStar
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.QuasiPeriodConstUnique
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.USideB
import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.AnaSys
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.IntegerEndomorphismInstance
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMemWpNormSubLtOne
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormPowSubPowLe
import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KurComplete
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.ChordEquation
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.ChainRuleFormalGroupVar
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FormalGroupMulByIntegralOfKernelPrimeToL, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OmegaKSqSubSelfAddEqZero, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CmMultiplierIntegralSeriesAtInertPrimeProof, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MultiplicationSeriesUnitCoeffNormLe, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NormWeierstrassPSubEqOne, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NormWeierstrassPSubEqOneOfGood, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ReductionSetSubgroup, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeierstrassPIntegralOfMulIntegralGoodReduction, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeierstrassPOddMulSubTwoTorsionProduct, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FormalGroupHeightLeTwoGoodReduction, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsIntegralHondaLogarithmPairShortWeierstrass, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnramifiedNearIntegralComplexPadic, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MaxUnramifiedResidueAlgClosedAndFrobeniusLift, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OneSubTwoOmegaSq

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FormalGroupMulByIntegralOfKernelPrimeToL =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FormalGroupMulByIntegralOfKernelPrimeToL", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.TranslateProduct\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.IsogenyFormulaInstance\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.MulStableIntegral\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.SecondLogDerivativeUnique\nimport Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.CurveSecondLogDerivative\nimport Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.PhNormFromDatum\npublic import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.AnalyticTransOfAdd\npublic import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.CmIntegralityOfTorsionPoints\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.CubeThreeR\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EndoZInstance\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.Honda Formalism.L2.Th1.CM

namespace GlobalTheory.Honda


open Formalism.L2.Th1 in
theorem mulBy_coefLe_of_kernel_prime_to :
    ∀ (L : PeriodPair) (l : ℕ) [Fact l.Prime], 5 ≤ l → ∀ (ι : ℂ ≃+* ℂ_[l]), ‖ι L.g₂‖ ≤ 1 → ‖ι L.g₃‖ ≤ 1 → ‖ι L.g₂ ^ 3 - 27 * ι L.g₃ ^ 2‖ = 1 → ∀ (β : ℂ) (N : ℕ), Formalism.L2.Th1.F.MulStable L β → ‖ι β‖ = 1 → 0 < N → ¬ l ∣ N → (∀ z, β * z ∈ L.lattice → (N : ℂ) * z ∈ L.lattice) → CoefLe 1 (Formalism.L2.Th1.C.mulBy (Formalism.L2.Th1.A.logSer (Formalism.L2.Th1.A.shortW (ι L.g₂) (ι L.g₃))) (Formalism.L2.Th1.A.expSer (Formalism.L2.Th1.A.shortW (ι L.g₂) (ι L.g₃))) (ι β)) := by
  intro L l _ hl ι h2 h3 hD β N hst hβ hN hlN hker
  have hβp : ι β ≠ 0 := by
    intro h
    rw [h, norm_zero] at hβ
    exact zero_ne_one hβ
  have hβ0 : β ≠ 0 := by
    intro h
    rw [h, map_zero] at hβp
    exact hβp rfl
  have hW : E.IntCurve (E.curveL l L ι) := E.ScaledModelNorms.intCurve_short l hl _ _ h2 h3 hD
  have hΔ : (E.curveL l L ι).Δ ≠ 0 := by
    intro h
    have := hW.2.2.2.2.2
    rw [h, norm_zero] at this
    exact zero_ne_one this
  have htwo := E.ScaledModelNorms.norm_two l hl
  have hC : C.CoeffIn (Formalism.G.unitBall ℂ_[l]) (E.curveL l L ι) :=
    ⟨hW.1, hW.2.1, hW.2.2.1, hW.2.2.2.1, hW.2.2.2.2.1⟩
  obtain ⟨S, hS⟩ := F.kerRepsExist L β hβ0 hst
  obtain ⟨neg, -, hE⟩ := F.endoZInstance L β S hβ0 hst hS
  have hb2 : (E.curveL l L ι).b₂ = 0 := (A.shortInv ℂ_[l] _ _).1
  have hEp := D.CurveNormEndomorphisms.isEndoZ_map (ι : ℂ →+* ℂ_[l]) hE
  rw [← E.wpBridge l L ι] at hEp
  have hEp' : C.IsEndoZ (A.wpReg (E.curveL l L ι)) neg
      (fun P : S => ι (L.weierstrassP (P : ℂ)) + (E.curveL l L ι).b₂ / 12)
      (fun P : S => PowerSeries.map (ι : ℂ →+* ℂ_[l])
        (F.taylor0 (fun z => L.weierstrassP (z + (P : ℂ))))) (ι β) := by
    rw [hb2]
    simpa using hEp
  have hint : ∀ P : S, ‖ι (L.weierstrassP (P : ℂ))‖ ≤ 1 ∧ ‖ι (L.derivWeierstrassP (P : ℂ))‖ ≤ 1 := by
    intro P
    have := E.cm4Int L l hl ι 1 one_ne_zero (by simpa using h2) (by simpa using h3) (by simpa using hD)
      (P : ℂ) N hN hlN (hker _ (hS.1 P P.2).1) (hS.1 P P.2).2
    simpa using this
  obtain ⟨hLP, hXW, hA, -, -⟩ := C.curveFrame ℂ_[l] (Formalism.G.unitBall ℂ_[l]) (E.curveL l L ι) hC
  have hinv : ∀ x : ℂ_[l], ‖x‖ = 1 → x⁻¹ ∈ Formalism.G.unitBall ℂ_[l] := by
    intro x hx
    show ‖x⁻¹‖ ≤ 1
    rw [norm_inv, hx, inv_one]
  have hM := A.coeffMem.{0} ℂ_[l] (E.curveL l L ι) (Formalism.G.unitBall ℂ_[l]) hC.1 hC.2.1 hC.2.2.1 hC.2.2.2.1
    hC.2.2.2.2
  have key := C.endIntFromDatum ℂ_[l] (Formalism.G.unitBall ℂ_[l]) (A.wpReg (E.curveL l L ι))
    (A.logSer (E.curveL l L ι)) (A.expSer (E.curveL l L ι)) (A.xS (E.curveL l L ι))
    ((E.curveL l L ι).b₂ / 12) S neg (fun P : S => ι (L.weierstrassP (P : ℂ)))
    (fun P : S => PowerSeries.map (ι : ℂ →+* ℂ_[l])
        (F.taylor0 (fun z => L.weierstrassP (z + (P : ℂ)))))
    (fun P : S => E.xT (E.curveL l L ι) (E.ptOf l L ι (P : ℂ))) (ι β)
    ((ι β)⁻¹ * ((Fintype.card S : ℂ_[l]) + 1)) hLP hXW hA (hinv _ htwo)
    ⟨hEp', by rw [← mul_assoc, mul_inv_cancel₀ hβp, one_mul], ?_, ?_, fun P => (hint P).1, hβ.le,
      hinv _ hβ, by rw [hb2, zero_div, mul_zero]; exact zero_mem _⟩
  · exact fun n => key n
  · intro P
    rw [hb2, zero_div, map_zero, add_zero]
    exact E.transWpBridge l L ι (P : ℂ) (hS.1 P P.2).2
  · intro P n
    unfold E.xT
    beta_reduce
    rw [E.ScaledModelNorms.px_ptOf l L ι hΔ _ (hS.1 P P.2).2, E.ScaledModelNorms.py_ptOf l L ι hΔ _ (hS.1 P P.2).2]
    refine (hM.2.2.2.2.2.2.2.2.2.2 _ (hint P).1 _ ?_ n).1
    show ‖ι (L.derivWeierstrassP (P : ℂ)) / 2‖ ≤ 1
    rw [norm_div, htwo, div_one]
    exact (hint P).2

end GlobalTheory.Honda

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FormalGroupMulByIntegralOfKernelPrimeToL =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OmegaKSqSubSelfAddEqZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OmegaKSqSubSelfAddEqZero", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.Honda Formalism.L2.Th1.CM

namespace GlobalTheory

theorem omegaK_quadratic : ∀ d : ℕ, d % 4 = 3 → omegaK d ^ 2 - omegaK d + (((d + 1) / 4 : ℕ) : ℂ) = 0 := by
  first | exact _root_.ReciprocityTheory.ChartRestriction.L1.omegaK_quad | exact @_root_.ReciprocityTheory.ChartRestriction.L1.omegaK_quad | apply _root_.ReciprocityTheory.ChartRestriction.L1.omegaK_quad <;> assumption
end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OmegaKSqSubSelfAddEqZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CmMultiplierIntegralSeriesAtInertPrimeProof =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CmMultiplierIntegralSeriesAtInertPrimeProof", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\npublic import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsHomotheticPeriodPairLattice\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.TranslateProduct\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FormalGroupMulByIntegralOfKernelPrimeToL\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OmegaKSqSubSelfAddEqZero\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.CubeThreeR\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.Honda Formalism.L2.Th1.CM

namespace GlobalTheory.Honda

theorem norm_eq_one_of_quad_root {l : ℕ} [Fact l.Prime] (x : ℂ_[l]) (N : ℕ) (hN : ¬ l ∣ N)
    (hx : x ^ 2 - x + (N : ℂ_[l]) = 0) : ‖x‖ = 1 := by
  have hNn : ‖(N : ℂ_[l])‖ = 1 := by
    rw [← map_natCast (algebraMap ℚ_[l] ℂ_[l]), norm_algebraMap', Padic.norm_natCast_eq_one_iff]
    exact (Nat.Prime.coprime_iff_not_dvd Fact.out).mpr hN
  have hle : ∀ y : ℂ_[l], y ^ 2 - y + (N : ℂ_[l]) = 0 → ‖y‖ ≤ 1 := by
    intro y hy
    by_contra h
    push_neg at h
    have h1 : y ^ 2 = y - N := by linear_combination hy
    have h2 : ‖y - (N : ℂ_[l])‖ ≤ max ‖y‖ ‖(N : ℂ_[l])‖ := by
      rw [sub_eq_add_neg, ← norm_neg (N : ℂ_[l])]
      exact IsUltrametricDist.norm_add_le_max _ _
    rw [hNn, max_eq_left h.le] at h2
    have h3 : ‖y‖ ^ 2 ≤ ‖y‖ := by rw [← norm_pow, h1]; exact h2
    nlinarith
  have h1 := hle x hx
  have h2 := hle (1 - x) (by linear_combination hx)
  have hprod : x * (1 - x) = N := by linear_combination -hx
  have h4 : ‖x‖ * ‖1 - x‖ = 1 := by rw [← norm_mul, hprod, hNn]
  refine le_antisymm h1 ?_
  calc (1 : ℝ) = ‖x‖ * ‖1 - x‖ := h4.symm
    _ ≤ ‖x‖ * 1 := mul_le_mul_of_nonneg_left h2 (norm_nonneg x)
    _ = ‖x‖ := mul_one _

theorem endOmega_holds : EndOmega := by
  intro d L hd hL l _ hl5 hld hsq ι g2 g3 hG n
  obtain ⟨-, -, h2, h3, hΔ, lam, hlam, rfl, rfl⟩ := hG
  have hc0 : ι.symm lam ≠ 0 := by simpa using hlam
  obtain ⟨L', -, hg2, hg3, -, hCM⟩ := _root_.GlobalTheory.homotheticLattice L (ι.symm lam) hc0
  have hιc : ι (ι.symm lam) = lam := ι.apply_symm_apply lam
  have e2 : ι L'.g₂ = lam ^ 4 * ι L.g₂ := by rw [hg2, map_mul, map_pow, hιc]
  have e3 : ι L'.g₃ = lam ^ 6 * ι L.g₃ := by rw [hg3, map_mul, map_pow, hιc]
  have hL' : HasCMBy d L' := hCM d hL
  have hq := _root_.GlobalTheory.omegaK_quadratic d hd
  set N := (d + 1) / 4 with hNdef
  have hN0 : 0 < N := by omega
  have hlN : ¬ l ∣ N := by
    intro h
    apply hsq
    refine ⟨1, ?_⟩
    have h4 : 4 * N = d + 1 := by omega
    have h5 : ((4 * N : ℕ) : ZMod l) = 0 := by
      rw [Nat.cast_mul, (ZMod.natCast_eq_zero_iff N l).mpr h, mul_zero]
    rw [h4] at h5
    push_cast at h5
    linear_combination h5
  have hιβ : ‖ι (omegaK d)‖ = 1 := by
    apply norm_eq_one_of_quad_root _ N hlN
    have := congrArg ι hq
    simpa using this
  have hNz : ∀ z, omegaK d * z ∈ L'.lattice → (N : ℂ) * z ∈ L'.lattice := by
    intro z hz
    have hz2 : omegaK d * (omegaK d * z) ∈ L'.lattice := hL' _ hz
    have e : (N : ℂ) * z = omegaK d * z - omegaK d * (omegaK d * z) := by linear_combination z * hq
    rw [e]
    exact sub_mem hz hz2
  have key := _root_.GlobalTheory.Honda.mulBy_coefLe_of_kernel_prime_to L' l hl5 ι (by rw [e2]; exact h2) (by rw [e3]; exact h3)
    (by rw [e2, e3]; exact hΔ) (omegaK d) N hL' hιβ hN0 hlN hNz
  rw [e2, e3] at key
  rw [Formalism.L2.Th1.A.uSerEq ℂ_[l]]
  exact key n

end GlobalTheory.Honda
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CmMultiplierIntegralSeriesAtInertPrimeProof =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MultiplicationSeriesUnitCoeffNormLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MultiplicationSeriesUnitCoeffNormLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.Honda

open PowerSeries

variable {K : Type} [NormedField K] [IsUltrametricDist K]

theorem htform_norm_sum_lt {ι : Type} (s : Finset ι) (f : ι → K) (h : ∀ j ∈ s, ‖f j‖ < 1) :
    ‖∑ j ∈ s, f j‖ < 1 := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s ha ih =>
    rw [Finset.sum_insert ha]
    exact lt_of_le_of_lt (IsUltrametricDist.norm_add_le_max _ _)
      (max_lt (h a (by simp)) (ih fun j hj => h j (by simp [hj])))

theorem htform_norm_sum_le {ι : Type} (s : Finset ι) (f : ι → K) (h : ∀ j ∈ s, ‖f j‖ ≤ 1) :
    ‖∑ j ∈ s, f j‖ ≤ 1 := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s ha ih =>
    rw [Finset.sum_insert ha]
    exact le_trans (IsUltrametricDist.norm_add_le_max _ _)
      (max_le (h a (by simp)) (ih fun j hj => h j (by simp [hj])))

def HtSmallTo (N : ℕ) (f : K⟦X⟧) : Prop := CoefLe 1 f ∧ ∀ n < N, ‖coeff n f‖ < 1

theorem HtSmallTo.mul {a b : ℕ} {f g : K⟦X⟧} (hf : HtSmallTo a f) (hg : HtSmallTo b g) :
    HtSmallTo (a + b) (f * g) := by
  constructor
  · intro n
    rw [coeff_mul]
    apply htform_norm_sum_le
    rintro ⟨i, j⟩ _
    rw [norm_mul]
    exact mul_le_one₀ (hf.1 i) (norm_nonneg _) (hg.1 j)
  · intro n hn
    rw [coeff_mul]
    apply htform_norm_sum_lt
    rintro ⟨i, j⟩ hij
    have hs : i + j = n := by simpa using hij
    rw [norm_mul]
    by_cases hi : i < a
    · exact mul_lt_one_of_nonneg_of_lt_one_left (norm_nonneg _) (hf.2 i hi) (hg.1 j)
    · have hj : j < b := by omega
      exact mul_lt_one_of_nonneg_of_lt_one_right (hf.1 i) (norm_nonneg _) (hg.2 j hj)

theorem htSmallTo_zero_iff (f : K⟦X⟧) : HtSmallTo 0 f ↔ CoefLe 1 f :=
  ⟨fun h => h.1, fun h => ⟨h, fun n hn => absurd hn (Nat.not_lt_zero _)⟩⟩

theorem htSmallTo_one : HtSmallTo 0 (1 : K⟦X⟧) := by
  rw [htSmallTo_zero_iff]
  intro n
  rw [coeff_one]
  split_ifs <;> simp

theorem htSmallTo_pow {f : K⟦X⟧} (hf : HtSmallTo 0 f) (d : ℕ) : HtSmallTo 0 (f ^ d) := by
  induction d with
  | zero => simpa using htSmallTo_one
  | succ d ih => simpa [pow_succ] using ih.mul hf

theorem htSmallTo_X_pow (k : ℕ) : HtSmallTo 0 ((X : K⟦X⟧) ^ k) := by
  rw [htSmallTo_zero_iff]
  intro n
  rw [coeff_X_pow]
  split_ifs <;> simp

theorem htSmallTo_C_mul {c : K} (hc : ‖c‖ ≤ 1) {f : K⟦X⟧} (hf : HtSmallTo 0 f) :
    HtSmallTo 0 (C c * f) := by
  rw [htSmallTo_zero_iff]
  intro n
  rw [coeff_C_mul, norm_mul]
  exact mul_le_one₀ hc (norm_nonneg _) (hf.1 n)

theorem htSmallTo_sum {ι : Type} (s : Finset ι) (f : ι → K⟦X⟧) (h : ∀ j ∈ s, HtSmallTo 0 (f j)) :
    HtSmallTo 0 (∑ j ∈ s, f j) := by
  rw [htSmallTo_zero_iff]
  intro n

  rw [map_sum]
  exact htform_norm_sum_le _ _ fun j hj => (h j hj).1 n

theorem htSmallTo_sub {f g : K⟦X⟧} (hf : HtSmallTo 0 f) (hg : HtSmallTo 0 g) : HtSmallTo 0 (f - g) := by
  rw [htSmallTo_zero_iff]
  intro n
  rw [map_sub, sub_eq_add_neg]
  exact le_trans (IsUltrametricDist.norm_add_le_max _ _) (max_le (hf.1 n) (by rw [norm_neg]; exact hg.1 n))

theorem htSmallTo_inv {B : K⟦X⟧} (hB : CoefLe 1 B) (h0 : constantCoeff B = 1) : HtSmallTo 0 B⁻¹ := by
  rw [htSmallTo_zero_iff]
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
  rw [coeff_inv]
  split_ifs with hn
  · simp [h0]
  · rw [h0, inv_one, neg_mul, one_mul, norm_neg]
    apply htform_norm_sum_le
    rintro ⟨i, j⟩ _
    dsimp only
    split_ifs with hj
    · rw [norm_mul]
      exact mul_le_one₀ (hB i) (norm_nonneg _) (ih j hj)
    · simp

theorem htform_coeff_vpow_eq_zero {v : K⟦X⟧} (h0 : constantCoeff v = 0) {n d : ℕ} (h : n < d) :
    coeff n (v ^ d) = 0 := by
  obtain ⟨w, rfl⟩ := X_dvd_iff.mpr h0
  rw [mul_pow, coeff_X_pow_mul', if_neg (by omega)]

theorem htform_coeff_subst (A v : K⟦X⟧) (h0 : constantCoeff v = 0) (n : ℕ) :
    coeff n (A.subst v) = ∑ d ∈ Finset.range (n + 1), coeff d A * coeff n (v ^ d) := by
  rw [coeff_subst' (HasSubst.of_constantCoeff_zero' h0)]
  rw [finsum_eq_sum_of_support_subset _ (s := Finset.range (n + 1))]
  · simp [smul_eq_mul]
  · intro d hd
    simp only [Function.mem_support] at hd
    simp only [Finset.coe_range, Set.mem_Iio]
    by_contra hlt
    exact hd (by rw [htform_coeff_vpow_eq_zero h0 (by omega), smul_zero])

theorem htSmallTo_subst {A v : K⟦X⟧} (hA : CoefLe 1 A) (hv : CoefLe 1 v) (h0 : constantCoeff v = 0) :
    HtSmallTo 0 (A.subst v) := by
  rw [htSmallTo_zero_iff]
  intro n
  rw [htform_coeff_subst A v h0]
  apply htform_norm_sum_le
  intro d _
  rw [norm_mul]
  exact mul_le_one₀ (hA d) (norm_nonneg _) ((htSmallTo_pow ((htSmallTo_zero_iff v).2 hv) d).1 n)

theorem htform_constantCoeff_subst (A v : K⟦X⟧) (h0 : constantCoeff v = 0) :
    constantCoeff (A.subst v) = constantCoeff A := by
  rw [← coeff_zero_eq_constantCoeff_apply, htform_coeff_subst A v h0]
  simp

theorem htform_unit_coeff_le : ∀ (K : Type) [NormedField K] [IsUltrametricDist K] [CharZero K] (A v : K⟦X⟧) (e e' : K) (M : ℕ) (Dp Np : Polynomial K), CoefLe 1 A → constantCoeff A = 1 → CoefLe 1 v → constantCoeff v = 0 → ‖e‖ ≤ 1 → ‖e'‖ ≤ 1 → Np.Monic → Np.natDegree = M + 1 → (∀ i, ‖Np.coeff i‖ ≤ 1) → Dp.natDegree ≤ M → ‖Dp.eval e'‖ = 1 → (A.subst v - C e * v ^ 2) * (∑ i ∈ Finset.range (M + 1), C (Dp.coeff i) * A ^ i * X ^ (2 * (M - i))) * X ^ 2 = v ^ 2 * ∑ i ∈ Finset.range (M + 2), C (Np.coeff i) * A ^ i * X ^ (2 * (M + 1 - i)) → ∃ n, n ≤ M + 1 ∧ ‖coeff n v‖ = 1 := by
  intro K _ _ _ A v e e' M Dp Np hA hA0 hv hv0 he he' _ _ hNc hDdeg hDe heq
  by_contra hcon
  push_neg at hcon
  have hvs : HtSmallTo (M + 2) v := ⟨hv, fun n hn => lt_of_le_of_ne (hv n) (hcon n (by omega))⟩
  have hA' : HtSmallTo 0 A := (htSmallTo_zero_iff A).2 hA
  have hB : HtSmallTo 0 (A.subst v - C e * v ^ 2) :=
    htSmallTo_sub (htSmallTo_subst hA hv hv0) (htSmallTo_C_mul he (htSmallTo_pow ((htSmallTo_zero_iff v).2 hv) 2))
  have hB0 : constantCoeff (A.subst v - C e * v ^ 2) = 1 := by
    rw [map_sub, htform_constantCoeff_subst A v hv0, hA0, map_mul, map_pow, hv0]
    simp
  have hH : HtSmallTo 0 (∑ i ∈ Finset.range (M + 2), C (Np.coeff i) * A ^ i * X ^ (2 * (M + 1 - i))) :=
    htSmallTo_sum _ _ fun i _ => by
      simpa using (htSmallTo_C_mul (hNc i) (htSmallTo_pow hA' i)).mul (htSmallTo_X_pow (K := K) (2 * (M + 1 - i)))
  have h1 := ((hvs.mul hvs).mul hH)
  rw [← pow_two, ← heq] at h1
  set G := ∑ i ∈ Finset.range (M + 1), C (Dp.coeff i) * A ^ i * X ^ (2 * (M - i)) with hG
  set B := A.subst v - C e * v ^ 2 with hBdef
  have h2 : HtSmallTo (M + 2 + (M + 2)) (G * X ^ 2) := by
    have := (htSmallTo_inv hB.1 hB0).mul h1
    have hBB : B⁻¹ * (B * G * X ^ 2) = G * X ^ 2 := by
      rw [mul_assoc, ← mul_assoc B⁻¹, PowerSeries.inv_mul_cancel _ (by rw [hB0]; exact one_ne_zero), one_mul]
    rw [hBB, zero_add, add_zero] at this
    exact this
  have h3 : ∀ n < 2 * M + 2, ‖coeff n G‖ < 1 := by
    intro n hn
    have := h2.2 (n + 2) (by omega)
    rwa [coeff_mul_X_pow] at this
  have hterm : ∀ k i, coeff (2 * k) (C (Dp.coeff i) * A ^ i * X ^ (2 * (M - i))) =
      Dp.coeff i * (if 2 * (M - i) ≤ 2 * k then coeff (2 * k - 2 * (M - i)) (A ^ i) else 0) := by
    intro k i
    rw [mul_assoc, coeff_C_mul, coeff_mul_X_pow']
  have hsmall : ∀ k, k ≤ M → ‖Dp.coeff (M - k)‖ < 1 := by
    intro k
    induction k using Nat.strong_induction_on with
    | _ k ih =>
    intro hk
    have hc := h3 (2 * k) (by omega)

    rw [hG, map_sum] at hc
    simp_rw [hterm k] at hc
    have hmem : M - k ∈ Finset.range (M + 1) := Finset.mem_range.2 (by omega)
    rw [← Finset.add_sum_erase _ _ hmem] at hc
    have hself : Dp.coeff (M - k) * (if 2 * (M - (M - k)) ≤ 2 * k then coeff (2 * k - 2 * (M - (M - k))) (A ^ (M - k)) else 0)
        = Dp.coeff (M - k) := by
      rw [if_pos (by omega), show 2 * k - 2 * (M - (M - k)) = 0 by omega, coeff_zero_eq_constantCoeff_apply,
        map_pow, hA0, one_pow, mul_one]
    rw [hself] at hc
    have hrest : ‖∑ i ∈ (Finset.range (M + 1)).erase (M - k),
        Dp.coeff i * (if 2 * (M - i) ≤ 2 * k then coeff (2 * k - 2 * (M - i)) (A ^ i) else 0)‖ < 1 := by
      apply htform_norm_sum_lt
      intro i hi
      rw [Finset.mem_erase, Finset.mem_range] at hi
      split_ifs with hle
      · have hlt : M - i < k := by omega
        have := ih (M - i) hlt (by omega)
        rw [show M - (M - i) = i by omega] at this
        rw [norm_mul]
        exact mul_lt_one_of_nonneg_of_lt_one_left (norm_nonneg _) this ((htSmallTo_pow hA' i).1 _)
      · simp
    have hd : Dp.coeff (M - k) = (Dp.coeff (M - k) + ∑ i ∈ (Finset.range (M + 1)).erase (M - k),
        Dp.coeff i * (if 2 * (M - i) ≤ 2 * k then coeff (2 * k - 2 * (M - i)) (A ^ i) else 0)) +
        -(∑ i ∈ (Finset.range (M + 1)).erase (M - k),
        Dp.coeff i * (if 2 * (M - i) ≤ 2 * k then coeff (2 * k - 2 * (M - i)) (A ^ i) else 0)) := by ring
    rw [hd]
    exact lt_of_le_of_lt (IsUltrametricDist.norm_add_le_max _ _) (max_lt hc (by rw [norm_neg]; exact hrest))
  have hev : ‖Dp.eval e'‖ < 1 := by
    rw [Polynomial.eval_eq_sum_range' (n := M + 1) (by omega)]
    apply htform_norm_sum_lt
    intro i hi
    rw [Finset.mem_range] at hi
    have := hsmall (M - i) (by omega)
    rw [show M - (M - i) = i by omega] at this
    rw [norm_mul, norm_pow]
    exact mul_lt_one_of_nonneg_of_lt_one_left (norm_nonneg _) this (pow_le_one₀ (norm_nonneg _) he')
  rw [hDe] at hev
  exact lt_irrefl _ hev

end GlobalTheory.Honda
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MultiplicationSeriesUnitCoeffNormLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NormWeierstrassPSubEqOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NormWeierstrassPSubEqOne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.NotRedOfMem\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.WeierstrassCurvePointOfLatticeAddOfGeneric\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.WeierstrassPAddOfNeOfDerivNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SemiChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.Th1.F GlobalTheory.Klein
open scoped ComplexConjugate BigOperators

namespace GlobalTheory.Klein.DiffUnit

variable {p : ℕ} [Fact p.Prime]

end GlobalTheory.Klein.DiffUnit

namespace GlobalTheory.Klein
open DiffUnit

open scoped ComplexConjugate BigOperators in
variable {p : ℕ} [Fact p.Prime] in
private lemma padicComplex_norm_add_le_of_norm_le {x y : ℂ_[p]} {a : ℝ} (hx : ‖x‖ ≤ a) (hy : ‖y‖ ≤ a) :
    ‖x + y‖ ≤ a :=
  (IsUltrametricDist.norm_add_le_max x y).trans (max_le hx hy)

open scoped ComplexConjugate BigOperators in
variable {p : ℕ} [Fact p.Prime] in
private lemma padicComplex_norm_sub_le_of_norm_le {x y : ℂ_[p]} {a : ℝ} (hx : ‖x‖ ≤ a) (hy : ‖y‖ ≤ a) :
    ‖x - y‖ ≤ a := by
  rw [sub_eq_add_neg]
  exact padicComplex_norm_add_le_of_norm_le hx (by rwa [norm_neg])

open scoped ComplexConjugate BigOperators in
variable {p : ℕ} [Fact p.Prime] in
private lemma padicComplex_norm_mul_le_of_norm_le_one {x y : ℂ_[p]} {a : ℝ} (hx : ‖x‖ ≤ 1) (hy : ‖y‖ ≤ a) :
    ‖x * y‖ ≤ a := by
  rw [norm_mul]
  exact (mul_le_of_le_one_left (norm_nonneg _) hx).trans hy

open scoped ComplexConjugate BigOperators in
variable {p : ℕ} [Fact p.Prime] in
private lemma padicComplex_norm_ofNat_le_one (n : ℕ) [n.AtLeastTwo] : ‖(OfNat.ofNat n : ℂ_[p])‖ ≤ 1 := by
  have := IsUltrametricDist.norm_natCast_le_one ℂ_[p] (OfNat.ofNat n)
  rwa [Nat.cast_ofNat] at this

open scoped ComplexConjugate BigOperators in
variable {p : ℕ} [Fact p.Prime] in
private lemma norm_sub_eq_one_of_discriminant_relations (hp2 : ‖(2 : ℂ_[p])‖ = 1)
    {X₁ X₂ S T Y₁ Y₂ b c D : ℂ_[p]} (hX₁ : ‖X₁‖ ≤ 1) (hX₂ : ‖X₂‖ ≤ 1) (hS : ‖S‖ ≤ 1)
    (hT : ‖T‖ ≤ 1) (hb : ‖b‖ ≤ 1) (hc : ‖c‖ ≤ 1) (hD : ‖D‖ = 1) (hne : X₁ - X₂ ≠ 0)
    (hA : (Y₁ - Y₂) ^ 2 = (X₁ - X₂) ^ 2 * (4 * (S + X₁ + X₂) + b))
    (hB : (Y₁ + Y₂) ^ 2 = (X₁ - X₂) ^ 2 * (4 * (T + X₁ + X₂) + b))
    (hsym : (X₁ - X₂) ^ 2 * (S + T - 2 * X₂) =
      (6 * X₂ ^ 2 + b * X₂ + c / 2) * (X₁ - X₂) + Y₂ ^ 2)
    (hdisc : 4 * D = Y₂ ^ 2 * (36 * (12 * X₂ + b) * (6 * X₂ ^ 2 + b * X₂ + c / 2)
        - 108 * Y₂ ^ 2 - (12 * X₂ + b) ^ 3) +
      (6 * X₂ ^ 2 + b * X₂ + c / 2) ^ 2 * ((12 * X₂ + b) ^ 2 - 32 * (6 * X₂ ^ 2 + b * X₂ + c / 2))) :
    ‖X₁ - X₂‖ = 1 := by
  have hc2 : ‖c / 2‖ ≤ 1 := by rw [norm_div, hp2, div_one]; exact hc
  set d := X₁ - X₂ with hd
  set H := 6 * X₂ ^ 2 + b * X₂ + c / 2 with hH
  set K := 12 * X₂ + b with hK
  have h1 : ‖d‖ ≤ 1 := padicComplex_norm_sub_le_of_norm_le hX₁ hX₂
  refine le_antisymm h1 (not_lt.1 fun hlt => ?_)
  have hdpos : 0 < ‖d‖ := norm_pos_iff.2 hne
  have hfour : ∀ {W : ℂ_[p]}, ‖W‖ ≤ 1 → ‖4 * (W + X₁ + X₂) + b‖ ≤ 1 := fun hW =>
    padicComplex_norm_add_le_of_norm_le (padicComplex_norm_mul_le_of_norm_le_one (padicComplex_norm_ofNat_le_one 4)
      (padicComplex_norm_add_le_of_norm_le (padicComplex_norm_add_le_of_norm_le hW hX₁) hX₂)) hb
  have hsq : ∀ {Y W : ℂ_[p]}, Y ^ 2 = d ^ 2 * W → ‖W‖ ≤ 1 → ‖Y‖ ≤ ‖d‖ := fun {Y W} hY hW => by
    have : ‖Y‖ ^ 2 ≤ ‖d‖ ^ 2 := by
      rw [← norm_pow, hY, norm_mul, norm_pow]
      exact mul_le_of_le_one_right (by positivity) hW
    exact (pow_le_pow_iff_left₀ (norm_nonneg _) (norm_nonneg _) two_ne_zero).1 this
  have hm := hsq hA (hfour hS)
  have hp := hsq hB (hfour hT)
  have hY₂ : ‖Y₂‖ ≤ ‖d‖ := by
    have h2 : 2 * Y₂ = (Y₁ + Y₂) - (Y₁ - Y₂) := by ring
    have := padicComplex_norm_sub_le_of_norm_le hp hm
    rwa [← h2, norm_mul, hp2, one_mul] at this
  have hX₂' : ‖2 * X₂‖ ≤ 1 := padicComplex_norm_mul_le_of_norm_le_one (padicComplex_norm_ofNat_le_one 2) hX₂
  have hHd : ‖H‖ ≤ ‖d‖ := by
    have heq : H * d = d ^ 2 * (S + T - 2 * X₂) - Y₂ ^ 2 := by linear_combination -hsym
    have hST : ‖S + T - 2 * X₂‖ ≤ 1 := padicComplex_norm_sub_le_of_norm_le (padicComplex_norm_add_le_of_norm_le hS hT) hX₂'
    have : ‖H‖ * ‖d‖ ≤ ‖d‖ * ‖d‖ := by
      rw [← norm_mul, heq]
      refine padicComplex_norm_sub_le_of_norm_le ?_ ?_
      · rw [norm_mul, norm_pow]
        nlinarith [norm_nonneg (S + T - 2 * X₂), sq_nonneg ‖d‖]
      · rw [norm_pow]
        nlinarith [norm_nonneg Y₂]
    exact le_of_mul_le_mul_right this hdpos
  have hK1 : ‖K‖ ≤ 1 :=
    padicComplex_norm_add_le_of_norm_le (padicComplex_norm_mul_le_of_norm_le_one (padicComplex_norm_ofNat_le_one 12) hX₂) hb
  have hH1 : ‖H‖ ≤ 1 := hHd.trans h1
  have hα : ‖Y₂ ^ 2‖ < 1 := by
    rw [norm_pow]; nlinarith [norm_nonneg Y₂]
  have hH2 : ‖H ^ 2‖ < 1 := by
    rw [norm_pow]; nlinarith [norm_nonneg H]
  have hP : ‖36 * K * H - 108 * Y₂ ^ 2 - K ^ 3‖ ≤ 1 :=
    padicComplex_norm_sub_le_of_norm_le (padicComplex_norm_sub_le_of_norm_le
      (padicComplex_norm_mul_le_of_norm_le_one (padicComplex_norm_mul_le_of_norm_le_one (padicComplex_norm_ofNat_le_one 36) hK1) hH1)
      (padicComplex_norm_mul_le_of_norm_le_one (padicComplex_norm_ofNat_le_one 108) hα.le))
      (by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) hK1)
  have hQ : ‖K ^ 2 - 32 * H‖ ≤ 1 :=
    padicComplex_norm_sub_le_of_norm_le (by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) hK1)
      (padicComplex_norm_mul_le_of_norm_le_one (padicComplex_norm_ofNat_le_one 32) hH1)
  have hlt4 : ‖4 * D‖ < 1 := by
    rw [hdisc]
    refine (IsUltrametricDist.norm_add_le_max _ _).trans_lt (max_lt ?_ ?_)
    · rw [norm_mul]
      exact (mul_le_of_le_one_right (norm_nonneg _) hP).trans_lt hα
    · rw [norm_mul]
      exact (mul_le_of_le_one_right (norm_nonneg _) hQ).trans_lt hH2
  have h4 : ‖4 * D‖ = 1 := by
    rw [norm_mul, hD, show (4 : ℂ_[p]) = 2 * 2 by norm_num, norm_mul, hp2]
    norm_num
  linarith

open scoped ComplexConjugate BigOperators in
variable {p : ℕ} [Fact p.Prime] in
private lemma padicComplex_norm_two_eq_one_of_ne_two (h : p ≠ 2) : ‖(2 : ℂ_[p])‖ = 1 := by
  have h1 : ‖algebraMap ℚ_[p] ℂ_[p] 2‖ = ‖(2 : ℚ_[p])‖ := norm_algebraMap' _ _
  rw [map_ofNat] at h1
  rw [h1]
  have h2 : ‖(2 : ℚ_[p])‖ = ‖((2 : ℤ) : ℤ_[p])‖ := by
    rw [PadicInt.norm_def, PadicInt.coe_intCast]; norm_num
  rw [h2]
  refine le_antisymm (PadicInt.norm_le_one _) (not_lt.1 fun hlt => h ?_)
  rw [PadicInt.norm_int_lt_one_iff_dvd] at hlt
  have : p ∣ 2 := by exact_mod_cast hlt
  exact (Nat.prime_dvd_prime_iff_eq Fact.out Nat.prime_two).1 this


open scoped ComplexConjugate BigOperators in
variable {p : ℕ} [Fact p.Prime] in
theorem _root_.GlobalTheory.Klein.norm_weierstrassP_sub_eq_one (p : ℕ) [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p])
    (L : PeriodPair) (r : ℂ)
    (hG : _root_.GlobalTheory.Klein.Good ι L r) (u v : ℂ) (hu : _root_.GlobalTheory.Klein.Red ι L r u)
    (hv : _root_.GlobalTheory.Klein.Red ι L r v)
    (h₁ : _root_.GlobalTheory.Klein.Red ι L r (u + v))
    (h₂ : _root_.GlobalTheory.Klein.Red ι L r (u - v)) :
    ‖ι (L.weierstrassP u - L.weierstrassP v)‖ = 1 := by
  obtain ⟨hp, h12r, hc, -, hΔ⟩ := hG
  obtain ⟨hu, hXu⟩ := hu
  obtain ⟨hv, hXv⟩ := hv
  obtain ⟨hs, hS⟩ := h₁
  obtain ⟨ht, hT⟩ := h₂
  have hne : L.weierstrassP u ≠ L.weierstrassP v := by
    rw [Ne, _root_.GlobalTheory.weierstrassP_eq_iff L hu hv]
    rintro (h | h)
    exacts [ht h, hs h]
  have hd : L.weierstrassP u - L.weierstrassP v ≠ 0 := sub_ne_zero.2 hne
  have hA := (_root_.GlobalTheory.weierstrassP_add L hu hv hne).1
  have hnv : -v ∉ L.lattice := fun h => hv (by simpa using neg_mem h)
  have hne' : L.weierstrassP u ≠ L.weierstrassP (-v) := by rwa [PeriodPair.weierstrassP_neg]
  have hB := (_root_.GlobalTheory.weierstrassP_add L hu hnv hne').1
  rw [PeriodPair.weierstrassP_neg, PeriodPair.derivWeierstrassP_neg, ← sub_eq_add_neg,
    sub_neg_eq_add] at hB
  have hsym := _root_.GlobalTheory.weierstrassP_add_add_sub L hu hv hne
  have hY := L.derivWeierstrassP_sq v hv
  set x₁ := L.weierstrassP u
  set x₂ := L.weierstrassP v
  set s := L.weierstrassP (u + v)
  set t := L.weierstrassP (u - v)
  set y₁ := L.derivWeierstrassP u
  set y₂ := L.derivWeierstrassP v
  have cA : (y₁ - y₂) ^ 2 = ((x₁ - r) - (x₂ - r)) ^ 2 *
      (4 * ((s - r) + (x₁ - r) + (x₂ - r)) + 12 * r) := by
    rw [hA]; field_simp; ring
  have cB : (y₁ + y₂) ^ 2 = ((x₁ - r) - (x₂ - r)) ^ 2 *
      (4 * ((t - r) + (x₁ - r) + (x₂ - r)) + 12 * r) := by
    rw [hB]; field_simp; ring
  have cS : ((x₁ - r) - (x₂ - r)) ^ 2 * ((s - r) + (t - r) - 2 * (x₂ - r)) =
      (6 * (x₂ - r) ^ 2 + 12 * r * (x₂ - r) + (12 * r ^ 2 - L.g₂) / 2) * ((x₁ - r) - (x₂ - r)) +
        y₂ ^ 2 := by
    have e : s = (6 * x₂ ^ 2 - L.g₂ / 2) / (x₁ - x₂) + y₂ ^ 2 / (x₁ - x₂) ^ 2 - t + 2 * x₂ := by
      linear_combination hsym
    rw [e]; field_simp; ring
  have cD : 4 * (L.g₂ ^ 3 - 27 * L.g₃ ^ 2) =
      y₂ ^ 2 * (36 * (12 * (x₂ - r) + 12 * r) *
          (6 * (x₂ - r) ^ 2 + 12 * r * (x₂ - r) + (12 * r ^ 2 - L.g₂) / 2)
        - 108 * y₂ ^ 2 - (12 * (x₂ - r) + 12 * r) ^ 3) +
      (6 * (x₂ - r) ^ 2 + 12 * r * (x₂ - r) + (12 * r ^ 2 - L.g₂) / 2) ^ 2 *
        ((12 * (x₂ - r) + 12 * r) ^ 2 -
          32 * (6 * (x₂ - r) ^ 2 + 12 * r * (x₂ - r) + (12 * r ^ 2 - L.g₂) / 2)) := by
    rw [hY]; ring
  have key := norm_sub_eq_one_of_discriminant_relations (padicComplex_norm_two_eq_one_of_ne_two hp) hXu hXv hS hT h12r hc
    hΔ (Y₁ := ι y₁) (Y₂ := ι y₂)
    (by rw [← map_sub]; exact (map_ne_zero ι).2 (by rwa [sub_sub_sub_cancel_right]))
    (by simpa only [map_sub, map_mul, map_add (f := _), map_pow, map_ofNat, map_div₀] using congrArg ι cA)
    (by simpa only [map_sub, map_mul, map_add (f := _), map_pow, map_ofNat, map_div₀] using congrArg ι cB)
    (by simpa only [map_sub, map_mul, map_add (f := _), map_pow, map_ofNat, map_div₀] using congrArg ι cS)
    (by simpa only [map_sub, map_mul, map_add (f := _), map_pow, map_ofNat, map_div₀] using congrArg ι cD)
  rwa [← map_sub, sub_sub_sub_cancel_right] at key

end GlobalTheory.Klein
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NormWeierstrassPSubEqOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NormWeierstrassPSubEqOneOfGood =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NormWeierstrassPSubEqOneOfGood", "h": "module\n\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.Analysis.SpecialFunctions.Elliptic.Weierstrass\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NormWeierstrassPSubEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.NotRedOfMem\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.Honda Formalism.L2.Th1.CM

namespace GlobalTheory.Honda

theorem norm_weierstrassP_sub_eq_one_of_good :
    ∀ (L : PeriodPair) (l : ℕ) [Fact l.Prime], 5 ≤ l → ∀ (ι : ℂ ≃+* ℂ_[l]), ‖ι L.g₂‖ ≤ 1 → ‖ι L.g₃‖ ≤ 1 →
      ‖ι L.g₂ ^ 3 - 27 * ι L.g₃ ^ 2‖ = 1 → ∀ u v : ℂ, u ∉ L.lattice → v ∉ L.lattice → u + v ∉ L.lattice →
      u - v ∉ L.lattice → ‖ι (L.weierstrassP u)‖ ≤ 1 → ‖ι (L.weierstrassP v)‖ ≤ 1 →
      ‖ι (L.weierstrassP (u + v))‖ ≤ 1 → ‖ι (L.weierstrassP (u - v))‖ ≤ 1 →
      ‖ι (L.weierstrassP u) - ι (L.weierstrassP v)‖ = 1 := by
  intro L l _ hl ι hg2 hg3 hD u v hu hv huv hmuv hpu hpv hpuv hpmuv
  have hgood : GlobalTheory.Klein.Good ι L 0 := by
    refine ⟨by omega, ?_, ?_, ?_, ?_⟩
    · simp
    · simpa using hg2
    · simpa using hg3
    · rw [map_sub, map_pow, map_mul, map_pow, map_ofNat]; exact hD
  have hred : ∀ z, z ∉ L.lattice → ‖ι (L.weierstrassP z)‖ ≤ 1 → GlobalTheory.Klein.Red ι L 0 z :=
    fun z hz hp => ⟨hz, by simpa using hp⟩
  have h := GlobalTheory.Klein.norm_weierstrassP_sub_eq_one l ι L 0 hgood u v (hred u hu hpu) (hred v hv hpv)
    (hred _ huv hpuv) (hred _ hmuv hpmuv)
  simpa [map_sub] using h

end GlobalTheory.Honda
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NormWeierstrassPSubEqOneOfGood =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ReductionSetSubgroup =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ReductionSetSubgroup", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.NotRedOfMem\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.WeierstrassCurvePointOfLatticeAddOfGeneric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SemiChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.Th1.F GlobalTheory.Klein
open scoped ComplexConjugate BigOperators

namespace GlobalTheory.Klein

private theorem ultra_add_le {K : Type*} [NormedField K] [IsUltrametricDist K] {x y : K} {C : ℝ}
    (hx : ‖x‖ ≤ C) (hy : ‖y‖ ≤ C) : ‖x + y‖ ≤ C :=
  (IsUltrametricDist.norm_add_le_max x y).trans (max_le hx hy)

private theorem mul_le_of {K : Type*} [NormedField K] {x y : K} {C D : ℝ}
    (hx : ‖x‖ ≤ C) (hy : ‖y‖ ≤ D) : ‖x * y‖ ≤ C * D := by
  rw [norm_mul]
  exact mul_le_mul hx hy (norm_nonneg _) ((norm_nonneg _).trans hx)

private theorem cubic_le {K : Type*} [NormedField K] [IsUltrametricDist K] {x k₂ k₁ k₀ : K} {ρ : ℝ}
    (h2 : ‖(2 : K)‖ = 1) (hρ : 1 ≤ ρ) (hx : ‖x‖ ≤ ρ) (hk₂ : ‖k₂‖ ≤ 1) (hk₁ : ‖k₁‖ ≤ 1) (hk₀ : ‖k₀‖ ≤ 1) :
    ‖2 * 2 * (x * x * x) + k₂ * (x * x) + k₁ * x + k₀‖ ≤ ρ * ρ * ρ := by
  have h1 : 1 ≤ ρ * ρ := by nlinarith
  refine ultra_add_le (ultra_add_le (ultra_add_le ?_ ?_) ?_) ?_
  · simpa using mul_le_of (mul_le_of h2.le h2.le) (mul_le_of (mul_le_of hx hx) hx)
  · exact (mul_le_of hk₂ (mul_le_of hx hx)).trans (by nlinarith)
  · exact (mul_le_of hk₁ hx).trans (by nlinarith)
  · exact hk₀.trans (by nlinarith)

private theorem le_of_mul_self_le_mul_self' {x y : ℝ} (h : x * x ≤ y * y) (hy : 0 ≤ y) : x ≤ y :=
  (abs_le_of_sq_le_sq' (by simpa only [sq] using h) hy).2

theorem chord_norm_le_one {K : Type*} [NormedField K] [IsUltrametricDist K] {a b A B X k₂ k₁ k₀ : K}
    (h2 : ‖(2 : K)‖ = 1) (ha : 1 < ‖a‖) (hb : ‖b‖ ≤ 1) (hk₂ : ‖k₂‖ ≤ 1) (hk₁ : ‖k₁‖ ≤ 1) (hk₀ : ‖k₀‖ ≤ 1)
    (hA : A ^ 2 = 4 * a ^ 3 + k₂ * a ^ 2 + k₁ * a + k₀)
    (hB : B ^ 2 = 4 * b ^ 3 + k₂ * b ^ 2 + k₁ * b + k₀)
    (hX : 4 * (a - b) ^ 2 * X = (A - B) ^ 2 - (4 * (a + b) + k₂) * (a - b) ^ 2) : ‖X‖ ≤ 1 := by
  set ρ := ‖a‖ with hρ
  have haa : ‖a‖ ≤ ρ := le_rfl
  have hab : ‖a - b‖ = ρ := by
    rw [sub_eq_add_neg, IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm (by rw [norm_neg]; linarith),
      norm_neg, max_eq_left (by linarith)]
  have hA' : ‖A‖ * ‖A‖ ≤ ρ * ρ * ρ := by
    rw [← norm_mul, show A * A = 2 * 2 * (a * a * a) + k₂ * (a * a) + k₁ * a + k₀ by
      linear_combination hA]
    exact cubic_le h2 ha.le haa hk₂ hk₁ hk₀
  have hB' : ‖B‖ * ‖B‖ ≤ 1 * 1 * 1 := by
    rw [← norm_mul, show B * B = 2 * 2 * (b * b * b) + k₂ * (b * b) + k₁ * b + k₀ by
      linear_combination hB]
    exact cubic_le h2 le_rfl hb hk₂ hk₁ hk₀
  have h1 : 1 ≤ ρ * ρ := by nlinarith
  have hρρ : ρ ≤ ρ * ρ := by nlinarith
  have hA1 : ‖A‖ ≤ ρ * ρ := by
    exact le_of_mul_self_le_mul_self' (hA'.trans (by nlinarith)) (by linarith)
  have hB1 : ‖B‖ ≤ 1 := by
    exact le_of_mul_self_le_mul_self' (hB'.trans (by norm_num)) (by linarith)
  have hN : 2 * 2 * ((a - b) * (a - b)) * X =
      2 * 2 * b * (a * (a + b)) + 2 * k₂ * b * a + k₁ * (a + b) + 2 * k₀ + 2 * B * (-A) := by
    linear_combination hX + hA + hB
  have hs : ‖a + b‖ ≤ ρ := ultra_add_le haa (by linarith)
  have hn : ‖2 * 2 * b * (a * (a + b)) + 2 * k₂ * b * a + k₁ * (a + b) + 2 * k₀ + 2 * B * (-A)‖
      ≤ ρ * ρ := by
    refine ultra_add_le (ultra_add_le (ultra_add_le (ultra_add_le ?_ ?_) ?_) ?_) ?_
    · simpa using mul_le_of (mul_le_of (mul_le_of h2.le h2.le) hb) (mul_le_of haa hs)
    · exact (mul_le_of (mul_le_of (mul_le_of h2.le hk₂) hb) haa).trans (by linarith)
    · exact (mul_le_of hk₁ hs).trans (by linarith)
    · exact (mul_le_of h2.le hk₀).trans (by linarith)
    · exact (mul_le_of (mul_le_of h2.le hB1) ((norm_neg A).le.trans hA1)).trans (by linarith)
  rw [← hN, norm_mul, norm_mul, norm_mul, norm_mul, h2, hab] at hn
  by_contra hc
  push_neg at hc
  nlinarith

theorem norm_two_of_ne {p : ℕ} [Fact p.Prime] (hp : p ≠ 2) : ‖(2 : ℂ_[p])‖ = 1 := by
  apply _root_.GlobalTheory.Klein.padicComplex_norm_two_eq_one_of_ne_two <;> assumption

variable {p : ℕ} [Fact p.Prime]

theorem Red.neg {ι : ℂ ≃+* ℂ_[p]} {L : PeriodPair} {r z : ℂ} (h : Red ι L r z) : Red ι L r (-z) :=
  ⟨fun h' => h.1 (by simpa using h'), by rw [L.weierstrassP_neg]; exact h.2⟩

theorem Red.add_lattice {ι : ℂ ≃+* ℂ_[p]} {L : PeriodPair} {r z ω : ℂ} (h : Red ι L r z)
    (hω : ω ∈ L.lattice) : Red ι L r (z + ω) :=
  ⟨fun h' => h.1 ((L.lattice.add_mem_iff_left hω).1 h'), by
    have e : L.weierstrassP (z + ω) = L.weierstrassP z := L.weierstrassP_add_coe z ⟨ω, hω⟩
    rw [e]; exact h.2⟩

theorem Red.add_of_not {ι : ℂ ≃+* ℂ_[p]} {L : PeriodPair} {r u w : ℂ} (hg : Good ι L r)
    (hu : ¬ Red ι L r u) (hw : Red ι L r w) : Red ι L r (u + w) := by
  by_cases hL : u ∈ L.lattice
  · rw [add_comm]; exact hw.add_lattice hL
  have ha : 1 < ‖ι (L.weierstrassP u - r)‖ := not_le.1 fun h => hu ⟨hL, h⟩
  have hne : L.weierstrassP u ≠ L.weierstrassP w := fun h => by
    rw [h] at ha; exact absurd hw.2 (not_le.2 ha)
  refine ⟨fun h => hu ?_, ?_⟩
  · have := hw.neg.add_lattice h
    rwa [show -w + (u + w) = u by ring] at this
  obtain ⟨hp, hk₂, hk₁, hk₀, -⟩ := hg
  have hs := (GlobalTheory.weierstrassP_add L hL hw.1 hne).1
  have e1 := L.derivWeierstrassP_sq u hL
  have e2 := L.derivWeierstrassP_sq w hw.1
  have hd := sub_ne_zero.2 hne
  have key : ∀ x y : ℂ, y ^ 2 = 4 * x ^ 3 - L.g₂ * x - L.g₃ →
      ι y ^ 2 = 4 * ι (x - r) ^ 3 + ι (12 * r) * ι (x - r) ^ 2 + ι (12 * r ^ 2 - L.g₂) * ι (x - r)
        + ι (4 * r ^ 3 - L.g₂ * r - L.g₃) := fun x y h => by
    have : y ^ 2 = 4 * (x - r) ^ 3 + (12 * r) * (x - r) ^ 2 + (12 * r ^ 2 - L.g₂) * (x - r)
        + (4 * r ^ 3 - L.g₂ * r - L.g₃) := by linear_combination h
    rw [← map_pow, this, map_add (f := _), map_add (f := _), map_add (f := _), map_mul ι 4, map_mul ι (12 * r),
      map_mul ι _ (x - r), map_pow, map_pow, map_ofNat]
  refine chord_norm_le_one (norm_two_of_ne hp) ha hw.2 hk₂ hk₁ hk₀ (key _ _ e1) (key _ _ e2) ?_
  have : 4 * ((L.weierstrassP u - r) - (L.weierstrassP w - r)) ^ 2 * (L.weierstrassP (u + w) - r)
      = (L.derivWeierstrassP u - L.derivWeierstrassP w) ^ 2
        - (4 * ((L.weierstrassP u - r) + (L.weierstrassP w - r)) + 12 * r)
          * ((L.weierstrassP u - r) - (L.weierstrassP w - r)) ^ 2 := by
    rw [hs]; field_simp; ring
  have := congrArg ι this
  simpa only [map_mul, map_sub, map_add (f := _), map_pow, map_ofNat] using this

theorem not_red_addSubgroup : ∀ (p : ℕ) [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) (L : PeriodPair) (r : ℂ), Good ι L r → (∀ z, Red ι L r z → Red ι L r (-z)) ∧ (∀ z, Red ι L r z → ∀ ω ∈ L.lattice, Red ι L r (z + ω)) ∧ (∀ u w, ¬ Red ι L r u → Red ι L r w → Red ι L r (u + w)) ∧ ∃ G : AddSubgroup ℂ, (∀ z, z ∈ G ↔ ¬ Red ι L r z) ∧ ∀ ω ∈ L.lattice, ω ∈ G := by
  intro p _ ι L r hg
  refine ⟨fun z h => h.neg, fun z h ω hω => h.add_lattice hω, fun u w hu hw => Red.add_of_not hg hu hw, ?_⟩
  have hneg : ∀ {z : ℂ}, ¬ Red ι L r z → ¬ Red ι L r (-z) := fun hz h => hz (by simpa using h.neg)
  refine ⟨{ carrier := {z | ¬ Red ι L r z}
            add_mem' := fun {u v} hu hv h => hu ?_
            zero_mem' := not_red_of_mem ι L r L.lattice.zero_mem
            neg_mem' := hneg }, fun z => Iff.rfl, fun ω hω => not_red_of_mem ι L r hω⟩
  have := Red.add_of_not hg (hneg hv) h
  rwa [show -v + (u + v) = u by ring] at this

end GlobalTheory.Klein
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ReductionSetSubgroup =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeierstrassPIntegralOfMulIntegralGoodReduction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeierstrassPIntegralOfMulIntegralGoodReduction", "h": "module\n\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.Analysis.SpecialFunctions.Elliptic.Weierstrass\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ReductionSetSubgroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.NotRedOfMem\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.Honda Formalism.L2.Th1.CM

namespace GlobalTheory.Honda

theorem integral_of_mul_integral : ∀ (L : PeriodPair) (l : ℕ) [Fact l.Prime], 5 ≤ l → ∀ (ι : ℂ ≃+* ℂ_[l]), ‖ι L.g₂‖ ≤ 1 → ‖ι L.g₃‖ ≤ 1 → ‖ι L.g₂ ^ 3 - 27 * ι L.g₃ ^ 2‖ = 1 → ∀ (z : ℂ) (N : ℕ), (N : ℂ) * z ∉ L.lattice → ‖ι (L.weierstrassP (N * z))‖ ≤ 1 → ‖ι (L.weierstrassP z)‖ ≤ 1 := by
  intro L l _ hl ι h2 h3 hd z N hN hP
  have hg : GlobalTheory.Klein.Good ι L 0 := by
    refine ⟨by omega, by simp, ?_, ?_, ?_⟩
    · simpa using h2
    · simpa using h3
    · simpa [map_sub, map_mul, map_pow, map_ofNat] using hd
  obtain ⟨-, -, -, G, hG, -⟩ := GlobalTheory.Klein.not_red_addSubgroup l ι L 0 hg
  by_contra hc
  have hz : z ∈ G := by
    rw [hG]; intro h; exact hc (by simpa using h.2)
  have hNz : (N : ℂ) * z ∈ G := by
    have := G.nsmul_mem hz N
    simpa [nsmul_eq_mul] using this
  rw [hG] at hNz
  exact hNz ⟨hN, by simpa using hP⟩

end GlobalTheory.Honda
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeierstrassPIntegralOfMulIntegralGoodReduction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeierstrassPOddMulSubTwoTorsionProduct =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeierstrassPOddMulSubTwoTorsionProduct", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.TranslateProduct\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EllipticOnePole\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.MulStableIntegral\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.QuasiPeriodConstUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.Honda Formalism.L2.Th1.CM

noncomputable section

namespace GlobalTheory.OddHalfProduct

open Formalism.L2.Th1.F

def qf (L : PeriodPair) (y ω : ℂ) : ℂ :=
  semiChar L ω * Complex.exp ((Real.pi : ℂ) * herm L y ω + (Real.pi : ℂ) * herm L ω ω / 2)

lemma sg_quasi (L : PeriodPair) {ω : ℂ} (hω : ω ∈ L.lattice) (y : ℂ) :
    sgStar L (y + ω) = qf L y ω * sgStar L y := by
  rw [sgStarQuasi L ω y hω]; rfl

lemma qf_ne (L : PeriodPair) (y ω : ℂ) : qf L y ω ≠ 0 := by
  unfold qf semiChar
  refine mul_ne_zero ?_ (Complex.exp_ne_zero _)
  split_ifs <;> norm_num

lemma qf_shift (L : PeriodPair) (y z ω : ℂ) :
    qf L (y + z) ω = qf L y ω * Complex.exp ((Real.pi : ℂ) * herm L z ω) := by
  unfold qf
  have : (Real.pi : ℂ) * herm L (y + z) ω + (Real.pi : ℂ) * herm L ω ω / 2
      = ((Real.pi : ℂ) * herm L y ω + (Real.pi : ℂ) * herm L ω ω / 2) + (Real.pi : ℂ) * herm L z ω := by
    unfold herm; ring
  rw [this, Complex.exp_add]; ring

lemma sg_ne (L : PeriodPair) {z : ℂ} (hz : z ∉ L.lattice) : sgStar L z ≠ 0 :=
  fun h => hz (((sgStarBasic L).2.2.1 z).1 h)

lemma sg_zero (L : PeriodPair) {z : ℂ} (hz : z ∈ L.lattice) : sgStar L z = 0 :=
  ((sgStarBasic L).2.2.1 z).2 hz

lemma sg_neg (L : PeriodPair) (z : ℂ) : sgStar L (-z) = -sgStar L z := (sgStarBasic L).2.1 z

lemma iso_prod (L : PeriodPair) (n : ℕ) (S : Finset ℂ) (hn : (n : ℂ) ≠ 0) (hst : MulStable L n)
    (hS : IsKerReps L n S) (hev : Even S.card) (w : ℂ) :
    (∏ P ∈ S, sgStar L P ^ 2) * sgStar L (n * w) ^ 2
      = (n : ℂ) ^ 2 * (sgStar L w ^ 2 * ∏ P ∈ S, (sgStar L (w + P) * sgStar L (w - P))) := by
  by_cases hw : w ∈ L.lattice
  · rw [sg_zero L (hst w hw), sg_zero L hw]; ring
  · have hI := isogenySigma L n S hn hst hS w hw
    have h2 : ∏ P ∈ S, (sgStar L (w + P) * sgStar L (w - P))
        = ∏ P ∈ S, ((-1) * (sgStar L w ^ 2 * sgStar L P ^ 2 * (L.weierstrassP w - L.weierstrassP P))) :=
      Finset.prod_congr rfl (fun P hP => by rw [sgStarAdd L w P hw (hS.1 P hP).2]; ring)
    rw [h2]
    simp only [Finset.prod_mul_distrib, Finset.prod_const, hev.neg_one_pow]
    rw [hI]; ring

lemma sigma_id (L : PeriodPair) (n m : ℕ) (hnC : (n : ℂ) = 2 * m + 1) (S : Finset ℂ) (t : ℂ)
    (hn : (n : ℂ) ≠ 0) (hst : MulStable L n) (hS : IsKerReps L n S) (hev : Even S.card)
    (hcard : (S.card : ℂ) + 1 = (n : ℂ) ^ 2)
    (ht : t ∉ L.lattice) (h2t : 2 * t ∈ L.lattice) (z : ℂ) :
    (∏ P ∈ S, sgStar L (t + P) ^ 2) * (sgStar L (n * z + t) * sgStar L (n * z - t))
      = sgStar L (z + t) * sgStar L (z - t)
        * ∏ P ∈ S, (sgStar L (z + t + P) * sgStar L (z - t - P)) := by
  have h2mt : (m : ℂ) * (2 * t) ∈ L.lattice := by rw [← nsmul_eq_mul]; exact nsmul_mem h2t m
  let Φ₁ : ℂ → ℂ := fun z => qf L (z - t) (2 * t) * ∏ P ∈ S, qf L (z - t - P) (2 * t)
  let Φ₂ : ℂ → ℂ := fun z => qf L (n * z + t) (m * (2 * t)) ^ 2 * qf L (n * z - t) (2 * t)
  let G : ℂ → ℂ := fun z => sgStar L (z + t) * sgStar L (z - t)
    * ∏ P ∈ S, (sgStar L (z + t + P) * sgStar L (z - t - P))
  let F : ℂ → ℂ := fun z => sgStar L (n * z + t) * sgStar L (n * z - t)
  let D : ℂ := ∏ P ∈ S, sgStar L (t + P) ^ 2
  let C : ℂ := ∏ P ∈ S, sgStar L P ^ 2
  have hG : ∀ z, sgStar L (z + t) ^ 2 * ∏ P ∈ S, (sgStar L (z + t + P) * sgStar L (z + t - P))
      = Φ₁ z * G z := by
    intro z
    have e1 : sgStar L (z + t) = qf L (z - t) (2 * t) * sgStar L (z - t) := by
      rw [← sg_quasi L h2t]; congr 1; ring
    have e2 : ∀ P, sgStar L (z + t + P) * sgStar L (z + t - P)
        = qf L (z - t - P) (2 * t) * (sgStar L (z + t + P) * sgStar L (z - t - P)) := by
      intro P; rw [show z + t - P = (z - t - P) + 2 * t by ring, sg_quasi L h2t]; ring
    rw [Finset.prod_congr rfl (fun P _ => e2 P), Finset.prod_mul_distrib]
    show _ = (qf L (z - t) (2 * t) * ∏ P ∈ S, qf L (z - t - P) (2 * t))
      * (sgStar L (z + t) * sgStar L (z - t) * ∏ P ∈ S, (sgStar L (z + t + P) * sgStar L (z - t - P)))
    linear_combination (sgStar L (z + t) * (∏ P ∈ S, qf L (z - t - P) (2 * t))
      * ∏ P ∈ S, (sgStar L (z + t + P) * sgStar L (z - t - P))) * e1
  have hF : ∀ z, sgStar L (n * (z + t)) ^ 2 = Φ₂ z * F z := by
    intro z
    have e1 : sgStar L (n * (z + t)) = qf L (n * z + t) (m * (2 * t)) * sgStar L (n * z + t) := by
      rw [← sg_quasi L h2mt]; congr 1; rw [hnC]; ring
    have e2 : sgStar L (n * z + t) = qf L (n * z - t) (2 * t) * sgStar L (n * z - t) := by
      rw [← sg_quasi L h2t]; congr 1; ring
    rw [e1]
    show _ = (qf L (n * z + t) (m * (2 * t)) ^ 2 * qf L (n * z - t) (2 * t))
      * (sgStar L (n * z + t) * sgStar L (n * z - t))
    linear_combination (qf L (n * z + t) (m * (2 * t)) ^ 2 * sgStar L (n * z + t)) * e2
  have hΦ : ∀ z, Φ₁ z * Φ₂ 0 = Φ₁ 0 * Φ₂ z := by
    intro z
    have a0 : qf L (z - t) (2 * t) = qf L (0 - t) (2 * t) * Complex.exp ((Real.pi : ℂ) * herm L z (2 * t)) := by
      rw [show z - t = (0 - t) + z by ring, qf_shift]
    have a1 : ∀ P, qf L (z - t - P) (2 * t)
        = qf L (0 - t - P) (2 * t) * Complex.exp ((Real.pi : ℂ) * herm L z (2 * t)) := by
      intro P; rw [show z - t - P = (0 - t - P) + z by ring, qf_shift]
    have b0 : qf L (n * z + t) (m * (2 * t))
        = qf L (n * 0 + t) (m * (2 * t)) * Complex.exp ((Real.pi : ℂ) * herm L (n * z) (m * (2 * t))) := by
      rw [show (n : ℂ) * z + t = (n * 0 + t) + n * z by ring, qf_shift]
    have b1 : qf L (n * z - t) (2 * t)
        = qf L (n * 0 - t) (2 * t) * Complex.exp ((Real.pi : ℂ) * herm L (n * z) (2 * t)) := by
      rw [show (n : ℂ) * z - t = (n * 0 - t) + n * z by ring, qf_shift]
    have hE : Complex.exp ((Real.pi : ℂ) * herm L z (2 * t)) ^ (S.card + 1)
        = Complex.exp ((Real.pi : ℂ) * herm L (n * z) (m * (2 * t))) ^ 2
          * Complex.exp ((Real.pi : ℂ) * herm L (n * z) (2 * t)) := by
      rw [← Complex.exp_nat_mul, ← Complex.exp_nat_mul, ← Complex.exp_add]
      congr 1
      push_cast
      rw [hcard, hnC]
      simp only [herm, map_mul, map_natCast, map_ofNat]
      ring
    show (qf L (z - t) (2 * t) * ∏ P ∈ S, qf L (z - t - P) (2 * t)) * Φ₂ 0
      = Φ₁ 0 * (qf L (n * z + t) (m * (2 * t)) ^ 2 * qf L (n * z - t) (2 * t))
    rw [a0, Finset.prod_congr rfl (fun P _ => a1 P), Finset.prod_mul_distrib, Finset.prod_const, b0, b1]
    show _ = (qf L (0 - t) (2 * t) * ∏ P ∈ S, qf L (0 - t - P) (2 * t))
      * ((qf L (n * 0 + t) (m * (2 * t)) * _) ^ 2 * (qf L (n * 0 - t) (2 * t) * _))
    rw [show ∀ a b c d e : ℂ, a * e * (b * e ^ S.card) * (c ^ 2 * d) = a * b * (c ^ 2 * d) * e ^ (S.card + 1)
      from fun a b c d e => by ring, hE]
    ring
  have star : ∀ z, (n : ℂ) ^ 2 * Φ₁ z * G z = C * Φ₂ z * F z := by
    intro z
    have h1 := iso_prod L n S hn hst hS hev (z + t)
    have h2 := hG z
    have h3 := hF z
    linear_combination (-1 : ℂ) * h1 - (n : ℂ) ^ 2 * h2 + C * h3
  have k1 : ∀ z, (n : ℂ) ^ 2 * Φ₁ 0 * G z = C * Φ₂ 0 * F z := by
    intro z
    have hne : Φ₂ z ≠ 0 := mul_ne_zero (pow_ne_zero 2 (qf_ne _ _ _)) (qf_ne _ _ _)
    apply mul_right_cancel₀ hne
    linear_combination Φ₂ 0 * star z - (n : ℂ) ^ 2 * G z * hΦ z
  have hF0 : F 0 = -sgStar L t ^ 2 := by
    show sgStar L (n * 0 + t) * sgStar L (n * 0 - t) = _
    rw [mul_zero, zero_add, zero_sub, sg_neg]; ring
  have hF0ne : F 0 ≠ 0 := by rw [hF0]; exact neg_ne_zero.mpr (pow_ne_zero 2 (sg_ne L ht))
  have hG0 : G 0 = D * F 0 := by
    have e : ∀ P, sgStar L (0 + t + P) * sgStar L (0 - t - P) = (-1) * sgStar L (t + P) ^ 2 := by
      intro P; rw [zero_add, show (0 : ℂ) - t - P = -(t + P) by ring, sg_neg]; ring
    rw [hF0]
    show sgStar L (0 + t) * sgStar L (0 - t) * ∏ P ∈ S, (sgStar L (0 + t + P) * sgStar L (0 - t - P)) = _
    rw [Finset.prod_congr rfl (fun P _ => e P), Finset.prod_mul_distrib, Finset.prod_const,
      hev.neg_one_pow, zero_add, zero_sub, sg_neg]
    ring
  have hC : C * Φ₂ 0 = (n : ℂ) ^ 2 * Φ₁ 0 * D := by
    apply mul_right_cancel₀ hF0ne
    have := k1 0
    rw [hG0] at this
    linear_combination -this
  have hne : (n : ℂ) ^ 2 * Φ₁ 0 ≠ 0 :=
    mul_ne_zero (pow_ne_zero 2 hn)
      (mul_ne_zero (qf_ne _ _ _) (Finset.prod_ne_zero_iff.mpr (fun P _ => qf_ne _ _ _)))
  show D * F z = G z
  apply mul_left_cancel₀ hne
  linear_combination -(k1 z) - F z * hC

theorem wp_odd_mul_sub_half_prod : ∀ (L : PeriodPair) (n : ℕ) (S : Finset ℂ) (t : ℂ), Odd n →
    Formalism.L2.Th1.F.IsKerReps L (n : ℂ) S → t ∉ L.lattice → 2 * t ∈ L.lattice → ∀ z, (n : ℂ) * z ∉ L.lattice →
    (n : ℂ) ^ 2 * (L.weierstrassP (n * z) - L.weierstrassP t) * ∏ P ∈ S, (L.weierstrassP z - L.weierstrassP P)
      = (L.weierstrassP z - L.weierstrassP t) * ∏ P ∈ S, (L.weierstrassP z - L.weierstrassP (t + P)) := by
  intro L n S t hodd hS ht h2t z hnz
  obtain ⟨m, hm⟩ := hodd
  have hnC : (n : ℂ) = 2 * m + 1 := by rw [hm]; push_cast; ring
  have hn : (n : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr (by omega)
  have hst : MulStable L n := fun ω hω => by rw [← nsmul_eq_mul]; exact nsmul_mem hω n
  have hcardR := kerRepsCard L n S hn hst hS
  have hcardN : S.card + 1 = n ^ 2 := by
    have : Complex.normSq (n : ℂ) = (n : ℝ) ^ 2 := by rw [Complex.normSq_apply]; simp; ring
    rw [this] at hcardR; exact_mod_cast hcardR
  have hcard : (S.card : ℂ) + 1 = (n : ℂ) ^ 2 := by exact_mod_cast hcardN
  have hS4 : S.card = 4 * (m * m + m) :=
    Nat.add_right_cancel (by rw [hcardN, hm]; ring : S.card + 1 = 4 * (m * m + m) + 1)
  have hev : Even S.card := ⟨2 * (m * m + m), by rw [hS4]; ring⟩
  have hzL : z ∉ L.lattice := fun h => hnz (by rw [← nsmul_eq_mul]; exact nsmul_mem h n)
  have htP : ∀ P ∈ S, t + P ∉ L.lattice := by
    intro P hP h
    have hnP := (hS.1 P hP).1
    have h2P : 2 * P ∈ L.lattice := by
      have := sub_mem (nsmul_mem h 2) h2t
      convert this using 1; rw [nsmul_eq_mul]; push_cast; ring
    have hPL : P ∈ L.lattice := by
      have := sub_mem hnP (nsmul_mem h2P m)
      convert this using 1; rw [nsmul_eq_mul, hnC]; ring
    exact (hS.1 P hP).2 hPL
  have hsig := sigma_id L n m hnC S t hn hst hS hev hcard ht h2t z
  have hD : ∏ P ∈ S, sgStar L (t + P) ^ 2 ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr (fun P hP => pow_ne_zero 2 (sg_ne L (htP P hP)))
  have hM : sgStar L z ^ (2 * (S.card + 1)) * sgStar L t ^ 2 * ∏ P ∈ S, sgStar L (t + P) ^ 2 ≠ 0 :=
    mul_ne_zero (mul_ne_zero (pow_ne_zero _ (sg_ne L hzL)) (pow_ne_zero 2 (sg_ne L ht))) hD
  apply mul_right_cancel₀ hM
  have hI := isogenySigma L n S hn hst hS z hzL
  have hadd1 := sgStarAdd L (n * z) t hnz ht
  have hadd2 := sgStarAdd L z t hzL ht
  have hprod : ∏ P ∈ S, (sgStar L (z + t + P) * sgStar L (z - t - P))
      = (sgStar L z ^ 2) ^ S.card * (∏ P ∈ S, sgStar L (t + P) ^ 2)
        * ∏ P ∈ S, (L.weierstrassP z - L.weierstrassP (t + P)) := by
    have e : ∀ P ∈ S, sgStar L (z + t + P) * sgStar L (z - t - P)
        = (-1) * (sgStar L z ^ 2 * sgStar L (t + P) ^ 2 * (L.weierstrassP z - L.weierstrassP (t + P))) := by
      intro P hP
      rw [show z + t + P = z + (t + P) by ring, show z - t - P = z - (t + P) by ring,
        sgStarAdd L z (t + P) hzL (htP P hP)]
      ring
    rw [Finset.prod_congr rfl e]
    simp only [Finset.prod_mul_distrib, Finset.prod_const, hev.neg_one_pow]
    ring
  linear_combination (-((L.weierstrassP (n * z) - L.weierstrassP t) * sgStar L t ^ 2
      * ∏ P ∈ S, sgStar L (t + P) ^ 2)) * hI
    + (∏ P ∈ S, sgStar L (t + P) ^ 2) * hadd1 - hsig
    - (∏ P ∈ S, (sgStar L (z + t + P) * sgStar L (z - t - P))) * hadd2
    + (sgStar L z ^ 2 * sgStar L t ^ 2 * (L.weierstrassP z - L.weierstrassP t)) * hprod

end GlobalTheory.OddHalfProduct
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeierstrassPOddMulSubTwoTorsionProduct =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FormalGroupHeightLeTwoGoodReduction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FormalGroupHeightLeTwoGoodReduction", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.EndoZInstance\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementK\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MultiplicationSeriesUnitCoeffNormLe\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NormWeierstrassPSubEqOneOfGood\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.Analysis.SpecialFunctions.Elliptic.Weierstrass\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeierstrassPIntegralOfMulIntegralGoodReduction\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.TranslateProduct\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeierstrassPOddMulSubTwoTorsionProduct\npublic import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.Taylor\npublic import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.CurveIntegerMultiplicationSeries\npublic import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.AnalyticTransOfAdd\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.MulStableIntegral\nimport Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.USideB\nimport Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.AnaSys\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.CubeThreeR\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FglInvariant\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.IntegerEndomorphismInstance\nimport Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.CmIntegralityOfTorsionPoints\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.Honda Formalism.L2.Th1.CM

noncomputable section

namespace GlobalTheory.HeightTwo

open Formalism.L2.Th1.F Formalism.L2.Th1.F.Taylor Formalism.L2.Th1.C Formalism.L2.Th1.C.USideB Formalism.L2.Th1.C.WeierstrassCurveSeries

def shiftFn (L : PeriodPair) (c z : ℂ) : ℂ := 1 + z * z * (L.weierstrassPExcept 0 z + -c)

theorem analyticAt_shiftFn (L : PeriodPair) (c : ℂ) : AnalyticAt ℂ (shiftFn L c) 0 := by
  have h := L.analyticAt_weierstrassPExcept 0
  unfold shiftFn
  fun_prop

theorem taylor0_shiftFn (L : PeriodPair) (c : ℂ) : taylor0 (shiftFn L c) = wpShift (pSeries L) c := by
  have h := L.analyticAt_weierstrassPExcept 0
  unfold shiftFn
  rw [taylor0_add (by fun_prop) (by fun_prop), taylor0_mul (by fun_prop) (by fun_prop),
    taylor0_mul (by fun_prop) (by fun_prop), taylor0_add h (by fun_prop), taylor0_const, taylor0_const, taylor0_id]
  unfold wpShift pSeries
  simp only [map_one, map_neg]
  ring

theorem shiftFn_eq (L : PeriodPair) (c z : ℂ) (hz : z ≠ 0) :
    shiftFn L c z = z ^ 2 * (L.weierstrassP z - c) := by
  have h := L.weierstrassPExcept_add 0 z
  simp only [ZeroMemClass.coe_zero, sub_zero] at h
  unfold shiftFn
  rw [← h]
  field_simp
  ring

theorem taylor0_prod_shiftFn (L : PeriodPair) (S : Finset ℂ) (a : ℂ → ℂ) :
    AnalyticAt ℂ (fun z => ∏ P ∈ S, shiftFn L (a P) z) 0 ∧
      taylor0 (fun z => ∏ P ∈ S, shiftFn L (a P) z) = ∏ P ∈ S, wpShift (pSeries L) (a P) := by
  classical
  induction S using Finset.induction_on with
  | empty => simp only [Finset.prod_empty]; exact ⟨analyticAt_const, by rw [taylor0_const, map_one]⟩
  | insert P S hP ih =>
    simp only [Finset.prod_insert hP]
    exact ⟨(analyticAt_shiftFn L _).mul ih.1,
      by rw [taylor0_mul (analyticAt_shiftFn L _) ih.1, ih.2, taylor0_shiftFn]⟩

theorem weierstrassP_nat_mul_product_series_identity (L : PeriodPair) (n e : ℂ) (hn : n ≠ 0) (S : Finset ℂ) (a b : ℂ → ℂ)
    (h : ∀ z, n * z ∉ L.lattice →
      n ^ 2 * (L.weierstrassP (n * z) - e) * ∏ P ∈ S, (L.weierstrassP z - a P) =
        (L.weierstrassP z - e) * ∏ P ∈ S, (L.weierstrassP z - b P)) :
    rescale n (wpShift (pSeries L) e) * ∏ P ∈ S, wpShift (pSeries L) (a P) =
      wpShift (pSeries L) e * ∏ P ∈ S, wpShift (pSeries L) (b P) := by
  have hc : Filter.Tendsto (fun z : ℂ => n * z) (nhds 0) (nhds 0) := by
    have : Continuous fun z : ℂ => n * z := by fun_prop
    simpa using this.tendsto 0
  have ha : AnalyticAt ℂ (fun z => shiftFn L e (n * z)) 0 :=
    AnalyticAt.comp_of_eq (g := shiftFn L e) (f := fun z : ℂ => n * z) (analyticAt_shiftFn L e) (by fun_prop) (by simp)
  rw [← (taylor0_prod_shiftFn L S a).2, ← (taylor0_prod_shiftFn L S b).2, ← taylor0_shiftFn,
    ← taylor0_rescale n (analyticAt_shiftFn L e), ← taylor0_mul ha (taylor0_prod_shiftFn L S a).1,
    ← taylor0_mul (analyticAt_shiftFn L e) (taylor0_prod_shiftFn L S b).1]
  apply taylor0_congr
  filter_upwards [hc.eventually (L.compl_lattice_sdiff_singleton_mem_nhds 0)] with z hz
  by_cases h0 : z = 0
  · simp [h0, shiftFn]
  have hnz : n * z ≠ 0 := mul_ne_zero hn h0
  have h1 : n * z ∉ L.lattice := fun hm => hz ⟨hm, hnz⟩
  simp only [shiftFn_eq L _ _ h0, shiftFn_eq L _ _ hnz, Finset.prod_mul_distrib]
  linear_combination (z ^ 2 * ∏ P ∈ S, z ^ 2) * h z h1

section Formal

variable {K : Type} [Field K]

theorem map_wpShift {K' : Type} [Field K'] (φ : K →+* K') (p : K⟦X⟧) (c : K) :
    PowerSeries.map φ (wpShift p c) = wpShift (PowerSeries.map φ p) (φ c) := by
  simp [wpShift]

theorem map_rescale' {K' : Type} [Field K'] (φ : K →+* K') (p : K⟦X⟧) (c : K) :
    PowerSeries.map φ (rescale c p) = rescale (φ c) (PowerSeries.map φ p) := by
  ext n
  simp [coeff_rescale]

theorem series_u {σ : Type} {p l linv A : K⟦X⟧} (hL : IsLogPair l linv) (hX : XIsWp p l A 0) (n e : K)
    (S : Finset σ) (a b : σ → K)
    (h : rescale n (wpShift p e) * ∏ P ∈ S, wpShift p (a P) = wpShift p e * ∏ P ∈ S, wpShift p (b P)) :
    (A.subst (mulBy l linv n) - C e * mulBy l linv n ^ 2) * (C (n ^ 2) * ∏ P ∈ S, (A - C (a P) * X ^ 2)) * X ^ 2 =
      mulBy l linv n ^ 2 * ((A - C e * X ^ 2) * ∏ P ∈ S, (A - C (b P) * X ^ 2)) := by
  set v := mulBy l linv n with hv
  have hsl := hs_of hL.1
  have hsv : HasSubst v := hs_of (cc_mulBy hL n)
  have h1 : ∀ x : K, X ^ 2 * subst l (wpShift p x) = (A - C x * X ^ 2) * l ^ 2 := fun x => by
    simpa using subst_wpShift hL.1 hX x
  have h2 := congrArg (substAlgHom hsl) h
  simp only [map_mul, map_prod, coe_substAlgHom] at h2
  rw [subst_rescale hL, ← hv] at h2
  have h3 : v ^ 2 * subst v (subst l (wpShift p e)) = (A.subst v - C e * v ^ 2) * (C n * l) ^ 2 := by
    have := congrArg (subst v) (h1 e)
    have hC : subst v (C e : K⟦X⟧) = (C e : K⟦X⟧) := subst_C _
    rwa [subst_mul hsv, subst_mul hsv, subst_sub hsv, subst_mul hsv, subst_pow hsv, subst_pow hsv, subst_X hsv,
      hC, hv, subst_mulBy_l hL, ← hv] at this
  have h4 : ∀ c : σ → K, (∏ _P ∈ S, (X : K⟦X⟧) ^ 2) * ∏ P ∈ S, subst l (wpShift p (c P)) =
      (∏ P ∈ S, (A - C (c P) * X ^ 2)) * ∏ _P ∈ S, l ^ 2 := fun c => by
    rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl fun P _ => h1 _
  have hl0 : l ^ 2 * ∏ _P ∈ S, l ^ 2 ≠ 0 :=
    mul_ne_zero (pow_ne_zero _ (l_ne_zero hL)) (Finset.prod_ne_zero_iff.2 fun _ _ => pow_ne_zero _ (l_ne_zero hL))
  apply mul_right_cancel₀ hl0
  have ha := h4 a
  have hb := h4 b
  have he := h1 e
  rw [map_pow]
  set T := ∏ _P ∈ S, (X : K⟦X⟧) ^ 2
  set Sa := ∏ P ∈ S, subst l (wpShift p (a P))
  set Sb := ∏ P ∈ S, subst l (wpShift p (b P))
  linear_combination (v ^ 2 * X ^ 2 * T) * h2 - X ^ 2 * T * Sa * h3
    - X ^ 2 * ((A.subst v - C e * v ^ 2) * (C n * l) ^ 2) * ha + v ^ 2 * T * Sb * he
    + v ^ 2 * ((A - C e * X ^ 2) * l ^ 2) * hb

theorem homog_field {F : Type} [Field F] (φ : K →+* F) (q : Polynomial K) (m : ℕ) (hq : q.natDegree ≤ m) (a y : F)
    (hy : y ≠ 0) :
    ∑ i ∈ Finset.range (m + 1), φ (q.coeff i) * a ^ i * y ^ (m - i) = y ^ m * q.eval₂ φ (a / y) := by
  rw [Polynomial.eval₂_eq_sum_range' φ (Nat.lt_succ_of_le hq), Finset.mul_sum]
  refine Finset.sum_congr rfl fun i hi => ?_
  have hi' : i ≤ m := Nat.lt_succ_iff.1 (Finset.mem_range.1 hi)
  rw [pow_sub₀ _ hy hi', div_pow]
  field_simp

theorem homog_prod {σ : Type} (S : Finset σ) (d : K) (c : σ → K) (A : K⟦X⟧) (m : ℕ) (hm : S.card = m) :
    ∑ i ∈ Finset.range (m + 1),
        C ((Polynomial.C d * ∏ P ∈ S, (Polynomial.X - Polynomial.C (c P))).coeff i) * A ^ i * X ^ (2 * (m - i)) =
      C d * ∏ P ∈ S, (A - C (c P) * X ^ 2) := by
  let ψ := algebraMap K⟦X⟧ (FractionRing K⟦X⟧)
  have hψ : Function.Injective ψ := IsFractionRing.injective _ _
  have hy : ψ (X ^ 2) ≠ 0 := (map_ne_zero_iff ψ hψ).2 (pow_ne_zero _ X_ne_zero)
  have hd : (Polynomial.C d * ∏ P ∈ S, (Polynomial.X - Polynomial.C (c P))).natDegree ≤ m := by
    refine (Polynomial.natDegree_C_mul_le _ _).trans ?_
    rw [Polynomial.natDegree_finsetProd_X_sub_C_eq_card, hm]
  have := homog_field (ψ.comp C) _ m hd (ψ A) _ hy
  apply hψ

  simp only [map_sum, map_mul, map_pow, map_prod, map_sub, pow_mul]
  simp only [RingHom.comp_apply, map_pow] at this
  rw [this, Polynomial.eval₂_mul, Polynomial.eval₂_finsetProd, Polynomial.eval₂_C, ← hm, ← Finset.prod_const,
    mul_left_comm, ← Finset.prod_mul_distrib]
  congr 1
  refine Finset.prod_congr rfl fun P _ => ?_
  rw [map_pow] at hy
  simp only [Polynomial.eval₂_sub, Polynomial.eval₂_X, Polynomial.eval₂_C, RingHom.comp_apply]
  rw [mul_sub, mul_div_cancel₀ _ hy, mul_comm]

end Formal

theorem coeff_prod_le {K : Type} [NormedField K] [IsUltrametricDist K] {σ : Type} (S : Finset σ) (c : σ → K)
    (hc : ∀ P ∈ S, ‖c P‖ ≤ 1) (i : ℕ) : ‖(∏ P ∈ S, (Polynomial.X - Polynomial.C (c P))).coeff i‖ ≤ 1 := by
  classical
  change _ ∈ Formalism.G.unitBall K
  induction S using Finset.induction_on generalizing i with
  | empty =>
    rw [Finset.prod_empty, Polynomial.coeff_one]
    split_ifs
    exacts [one_mem _, zero_mem _]
  | insert P S hP ih =>
    rw [Finset.prod_insert hP, Polynomial.coeff_mul]
    refine Subring.sum_mem _ fun x _ => mul_mem ?_ (ih (fun Q hQ => hc Q (Finset.mem_insert_of_mem hQ)) _)
    have h : c P ∈ Formalism.G.unitBall K := hc P (Finset.mem_insert_self _ _)
    rw [Polynomial.coeff_sub, Polynomial.coeff_X, Polynomial.coeff_C]
    refine sub_mem ?_ ?_ <;> split_ifs
    exacts [one_mem _, zero_mem _, h, zero_mem _]

theorem mulBy_eq_zSer {K : Type} [Field K] [CharZero K] (W : WeierstrassCurve K) (n : ℕ) :
    mulBy (Formalism.L2.Th1.A.logSer W) (Formalism.L2.Th1.A.expSer W) (n : K) = Formalism.L2.Th1.A.zSer W (n : ℤ) := by
  have hL := logPair W
  have h0 := ((Formalism.L2.Th1.A.zSerSpec K W).1 (n : ℤ)).1
  have h1 := Formalism.L2.Th1.A.zSerLog K W (n : ℤ)
  rw [Int.cast_natCast] at h1
  unfold mulBy
  rw [← h1, ← subst_comp_subst_apply (hs_of hL.1) (hs_of h0), hL.2.2.2.1, subst_X (hs_of h0)]

theorem odd_mul_sub_mem (L : PeriodPair) {k : ℕ} (hk : Odd k) {s P : ℂ} (hs : 2 * s ∈ L.lattice)
    (hP : (k : ℂ) * P ∈ L.lattice) : (k : ℂ) * (s + P) - s ∈ L.lattice := by
  obtain ⟨j, rfl⟩ := hk
  have : ((2 * j + 1 : ℕ) : ℂ) * (s + P) - s = (j : ℤ) • (2 * s) + ((2 * j + 1 : ℕ) : ℂ) * P := by
    simp only [zsmul_eq_mul]; push_cast; ring
  rw [this]
  exact add_mem (Submodule.smul_mem _ _ hs) hP

theorem wp_congr (L : PeriodPair) {z w : ℂ} (h : z - w ∈ L.lattice) : L.weierstrassP z = L.weierstrassP w := by
  have := L.weierstrassP_add_coe w ⟨z - w, h⟩
  simpa using this

theorem nat_mul_mem (L : PeriodPair) (k : ℕ) {z : ℂ} (h : z ∈ L.lattice) : (k : ℂ) * z ∈ L.lattice := by
  simpa [zsmul_eq_mul] using L.lattice.smul_mem (k : ℤ) h

theorem height_le_two (L : PeriodPair) (l : ℕ) [Fact l.Prime] (hl : 5 ≤ l) (ι : ℂ ≃+* ℂ_[l])
    (h2 : ‖ι L.g₂‖ ≤ 1) (h3 : ‖ι L.g₃‖ ≤ 1) (hΔ : ‖ι L.g₂ ^ 3 - 27 * ι L.g₃ ^ 2‖ = 1) :
    ∃ n, n ≤ l ^ 2 ∧ ‖coeff n (Formalism.L2.Th1.C.mulBy (Formalism.L2.Th1.A.logSer (Formalism.L2.Th1.A.shortW (ι L.g₂) (ι L.g₃)))
      (Formalism.L2.Th1.A.expSer (Formalism.L2.Th1.A.shortW (ι L.g₂) (ι L.g₃))) (l : ℂ_[l]))‖ = 1 := by
  classical
  set W := Formalism.L2.Th1.A.shortW (ι L.g₂) (ι L.g₃) with hW
  have hodd : Odd l := (Fact.out : l.Prime).odd_of_ne_two (by omega)
  have hl0 : (l : ℂ) ≠ 0 := Nat.cast_ne_zero.2 (by omega)
  have h4 : ‖(4 : ℂ_[l])‖ = 1 := by
    rw [show (4 : ℂ_[l]) = 2 * 2 by norm_num, norm_mul, _root_.Formalism.L2.Th1.E.ScaledModelNorms.norm_two l hl, mul_one]
  have ha4 : ‖W.a₄‖ ≤ 1 := by
    change ‖-ι L.g₂ / 4‖ ≤ 1
    rwa [norm_div, norm_neg, h4, div_one]
  have ha6 : ‖W.a₆‖ ≤ 1 := by
    change ‖-ι L.g₃ / 4‖ ≤ 1
    rwa [norm_div, norm_neg, h4, div_one]
  have hz : ‖(0 : ℂ_[l])‖ ≤ 1 := by simp
  obtain ⟨hb2, -, -, hD⟩ := Formalism.L2.Th1.A.shortInv ℂ_[l] (ι L.g₂) (ι L.g₃)
  have hInt : Formalism.L2.Th1.E.IntCurve (Formalism.L2.Th1.E.curveL l L ι) :=
    ⟨hz, hz, hz, ha4, ha6, by rw [← hΔ, ← hD]; rfl⟩
  obtain ⟨-, hx, -, -, -, -, -, hzs, -⟩ := Formalism.L2.Th1.A.coeffMem.{0} ℂ_[l] W (Formalism.G.unitBall ℂ_[l]) hz hz hz ha4 ha6

  have key : ∀ s P : ℂ, s ∉ L.lattice → 2 * s ∈ L.lattice → (l : ℂ) * P ∈ L.lattice →
      s + P ∉ L.lattice ∧ ‖ι (L.weierstrassP (s + P))‖ ≤ 1 := by
    intro s P hs h2s hP
    have hm := odd_mul_sub_mem L hodd h2s hP
    have hn : (l : ℂ) * (s + P) ∉ L.lattice := fun h => hs (by simpa using sub_mem h hm)
    refine ⟨fun h => hn (nat_mul_mem L l h), _root_.GlobalTheory.Honda.integral_of_mul_integral L l hl ι h2 h3 hΔ _ l hn ?_⟩
    rw [wp_congr L hm, ← Formalism.L2.Th1.E.AnaSys.px_ptOf l L ι s hs]
    exact (Formalism.L2.Th1.E.ptOfInt l L ι hInt s 2 two_pos (fun h => by have := Nat.le_of_dvd two_pos h; omega)
      (by simpa using h2s) hs).1
  set t := L.ω₁ / 2 with ht
  set t' := L.ω₂ / 2 with ht'
  have ht0 : t ∉ L.lattice := L.ω₁_div_two_notMem_lattice
  have ht0' : t' ∉ L.lattice := L.ω₂_div_two_notMem_lattice
  have ht2 : 2 * t ∈ L.lattice := by rw [ht, mul_div_cancel₀ _ two_ne_zero]; exact L.ω₁_mem_lattice
  have ht2' : 2 * t' ∈ L.lattice := by rw [ht', mul_div_cancel₀ _ two_ne_zero]; exact L.ω₂_mem_lattice
  have hp0 : t' + t ∉ L.lattice := fun h => by
    have := (PeriodPair.mul_ω₁_add_mul_ω₂_mem_lattice (L := L) (α := 1 / 2) (β := 1 / 2)).1
      (by convert h using 1; rw [ht, ht']; push_cast; ring)
    norm_num at this
  have hm0 : t' - t ∉ L.lattice := fun h => hp0 (by convert add_mem h ht2 using 1; ring)
  have hp2 : 2 * (t' + t) ∈ L.lattice := by rw [mul_add]; exact add_mem ht2' ht2
  have hm2 : 2 * (t' - t) ∈ L.lattice := by rw [mul_sub]; exact sub_mem ht2' ht2
  have hk0 : (l : ℂ) * 0 ∈ L.lattice := by simp
  have unit : ∀ P : ℂ, (l : ℂ) * P ∈ L.lattice → ‖ι (L.weierstrassP t') - ι (L.weierstrassP (t + P))‖ = 1 := by
    intro P hP
    have k1 := key t' 0 ht0' ht2' hk0
    have k2 := key t P ht0 ht2 hP
    have k3 := key _ P hp0 hp2 hP
    have k4 := key _ (-P) hm0 hm2 (by simpa using hP)
    rw [add_zero] at k1
    rw [add_assoc] at k3
    rw [show t' - t + -P = t' - (t + P) by ring] at k4
    exact GlobalTheory.Honda.norm_weierstrassP_sub_eq_one_of_good L l hl ι h2 h3 hΔ _ _ k1.1 k2.1 k3.1 k4.1 k1.2 k2.2 k3.2 k4.2
  have hst : MulStable L l := fun ω h => _root_.Formalism.L2.Th1.E.Tor.nat_mul_mem L l h
  obtain ⟨S, hS⟩ := kerRepsExist L l hl0 hst
  have hcard : S.card + 1 = l ^ 2 := by
    have := kerRepsCard L l S hl0 hst hS
    rw [Complex.normSq_natCast, ← sq] at this
    exact_mod_cast this
  have h0S : (0 : ℂ) ∉ S := fun h => (hS.1 0 h).2 (zero_mem _)
  have hprod := _root_.GlobalTheory.OddHalfProduct.wp_odd_mul_sub_half_prod L l S t hodd hS ht0 ht2
  have hins : ∀ P ∈ insert (0 : ℂ) S, (l : ℂ) * P ∈ L.lattice := by
    intro P hP
    rcases Finset.mem_insert.1 hP with rfl | hP
    exacts [hk0, (hS.1 P hP).1]

  have hzser := congrArg (PowerSeries.map (ι : ℂ →+* ℂ_[l])) (weierstrassP_nat_mul_product_series_identity L l _ hl0 S _ _ hprod)
  have hbr : Formalism.L2.Th1.A.wpReg W = PowerSeries.map (ι : ℂ →+* ℂ_[l]) (pSeries L) := Formalism.L2.Th1.E.wpBridge l L ι
  simp only [map_mul, map_prod, map_rescale', map_wpShift, ← hbr, map_natCast] at hzser
  have hX : XIsWp (Formalism.L2.Th1.A.wpReg W) (Formalism.L2.Th1.A.logSer W) (Formalism.L2.Th1.A.xS W) 0 := by
    have := xIsWp W
    rwa [hb2, zero_div] at this
  have hu := series_u (logPair W) hX _ _ S _ _ hzser
  rw [← hcard]
  refine _root_.GlobalTheory.Honda.htform_unit_coeff_le ℂ_[l] (Formalism.L2.Th1.A.xS W) _ (ι (L.weierstrassP t)) (ι (L.weierstrassP t')) S.card
    (Polynomial.C ((l : ℂ_[l]) ^ 2) * ∏ P ∈ S, (Polynomial.X - Polynomial.C (ι (L.weierstrassP P))))
    (Polynomial.C 1 * ∏ P ∈ insert 0 S, (Polynomial.X - Polynomial.C (ι (L.weierstrassP (t + P)))))
    hx (Formalism.L2.Th1.A.wSerFactor ℂ_[l] W).2.2.2.1 ?_ (cc_mulBy (logPair W) _) ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · rw [mulBy_eq_zSer]; exact hzs l
  · simpa using (key t 0 ht0 ht2 hk0).2
  · simpa using (key t' 0 ht0' ht2' hk0).2
  · rw [map_one, one_mul]; exact Polynomial.monic_prod_of_monic _ _ fun _ _ => Polynomial.monic_X_sub_C _
  · rw [map_one, one_mul, Polynomial.natDegree_finsetProd_X_sub_C_eq_card, Finset.card_insert_of_notMem h0S]
  · rw [map_one, one_mul]
    exact coeff_prod_le _ _ fun P hP => (key t P ht0 ht2 (hins P hP)).2
  · refine (Polynomial.natDegree_C_mul_le _ _).trans ?_
    rw [Polynomial.natDegree_finsetProd_X_sub_C_eq_card]
  · have hm := odd_mul_sub_mem L hodd ht2' hk0
    rw [add_zero] at hm
    have h := congrArg ι (hprod t' fun h => ht0' (by simpa using sub_mem h hm))
    rw [_root_.Formalism.L2.Th1.F.EndoZ.wp_congr L hm] at h
    simp only [map_mul, map_sub, map_prod, map_pow, map_natCast] at h
    have hu0 := unit 0 hk0
    rw [add_zero] at hu0
    have hne : ι (L.weierstrassP t') - ι (L.weierstrassP t) ≠ 0 := fun h => by simp [h] at hu0
    rw [mul_right_comm, mul_comm] at h
    simp only [Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_prod, Polynomial.eval_sub, Polynomial.eval_X]
    rw [mul_left_cancel₀ hne h, norm_prod]
    exact Finset.prod_eq_one fun P hP => unit P (hS.1 P hP).1
  · rw [homog_prod S _ _ _ _ rfl, homog_prod (insert 0 S) _ _ _ (S.card + 1) (Finset.card_insert_of_notMem h0S),
      Finset.prod_insert h0S, add_zero, map_one, one_mul]
    exact hu

end GlobalTheory.HeightTwo
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FormalGroupHeightLeTwoGoodReduction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsIntegralHondaLogarithmPairShortWeierstrass =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsIntegralHondaLogarithmPairShortWeierstrass", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.CubeThreeR\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FglInvariant\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.Honda

namespace GlobalTheory.Honda

theorem intLog_shortW (K : Type) [NormedField K] [IsUltrametricDist K] [CharZero K] (g2 g3 : K)
    (h2 : ‖(2 : K)‖ = 1) (hg2 : ‖g2‖ ≤ 1) (hg3 : ‖g3‖ ≤ 1) :
    IntLog (Formalism.L2.Th1.A.logSer (Formalism.L2.Th1.A.shortW g2 g3))
      (Formalism.L2.Th1.A.expSer (Formalism.L2.Th1.A.shortW g2 g3)) := by
  set W := Formalism.L2.Th1.A.shortW g2 g3 with hW
  have h4 : ‖(4 : K)‖ = 1 := by
    have : (4 : K) = 2 * 2 := by norm_num
    rw [this, norm_mul, h2, one_mul]
  have hmem : ∀ x : K, ‖x‖ ≤ 1 → x ∈ Formalism.G.unitBall K := fun x hx => hx
  have ha4 : W.a₄ ∈ Formalism.G.unitBall K := by
    apply hmem
    show ‖-g2 / 4‖ ≤ 1
    rw [norm_div, norm_neg, h4, div_one]; exact hg2
  have ha6 : W.a₆ ∈ Formalism.G.unitBall K := by
    apply hmem
    show ‖-g3 / 4‖ ≤ 1
    rw [norm_div, norm_neg, h4, div_one]; exact hg3
  have h0 : (0 : K) ∈ Formalism.G.unitBall K := (Formalism.G.unitBall K).zero_mem
  have hcm := Formalism.L2.Th1.A.coeffMem K W (Formalism.G.unitBall K) h0 h0 h0 ha4 ha6
  obtain ⟨hl0, hl1, hlom, -⟩ := Formalism.L2.Th1.A.logSpec K W
  obtain ⟨he0, -, hle, hel, -⟩ := Formalism.L2.Th1.A.expSpec K W
  obtain ⟨-, hfgl⟩ := Formalism.L2.Th1.A.fglLog K W
  refine ⟨⟨hl0, hl1, he0, hel, hle⟩, ?_, ?_⟩
  · intro n
    rw [hlom]
    exact hcm.2.2.2.2.1 n
  · intro n
    unfold Formalism.L2.Th1.C.fadd
    rw [← hfgl]
    exact hcm.2.2.2.2.2.2.1 n

end GlobalTheory.Honda
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsIntegralHondaLogarithmPairShortWeierstrass =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnramifiedNearIntegralComplexPadic =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnramifiedNearIntegralComplexPadic", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsMemWpNormSubLtOne\npublic import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement\npublic import Mathlib.NumberTheory.Padics.RingHoms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.Honda Formalism.L2.Th1.CM

noncomputable section

namespace GlobalTheory.ResidueUnr

open Polynomial

variable {l : ℕ} [Fact l.Prime]

theorem norm_algebraMap_padicInt (z : ℤ_[l]) : ‖algebraMap ℤ_[l] (PadicAlgCl l) z‖ ≤ 1 := by
  rw [IsScalarTower.algebraMap_apply ℤ_[l] ℚ_[l] (PadicAlgCl l), PadicAlgCl.norm_extends]
  exact z.norm_le_one

theorem norm_aeval_le (x : PadicAlgCl l) (hx : ‖x‖ ≤ 1) (g : ℤ_[l][X]) : ‖aeval x g‖ ≤ 1 := by
  rw [aeval_eq_sum_range]
  apply IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg zero_le_one
  intro i _
  rw [Algebra.smul_def, norm_mul, norm_pow]
  exact mul_le_one₀ (norm_algebraMap_padicInt _) (pow_nonneg (norm_nonneg _) _) (pow_le_one₀ (norm_nonneg _) hx)

theorem norm_aeval_lt (x : PadicAlgCl l) (hx : ‖x‖ ≤ 1) (g : ℤ_[l][X])
    (hg : g.map (PadicInt.toZMod (p := l)) = 0) : ‖aeval x g‖ < 1 := by
  have hd : ∀ n, (Polynomial.C (l : ℤ_[l])) ∣ Polynomial.C (g.coeff n) := by
    intro n
    have h0 : PadicInt.toZMod (g.coeff n) = 0 := by
      have := congrArg (fun f => _root_.AddMonoidAlgebra.coeff (M := ℕ) f n) hg
      simpa [Polynomial.coeff_map] using this
    have hm : g.coeff n ∈ IsLocalRing.maximalIdeal ℤ_[l] := by
      rw [← PadicInt.ker_toZMod]; exact h0
    rw [PadicInt.maximalIdeal_eq_span_p, Ideal.mem_span_singleton] at hm
    exact map_dvd Polynomial.C hm
  obtain ⟨h, rfl⟩ : (Polynomial.C (l : ℤ_[l])) ∣ g := (Polynomial.C_dvd_iff_dvd_coeff _ _).2
    (fun n => by simpa using (Polynomial.C_dvd_iff_dvd_coeff _ _).1 (hd n) 0)
  rw [map_mul, aeval_C, norm_mul]
  have hl : ‖algebraMap ℤ_[l] (PadicAlgCl l) (l : ℤ_[l])‖ < 1 := by
    rw [map_natCast, ← map_natCast (algebraMap ℚ_[l] (PadicAlgCl l)) l, PadicAlgCl.norm_extends]
    exact Padic.norm_p_lt_one
  calc _ ≤ ‖algebraMap ℤ_[l] (PadicAlgCl l) (l : ℤ_[l])‖ * 1 :=
        mul_le_mul_of_nonneg_left (norm_aeval_le x hx h) (norm_nonneg _)
    _ < 1 := by rw [mul_one]; exact hl

theorem exists_monic (x : PadicAlgCl l) (hx : ‖x‖ ≤ 1) : ∃ q : ℤ_[l][X], q.Monic ∧ aeval x q = 0 := by
  have hi : IsIntegral ℚ_[l] x := Algebra.IsIntegral.isIntegral x
  rw [← PadicAlgCl.spectralNorm_eq, spectralNorm, spectralValue_le_one_iff (minpoly.monic hi)] at hx
  have hl : minpoly ℚ_[l] x ∈ Polynomial.lifts (algebraMap ℤ_[l] ℚ_[l]) := by
    rw [Polynomial.lifts_iff_coeff_lifts]
    exact fun n => ⟨⟨_, hx n⟩, rfl⟩
  obtain ⟨q, hq, -, hqm⟩ := Polynomial.lifts_and_degree_eq_and_monic hl (minpoly.monic hi)
  refine ⟨q, hqm, ?_⟩
  rw [← Polynomial.aeval_map_algebraMap ℚ_[l], hq, minpoly.aeval]

theorem exists_pow_near_one (x : PadicAlgCl l) (hx : ‖x‖ = 1) :
    ∃ m : ℕ, 0 < m ∧ ‖x ^ m - 1‖ < 1 := by
  apply GlobalTheory.ResidueRoot.exists_pow_alg <;> assumption

theorem frob_inj (z : PadicAlgCl l) (hz : ‖z‖ ≤ 1) (h : ‖z ^ l - 1‖ < 1) : ‖z - 1‖ < 1 := by
  have hp := (Fact.out : l.Prime)
  have hpoly : (((Polynomial.X - 1) ^ l - (Polynomial.X ^ l - 1) : ℤ_[l][X])).map (PadicInt.toZMod (p := l)) = 0 := by
    rw [Polynomial.map_sub, Polynomial.map_pow, Polynomial.map_sub, Polynomial.map_sub,
      Polynomial.map_pow, Polynomial.map_X, Polynomial.map_one, sub_pow_char, one_pow, sub_self]
  have h1 := norm_aeval_lt z hz _ hpoly
  simp only [map_sub, map_pow, Polynomial.aeval_X, map_one] at h1
  have h2 : ‖(z - 1) ^ l‖ < 1 := by
    have e : (z - 1) ^ l = ((z - 1) ^ l - (z ^ l - 1)) + (z ^ l - 1) := by ring
    rw [e]
    exact lt_of_le_of_lt (IsUltrametricDist.norm_add_le_max _ _) (max_lt h1 h)
  rw [norm_pow] at h2
  exact (pow_lt_one_iff_of_nonneg (norm_nonneg _) hp.ne_zero).1 h2

theorem frob_pow (a : ℕ) : ∀ z : PadicAlgCl l, ‖z‖ ≤ 1 → ‖z ^ (l ^ a) - 1‖ < 1 → ‖z - 1‖ < 1 := by
  induction a with
  | zero => intro z _ h; simpa using h
  | succ a ih =>
    intro z hz h
    apply frob_inj z hz
    apply ih (z ^ l) (by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) hz)
    rw [← pow_mul, ← pow_succ']
    exact h

theorem one_le_norm_prod (s : Multiset ℂ_[l]) (h : ∀ a ∈ s, 1 ≤ ‖a‖) : 1 ≤ ‖s.prod‖ := by
  induction s using Multiset.induction_on with
  | empty => simp
  | cons a s ih =>
    rw [Multiset.prod_cons, norm_mul]
    have h1 := h a (Multiset.mem_cons_self a s)
    have h2 := ih fun b hb => h b (Multiset.mem_cons_of_mem hb)
    nlinarith

theorem exists_root_near (x : ℂ_[l]) (m : ℕ) (hm : 0 < m) (h : ‖x ^ m - 1‖ < 1) :
    ∃ ζ : ℂ_[l], ζ ^ m = 1 ∧ ‖x - ζ‖ < 1 := by
  apply GlobalTheory.ResidueRoot.exists_root <;> assumption

theorem exists_near_kur : ∀ (l : ℕ) [Fact l.Prime] (x : ℂ_[l]), ‖x‖ ≤ 1 →
    ∃ y ∈ MaximalUnramifiedExtension l, ‖y‖ ≤ 1 ∧ ‖x - y‖ < 1 := by
  intro l _ x hx
  obtain ⟨x', hx'⟩ := (UniformSpace.Completion.denseRange_coe (α := PadicAlgCl l)).exists_dist_lt x one_pos
  rw [dist_eq_norm] at hx'
  set X0 : ℂ_[l] := (x' : ℂ_[l]) with hX0
  have hn' : ‖X0‖ ≤ 1 := by
    have e : X0 = (X0 - x) + x := by ring
    rw [e]
    exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le (by rw [norm_sub_rev]; exact hx'.le) hx)
  by_cases h0 : ‖X0‖ < 1
  · refine ⟨0, zero_mem _, by simp, ?_⟩
    rw [sub_zero]
    have e : x = (x - X0) + X0 := by ring
    rw [e]; exact lt_of_le_of_lt (IsUltrametricDist.norm_add_le_max _ _) (max_lt hx' h0)
  have h1 : ‖x'‖ = 1 := by rw [← PadicComplex.norm_extends]; exact le_antisymm hn' (not_lt.1 h0)
  obtain ⟨m0, hm0, hsm⟩ := exists_pow_near_one x' h1
  obtain ⟨a, m, hm, rfl⟩ := Nat.exists_eq_pow_mul_and_not_dvd hm0.ne' l (Fact.out : l.Prime).ne_one
  have hz : ‖x' ^ m - 1‖ < 1 :=
    frob_pow a (x' ^ m) (by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) h1.le) (by rw [← pow_mul, mul_comm]; exact hsm)
  have hmpos : 0 < m := Nat.pos_of_ne_zero (by rintro rfl; simp at hm0)
  have hz' : ‖X0 ^ m - 1‖ < 1 := by
    have e : X0 ^ m - 1 = ((x' ^ m - 1 : PadicAlgCl l) : ℂ_[l]) := by simp [hX0, PadicComplex.coe_eq]
    rw [e, PadicComplex.norm_extends]; exact hz
  obtain ⟨ζ, hζ, hd⟩ := exists_root_near X0 m hmpos hz'
  refine ⟨ζ, ?_, ?_, ?_⟩
  · unfold MaximalUnramifiedExtension
    exact Subfield.le_topologicalClosure _ (Subfield.subset_closure ⟨m, hmpos, hm, hζ⟩)
  · have : ‖ζ‖ ^ m = 1 := by rw [← norm_pow, hζ, norm_one]
    exact ((pow_eq_one_iff_of_nonneg (norm_nonneg ζ) hmpos.ne').1 this).le
  · have e : x - ζ = (x - X0) + (X0 - ζ) := by ring
    rw [e]; exact lt_of_le_of_lt (IsUltrametricDist.norm_add_le_max _ _) (max_lt hx' hd)

end GlobalTheory.ResidueUnr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnramifiedNearIntegralComplexPadic =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MaxUnramifiedResidueAlgClosedAndFrobeniusLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MaxUnramifiedResidueAlgClosedAndFrobeniusLift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.IsLawOfLog\npublic import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsUnramifiedNearIntegralComplexPadic\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormPowSubPowLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open PowerSeries GlobalTheory.Honda Formalism.L2.Th1.CM

namespace GlobalTheory.Honda.KurUnr

variable {K : Type} [NormedField K] [IsUltrametricDist K]

theorem norm_root_le_one (f : Polynomial K) (hm : f.Monic) (hf : ∀ n, ‖f.coeff n‖ ≤ 1) {z : K}
    (hz : f.eval z = 0) : ‖z‖ ≤ 1 := by
  apply GlobalTheory.NormEvalSubBound.norm_le_one_of_root <;> assumption

theorem unr_of_unrOK (l : ℕ) (σ : K →+* K) (h : Formalism.InvariantFactorPaths.G7.UnrOK K l σ) : Unr K l σ := by
  obtain ⟨hp, hl2, hnl, hval, hfr⟩ := h
  have hl1 : (1 : ℝ) < l := by exact_mod_cast hp.one_lt
  have hl0 : (0 : ℝ) < l := by linarith
  have hlinv : (l : ℝ)⁻¹ < 1 := inv_lt_one_of_one_lt₀ hl1
  have hlK : (l : K) ≠ 0 := by
    intro h0
    rw [h0, norm_zero] at hnl
    exact (inv_pos.mpr hl0).ne' hnl.symm

  have hiso : ∀ a : K, ‖σ a‖ = ‖a‖ := by
    intro a
    rcases eq_or_ne a 0 with rfl | ha
    · simp
    obtain ⟨k, hk⟩ := hval a ha
    set u := a * (l : K) ^ k with hu
    have hc : ‖((l : K) ^ k)‖ = (l : ℝ)⁻¹ ^ k := by rw [norm_zpow, hnl]
    have hun : ‖u‖ = 1 := by
      rw [hu, norm_mul, hc, hk, inv_zpow', ← zpow_add₀ hl0.ne', add_neg_cancel, zpow_zero]
    have hsu : ‖σ u‖ = 1 := by
      have h1 := hfr u hun.le
      have hup : ‖u ^ l‖ = 1 := by rw [norm_pow, hun, one_pow]
      have hne : ‖σ u - u ^ l‖ ≠ ‖u ^ l‖ := by rw [hup]; linarith
      have := IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm hne
      rw [sub_add_cancel, hup, max_eq_right (by linarith)] at this
      exact this
    have hσu : σ u = σ a * (l : K) ^ k := by rw [hu, map_mul, map_zpow₀, map_natCast]
    have hcne : ‖((l : K) ^ k)‖ ≠ 0 := by rw [norm_ne_zero_iff]; exact zpow_ne_zero _ hlK
    have e1 : ‖σ a‖ * ‖((l : K) ^ k)‖ = ‖a‖ * ‖((l : K) ^ k)‖ := by
      rw [← norm_mul, ← norm_mul, ← hσu, ← hu, hsu, hun]
    exact mul_right_cancel₀ hcne e1
  refine ⟨hp, hl2, by rw [hnl]; exact hlinv, ?_, hiso, ?_⟩
  · intro x hx
    rcases eq_or_ne x 0 with rfl | hx0
    · simp
    obtain ⟨k, hk⟩ := hval x hx0
    rw [hnl, hk]
    have hkneg : k ≤ -1 := by
      by_contra hk1
      push_neg at hk1
      have : (1 : ℝ) ≤ (l : ℝ) ^ k := one_le_zpow₀ hl1.le (by omega)
      rw [← hk] at this
      linarith
    calc (l : ℝ) ^ k ≤ (l : ℝ) ^ (-1 : ℤ) := zpow_le_zpow_right₀ hl1.le hkneg
      _ = (l : ℝ)⁻¹ := zpow_neg_one _
  · intro x hx
    exact (hfr x hx).trans_lt hlinv

end GlobalTheory.Honda.KurUnr


open GlobalTheory.Honda.KurUnr in
theorem GlobalTheory.Honda.kur_resAlg_unr : ∀ (l : ℕ) [Fact l.Prime], 2 < l →
    ResAlg (MaximalUnramifiedExtension l) ∧ ∀ σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l, Formalism.InvariantFactorPaths.G7.UnrOK (MaximalUnramifiedExtension l) l σ → Unr (MaximalUnramifiedExtension l) l σ := by
  intro l _ _
  refine ⟨?_, fun σ hσ => unr_of_unrOK l σ hσ⟩
  intro f hm hdeg hf
  set g : Polynomial ℂ_[l] := f.map (MaximalUnramifiedExtension l).subtype with hg
  have hgm : g.Monic := hm.map _
  have hgdeg : g.natDegree = f.natDegree := Polynomial.natDegree_map _
  have hgc : ∀ n, ‖g.coeff n‖ ≤ 1 := fun n => by
    rw [hg, Polynomial.coeff_map]
    exact hf n
  have hdg : g.degree ≠ 0 := by
    rw [Polynomial.degree_eq_natDegree hgm.ne_zero, hgdeg]
    exact_mod_cast hdeg.ne'
  obtain ⟨z, hz⟩ := IsAlgClosed.exists_root g hdg
  have hz1 : ‖z‖ ≤ 1 := norm_root_le_one g hgm hgc hz
  obtain ⟨y, hyK, hy1, hzy⟩ := _root_.GlobalTheory.ResidueUnr.exists_near_kur l z hz1
  refine ⟨⟨y, hyK⟩, hy1, ?_⟩
  have hev : ((f.eval ⟨y, hyK⟩ : MaximalUnramifiedExtension l) : ℂ_[l]) = g.eval y := by
    rw [hg, Polynomial.eval_map]
    exact (Polynomial.eval₂_hom (MaximalUnramifiedExtension l).subtype ⟨y, hyK⟩).symm
  change ‖((f.eval ⟨y, hyK⟩ : MaximalUnramifiedExtension l) : ℂ_[l])‖ < 1
  rw [hev, ← sub_zero (g.eval y), ← hz]
  calc ‖g.eval y - g.eval z‖ ≤ ‖y - z‖ := GlobalTheory.NormEvalSubBound.norm_eval_sub_le g hgc hy1 hz1
    _ = ‖z - y‖ := norm_sub_rev _ _
    _ < 1 := hzy
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MaxUnramifiedResidueAlgClosedAndFrobeniusLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OneSubTwoOmegaSq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OneSubTwoOmegaSq", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementK\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EndOmega\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CmMultiplierIntegralSeriesAtInertPrimeProof\npublic import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.HasSecondLogDeriv\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FormalGroupHeightLeTwoGoodReduction\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeightTwoFormalGroupUnramifiedMultiplier\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsIntegralHondaLogarithmPairShortWeierstrass\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.IsLawOfLog\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MaxUnramifiedResidueAlgClosedAndFrobeniusLift\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.FinalOfNRDense\nimport Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsHomotheticPeriodPairLattice\nimport Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KurComplete\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.ChordEquation\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.CubeThreeR\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.ChainRuleFormalGroupVar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.Honda Formalism.L2.Th1.CM

noncomputable section
namespace GlobalTheory.HondaCM3

theorem shortW_map {K L : Type} [Field K] [Field L] (φ : K →+* L) (g2 g3 : K) :
    (Formalism.L2.Th1.A.shortW g2 g3).map φ = Formalism.L2.Th1.A.shortW (φ g2) (φ g3) := by
  ext <;> simp [Formalism.L2.Th1.A.shortW, map_div₀, map_neg, map_ofNat]

theorem ltLog_map {K L : Type} [Field K] [Field L] (φ : K →+* L) (l : ℕ) :
    PowerSeries.map φ (ltLog K l) = ltLog L l := by
  ext n
  simp only [coeff_map, ltLog, coeff_mk]
  split_ifs <;> simp [map_inv₀, map_pow, map_natCast]

theorem constantCoeff_ltLog {K : Type} [Field K] (l : ℕ) (hl : 2 ≤ l) :
    constantCoeff (ltLog K l) = 0 := by
  rw [← coeff_zero_eq_constantCoeff_apply, ltLog, coeff_mk, dite_eq_right]
  rintro ⟨j, hj⟩
  have : 0 < (l ^ 2) ^ j := pow_pos (pow_pos (by omega) 2) j
  omega

theorem map_subst_of {K L : Type} [CommRing K] [CommRing L] (φ : K →+* L) (f s : K⟦X⟧)
    (hs : constantCoeff s = 0) :
    PowerSeries.map φ (f.subst s) = (PowerSeries.map φ f).subst (PowerSeries.map φ s) :=
  Formalism.L2.Th1.A.More.map_subst' φ (HasSubst.of_constantCoeff_zero hs) f

theorem norm_natCast_eq_one {K : Type} [NormedField K] [IsUltrametricDist K] (l n : ℕ)
    (hl : ‖(l : K)‖ < 1) (hcop : Nat.Coprime n l) : ‖(n : K)‖ = 1 := by
  have hb := Nat.gcd_eq_gcd_ab n l
  rw [hcop] at hb
  have h1 : (1 : K) = (n : K) * (n.gcdA l : K) + (l : K) * (n.gcdB l : K) := by
    have := congrArg (fun z : ℤ => (z : K)) hb
    push_cast at this
    exact this
  have hle : ‖(n : K)‖ ≤ 1 := IsUltrametricDist.norm_natCast_le_one K n
  refine le_antisymm hle ?_
  by_contra hlt
  push_neg at hlt
  have ha : ‖(n.gcdA l : K)‖ ≤ 1 := IsUltrametricDist.norm_intCast_le_one K _
  have hb' : ‖(n.gcdB l : K)‖ ≤ 1 := IsUltrametricDist.norm_intCast_le_one K _
  have e1 : ‖(n : K) * (n.gcdA l : K)‖ < 1 := by
    rw [norm_mul]; exact lt_of_le_of_lt (mul_le_of_le_one_right (norm_nonneg _) ha) hlt
  have e2 : ‖(l : K) * (n.gcdB l : K)‖ < 1 := by
    rw [norm_mul]; exact lt_of_le_of_lt (mul_le_of_le_one_right (norm_nonneg _) hb') hl
  have := IsUltrametricDist.norm_add_le_max ((n : K) * (n.gcdA l : K)) ((l : K) * (n.gcdB l : K))
  rw [← h1, norm_one] at this
  exact absurd this (not_le.2 (max_lt e1 e2))

end GlobalTheory.HondaCM3

namespace GlobalTheory.HondaCM3

theorem one_sub_two_omega_sq (d : ℕ) : (1 - 2 * omegaK d) ^ 2 = -(d : ℂ) := by
  have h : ((Real.sqrt d : ℝ) : ℂ) ^ 2 = (d : ℂ) := by
    rw [← Complex.ofReal_pow, Real.sq_sqrt (Nat.cast_nonneg _)]; push_cast; rfl
  rw [omegaK]
  have : (1 : ℂ) - 2 * ((1 + Complex.I * ((Real.sqrt d : ℝ) : ℂ)) / 2) = -(Complex.I * ((Real.sqrt d : ℝ) : ℂ)) := by
    ring
  rw [this, neg_sq, mul_pow, Complex.I_sq, h]; ring

theorem cm3 : CM3 := by
  intro d L hsq hd hCM l _ hl5 hld hinert ι g2 g3 hG
  have hG' := hG
  obtain ⟨hg2K, hg3K, hg2n, hg3n, hdisc, lam, hlam0, hg2, hg3⟩ := hG
  haveI : CompleteSpace (MaximalUnramifiedExtension l) := Formalism.L2.Th1.D.kurComplete l
  have hl2 : 2 < l := by omega
  obtain ⟨σ, hσ, -⟩ := Formalism.L2.Th1.D.kurFrob l hl2
  obtain ⟨hRes, hUnr⟩ := _root_.GlobalTheory.Honda.kur_resAlg_unr l hl2
  have hU := hUnr σ hσ
  set φ : MaximalUnramifiedExtension l →+* ℂ_[l] := (MaximalUnramifiedExtension l).subtype with hφ
  have hnφ : ∀ x : MaximalUnramifiedExtension l, ‖φ x‖ = ‖x‖ := fun x => rfl
  set a2 : MaximalUnramifiedExtension l := ⟨g2, hg2K⟩ with ha2
  set a3 : MaximalUnramifiedExtension l := ⟨g3, hg3K⟩ with ha3
  have hφa2 : φ a2 = g2 := rfl
  have hφa3 : φ a3 = g3 := rfl
  set f := Formalism.L2.Th1.A.logSer (Formalism.L2.Th1.A.shortW a2 a3) with hf
  set e := Formalism.L2.Th1.A.expSer (Formalism.L2.Th1.A.shortW a2 a3) with he
  have hZ := Formalism.L2.Th1.A.zMap (MaximalUnramifiedExtension l) ℂ_[l] φ (Formalism.L2.Th1.A.shortW a2 a3)
  rw [shortW_map, hφa2, hφa3] at hZ
  have hmf : PowerSeries.map φ f = Formalism.L2.Th1.A.logSer (Formalism.L2.Th1.A.shortW g2 g3) := hZ.1
  have hme : PowerSeries.map φ e = uSer g2 g3 := by
    rw [hZ.2.1, Formalism.L2.Th1.A.uSerEq ℂ_[l] g2 g3]
  have hf0 : constantCoeff f = 0 := (Formalism.L2.Th1.A.logSpec (MaximalUnramifiedExtension l) _).1

  have hlK : ‖(l : MaximalUnramifiedExtension l)‖ < 1 := hU.2.2.1
  have h2 : ‖(2 : MaximalUnramifiedExtension l)‖ = 1 := by
    have := norm_natCast_eq_one (K := MaximalUnramifiedExtension l) l 2 hlK
      ((Nat.coprime_primes Nat.prime_two (Fact.out)).2 (by omega))
    simpa using this
  have hInt : IntLog f e := _root_.GlobalTheory.Honda.intLog_shortW (MaximalUnramifiedExtension l) a2 a3 h2 hg2n hg3n

  obtain ⟨hωK, hσω⟩ := Formalism.L2.Th1.D.sqrtKur d hsq hd l hl5 hinert ι
  set w : MaximalUnramifiedExtension l := ⟨ι (omegaK d), hωK⟩ with hw
  have hσw : σ w = 1 - w := hσω σ hσ w rfl
  have hσσ : σ (σ w) = w := by rw [hσw, map_sub, map_one, hσw]; ring
  have hsq' : (1 - 2 * w) ^ 2 = -((d : ℕ) : MaximalUnramifiedExtension l) := by
    apply (MaximalUnramifiedExtension l).subtype_injective
    have := congrArg ι (one_sub_two_omega_sq d)
    simp only [map_pow, map_sub, map_one, map_mul, map_ofNat, map_neg, map_natCast] at this
    rw [map_pow, map_sub, map_one, map_mul, map_ofNat, map_neg, map_natCast]
    exact this
  have hd1 : ‖((d : ℕ) : MaximalUnramifiedExtension l)‖ = 1 :=
    norm_natCast_eq_one (K := MaximalUnramifiedExtension l) l d hlK
      ((Nat.Coprime.symm ((Nat.Prime.coprime_iff_not_dvd Fact.out).2 hld)))
  have hnorm : ‖σ w - w‖ = 1 := by
    have e1 : σ w - w = 1 - 2 * w := by rw [hσw]; ring
    rw [e1]
    have : ‖1 - 2 * w‖ ^ 2 = 1 := by rw [← norm_pow, hsq', norm_neg, hd1]
    nlinarith [norm_nonneg (1 - 2 * w), sq_nonneg (‖1 - 2 * w‖ - 1)]

  have hCf : ∀ a : MaximalUnramifiedExtension l, constantCoeff (C a * f) = 0 := fun a => by
    rw [map_mul, hf0, mul_zero]
  have hmapMul : ∀ a : MaximalUnramifiedExtension l, PowerSeries.map φ (Formalism.L2.Th1.C.mulBy f e a) =
      Formalism.L2.Th1.C.mulBy (Formalism.L2.Th1.A.logSer (Formalism.L2.Th1.A.shortW g2 g3)) (uSer g2 g3) (φ a) := by
    intro a
    rw [Formalism.L2.Th1.C.mulBy, Formalism.L2.Th1.C.mulBy, map_subst_of φ e _ (hCf a), hme, map_mul, map_C, hmf]
  have hCoef : CoefLe 1 (Formalism.L2.Th1.C.mulBy f e w) := by
    intro n
    have := _root_.GlobalTheory.Honda.endOmega_holds d L hd hCM l hl5 hld hinert ι g2 g3 hG' n
    rw [← hnφ, ← coeff_map, hmapMul]
    exact this

  have hht : ∃ n, n ≤ l ^ 2 ∧ ‖coeff n (Formalism.L2.Th1.C.mulBy f e (l : MaximalUnramifiedExtension l))‖ = 1 := by
    have hc : ι.symm lam ≠ 0 := by simpa using hlam0
    obtain ⟨L', -, hL2, hL3, -, -⟩ := _root_.GlobalTheory.homotheticLattice L (ι.symm lam) hc
    have e2 : ι L'.g₂ = g2 := by rw [hL2, map_mul, map_pow, RingEquiv.apply_symm_apply, hg2]
    have e3 : ι L'.g₃ = g3 := by rw [hL3, map_mul, map_pow, RingEquiv.apply_symm_apply, hg3]
    obtain ⟨n, hn, h1⟩ := _root_.GlobalTheory.HeightTwo.height_le_two L' l hl5 ι (by rw [e2]; exact hg2n) (by rw [e3]; exact hg3n)
      (by rw [e2, e3]; exact hdisc)
    refine ⟨n, hn, ?_⟩
    rw [← hnφ, ← coeff_map, hmapMul, map_natCast]
    rw [e2, e3, ← Formalism.L2.Th1.A.uSerEq ℂ_[l] g2 g3] at h1
    exact h1
  obtain ⟨ε, hε1, hεC⟩ := _root_.GlobalTheory.Honda.heightTwo_unitTwist (MaximalUnramifiedExtension l) l σ hU hRes f e hInt w hCoef hσσ hnorm hht
  refine ⟨φ ε, ε.2, hε1, fun n => ?_⟩
  have hs0 : constantCoeff (C ε * ltLog (MaximalUnramifiedExtension l) l) = 0 := by
    rw [map_mul, constantCoeff_ltLog l (by omega), mul_zero]
  have hEq : (uSer g2 g3).subst (C (φ ε) * ltLog ℂ_[l] l) =
      PowerSeries.map φ (e.subst (C ε * ltLog (MaximalUnramifiedExtension l) l)) := by
    rw [map_subst_of φ e _ hs0, hme, map_mul, map_C, ltLog_map]
  rw [hEq, coeff_map]
  exact ⟨(coeff n (e.subst (C ε * ltLog (MaximalUnramifiedExtension l) l))).2, by rw [hnφ]; exact hεC n⟩

end GlobalTheory.HondaCM3
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OneSubTwoOmegaSq =====
