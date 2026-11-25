module

public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.HeckeLAdicCharacterCrystalline
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.HeckeLAdicCharacterDeRham
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.AlgebraicCharacterWD
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DeRhamPotSemistable
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.WdParameterMonodromyZeroIffPotentiallyCrystallin
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFixedIff
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsSteinberg
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.ConclusionFinite
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Neutral.B1 Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.LocLanglands GlobalTheory.WeilDeligne GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.LocGL

namespace GlobalTheory.Published.CharCrysModel

variable {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω] {l : ℕ} [Fact l.Prime]

theorem isUnram_iff (χ : HChar E) (w : HeightOneSpectrum (𝓞 E)) : IsUnram (χ.loc w) ↔ χ.UnrAt w := by
  refine forall_congr' fun x => imp_congr_left ?_
  have h0 : Valued.v (x : w.adicCompletion E) ≠ 0 := by simp
  rw [← ord_eq_zero_iff, SphCompletion.ord_completion, neg_eq_zero, IsUnitAt]
  constructor
  · intro hl
    rw [← WithZero.exp_log h0, hl, WithZero.exp_zero]
  · intro hv
    rw [hv, WithZero.log_one]

end GlobalTheory.Published.CharCrysModel

end
