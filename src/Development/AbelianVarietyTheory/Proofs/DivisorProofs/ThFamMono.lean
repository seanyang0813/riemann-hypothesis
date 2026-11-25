module

public import Development.AbelianVarietyTheory.Definitions.Foundations.IsProbabilityMeasureMuPart
public import Formalism.LocalToGlobal.ProjectiveLattices.IsThRule
public import Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings
public import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral
public import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.LevelCarrying
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsCoprimeOfNatCast
public import Development.AbelianVarietyTheory.Definitions.Divisors.MemLevEigenIffTransl
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
import Development.AbelianVarietyTheory.Definitions.Divisors.BadElt
import Development.AbelianVarietyTheory.Definitions.Divisors.CuspIso
import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios
import Development.AbelianVarietyTheory.Definitions.Divisors.IsRightActFunPull
import Development.AbelianVarietyTheory.Definitions.Divisors.IsoOverOfIsOpenImmersion
import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.BlockTheory.DivisorBase.AdaptedStandardBasis, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThFamMono

-- ===== clump member: Development.AbelianVarietyTheory.BlockTheory.DivisorBase.AdaptedStandardBasis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.BlockTheory.DivisorBase.AdaptedStandardBasis", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsProbabilityMeasureMuPart\npublic import Formalism.LocalToGlobal.ProjectiveLattices.IsThRule\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightData

open NumberField IsDedekindDomain Module Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.AllWt

section Weights

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} (Dw : Datum H)

end Weights

section Family

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H}

variable (Xo : Moduli Dw l) (c : Coeff l)

def polyNorm {n : ℕ} (P : MvPolynomial (LtN Dw n) c.F) : ℝ :=
  Real.sqrt (∑ s : c.F →+* ℂ, ∑ m ∈ P.support, ‖s (P.coeff m)‖ ^ 2)



variable {Xo c} {r : ℕ} (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r)

end Family

section Constants

variable (D : D7) (large₂ : SizeData₂ D)

end Constants

section Statement

variable (D : D7) (large₂ : SizeData₂ D)

variable {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host D.host.E} {Dw : Datum H} {l : Level H}

end Statement

end GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightData
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.BlockTheory.DivisorBase.AdaptedStandardBasis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThFamMono =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThFamMono", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.AdaptedStandardBasis\npublic import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.LevelCarrying\nimport Development.AbelianVarietyTheory.Definitions.Divisors.BadElt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CuspIso\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsCoprimeOfNatCast\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsRightActFunPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsoOverOfIsOpenImmersion\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.MemLevEigenIffTransl\nimport Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Theta
open GlobalTheory GlobalTheory.CompHS GlobalTheory.CovTop GlobalTheory.HSApp GlobalTheory.DegVal GlobalTheory.DegCmp
open GlobalTheory.AllWt (Psi wtOf cuspOn cuspW latOn latW normOn petOn GoodOn GoodW rankOn degOn rankW)
open GlobalTheory.CompHt (hodgeWt)
open GlobalTheory.LevDesc (TypeFrame grpHR grpGHR latN levDet secRing transl pull KeepsCusp)
open GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureAutomorphisms (LevelAut)
open GlobalTheory.BadCount
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.CovGmin

def Hyp (D : D7) (T : CoreJ D) (j : ℕ) (Y : Deep T.toCore j) (e : ℕ) (o Lb : ℝ) (a : (D.host.E →+* ℂ) × ℕ → ℕ) (n : ℕ) :
    Prop :=
  LawsJ T ∧ 1 ≤ (T.Q.Dw j).p ∧ 1 ≤ (T.Q.Dw j).q ∧ 2 < Module.finrank ℚ D.host.E / 2 ∧ InR D j ∧ Y.Good e o ∧
    1 ≤ Lb ∧ Real.log Y.d.l₂.M ≤ 30 * Lb ∧ fieldSz D.host.E ≤ 3 * Lb ∧ Real.log (D.R.f * D.R.r) ≤ Lb ∧
    o ≤ 391 * (D.R.f * D.R.r * Lb) ^ 2 ∧ Dom a n ∧ Even n ∧ 8 * D.R.f * D.R.r + 4 ≤ n ∧
    (∀ (τ : Psi T.Q.H) (k : Fin ((T.Q.Dw j).p + (T.Q.Dw j).q)), (k : ℕ) < (T.Q.Dw j).p →
      ((n / 2 : ℕ) : ℤ) < laOf (T.Q.Dw j) a n τ k) ∧
    Real.log (sizeK (T.Q.Dw j) a n) ≤ 20 * Lb

def badC {D : D7} {T : Core D} {j : ℕ} (Y : Deep T j) : ℕ := D.host.QS * D.host.q * D.host.d * Y.d.l₂.M

def thFam {D : D7} {T : Core D} {j : ℕ} (Y : Deep T j) (nab : NabV Y.d.Xo₂ Y.d.c₂) (a : (D.host.E →+* ℂ) × ℕ → ℕ)
    (n : ℕ) (ρ : ℝ) : Set (Y.V (wtZ a n)) :=
  {y | ∃ (x0 : Fin n → LevQc (T.Q.Dw j) Y.d.l₂) (La : GenLat D.host.E n) (N : ℕ)
      (P : MvPolynomial (LtN (T.Q.Dw j) n) Y.d.c₂.F),
    Submodule.span (𝓞 D.host.E) (Set.range x0) = ⊤ ∧ La.Unimod ∧ La.TrivAt (badC Y) ∧ La.TrivAt Y.d.l₂.M ∧
      La.LevOK N Y.d.l₂.M ∧ P ∈ harmL Y.d.c₂ La a ∧ GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightData.polyNorm Y.d.c₂ P ≤ ρ ∧
      ∀ (p : TRing Y.d.c₂.F) (y' : FrPt Y.d.Xo₂ Y.d.c₂ p.R),
        thLaValAt Y.d.Xo₂ Y.d.c₂ nab (phiHat Y.d.c₂ (indPhi Y.d.c₂ x0)) La N P y' ((y : Rul Y.d.Xo₂ Y.d.c₂) p y')}

end GlobalTheory.CovGmin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThFamMono =====
