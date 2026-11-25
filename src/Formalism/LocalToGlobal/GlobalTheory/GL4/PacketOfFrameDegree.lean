module

public import Formalism.HarderNarasimhan.StatementPl
public import Formalism.HarderNarasimhan.HarderNarasimhanProofs.SizeMu
public import Formalism.LocalRingCardinality.Params
public import Formalism.LocalToGlobal.Columns.AbelianHostFieldConditions
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.WeTransposeWordTransposeWord
public import Formalism.LocalToGlobal.Columns.CoefficientMapHeightBound
public import Formalism.SharpRestriction.GlobalSchurBounds.SlopeMaxOpenOfHookTwoLeV
public import Formalism.HarderNarasimhan.HarderNarasimhanProofs.DiscreteSpanOfLinIndep
public import Formalism.HarderNarasimhan.HarderNarasimhanProofs.HtGram
public import Formalism.MeanHeightDescent.AverageDegreeBounds.SpanMuMin
public import Formalism.SizeWindowBrackets.ChainSlopeWindows.ExistsNsmulMem
public import Formalism.SizeWindowBrackets.ChainSlopeWindows.TruncatedLatticeHolds
public import Formalism.BranchSandwichDivisors.BranchIsometryProofs.OrthSum
public import Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.PDescentCutA
public import Formalism.LocalRingCardinality.HostCls
public import Formalism.LocalToGlobal.GlobalTheory.GL4.ThirdPropositionOfClass
public import Formalism.LocalToGlobal.GlobalTheory.GL4.ColumnLatticeExactSlope
public import Formalism.SharpRestriction.GlobalSchurBounds.TotallyPositiveTraceGeOfNormDiscr
public import Formalism.LocalToGlobal.Columns.SummandSlopeAtDecoratedLattice
public import Formalism.LocalToGlobal.Divisibility.CoefMod
public import Formalism.SizeWindowBrackets.LcvBaseChange
public import Formalism.LocalToGlobal.Columns.BrzColLatOneLattice
public import Formalism.LocalToGlobal.Columns.StandardDeltaIntegralCoeffs
public import Formalism.LocalToGlobal.Columns.SummandSlopeOfThreeLemmas
public import Formalism.LocalToGlobal.Columns.BrpStarLatLattice
public import Formalism.LocalToGlobal.Columns.CoefficientsModP
public import Formalism.LocalToGlobal.GlobalTheory.GL4.CoeffMemOfIntSpanAt
public import Formalism.LocalToGlobal.Columns.FockNormSubstitutionBound
import Formalism.HermitianLattices.StatementLat
import Formalism.LocalToGlobal.GlobalTheory.HLatOps
import Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.StExtInv
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Formalism.GL3MeanSquares.ConcavityEquidistribution
import Formalism.HarderNarasimhan.HarderNarasimhanProofs.FrameHermSharpB
import Formalism.HarderNarasimhan.HarderNarasimhanProofs.SlopeIneqMean
import Formalism.HarderNarasimhan.ShiftInvariance
import Formalism.LocalToGlobal.Columns.CoefficientsModP.LatticeBasisExistsHolds
import Formalism.LocalToGlobal.Columns.LocWLemmas
import Formalism.LocalToGlobal.Columns.StdLatUnimodular
import Formalism.LocalToGlobal.Columns.PolyFnLemmas
import Formalism.LocalToGlobal.GlobalTheory.GL4.PZBasis
import Formalism.LocalToGlobal.GlobalTheory.HLatOpsP

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.PExtInvMuB, Formalism.LocalToGlobal.Columns.MaxSlopeSummandOfFock, Formalism.LocalToGlobal.Columns.MultiFactorialEqTripleProd, Formalism.LocalToGlobal.GlobalTheory.GL4.FockNExtCNu, Formalism.LocalToGlobal.Columns.MaxSlopeOrthogonalNegLog, Formalism.LocalToGlobal.GlobalTheory.GL4.MuMaxLeMon, Formalism.LocalToGlobal.GlobalTheory.GL4.ShortAtMeanLog, Formalism.LocalToGlobal.GlobalTheory.GL4.ThirdLinkOfArchimedean, Formalism.LocalToGlobal.Columns.BrpColLatOneSpan, Formalism.LocalToGlobal.Columns.TwistedLocalisationComparable, Formalism.LocalToGlobal.GlobalTheory.GL4.CfMemTwId, Formalism.LocalToGlobal.GlobalTheory.GL4.NfAllSelfEq, Formalism.LocalToGlobal.GlobalTheory.GL4.PacketOfFrameDegree

-- ===== clump member: Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.PExtInvMuB =====
-- clump-header: {"m": "Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.PExtInvMuB", "h": "module\n\npublic import Formalism.HarderNarasimhan.StatementPl\npublic import Formalism.HarderNarasimhan.HarderNarasimhanProofs.SizeMu\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.HermitianLattices.StatementLat\nimport Formalism.LocalToGlobal.GlobalTheory.HLatOps\nimport Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.StExtInv\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField TensorProduct

noncomputable section

namespace Formalism.L2.Geo.ExtensionFiltration.ExtInvMu

open Formalism.BasicNotions Formalism.HN Formalism.HermitianLatticesTheory Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.L2.Geo.ExtensionFiltration.ExtInvSk

section Places

variable (K K' : Type) [Field K] [NumberField K] [Field K'] [NumberField K'] [Algebra K K']


open Classical in
theorem card_fiber [_root_.NumberField.IsTotallyComplex K] (v : InfinitePlace K) :
    (Finset.univ.filter fun v' : InfinitePlace K' => v'.comap (algebraMap K K') = v).card =
      finrank K K' := by
  classical
  have h := InfinitePlace.unramifedPlacesOver_ncard_add_eq_finrank K' v
  have h0 : InfinitePlace.ramifiedPlacesOver K' v = ∅ := by
    ext w
    simp only [InfinitePlace.ramifiedPlacesOver, Set.mem_ofPred_eq, Set.mem_empty_iff_false,
      iff_false]
    rintro ⟨_, hw⟩
    exact InfinitePlace.not_isReal_iff_isComplex.2 (IsTotallyComplex.isComplex _)
      (InfinitePlace.isRamified_iff.1 hw).2
  have h1 : InfinitePlace.unramifiedPlacesOver K' v =
      ((Finset.univ.filter fun v' : InfinitePlace K' => v'.comap (algebraMap K K') = v :
        Finset (InfinitePlace K')) : Set (InfinitePlace K')) := by
    ext w
    simp only [InfinitePlace.unramifiedPlacesOver, Set.mem_ofPred_eq, Finset.coe_filter,
      Finset.mem_univ, true_and]
    constructor
    · rintro ⟨hw, _⟩
      exact InfinitePlace.LiesOver.comap_eq w v
    · rintro rfl
      refine ⟨⟨?_⟩, ?_⟩
      · ext x
        rfl
      · by_contra hr
        exact InfinitePlace.not_isReal_iff_isComplex.2 (IsTotallyComplex.isComplex _)
          (InfinitePlace.isRamified_iff.1 hr).2
  rw [h0, h1, Set.ncard_empty, mul_zero, add_zero, Set.ncard_coe_finset] at h
  exact h

