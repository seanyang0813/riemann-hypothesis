module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiagonalBlockDetBlockTriangular
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemCompletedGridArrowLatticeIffIntegralFrameMatr
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
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RangeSndRel
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.FlipRun


open GlobalTheory.RowLatChi in
theorem GlobalTheory.ColLatDict.mem_latO_iff_intM : ∀ {D : D7} {S T : HSp D} {ΛS : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E)} {ΛT : Submodule (𝓞 D.host.E) (Fin T.rank → D.host.E)} {βS : GL (Fin S.rank) (Formalism.IndefR.Lev.EAf D)} {βT : GL (Fin T.rank) (Formalism.IndefR.Lev.EAf D)}, IsSelfDualC S ΛS → IsSelfDualC T ΛT → IsFrame βS ΛS → IsFrame βT ΛT → ∀ {e₁ : AE D} {P₁ : Finset (Pl D.host.E)}, IsIdemSum e₁ P₁ → (∀ w ∈ P₁, ((∀ a ∈ D.host.AA, Valued.v (algebraMap D.host.E (Kw w) a) ≤ 1) ∧ ∃ a ∈ D.host.AA, Valued.v (algebraMap D.host.E (Kw w) a) = 1)) → ∀ z : WO S T, IsHalf e₁ z → (z ∈ latO S T (ΛS : Set (Fin S.rank → D.host.E)) (ΛT : Set (Fin T.rank → D.host.E)) (fun _ => True) ↔ ∀ w ∈ P₁, GlobalTheory.StepData.IntM ((GlobalTheory.FunObj.Comparison₂.fr βT βS (z.map (toEAf D))).map (cpt (D := D) w))) := by
  intro D S T ΛS ΛT βS βT hS hT hβS hβT e₁ P₁ hI hAA z hz
  have key : ∀ w, GlobalTheory.StepData.IntM ((GlobalTheory.FunObj.Comparison₂.fr βT βS (z.map (toEAf D))).map (cpt (D := D) w)) ↔
      ∀ a b, Valued.v (cpt (D := D) w (Comparison₂.fr βT βS (z.map (toEAf D)) a b)) ≤ 1 := fun w => by
    rw [intM_iff]; rfl
  simp only [key]
  constructor
  · intro h w hw a b
    exact int_of_mem_latO hS hβS hβT w (hAA w hw).1 h a b
  · intro h
    exact mem_latO_of_mem_hatMx hS hI (fun w hw => (hAA w hw).2) hz (mem_hatMx_of_int hβS hβT hI hz h)
