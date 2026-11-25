module

public import Mathlib.FieldTheory.Separable
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjGLOfCharpolyEqOfSeparable
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft
public import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable
public import Formalism.SatakeDualWeyl.Statement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramDetHermitianTotallyPositive
public import GroundTheory.GlobalFields.SemilocalAlgebras.ContinuousCompletionMap
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsCongrIffTraceFormsIsometricCm
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HasseNormTheoremQuadraticExtension
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceConjugationPropertiesCmField
public import GroundTheory.GlobalFields.SemilocalAlgebras.Finite
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomial
public import Mathlib.NumberTheory.NumberField.CMField
public import Mathlib.RingTheory.SimpleRing.Principal
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsInfiniteDecomp
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DetGramRatOneNeZero
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonsplitCentraliserNormElement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTwistedClassesCharpoly
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinprodNonsplitSignTotallyPositiveEqOneStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramKernelSignNonsplitBaseChangeEqStatement
public import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.HermitianLocalDataAlmostAllStatement
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HeightOneSpectrumPlacesOverFiniteSet
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.TotallySplit
import Mathlib.RingTheory.PicardGroup
import Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary
import Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.Azumaya.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjGLOfCharpolyEqOfSeparableStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGLCharpolyEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGLCharpolyEqStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryConjIffExistsCentralizerNorm, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryConjIffExistsCentralizerNormStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramDetHermitianTotallyPositiveStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LandherrStandardDefiniteHermitianCmField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LandherrStandardDefiniteHermitianCmFieldStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SesquilinearDetOrdSignOnKernelConjGL, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SesquilinearDetOrdSignOnKernelConjGLStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomialStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTransposeMulPosDef, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.ConjTransposeMulPosDef, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormSolutionFields, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.ExistsNormSolutionFields, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlobalNormOfLocalNorms, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.GlobalNormOfLocalNorms, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvolutionFixesPolynomialImage, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.InvolutionFixesPolynomialImage, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalNormAtSplitPlace, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.LocalNormAtSplitPlace, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitCentraliserNormElement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotallyPositiveRealPlaces, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.TotallyPositiveRealPlaces, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitPlaceNormCentraliser, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitPlaceNormCentraliserStatement, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.UnitaryConjugacySignProduct, Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.UnitaryConjugacySignProductStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjGLOfCharpolyEqOfSeparableStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjGLOfCharpolyEqOfSeparableStatement", "h": "module\n\npublic import Mathlib.FieldTheory.Separable\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjGLOfCharpolyEqOfSeparable\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjGLOfCharpolyEqOfSeparableStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGLCharpolyEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGLCharpolyEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.CompanionEll

theorem exists_GL_charpoly_eq : ∀ (E : Type) [Field E] [NumberField E] (n : ℕ), ∀ P ∈ Ell E n, ∃ a : GL (Fin n) E, a.val.charpoly = P := by
  intro E _ _ n P hP
  obtain ⟨hm, hn, -, hr⟩ := hP
  obtain ⟨τ⟩ : Nonempty (E →+* ℂ) := inferInstance
  have h0 : P.coeff 0 ≠ 0 := by
    intro h
    have hroot : (0 : ℂ) ∈ (P.map τ).roots := by
      rw [mem_roots (hm.map τ).ne_zero, IsRoot.def, ← coeff_zero_eq_eval_zero, coeff_map, h, map_zero]
    have := hr τ 0 hroot
    simp at this
  obtain ⟨N, hN⟩ : ∃ N : Matrix (Fin n) (Fin n) E, N.charpoly = P := by
    subst hn
    exact ⟨_, (charpoly_leftMulMatrix (AdjoinRoot.powerBasis hm.ne_zero)).trans
      (AdjoinRoot.minpoly_powerBasis_gen_of_monic hm)⟩
  have hd : IsUnit N.det := by
    rw [Matrix.det_eq_sign_charpoly_coeff, hN]
    exact isUnit_iff_ne_zero.mpr (mul_ne_zero (pow_ne_zero _ (neg_ne_zero.mpr one_ne_zero)) h0)
  exact ⟨((Matrix.isUnit_iff_isUnit_det N).mpr hd).unit, hN⟩

end GlobalTheory.CompanionEll
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGLCharpolyEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGLCharpolyEqStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGLCharpolyEqStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGLCharpolyEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGLCharpolyEqStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryConjIffExistsCentralizerNorm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryConjIffExistsCentralizerNorm", "h": "module\n\npublic import Formalism.SatakeDualWeyl.Statement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.UnitaryConj

theorem inv_h_form {K : Type} [Field K] (σ : K →+* K) {n : ℕ} (h : GL (Fin n) K) :
    (h.val * cT σ h.val)⁻¹ = cT σ (h⁻¹).val * (h⁻¹).val := by
  apply Matrix.inv_eq_left_inv
  rw [Matrix.mul_assoc, ← Matrix.mul_assoc (h⁻¹).val, ← Units.val_mul, inv_mul_cancel, Units.val_one,
    Matrix.one_mul, cT_units]