theorem nPl_ext [_root_.NumberField.IsTotallyComplex K] [_root_.NumberField.IsTotallyComplex K'] : nPl K' = finrank K K' * nPl K := by
  have h1 := sizeMu_finrank_eq K
  have h2 := sizeMu_finrank_eq K'
  have h3 := Module.finrank_mul_finrank ℚ K K'
  rw [h1, h2] at h3
  linarith

end Places

end Formalism.L2.Geo.ExtensionFiltration.ExtInvMu
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.PExtInvMuB =====

-- ===== clump member: Formalism.LocalToGlobal.Columns.MaxSlopeSummandOfFock =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Columns.MaxSlopeSummandOfFock", "h": "module\n\npublic import Formalism.HarderNarasimhan.StatementPl\npublic import Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.PExtInvMuB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.GL3MeanSquares.ConcavityEquidistribution\npublic import Formalism.LocalRingCardinality.Params\npublic import Formalism.LocalToGlobal.Columns.AbelianHostFieldConditions\nimport Formalism.LocalToGlobal.Columns.CoefficientsModP.WeTransposeWordTransposeWord\nimport Formalism.LocalToGlobal.GlobalTheory.HLatOps\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module MvPolynomial
open scoped Matrix ComplexOrder

noncomputable section

namespace Formalism.L2.Col

open Formalism.BasicNotions Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.HermitianLatticesTheory Formalism.HN Formalism.HermitianLattices.TraceIntegrality

section Places

variable (E K : Type) [Field E] [NumberField E] [Field K] [NumberField K] [_root_.NumberField.IsTotallyComplex E] [_root_.NumberField.IsTotallyComplex K]

theorem mean_over_places_comap (φ : E →+* K) (G : InfinitePlace E → ℝ) :
    (1 / (nPl K : ℝ)) * ∑ v : InfinitePlace K, G (v.comap φ) = (∑ w, G w) / (nPl E : ℝ) := by
  classical
  let _ : Algebra E K := φ.toAlgebra
  have hc := Formalism.L2.Geo.ExtensionFiltration.ExtInvMu.card_fiber E K
  have hn := Formalism.L2.Geo.ExtensionFiltration.ExtInvMu.nPl_ext E K
  have hs : ∑ v : InfinitePlace K, G (v.comap φ) = (Module.finrank E K : ℝ) * ∑ w, G w := by
    rw [← Finset.sum_fiberwise Finset.univ (fun v : InfinitePlace K => v.comap φ) (fun v => G (v.comap φ)), Finset.mul_sum]
    refine Finset.sum_congr rfl fun w _ => ?_
    rw [Finset.sum_congr rfl (fun v hv => congrArg G (Finset.mem_filter.1 hv).2), Finset.sum_const, nsmul_eq_mul]
    congr 2
    convert hc w
  have hK : (0 : ℝ) < (nPl K : ℝ) := by
    unfold nPl
    exact_mod_cast Fintype.card_pos
  have hE : (0 : ℝ) < (nPl E : ℝ) := by
    unfold nPl
    exact_mod_cast Fintype.card_pos
  have hn' : (nPl K : ℝ) = (Module.finrank E K : ℝ) * (nPl E : ℝ) := by exact_mod_cast hn
  have hd : (0 : ℝ) < (Module.finrank E K : ℝ) := by
    by_contra h
    have h0 : (Module.finrank E K : ℝ) = 0 := le_antisymm (not_lt.1 h) (Nat.cast_nonneg _)
    rw [h0, zero_mul] at hn'
    exact hK.ne' hn'
  rw [hs, hn']
  field_simp

end Places

section Cols

variable {X : Fields} {Pr : Primes X} {R : Ranks} (W : Wts X Pr.Word R) (Ch : Chars X Pr R.m)

end Cols

end Formalism.L2.Col
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Columns.MaxSlopeSummandOfFock =====

-- ===== clump member: Formalism.LocalToGlobal.Columns.MultiFactorialEqTripleProd =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Columns.MultiFactorialEqTripleProd", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.CoefficientMapHeightBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.GL3MeanSquares.ConcavityEquidistribution\nimport Formalism.LocalToGlobal.GlobalTheory.HLatOps\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module MvPolynomial
open scoped Matrix ComplexOrder

noncomputable section

namespace Formalism.L2.Col

open Formalism.BasicNotions Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.HermitianLatticesTheory Formalism.HN Formalism.L2.Forms

section Main

variable (K : Type) [Field K] [NumberField K] [StarRing K] [_root_.NumberField.IsTotallyComplex K] {ι : Type} [Fintype ι] {n : ℕ} (lam : ι → DomWeight n)

end Main

section Mono

theorem fock_norm_rational_eq {σ : Type} (P : MvPolynomial σ ℚ) : fockN (map (algebraMap ℚ ℂ) P) = ((Formalism.GradedWeylDivisibility.fockQ P P : ℚ) : ℝ) := by
  unfold fockN Formalism.GradedWeylDivisibility.fockQ
  rw [support_map_of_injective _ (algebraMap ℚ ℂ).injective]
  push_cast
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [coeff_map, mfact]
  have : ‖(algebraMap ℚ ℂ) (AddMonoidAlgebra.coeff P m)‖ ^ 2 = ((AddMonoidAlgebra.coeff P m : ℚ) : ℝ) * ((AddMonoidAlgebra.coeff P m : ℚ) : ℝ) := by
    rw [eq_ratCast, Complex.norm_ratCast, sq_abs]
    ring
  rw [this]
  push_cast
  rfl

variable {ι : Type} [Fintype ι] {n : ℕ}

end Mono

section Gen

open Formalism.HermitianLattices.TraceIntegrality

variable (K : Type) [Field K] [NumberField K] [StarRing K] [_root_.NumberField.IsTotallyComplex K] {ι : Type} [Fintype ι]

end Gen

end Formalism.L2.Col
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Columns.MultiFactorialEqTripleProd =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.FockNExtCNu =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL4.FockNExtCNu", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.SlopeMaxOpenOfHookTwoLeV\npublic import Formalism.LocalToGlobal.Columns.CoefficientMapHeightBound\npublic import Formalism.LocalToGlobal.Columns.CoefficientsModP.WeTransposeWordTransposeWord\npublic import Formalism.LocalToGlobal.Columns.MultiFactorialEqTripleProd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.L2.Col Formalism.MainNotions.flipTwoThree Formalism.L2.DIV

section Mono

variable {ι : Type} [Fintype ι] {n : ℕ}

private theorem map_algebraMap_rat_complex_hw {N : ℕ} (ν : Fin N → ℕ) :
    MvPolynomial.map (algebraMap ℚ ℂ) (Formalism.GradedWeylDivisibility.hw ℚ (le_refl N) ν) = Formalism.GradedWeylDivisibility.hw ℂ (le_refl N) ν := by
  unfold Formalism.GradedWeylDivisibility.hw Formalism.GradedWeylDivisibility.lpMinor
  rw [map_prod]
  refine Finset.prod_congr rfl fun s _ => ?_
  rw [map_pow, RingHom.map_det]
  congr 2
  ext p q
  simp [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, MvPolynomial.map_X]

theorem fockN_ext_cNu (lam : DomWeight n) :
    fockN (extremal ℂ n lam) = cNu lam.natW * ∏ s, ((lam.natW s).factorial : ℝ) := by
  have hprod : (∏ s, ((lam.natW s).factorial : ℝ)) ≠ 0 :=
    Finset.prod_ne_zero_iff.2 fun s _ => by exact_mod_cast (Nat.factorial_pos _).ne'
  unfold extremal cNu
  rw [← map_algebraMap_rat_complex_hw, Formalism.L2.Col.fock_norm_rational_eq, div_mul_cancel₀ _ hprod]

theorem cNu_natW_pos (lam : DomWeight n) : 0 < cNu lam.natW := by
  have hnn : (0 : ℚ) ≤ Formalism.GradedWeylDivisibility.fockQ (Formalism.GradedWeylDivisibility.hw ℚ le_rfl lam.natW) (Formalism.GradedWeylDivisibility.hw ℚ le_rfl lam.natW) := by
    unfold Formalism.GradedWeylDivisibility.fockQ
    exact Finset.sum_nonneg fun m _ => mul_nonneg (mul_self_nonneg _) (Nat.cast_nonneg _)
  have hpos : (0 : ℚ) < Formalism.GradedWeylDivisibility.fockQ (Formalism.GradedWeylDivisibility.hw ℚ le_rfl lam.natW) (Formalism.GradedWeylDivisibility.hw ℚ le_rfl lam.natW) :=
    lt_of_le_of_ne hnn (Formalism.L2.DIV.we_hw_norm_ne le_rfl lam.natW).symm
  unfold cNu
  apply div_pos
  · exact_mod_cast hpos
  · exact Finset.prod_pos fun s _ => by exact_mod_cast Nat.factorial_pos _

def monCnu (lam : ι → DomWeight n) : ℝ := ((n : ℝ) ^ (∑ τ, dW (lam τ)) * ∏ τ, cNu (lam τ).natW)⁻¹

private theorem sub_one_mul_padicValNat_factorial_le' {n : ℕ} (g : Fin n → ℕ) :
    (∑ a, g a).factorial ≤ n ^ (∑ a, g a) * ∏ a, (g a).factorial := by
  classical
  have hmul := Nat.multinomial_spec Finset.univ g
  have hle : Nat.multinomial Finset.univ g ≤ n ^ (∑ a, g a) := by
    have h := Finset.sum_pow_eq_sum_piAntidiag (Finset.univ : Finset (Fin n)) (fun _ => (1 : ℕ)) (∑ a, g a)
    simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, smul_eq_mul, mul_one, one_pow,
      Finset.prod_const_one, Nat.cast_id] at h
    rw [h]
    apply Finset.single_le_sum (f := fun k => Nat.multinomial Finset.univ k) (fun _ _ => Nat.zero_le _)
    rw [Finset.mem_piAntidiag]
    exact ⟨rfl, fun i _ => Finset.mem_univ i⟩
  calc (∑ a, g a).factorial = (∏ a, (g a).factorial) * Nat.multinomial Finset.univ g := hmul.symm
    _ ≤ (∏ a, (g a).factorial) * n ^ (∑ a, g a) := Nat.mul_le_mul_left _ hle
    _ = _ := mul_comm _ _

theorem monW_ge_cNu (lam : ι → DomWeight n) (m : MonI lam) : monCnu lam ≤ monW lam m := by
  classical
  have hC : 0 < ∏ τ, cNu (lam τ).natW := Finset.prod_pos fun τ _ => cNu_natW_pos (lam τ)
  have hF : (0 : ℝ) < ∏ τ, ∏ s, (((lam τ).natW s).factorial : ℝ) :=
    Finset.prod_pos fun τ _ => Finset.prod_pos fun s _ => by exact_mod_cast Nat.factorial_pos _
  have hND : (0 : ℝ) < (n : ℝ) ^ (∑ τ, dW (lam τ)) := by
    rcases Nat.eq_zero_or_pos n with hn | hn
    · subst hn
      simp [dW]
    · exact pow_pos (by exact_mod_cast hn) _
  have hext : extremalFockNormProduct lam = (∏ τ, cNu (lam τ).natW) * ∏ τ, ∏ s, (((lam τ).natW s).factorial : ℝ) := by
    unfold extremalFockNormProduct
    rw [← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl fun τ _ => fockN_ext_cNu (lam τ)
  have hcombN : ∏ τ, ∏ s, ((lam τ).natW s).factorial ≤ Formalism.L2.DIV.mfact m.1 * n ^ (∑ τ, dW (lam τ)) := by
    have hmf : Formalism.L2.DIV.mfact m.1 = ∏ τ, ∏ s, ∏ a, (m.1 (τ, a, s)).factorial := by
      unfold Formalism.L2.DIV.mfact
      rw [Finset.prod_subset (Finset.subset_univ _) (fun k _ hk => by
        rw [show m.1 k = 0 from by simpa using hk, Nat.factorial_zero])]
      rw [Fintype.prod_prod_type]
      refine Finset.prod_congr rfl fun τ _ => ?_
      rw [Fintype.prod_prod_type, Finset.prod_comm]
    have hpow : n ^ (∑ τ, dW (lam τ)) = ∏ τ, ∏ s, n ^ ((lam τ).natW s) := by
      rw [← Finset.prod_pow_eq_pow_sum]
      refine Finset.prod_congr rfl fun τ _ => ?_
      unfold dW
      rw [← Finset.prod_pow_eq_pow_sum]
    rw [hmf, hpow, ← Finset.prod_mul_distrib]
    apply Finset.prod_le_prod₀ (fun _ _ => Nat.zero_le _)
    intro τ _
    rw [← Finset.prod_mul_distrib]
    apply Finset.prod_le_prod₀ (fun _ _ => Nat.zero_le _)
    intro s _
    have h := sub_one_mul_padicValNat_factorial_le' (fun a => m.1 (τ, a, s))
    rw [m.2 τ s] at h
    exact h.trans (le_of_eq (mul_comm _ _))
  have hcomb : (∏ τ, ∏ s, (((lam τ).natW s).factorial : ℝ)) ≤
      (Formalism.L2.DIV.mfact m.1 : ℝ) * (n : ℝ) ^ (∑ τ, dW (lam τ)) := by
    exact_mod_cast hcombN
  unfold monCnu monW
  rw [hext, inv_eq_one_div, div_le_div_iff₀ (mul_pos hND hC) (mul_pos hC hF)]
  calc 1 * ((∏ τ, cNu (lam τ).natW) * ∏ τ, ∏ s, (((lam τ).natW s).factorial : ℝ))
      = (∏ τ, cNu (lam τ).natW) * ∏ τ, ∏ s, (((lam τ).natW s).factorial : ℝ) := one_mul _
    _ ≤ (∏ τ, cNu (lam τ).natW) * ((Formalism.L2.DIV.mfact m.1 : ℝ) * (n : ℝ) ^ (∑ τ, dW (lam τ))) :=
      mul_le_mul_of_nonneg_left hcomb hC.le
    _ = _ := by ring

theorem monCnu_pos (lam : ι → DomWeight n) : 0 < monCnu lam := by
  unfold monCnu
  apply inv_pos.mpr
  apply mul_pos
  · rcases Nat.eq_zero_or_pos n with hn | hn
    · subst hn
      simp [dW]
    · exact pow_pos (by exact_mod_cast hn) _
  · exact Finset.prod_pos fun τ _ => cNu_natW_pos (lam τ)

theorem log_monCnu (lam : ι → DomWeight n) (hn : 0 < n) :
    -Real.log (monCnu lam) = ∑ τ, ((dW (lam τ) : ℝ) * Real.log n + Real.log (cNu (lam τ).natW)) := by
  have hn' : (0 : ℝ) < n := by exact_mod_cast hn
  have hc : ∀ τ, cNu (lam τ).natW ≠ 0 := fun τ => (cNu_natW_pos (lam τ)).ne'
  unfold monCnu
  rw [Real.log_inv, neg_neg, Real.log_mul (pow_ne_zero _ hn'.ne') (Finset.prod_ne_zero_iff.mpr fun τ _ => hc τ),
    Real.log_pow, Real.log_prod (fun τ _ => hc τ), Finset.sum_add_distrib]
  push_cast
  rw [Finset.sum_mul]

end Mono

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.FockNExtCNu =====

-- ===== clump member: Formalism.LocalToGlobal.Columns.MaxSlopeOrthogonalNegLog =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Columns.MaxSlopeOrthogonalNegLog", "h": "module\n\npublic import Formalism.HarderNarasimhan.StatementPl\npublic import Formalism.HarderNarasimhan.HarderNarasimhanProofs.DiscreteSpanOfLinIndep\npublic import Formalism.HarderNarasimhan.HarderNarasimhanProofs.HtGram\npublic import Formalism.HarderNarasimhan.HarderNarasimhanProofs.SizeMu\npublic import Formalism.MeanHeightDescent.AverageDegreeBounds.SpanMuMin\npublic import Formalism.SizeWindowBrackets.ChainSlopeWindows.ExistsNsmulMem\npublic import Formalism.SizeWindowBrackets.ChainSlopeWindows.TruncatedLatticeHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.Columns.CoefficientsModP.WeTransposeWordTransposeWord\nimport Formalism.LocalToGlobal.GlobalTheory.HLatOps\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module
open scoped Matrix ComplexOrder

noncomputable section

namespace Formalism.L2.Col

open Formalism.BasicNotions Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.HermitianLatticesTheory Formalism.HN

section F3

variable {K : Type} [Field K] [NumberField K] [StarRing K]

variable [_root_.NumberField.IsTotallyComplex K] {V ι : Type} [AddCommGroup V] [Module K V] [Module (𝓞 K) V] [IsScalarTower (𝓞 K) K V]
  [Fintype ι] [DecidableEq ι]

theorem slope_line_le_neg_log (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ) (hX : ∀ v, IsUnit (X v).det) (x : V) (hx : x ≠ 0)
    (c : ℝ) (hc : 0 < c) (hn : ∀ v, c ≤ normAt b X v x ^ 2) :
    muDef b X (Submodule.span (𝓞 K) ({x} : Set V)) ≤ -Real.log c := by
  set L : Submodule (𝓞 K) V := Submodule.span (𝓞 K) ({x} : Set V) with hL
  have hLfg : L.FG := Submodule.fg_span (Set.finite_singleton x)
  have hL0 : L ≠ ⊥ := fun h => hx ((Submodule.span_singleton_eq_bot).1 h)
  have hrk : rkK (K := K) L = 1 := Formalism.ExtensionFiltration.rkK_span_singleton x hx
  have hf : 0 < nPl K := Fintype.card_pos
  have hfR : (0 : ℝ) < (nPl K : ℝ) := by exact_mod_cast hf
  obtain ⟨-, hmu, -⟩ := size_maximal_slope K V ι b X hX L hLfg hL0
  have hpos : 0 < ht b X L := (place_lattice_structure K V ι b X hX L hLfg).2.2
  have hli : LinearIndependent K (fun _ : Fin 1 => x) := LinearIndependent.of_subsingleton (0 : Fin 1) hx
  have hrange : Set.range (fun _ : Fin 1 => x) = {x} := Set.range_const
  have hg := (height_gram_determinant K V ι b X hX 1 (fun _ : Fin 1 => x) hli).1
  rw [hrange] at hg
  have hht : c ^ (nPl K) ≤ ht b X L := by
    rw [hL, hg]
    have h1 : ∀ v : InfinitePlace K, c ≤ (gramPl b X v (fun _ : Fin 1 => x)).det.re := by
      intro v
      rw [Matrix.det_fin_one]
      simp only [gramPl, Matrix.of_apply]
      rw [Formalism.ExtensionFiltration.majAt_self_re]
      exact hn v
    calc c ^ (nPl K) = ∏ _v : InfinitePlace K, c := by rw [Finset.prod_const, Finset.card_univ]; rfl
      _ ≤ ∏ v, (gramPl b X v (fun _ : Fin 1 => x)).det.re := Finset.prod_le_prod₀ (fun v _ => hc.le) (fun v _ => h1 v)
  have hlog : (nPl K : ℝ) * Real.log c ≤ Real.log (ht b X L) := by
    rw [← Real.log_pow]
    exact Real.log_le_log (by positivity) hht
  rw [hmu]
  unfold size
  rw [Real.log_rpow hpos, hrk]
  have : Real.log c / 2 ≤ (1 : ℝ) / (2 * (nPl K : ℝ) * ((1 : ℕ) : ℝ)) * Real.log (ht b X L) := by
    rw [Nat.cast_one, mul_one, div_mul_eq_mul_div, one_mul, le_div_iff₀ (by positivity)]
    nlinarith
  linarith

theorem max_slope_line_neg_log (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ) (hX : ∀ v, IsUnit (X v).det) (x : V) (hx : x ≠ 0)
    (c : ℝ) (hc : 0 < c) (hn : ∀ v, c ≤ normAt b X v x ^ 2) :
    muMaxDef b X (Submodule.span (𝓞 K) ({x} : Set V)) ≤ -Real.log c := by
  have : Module.Finite K V := Module.Finite.of_basis b
  set L : Submodule (𝓞 K) V := Submodule.span (𝓞 K) ({x} : Set V) with hL
  have hLfg : L.FG := Submodule.fg_span (Set.finite_singleton x)
  have hL0 : L ≠ ⊥ := fun h => hx ((Submodule.span_singleton_eq_bot).1 h)
  have hrk : rkK (K := K) L = 1 := Formalism.ExtensionFiltration.rkK_span_singleton x hx
  refine Formalism.LFunctionChainParameters.slopeLatticeData.muMaxDef_le b X hL0 fun Q hQ hQ0 => ?_
  have h1 : rkK (K := K) Q ≤ 1 := by
    rw [← hrk]
    exact Submodule.finrank_mono (Submodule.span_mono hQ)
  have h2 : 0 < rkK (K := K) Q := Formalism.LFunctionChainParameters.slopeLatticeData.rkK_pos hQ0
  have hrkQ : rkK (K := K) Q = rkK (K := K) L := by omega
  have hi := (Formalism.LFunctionChainParameters.LLcv.index_slope_formula K V ι b X hX L Q hLfg hQ hQ0 hrkQ).1
  have hl : 0 ≤ Real.log (Q.toAddSubgroup.relIndex L.toAddSubgroup : ℝ) := Real.log_natCast_nonneg _
  have hn' : (0 : ℝ) < (Module.finrank ℚ K : ℝ) := by exact_mod_cast Module.finrank_pos
  have hd : 0 ≤ 2 * Real.log (Q.toAddSubgroup.relIndex L.toAddSubgroup : ℝ) / ((Module.finrank ℚ K : ℝ) * (rkK L : ℝ)) := by
    rw [hrk]
    positivity
  have := slope_line_le_neg_log b X hX x hx c hc hn
  rw [hi]
  linarith

end F3

section F3b

variable {K : Type} [Field K] [NumberField K] [StarRing K] [_root_.NumberField.IsTotallyComplex K]

end F3b

end Formalism.L2.Col
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Columns.MaxSlopeOrthogonalNegLog =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.MuMaxLeMon =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL4.MuMaxLeMon", "h": "module\n\npublic import Formalism.HarderNarasimhan.StatementPl\npublic import Formalism.LocalToGlobal.Columns.CoefficientMapHeightBound\npublic import Formalism.BranchSandwichDivisors.BranchIsometryProofs.OrthSum\nimport Formalism.HarderNarasimhan.HarderNarasimhanProofs.FrameHermSharpB\nimport Formalism.HarderNarasimhan.HarderNarasimhanProofs.SlopeIneqMean\nimport Formalism.HarderNarasimhan.ShiftInvariance\npublic import Formalism.LocalToGlobal.Columns.MaxSlopeOrthogonalNegLog\npublic import Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.PDescentCutA\nimport Formalism.SizeWindowBrackets.ChainSlopeWindows.ExistsNsmulMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.GlobalTheory.HLatOps\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module MvPolynomial
open scoped Matrix ComplexOrder

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.HermitianLatticesTheory Formalism.HN Formalism.L2.Forms Formalism.L2.Col

section Gen

variable (K : Type) [Field K] [NumberField K] [StarRing K] [_root_.NumberField.IsTotallyComplex K] {ι : Type} [Fintype ι] {n : ℕ} (lam : ι → DomWeight n)

theorem muMax_le_mon {V κ : Type} [AddCommGroup V] [Module K V] [Module (𝓞 K) V] [IsScalarTower (𝓞 K) K V] [Fintype κ] [DecidableEq κ]
    (b : Basis κ K V) (X : InfinitePlace K → Matrix κ κ ℂ) (hX : ∀ v, IsUnit (X v).det)
    (N : Submodule (𝓞 K) V) (hN : N.FG) (φ : V →ₗ[K] (MonI lam → K)) (hinj : Set.InjOn φ N)
    (hne : N.map (φ.restrictScalars (𝓞 K)) ≠ ⊥)
    (I : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) (hI0 : I ≠ 0)
    (hint : ∀ x ∈ N, ∀ m, φ x m ∈ (I : Submodule (𝓞 K) K))
    (B : InfinitePlace K → ℝ) (hB : ∀ v, 0 < B v)
    (hnorm : ∀ v x, normAt (Pi.basisFun K (MonI lam)) (fun _ => (monD lam)⁻¹) v (φ x) ^ 2 ≤ B v * normAt b X v x ^ 2)
    (c0 : ℝ) (hc0 : 0 < c0) (hc : ∀ m, c0 ≤ monW lam m) :
    muMaxDef b X N ≤ -Real.log c0 - 2 * Real.log (FractionalIdeal.absNorm I : ℝ) / (Module.finrank ℚ K : ℝ)
      + (1 / (nPl K : ℝ)) * ∑ v, Real.log (B v) := by
  have hX' : ∀ v : InfinitePlace K, IsUnit ((fun _ : InfinitePlace K => (monD lam)⁻¹) v).det :=
    fun v => (Matrix.isUnit_nonsing_inv_det_iff).mpr (monD_det lam)
  have hφ0 : φ ≠ 0 := by
    rintro rfl
    apply hne
    rw [eq_bot_iff]
    rintro y hy
    obtain ⟨x, -, rfl⟩ := Submodule.mem_map.mp hy
    simp
  obtain ⟨L0, hL0⟩ : ∃ L0 : Submodule (𝓞 K) (MonI lam → K),
      L0 = ⨆ m ∈ (Finset.univ : Finset (MonI lam)), (𝓞 K ∙ (Pi.single m (1 : K) : MonI lam → K)) := ⟨_, rfl⟩
  have hmemL0 : ∀ m, (Pi.single m (1 : K) : MonI lam → K) ∈ L0 := fun m => by
    rw [hL0]
    exact Submodule.mem_iSup_of_mem m (Submodule.mem_iSup_of_mem (Finset.mem_univ m)
      (Submodule.mem_span_singleton_self _))
  have hmapT : N.map (φ.restrictScalars (𝓞 K)) ≤ idealSmul (I : Submodule (𝓞 K) K) L0 := by
    intro y hy
    obtain ⟨x, hx, rfl⟩ := Submodule.mem_map.mp hy
    have hdec : φ x = ∑ m, (φ x m) • (Pi.single m (1 : K) : MonI lam → K) := by
      ext m'
      simp [Finset.sum_apply, Pi.single_apply]
    show φ x ∈ _
    rw [hdec]
    exact Submodule.sum_mem _ fun m _ => Formalism.LFunctionChainParameters.slopeLatticeData.mem_idealSmul (hint x hx m) (hmemL0 m)
  have horth : ∀ s t : MonI lam, s ≠ t → Formalism.BranchingDeterminantCap.OrthAt (Pi.basisFun K (MonI lam))
      (fun _ : InfinitePlace K => (monD lam)⁻¹) (𝓞 K ∙ (Pi.single s (1 : K) : MonI lam → K))
      (𝓞 K ∙ (Pi.single t (1 : K) : MonI lam → K)) := by
    intro s t hst v x hx y hy
    obtain ⟨r, rfl⟩ := Submodule.mem_span_singleton.mp hx
    obtain ⟨r', rfl⟩ := Submodule.mem_span_singleton.mp hy
    simp only [majAt, monH_fcoord]
    apply Finset.sum_eq_zero
    intro m _
    by_cases hm : m = s
    · subst hm
      simp [hst]
    · simp [Pi.single_apply, hm]
  have hline : ∀ m, muMaxDef (Pi.basisFun K (MonI lam)) (fun _ : InfinitePlace K => (monD lam)⁻¹)
      (𝓞 K ∙ (Pi.single m (1 : K) : MonI lam → K)) ≤ -Real.log c0 := by
    intro m
    refine max_slope_line_neg_log _ _ hX' _ ?_ c0 hc0 fun v => ?_
    · simp
    · rw [monH_norm, Finset.sum_eq_single m (fun b _ hb => by simp [Pi.single_apply, hb]) (by simp)]
      simpa using hc m
  have hmain := Formalism.BranchingDeterminantCap.OrthogonalSumAlt.main (Pi.basisFun K (MonI lam)) (fun _ : InfinitePlace K => (monD lam)⁻¹) hX'
    (fun m => 𝓞 K ∙ (Pi.single m (1 : K) : MonI lam → K)) (fun m => Submodule.fg_span_singleton _)
    (fun s t h => Formalism.BranchingDeterminantCap.OrthogonalSumAlt.orth_inner _ _ (horth s t h))
    Finset.univ
  rw [← hL0] at hmain
  have hL0ne : L0 ≠ ⊥ := by
    intro h
    apply hne
    rw [eq_bot_iff]
    intro y hy
    obtain ⟨x, -, rfl⟩ := Submodule.mem_map.mp hy
    have h1 : ∀ m, (Pi.single m (1 : K) : MonI lam → K) = 0 := fun m => by
      have := hmemL0 m
      rwa [h, Submodule.mem_bot] at this
    rw [Submodule.mem_bot]
    funext m
    exact absurd (h1 m) (by simp)
  have hL0mu : muMaxDef (Pi.basisFun K (MonI lam)) (fun _ : InfinitePlace K => (monD lam)⁻¹) L0 ≤ -Real.log c0 := by
    have h2 := hmain.2.2.2 ((-Real.log c0 - slopeNormalisingConstant K) / 2) (fun m _ _ => by
      have := hline m
      rw [frameB_muMaxDef] at this
      linarith) hL0ne
    rw [frameB_muMaxDef]
    linarith
  have hT := Formalism.LFunctionChainParameters.slopeLatticeData.muMaxDef_fractional_le (Pi.basisFun K (MonI lam))
    (fun _ : InfinitePlace K => (monD lam)⁻¹) hX' hmain.1 hL0ne hI0
  have hS := ((Formalism.HN.slopeIneqMean K V κ (MonI lam → K) (MonI lam) b X (Pi.basisFun K (MonI lam))
    (fun _ : InfinitePlace K => (monD lam)⁻¹) hX hX' φ N hN hne).2 (idealSmul (I : Submodule (𝓞 K) K) L0)
    (Formalism.LFunctionChainParameters.slopeLatticeData.idealSmul_fg I hmain.1) hmapT).2 hinj
  have hht : htMap b X (Pi.basisFun K (MonI lam)) (fun _ : InfinitePlace K => (monD lam)⁻¹) φ ≤
      1 / (nPl K : ℝ) * ∑ v, Real.log (B v) := by
    unfold htMap
    apply mul_le_mul_of_nonneg_left _ (by positivity)
    apply Finset.sum_le_sum
    intro v _
    have hpos := Formalism.HN.PlaceOperatorNorms.opNormAt_pos b X (Pi.basisFun K (MonI lam))
      (fun _ : InfinitePlace K => (monD lam)⁻¹) hX hX' v φ hφ0
    have hle : opNormAt b X (Pi.basisFun K (MonI lam)) (fun _ : InfinitePlace K => (monD lam)⁻¹) v φ ≤ √(B v) := by
      apply Formalism.L2.Geo.ExtensionFiltration.opNormAt_le_of_points b X _ _ hX φ v _ (Real.sqrt_nonneg _)
      intro f
      have h0 : 0 ≤ normAt (Pi.basisFun K (MonI lam)) (fun _ : InfinitePlace K => (monD lam)⁻¹) v (φ f) :=
        Real.sqrt_nonneg _
      have h1 : 0 ≤ normAt b X v f := Real.sqrt_nonneg _
      have := Real.sqrt_le_sqrt (hnorm v f)
      rwa [Real.sqrt_sq h0, Real.sqrt_mul (hB v).le, Real.sqrt_sq h1] at this
    apply Real.log_le_log (by positivity)
    calc opNormAt b X (Pi.basisFun K (MonI lam)) (fun _ : InfinitePlace K => (monD lam)⁻¹) v φ ^ 2
        ≤ √(B v) ^ 2 := pow_le_pow_left₀ hpos.le hle 2
      _ = B v := Real.sq_sqrt (hB v).le
  linarith [hS, hT, hL0mu, hht]

end Gen

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.MuMaxLeMon =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.ShortAtMeanLog =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL4.ShortAtMeanLog", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.SlopeMaxOpenOfHookTwoLeV\npublic import Formalism.LocalRingCardinality.HostCls\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.MainNotions.flipTwoThree Formalism.HN

theorem trace_re_sum (E : Type) [Field E] [NumberField E] [IsTotallyComplex E] (z : E) :
    ((Algebra.trace ℚ E z : ℚ) : ℝ) = ∑ w : InfinitePlace E, 2 * (w.embedding z).re := by
  classical
  have h1 : ((Algebra.trace ℚ E z : ℚ) : ℂ) = ∑ φ : E →+* ℂ, φ z := by
    have h : algebraMap ℚ ℂ (Algebra.trace ℚ E z) = ∑ σ : E →ₐ[ℚ] ℂ, σ z :=
      trace_eq_sum_embeddings ℂ (x := z)
    rw [show ((Algebra.trace ℚ E z : ℚ) : ℂ) = algebraMap ℚ ℂ (Algebra.trace ℚ E z) from
      (eq_ratCast _ _).symm, h]
    exact (Fintype.sum_equiv (RingHom.equivRatAlgHom E ℂ) (fun φ : E →+* ℂ => φ z)
      (fun σ : E →ₐ[ℚ] ℂ => σ z) (fun _ => rfl)).symm
  have h2 : ((Algebra.trace ℚ E z : ℚ) : ℝ) = ∑ φ : E →+* ℂ, (φ z).re := by
    rw [← Complex.re_sum, ← h1, Complex.ratCast_re]
  rw [h2, ← Finset.sum_fiberwise Finset.univ (fun φ : E →+* ℂ => InfinitePlace.mk φ)
    (fun φ : E →+* ℂ => (φ z).re)]
  refine Finset.sum_congr rfl fun w _ => ?_
  have hfib : ∀ φ ∈ Finset.univ.filter (fun φ : E →+* ℂ => InfinitePlace.mk φ = w),
      (φ z).re = (w.embedding z).re := by
    intro φ hφ
    have hw := (Finset.mem_filter.mp hφ).2
    subst hw
    rcases InfinitePlace.embedding_mk_eq φ with h | h
    · rw [h]
    · rw [h, ComplexEmbedding.conjugate_coe_eq, Complex.conj_re]
  rw [Finset.sum_congr rfl hfib, Finset.sum_const, InfinitePlace.card_filter_mk_eq, nsmul_eq_mul]
  have hm : w.mult = 2 := InfinitePlace.mult_isComplex ⟨w, IsTotallyComplex.isComplex w⟩
  rw [hm]
  norm_num

theorem two_nPl (E : Type) [Field E] [NumberField E] [IsTotallyComplex E] : 2 * nPl E = Module.finrank ℚ E := by
  classical
  rw [← InfinitePlace.sum_mult_eq]
  have h : ∀ w : InfinitePlace E, w.mult = 2 := fun w =>
    InfinitePlace.mult_isComplex ⟨w, IsTotallyComplex.isComplex w⟩
  simp only [h, Finset.sum_const, Finset.card_univ, smul_eq_mul]
  unfold nPl
  ring

attribute [local instance] Formalism.BasicNotions.Host.cmStar

private lemma sum_log_le_card_mul_log_mean_of_pos {ι : Type*} [Fintype ι] (S : ι → ℝ) (hS : ∀ i, 0 < S i)
    (hn : 0 < (Fintype.card ι : ℝ)) :
    ∑ i, Real.log (S i) ≤ (Fintype.card ι : ℝ) * Real.log ((∑ i, S i) / Fintype.card ι) := by
  have hT : 0 < ∑ i, S i := by
    have : Nonempty ι := Fintype.card_pos_iff.mp (by exact_mod_cast hn)
    exact Finset.sum_pos (fun i _ => hS i) Finset.univ_nonempty
  set M := (∑ i, S i) / (Fintype.card ι : ℝ) with hM
  have hMpos : 0 < M := div_pos hT hn
  have h1 : ∀ i, Real.log (S i) - Real.log M ≤ S i / M - 1 := by
    intro i
    rw [← Real.log_div (hS i).ne' hMpos.ne']
    exact Real.log_le_sub_one_of_pos (div_pos (hS i) hMpos)
  have h2 : ∑ i, (Real.log (S i) - Real.log M) ≤ ∑ i, (S i / M - 1) :=
    Finset.sum_le_sum fun i _ => h1 i
  have h3 : (∑ i, S i) / M = (Fintype.card ι : ℝ) := by
    have := hT.ne'
    have := hn.ne'
    rw [hM]
    field_simp
  rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib, ← Finset.sum_div, h3, Finset.sum_const,
    Finset.sum_const, Finset.card_univ, nsmul_eq_mul, nsmul_eq_mul, mul_one] at h2
  linarith

theorem shortAt_mean_log (D : D7) (u : D.what₂.Word) (c : (D.mem u).C.cls 0) [IsTotallyComplex D.host.E]
    (y : Fin (D.R.N 0) → (D.sp.X 0).V) (hy : Formalism.MainNotions.flipTwoThree.ShortAt D u c y)
    (hpos : ∀ (w : InfinitePlace D.host.E) a, 0 < (w.embedding ((D.sp.X 0).hT (y a) (y a))).re) :
    (∑ w : InfinitePlace D.host.E, Real.log (∑ a, (w.embedding ((D.sp.X 0).hT (y a) (y a))).re)) / (nPl D.host.E : ℝ) ≤
      Real.log ((D.R.k : ℝ) ^ 3 * (2 * D.host.v) ^ 2) := by
  classical
  obtain ⟨-, -, htr⟩ := hy
  have hk : D.R.N 0 = D.R.k := Formalism.BasicNotions.Ranks.N_zero D.R
  have hfin := Formalism.MainNotions.flipTwoThree.b_finrank_host D
  have hnf : nPl D.host.E = D.R.f := by
    have h2 := two_nPl D.host.E
    rw [hfin] at h2
    omega
  have hfo : D.R.f = 2 * D.R.ord := Formalism.BasicNotions.Ranks.f_eq_ord D.R
  have hf : 0 < D.R.f := by
    have := D.R.m_le_f
    have := D.R.two_le_m
    omega
  have hfR : (0 : ℝ) < D.R.f := by exact_mod_cast hf
  have hbound : ∀ a, ∑ w : InfinitePlace D.host.E, (w.embedding ((D.sp.X 0).hT (y a) (y a))).re ≤
      (D.R.f : ℝ) * ((D.R.k : ℝ) ^ 2 * (2 * D.host.v) ^ 2) := by
    intro a
    have h := htr a
    rw [trace_re_sum, div_le_iff₀ (by linarith), ← Finset.mul_sum] at h
    nlinarith [h]
  have hS : ∀ w : InfinitePlace D.host.E, 0 < ∑ a, (w.embedding ((D.sp.X 0).hT (y a) (y a))).re := by
    intro w
    have hne : (Finset.univ : Finset (Fin (D.R.N 0))).Nonempty := by
      refine ⟨⟨0, ?_⟩, Finset.mem_univ _⟩
      rw [hk]
      have := D.R.m_add_three_le_k
      omega
    exact Finset.sum_pos (fun a _ => hpos w a) hne
  have htot : ∑ w : InfinitePlace D.host.E, ∑ a, (w.embedding ((D.sp.X 0).hT (y a) (y a))).re ≤
      (D.R.k : ℝ) * ((D.R.f : ℝ) * ((D.R.k : ℝ) ^ 2 * (2 * D.host.v) ^ 2)) := by
    rw [Finset.sum_comm]
    calc _ ≤ ∑ _a : Fin (D.R.N 0), (D.R.f : ℝ) * ((D.R.k : ℝ) ^ 2 * (2 * D.host.v) ^ 2) :=
          Finset.sum_le_sum fun a _ => hbound a
      _ = _ := by rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, hk, nsmul_eq_mul]
  have hcard : (nPl D.host.E : ℝ) = (Fintype.card (InfinitePlace D.host.E) : ℝ) := rfl
  have hcf : (Fintype.card (InfinitePlace D.host.E) : ℝ) = D.R.f := by
    rw [← hcard]
    exact_mod_cast hnf
  have hnpos : (0 : ℝ) < (Fintype.card (InfinitePlace D.host.E) : ℝ) := by rw [hcf]; exact hfR
  have key := sum_log_le_card_mul_log_mean_of_pos _ hS hnpos
  have hTpos : 0 < ∑ w : InfinitePlace D.host.E, ∑ a, (w.embedding ((D.sp.X 0).hT (y a) (y a))).re :=
    Finset.sum_pos (fun w _ => hS w)
      (Finset.univ_nonempty_iff.mpr (Fintype.card_pos_iff.mp (by exact_mod_cast hnpos)))
  rw [hcard, div_le_iff₀ hnpos]
  refine key.trans ?_
  rw [mul_comm]
  refine mul_le_mul_of_nonneg_right ?_ hnpos.le
  apply Real.log_le_log (div_pos hTpos hnpos)
  rw [div_le_iff₀ hnpos, hcf]
  nlinarith [htot]

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.ShortAtMeanLog =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.ThirdLinkOfArchimedean =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL4.ThirdLinkOfArchimedean", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.ThirdPropositionOfClass\npublic import Formalism.LocalToGlobal.Columns.CoefficientMapHeightBound\npublic import Formalism.LocalToGlobal.Columns.MaxSlopeSummandOfFock\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.ColumnLatticeExactSlope\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.FockNExtCNu\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.MuMaxLeMon\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.ShortAtMeanLog\nimport Formalism.SharpRestriction.GlobalSchurBounds.TotallyPositiveTraceGeOfNormDiscr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.HN Formalism.MainNotions.flipTwoThree Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.L2.Col

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def ClassMap (D : D7) : Prop :=
  ∀ u (CV : ColVal D u) (c : (D.mem u).C.cls 0), (∃ y : Fin (D.R.N 0) → (D.sp.X 0).V, Formalism.MainNotions.flipTwoThree.ShortAt D u c y) →
    ∃ (φ : ((D.fm u).lat 0).V →ₗ[D.what₂.LL] (MonI ((D.fm u).lam 0) → D.what₂.LL))
      (I : FractionalIdeal (nonZeroDivisors (𝓞 D.what₂.LL)) D.what₂.LL) (B : InfinitePlace D.what₂.LL → ℝ),
      Set.InjOn φ (NC CV c) ∧ I ≠ 0 ∧ (∀ x ∈ NC CV c, ∀ m, φ x m ∈ (I : Submodule (𝓞 D.what₂.LL) D.what₂.LL)) ∧ (∀ v, 0 < B v) ∧
      (∀ v x, normAt (Pi.basisFun D.what₂.LL (MonI ((D.fm u).lam 0))) (fun _ => (monD ((D.fm u).lam 0))⁻¹) v (φ x) ^ 2 ≤
        B v * normAt ((D.fm u).lat 0).b ((D.fm u).lat 0).X v x ^ 2) ∧
      -(2 * Real.log (FractionalIdeal.absNorm I : ℝ) / (Module.finrank ℚ D.what₂.LL : ℝ)) +
          (1 / (nPl D.what₂.LL : ℝ)) * ∑ v, Real.log (B v) ≤
        ∑ τ, (colAbsP D u τ * Real.log ((D.R.k : ℝ) ^ 3 * (2 * D.host.v) ^ 2) - (lamCol D u τ (D.R.k - 1) : ℝ) * Real.log (Tu D u))

theorem slopeMaxClass_of_map (D : D7) (h : ClassMap D) : SlopeMaxClass D := by
  intro u CV c hy
  have := (columnHypotheses D u).tc
  obtain ⟨φ, I, B, hinj, hI0, hint, hB, hnorm, hnum⟩ := h u CV c hy
  have hne : (NC CV c).map (φ.restrictScalars (𝓞 D.what₂.LL)) ≠ ⊥ := by
    obtain ⟨x, hx, hx0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot (NC_ne_bot CV c)
    intro h0
    have hm : φ.restrictScalars (𝓞 D.what₂.LL) x ∈ (NC CV c).map (φ.restrictScalars (𝓞 D.what₂.LL)) := ⟨x, hx, rfl⟩
    rw [h0, Submodule.mem_bot] at hm
    exact hx0 (hinj hx (zero_mem _) (by rw [map_zero]; exact hm))
  have hm := muMax_le_mon D.what₂.LL ((D.fm u).lam 0) ((D.fm u).lat 0).b ((D.fm u).lat 0).X ((D.fm u).lat_good 0).1 (NC CV c)
    (((D.fm u).lat_good 0).2.1.map _) φ hinj hne I hI0 hint B hB hnorm (monCnu ((D.fm u).lam 0))
    (monCnu_pos _) (monW_ge_cNu _)
  have hl := log_monCnu ((D.fm u).lam 0) (rank_zero_pos D)
  rw [hl] at hm
  have hdW : ∀ τ, (dW ((D.fm u).lam 0 τ) : ℝ) = colAbsP D u τ := fun τ => by
    unfold dW
    push_cast
    exact sum_natWeight_eq_colAbsShifted D u τ
  have hN : ((D.R.N 0 : ℕ) : ℝ) = (D.R.k : ℝ) := by rw [Ranks.N_zero]
  simp only [hdW, hN] at hm
  have hk : (0 : ℝ) < D.R.k := by exact_mod_cast columnCount_pos D
  have hv : (0 : ℝ) < D.host.v := by have := two_le_half_rootDiscr D; linarith
  have hR : (∑ τ, (colAbsP D u τ * Real.log (4 * (D.R.k : ℝ) ^ 4 * D.host.v ^ 2) +
        Real.log (cNu ((D.fm u).lam 0 τ).natW) - (lamCol D u τ (D.R.k - 1) : ℝ) * Real.log (Tu D u))) =
      (∑ τ, (colAbsP D u τ * Real.log (D.R.k : ℝ) + Real.log (cNu ((D.fm u).lam 0 τ).natW))) +
      ∑ τ, (colAbsP D u τ * Real.log ((D.R.k : ℝ) ^ 3 * (2 * D.host.v) ^ 2) - (lamCol D u τ (D.R.k - 1) : ℝ) * Real.log (Tu D u)) := by
    have e4 : Real.log (4 * (D.R.k : ℝ) ^ 4 * D.host.v ^ 2) =
        Real.log (D.R.k : ℝ) + Real.log ((D.R.k : ℝ) ^ 3 * (2 * D.host.v) ^ 2) := by
      rw [← Real.log_mul hk.ne' (by positivity)]
      congr 1
      ring
    rw [← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun τ _ => ?_
    rw [e4]
    ring
  show muMaxDef ((D.fm u).lat 0).b ((D.fm u).lat 0).X (NC CV c) ≤ _
  rw [hR]
  linarith

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.HN Formalism.MainNotions.flipTwoThree Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.L2.Col

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem shortAt_pos (D : D7) (u : D.what₂.Word) (c : (D.mem u).C.cls 0) (y : Fin (D.R.N 0) → (D.sp.X 0).V)
    (hy : Formalism.MainNotions.flipTwoThree.ShortAt D u c y) (w : InfinitePlace D.host.E) (a : Fin (D.R.N 0)) :
    0 < (w.embedding ((D.sp.X 0).hT (y a) (y a))).re := by
  obtain ⟨r, hr, he⟩ := (columnHypotheses D u).pos w.embedding (y a) (hy.2.1.ne_zero a)
  rw [he, Complex.ofReal_re]
  exact hr

def ClassMapT (D : D7) : Prop :=
  ∀ u (CV : ColVal D u) (c : (D.mem u).C.cls 0) (y : Fin (D.R.N 0) → (D.sp.X 0).V), Formalism.MainNotions.flipTwoThree.ShortAt D u c y →
    ∃ (φ : ((D.fm u).lat 0).V →ₗ[D.what₂.LL] (MonI ((D.fm u).lam 0) → D.what₂.LL))
      (I : FractionalIdeal (nonZeroDivisors (𝓞 D.what₂.LL)) D.what₂.LL) (Dv : InfinitePlace D.what₂.LL → ℝ),
      Set.InjOn φ (NC CV c) ∧ I ≠ 0 ∧ (∀ x ∈ NC CV c, ∀ m, φ x m ∈ (I : Submodule (𝓞 D.what₂.LL) D.what₂.LL)) ∧ (∀ v, 0 < Dv v) ∧
      (∀ v x, normAt (Pi.basisFun D.what₂.LL (MonI ((D.fm u).lam 0))) (fun _ => (monD ((D.fm u).lam 0))⁻¹) v (φ x) ^ 2 ≤
        ((∏ τ, (∑ a, (v.embedding (CV.rho τ ((D.sp.X 0).hT (y a) (y a)))).re) ^ dW ((D.fm u).lam 0 τ)) * Dv v) *
          normAt ((D.fm u).lat 0).b ((D.fm u).lat 0).X v x ^ 2) ∧
      -(2 * Real.log (FractionalIdeal.absNorm I : ℝ) / (Module.finrank ℚ D.what₂.LL : ℝ)) +
          (1 / (nPl D.what₂.LL : ℝ)) * ∑ v, Real.log (Dv v) ≤
        -∑ τ, (lamCol D u τ (D.R.k - 1) : ℝ) * Real.log (Tu D u)

theorem class_map_of_archimedean (D : D7) (h : ClassMapT D) : ClassMap D := by
  intro u CV c hy
  obtain ⟨y, hy⟩ := hy
  have := (columnHypotheses D u).tc
  have := (columnHypotheses D u).tcE
  have hposE := shortAt_pos D u c y hy
  obtain ⟨φ, I, Dv, hinj, hI0, hint, hD, hnorm, hnum⟩ := h u CV c y hy
  set G : InfinitePlace D.what₂.LL → D.what₂.Tau → ℝ := fun v τ => ∑ a, (v.embedding (CV.rho τ ((D.sp.X 0).hT (y a) (y a)))).re with hG
  have hN0 : 0 < D.R.N 0 := rank_zero_pos D
  have hGc : ∀ v τ, G v τ = ∑ a, ((v.comap (CV.rho τ)).embedding ((D.sp.X 0).hT (y a) (y a))).re := fun v τ =>
    Finset.sum_congr rfl fun a _ => (re_comap (CV.rho τ) v _).symm
  have hGpos : ∀ v τ, 0 < G v τ := fun v τ => by
    rw [hGc]
    exact Finset.sum_pos (fun a _ => hposE _ a) ⟨⟨0, hN0⟩, Finset.mem_univ _⟩
  refine ⟨φ, I, fun v => (∏ τ, G v τ ^ dW ((D.fm u).lam 0 τ)) * Dv v, hinj, hI0, hint,
    fun v => mul_pos (Finset.prod_pos fun τ _ => pow_pos (hGpos v τ) _) (hD v), hnorm, ?_⟩
  have hlog : ∀ v, Real.log ((∏ τ, G v τ ^ dW ((D.fm u).lam 0 τ)) * Dv v) =
      (∑ τ, (dW ((D.fm u).lam 0 τ) : ℝ) * Real.log (G v τ)) + Real.log (Dv v) := fun v => by
    rw [Real.log_mul (Finset.prod_pos fun τ _ => pow_pos (hGpos v τ) _).ne' (hD v).ne',
      Real.log_prod (fun τ _ => (pow_pos (hGpos v τ) _).ne')]
    congr 1
    exact Finset.sum_congr rfl fun τ _ => Real.log_pow _ _
  have hmean : ∀ τ, (1 / (nPl D.what₂.LL : ℝ)) * ∑ v, Real.log (G v τ) ≤ Real.log ((D.R.k : ℝ) ^ 3 * (2 * D.host.v) ^ 2) := by
    intro τ
    have h1 := mean_over_places_comap D.host.E D.what₂.LL (CV.rho τ)
      (fun w => Real.log (∑ a, (w.embedding ((D.sp.X 0).hT (y a) (y a))).re))
    have h2 : (∑ v, Real.log (G v τ)) = ∑ v : InfinitePlace D.what₂.LL,
        Real.log (∑ a, ((v.comap (CV.rho τ)).embedding ((D.sp.X 0).hT (y a) (y a))).re) :=
      Finset.sum_congr rfl fun v _ => by rw [hGc]
    rw [h2, h1]
    exact shortAt_mean_log D u c y hy hposE
  have hdW : ∀ τ, (dW ((D.fm u).lam 0 τ) : ℝ) = colAbsP D u τ := fun τ => by
    unfold dW
    push_cast
    exact sum_natWeight_eq_colAbsShifted D u τ
  have hsplit : (1 / (nPl D.what₂.LL : ℝ)) * ∑ v, Real.log ((∏ τ, G v τ ^ dW ((D.fm u).lam 0 τ)) * Dv v) =
      (∑ τ, (dW ((D.fm u).lam 0 τ) : ℝ) * ((1 / (nPl D.what₂.LL : ℝ)) * ∑ v, Real.log (G v τ))) +
        (1 / (nPl D.what₂.LL : ℝ)) * ∑ v, Real.log (Dv v) := by
    simp only [hlog, Finset.sum_add_distrib, mul_add]
    congr 1
    simp_rw [Finset.mul_sum]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun τ _ => Finset.sum_congr rfl fun v _ => by ring
  have hbound : (∑ τ, (dW ((D.fm u).lam 0 τ) : ℝ) * ((1 / (nPl D.what₂.LL : ℝ)) * ∑ v, Real.log (G v τ))) ≤
      ∑ τ, colAbsP D u τ * Real.log ((D.R.k : ℝ) ^ 3 * (2 * D.host.v) ^ 2) :=
    Finset.sum_le_sum fun τ _ => by
      rw [← hdW τ]
      exact mul_le_mul_of_nonneg_left (hmean τ) (Nat.cast_nonneg _)
  rw [hsplit]
  have e : (∑ τ, (colAbsP D u τ * Real.log ((D.R.k : ℝ) ^ 3 * (2 * D.host.v) ^ 2) -
      (lamCol D u τ (D.R.k - 1) : ℝ) * Real.log (Tu D u))) =
      (∑ τ, colAbsP D u τ * Real.log ((D.R.k : ℝ) ^ 3 * (2 * D.host.v) ^ 2)) -
        ∑ τ, (lamCol D u τ (D.R.k - 1) : ℝ) * Real.log (Tu D u) := Finset.sum_sub_distrib _ _
  rw [e]
  linarith

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.ThirdLinkOfArchimedean =====

-- ===== clump member: Formalism.LocalToGlobal.Columns.BrpColLatOneSpan =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Columns.BrpColLatOneSpan", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.SummandSlopeAtDecoratedLattice\npublic import Formalism.LocalToGlobal.Divisibility.CoefMod\npublic import Formalism.SizeWindowBrackets.LcvBaseChange\npublic import Formalism.LocalToGlobal.Columns.BrzColLatOneLattice\nimport Formalism.LocalToGlobal.Columns.CoefficientsModP.LatticeBasisExistsHolds\nimport Formalism.LocalToGlobal.Columns.LocWLemmas\nimport Formalism.LocalToGlobal.Columns.StdLatUnimodular\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module
open scoped Matrix

noncomputable section

namespace Formalism.L2.Col

open Formalism.BasicNotions Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.HN Formalism.HermitianLatticesTheory

section Loc

variable {K : Type} [Field K] [NumberField K] {V V' : Type} [AddCommGroup V] [Module K V] [Module (𝓞 K) V]
  [IsScalarTower (𝓞 K) K V] [AddCommGroup V'] [Module K V'] [Module (𝓞 K) V'] [IsScalarTower (𝓞 K) K V']

theorem localization_map₃ (p : Ideal (𝓞 K)) [p.IsPrime] (f : V →ₗ[K] V') (A : Submodule (𝓞 K) V) :
    localization₂ p (A.map (f.restrictScalars (𝓞 K))) = (localization₂ p A).map (f.restrictScalars (𝓞 K)) := by
  ext x
  constructor
  · rintro ⟨s, hs, a, ha, hax⟩
    have hs0 : (s : K) ≠ 0 := by
      intro h0
      apply hs
      have : s = 0 := by exact_mod_cast h0
      rw [this]; exact p.zero_mem
    refine ⟨((s : K)⁻¹) • a, ⟨s, hs, ?_⟩, ?_⟩
    · rw [← algebraMap_smul K s, smul_smul]
      rw [show (algebraMap (𝓞 K) K s) * (s : K)⁻¹ = 1 from mul_inv_cancel₀ hs0, one_smul]
      exact ha
    · simp only [LinearMap.restrictScalars_apply, map_smul]
      simp only [LinearMap.restrictScalars_apply] at hax
      rw [hax, ← algebraMap_smul K s x, smul_smul]
      rw [show (s : K)⁻¹ * (algebraMap (𝓞 K) K s) = 1 from inv_mul_cancel₀ hs0, one_smul]
  · rintro ⟨y, ⟨s, hs, hy⟩, rfl⟩
    refine ⟨s, hs, s • y, hy, ?_⟩
    simp only [LinearMap.restrictScalars_apply]
    rw [← algebraMap_smul K s y, map_smul, algebraMap_smul]

end Loc

section LocDel

variable (K : Type) [Field K] [NumberField K] [StarRing K] {n : ℕ}

def brpRhoEquiv (lam : DomWeight n) (B : GL (Fin n) K) : VV K (oneW lam) ≃ₗ[K] VV K (oneW lam) :=
  LinearEquiv.ofLinear (rhoK (oneW lam) (fun _ => B)) (rhoK (oneW lam) (fun _ => B⁻¹))
    (by
      rw [← Module.End.mul_eq_comp, ← map_mul]
      have : ((fun _ : Unit => B) * fun _ => B⁻¹) = 1 := by funext; simp
      rw [this, map_one]; rfl)
    (by
      rw [← Module.End.mul_eq_comp, ← map_mul]
      have : ((fun _ : Unit => B⁻¹) * fun _ => B) = 1 := by funext; simp
      rw [this, map_one]; rfl)

def brpMatEquiv (B : GL (Fin n) K) : (Fin n → K) ≃ₗ[K] (Fin n → K) :=
  LinearEquiv.ofLinear (Matrix.mulVecLin (B : Matrix (Fin n) (Fin n) K)) (Matrix.mulVecLin ((B⁻¹ : GL (Fin n) K) : Matrix (Fin n) (Fin n) K))
    (by rw [← Matrix.mulVecLin_mul]; simp)
    (by rw [← Matrix.mulVecLin_mul]; simp)

theorem brp_lidx_colLat (M : Submodule (𝓞 K) (Fin n → K)) (w : HeightOneSpectrum (𝓞 K)) (B : GL (Fin n) K)
    (hB : IsBasisAt w M B) :
    lidx w.asIdeal (colLat (1 : GL (Fin n) K)) M = vAdd w (B : Matrix (Fin n) (Fin n) K).det := by
  have hfull : Submodule.IsFullLattice K (colLat (1 : GL (Fin n) K)) := by
    refine { toIsLattice := brz_colLat_one_lattice K, span_eq_top := ?_ }
    apply eq_top_iff.mpr
    intro v _
    have hv : v = ∑ i, v i • (Pi.single i 1 : Fin n → K) := by
      funext j
      simp [Finset.sum_apply, Pi.single_apply]
    rw [hv]
    apply Submodule.sum_mem
    intro i _
    apply Submodule.smul_mem
    apply Submodule.subset_span
    change (Pi.single i 1 : Fin n → K) ∈ colLat (1 : GL (Fin n) K)
    rw [lc_mem_colLat_one]
    simpa [stdLat, Submodule.mem_pi] using (single_mem_stdLat (E := K) (n := n) i 1)
  rw [bridge_lidx_det_holds K (Fin n → K) w (colLat 1) M (brpMatEquiv K B) hfull ?_]
  · show vAdd w (LinearMap.det (Matrix.toLin' (B : Matrix (Fin n) (Fin n) K))) = _
    rw [LinearMap.det_toLin']
  · rw [hB, lc_colLat_eq_gLat B]
    rfl

end LocDel

section Sum

end Sum

section Weyl

variable (K : Type) [Field K] [NumberField K] [StarRing K] [_root_.NumberField.IsTotallyComplex K]

theorem brp_span_lattice {V : Type} [AddCommGroup V] [Module K V] [Module (𝓞 K) V] [IsScalarTower (𝓞 K) K V] {j : ℕ}
    (e : Fin j → V) (hsp : Submodule.span K (Set.range e) = ⊤) :
    Submodule.IsLattice K (Submodule.span (𝓞 K) (Set.range e)) := by
  exact Submodule.IsLattice.of_fg _ (Submodule.fg_span (Set.finite_range e))
theorem brp_colLat_one_span (n : ℕ) :
    colLat (1 : GL (Fin n) K) = Submodule.span (𝓞 K) (Set.range fun i : Fin n => (Pi.single i 1 : Fin n → K)) := by
  unfold colLat
  congr 2
  funext j a
  simp [Matrix.one_apply, Pi.single_apply]

theorem brp_lcvInf_std (n : ℕ) :
    Formalism.LFunctionChainParameters.LLcv.lcvInf (Pi.basisFun K (Fin n)) (fun _ => (1 : Matrix (Fin n) (Fin n) ℂ))
      (fun i : Fin n => (Pi.single i 1 : Fin n → K)) = 0 := by
  unfold Formalism.LFunctionChainParameters.LLcv.lcvInf
  have : ∀ v, gramPl (Pi.basisFun K (Fin n)) (fun _ => (1 : Matrix (Fin n) (Fin n) ℂ)) v
      (fun i : Fin n => (Pi.single i 1 : Fin n → K)) = 1 := by
    intro v
    ext a c
    simp only [gramPl, Matrix.of_apply, majAt, fcoord, vecAt, inv_one, Matrix.one_mulVec, Pi.basisFun_repr]
    rw [Finset.sum_eq_single a]
    · by_cases h : a = c
      · subst h; simp
      · simp [h]
    · intro b _ hb
      simp [Pi.single_apply, hb]
    · intro h; exact absurd (Finset.mem_univ _) h
  simp [this]

end Weyl

end Formalism.L2.Col
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Columns.BrpColLatOneSpan =====

-- ===== clump member: Formalism.LocalToGlobal.Columns.TwistedLocalisationComparable =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Columns.TwistedLocalisationComparable", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.StandardDeltaIntegralCoeffs\npublic import Formalism.LocalToGlobal.Columns.SummandSlopeOfThreeLemmas\npublic import Formalism.LocalToGlobal.Columns.BrpColLatOneSpan\npublic import Formalism.LocalToGlobal.Columns.BrpStarLatLattice\npublic import Formalism.LocalToGlobal.Columns.CoefficientsModP\nimport Formalism.LocalToGlobal.Columns.LocWLemmas\nimport Formalism.SizeWindowBrackets.ChainSlopeWindows.TruncatedLatticeHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module
open scoped Matrix

noncomputable section

namespace Formalism.L2.Col

open Formalism.BasicNotions Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.HermitianLatticesTheory Formalism.HN

section Loc

variable {K : Type} [Field K] [NumberField K] {n : ℕ}

theorem det_mem_subring_of_entries_mem (R0 : Subring K) (A : Matrix (Fin n) (Fin n) K) (h : ∀ a b, A a b ∈ R0) : A.det ∈ R0 := by
  rw [Matrix.det_apply]
  refine R0.sum_mem fun σ _ => ?_
  rw [Units.smul_def]
  exact zsmul_mem (R0.prod_mem fun i _ => h _ _) _

theorem zpow_mem_subring (R0 : Subring K) {u : K} (h1 : u ∈ R0) (h2 : u⁻¹ ∈ R0) (e : ℤ) : u ^ e ∈ R0 := by
  rcases e with m | m
  · show u ^ ((m : ℕ) : ℤ) ∈ R0
    rw [zpow_natCast]
    exact R0.pow_mem h1 m
  · rw [zpow_negSucc, ← inv_pow]
    exact R0.pow_mem h2 _

theorem scaled_zpow_mem_subring (R0 : Subring K) {c u : K} (h1 : c * u ∈ R0) (h2 : c * u⁻¹ ∈ R0) (e : ℤ) : c ^ e.natAbs * u ^ e ∈ R0 := by
  rcases e with m | m
  · show c ^ m * u ^ ((m : ℕ) : ℤ) ∈ R0
    rw [zpow_natCast, ← mul_pow]
    exact R0.pow_mem h1 m
  · show c ^ (m + 1) * u ^ (Int.negSucc m) ∈ R0
    rw [zpow_negSucc, ← inv_pow, ← mul_pow]
    exact R0.pow_mem h2 _

theorem integer_mem_local_ring (w : HeightOneSpectrum (𝓞 K)) (r : 𝓞 K) : algebraMap (𝓞 K) K r ∈ locRing w :=
  ⟨1, one_mem _, by rw [one_smul]; exact Submodule.mem_one.2 ⟨r, rfl⟩⟩

theorem det_change_of_basis_mem_locRing (w : HeightOneSpectrum (𝓞 K)) {M : Submodule (𝓞 K) (Fin n → K)} {B B' : GL (Fin n) K}
    (hB : IsBasisAt w M B) (hB' : IsBasisAt w M B') :
    ((B'⁻¹ * B : GL (Fin n) K) : Matrix (Fin n) (Fin n) K).det ∈ locRing w :=
  det_mem_subring_of_entries_mem _ _ fun a b => (mem_locRing w _).2 (lc_entries_same w hB hB' a b)

theorem det_bound_common_denominator (w : HeightOneSpectrum (𝓞 K)) {M : Submodule (𝓞 K) (Fin n → K)} {B : GL (Fin n) K} (hB : IsBasisAt w M B) (d : 𝓞 K)
    (h1 : ∀ x ∈ M, d • x ∈ colLat (1 : GL (Fin n) K)) (h2 : ∀ x ∈ colLat (1 : GL (Fin n) K), d • x ∈ M) :
    algebraMap (𝓞 K) K (d ^ n) * (B : Matrix (Fin n) (Fin n) K).det ∈ locRing w ∧
    algebraMap (𝓞 K) K (d ^ n) * ((B : Matrix (Fin n) (Fin n) K).det)⁻¹ ∈ locRing w := by
  obtain ⟨hE1, hE2⟩ := Formalism.L2.DIV.nb_entries w M B hB d h1 h2
  have key : ∀ A : Matrix (Fin n) (Fin n) K, (∀ a b, algebraMap (𝓞 K) K d * A a b ∈ locRing w) →
      algebraMap (𝓞 K) K (d ^ n) * A.det ∈ locRing w := by
    intro A hA
    have h3 := det_mem_subring_of_entries_mem (locRing w) (algebraMap (𝓞 K) K d • A)
      (fun a b => by rw [Matrix.smul_apply, smul_eq_mul]; exact hA a b)
    rwa [Matrix.det_smul, Fintype.card_fin, ← map_pow] at h3
  refine ⟨key _ (fun a b => hE1 a b), ?_⟩
  have h4 := key _ (fun a b => hE2 a b)
  first
    | rwa [Matrix.coe_units_inv, Matrix.det_nonsing_inv, Ring.inverse_eq_inv'] at h4

variable {ι : Type} [Fintype ι]

theorem det_twist_inv_mul (lam : ι → DomWeight n) (B : ι → GL (Fin n) K) : detTwK lam B⁻¹ * detTwK lam B = 1 := by
  simp only [detTwK, detPow, ← Finset.prod_mul_distrib]
  refine Finset.prod_eq_one fun τ _ => ?_
  rw [← Units.val_mul, ← mul_zpow, Pi.inv_apply, map_inv, inv_mul_cancel, one_zpow, Units.val_one]

theorem det_twist_ne_zero (lam : ι → DomWeight n) (B : ι → GL (Fin n) K) : detTwK lam B ≠ 0 := by
  intro h
  have h1 := det_twist_inv_mul lam B
  rw [h, mul_zero] at h1
  exact zero_ne_one h1

theorem det_twist_inv_mul_det_twist_mem_locRing (lam : ι → DomWeight n) (w : HeightOneSpectrum (𝓞 K)) {M : ι → Submodule (𝓞 K) (Fin n → K)}
    {B B' : ι → GL (Fin n) K} (hB : ∀ τ, IsBasisAt w (M τ) (B τ)) (hB' : ∀ τ, IsBasisAt w (M τ) (B' τ)) :
    detTwK lam B'⁻¹ * detTwK lam B ∈ locRing w := by
  simp only [detTwK, detPow, ← Finset.prod_mul_distrib]
  refine Subring.prod_mem _ fun τ _ => ?_
  rw [Pi.inv_apply, ← Units.val_mul, ← mul_zpow, ← map_mul, Units.val_zpow_eq_zpow_val]
  refine zpow_mem_subring _ ?_ ?_ _
  · rw [Matrix.GeneralLinearGroup.val_det_apply]
    exact det_change_of_basis_mem_locRing w (hB τ) (hB' τ)
  · rw [← Units.val_inv_eq_inv_val, ← map_inv, mul_inv_rev, inv_inv, Matrix.GeneralLinearGroup.val_det_apply]
    exact det_change_of_basis_mem_locRing w (hB' τ) (hB τ)

theorem det_twist_uniform_bound (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (hM : ∀ τ, Submodule.IsFullLattice K (M τ)) :
    ∃ dd : 𝓞 K, dd ≠ 0 ∧ ∀ (w : HeightOneSpectrum (𝓞 K)) (B : ι → GL (Fin n) K), (∀ τ, IsBasisAt w (M τ) (B τ)) →
      algebraMap (𝓞 K) K dd * detTwK lam B ∈ locRing w ∧ algebraMap (𝓞 K) K dd * detTwK lam B⁻¹ ∈ locRing w := by
  obtain ⟨d, hd, hdM⟩ := Formalism.L2.DIV.nb_sandwich_fam M hM
  refine ⟨∏ τ, (d ^ n) ^ (lam τ).detShift.natAbs, ?_, fun w B hB => ?_⟩
  · exact Finset.prod_ne_zero_iff.2 fun τ _ => pow_ne_zero _ (pow_ne_zero _ hd)
  · have hb : ∀ τ, (algebraMap (𝓞 K) K d) ^ n * (B τ : Matrix (Fin n) (Fin n) K).det ∈ locRing w ∧
        (algebraMap (𝓞 K) K d) ^ n * ((B τ : Matrix (Fin n) (Fin n) K).det)⁻¹ ∈ locRing w := fun τ => by
      simpa only [map_pow] using det_bound_common_denominator w (hB τ) d (hdM τ).1 (hdM τ).2
    simp only [detTwK, detPow, map_prod, map_pow, ← Finset.prod_mul_distrib]
    constructor
    · refine Subring.prod_mem _ fun τ _ => ?_
      rw [Units.val_zpow_eq_zpow_val, Matrix.GeneralLinearGroup.val_det_apply]
      exact scaled_zpow_mem_subring _ (hb τ).1 (hb τ).2 _
    · refine Subring.prod_mem _ fun τ _ => ?_
      rw [Pi.inv_apply, map_inv, Units.val_zpow_eq_zpow_val, Units.val_inv_eq_inv_val,
        Matrix.GeneralLinearGroup.val_det_apply]
      exact scaled_zpow_mem_subring _ (hb τ).2 (by rw [inv_inv]; exact (hb τ).1) _

def twLoc (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (w : HeightOneSpectrum (𝓞 K)) : Submodule (𝓞 K) K :=
  ⨅ (B : ι → GL (Fin n) K) (_ : ∀ τ, IsBasisAt w (M τ) (B τ)),
    (localization₂ w.asIdeal (1 : Submodule (𝓞 K) K)).comap ((LinearMap.mulLeft K (detTwK lam B⁻¹)).restrictScalars (𝓞 K))

theorem twId_eq (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) : twId lam M = ⨅ w, twLoc lam M w := rfl

theorem mem_twLoc (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (w : HeightOneSpectrum (𝓞 K)) (a : K) :
    a ∈ twLoc lam M w ↔ ∀ B : ι → GL (Fin n) K, (∀ τ, IsBasisAt w (M τ) (B τ)) → detTwK lam B⁻¹ * a ∈ locRing w := by
  simp only [twLoc, Submodule.mem_iInf, Submodule.mem_comap, LinearMap.restrictScalars_apply, LinearMap.mulLeft_apply]
  exact Iff.rfl

theorem mem_twLoc_iff (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (w : HeightOneSpectrum (𝓞 K))
    (B : ι → GL (Fin n) K) (hB : ∀ τ, IsBasisAt w (M τ) (B τ)) (a : K) :
    a ∈ twLoc lam M w ↔ detTwK lam B⁻¹ * a ∈ locRing w := by
  rw [mem_twLoc]
  constructor
  · intro h
    exact h B hB
  · intro h B' hB'
    have e : detTwK lam B'⁻¹ * a = (detTwK lam B'⁻¹ * detTwK lam B) * (detTwK lam B⁻¹ * a) := by
      calc detTwK lam B'⁻¹ * a = detTwK lam B'⁻¹ * a * (detTwK lam B⁻¹ * detTwK lam B) := by
            rw [det_twist_inv_mul, mul_one]
        _ = (detTwK lam B'⁻¹ * detTwK lam B) * (detTwK lam B⁻¹ * a) := by ring
    rw [e]
    exact (locRing w).mul_mem (det_twist_inv_mul_det_twist_mem_locRing lam w hB hB') h

theorem localisation_twisted_ideal (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (hM : ∀ τ, Submodule.IsFullLattice K (M τ))
    (w : HeightOneSpectrum (𝓞 K)) : localization₂ w.asIdeal (twId lam M) = twLoc lam M w := by
  obtain ⟨dd, hdd, hb⟩ := det_twist_uniform_bound lam M hM
  choose Bw hBw using fun (w : HeightOneSpectrum (𝓞 K)) (τ : ι) => basisAtEx K n (M τ) (hM τ) w
  rw [twId_eq]
  refine localized_iInf (twLoc lam M) (1 : Submodule (𝓞 K) K) dd hdd ?_ ?_ ?_ w
  · intro w
    refine le_antisymm ?_ (lc_le_locP w _)
    rintro x ⟨s, hs, hx⟩
    rw [mem_twLoc_iff lam M w (Bw w) (hBw w)] at hx ⊢
    rw [mem_locRing] at hx ⊢
    rw [Algebra.smul_def, mul_left_comm, ← Algebra.smul_def] at hx
    exact (smul_mem_localized_iff w _ hs _).1 hx
  · intro w x hx
    rw [mem_twLoc_iff lam M w (Bw w) (hBw w)] at hx
    rw [← mem_locRing]
    have e : dd • x = (algebraMap (𝓞 K) K dd * detTwK lam (Bw w)) * (detTwK lam (Bw w)⁻¹ * x) := by
      have := det_twist_inv_mul lam (Bw w)
      rw [Algebra.smul_def]
      calc algebraMap (𝓞 K) K dd * x = algebraMap (𝓞 K) K dd * (detTwK lam (Bw w)⁻¹ * detTwK lam (Bw w)) * x := by rw [this, mul_one]
        _ = _ := by ring
    rw [e]
    exact mul_mem (hb w (Bw w) (hBw w)).1 hx
  · intro w x hx
    rw [mem_twLoc_iff lam M w (Bw w) (hBw w)]
    obtain ⟨r, rfl⟩ := Submodule.mem_one.1 hx
    have e : detTwK lam (Bw w)⁻¹ * dd • algebraMap (𝓞 K) K r = (algebraMap (𝓞 K) K dd * detTwK lam (Bw w)⁻¹) * algebraMap (𝓞 K) K r := by
      rw [Algebra.smul_def]; ring
    rw [e]
    exact mul_mem (hb w (Bw w) (hBw w)).2 (integer_mem_local_ring w r)

end Loc

section Ideal

variable {K : Type} [Field K] [NumberField K] {n : ℕ} {ι : Type} [Fintype ι]

theorem twisted_localisation_comparable (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (hM : ∀ τ, Submodule.IsFullLattice K (M τ)) :
    ∃ dd : 𝓞 K, dd ≠ 0 ∧ (∀ w, ∀ x ∈ twLoc lam M w, dd • x ∈ localization₂ w.asIdeal (1 : Submodule (𝓞 K) K)) ∧
      (∀ w, ∀ x ∈ (1 : Submodule (𝓞 K) K), dd • x ∈ twLoc lam M w) := by
  obtain ⟨dd, hdd, hb⟩ := det_twist_uniform_bound lam M hM
  refine ⟨dd, hdd, fun w x hx => ?_, fun w x hx => ?_⟩
  · choose B hB using fun τ => Formalism.L2.DIV.basisAtEx K n (M τ) (hM τ) w
    have h1 := (mem_twLoc_iff lam M w B hB x).1 hx
    have e : dd • x = (algebraMap (𝓞 K) K dd * detTwK lam B) * (detTwK lam B⁻¹ * x) := by
      rw [Algebra.smul_def]
      calc algebraMap (𝓞 K) K dd * x
          = algebraMap (𝓞 K) K dd * x * (detTwK lam B⁻¹ * detTwK lam B) := by rw [det_twist_inv_mul, mul_one]
        _ = (algebraMap (𝓞 K) K dd * detTwK lam B) * (detTwK lam B⁻¹ * x) := by ring
    show dd • x ∈ locRing w
    rw [e]
    exact (locRing w).mul_mem (hb w B hB).1 h1
  · choose B hB using fun τ => Formalism.L2.DIV.basisAtEx K n (M τ) (hM τ) w
    rw [mem_twLoc_iff lam M w B hB]
    obtain ⟨r, rfl⟩ := Submodule.mem_one.1 hx
    have e : detTwK lam B⁻¹ * (dd • algebraMap (𝓞 K) K r) =
        (algebraMap (𝓞 K) K dd * detTwK lam B⁻¹) * algebraMap (𝓞 K) K r := by
      rw [Algebra.smul_def]
      ring
    rw [e]
    exact (locRing w).mul_mem (hb w B hB).2 (integer_mem_local_ring w r)

theorem twisted_ideal_fractional (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (hM : ∀ τ, Submodule.IsFullLattice K (M τ)) :
    IsFractional (nonZeroDivisors (𝓞 K)) (twId lam M) := by
  obtain ⟨dd, hdd, h1, -⟩ := twisted_localisation_comparable lam M hM
  refine ⟨dd, mem_nonZeroDivisors_of_ne_zero hdd, fun b hb => ?_⟩
  rw [twId_eq, Submodule.mem_iInf] at hb
  have hw : ∀ w : HeightOneSpectrum (𝓞 K), w.valuation K (dd • b) ≤ 1 := by
    intro w
    obtain ⟨s, hs, hx⟩ := h1 w b (hb w)
    obtain ⟨r, hr⟩ := Submodule.mem_one.1 hx
    have hs1 : w.intValuation s = 1 :=
      le_antisymm (w.intValuation_le_one s) (not_lt.1 fun h => hs ((w.intValuation_lt_one_iff_mem s).1 h))
    have e : w.valuation K (dd • b) = w.valuation K (algebraMap (𝓞 K) K r) := by
      rw [hr, Algebra.smul_def s, map_mul, HeightOneSpectrum.valuation_of_algebraMap, hs1, one_mul]
    rw [e]
    exact w.valuation_le_one r
  obtain ⟨y, hy⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one (K := K) (x := dd • b) hw
  exact ⟨y, hy⟩

def twIdeal (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (hM : ∀ τ, Submodule.IsFullLattice K (M τ)) :
    FractionalIdeal (nonZeroDivisors (𝓞 K)) K := ⟨twId lam M, twisted_ideal_fractional lam M hM⟩

theorem twIdeal_coe (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (hM : ∀ τ, Submodule.IsFullLattice K (M τ)) :
    (twIdeal lam M hM : Submodule (𝓞 K) K) = twId lam M := rfl

theorem twIdeal_ne_zero (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (hM : ∀ τ, Submodule.IsFullLattice K (M τ)) :
    twIdeal lam M hM ≠ 0 := by
  intro h
  obtain ⟨dd, hdd, -, h2⟩ := twisted_localisation_comparable lam M hM
  have hmem : dd • (1 : K) ∈ (twIdeal lam M hM : Submodule (𝓞 K) K) := by
    rw [twIdeal_coe, twId_eq, Submodule.mem_iInf]
    exact fun w => h2 w 1 (Submodule.mem_one.2 ⟨1, map_one _⟩)
  rw [h] at hmem
  have h0 : dd • (1 : K) = 0 := (FractionalIdeal.mem_zero_iff _).1 hmem
  rw [Algebra.smul_def, mul_one] at h0
  exact hdd ((map_eq_zero_iff _ (IsFractionRing.injective (𝓞 K) K)).1 h0)

theorem valuation_finset_prod (w : HeightOneSpectrum (𝓞 K)) (f : ι → K) (hf : ∀ τ, f τ ≠ 0) (s : Finset ι) :
    vAdd w (∏ τ ∈ s, f τ) = ∑ τ ∈ s, vAdd w (f τ) := by
  classical
  refine Finset.induction_on s ?_ ?_
  · simp [vAdd]
  · intro a s ha ih
    rw [Finset.prod_insert ha, Finset.sum_insert ha, ← ih]
    have h1 : w.valuation K (f a) ≠ 0 := (Valuation.ne_zero_iff _).2 (hf a)
    have h2 : w.valuation K (∏ τ ∈ s, f τ) ≠ 0 :=
      (Valuation.ne_zero_iff _).2 (Finset.prod_ne_zero_iff.2 fun τ _ => hf τ)
    simp only [vAdd, map_mul, WithZero.log_mul h1 h2]
    ring

variable [StarRing K] [_root_.NumberField.IsTotallyComplex K]

theorem valuation_det_twist (lam : ι → DomWeight n) (w : HeightOneSpectrum (𝓞 K)) (B : ι → GL (Fin n) K) :
    vAdd w (detTwK lam B) = ∑ τ, (lam τ).detShift * vAdd w (B τ : Matrix (Fin n) (Fin n) K).det := by
  unfold detTwK
  rw [valuation_finset_prod w (fun τ => detPow K n (B τ) (lam τ).detShift) (fun τ => Units.ne_zero _)]
  refine Finset.sum_congr rfl fun τ _ => ?_
  simp only [detPow, Units.val_zpow_eq_zpow_val, Matrix.GeneralLinearGroup.val_det_apply, vAdd, map_zpow₀,
    WithZero.log_zpow]
  ring

theorem local_index_twisted_ideal (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (hM : ∀ τ, Submodule.IsFullLattice K (M τ))
    (w : HeightOneSpectrum (𝓞 K)) (B : ι → GL (Fin n) K) (hB : ∀ τ, IsBasisAt w (M τ) (B τ)) :
    lidx w.asIdeal (Submodule.span (𝓞 K) (Set.range fun _ : Fin 1 => (1 : K))) (twId lam M) = vAdd w (detTwK lam B) := by
  have hA : Submodule.span (𝓞 K) (Set.range fun _ : Fin 1 => (1 : K)) = (1 : Submodule (𝓞 K) K) := by
    rw [Set.range_const, Submodule.one_eq_span]
  have hlat : Submodule.IsLattice K (Submodule.span (𝓞 K) (Set.range fun _ : Fin 1 => (1 : K))) :=
    brp_span_lattice K _ (by rw [Set.range_const]; exact Ideal.span_singleton_one)
  have hfull : Submodule.IsFullLattice K (Submodule.span (𝓞 K) (Set.range fun _ : Fin 1 => (1 : K))) := by
    refine { toIsLattice := hlat, span_eq_top := ?_ }
    apply eq_top_iff.mpr
    intro x _
    have h1 : (1 : K) ∈ Submodule.span K (↑(Submodule.span (𝓞 K) (Set.range fun _ : Fin 1 => (1 : K))) : Set K) :=
      Submodule.subset_span (Submodule.subset_span ⟨0, rfl⟩)
    simpa using Submodule.smul_mem _ x h1
  rw [bridge_lidx_det_holds K K w _ (twId lam M) (LinearEquiv.smulOfNeZero K K (detTwK lam B) (det_twist_ne_zero lam B)) hfull ?_]
  · have e : ((LinearEquiv.smulOfNeZero K K (detTwK lam B) (det_twist_ne_zero lam B) : K ≃ₗ[K] K) : K →ₗ[K] K) =
        detTwK lam B • LinearMap.id := by
      ext; simp
    rw [e, LinearMap.det_smul, Module.finrank_self, pow_one, LinearMap.det_id, mul_one]
  · rw [localization_map₃, localisation_twisted_ideal lam M hM, hA]
    ext x
    rw [mem_twLoc_iff lam M w B hB, mem_locRing]
    constructor
    · rintro ⟨y, hy, rfl⟩
      have e : detTwK lam B⁻¹ * (detTwK lam B • y) = y := by
        rw [smul_eq_mul, ← mul_assoc, det_twist_inv_mul, one_mul]
      simp only [LinearMap.restrictScalars_apply, LinearEquiv.coe_coe, LinearEquiv.smulOfNeZero_apply]
      rw [e]
      exact hy
    · intro hx
      refine ⟨detTwK lam B⁻¹ * x, hx, ?_⟩
      simp only [LinearMap.restrictScalars_apply, LinearEquiv.coe_coe, LinearEquiv.smulOfNeZero_apply, smul_eq_mul]
      rw [← mul_assoc, mul_comm (detTwK lam B), det_twist_inv_mul, one_mul]

end Ideal

section Norm

variable (K : Type) [Field K] [NumberField K] [StarRing K] [_root_.NumberField.IsTotallyComplex K] {n : ℕ} {ι : Type} [Fintype ι]

theorem lattice_slope_degree_formula (hn : 0 < n) (M : Submodule (𝓞 K) (Fin n → K)) (hM : Submodule.IsFullLattice K M) :
    (Function.support fun p : {p : Ideal (𝓞 K) // p.IsMaximal} =>
      (haveI := p.2.isPrime; lidx p.1 (Submodule.span (𝓞 K) (Set.range fun i : Fin n => (Pi.single i 1 : Fin n → K))) M)).Finite ∧
    (n : ℝ) * (latK K M).mu = -(2 * ∑ᶠ p : {p : Ideal (𝓞 K) // p.IsMaximal},
      (Real.log (Ideal.absNorm p.1 : ℝ) / (Module.finrank ℚ K : ℝ)) *
        (haveI := p.2.isPrime; (lidx p.1 (Submodule.span (𝓞 K) (Set.range fun i : Fin n => (Pi.single i 1 : Fin n → K))) M : ℝ))) := by
  classical
  have : Nontrivial (Fin n → K) := Pi.nontrivial_at ⟨0, hn⟩
  set es : Fin n → (Fin n → K) := fun i => Pi.single i 1 with hesdef
  have hesb : es = ⇑(Pi.basisFun K (Fin n)) := by funext i; simp [hesdef]
  have hes : LinearIndependent K es := by rw [hesb]; exact (Pi.basisFun K (Fin n)).linearIndependent
  have hspS : Submodule.span K (Set.range es) = ⊤ := by rw [hesb]; exact (Pi.basisFun K (Fin n)).span_eq
  obtain ⟨hrk2, -, -, hfin2, hmu2⟩ := Formalism.LFunctionChainParameters.LLcv.log_covolume_slope_mu K (Fin n → K) (Fin n) (Pi.basisFun K (Fin n))
    (fun _ => 1) (fun _ => by simp) n es M hes hM.fg (by
      intro h
      have hs := hM.span_eq_top
      rw [h, Submodule.bot_coe, Submodule.span_zero_singleton] at hs
      exact bot_ne_top hs) (by rw [hM.span_eq_top, hspS])
  refine ⟨hfin2, ?_⟩
  rw [brp_latK_mu K M hM.fg]
  show (n : ℝ) * muDef (Pi.basisFun K (Fin n)) (fun _ => 1) M = _
  rw [hmu2, hrk2]
  unfold Formalism.LFunctionChainParameters.LLcv.lcv Formalism.LFunctionChainParameters.LLcv.lcvFin
  rw [brp_lcvInf_std]
  have hnpos : (0 : ℝ) < (n : ℝ) := by exact_mod_cast hn
  field_simp
  ring

theorem twisted_ideal_norm_formula (hn : 0 < n) (lam : ι → DomWeight n) (M : ι → Submodule (𝓞 K) (Fin n → K)) (hM : ∀ τ, Submodule.IsFullLattice K (M τ)) :
    -(2 * Real.log (FractionalIdeal.absNorm (twIdeal lam M hM) : ℝ) / (Module.finrank ℚ K : ℝ)) =
      ∑ τ, ((lam τ).detShift : ℝ) * ((n : ℝ) * (latK K (M τ)).mu) := by
  classical
  set e1 : Fin 1 → K := fun _ => 1 with he1
  have hli : LinearIndependent K e1 := LinearIndependent.of_subsingleton (0 : Fin 1) one_ne_zero
  have hId := Formalism.LFunctionChainParameters.LLcv.covolume_ideal K K Unit (Basis.singleton Unit K) 1 e1 (twIdeal lam M hM) hli one_pos
    (twIdeal_ne_zero lam M hM)
  have hsm : idealSmul (twIdeal lam M hM : Submodule (𝓞 K) K) (Submodule.span (𝓞 K) (Set.range e1)) = twId lam M := by
    rw [twIdeal_coe]
    apply le_antisymm
    · refine Submodule.span_le.2 ?_
      rintro _ ⟨a, ha, x, hx, rfl⟩
      rw [he1, Set.range_const, Submodule.mem_span_singleton] at hx
      obtain ⟨r, rfl⟩ := hx
      have : a • r • (1 : K) = r • a := by
        rw [smul_eq_mul, Algebra.smul_def, Algebra.smul_def]; ring
      rw [this]
      exact Submodule.smul_mem _ r ha
    · intro a ha
      refine Submodule.subset_span ⟨a, ha, 1, Submodule.subset_span ⟨0, rfl⟩, ?_⟩
      rw [smul_eq_mul, mul_one]
  rw [hsm] at hId
  unfold Formalism.LFunctionChainParameters.LLcv.lcvFin at hId
  have hterm : ∀ p : {p : Ideal (𝓞 K) // p.IsMaximal},
      (haveI := p.2.isPrime; lidx p.1 (Submodule.span (𝓞 K) (Set.range e1)) (twId lam M)) =
        ∑ τ, (lam τ).detShift * (haveI := p.2.isPrime;
          lidx p.1 (Submodule.span (𝓞 K) (Set.range fun i : Fin n => (Pi.single i 1 : Fin n → K))) (M τ)) := by
    intro p
    have := p.2.isPrime
    let w : HeightOneSpectrum (𝓞 K) :=
      ⟨p.1, p.2.isPrime, Ring.ne_bot_of_isMaximal_of_not_isField p.2 (RingOfIntegers.not_isField K)⟩
    choose B hB using fun τ => basisAtEx K n (M τ) (hM τ) w
    have h1 : lidx p.1 (Submodule.span (𝓞 K) (Set.range e1)) (twId lam M) = vAdd w (detTwK lam B) :=
      local_index_twisted_ideal lam M hM w B hB
    have h2 : ∀ τ, lidx p.1 (Submodule.span (𝓞 K) (Set.range fun i : Fin n => (Pi.single i 1 : Fin n → K))) (M τ) =
        vAdd w (B τ : Matrix (Fin n) (Fin n) K).det := fun τ => by
      rw [← brp_colLat_one_span]
      exact brp_lidx_colLat K (M τ) w (B τ) (hB τ)
    show lidx p.1 _ _ = ∑ τ, _ * lidx p.1 _ _
    rw [h1, valuation_det_twist]
    exact Finset.sum_congr rfl fun τ _ => by rw [h2 τ]
  have hfin := fun τ => (lattice_slope_degree_formula K hn (M τ) (hM τ)).1
  have hdeg := fun τ => (lattice_slope_degree_formula K hn (M τ) (hM τ)).2
  simp only [hdeg]
  have hsum : ∑ᶠ p : {p : Ideal (𝓞 K) // p.IsMaximal}, (Real.log (Ideal.absNorm p.1 : ℝ) / (Module.finrank ℚ K : ℝ)) *
      (haveI := p.2.isPrime; (lidx p.1 (Submodule.span (𝓞 K) (Set.range e1)) (twId lam M) : ℝ)) =
      ∑ τ, ((lam τ).detShift : ℝ) * ∑ᶠ p : {p : Ideal (𝓞 K) // p.IsMaximal},
        (Real.log (Ideal.absNorm p.1 : ℝ) / (Module.finrank ℚ K : ℝ)) * (haveI := p.2.isPrime;
          (lidx p.1 (Submodule.span (𝓞 K) (Set.range fun i : Fin n => (Pi.single i 1 : Fin n → K))) (M τ) : ℝ)) := by
    simp only [mul_finsum]
    rw [← finsum_sum_comm]
    · refine finsum_congr fun p => ?_
      rw [hterm p]
      push_cast
      rw [Finset.mul_sum]
      exact Finset.sum_congr rfl fun τ _ => by ring
    · intro τ _
      refine (hfin τ).subset fun p hp => ?_
      simp only [Function.mem_support] at hp ⊢
      intro h'
      apply hp
      rw [h']
      simp
  rw [hsum] at hId
  have e : 2 * Real.log (FractionalIdeal.absNorm (twIdeal lam M hM) : ℝ) / (Module.finrank ℚ K : ℝ) =
      2 * ((1 : ℕ) : ℝ) * Real.log (FractionalIdeal.absNorm (twIdeal lam M hM) : ℝ) / (Module.finrank ℚ K : ℝ) := by
    rw [Nat.cast_one, mul_one]
  rw [e, ← hId, Finset.mul_sum, ← Finset.sum_neg_distrib]
  exact Finset.sum_congr rfl fun τ _ => by ring

end Norm

end Formalism.L2.Col
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Columns.TwistedLocalisationComparable =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.CfMemTwId =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL4.CfMemTwId", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.CoeffMemOfIntSpanAt\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.ThirdPropositionOfClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain MvPolynomial
open scoped Matrix

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.HN Formalism.MainNotions.flipTwoThree Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.L2.Col Formalism.BasicNotions.SkeletonIndexLemmas

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Int2

variable {D : D7} {u : D.what₂.Word} (CV : ColVal D u)

theorem cf_mem_twId (c : (D.mem u).C.cls 0) (y : Fin (D.R.N 0) → (D.sp.X 0).V)
    (hy : ∀ a, y a ∈ dualSub (D.sp.X 0) (D.clsLat u 0 c)) (g : D.what₂.Tau → GL (Fin (D.R.N 0)) D.what₂.LL)
    (hg : ∀ τ, ((g τ : GL (Fin (D.R.N 0)) D.what₂.LL) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL) = gM CV c y τ)
    {x : ((D.fm u).lat 0).V} (hx : x ∈ NC CV c) (m : MonI ((D.fm u).lam 0)) :
    cfMap ((D.fm u).lam 0) g (coE CV (hTV0 D u) x c) m ∈ twId ((D.fm u).lam 0) (MQ CV c) := by
  classical
  rw [mem_twId]
  intro w B hB
  set w' := D.plEq.symm w with hw'
  have hw : D.plEq w' = w := D.plEq.apply_symm_apply w
  have hLB : ∀ τ, LocBasis D w' (CV.Q c τ) (CV.eQ c τ) (B τ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL) :=
    fun τ => locBasis_of_isBasisAt CV c τ w' (B τ) (by rw [hw]; exact hB τ)
  let γ : (D.mem u).C.cls 0 → D.what₂.Tau → Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL := fun c' τ =>
    if c' = c then (B τ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL)
    else Classical.choose (exists_locBasis w' (CV.Q c' τ) (CV.Q_good c' τ) (CV.eQ c' τ))
  have hγ : ∀ c' τ, LocBasis D w' (CV.Q c' τ) (CV.eQ c' τ) (γ c' τ) := by
    intro c' τ
    by_cases h : c' = c
    · simp only [γ, if_pos h]
      rw [h]
      exact hLB τ
    · simp only [γ, if_neg h]
      exact Classical.choose_spec (exists_locBasis w' (CV.Q c' τ) (CV.Q_good c' τ) (CV.eQ c' τ))
  have hxL : x ∈ ((D.fm u).lat 0).L := by
    obtain ⟨x', hx', rfl⟩ := hx
    exact prjC_mem CV c hx'
  have hxW : x ∈ locW D.what₂.places w' ((D.fm u).lat 0).L := Submodule.subset_span hxL
  have hP := (CV.fin w' γ hγ x).1 hxW c
  simp only [γ, if_pos rfl] at hP
  set F : Pol D.what₂.LL D.what₂.Tau (D.R.N 0) := ((coE CV (hTV0 D u) x c : VV D.what₂.LL ((D.fm u).lam 0)) :
    Pol D.what₂.LL D.what₂.Tau (D.R.N 0)) with hF
  have hFco : F = CV.co x c := coE_coe CV (hTV0 D u) x c
  have hinvB : (fun τ => (B τ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL)⁻¹) =
      fun τ => (((B⁻¹) τ : GL (Fin (D.R.N 0)) D.what₂.LL) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL) := by
    funext τ
    rw [Pi.inv_apply, Matrix.coe_units_inv]
  rw [← hFco, hinvB, actAll_eq_actP] at hP
  have hF0 : actP ((D.fm u).lam 0) B⁻¹ F ∈ (map (σ := D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) (locRing w).subtype).range := by
    refine mem_range_of_coeff_mem _ fun m' => ?_
    rw [← hw]
    exact intW_mem_locRing w' (coeff_mem_of_intSpanAt w' _ hP m')
  have hU : ∀ τ a b, (((g * B) τ : GL (Fin (D.R.N 0)) D.what₂.LL) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL)ᵀ a b ∈
      locRing w := by
    intro τ a b
    have hcol : (fun c => (B τ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL) c a) ∈ localization₂ w.asIdeal (MQ CV c τ) := by
      rw [hB τ]
      exact le_localisation w _ (Submodule.subset_span ⟨a, rfl⟩)
    obtain ⟨s, hs, hsx⟩ := hcol
    rw [mem_locRing]
    refine ⟨s, hs, ?_⟩
    have := gM_int CV c y hy τ _ hsx b
    rw [← hg τ, Matrix.mulVec_smul] at this
    have e : (((g * B) τ : GL (Fin (D.R.N 0)) D.what₂.LL) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL)ᵀ a b =
        ((g τ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL) *ᵥ fun c => (B τ : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL) c a) b := by
      simp [Matrix.mul_apply, Matrix.mulVec, dotProduct]
    rw [e]
    exact this
  have hkey := coeff_mem_of_mem_range _ (block_action_integral (locRing w) _ hU hF0) m.1
  have e : Formalism.GradedWeylDivisibility.blockAct D.what₂.LL (fun τ => (((g * B) τ : GL (Fin (D.R.N 0)) D.what₂.LL) :
      Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL)ᵀ) (actP ((D.fm u).lam 0) B⁻¹ F) =
      detTwK ((D.fm u).lam 0) B⁻¹ • trAct g F := by
    show trAct (g * B) (actP ((D.fm u).lam 0) B⁻¹ F) = _
    rw [trAct_mul]
    simp only [actP, LinearMap.smul_apply, AlgHom.toLinearMap_apply, AlgHom.comp_apply, map_smul, transpose_action_inv_right]
  rw [e, MvPolynomial.coeff_smul, smul_eq_mul, mem_locRing] at hkey
  exact hkey

end Int2

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.CfMemTwId =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.NfAllSelfEq =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL4.NfAllSelfEq", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.CoefficientMapHeightBound\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.CoeffMemOfIntSpanAt\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.ThirdPropositionOfClass\npublic import Formalism.LocalToGlobal.Columns.FockNormSubstitutionBound\nimport Formalism.LocalToGlobal.Columns.PolyFnLemmas\nimport Formalism.LocalToGlobal.GlobalTheory.GL4.PZBasis\nimport Formalism.LocalToGlobal.GlobalTheory.HLatOpsP\npublic import Formalism.SharpRestriction.GlobalSchurBounds.TotallyPositiveTraceGeOfNormDiscr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain MvPolynomial
open scoped Matrix

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.HN Formalism.MainNotions.flipTwoThree Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.L2.Col Formalism.BasicNotions.SkeletonIndexLemmas

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section SlopeTestRemainingChoices

theorem emb_nonreal {E : Type} [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] (φ : E →+* ℂ) : ∃ a : E, (φ a).im ≠ 0 := by
  by_contra h
  push Not at h
  have hr : NumberField.ComplexEmbedding.IsReal φ :=
    NumberField.ComplexEmbedding.isReal_iff.mpr (RingHom.ext fun x => by
      rw [NumberField.ComplexEmbedding.conjugate_coe_eq]
      exact Complex.conj_eq_iff_im.mpr (h x))
  exact NumberField.InfinitePlace.not_isReal_iff_isComplex.mpr
    (IsTotallyComplex.isComplex (NumberField.InfinitePlace.mk φ))
    (NumberField.InfinitePlace.isReal_mk_iff.mpr hr)

theorem map_mem_VV {ι : Type} [Fintype ι] {n : ℕ} (lam : ι → DomWeight n) {K : Type} [Field K] [CharZero K] (s : K →+* ℂ)
    {F : Pol K ι n} (hF : F ∈ VV K lam) : MvPolynomial.map s F ∈ VV ℂ lam := by
  obtain ⟨Z, -⟩ := standard_basis_z ι n lam
  rw [← Z.span_F K] at hF
  rw [← Z.span_F ℂ]
  induction hF using Submodule.span_induction with
  | mem p hp =>
    obtain ⟨i, rfl⟩ := hp
    rw [MvPolynomial.map_map, show s.comp (Int.castRingHom K) = Int.castRingHom ℂ from RingHom.ext_int _ _]
    exact Submodule.subset_span ⟨i, rfl⟩
  | zero => rw [map_zero]; exact zero_mem _
  | add p q _ _ hp hq => rw [map_add]; exact add_mem hp hq
  | smul a p _ hp =>
    rw [MvPolynomial.smul_eq_C_mul, map_mul, MvPolynomial.map_C, ← MvPolynomial.smul_eq_C_mul]
    exact Submodule.smul_mem _ _ hp

theorem fockN_smul {σ : Type} (d : ℂ) (f : MvPolynomial σ ℂ) : fockN (d • f) = ‖d‖ ^ 2 * fockN f := by
  unfold fockN
  rcases eq_or_ne d 0 with rfl | hd
  · simp
  · rw [MvPolynomial.support_smul_eq hd, Finset.mul_sum]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [MvPolynomial.coeff_smul, smul_eq_mul, norm_mul, mul_pow, mul_assoc]

theorem nfAll_self_eq {ι : Type} [Fintype ι] {n : ℕ} (lam : ι → DomWeight n) (p : MvPolynomial (ι × Fin n × Fin n) ℂ) :
    nfAll lam p p = ((fockN p / extremalFockNormProduct lam : ℝ) : ℂ) := by
  exact nfL_self lam p

end SlopeTestRemainingChoices

section Nrm

variable {D : D7} {u : D.what₂.Word} (CV : ColVal D u)

theorem maj_bc (c : (D.mem u).C.cls 0) (τ : D.what₂.Tau) (v : InfinitePlace D.what₂.LL) (y z : (D.sp.X 0).V) :
    majAt (CV.Q c τ).b (CV.Q c τ).X v (CV.bc c τ y) (CV.bc c τ z) = v.embedding (CV.rho τ ((D.sp.X 0).hT y z)) := by
  have := (columnHypotheses D u).tcE
  have hcm : ∀ (φ : D.host.E →+* ℂ) (a : D.host.E), φ (star a) = starRingEnd ℂ (φ a) := D.sp.cm.cmUnram.2.1
  set φ : D.host.E →+* ℂ := v.embedding.comp (CV.rho τ) with hφ
  obtain ⟨s1, s2, s3, s4⟩ := isSesq_maj (CV.Q c τ).b (CV.Q c τ).X v
  beta_reduce at s1 s2 s3 s4
  refine sesq_ext (F := fun y z => majAt (CV.Q c τ).b (CV.Q c τ).X v (CV.bc c τ y) (CV.bc c τ z))
    (G := fun y z => φ ((D.sp.X 0).hT y z)) (σ := φ) (emb_nonreal φ) ⟨?_, ?_, ?_, ?_⟩ ⟨?_, ?_, ?_, ?_⟩ ?_ y z
  · intro x x' y
    show majAt _ _ v (CV.bc c τ (x + x')) _ = _
    rw [map_add (f := _), s1]
  · intro x y y'
    show majAt _ _ v _ (CV.bc c τ (y + y')) = _
    rw [map_add (f := _), s2]
  · intro a x y
    show majAt _ _ v (CV.bc c τ (a • x)) _ = _
    rw [CV.bc_smul, s3]
    rfl
  · intro a x y
    show majAt _ _ v _ (CV.bc c τ (a • y)) = _
    rw [CV.bc_smul, s4]
    rfl
  · intro x x' y
    show φ ((D.sp.X 0).hT (x + x') y) = φ ((D.sp.X 0).hT x y) + φ ((D.sp.X 0).hT x' y)
    rw [map_add (f := _), LinearMap.add_apply, map_add (f := _)]
  · intro x y y'
    show φ ((D.sp.X 0).hT x (y + y')) = φ ((D.sp.X 0).hT x y) + φ ((D.sp.X 0).hT x y')
    rw [map_add (f := _), map_add (f := _)]
  · intro a x y
    show φ ((D.sp.X 0).hT (a • x) y) = starRingEnd ℂ (φ a) * φ ((D.sp.X 0).hT x y)
    rw [LinearMap.map_smulₛₗ₂, smul_eq_mul, map_mul, starRingEnd_apply, hcm]
  · intro a x y
    show φ ((D.sp.X 0).hT x (a • y)) = φ a * φ ((D.sp.X 0).hT x y)
    rw [map_smul, smul_eq_mul, map_mul]
  · intro x
    show majAt _ _ v (CV.bc c τ x) (CV.bc c τ x) = φ ((D.sp.X 0).hT x x)
    have hre := CV.bc_norm c τ v x
    have hreal : (φ ((D.sp.X 0).hT x x)).im = 0 := by
      have e : starRingEnd D.host.E ((D.sp.X 0).hT x x) = (D.sp.X 0).hT x x := (D.sp.X 0).herm.eq x x
      have e2 : starRingEnd ℂ (φ ((D.sp.X 0).hT x x)) = φ ((D.sp.X 0).hT x x) := by
        rw [← hcm, ← starRingEnd_apply, e]
      exact Complex.conj_eq_iff_im.1 e2
    apply Complex.ext
    · exact hre
    · rw [majAt_self, Complex.ofReal_im]
      exact hreal.symm

theorem riesz_bc (c : (D.mem u).C.cls 0) (τ : D.what₂.Tau) (v : InfinitePlace D.what₂.LL) (y : (D.sp.X 0).V)
    (q : (CV.Q c τ).V) : v.embedding (bcFun CV c τ y q) = majAt (CV.Q c τ).b (CV.Q c τ).X v (CV.bc c τ y) q := by
  obtain ⟨s1, s2, s3, s4⟩ := isSesq_maj (CV.Q c τ).b (CV.Q c τ).X v
  beta_reduce at s1 s2 s3 s4
  have hq : q ∈ Submodule.span D.what₂.LL (Set.range fun i => CV.bc c τ ((D.sp.X 0).frame i)) :=
    span_bc_frame CV c τ Submodule.mem_top
  induction hq using Submodule.span_induction with
  | mem q hq =>
    obtain ⟨i, rfl⟩ := hq
    rw [bcFun_bc, maj_bc]
  | zero =>
    rw [map_zero, map_zero]
    have := s2 (CV.bc c τ y) 0 0
    rw [add_zero] at this
    linear_combination this
  | add q q' _ _ h1 h2 => rw [map_add (f := _), map_add (f := _), s2, h1, h2]
  | smul a q _ h1 => rw [map_smul, smul_eq_mul, map_mul, s4, h1]

theorem gM_map (c : (D.mem u).C.cls 0) (y : Fin (D.R.N 0) → (D.sp.X 0).V) (τ : D.what₂.Tau) (v : InfinitePlace D.what₂.LL) :
    (gM CV c y τ).map v.embedding =
      Matrix.of (fun a k => star (fcoord (CV.Q c τ).b (CV.Q c τ).X v (CV.bc c τ (y a)) ((CV.eQ c τ).symm k))) *
        Matrix.reindex (CV.eQ c τ) (CV.eQ c τ) ((CV.Q c τ).X v)⁻¹ := by
  classical
  ext a j
  simp only [Matrix.map_apply, gM, Matrix.of_apply]
  rw [riesz_bc, Matrix.mul_apply]
  unfold majAt
  refine Fintype.sum_equiv (CV.eQ c τ) _ _ fun i => ?_
  simp only [Matrix.of_apply, Matrix.reindex_apply, Matrix.submatrix_apply, Equiv.symm_apply_apply]
  congr 1
  simp [fcoord, vecAt, Matrix.mulVec, dotProduct, Basis.repr_self, Finsupp.single_apply]

theorem invFr_coe (v : InfinitePlace D.what₂.LL) (c : (D.mem u).C.cls 0) (τ : D.what₂.Tau) :
    ((invFr CV v c τ : GL (Fin (D.R.N 0)) ℂ) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ) =
      Matrix.reindex (CV.eQ c τ) (CV.eQ c τ) ((CV.Q c τ).X v)⁻¹ := rfl

theorem hsN_gM (c : (D.mem u).C.cls 0) (y : Fin (D.R.N 0) → (D.sp.X 0).V) (τ : D.what₂.Tau) (v : InfinitePlace D.what₂.LL) :
    hsN (((gM CV c y τ).map v.embedding *
        (((invFr CV v c τ)⁻¹ : GL (Fin (D.R.N 0)) ℂ) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ))ᵀ) =
      ∑ a, (v.embedding (CV.rho τ ((D.sp.X 0).hT (y a) (y a)))).re := by
  have hdet : IsUnit (Matrix.reindex (CV.eQ c τ) (CV.eQ c τ) ((CV.Q c τ).X v)⁻¹).det := by
    rw [← invFr_coe]
    exact Matrix.isUnits_det_units _
  rw [gM_map, Matrix.coe_units_inv, invFr_coe, Matrix.mul_nonsing_inv_cancel_right _ _ hdet]
  unfold hsN
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [← CV.bc_norm c τ v (y a), majAt_self, Complex.ofReal_re]
  unfold normAt cnorm
  rw [Real.sq_sqrt (Finset.sum_nonneg fun _ _ => by positivity)]
  refine Fintype.sum_equiv (CV.eQ c τ).symm _ _ fun k => ?_
  simp only [Matrix.transpose_apply, Matrix.of_apply, norm_star]

theorem tcAt_mem_VV (v : InfinitePlace D.what₂.LL) (c : (D.mem u).C.cls 0) (x : ((D.fm u).lat 0).V) :
    tcAt CV v c x ∈ VV ℂ ((D.fm u).lam 0) := by
  unfold tcAt
  refine polyAction_mem_VV _ _ (map_mem_VV _ v.embedding ?_)
  rw [← coE_coe CV (hTV0 D u) x c]
  exact (coE CV (hTV0 D u) x c).2

theorem class_norm (c : (D.mem u).C.cls 0) (y : Fin (D.R.N 0) → (D.sp.X 0).V) (hli : LinearIndependent D.host.E y)
    (v : InfinitePlace D.what₂.LL) (x : ((D.fm u).lat 0).V) :
    normAt (Pi.basisFun D.what₂.LL (MonI ((D.fm u).lam 0))) (fun _ => (monD ((D.fm u).lam 0))⁻¹) v
        (cfMap ((D.fm u).lam 0) (gG CV c y hli) (coE CV (hTV0 D u) x c)) ^ 2 ≤
      ((∏ τ, (∑ a, (v.embedding (CV.rho τ ((D.sp.X 0).hT (y a) (y a)))).re) ^ dW ((D.fm u).lam 0 τ)) *
          ‖detTwK ((D.fm u).lam 0) (invFr CV v c)⁻¹‖ ^ 2) *
        normAt ((D.fm u).lat 0).b ((D.fm u).lat 0).X v x ^ 2 := by
  set lam := (D.fm u).lam 0 with hlam
  set g := gG CV c y hli with hg
  set F : Pol D.what₂.LL D.what₂.Tau (D.R.N 0) :=
    ((coE CV (hTV0 D u) x c : VV D.what₂.LL lam) : Pol D.what₂.LL D.what₂.Tau (D.R.N 0)) with hF
  set P := tcAt CV v c x with hP
  set d : ℂ := detTwK lam (invFr CV v c)⁻¹ with hd
  set U : D.what₂.Tau → Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ := fun τ =>
    ((((g τ : GL (Fin (D.R.N 0)) D.what₂.LL) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL).map v.embedding) *
      (((invFr CV v c τ)⁻¹ : GL (Fin (D.R.N 0)) ℂ) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ))ᵀ with hU
  set G := MvPolynomial.map v.embedding (trAct g F) with hGdef
  set Gp := ∏ τ, (∑ a, (v.embedding (CV.rho τ ((D.sp.X 0).hT (y a) (y a)))).re) ^ dW (lam τ) with hGp
  have h1 : normAt (Pi.basisFun D.what₂.LL (MonI lam)) (fun _ => (monD lam)⁻¹) v (cfMap lam g (coE CV (hTV0 D u) x c)) ^ 2 ≤
      fockN G / extremalFockNormProduct lam := by
    rw [monH_norm]
    have e1 : ∑ m, monW lam m * ‖v.embedding (cfMap lam g (coE CV (hTV0 D u) x c) m)‖ ^ 2 =
        (∑ m : MonI lam, ‖AddMonoidAlgebra.coeff G m.1‖ ^ 2 * (mfact m.1 : ℝ)) / extremalFockNormProduct lam := by
      rw [Finset.sum_div]
      refine Finset.sum_congr rfl fun m _ => ?_
      rw [hGdef, coeff_map, cfMap_apply, monW]
      ring
    have e2 : ∑ m : MonI lam, ‖AddMonoidAlgebra.coeff G m.1‖ ^ 2 * (mfact m.1 : ℝ) ≤ fockN G := by
      have := fockN_sum_le G ((Finset.univ : Finset (MonI lam)).map ⟨fun m : MonI lam => m.1, fun a b h => Subtype.ext h⟩)
      rwa [Finset.sum_map] at this
    rw [e1]
    exact div_le_div_of_nonneg_right e2 (extR_pos lam).le
  have hVt : ∀ τ, (((invFr CV v c τ : GL (Fin (D.R.N 0)) ℂ) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ))ᵀ * U τ =
      (((g τ : GL (Fin (D.R.N 0)) D.what₂.LL) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL)ᵀ).map v.embedding := by
    intro τ
    simp only [hU]
    rw [← Matrix.transpose_mul, Matrix.coe_units_inv, Matrix.nonsing_inv_mul_cancel_right _ _ (Matrix.isUnits_det_units _),
      Matrix.transpose_map]
  have eP : P = detTwK lam (invFr CV v c) • Formalism.GradedWeylDivisibility.blockAct ℂ
      (fun τ => ((invFr CV v c τ : GL (Fin (D.R.N 0)) ℂ) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ)ᵀ)
      (MvPolynomial.map v.embedding F) := by
    simp only [hP, tcAt, actP, LinearMap.smul_apply, AlgHom.toLinearMap_apply, trAct]
    rfl
  have ecomp : Formalism.GradedWeylDivisibility.blockAct ℂ U (Formalism.GradedWeylDivisibility.blockAct ℂ
      (fun τ => ((invFr CV v c τ : GL (Fin (D.R.N 0)) ℂ) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ)ᵀ)
      (MvPolynomial.map v.embedding F)) = G := by
    rw [← AlgHom.comp_apply, blockAct_comp]
    simp only [hVt]
    rw [hGdef]
    unfold trAct
    rw [map_blockAct]
  have hd1 : d * detTwK lam (invFr CV v c) = 1 := by rw [hd, ← detTwK_mul, inv_mul_cancel, detTwK_one]
  have h2 : G = d • Formalism.GradedWeylDivisibility.blockAct ℂ U P := by
    rw [eP, map_smul, ecomp, smul_smul, hd1, one_smul]
  have hPV : P ∈ VV ℂ lam := tcAt_mem_VV CV v c x
  have h3 : fockN (Formalism.GradedWeylDivisibility.blockAct ℂ U P) ≤ (∏ τ, hsN (U τ) ^ dW (lam τ)) * fockN P := by
    refine fockSubNorm D.what₂.Tau (D.R.N 0) U (fun τ => dW (lam τ)) P fun m hm τ => ?_
    have hm' := coefficient_space_support ℂ lam hPV m hm
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun s _ => hm' τ s
  have h4 : ∀ τ, hsN (U τ) = ∑ a, (v.embedding (CV.rho τ ((D.sp.X 0).hT (y a) (y a)))).re := fun τ =>
    hsN_gM CV c y τ v
  have h5 : fockN P / extremalFockNormProduct lam ≤ normAt ((D.fm u).lat 0).b ((D.fm u).lat 0).X v x ^ 2 := by
    have e := majorant_lattice_eq_sum CV v x x
    rw [majAt_self] at e
    have e2 : normAt ((D.fm u).lat 0).b ((D.fm u).lat 0).X v x ^ 2 = ∑ c', fockN (tcAt CV v c' x) / extremalFockNormProduct lam := by
      have := congrArg Complex.re e
      rw [Complex.ofReal_re, Complex.re_sum] at this
      rw [this]
      refine Finset.sum_congr rfl fun c' _ => ?_
      rw [nfAll_self_eq, Complex.ofReal_re]
    rw [e2]
    exact Finset.single_le_sum (f := fun c' => fockN (tcAt CV v c' x) / extremalFockNormProduct lam)
      (fun c' _ => div_nonneg (fockN_nonneg _) (extR_pos _).le) (Finset.mem_univ c)
  have hGn : fockN G ≤ ‖d‖ ^ 2 * (Gp * fockN P) := by
    rw [h2, fockN_smul]
    refine mul_le_mul_of_nonneg_left ?_ (sq_nonneg _)
    have := h3
    simp only [h4] at this
    exact this
  have hprod : 0 ≤ Gp :=
    Finset.prod_nonneg fun τ _ => pow_nonneg (by rw [← h4 τ]; exact hsN_nonneg _) _
  calc normAt (Pi.basisFun D.what₂.LL (MonI lam)) (fun _ => (monD lam)⁻¹) v (cfMap lam g (coE CV (hTV0 D u) x c)) ^ 2
      ≤ fockN G / extremalFockNormProduct lam := h1
    _ ≤ ‖d‖ ^ 2 * (Gp * fockN P) / extremalFockNormProduct lam := div_le_div_of_nonneg_right hGn (extR_pos lam).le
    _ = (Gp * ‖d‖ ^ 2) * (fockN P / extremalFockNormProduct lam) := by ring
    _ ≤ (Gp * ‖d‖ ^ 2) * normAt ((D.fm u).lat 0).b ((D.fm u).lat 0).X v x ^ 2 :=
      mul_le_mul_of_nonneg_left h5 (mul_nonneg hprod (sq_nonneg _))

end Nrm

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.NfAllSelfEq =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.PacketOfFrameDegree =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL4.PacketOfFrameDegree", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.SummandSlopeOfThreeLemmas\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.CoeffMemOfIntSpanAt\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.ThirdLinkOfArchimedean\npublic import Formalism.LocalToGlobal.Columns.TwistedLocalisationComparable\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.CfMemTwId\nimport Formalism.LocalToGlobal.GlobalTheory.GL4.ColumnLatticeExactSlope\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.NfAllSelfEq\nimport Formalism.SharpRestriction.GlobalSchurBounds.TotallyPositiveTraceGeOfNormDiscr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain MvPolynomial
open scoped Matrix

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.HN Formalism.MainNotions.flipTwoThree Formalism.L2.DIV Formalism.L2.GlobalTheoryTheory.HLatOps Formalism.L2.Col Formalism.BasicNotions.SkeletonIndexLemmas

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def QFrameDeg (D : D7) : Prop :=
  ∀ u (CV : ColVal D u) c τ,
    (D.R.N 0 : ℝ) * (CV.Q c τ).mu =
      (D.R.N 0 : ℝ) * (latK D.what₂.LL (MQ CV c τ)).mu +
        (1 / (nPl D.what₂.LL : ℝ)) * ∑ v, Real.log (‖((CV.Q c τ).X v).det‖ ^ 2)

section T

variable {D : D7} {u : D.what₂.Word} (CV : ColVal D u)

theorem MQ_lattice (c : (D.mem u).C.cls 0) (τ : D.what₂.Tau) : Submodule.IsLattice D.what₂.LL (MQ CV c τ) := by
  exact Submodule.IsLattice.of_fg _ ((CV.Q_good c τ).2.1.map _)

theorem MQ_fullLattice (c : (D.mem u).C.cls 0) (τ : D.what₂.Tau) :
    Submodule.IsFullLattice D.what₂.LL (MQ CV c τ) := by
  refine { toIsLattice := MQ_lattice CV c τ, span_eq_top := ?_ }
  unfold MQ
  rw [Submodule.map_coe, LinearMap.coe_restrictScalars]
  rw [show ⇑(crdQ CV c τ : (CV.Q c τ).V →ₗ[D.what₂.LL] (Fin (D.R.N 0) → D.what₂.LL)) = ⇑(crdQ CV c τ) from rfl]
  rw [← LinearEquiv.coe_coe, Submodule.span_image, (CV.Q_good c τ).2.2, Submodule.map_top]
  exact LinearEquiv.range _

theorem detTwK_inv_ne (c : (D.mem u).C.cls 0) (v : InfinitePlace D.what₂.LL) :
    detTwK ((D.fm u).lam 0) (invFr CV v c)⁻¹ ≠ 0 := by
  unfold detTwK
  refine Finset.prod_ne_zero_iff.mpr fun τ _ => ?_
  unfold detPow
  exact Units.ne_zero _

theorem det_invFr_inv (v : InfinitePlace D.what₂.LL) (c : (D.mem u).C.cls 0) (τ : D.what₂.Tau) :
    ((Matrix.GeneralLinearGroup.det ((invFr CV v c)⁻¹ τ) : ℂˣ) : ℂ) = ((CV.Q c τ).X v).det := by
  simp only [Pi.inv_apply, map_inv, Units.val_inv_eq_inv_val, Matrix.GeneralLinearGroup.val_det_apply, invFr,
    brpGL]
  show ((Matrix.reindex (CV.eQ c τ) (CV.eQ c τ)) ((CV.Q c τ).X v)⁻¹).det⁻¹ = _
  rw [Matrix.det_reindex_self, Matrix.det_nonsing_inv, Ring.inverse_eq_inv, inv_inv]

theorem log_detTw (c : (D.mem u).C.cls 0) (v : InfinitePlace D.what₂.LL) :
    Real.log (‖detTwK ((D.fm u).lam 0) (invFr CV v c)⁻¹‖ ^ 2) =
      ∑ τ, (((D.fm u).lam 0 τ).detShift : ℝ) * Real.log (‖((CV.Q c τ).X v).det‖ ^ 2) := by
  unfold detTwK
  simp only [detPow, Units.val_zpow_eq_zpow_val, det_invFr_inv, norm_prod, norm_zpow]
  have hne : ∀ τ, ((CV.Q c τ).X v).det ≠ 0 := fun τ => by
    rw [← det_invFr_inv CV v c τ]
    exact Units.ne_zero _
  rw [← Finset.prod_pow, Real.log_prod]
  · refine Finset.sum_congr rfl fun τ _ => ?_
    rw [show (‖((CV.Q c τ).X v).det‖ ^ ((D.fm u).lam 0 τ).detShift) ^ 2 =
        (‖((CV.Q c τ).X v).det‖ ^ 2) ^ ((D.fm u).lam 0 τ).detShift by rw [sq, sq, mul_zpow], Real.log_zpow]
  · intro τ _
    exact pow_ne_zero _ (zpow_ne_zero _ (norm_ne_zero_iff.mpr (hne τ)))

theorem detShift_eq (τ : D.what₂.Tau) :
    ((((D.fm u).lam 0 τ).detShift : ℤ) : ℝ) = ((lamCol D u τ (D.R.k - 1) : ℚ) : ℝ) := by
  have hn := rank_zero_pos D
  have hk := columnCount_pos D
  unfold DomWeight.detShift
  rw [dite_eq_left hn]
  have := weight_eq_lamCol D u τ ⟨D.R.N 0 - 1, by omega⟩
  rw [this]
  congr 3
  simp [Ranks.N_zero]

theorem classMapT_of (h : QFrameDeg D) : ClassMapT D := by
  intro u CV c y hy
  obtain ⟨hyd, hli, -⟩ := hy
  have := (columnHypotheses D u).tc
  have hn : 0 < D.R.N 0 := rank_zero_pos D
  have hM : ∀ τ, Submodule.IsFullLattice D.what₂.LL (MQ CV c τ) := MQ_fullLattice CV c
  refine ⟨cfMap ((D.fm u).lam 0) (gG CV c y hli) ∘ₗ (LinearMap.proj c ∘ₗ (coE CV (hTV0 D u) : ((D.fm u).lat 0).V →ₗ[D.what₂.LL]
      ((D.mem u).C.cls 0 → VV D.what₂.LL ((D.fm u).lam 0)))), twIdeal ((D.fm u).lam 0) (MQ CV c) hM,
    fun v => ‖detTwK ((D.fm u).lam 0) (invFr CV v c)⁻¹‖ ^ 2, ?_, twIdeal_ne_zero _ _ hM, ?_, ?_, ?_, ?_⟩
  · exact injOn_NC CV c _ (cfMap_injective _ _)
  · intro x hx m
    rw [twIdeal_coe]
    exact cf_mem_twId CV c y hyd (gG CV c y hli) (fun τ => gG_coe CV c y hli τ) hx m
  · intro v
    exact pow_pos (norm_pos_iff.2 (detTwK_inv_ne CV c v)) 2
  · intro v x
    exact class_norm CV c y hli v x
  · rw [twisted_ideal_norm_formula D.what₂.LL hn _ _ hM]
    simp_rw [log_detTw CV c]
    have hQ := fun τ => h u CV c τ
    have hslope := fun τ => q_lattice_slope D u CV c τ
    have hk : (D.R.N 0 : ℝ) = (D.R.k : ℝ) := by rw [Ranks.N_zero]
    have hk0 : (0 : ℝ) < D.R.k := by exact_mod_cast columnCount_pos D
    have e1 : (1 / (nPl D.what₂.LL : ℝ)) * ∑ v, ∑ τ, (((D.fm u).lam 0 τ).detShift : ℝ) * Real.log (‖((CV.Q c τ).X v).det‖ ^ 2) =
        ∑ τ, (((D.fm u).lam 0 τ).detShift : ℝ) * ((1 / (nPl D.what₂.LL : ℝ)) * ∑ v, Real.log (‖((CV.Q c τ).X v).det‖ ^ 2)) := by
      rw [Finset.sum_comm, Finset.mul_sum]
      refine Finset.sum_congr rfl fun τ _ => ?_
      rw [← Finset.mul_sum]
      ring
    rw [e1, ← Finset.sum_add_distrib, ← Finset.sum_neg_distrib]
    refine le_of_eq (Finset.sum_congr rfl fun τ _ => ?_)
    rw [← mul_add, ← hQ τ, hslope τ, hk, detShift_eq]
    field_simp

end T

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL4.PacketOfFrameDegree =====
