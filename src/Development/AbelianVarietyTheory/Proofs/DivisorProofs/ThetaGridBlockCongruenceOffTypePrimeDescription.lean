module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

namespace IwahoriGroupOffset
section
noncomputable section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField Matrix MeasureTheory
open scoped TensorProduct nonZeroDivisors ComplexOrder
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StepData GlobalTheory.StdFrames Formalism.L2.Host Formalism.L2.DIV ValuativeRel

namespace GlobalTheory.CompanionTheory.StepGroupOff

theorem symm_mem_KO_iff {k : Type*} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    {a b : Type*} [Fintype a] [DecidableEq a] [Fintype b] [DecidableEq b] (e : a ≃ b) (g : GL b k) :
    (reGL e).symm g ∈ KO k a ↔ g ∈ KO k b := by
  rw [mem_KO, mem_KO, ← map_inv, reGL_symm_val, reGL_symm_val]
  constructor
  · rintro ⟨h1, h2⟩
    exact ⟨fun i j => by simpa using h1 (e.symm i) (e.symm j), fun i j => by simpa using h2 (e.symm i) (e.symm j)⟩
  · rintro ⟨h1, h2⟩
    exact ⟨fun i j => h1 _ _, fun i j => h2 _ _⟩

theorem twoBlock_gridIndex {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} (G : GridData L sc) (t : T) (w : Pl D.host.E)
    (j : ℕ) (x : Ix (Fin D.R.r) (Fin D.R.t) j) :
    Formalism.L2.DIV.blk2 D.R.r (ixFin G t w j x) = Sum.elim (fun _ => 0) (fun _ => 1) x := by
  rcases x with a | ⟨c, b⟩
  · simp [Formalism.L2.DIV.blk2, (ixFin_val G t w j).1 a]
  · simp [Formalism.L2.DIV.blk2, (ixFin_val G t w j).2 c b]

theorem mem_map_stepGroup_iff : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} (G : GridData L sc) (t : T) (w : Pl D.host.E), w ∉ L.Pg → ∀ (j : ℕ) (g : GL (Fin ((locGrid G t w).rank (0, j))) (Kw w)), g ∈ (stepGroup L t w j).map (reGL (ixFin G t w j)).toMonoidHom ↔ g ∈ KO (Kw w) (Fin ((locGrid G t w).rank (0, j))) ∧ (w ∈ L.Q t → ∀ a b, Formalism.L2.DIV.blk2 D.R.r b < Formalism.L2.DIV.blk2 D.R.r a → valuation (Kw w) (g.1 a b) < 1) := by
  intro D T L sc G t w hP j g
  rw [Subgroup.mem_map_equiv, stepGroup, if_neg hP]
  by_cases hQ : w ∈ L.Q t
  · rw [if_pos hQ]
    refine (mem_parahoric (k := Kw w) (r := Fin D.R.r) (s := Fin j × Fin D.R.t) (δ := 1) (hδ := fun _ _ => rfl)).trans ?_
    rw [symm_mem_KO_iff]
    refine and_congr_right fun _ => ?_
    constructor
    · intro h _ a b hab
      obtain ⟨x, rfl⟩ := (ixFin G t w j).surjective a
      obtain ⟨y, rfl⟩ := (ixFin G t w j).surjective b
      rw [twoBlock_gridIndex, twoBlock_gridIndex] at hab
      rcases x with x | x <;> rcases y with y | y
      · simp at hab
      · simp at hab
      · simpa [reGL_symm_val, Matrix.toBlocks₂₁] using h x y
      · simp at hab
    · intro h i l
      have := h hQ (ixFin G t w j (.inr i)) (ixFin G t w j (.inl l)) (by simp [twoBlock_gridIndex])
      simpa [reGL_symm_val, Matrix.toBlocks₂₁] using this
  · rw [if_neg hQ, symm_mem_KO_iff]
    exact ⟨fun h => ⟨h, fun h' => absurd h' hQ⟩, fun h => h.1⟩

end GlobalTheory.CompanionTheory.StepGroupOff

end
end

end IwahoriGroupOffset
section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField Matrix MeasureTheory
open scoped TensorProduct nonZeroDivisors ComplexOrder
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StepData GlobalTheory.StdFrames Formalism.L2.Host Formalism.L2.DIV ValuativeRel

alias _root_.GlobalTheory.Adopt.thetaGridBlockCongruence_offTypePrime_description := _root_.IwahoriGroupOffset.GlobalTheory.CompanionTheory.StepGroupOff.mem_map_stepGroup_iff

end
end
