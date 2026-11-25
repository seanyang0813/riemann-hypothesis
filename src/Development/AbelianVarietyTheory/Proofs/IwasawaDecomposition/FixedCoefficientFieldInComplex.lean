module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CoefAEqOfHeq
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

noncomputable section

namespace GlobalTheory.Mem.R3.Rw

def SeedW (K : Ctx) (P : Pre) (f : Fr P) (F F₀ : IntermediateField ℚ ℂ) (px : PreX P) (S : Set ℕ) (L : IntermediateField ℚ ℂ) :
    Prop :=
  ∃ (B₀ : Base) (f₀ : Fr B₀.toPre) (T₀ : TwDat B₀) (w₀ : ColW B₀ f₀ T₀) (Z₀ : w₀.Lt) (hX₀ : B₀.fields.Ok) (Wt₀ : Set B₀.places.Pl)
    (z₀ : Dat (w₀.st Z₀) w₀.I hX₀ T₀ Wt₀), B₀.toPre = P ∧ HEq f₀ f ∧ B₀.KsC = F ∧ B₀.fixedCoefficientFieldInComplex = F₀ ∧ HEq w₀.px px ∧
      Pinned K B₀ f₀ T₀ w₀ ∧ GrpTrue Z₀.N f₀ ∧ GrpAt (w₀.st Z₀) w₀.I ∧ Fine z₀ ∧ HoldsL z₀.R z₀.F ∧
      (∀ v ∈ z₀.W1 (fun _ _ => 0), B₀.places.resChar v ∈ S) ∧ B₀.LLC ≤ L

theorem SeedW.mono {K : Ctx} {P : Pre} {f : Fr P} {F F₀ : IntermediateField ℚ ℂ} {px : PreX P} {S S' : Set ℕ}
    {L L' : IntermediateField ℚ ℂ} (h : SeedW K P f F F₀ px S L) (hS : S ⊆ S') (hL : L ≤ L') : SeedW K P f F F₀ px S' L' := by
  obtain ⟨B₀, f₀, T₀, w₀, Z₀, hX₀, Wt₀, z₀, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12⟩ := h
  exact ⟨B₀, f₀, T₀, w₀, Z₀, hX₀, Wt₀, z₀, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, fun v hv => hS (a11 v hv), a12.trans hL⟩

end GlobalTheory.Mem.R3.Rw

end