theorem main : ∀ (K : Type) [Field K] (σ : K →+* K) (n : ℕ) (γ h : GL (Fin n) K), (∃ g ∈ UJ σ (1 : Matrix (Fin n) (Fin n) K), h⁻¹ * γ * h = g⁻¹ * γ * g) ↔ ∃ c : Matrix (Fin n) (Fin n) K, c * γ.val = γ.val * c ∧ cT σ c * c = (h.val * cT σ h.val)⁻¹ := by
  intro K _ σ n γ h
  rw [inv_h_form]
  constructor
  · rintro ⟨g, hg, hconj⟩
    have hg' : cT σ g.val * 1 * g.val = 1 := hg
    rw [Matrix.mul_one] at hg'
    refine ⟨(g * h⁻¹).val, ?_, ?_⟩
    · have e : g * h⁻¹ * γ = γ * (g * h⁻¹) := by
        calc g * h⁻¹ * γ = g * (h⁻¹ * γ * h) * h⁻¹ := by group
          _ = g * (g⁻¹ * γ * g) * h⁻¹ := by rw [hconj]
          _ = γ * (g * h⁻¹) := by group
      simpa only [Units.val_mul] using congrArg Units.val e
    · rw [Units.val_mul, cT_mul, Matrix.mul_assoc, ← Matrix.mul_assoc (cT σ g.val), hg', Matrix.one_mul]
  · rintro ⟨c, hc, hcc⟩
    have hdet : c.det ≠ 0 := by
      intro h0
      have := congrArg Matrix.det hcc
      rw [Matrix.det_mul, h0, mul_zero] at this
      have hne : (cT σ (h⁻¹).val * (h⁻¹).val).det ≠ 0 := det_ne σ h
      exact hne this.symm
    let cu : GL (Fin n) K := ((Matrix.isUnit_iff_isUnit_det c).mpr (isUnit_iff_ne_zero.mpr hdet)).unit
    have hcu : cu.val = c := rfl
    have hcom : cu⁻¹ * γ * cu = γ := by
      have e : cu * γ = γ * cu := Units.ext (by simpa only [Units.val_mul, hcu] using hc)
      calc cu⁻¹ * γ * cu = cu⁻¹ * (γ * cu) := by group
        _ = cu⁻¹ * (cu * γ) := by rw [e]
        _ = γ := by group
    refine ⟨cu * h, ?_, ?_⟩
    · show cT σ (cu * h).val * 1 * (cu * h).val = 1
      rw [Matrix.mul_one, Units.val_mul, cT_mul, hcu, Matrix.mul_assoc, ← Matrix.mul_assoc (cT σ c), hcc]
      simp only [Matrix.mul_assoc]
      rw [← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.mul_one, ← cT_mul, ← Units.val_mul,
        inv_mul_cancel, Units.val_one, cT_one]
    · calc h⁻¹ * γ * h = h⁻¹ * (cu⁻¹ * γ * cu) * h := by rw [hcom]
        _ = (cu * h)⁻¹ * γ * (cu * h) := by group

end GlobalTheory.UnitaryConj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryConjIffExistsCentralizerNorm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryConjIffExistsCentralizerNormStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryConjIffExistsCentralizerNormStatement", "h": "module\n\npublic import Formalism.SatakeDualWeyl.Statement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryConjIffExistsCentralizerNorm\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryConjIffExistsCentralizerNormStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramDetHermitianTotallyPositiveStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramDetHermitianTotallyPositiveStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramDetHermitianTotallyPositive\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramDetHermitianTotallyPositiveStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LandherrStandardDefiniteHermitianCmField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LandherrStandardDefiniteHermitianCmField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import GroundTheory.GlobalFields.SemilocalAlgebras.ContinuousCompletionMap\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsCongrIffTraceFormsIsometricCm\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HasseNormTheoremQuadraticExtension\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HeightOneSpectrumPlacesOverFiniteSet\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceConjugationPropertiesCmField\npublic import GroundTheory.GlobalFields.SemilocalAlgebras.Finite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.LandherrStd

open GroundTheory.Global.SemiLocal
open scoped GroundTheory.Global.SemiLocal

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem finrank_pos (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) (u : HeightOneSpectrum (𝓞 E))
    [u.asIdeal.LiesOver v.asIdeal] :
    0 < Module.finrank (v.adicCompletion (maximalRealSubfield E)) (u.adicCompletion E) := by
  rw [finrank_eq_ramificationIdx_mul_inertiaDeg E v u]
  exact Nat.mul_pos (Ideal.ramificationIdx_pos (R := _) u.asIdeal) (Ideal.inertiaDeg_pos _ _)

theorem det_map' {R S : Type*} [CommRing R] [CommRing S] (f : R →+* S) {n : ℕ}
    (M : Matrix (Fin n) (Fin n) R) : (M.map f).det = f M.det :=
  (RingHom.map_det f M).symm

theorem exists_sq_sub_mul_sq (hU : Unr E) (θ : E) (hθ0 : θ ≠ 0) (hθ : IsCMField.complexConj E θ = -θ)
    (d : maximalRealSubfield E) (hd : (d : E) = θ * θ) (a : maximalRealSubfield E)
    (hloc : ∀ w : Pl E, ¬ IsSplitAt w → ∃ z : w.adicCompletion E,
      algebraMap E (w.adicCompletion E) (a : E) = cj w z * z)
    (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) :
    ∃ x y : v.adicCompletion (maximalRealSubfield E),
      algebraMap _ (v.adicCompletion (maximalRealSubfield E)) a =
        x ^ 2 - algebraMap _ (v.adicCompletion (maximalRealSubfield E)) d * y ^ 2 := by
  set Fv := v.adicCompletion (maximalRealSubfield E)
  haveI : CharZero Fv :=
    charZero_of_injective_algebraMap (algebraMap (maximalRealSubfield E) Fv).injective
  have hd0 : d ≠ 0 := fun h => mul_ne_zero hθ0 hθ0 (hd.symm.trans (by rw [h]; rfl))
  by_cases hsq : IsSquare (algebraMap _ Fv d)
  · exact GlobalTheory.Published.HasseNormSt.of_isSquare ((_root_.map_ne_zero _).2 hd0) hsq _
  obtain ⟨w, hw⟩ := (GlobalTheory.QNorm.places_over (maximalRealSubfield E) E).2.1 v
  haveI : w.asIdeal.LiesOver v.asIdeal := ⟨by rw [← hw, HeightOneSpectrum.under_asIdeal]⟩
  set ι := completionMap v w with hιdef
  have hι : ∀ x : maximalRealSubfield E,
      ι (algebraMap _ Fv x) = algebraMap E (w.adicCompletion E) (x : E) := by
    intro x
    rw [hιdef, completionMap_algebraMap, IsScalarTower.algebraMap_apply (maximalRealSubfield E) E]
    rfl
  set t := algebraMap E (w.adicCompletion E) θ with htdef
  have ht2 : t * t = ι (algebraMap _ Fv d) := by rw [hι, hd, map_mul]
  have hnot : ∀ s : Fv, t ≠ ι s := by
    intro s hs
    apply hsq
    refine ⟨s, ι.injective ?_⟩
    rw [← ht2, map_mul, hs]
  have hsm : ∀ (s : Fv) (y : w.adicCompletion E), s • y = ι s * y := fun s y => Algebra.smul_def s y
  have hli : LinearIndependent Fv ![(1 : w.adicCompletion E), t] := by
    rw [LinearIndependent.pair_iff]
    intro s r h
    rw [hsm, hsm, mul_one] at h
    by_cases hr : r = 0
    · subst hr
      rw [map_zero, zero_mul, add_zero] at h
      exact ⟨ι.injective (by rw [h, map_zero]), rfl⟩
    · exfalso
      apply hnot (-s / r)
      have hr' : ι r ≠ 0 := (_root_.map_ne_zero ι).2 hr
      rw [map_div₀, map_neg]
      field_simp
      linear_combination h
  have hsum := sum_finrank_eq E v
  rw [Algebra.IsQuadraticExtension.finrank_eq_two] at hsum
  have hle : Module.finrank Fv (w.adicCompletion E) ≤ 2 := by
    rw [← hsum]
    exact Finset.single_le_sum (f := fun u : PlacesOver E v =>
      Module.finrank Fv (u.1.adicCompletion E)) (fun _ _ => Nat.zero_le _)
      (Finset.mem_univ ⟨w, inferInstance⟩)
  haveI : Module.Finite Fv (w.adicCompletion E) := Module.finite_of_finrank_pos (finrank_pos v w)
  have hge : 2 ≤ Module.finrank Fv (w.adicCompletion E) := by
    simpa using hli.fintype_card_le_finrank
  have h2 : Module.finrank Fv (w.adicCompletion E) = 2 := le_antisymm hle hge
  have hns : ¬ IsSplitAt w := by
    rintro ⟨u, hne, hu⟩
    haveI : u.asIdeal.LiesOver v.asIdeal := ⟨by rw [← hw, ← hu, HeightOneSpectrum.under_asIdeal]⟩
    have hpos := finrank_pos v u
    have hne' : (⟨u, inferInstance⟩ : PlacesOver E v) ≠ ⟨w, inferInstance⟩ :=
      fun h => hne (congrArg Subtype.val h)
    have := Finset.sum_le_sum_of_subset_of_nonneg (f := fun u : PlacesOver E v =>
      Module.finrank Fv (u.1.adicCompletion E))
      (Finset.subset_univ {(⟨u, inferInstance⟩ : PlacesOver E v), ⟨w, inferInstance⟩})
      (fun _ _ _ => Nat.zero_le _)
    rw [Finset.sum_pair hne', hsum] at this
    have key : Module.finrank Fv (u.adicCompletion E) + Module.finrank Fv (w.adicCompletion E) ≤ 2 := this
    rw [h2] at key
    have hpos' : 0 < Module.finrank Fv (u.adicCompletion E) := hpos
    omega
  obtain ⟨z, hz⟩ := hloc w hns
  have hcc := ((GlobalTheory.ConjAtPlace.main E hU w).2.2.2.1 hns).1
  have hcj : ∀ s : Fv, cj w (ι s) = ι s := by
    have h := (HeightOneSpectrum.denseRange_algebraMap (maximalRealSubfield E) v).equalizer
      ((GlobalTheory.ConjAtPlace.main E hU w).1.comp (continuous_completionMap v w))
      (continuous_completionMap v w) (funext fun x => ?_)
    · exact fun s => congrFun h s
    · simp only [Function.comp_apply]
      rw [← hιdef, hι, hcc]
      congr 1
      exact (IsCMField.complexConj E).commutes x
  have hct : cj w t = -t := by rw [htdef, hcc, hθ, map_neg]
  let b := basisOfLinearIndependentOfCardEqFinrank hli (by simp [h2])
  have hzb : z = ι (b.repr z 0) + ι (b.repr z 1) * t := by
    conv_lhs => rw [← b.sum_repr z, Fin.sum_univ_two]
    simp [b, hsm]
  obtain ⟨A, C, hAC⟩ : ∃ A C : Fv, z = ι A + ι C * t := ⟨_, _, hzb⟩
  refine ⟨A, C, ι.injective ?_⟩
  rw [hι, hz, hAC, map_add (f := _), map_mul, hcj, hcj, hct, map_sub, map_mul, map_pow, map_pow, ← ht2]
  ring

theorem main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (n : ℕ)
    (H : Matrix (Fin n) (Fin n) E), IsHerm (IsCMField.complexConj E).toRingEquiv.toRingHom H →
    (∀ τ : E →+* ℂ, ∃ Q : Matrix (Fin n) (Fin n) ℂ, Q.det ≠ 0 ∧ H.map τ = cT (starRingEnd ℂ) Q * Q) →
    (∀ w : Pl E, ¬ IsSplitAt w → ∃ g : Matrix (Fin n) (Fin n) (w.adicCompletion E),
      H.map (algebraMap E (w.adicCompletion E)) = cT (cj w) g * g) →
    ∃ h : GL (Fin n) E, H = cT (IsCMField.complexConj E).toRingEquiv.toRingHom h.val * h.val := by
  intro E _ _ _ hU n H hH hτ hw
  have hG' : ∀ a b, ReciprocityTheory.ChartRestriction.G.FD.cc (H a b) = H b a := fun a b => by
    have := congrFun (congrFun hH b) a
    simpa [cT, ReciprocityTheory.ChartRestriction.G.FD.cc] using this
  have hG : ∀ a b, ReciprocityTheory.ChartRestriction.G.FD.cc ((1 : Matrix (Fin n) (Fin n) E) a b) =
      (1 : Matrix (Fin n) (Fin n) E) b a := by
    intro a b
    by_cases h : a = b
    · subst h
      simp [ReciprocityTheory.ChartRestriction.G.FD.cc]
    · simp [Matrix.one_apply_ne h, Matrix.one_apply_ne (Ne.symm h), ReciprocityTheory.ChartRestriction.G.FD.cc]
  have hs : ∀ τ : E →+* ℂ, ∃ Q : Matrix (Fin n) (Fin n) ℂ, Q.det ≠ 0 ∧
      H.map τ = Qᵀ * (1 : Matrix (Fin n) (Fin n) E).map τ * Q.map (starRingEnd ℂ) := by
    intro τ
    obtain ⟨Q, hQ, hQe⟩ := hτ τ
    refine ⟨Q.map (starRingEnd ℂ), ?_, ?_⟩
    · rw [det_map']
      exact (_root_.map_ne_zero _).2 hQ
    · have h1 : (Q.map (starRingEnd ℂ)).map (starRingEnd ℂ) = Q := by
        ext i j
        simp
      rw [hQe, Matrix.map_one _ (map_zero τ) (map_one τ), Matrix.mul_one, h1]
      rfl
  have hd : H.det ≠ 0 := by
    obtain ⟨Q, hQ, hQe⟩ := hτ (IsAlgClosed.lift (M := ℂ) (R := ℚ) (S := E)).toRingHom
    intro h0
    have h1 := congrArg Matrix.det hQe
    rw [det_map', h0, map_zero, Matrix.det_mul] at h1
    have h2 : (cT (starRingEnd ℂ) Q).det = starRingEnd ℂ Q.det := by
      unfold cT
      rw [Matrix.det_transpose, det_map']
    rw [h2] at h1
    exact mul_ne_zero ((_root_.map_ne_zero _).2 hQ) hQ h1.symm
  have hd1 : (1 : Matrix (Fin n) (Fin n) E).det ≠ 0 := by simp
  obtain ⟨P, hP, hPe⟩ : ∃ P : Matrix (Fin n) (Fin n) E, P.det ≠ 0 ∧
      H = Pᵀ * 1 * P.map ReciprocityTheory.ChartRestriction.G.FD.cc := by
    refine GlobalTheory.LocalQuad.landherr_of_hasseNormSt GlobalTheory.QNorm.hasseNormSt E n 1 H hG hG' hd1 hd hs ?_
    have hm : (1 : Matrix (Fin n) (Fin n) E).det / H.det ∈ maximalRealSubfield E := by
      rw [← IsCMField.complexConj_eq_self_iff, map_div₀]
      exact congrArg₂ (· / ·) (GlobalTheory.Published.cc_det_of_herm hG) (GlobalTheory.Published.cc_det_of_herm hG')
    let a : maximalRealSubfield E := ⟨_, hm⟩
    obtain ⟨θ, h0, hθ⟩ := GlobalTheory.Published.exists_cc_eq_neg E
    obtain ⟨d, hdθ⟩ := GlobalTheory.Published.exists_sq_real hθ
    have hd0 : d ≠ 0 := fun h => mul_ne_zero h0 h0 (hdθ.symm.trans (congrArg Subtype.val h))
    have ha0 : a ≠ 0 := fun h => div_ne_zero hd1 hd (congrArg Subtype.val h)
    have hloc : ∀ w : Pl E, ¬ IsSplitAt w → ∃ z : w.adicCompletion E,
        algebraMap E (w.adicCompletion E) (a : E) = cj w z * z := by
      intro w hns
      obtain ⟨g, hg⟩ := hw w hns
      have h1 := congrArg Matrix.det hg
      rw [det_map', Matrix.det_mul] at h1
      have h2 : (cT (cj w) g).det = cj w g.det := by
        unfold cT
        rw [Matrix.det_transpose, det_map']
      rw [h2] at h1
      refine ⟨g.det⁻¹, ?_⟩
      change algebraMap E (w.adicCompletion E) ((1 : Matrix (Fin n) (Fin n) E).det / H.det) = _
      rw [Matrix.det_one, one_div, map_inv₀, h1, map_inv₀, mul_inv]
    obtain ⟨x, y, hxy⟩ := GlobalTheory.QNorm.hasseNormSt (maximalRealSubfield E) d a hd0 ha0
      (fun ρ => by
        let τ := ComplexEmbedding.lift E (Complex.ofRealHom.comp ρ)
        have h1 : τ (a : E) = (Complex.ofRealHom.comp ρ) a :=
          ComplexEmbedding.lift_algebraMap_apply E _ a
        have h2 : 0 < (τ (a : E)).re := GlobalTheory.Published.Landherr.re_det_div_pos hd1 τ (hs τ)
        rw [h1] at h2
        exact ⟨√(ρ a), 0, by rw [Real.sq_sqrt (le_of_lt (by simpa using h2))]; ring⟩)
      (fun v => exists_sq_sub_mul_sq hU θ h0 hθ d hdθ a hloc v)
    refine ⟨x + y * θ, ?_⟩
    have h1 := congrArg (Subtype.val : maximalRealSubfield E → E) hxy
    have h2 : IsCMField.complexConj E θ = -θ := hθ
    simp [a, hdθ] at h1
    simp only [Matrix.det_one, one_div, ReciprocityTheory.ChartRestriction.G.FD.cc, map_add (f := _), map_mul,
      IsCMField.complexConj_apply_eq_self, h2]
    linear_combination h1
  have hPc : (P.map ReciprocityTheory.ChartRestriction.G.FD.cc).det ≠ 0 := by
    rw [show (P.map ReciprocityTheory.ChartRestriction.G.FD.cc) = P.map (IsCMField.complexConj E).toRingEquiv.toRingHom from rfl,
      det_map']
    exact (_root_.map_ne_zero _).2 hP
  let u : GL (Fin n) E := ((Matrix.isUnit_iff_isUnit_det _).2 (isUnit_iff_ne_zero.2 hPc)).unit
  refine ⟨u, ?_⟩
  have hu : (u : Matrix (Fin n) (Fin n) E) = P.map ReciprocityTheory.ChartRestriction.G.FD.cc := rfl
  rw [hu, hPe, Matrix.mul_one]
  congr 1
  ext i j
  simp [cT, ReciprocityTheory.ChartRestriction.G.FD.cc]

end GlobalTheory.LandherrStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LandherrStandardDefiniteHermitianCmField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LandherrStandardDefiniteHermitianCmFieldStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LandherrStandardDefiniteHermitianCmFieldStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LandherrStandardDefiniteHermitianCmField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LandherrStandardDefiniteHermitianCmFieldStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SesquilinearDetOrdSignOnKernelConjGL =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SesquilinearDetOrdSignOnKernelConjGL", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.RingTheory.PicardGroup\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section
namespace GlobalTheory.UnitaryClasses.SgnConj

variable {K : Type} [Field K]

theorem sign_mul_norm [Valued K (WithZero (Multiplicative ℤ))] (σ : K →+* K)
    (hσ : ∀ x, Valued.v (σ x) = Valued.v x) {d : K} (hd : d ≠ 0) (x : K) :
    (-1 : ℂ) ^ ordL (σ d * d * x) = (-1 : ℂ) ^ ordL x := by
  by_cases hx : x = 0
  · simp [hx]
  have hσd : σ d ≠ 0 := (map_ne_zero σ).2 hd
  have hσo : ordL (σ d) = ordL d := by
    unfold ordL
    simp only [hσ]
  rw [_root_.Formalism.UG.P.fSatake_ord_mul (mul_ne_zero hσd hd) hx, _root_.Formalism.UG.P.fSatake_ord_mul hσd hd, hσo, zpow_add₀ (by norm_num), ← two_mul,
    (even_two_mul (ordL d)).neg_one_zpow, one_mul]

theorem gram_eq_mul (σ : K →+* K) {n : ℕ} (H : Matrix (Fin n) (Fin n) K) {ι : Type} [Fintype ι]
    (v : ι → Fin n → K) :
    (Matrix.of fun i j => hform σ H (v i) (v j)) =
      cT σ (Matrix.of fun p i => v i p) * H * Matrix.of fun p i => v i p := by
  ext i j
  simp only [hform, cT, Matrix.of_apply, Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply,
    Finset.sum_mul]
  rw [Finset.sum_comm]

theorem cols_mulVec {n : ℕ} (M : Matrix (Fin n) (Fin n) K) {ι : Type} (v : ι → Fin n → K) :
    (Matrix.of fun p i => (M *ᵥ v i) p) = M * Matrix.of fun p i => v i p := by
  ext p i
  simp [Matrix.mulVec, dotProduct, Matrix.mul_apply]

theorem det_cT (σ : K →+* K) {ι : Type} [Fintype ι] [DecidableEq ι] (T : Matrix ι ι K) :
    (cT σ T).det = σ T.det := by
  unfold cT; rw [Matrix.det_transpose, RingHom.map_det]; rfl

theorem gram_det_change (σ : K →+* K) {n : ℕ} (H : Matrix (Fin n) (Fin n) K) (W : Submodule K (Fin n → K))
    {ι : Type} [Fintype ι] [DecidableEq ι] (b b' : Module.Basis ι K W) :
    ∃ d : K, d ≠ 0 ∧
      (Matrix.of fun i j => hform σ H (b' i : Fin n → K) (b' j)).det =
        σ d * d * (Matrix.of fun i j => hform σ H (b i : Fin n → K) (b j)).det := by
  set T := b.toMatrix b' with hT
  have hcol : (Matrix.of fun p i => (b' i : Fin n → K) p) = (Matrix.of fun p i => (b i : Fin n → K) p) * T := by
    ext p j
    have hs := congrArg (fun x : W => (x : Fin n → K) p) (b.sum_repr (b' j))
    simp only [Submodule.coe_sum, Submodule.coe_smul, Finset.sum_apply, Pi.smul_apply, smul_eq_mul] at hs
    rw [Matrix.of_apply, ← hs, Matrix.mul_apply]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Matrix.of_apply, hT, Module.Basis.toMatrix_apply, mul_comm]
  have hTT : T * b'.toMatrix b = 1 := Module.Basis.toMatrix_mul_toMatrix_flip b b'
  have hd : T.det ≠ 0 := by
    intro h0
    have := congrArg Matrix.det hTT
    rw [Matrix.det_mul, h0, zero_mul, Matrix.det_one] at this
    exact zero_ne_one this
  refine ⟨T.det, hd, ?_⟩
  rw [gram_eq_mul σ H (fun i => (b' i : Fin n → K)), gram_eq_mul σ H (fun i => (b i : Fin n → K)), hcol,
    cT_mul]
  set B := Matrix.of fun p i => (b i : Fin n → K) p
  rw [show cT σ T * cT σ B * H * (B * T) = cT σ T * (cT σ B * H * B) * T by simp only [Matrix.mul_assoc]]
  simp only [Matrix.det_mul, det_cT]
  ring

theorem sign_basis [Valued K (WithZero (Multiplicative ℤ))] (σ : K →+* K)
    (hσ : ∀ x, Valued.v (σ x) = Valued.v x) {n : ℕ} (H : Matrix (Fin n) (Fin n) K)
    (W : Submodule K (Fin n → K)) {ι ι' : Type} [Fintype ι] [Fintype ι'] [DecidableEq ι] [DecidableEq ι']
    (b : Module.Basis ι K W) (b' : Module.Basis ι' K W) :
    (-1 : ℂ) ^ ordL (Matrix.of fun i j => hform σ H (b' i : Fin n → K) (b' j)).det =
      (-1 : ℂ) ^ ordL (Matrix.of fun i j => hform σ H (b i : Fin n → K) (b j)).det := by
  set e : ι' ≃ ι := b'.indexEquiv b
  have hsub : (Matrix.of fun i j => hform σ H ((b.reindex e.symm) i : Fin n → K) ((b.reindex e.symm) j)) =
      (Matrix.of fun i j => hform σ H (b i : Fin n → K) (b j)).submatrix e e := by
    ext i j
    simp [Module.Basis.reindex_apply]
  obtain ⟨d, hd, hdet⟩ := gram_det_change σ H W (b.reindex e.symm) b'
  rw [hdet, sign_mul_norm σ hσ hd, hsub, Matrix.det_submatrix_equiv_self]

theorem aeval_conj {n : ℕ} (Q : K[X]) (a k : GL (Fin n) K) :
    aeval (k⁻¹ * a * k).val Q = (k⁻¹).val * aeval a.val Q * k.val := by
  have hp : ∀ i : ℕ, ((k⁻¹ * a * k : GL (Fin n) K).val) ^ i = (k⁻¹).val * a.val ^ i * k.val := by
    intro i
    induction i with
    | zero => simp
    | succ i ih =>
      rw [pow_succ, ih, pow_succ]
      simp only [Units.val_mul, Matrix.mul_assoc, Units.mul_inv_cancel_left]
  rw [aeval_eq_sum_range, aeval_eq_sum_range]
  simp only [hp, Finset.mul_sum, Finset.sum_mul, Matrix.mul_smul, Matrix.smul_mul]

end GlobalTheory.UnitaryClasses.SgnConj

namespace GlobalTheory.UnitaryClasses.SgnConj

variable {K : Type} [Field K]

theorem ker_conj {n : ℕ} (Q : K[X]) (a k : GL (Fin n) K) :
    LinearMap.ker (Matrix.toLin' (aeval (k⁻¹ * a * k).val Q)) =
      (LinearMap.ker (Matrix.toLin' (aeval a.val Q))).comap (Matrix.toLin' k.val) := by
  ext x
  simp only [LinearMap.mem_ker, Submodule.mem_comap, Matrix.toLin'_apply, aeval_conj]
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]
  constructor
  · intro h
    have := congrArg (fun y => k.val *ᵥ y) h
    simpa [Matrix.mulVec_mulVec] using this
  · intro h
    rw [h, Matrix.mulVec_zero]

def invEquiv {n : ℕ} (k : GL (Fin n) K) : (Fin n → K) ≃ₗ[K] (Fin n → K) :=
  LinearEquiv.ofLinear (Matrix.toLin' (k⁻¹).val) (Matrix.toLin' k.val)
    (by rw [← Matrix.toLin'_mul, Units.inv_mul, Matrix.toLin'_one])
    (by rw [← Matrix.toLin'_mul, Units.mul_inv, Matrix.toLin'_one])

theorem map_invEquiv {n : ℕ} (Q : K[X]) (a k : GL (Fin n) K) :
    (LinearMap.ker (Matrix.toLin' (aeval a.val Q))).map (invEquiv k : (Fin n → K) →ₗ[K] (Fin n → K)) =
      LinearMap.ker (Matrix.toLin' (aeval (k⁻¹ * a * k).val Q)) := by
  rw [ker_conj, Submodule.map_equiv_eq_comap_symm]
  rfl

theorem sgnOn_conj : ∀ (K : Type) [Field K] [Valued K (WithZero (Multiplicative ℤ))] (σ : K →+* K),
    (∀ x, Valued.v (σ x) = Valued.v x) → ∀ (n : ℕ) (Q : K[X]) (a k : GL (Fin n) K),
    sgnOn σ 1 Q (k⁻¹ * a * k).val = sgnOn σ (cT σ (k⁻¹).val * (k⁻¹).val) Q a.val := by
  intro K _ _ σ hσ n Q a k
  set V := LinearMap.ker (Matrix.toLin' (aeval a.val Q))
  set V' := LinearMap.ker (Matrix.toLin' (aeval (k⁻¹ * a * k).val Q))
  let b0 := Module.finBasis K V
  let b'' : Module.Basis (Fin (Module.finrank K V)) K V' :=
    b0.map ((invEquiv k).ofSubmodules V V' (map_invEquiv Q a k))
  have hb'' : ∀ i, (b'' i : Fin n → K) = (k⁻¹).val *ᵥ (b0 i : Fin n → K) := by
    intro i
    simp [b'', Module.Basis.map_apply, LinearEquiv.ofSubmodules_apply, invEquiv]
  unfold sgnOn gramOn
  rw [sign_basis σ hσ 1 V' b'' (Module.finBasis K V')]
  congr 3
  rw [gram_eq_mul σ 1 (fun i => (b'' i : Fin n → K)), gram_eq_mul σ _ (fun i => (b0 i : Fin n → K))]
  simp only [hb'']
  rw [cols_mulVec, cT_mul]
  simp only [Matrix.mul_one, Matrix.mul_assoc]

end GlobalTheory.UnitaryClasses.SgnConj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SesquilinearDetOrdSignOnKernelConjGL =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SesquilinearDetOrdSignOnKernelConjGLStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SesquilinearDetOrdSignOnKernelConjGLStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SesquilinearDetOrdSignOnKernelConjGL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SesquilinearDetOrdSignOnKernelConjGLStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomialStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomialStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem _root_.GlobalTheory.T.isConjSelfReciprocal_of_dvd_elliptic_polynomial : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (P : E[X]), P ∈ Ell E n → ∀ Q : E[X], Q.Monic → Irreducible Q → Q ∣ P → GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.IsSelfRecip E Q.natDegree Q := by
  first | exact @GlobalTheory.SelfRecipFactor.isSelfRecip_of_dvd_ell
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomialStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTransposeMulPosDef =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTransposeMulPosDef", "h": "module\n\npublic import Formalism.SatakeDualWeyl.Statement\npublic import Mathlib.NumberTheory.NumberField.CMField\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.UnitaryClasses

theorem posDef_cT_inv_mul_inv (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (h : GL (Fin n) E)
    (τ : E →+* ℂ) :
    ((cT (IsCMField.complexConj E).toRingEquiv.toRingHom (h⁻¹).val * (h⁻¹).val).map τ).PosDef := by
  set B : Matrix (Fin n) (Fin n) E := (h⁻¹).val with hB
  have hc : (cT (IsCMField.complexConj E).toRingEquiv.toRingHom B).map τ = (B.map τ)ᴴ := by
    ext i j
    simp [cT, Matrix.conjTranspose_apply, IsCMField.complexEmbedding_complexConj]
  rw [Matrix.map_mul, hc]
  refine Matrix.PosDef.conjTranspose_mul_self _ (Matrix.mulVec_injective_of_isUnit ?_)
  have hu : IsUnit B := (h⁻¹).isUnit
  exact hu.map (RingHom.mapMatrix τ)

end GlobalTheory.UnitaryClasses
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTransposeMulPosDef =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.ConjTransposeMulPosDef =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.ConjTransposeMulPosDef", "h": "module\n\npublic import Formalism.SatakeDualWeyl.Statement\npublic import Mathlib.NumberTheory.NumberField.CMField\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTransposeMulPosDef\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
theorem _root_.GlobalTheory.T.conj_transpose_mul_posDef : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (h : GL (Fin n) E) (τ : E →+* ℂ), ((cT (IsCMField.complexConj E).toRingEquiv.toRingHom (h⁻¹).val * (h⁻¹).val).map τ).PosDef := by
  first | exact @GlobalTheory.UnitaryClasses.posDef_cT_inv_mul_inv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.ConjTransposeMulPosDef =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormSolutionFields =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormSolutionFields", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section
namespace GlobalTheory.NormAssemble

open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField

theorem cT_aeval {K : Type} [Field K] (σ : K →+* K) {n : ℕ} (M : Matrix (Fin n) (Fin n) K) (p : K[X]) :
    cT σ (aeval M p) = aeval (cT σ M) (p.map σ) := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq =>
    rw [map_add (f := _), Polynomial.map_add (f := _), map_add (f := _), ← hp, ← hq]
    ext i j; simp [cT]
  | monomial k a =>
    rw [Polynomial.map_monomial, aeval_monomial, aeval_monomial, Algebra.algebraMap_eq_smul_one,
      Algebra.algebraMap_eq_smul_one, smul_mul_assoc, one_mul, smul_mul_assoc, one_mul]
    have hp : ((M ^ k).map σ)ᵀ = ((M.map σ)ᵀ) ^ k := by
      rw [← Matrix.transpose_pow, ← RingHom.mapMatrix_apply, map_pow, RingHom.mapMatrix_apply]
    simp only [cT]
    ext i j; simp
    left; rw [← hp]; rfl

def toFld {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} (Q : SelfRecip E r) : E[X] →+* Fld Q :=
  AdjoinRoot.mk Q.1

def sr {E : Type} [Field E] [NumberField E] [IsCMField E] (Q : E[X]) (h : IsSelfRecip E Q.natDegree Q) :
    SelfRecip E Q.natDegree := ⟨Q, h⟩

theorem exists_norm_of_factors : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (γ : GL (Fin n) E), γ ∈ UE E n → γ.val.charpoly ∈ Ell E n → (∀ Q : E[X], Q.Monic → Irreducible Q → Q ∣ γ.val.charpoly → GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.IsSelfRecip E Q.natDegree Q) → ∀ m : E[X], (∀ (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r), Q.1 ∣ γ.val.charpoly → ∃ y : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q, y * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q y = (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q)) → ∃ c : Matrix (Fin n) (Fin n) E, c * γ.val = γ.val * c ∧ cT (IsCMField.complexConj E).toRingEquiv.toRingHom c * c = aeval γ.val m := by
  intro E _ _ _ n γ hγ hP hself m hy
  set σ : E →+* E := (IsCMField.complexConj E).toRingEquiv.toRingHom with hσ
  set P := γ.val.charpoly with hPdef
  have hPsep : P.Separable := hP.2.2.1
  have hP0 : P ≠ 0 := hP.1.ne_zero
  have hXP : IsCoprime X P := by
    rw [Polynomial.irreducible_X.coprime_iff_not_dvd]
    intro hX
    exact (hself X monic_X irreducible_X hX).2.2.2.1 (by simp)
  obtain ⟨a, b, hab⟩ := hXP
  have hCH : aeval γ.val P = 0 := Matrix.aeval_self_charpoly _
  have haγ : aeval γ.val a * γ.val = 1 := by
    have := congrArg (aeval γ.val) hab
    simpa [hCH] using this
  have hu : cT σ γ.val * γ.val = 1 := by
    have : cT σ γ.val * 1 * γ.val = 1 := hγ
    simpa using this
  have h1 : γ.val * (γ⁻¹).val = 1 := Units.mul_inv γ
  have hcTa : cT σ γ.val = aeval γ.val a := by
    calc cT σ γ.val = cT σ γ.val * γ.val * (γ⁻¹).val := by rw [Matrix.mul_assoc, h1, Matrix.mul_one]
      _ = aeval γ.val a * γ.val * (γ⁻¹).val := by rw [hu, haγ]
      _ = aeval γ.val a := by rw [Matrix.mul_assoc, h1, Matrix.mul_one]
  set S := (UniqueFactorizationMonoid.normalizedFactors P).toFinset with hS
  have hmem : ∀ Q ∈ S, Q.Monic ∧ Irreducible Q ∧ Q ∣ P := by
    intro Q hQ
    rw [hS, Multiset.mem_toFinset] at hQ
    have hirr := UniqueFactorizationMonoid.irreducible_of_normalized_factor Q hQ
    refine ⟨?_, hirr, UniqueFactorizationMonoid.dvd_of_mem_normalizedFactors hQ⟩
    have hn := UniqueFactorizationMonoid.normalize_normalized_factor Q hQ
    rw [← hn]; exact Polynomial.monic_normalize hirr.ne_zero
  have hcopS : (S : Set E[X]).Pairwise (Function.onFun IsCoprime fun Q : E[X] => Q) := by
    intro Q hQ Q' hQ' hne
    simp only [Function.onFun]
    rw [(hmem Q hQ).2.1.coprime_iff_not_dvd]
    intro hd
    exact hne (eq_of_monic_of_associated (hmem Q hQ).1 (hmem Q' hQ').1
      ((hmem Q hQ).2.1.associated_of_dvd (hmem Q' hQ').2.1 hd))
  have hsr : ∀ Q : S, IsSelfRecip E Q.1.natDegree Q.1 := fun Q =>
    hself Q.1 (hmem Q.1 Q.2).1 (hmem Q.1 Q.2).2.1 (hmem Q.1 Q.2).2.2
  have hloc : ∀ Q : S, ∃ fQ : E[X], toFld (sr Q.1 (hsr Q)) fQ *
      invol (sr Q.1 (hsr Q)) (toFld _ fQ) = toFld _ m := by
    intro Q
    obtain ⟨y, hy'⟩ := hy _ (sr Q.1 (hsr Q)) (hmem Q.1 Q.2).2.2
    obtain ⟨fQ, rfl⟩ := AdjoinRoot.mk_surjective y
    exact ⟨fQ, hy'⟩
  choose fQ hfQ using hloc
  have hcop : Pairwise (Function.onFun IsCoprime fun Q : S => Ideal.span {Q.1}) := by
    intro Q Q' hne
    simp only [Function.onFun]
    rw [Ideal.isCoprime_span_singleton_iff]
    exact hcopS Q.2 Q'.2 (fun h => hne (Subtype.ext h))
  obtain ⟨q, hq⟩ := Ideal.quotientInfToPiQuotient_surj hcop
    (fun Q => Ideal.Quotient.mk (Ideal.span {Q.1}) (fQ Q))
  obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective q
  have hf : ∀ Q : S, AdjoinRoot.mk Q.1 f = AdjoinRoot.mk Q.1 (fQ Q) := by
    intro Q
    have := congrFun hq Q
    rw [Ideal.quotientInfToPiQuotient_mk] at this
    exact this
  set g := (f.map σ).comp a * f - m with hg
  have hdiv : ∀ Q ∈ S, Q ∣ g := by
    intro Q hQ
    let Q' : SelfRecip E Q.natDegree := sr Q (hsr ⟨Q, hQ⟩)
    have hQP := (hmem Q hQ).2.2
    have ha : toFld Q' a = (alpha Q')⁻¹ := by
      have := congrArg (toFld Q') hab
      rw [map_add (f := _), map_mul, map_mul, map_one] at this
      have hX : toFld Q' X = alpha Q' := AdjoinRoot.mk_X
      have hPz : toFld Q' P = 0 := AdjoinRoot.mk_eq_zero.2 hQP
      rw [hX, hPz, mul_zero, add_zero] at this
      exact eq_inv_of_mul_eq_one_left this
    have hc : toFld Q' ((f.map σ).comp a) = invol Q' (toFld Q' f) := by
      change AdjoinRoot.mk Q'.1 ((f.map σ).comp a) = AdjoinRoot.lift _ _ (eval₂_conj_inv_root Q') (AdjoinRoot.mk Q'.1 f)
      rw [← AdjoinRoot.aeval_eq, aeval_comp, AdjoinRoot.aeval_eq, AdjoinRoot.lift_mk, aeval_def, eval₂_map]
      change eval₂ _ (toFld Q' a) f = _
      rw [ha]; rfl
    have hfQ' : toFld Q' (fQ ⟨Q, hQ⟩) * invol Q' (toFld Q' (fQ ⟨Q, hQ⟩)) = toFld Q' m := hfQ ⟨Q, hQ⟩
    have hf' : toFld Q' f = toFld Q' (fQ ⟨Q, hQ⟩) := hf ⟨Q, hQ⟩
    have : toFld Q' g = 0 := by
      rw [hg, map_sub, map_mul, hc, hf', mul_comm, hfQ', sub_self]
    exact AdjoinRoot.mk_eq_zero.1 this
  have hprod : (∏ Q ∈ S, Q) ∣ g := Finset.prod_dvd_of_coprime hcopS hdiv
  have hassoc : Associated (∏ Q ∈ S, Q) P := by
    have hnd := (UniqueFactorizationMonoid.squarefree_iff_nodup_normalizedFactors hP0).1 hPsep.squarefree
    rw [Finset.prod_eq_multiset_prod, hS, Multiset.toFinset_val, hnd.dedup, Multiset.map_id']
    exact UniqueFactorizationMonoid.prod_normalizedFactors hP0
  have hPg : P ∣ g := hassoc.symm.dvd.trans hprod
  obtain ⟨k, hk⟩ := hPg
  have hg0 : aeval γ.val g = 0 := by rw [hk, map_mul, hCH, zero_mul]
  refine ⟨aeval γ.val f, ?_, ?_⟩
  · rw [show γ.val * aeval γ.val f = aeval γ.val (X * f) by simp,
      show aeval γ.val f * γ.val = aeval γ.val (f * X) by simp, mul_comm]
  · rw [cT_aeval, hcTa, ← aeval_comp, ← map_mul]
    rw [hg, map_sub] at hg0
    exact sub_eq_zero.1 hg0

end GlobalTheory.NormAssemble
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormSolutionFields =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.ExistsNormSolutionFields =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.ExistsNormSolutionFields", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormSolutionFields\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
theorem _root_.GlobalTheory.T.exists_norm_solution_fields : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (γ : GL (Fin n) E), γ ∈ UE E n → γ.val.charpoly ∈ Ell E n → (∀ Q : E[X], Q.Monic → Irreducible Q → Q ∣ γ.val.charpoly → GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.IsSelfRecip E Q.natDegree Q) → ∀ m : E[X], (∀ (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r), Q.1 ∣ γ.val.charpoly → ∃ y : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q, y * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q y = (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q)) → ∃ c : Matrix (Fin n) (Fin n) E, c * γ.val = γ.val * c ∧ cT (IsCMField.complexConj E).toRingEquiv.toRingHom c * c = aeval γ.val m := by
  first | exact @GlobalTheory.NormAssemble.exists_norm_of_factors
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.ExistsNormSolutionFields =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlobalNormOfLocalNorms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlobalNormOfLocalNorms", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsInfiniteDecomp\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DetGramRatOneNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.HasseFld

open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField

theorem isValue_of_local {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ}
    (Q : SelfRecip E r) {θ : E} (h0 : θ ≠ 0) (hθ : IsCMField.complexConj E θ = -θ) {d : plus Q}
    (hd : (d : Fld Q) = algebraMap E _ θ * algebraMap E _ θ)
    (k : Type) [Field k] [Algebra (maximalRealSubfield E) k]
    (x : plus Q) (hx : x ≠ 0) (z : k ⊗[maximalRealSubfield E] Fld Q)
    (hz : z * involBase Q k z = 1 ⊗ₜ (x : Fld Q)) :
    GlobalTheory.TraceClasses.IsValue (1 ⊗ₜ d) (1 ⊗ₜ x : k ⊗[maximalRealSubfield E] plus Q) := by
  let U : (k ⊗[maximalRealSubfield E] plus Q)ˣ :=
    Units.map (Algebra.TensorProduct.includeRight :
      plus Q →ₐ[maximalRealSubfield E] k ⊗[maximalRealSubfield E] plus Q).toMonoidHom (Units.mk0 x hx)
  have hU : (U : k ⊗[maximalRealSubfield E] plus Q) = 1 ⊗ₜ x := rfl
  have hi : inclPlus Q k (1 ⊗ₜ x) = 1 ⊗ₜ (x : Fld Q) := by simp [inclPlus]
  have hzu : IsUnit z := by
    have : IsUnit (z * involBase Q k z) := by
      rw [hz, ← hi, ← hU]; exact U.isUnit.map _
    exact isUnit_of_mul_isUnit_left this
  have hmem : U ∈ norms Q k := ⟨hzu.unit, Units.ext (by
      change z * involBase Q k z = inclPlus Q k (U : _)
      rw [hz, hU, hi])⟩
  rw [← hU]
  exact (GlobalTheory.TraceClasses.mem_norms_iff Q h0 hθ k hd U).1 hmem

theorem hasse_norm : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (r : ℕ)
    (Q : SelfRecip E r) (x : Fld Q), invol Q x = x →
    (∀ v : HeightOneSpectrum (𝓞 (maximalRealSubfield E)),
      ∃ z : v.adicCompletion (maximalRealSubfield E) ⊗[maximalRealSubfield E] Fld Q,
        z * involBase Q _ z = 1 ⊗ₜ x) →
    (∀ v : InfinitePlace (maximalRealSubfield E),
      ∃ z : v.Completion ⊗[maximalRealSubfield E] Fld Q, z * involBase Q _ z = 1 ⊗ₜ x) →
    ∃ y : Fld Q, y * invol Q y = x := by
  intro E _ _ _ r Q x hxx hf hi
  by_cases hx : x = 0
  · exact ⟨0, by simp [hx]⟩
  obtain ⟨θ, h0, hθ⟩ : ∃ θ : E, θ ≠ 0 ∧ IsCMField.complexConj E θ = -θ := by
    obtain ⟨w, hw⟩ : ∃ w : E, IsCMField.complexConj E w ≠ w := by
      by_contra h
      push_neg at h
      exact IsCMField.complexConj_ne_one E (AlgEquiv.ext h)
    exact ⟨w - IsCMField.complexConj E w, sub_ne_zero.mpr hw.symm, by simp⟩
  let x' : plus Q := ⟨x, hxx⟩
  have hx' : x' ≠ 0 := fun h => hx (congrArg Subtype.val h)
  let d : plus Q := ⟨algebraMap E _ θ * algebraMap E _ θ, by
    show invol Q _ = (AlgHom.id _ _) _
    rw [map_mul, GlobalTheory.TraceClasses.invol_theta Q hθ]
    simp⟩
  have hd : (d : Fld Q) = algebraMap E _ θ * algebraMap E _ θ := rfl
  obtain ⟨e, e0, e1⟩ := GlobalTheory.TraceClasses.exists_basis_theta Q h0 hθ
  have := GlobalTheory.TraceClasses.isQuadraticExtension Q h0 hθ
  have e2 : e 1 * e 1 = algebraMap _ _ d := by rw [e1]; exact hd.symm
  obtain ⟨a, b, hab⟩ := GlobalTheory.TraceClasses.form_of_local (F := maximalRealSubfield E) e e0 e2
    (Units.mk0 x' hx')
    (fun v => by
      obtain ⟨z, hz⟩ := hf v
      exact isValue_of_local Q h0 hθ hd _ x' hx' z hz)
    (fun v => by
      obtain ⟨z, hz⟩ := hi v
      exact isValue_of_local Q h0 hθ hd _ x' hx' z hz)
  refine ⟨a + b * algebraMap E _ θ, ?_⟩
  have hx2 : x = (a : Fld Q) ^ 2 - d * b ^ 2 := by
    have := congrArg Subtype.val hab
    simpa using this
  rw [map_add (f := _), map_mul, GlobalTheory.TraceClasses.invol_coe, GlobalTheory.TraceClasses.invol_coe,
    GlobalTheory.TraceClasses.invol_theta Q hθ, hx2, hd]
  ring

end GlobalTheory.HasseFld
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlobalNormOfLocalNorms =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.GlobalNormOfLocalNorms =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.GlobalNormOfLocalNorms", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlobalNormOfLocalNorms\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
theorem _root_.GlobalTheory.T.global_norm_of_local_norms : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r) (x : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q), GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q x = x → (∀ v : HeightOneSpectrum (𝓞 (maximalRealSubfield E)), ∃ z : v.adicCompletion (maximalRealSubfield E) ⊗[maximalRealSubfield E] GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q, z * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q _ z = 1 ⊗ₜ x) → (∀ v : InfinitePlace (maximalRealSubfield E), ∃ z : v.Completion ⊗[maximalRealSubfield E] GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q, z * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q _ z = 1 ⊗ₜ x) → ∃ y : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q, y * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q y = x := by
  first | exact @GlobalTheory.HasseFld.hasse_norm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.GlobalNormOfLocalNorms =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvolutionFixesPolynomialImage =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvolutionFixesPolynomialImage", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
noncomputable section

namespace GlobalTheory.NormHasseFixed

theorem cT_aeval {K : Type} [Field K] (σ : K →+* K) {n : ℕ} (A : Matrix (Fin n) (Fin n) K) (p : K[X]) :
    cT σ (aeval A p) = aeval (cT σ A) (p.map σ) := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq =>
    rw [map_add (f := _), Polynomial.map_add (f := _), map_add (f := _), ← hp, ← hq]
    ext i j; simp [cT]
  | monomial k a =>
    rw [Polynomial.map_monomial, aeval_monomial, aeval_monomial, ← Algebra.smul_def, ← Algebra.smul_def]
    unfold cT
    rw [Matrix.map_smul' _ _ _ (fun x y => map_mul σ x y), Matrix.map_pow, Matrix.transpose_smul, Matrix.transpose_pow]

theorem aeval_mulVec {K L : Type} [Field K] [Field L] [Algebra K L] {n : ℕ} (N : Matrix (Fin n) (Fin n) L)
    (μ : L) (v : Fin n → L) (hv : N *ᵥ v = μ • v) (p : K[X]) : (aeval N p) *ᵥ v = aeval μ p • v := by
  have hpow : ∀ k : ℕ, (N ^ k) *ᵥ v = μ ^ k • v := by
    intro k
    induction k with
    | zero => simp
    | succ k ih => rw [pow_succ', ← Matrix.mulVec_mulVec, ih, Matrix.mulVec_smul, hv, smul_smul, pow_succ]
  induction p using Polynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), Matrix.add_mulVec, hp, hq, add_smul]
  | monomial k a =>
    rw [aeval_monomial, aeval_monomial, ← Algebra.smul_def, ← Algebra.smul_def, Matrix.smul_mulVec, hpow,
      smul_assoc]

theorem aeval_inv_map_eq {E : Type} [Field E] (σ : E →+* E) {n : ℕ} (γ : GL (Fin n) E)
    (hγ : cT σ γ.val * 1 * γ.val = 1) (m : E[X]) (hm : cT σ (aeval γ.val m) = aeval γ.val m)
    {L : Type} [Field L] [Algebra E L] (α : L) (hα0 : α ≠ 0) (hroot : aeval α γ.val.charpoly = 0) :
    aeval α⁻¹ (m.map σ) = aeval α m := by
  have hU' : cT σ γ.val = (γ⁻¹).val := by
    have h := congrArg (· * (γ⁻¹).val) hγ
    simpa [Matrix.mul_assoc] using h
  rw [aeval_def, ← eval_map, ← Matrix.charpoly_map, Matrix.eval_charpoly] at hroot
  obtain ⟨v, hv0, hv⟩ := Matrix.exists_mulVec_eq_zero_iff.2 hroot
  have hAv : (γ.val.map (algebraMap E L)) *ᵥ v = α • v := by
    rw [Matrix.sub_mulVec, sub_eq_zero] at hv
    rw [← hv]
    ext i
    simp [Matrix.scalar_apply, Matrix.mulVec_diagonal]
  have hBA : ((γ⁻¹).val.map (algebraMap E L)) * (γ.val.map (algebraMap E L)) = 1 := by
    rw [← Matrix.map_mul, Units.inv_mul, Matrix.map_one _ (map_zero _) (map_one _)]
  have hBv : ((γ⁻¹).val.map (algebraMap E L)) *ᵥ v = α⁻¹ • v := by
    have h : ((γ⁻¹).val.map (algebraMap E L)) *ᵥ ((γ.val.map (algebraMap E L)) *ᵥ v) = v := by
      rw [Matrix.mulVec_mulVec, hBA, Matrix.one_mulVec]
    rw [hAv, Matrix.mulVec_smul] at h
    conv_rhs => rw [← h, smul_smul, inv_mul_cancel₀ hα0, one_smul]
  have hmap : ∀ (M : Matrix (Fin n) (Fin n) E) (p : E[X]),
      (aeval M p).map (algebraMap E L) = aeval (M.map (algebraMap E L)) p := by
    intro M p
    have h := aeval_algHom_apply (AlgHom.mapMatrix (Algebra.ofId E L)) M p
    have e : (⇑(Algebra.ofId E L) : E → L) = algebraMap E L := rfl
    simpa [AlgHom.mapMatrix_apply, e] using h.symm
  have h1 : (cT σ (aeval γ.val m)).map (algebraMap E L) *ᵥ v = (aeval γ.val m).map (algebraMap E L) *ᵥ v := by
    rw [hm]
  rw [cT_aeval, hU', hmap, hmap, aeval_mulVec _ _ v hBv, aeval_mulVec _ _ v hAv] at h1
  exact smul_left_injective L hv0 h1


open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField in
theorem invol_mk_eq : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (γ : GL (Fin n) E), γ ∈ UE E n → γ.val.charpoly ∈ Ell E n → ∀ m : E[X], cT (IsCMField.complexConj E).toRingEquiv.toRingHom (aeval γ.val m) = aeval γ.val m → ∀ (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r), Q.1 ∣ γ.val.charpoly → GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) = (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) := by
  intro E _ _ _ n γ hγ _ m hm r Q hQ
  have hγ' : cT (IsCMField.complexConj E).toRingEquiv.toRingHom γ.val * 1 * γ.val = 1 := hγ
  have hroot : aeval (AdjoinRoot.root Q.1) γ.val.charpoly = 0 := by
    obtain ⟨c, hc⟩ := hQ
    rw [hc, map_mul, AdjoinRoot.aeval_eq, AdjoinRoot.mk_self, zero_mul]
  have h := aeval_inv_map_eq (IsCMField.complexConj E).toRingEquiv.toRingHom γ hγ' m hm (AdjoinRoot.root Q.1) (root_ne_zero Q) hroot
  rw [aeval_def, eval₂_map, AdjoinRoot.aeval_eq] at h
  refine Eq.trans ?_ h
  show AdjoinRoot.lift ((AdjoinRoot.of Q.1).comp (IsCMField.complexConj E : E →+* E)) (AdjoinRoot.root Q.1)⁻¹
    (eval₂_conj_inv_root Q) (AdjoinRoot.mk Q.1 m) = _
  rw [AdjoinRoot.lift_mk]
  rfl

end GlobalTheory.NormHasseFixed
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvolutionFixesPolynomialImage =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.InvolutionFixesPolynomialImage =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.InvolutionFixesPolynomialImage", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvolutionFixesPolynomialImage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
theorem _root_.GlobalTheory.T.involution_fixes_polynomial_image : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (γ : GL (Fin n) E), γ ∈ UE E n → γ.val.charpoly ∈ Ell E n → ∀ m : E[X], cT (IsCMField.complexConj E).toRingEquiv.toRingHom (aeval γ.val m) = aeval γ.val m → ∀ (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r), Q.1 ∣ γ.val.charpoly → GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) = (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) := by
  first | exact @GlobalTheory.NormHasseFixed.invol_mk_eq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.InvolutionFixesPolynomialImage =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalNormAtSplitPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalNormAtSplitPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsInfiniteDecomp\nimport Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\nimport Mathlib.Algebra.Azumaya.Basic\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.LocalNormSplit

theorem exists_sq_of_split (E : Type) [Field E] [NumberField E] [IsCMField E]
    (θ : E) (hθ0 : θ ≠ 0) (hθ : IsCMField.complexConj E θ = -θ)
    (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E)))
    (hv : ∃ w w' : HeightOneSpectrum (𝓞 E), w ≠ w' ∧ w.under (𝓞 (maximalRealSubfield E)) = v ∧
      w'.under (𝓞 (maximalRealSubfield E)) = v)
    (d : maximalRealSubfield E) (hd : (d : E) = θ * θ) :
    ∃ s : v.adicCompletion (maximalRealSubfield E),
      s * s = algebraMap (maximalRealSubfield E) (v.adicCompletion (maximalRealSubfield E)) d := by
  classical
  by_contra hns
  push_neg at hns
  obtain ⟨w, w', hne, hw, hw'⟩ := hv
  obtain ⟨ψ, -, hb, -⟩ := GlobalTheory.TraceClasses.exists_finite_decomp (maximalRealSubfield E) E
  have hθF : ∀ a : maximalRealSubfield E, (a : E) ≠ θ := by
    intro a ha
    have h1 : IsCMField.complexConj E (a : E) = a := (IsCMField.complexConj_eq_self_iff E _).2 a.2
    rw [ha, hθ] at h1
    exact hθ0 (by linear_combination -h1 / 2)
  have hli : LinearIndependent (maximalRealSubfield E) ![(1 : E), θ] := by
    rw [LinearIndependent.pair_iff]
    intro p q hpq
    by_cases hq : q = 0
    · subst hq
      simpa using hpq
    · exfalso
      refine hθF (-p / q) ?_
      rw [Algebra.smul_def, Algebra.smul_def, mul_one] at hpq
      have hq' : (q : E) ≠ 0 := by simpa using hq
      change ((-p / q : maximalRealSubfield E) : E) = θ
      push_cast
      field_simp
      rw [show algebraMap _ E p = p from rfl, show algebraMap _ E q = q from rfl] at hpq
      linear_combination -hpq
  let b := basisOfLinearIndependentOfCardEqFinrank hli
    (by rw [Fintype.card_fin, Algebra.IsQuadraticExtension.finrank_eq_two])
  set K := v.adicCompletion (maximalRealSubfield E)
  let bA := Algebra.TensorProduct.basis K b
  let t : K ⊗[maximalRealSubfield E] E := 1 ⊗ₜ θ
  have hb0 : bA 0 = 1 := by
    simp [bA, b, Algebra.TensorProduct.basis_apply, Algebra.TensorProduct.one_def]
  have hb1 : bA 1 = t := by
    simp [bA, b, Algebra.TensorProduct.basis_apply, t]
  have li : ∀ p q : K, algebraMap K _ p + algebraMap K _ q * t = 0 → p = 0 ∧ q = 0 := by
    intro p q h
    have := Fintype.linearIndependent_iff.1 bA.linearIndependent ![p, q] (by
      rw [Fin.sum_univ_two, hb0, hb1]
      simpa [Algebra.smul_def] using h)
    exact ⟨by simpa using this 0, by simpa using this 1⟩
  have sp : ∀ y, y = algebraMap K _ (bA.repr y 0) + algebraMap K _ (bA.repr y 1) * t := by
    intro y
    conv_lhs => rw [← bA.sum_repr y]
    rw [Fin.sum_univ_two, hb0, hb1, Algebra.smul_def, Algebra.smul_def, mul_one]
  have htt : t * t = algebraMap K _ (algebraMap (maximalRealSubfield E) K d) := by
    rw [← IsScalarTower.algebraMap_apply]
    change (1 : K) ⊗ₜ θ * (1 : K) ⊗ₜ θ = _
    rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul, ← hd]
    exact (Algebra.TensorProduct.includeRight.commutes d)
  let W := {u : HeightOneSpectrum (𝓞 E) // u.under (𝓞 (maximalRealSubfield E)) = v}
  let w₀ : W := ⟨w, hw⟩
  let w₁ : W := ⟨w', hw'⟩
  have h01 : w₀ ≠ w₁ := fun h => hne (congrArg Subtype.val h)
  let e₀ : ∀ u : W, u.1.adicCompletion E := Pi.single (M := fun u : W => u.1.adicCompletion E) w₀ 1
  let e₁ : ∀ u : W, u.1.adicCompletion E := Pi.single (M := fun u : W => u.1.adicCompletion E) w₁ 1
  obtain ⟨u₀, hu₀⟩ := (hb v).2 e₀
  obtain ⟨u₁, hu₁⟩ := (hb v).2 e₁
  have hprod : u₀ * u₁ = 0 := by
    apply (hb v).1
    funext u
    simp only [map_mul, map_zero]
    rw [show ψ v u u₀ = e₀ u from congrFun hu₀ u, show ψ v u u₁ = e₁ u from congrFun hu₁ u]
    by_cases h : u = w₀
    · subst h
      simp [e₁, h01]
    · simp [e₀, h]
  have hn₀ : u₀ ≠ 0 := by
    rintro rfl
    have := congrFun hu₀ w₀
    simp [e₀] at this
  have hn₁ : u₁ ≠ 0 := by
    rintro rfl
    have := congrFun hu₁ w₁
    simp [e₁] at this
  obtain ⟨a, b', hu0⟩ : ∃ a b' : K, u₀ = algebraMap K _ a + algebraMap K _ b' * t := ⟨_, _, sp u₀⟩
  obtain ⟨c, e, hu1⟩ : ∃ c e : K, u₁ = algebraMap K _ c + algebraMap K _ e * t := ⟨_, _, sp u₁⟩
  set d' := algebraMap (maximalRealSubfield E) K d
  have ha : ¬ (a = 0 ∧ b' = 0) := by
    rintro ⟨h1, h2⟩
    apply hn₀
    rw [hu0, h1, h2]
    simp
  have hc : ¬ (c = 0 ∧ e = 0) := by
    rintro ⟨h1, h2⟩
    apply hn₁
    rw [hu1, h1, h2]
    simp
  have heq := li (a * c + d' * b' * e) (a * e + b' * c) (by
    rw [← hprod, hu0, hu1]
    simp only [map_add (f := _), map_mul]
    linear_combination (-(algebraMap K _ b' * algebraMap K _ e)) * htt)
  have hz : c * c - d' * e * e = 0 := by
    by_contra hz
    apply ha
    constructor
    · refine (mul_eq_zero.1 (?_ : a * (c * c - d' * e * e) = 0)).resolve_right hz
      linear_combination c * heq.1 - d' * e * heq.2
    · refine (mul_eq_zero.1 (?_ : b' * (c * c - d' * e * e) = 0)).resolve_right hz
      linear_combination -(e * heq.1) + c * heq.2
  by_cases he : e = 0
  · apply hc
    refine ⟨?_, he⟩
    rw [he] at hz
    simpa using hz
  · apply hns (c / e)
    field_simp
    linear_combination hz

theorem exists_norm_of_split : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r) (x : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q), GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q x = x → ∀ v : HeightOneSpectrum (𝓞 (maximalRealSubfield E)), (∃ w w' : Pl E, w ≠ w' ∧ w.under (𝓞 (maximalRealSubfield E)) = v ∧ w'.under (𝓞 (maximalRealSubfield E)) = v) → ∃ z : v.adicCompletion (maximalRealSubfield E) ⊗[maximalRealSubfield E] GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q, z * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q _ z = 1 ⊗ₜ x := by
  intro E _ _ _ r Q x hx v hv
  obtain ⟨θ, hθ0, hθ⟩ := GlobalTheory.Published.exists_cc_eq_neg E
  have hθ' : IsCMField.complexConj E θ = -θ := hθ
  have hdmem : θ * θ ∈ maximalRealSubfield E :=
    (IsCMField.complexConj_eq_self_iff E _).1 (by rw [map_mul, hθ']; ring)
  let K := v.adicCompletion (maximalRealSubfield E)
  obtain ⟨d, hd⟩ : ∃ d : maximalRealSubfield E, (d : E) = θ * θ := ⟨⟨_, hdmem⟩, rfl⟩
  obtain ⟨s, hs⟩ := exists_sq_of_split E θ hθ0 hθ' v hv d hd
  let B := K ⊗[maximalRealSubfield E] GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q
  have hs0 : s ≠ 0 := by
    intro h0
    rw [h0, mul_zero, eq_comm] at hs
    have h1 := (_root_.map_eq_zero (algebraMap (maximalRealSubfield E) K)).1 hs
    rw [h1] at hd
    exact hθ0 (mul_self_eq_zero.1 (by simpa using hd.symm))
  let uT : B := 1 ⊗ₜ algebraMap E _ θ
  have hTT : uT * uT = algebraMap K B (s * s) := by
    rw [hs, ← IsScalarTower.algebraMap_apply]
    change (1 : K) ⊗ₜ algebraMap E _ θ * (1 : K) ⊗ₜ algebraMap E _ θ = _
    rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul, ← map_mul, ← hd,
      show (d : E) = algebraMap (maximalRealSubfield E) E d from rfl,
      ← IsScalarTower.algebraMap_apply]
    exact (Algebra.TensorProduct.includeRight.commutes _)
  let uc : B := algebraMap K B s⁻¹ * uT
  have hc : uc * uc = 1 := by
    have : uc * uc = algebraMap K B (s⁻¹ * s⁻¹ * (s * s)) := by
      rw [map_mul, map_mul, ← hTT]; ring
    rw [this, show s⁻¹ * s⁻¹ * (s * s) = 1 by rw [← mul_inv, inv_mul_cancel₀ (mul_ne_zero hs0 hs0)], map_one]
  have hiT : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q K uT = -uT := by
    change Algebra.TensorProduct.map _ _ ((1 : K) ⊗ₜ algebraMap E _ θ) = _
    rw [Algebra.TensorProduct.map_tmul, AlgHom.id_apply, GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol_algebraMap, hθ',
      map_neg, TensorProduct.tmul_neg]
  have hic : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q K uc = -uc := by
    change GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q K (algebraMap K B s⁻¹ * uT) = -(algebraMap K B s⁻¹ * uT)
    rw [map_mul, AlgHom.commutes, hiT, mul_neg]
  have hiX : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q K (1 ⊗ₜ x) = 1 ⊗ₜ x := by
    change Algebra.TensorProduct.map _ _ ((1 : K) ⊗ₜ x) = _
    rw [Algebra.TensorProduct.map_tmul, AlgHom.id_apply, hx]
  have h2K : (2 : K) ≠ 0 := by
    rw [← map_ofNat (algebraMap (maximalRealSubfield E) K) 2]
    exact (_root_.map_ne_zero _).2 two_ne_zero
  let hf : B := algebraMap K B 2⁻¹
  have hh : hf * 2 = 1 := by
    rw [← map_ofNat (algebraMap K B) 2, ← map_mul, inv_mul_cancel₀ h2K, map_one]
  have hih : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q K hf = hf := AlgHom.commutes _ _
  refine ⟨hf * (1 + uc) * (1 ⊗ₜ x) + hf * (1 - uc), ?_⟩
  rw [map_add (f := _), map_mul, map_mul, map_mul, map_add (f := _), map_sub, map_one, hic, hiX, hih]
  linear_combination (hf ^ 2 * (2 * (1 ⊗ₜ x : B) - (1 ⊗ₜ x : B) ^ 2 - 1)) * hc + ((2 * hf + 1) * (1 ⊗ₜ x : B)) * hh

end GlobalTheory.LocalNormSplit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalNormAtSplitPlace =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.LocalNormAtSplitPlace =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.LocalNormAtSplitPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalNormAtSplitPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
theorem _root_.GlobalTheory.T.local_norm_at_split_place : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r) (x : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q), GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q x = x → ∀ v : HeightOneSpectrum (𝓞 (maximalRealSubfield E)), (∃ w w' : Pl E, w ≠ w' ∧ w.under (𝓞 (maximalRealSubfield E)) = v ∧ w'.under (𝓞 (maximalRealSubfield E)) = v) → ∃ z : v.adicCompletion (maximalRealSubfield E) ⊗[maximalRealSubfield E] GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q, z * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q _ z = 1 ⊗ₜ x := by
  first | exact @GlobalTheory.LocalNormSplit.exists_norm_of_split
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.LocalNormAtSplitPlace =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitCentraliserNormElement =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitCentraliserNormElement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonsplitCentraliserNormElement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
theorem _root_.GlobalTheory.T.nonsplit_centraliser_norm_element : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (n : ℕ) (γ : GL (Fin n) E), γ ∈ UE E n → γ.val.charpoly ∈ Ell E n → ∀ m : E[X], (∀ w : Pl E, ¬ IsSplitAt w → ∃ c : Matrix (Fin n) (Fin n) (w.adicCompletion E), c * (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ).val = (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ).val * c ∧ cT (cj w) c * c = (aeval γ.val m).map (algebraMap E (w.adicCompletion E))) → ∀ (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r), Q.1 ∣ γ.val.charpoly → GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) = (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) → ∀ v : HeightOneSpectrum (𝓞 (maximalRealSubfield E)), (∀ w w' : Pl E, w.under (𝓞 (maximalRealSubfield E)) = v → w'.under (𝓞 (maximalRealSubfield E)) = v → w = w') → ∃ z : v.adicCompletion (maximalRealSubfield E) ⊗[maximalRealSubfield E] GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q, z * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q _ z = 1 ⊗ₜ (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) := by
  first | exact @GlobalTheory.NormInert.main
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitCentraliserNormElement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotallyPositiveRealPlaces =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotallyPositiveRealPlaces", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DetGramRatOneNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.RealPlaceNorms

open GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField NumberField.InfinitePlace.Completion

theorem aeval_mulVec_of_eigen {n : ℕ} (A : Matrix (Fin n) (Fin n) ℂ) (v : Fin n → ℂ) (z : ℂ)
    (h : A *ᵥ v = z • v) (p : ℂ[X]) : (aeval A p) *ᵥ v = p.eval z • v := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq => simp [add_mulVec, hp, hq, add_smul]
  | monomial k a =>
    have hk : (A ^ k) *ᵥ v = z ^ k • v := by
      induction k with
      | zero => simp
      | succ k ih => rw [pow_succ, ← mulVec_mulVec, h, mulVec_smul, ih, smul_smul, pow_succ, mul_comm]
    rw [aeval_monomial, Algebra.algebraMap_eq_smul_one, smul_mul_assoc, one_mul, smul_mulVec,
      hk, smul_smul, eval_monomial]

theorem pos_of_posDef {n : ℕ} {M : Matrix (Fin n) (Fin n) ℂ} (hM : M.PosDef) {v : Fin n → ℂ}
    (hv : v ≠ 0) {c : ℂ} (h : M *ᵥ v = c • v) : 0 < c := by
  have h1 := hM.dotProduct_mulVec_pos hv
  rw [h, dotProduct_smul, smul_eq_mul] at h1
  have h2 : 0 < star v ⬝ᵥ v := dotProduct_star_self_pos_iff.2 hv
  rw [Complex.lt_def] at h1 h2 ⊢
  obtain ⟨a1, a2⟩ := h1
  obtain ⟨b1, b2⟩ := h2
  simp only [Complex.zero_re, Complex.zero_im, Complex.mul_re, Complex.mul_im] at a1 a2 b1 b2 ⊢
  rw [← b2] at a1 a2
  have hi : c.im = 0 := by
    have : c.im * (star v ⬝ᵥ v).re = 0 := by linarith
    exact (mul_eq_zero.1 this).resolve_right b1.ne'
  refine ⟨?_, hi.symm⟩
  rw [hi] at a1
  have : 0 < c.re * (star v ⬝ᵥ v).re := by linarith
  exact (pos_iff_pos_of_mul_pos this).2 b1

theorem map_aeval {E : Type} [Field E] {n : ℕ} (γ : Matrix (Fin n) (Fin n) E) (m : E[X]) (τ : E →+* ℂ) :
    (aeval γ m).map τ = aeval (γ.map τ) (m.map τ) := by
  rw [← RingHom.mapMatrix_apply, aeval_def, hom_eval₂, aeval_def, eval₂_map]
  congr 1
  ext a i j
  by_cases h : i = j <;> simp [Matrix.algebraMap_matrix_apply, h]

section Fld

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} (Q : SelfRecip E r)

theorem pos_at_embedding {n : ℕ} (γ : Matrix (Fin n) (Fin n) E) (m : E[X])
    (hpos : ∀ τ : E →+* ℂ, ((aeval γ m).map τ).PosDef) (hdvd : Q.1 ∣ γ.charpoly)
    (x : plus Q) (hx : (x : Fld Q) = AdjoinRoot.mk Q.1 m) (φ : plus Q →+* ℂ) : 0 < φ x := by
  letI : Algebra (plus Q) ℂ := φ.toAlgebra
  haveI : Module.Finite (plus Q) (Fld Q) :=
    Module.Finite.of_restrictScalars_finite (maximalRealSubfield E) (plus Q) (Fld Q)
  haveI : Module.IsTorsionFree (plus Q) ℂ := DivisionSemiring.to_moduleIsTorsionFree
  haveI : Module.IsTorsionFree (plus Q) (Fld Q) := DivisionSemiring.to_moduleIsTorsionFree
  let ρ : Fld Q →ₐ[plus Q] ℂ := (by
    refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
    solve_by_elim* (maxDepth := 2) only [*,
      @_root_.DivisionSemiring.to_moduleIsTorsionFree,
      @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
  have hρx : ρ (x : Fld Q) = φ x := ρ.commutes x
  let τ : E →+* ℂ := (ρ : Fld Q →+* ℂ).comp (algebraMap E (Fld Q))
  have hev : ∀ p : E[X], (p.map τ).eval (ρ (AdjoinRoot.root Q.1)) = ρ (AdjoinRoot.mk Q.1 p) := by
    intro p
    rw [eval_map, ← AdjoinRoot.aeval_eq, aeval_def]
    exact (Polynomial.hom_eval₂ p (algebraMap E (Fld Q)) (ρ : Fld Q →+* ℂ) (AdjoinRoot.root Q.1)).symm
  set z := ρ (AdjoinRoot.root Q.1)
  have hroot : ((γ.map τ).charpoly).eval z = 0 := by
    obtain ⟨g, hg⟩ := hdvd
    have h0 : (AdjoinRoot.mk Q.1 Q.1 : Fld Q) = 0 := AdjoinRoot.mk_self
    rw [Matrix.charpoly_map, hg, Polynomial.map_mul, eval_mul, hev, h0]
    exact mul_eq_zero_of_left (map_zero ρ) _
  rw [Matrix.eval_charpoly] at hroot
  obtain ⟨v, hv, hv0⟩ := Matrix.exists_mulVec_eq_zero_iff.2 hroot
  have hγv : (γ.map τ) *ᵥ v = z • v := by
    rw [Matrix.sub_mulVec, Matrix.scalar_apply, ← Matrix.smul_one_eq_diagonal, Matrix.smul_mulVec,
      Matrix.one_mulVec, sub_eq_zero] at hv0
    exact hv0.symm
  have hM : ((aeval γ m).map τ) *ᵥ v = φ x • v := by
    rw [map_aeval, aeval_mulVec_of_eigen _ v z hγv, hev, ← hx, hρx]
  exact pos_of_posDef (hpos τ) hv hM

end Fld

theorem exists_mul_self_of_pos {K : Type} [Field K] [NumberField K] (w : InfinitePlace K) (t : K)
    (ht : 0 < w.embedding t) : ∃ a : w.Completion, a * a = algebraMap K w.Completion t := by
  obtain ⟨h1, h2⟩ := Complex.lt_def.1 ht
  simp only [Complex.zero_re, Complex.zero_im] at h1 h2
  have hre : w.embedding t = ((w.embedding t).re : ℂ) := Complex.ext (by simp) (by simp [← h2])
  have key : ∃ a : w.Completion, extensionEmbedding w a = (Real.sqrt (w.embedding t).re : ℂ) := by
    by_cases hw : w.IsReal
    · refine ⟨(ringEquivRealOfIsReal hw).symm (Real.sqrt (w.embedding t).re), ?_⟩
      rw [← extensionEmbeddingOfIsReal_apply hw, ← ringEquivRealOfIsReal_apply,
        RingEquiv.apply_symm_apply]
    · exact surjective_extensionEmbedding_of_isComplex (InfinitePlace.not_isReal_iff_isComplex.1 hw) _
  obtain ⟨a, ha⟩ := key
  refine ⟨a, (extensionEmbedding w).injective ?_⟩
  rw [map_mul, ha, ← Complex.ofReal_mul, Real.mul_self_sqrt h1.le, ← hre]
  rw [NumberField.InfinitePlace.Completion.algebraMap_apply]
  change w.embedding t = extensionEmbedding w ((WithAbs.toAbs w.1 t : WithAbs w.1) : w.Completion)
  rw [extensionEmbedding_coe]
  simp

theorem exists_norm_at_infinite : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ)
    (γ : GL (Fin n) E), γ ∈ UE E n → γ.val.charpoly ∈ Ell E n → ∀ m : E[X],
    (∀ τ : E →+* ℂ, ((aeval γ.val m).map τ).PosDef) → ∀ (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r),
    Q.1 ∣ γ.val.charpoly →
    GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) =
      (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) →
    ∀ v : InfinitePlace (maximalRealSubfield E),
      ∃ z : v.Completion ⊗[maximalRealSubfield E] GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q,
        z * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q _ z = 1 ⊗ₜ (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) := by
  intro E _ _ _ n γ _ _ m hpos r Q hdvd hfix v
  let x : plus Q := ⟨AdjoinRoot.mk Q.1 m, hfix⟩
  obtain ⟨ψ, h1, hb⟩ := GlobalTheory.TraceClasses.exists_infinite_decomp (maximalRealSubfield E) (plus Q)
  have hroot : ∀ w : {w : InfinitePlace (plus Q) // w.comap (algebraMap (maximalRealSubfield E) (plus Q)) = v},
      ∃ a : w.1.Completion, a * a = algebraMap (plus Q) _ x := fun w =>
    exists_mul_self_of_pos w.1 x (pos_at_embedding Q γ.val m hpos hdvd x rfl w.1.embedding)
  choose a ha using hroot
  obtain ⟨b, hb'⟩ := (hb v).2 a
  have hb2 : b * b = 1 ⊗ₜ x := (hb v).1 (funext fun w => by
    have hw : ψ v w b = a w := congrFun hb' w
    simp only
    rw [map_mul, hw, ha, h1])
  refine ⟨inclPlus Q _ b, ?_⟩
  rw [GlobalTheory.TraceClasses.involBase_inclPlus, ← map_mul, hb2]
  rfl

end GlobalTheory.RealPlaceNorms
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotallyPositiveRealPlaces =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.TotallyPositiveRealPlaces =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.TotallyPositiveRealPlaces", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotallyPositiveRealPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
theorem _root_.GlobalTheory.T.totally_positive_real_places : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (n : ℕ) (γ : GL (Fin n) E), γ ∈ UE E n → γ.val.charpoly ∈ Ell E n → ∀ m : E[X], (∀ τ : E →+* ℂ, ((aeval γ.val m).map τ).PosDef) → ∀ (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r), Q.1 ∣ γ.val.charpoly → GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) = (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) → ∀ v : InfinitePlace (maximalRealSubfield E), ∃ z : v.Completion ⊗[maximalRealSubfield E] GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q, z * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q _ z = 1 ⊗ₜ (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) := by
  first | exact @GlobalTheory.RealPlaceNorms.exists_norm_at_infinite
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.TotallyPositiveRealPlaces =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitPlaceNormCentraliser =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitPlaceNormCentraliser", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTwistedClassesCharpoly\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjSelfReciprocalOfDvdEllipticPolynomialStatement\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.ConjTransposeMulPosDef\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.ExistsNormSolutionFields\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.GlobalNormOfLocalNorms\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.InvolutionFixesPolynomialImage\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.LocalNormAtSplitPlace\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitCentraliserNormElement\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.TotallyPositiveRealPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SelfReciprocalLocalField\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct ComplexOrder
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.NormHasseCent

theorem main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (n : ℕ) (γ h : GL (Fin n) E), γ ∈ UE E n → γ.val.charpoly ∈ Ell E n → h⁻¹ * γ * h ∈ UE E n → (∀ w : Pl E, ¬ IsSplitAt w → ∃ c : Matrix (Fin n) (Fin n) (w.adicCompletion E), c * (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ).val = (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ).val * c ∧ cT (cj w) c * c = ((GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) h).val * cT (cj w) (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) h).val)⁻¹) → ∃ c : Matrix (Fin n) (Fin n) E, c * γ.val = γ.val * c ∧ cT (IsCMField.complexConj E).toRingEquiv.toRingHom c * c = (h.val * cT (IsCMField.complexConj E).toRingEquiv.toRingHom h.val)⁻¹ := by
  intro E _ _ _ hU n γ h hγ hP hconj hloc
  set σ := (IsCMField.complexConj E).toRingEquiv.toRingHom with hσdef
  have hσ : ∀ x, σ (σ x) = x := fun x => IsCMField.complexConj_apply_apply E x
  set N := cT σ (h⁻¹).val * (h⁻¹).val with hN
  have hγ' : cT σ γ.val * 1 * γ.val = 1 := hγ
  have hinv := inv_of_unit σ h γ hconj
  have hγγ : γ.val * cT σ γ.val = 1 := by
    rw [Matrix.mul_one] at hγ'; exact mul_eq_one_comm.1 hγ'
  have hcomm : γ.val * N = N * γ.val := by
    have := congrArg (γ.val * ·) hinv
    simp only [← Matrix.mul_assoc, hγγ, Matrix.one_mul] at this
    rw [hN]; simpa only [Matrix.mul_assoc] using this.symm
  obtain ⟨m, hm⟩ := GlobalTheory.BCT.ClsFin.exists_aeval_of_comm γ.val N hP.2.2.1 hcomm
  have hherm : cT σ (aeval γ.val m) = aeval γ.val m := by
    rw [← hm]; exact herm_of σ hσ h
  have hM : (h.val * cT σ h.val)⁻¹ = aeval γ.val m := by rw [GlobalTheory.UnitaryConj.inv_h_form, ← hN, hm]
  have hsr := GlobalTheory.T.isConjSelfReciprocal_of_dvd_elliptic_polynomial E n _ hP
  have hfix := GlobalTheory.T.involution_fixes_polynomial_image E n γ hγ hP m hherm
  have hloc' : ∀ w : Pl E, ¬ IsSplitAt w → ∃ c : Matrix (Fin n) (Fin n) (w.adicCompletion E), c * (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ).val = (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ).val * c ∧ cT (cj w) c * c = (aeval γ.val m).map (algebraMap E (w.adicCompletion E)) := (fun w hw => by
    obtain ⟨c, hc1, hc2⟩ := hloc w hw
    refine ⟨c, hc1, ?_⟩
    rw [hc2, GlobalTheory.UnitaryConj.inv_h_form, ← hm, hN, ← map_inv]
    rw [Matrix.map_mul, cT_map hU w hw]; rfl)
  have hfin : ∀ (r : ℕ) (Q : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.SelfRecip E r), Q.1 ∣ γ.val.charpoly → GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.invol Q (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) = (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) → ∀ v : HeightOneSpectrum (𝓞 (maximalRealSubfield E)), ∃ z : v.adicCompletion (maximalRealSubfield E) ⊗[maximalRealSubfield E] GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q, z * GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.involBase Q _ z = 1 ⊗ₜ (AdjoinRoot.mk Q.1 m : GlobalTheory.IndefiniteRowSideFullHecke.SelfReciprocalLocalField.Fld Q) := by
    intro r Q hQ hx v
    by_cases hs : ∃ w w' : Pl E, w ≠ w' ∧ w.under (𝓞 (maximalRealSubfield E)) = v ∧ w'.under (𝓞 (maximalRealSubfield E)) = v
    · exact GlobalTheory.T.local_norm_at_split_place E r Q _ hx v hs
    · refine GlobalTheory.T.nonsplit_centraliser_norm_element E hU n γ hγ hP m hloc' r Q hQ hx v (fun w w' hw hw' => ?_)
      by_contra hne
      exact hs ⟨w, w', hne, hw, hw'⟩
  have hinf := GlobalTheory.T.totally_positive_real_places E n γ hγ hP m (fun τ => by rw [← hm]; exact GlobalTheory.T.conj_transpose_mul_posDef E n h τ)
  obtain ⟨c, hc1, hc2⟩ := GlobalTheory.T.exists_norm_solution_fields E n γ hγ hP hsr m (fun r Q hQ =>
    GlobalTheory.T.global_norm_of_local_norms E r Q _ (hfix r Q hQ) (hfin r Q hQ (hfix r Q hQ)) (hinf r Q hQ (hfix r Q hQ)))
  exact ⟨c, hc1, by rw [hc2, hM]⟩

end GlobalTheory.NormHasseCent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitPlaceNormCentraliser =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitPlaceNormCentraliserStatement =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitPlaceNormCentraliserStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitPlaceNormCentraliser\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT GlobalTheory.UnitaryClasses
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitPlaceNormCentraliserStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.UnitaryConjugacySignProduct =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.UnitaryConjugacySignProduct", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CTUnitsLeft\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjGLOfCharpolyEqOfSeparableStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGLCharpolyEqStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryConjIffExistsCentralizerNormStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinprodNonsplitSignTotallyPositiveEqOneStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramDetHermitianTotallyPositiveStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GramKernelSignNonsplitBaseChangeEqStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LandherrStandardDefiniteHermitianCmFieldStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceConjugationPropertiesCmField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SesquilinearDetOrdSignOnKernelConjGLStatement\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.HermitianLocalDataAlmostAllStatement\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.NonsplitPlaceNormCentraliserStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.UnitaryClasses

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem part1 (hU : Unr E) {n : ℕ} {S : Set (Pl E)} (hS : IsSection S) {P : E[X]} (hP : P ∈ Ell E n) (γ γ' : UE E n)
    (h1 : γ.1.val.charpoly = P) (h2 : γ'.1.val.charpoly = P)
    (hloc : ∀ w ∈ S, ∃ g : UL n w, locPt w γ' = g⁻¹ * locPt w γ * g) : ∃ g : UE E n, γ' = g⁻¹ * γ * g := by
  obtain ⟨h, hh⟩ := _root_.GlobalTheory.SepConj.conj_of_charpoly_eq_of_separable E n γ.1 γ'.1 (h1.trans h2.symm) (h1 ▸ hP.2.2.1)
  have hγ' : h⁻¹ * γ.1 * h ∈ UE E n := hh ▸ γ'.2
  obtain ⟨c, hc1, hc2⟩ := _root_.GlobalTheory.NormHasseCent.main E hU n γ.1 h γ.2 (h1 ▸ hP) hγ' (fun w hw => by
    obtain ⟨g, hg⟩ := hloc w (mem_S hS hw)
    have hUL : UL n w = UJ (cj w) 1 := by unfold UL; rw [if_neg hw]
    refine (_root_.GlobalTheory.UnitaryConj.main _ (cj w) n _ _).1 ⟨g.1, hUL ▸ g.2, ?_⟩
    have := congrArg Subtype.val hg
    simp only [Subgroup.coe_mul, Subgroup.coe_inv, locPt_val hU] at this
    rw [← map_inv, ← map_mul, ← map_mul, ← hh]; exact this)
  obtain ⟨g, hg, hgg⟩ := (_root_.GlobalTheory.UnitaryConj.main E _ n γ.1 h).2 ⟨c, hc1, hc2⟩
  exact ⟨⟨g, hg⟩, Subtype.ext (by simp only [Subgroup.coe_mul, Subgroup.coe_inv]; rw [hh, hgg])⟩

theorem part2 (hU : Unr E) {n : ℕ} {S : Set (Pl E)} (hS : IsSection S) (γ : UE E n) (P₁ : E[X]) :
    ∏ᶠ w ∈ S, kapSign n w (atPl w P₁) (locPt w γ).1 = 1 := by
  obtain ⟨hd0, hdpos⟩ := _root_.GlobalTheory.UnitaryClasses.gramOn_one_det_totallyPositive E n (LinearMap.ker (Matrix.toLin' (aeval γ.1.val P₁)))
  rw [← _root_.GlobalTheory.UnitaryClasses.signProd_totPos E hU S hS _ hd0 hdpos]
  apply finprod_mem_congr rfl
  intro w _
  by_cases hw : IsSplitAt w
  · rw [if_pos hw]; unfold kapSign; rw [if_pos hw]
  · rw [if_neg hw, kapSign_eq w hw, locPt_val hU]
    unfold sgnOn
    have hA := aeval_map_mat w γ.1.val P₁
    have := _root_.GlobalTheory.UnitaryClasses.BaseChangeSign.main E hU w hw n 1 (aeval γ.1.val P₁)
    rw [Matrix.map_one _ (map_zero _) (map_one _)] at this
    rw [← this, ← hA]
    rfl

theorem part3 (hU : Unr E) {n : ℕ} {S : Set (Pl E)} (hS : IsSection S) {P : E[X]} (hP : P ∈ Ell E n)
    (y : ∀ w : Pl E, UL n w) (hy : ∀ w, (y w).1.val.charpoly = atPl w P) (hK : ∀ᶠ w in cofinite, y w ∈ KL n w)
    (hsg : ∀ P₁ : E[X], P₁.Monic → P₁ ∣ P → ∏ᶠ w ∈ S, kapSign n w (atPl w P₁) (y w).1 = 1) :
    ∃ γ : UE E n, γ.1.val.charpoly = P ∧ ∀ w ∈ S, ∃ g : UL n w, locPt w γ = g⁻¹ * y w * g := by
  obtain ⟨γ₀, hγ₀⟩ := _root_.GlobalTheory.CompanionEll.exists_GL_charpoly_eq E n P hP
  have hAcp : ∀ w : Pl E, (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ₀).val.charpoly = atPl w P :=
    fun w => by rw [← hγ₀]; exact Matrix.charpoly_map _ _
  have hsep : ∀ w : Pl E, (atPl w P).Separable := fun w => hP.2.2.1.map
  have hk : ∀ w : Pl E, ∃ k : GLw n w,
      (y w).1 = k⁻¹ * GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ₀ * k := fun w =>
    _root_.GlobalTheory.SepConj.conj_of_charpoly_eq_of_separable _ n _ (y w).1 ((hAcp w).trans (hy w).symm) (hAcp w ▸ hsep w)
  choose k hk using hk
  have hinvol : ∀ w : Pl E, ∀ x, cj w (cj w x) = x := fun w => (GlobalTheory.ConjAtPlace.main E hU w).2.1
  have hval : ∀ w : Pl E, ∀ x, Valued.v (cj w x) = Valued.v x := fun w => (GlobalTheory.ConjAtPlace.main E hU w).2.2.1
  have hUL : ∀ w : Pl E, ¬ IsSplitAt w → UL n w = UJ (cj w) 1 := fun w hw => by unfold UL; rw [if_neg hw]
  have hyU : ∀ w : Pl E, ¬ IsSplitAt w → cT (cj w) (y w).1.val * 1 * (y w).1.val = 1 := fun w hw => by
    have h3 : ∀ z : GLw n w, z ∈ UL n w → cT (cj w) z.val * 1 * z.val = 1 := by
      intro z hz; unfold UL at hz; rw [if_neg hw] at hz; exact hz
    exact h3 _ (y w).2
  obtain ⟨H', hH'h, hH'i, hH'p, hH'l⟩ := _root_.GlobalTheory.UnitaryClasses.ExistForm.main E hU S hS n γ₀ (hγ₀ ▸ hP)
    (fun w => cT (cj w) ((k w)⁻¹).val * ((k w)⁻¹).val)
    (fun w hw => ⟨herm_of _ (hinvol w) _, det_ne _ _,
      inv_of_unit _ (k w) (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ₀) (hk w ▸ hyU w hw)⟩)
    (hK.mono fun w hw _ => ⟨k w, 1, by rw [← hk w]; exact (Subgroup.mem_subgroupOf).1 hw, one_mem _,
      (one_of _ (k w)).symm⟩)
    (fun P₁ hm hd => by
      refine Eq.trans ?_ (hsg P₁ hm (hγ₀ ▸ hd))
      apply finprod_mem_congr rfl
      intro w _
      by_cases hw : IsSplitAt w
      · rw [if_pos hw]; unfold kapSign; rw [if_pos hw]
      · rw [if_neg hw, kapSign_eq w hw, hk w, _root_.GlobalTheory.UnitaryClasses.SgnConj.sgnOn_conj _ (cj w) (hval w)]
        rfl)
  obtain ⟨h, hh⟩ := _root_.GlobalTheory.LandherrStd.main E hU n H' hH'h hH'p (fun w hw => by
    obtain ⟨c, -, hc⟩ := hH'l w hw
    exact ⟨((k w)⁻¹).val * c.val, by rw [hc, cT_mul]; simp only [Matrix.mul_assoc]⟩)
  have hγU : h * γ₀ * h⁻¹ ∈ UE E n := unit_of_form _ γ₀ h (by rw [← hh]; exact hH'i)
  refine ⟨⟨_, hγU⟩, ?_, fun w hwS => ?_⟩
  · show (h.val * γ₀.val * (h⁻¹).val).charpoly = P
    rw [Matrix.coe_units_inv, ← hγ₀]
    exact Matrix.charpoly_units_conj h γ₀.val
  · by_cases hw : IsSplitAt w
    · have hb : ((locPt w (⟨_, hγU⟩ : UE E n) : UL n w) : GLw n w).val.charpoly = (y w).1.val.charpoly := by
        rw [locPt_val hU, hy w, ← hAcp w]
        show ((h * γ₀ * h⁻¹ : GL (Fin n) E).val.map _).charpoly = (γ₀.val.map _).charpoly
        rw [Matrix.charpoly_map, Matrix.charpoly_map]
        congr 1
        show (h.val * γ₀.val * (h⁻¹).val).charpoly = _
        rw [Matrix.coe_units_inv]
        exact Matrix.charpoly_units_conj h γ₀.val
      obtain ⟨h', hh'⟩ := _root_.GlobalTheory.SepConj.conj_of_charpoly_eq_of_separable _ n (y w).1 _ hb.symm ((hy w) ▸ hsep w)
      have hmem : h' ∈ UL n w := by unfold UL; rw [if_pos hw]; trivial
      exact ⟨⟨h', hmem⟩, Subtype.ext (by simpa using hh')⟩
    · obtain ⟨c, hc1, hc2⟩ := hH'l w hw
      have hg : (k w)⁻¹ * c * (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) h)⁻¹ ∈ UL n w := by
        rw [hUL w hw]
        refine unit_of_two _ (k w) c (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) h) _ hc2 ?_
        rw [hh, Matrix.map_mul, cT_map hU w hw]; rfl
      refine ⟨⟨_, hg⟩, Subtype.ext ?_⟩
      simp only [Subgroup.coe_mul, Subgroup.coe_inv]
      rw [locPt_val hU, hk w]
      have hcA : c * GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ₀ =
          GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ₀ * c := Units.ext hc1
      have key : ∀ x : GLw n w, c⁻¹ * (GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ₀ * (c * x)) =
          GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) γ₀ * x := fun x => by
        rw [← mul_assoc _ c x, ← hcA, mul_assoc, inv_mul_cancel_left]
      show GeneralLinearGroup.map (algebraMap E (w.adicCompletion E)) (h * γ₀ * h⁻¹) = _
      simp only [map_mul, map_inv, _root_.mul_inv_rev, inv_inv, mul_assoc, mul_inv_cancel_left, key]

theorem main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ n : ℕ, 1 ≤ n → ∀ (S : Set (Pl E)), IsSection S → ∀ P ∈ Ell E n, (∀ γ γ' : UE E n, γ.1.val.charpoly = P → γ'.1.val.charpoly = P → (∀ w ∈ S, ∃ g : UL n w, locPt w γ' = g⁻¹ * locPt w γ * g) → ∃ g : UE E n, γ' = g⁻¹ * γ * g) ∧ (∀ γ : UE E n, γ.1.val.charpoly = P → ∀ P₁ : E[X], P₁.Monic → P₁ ∣ P → ∏ᶠ w ∈ S, kapSign n w (atPl w P₁) (locPt w γ).1 = 1) ∧ ∀ y : ∀ w : Pl E, UL n w, (∀ w, (y w).1.val.charpoly = atPl w P) → (∀ᶠ w in cofinite, y w ∈ KL n w) → (∀ P₁ : E[X], P₁.Monic → P₁ ∣ P → ∏ᶠ w ∈ S, kapSign n w (atPl w P₁) (y w).1 = 1) → ∃ γ : UE E n, γ.1.val.charpoly = P ∧ ∀ w ∈ S, ∃ g : UL n w, locPt w γ = g⁻¹ * y w * g := by
  intro E _ _ _ hU n _ S hS P hP
  exact ⟨fun γ γ' h1 h2 hl => part1 hU hS hP γ γ' h1 h2 hl, fun γ _ P₁ _ _ => part2 hU hS γ P₁,
    fun y hy hK hsg => part3 hU hS hP y hy hK hsg⟩

end GlobalTheory.UnitaryClasses
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.UnitaryConjugacySignProduct =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.UnitaryConjugacySignProductStatement =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.UnitaryConjugacySignProductStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.UnitaryConjugacySignProduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.IsobaricBaseChange.IntegralCoefficientBaseChange.UnitaryBaseChangeCharacters.UnitaryBaseChangeLinks.UnitaryConjugacySignProductStatement =====
