module

public import Development.AbelianVarietyTheory.Definitions.Divisors.InvVolConjLevelOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemGLintOfEntries
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFixedIff
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

@[expose] public section

namespace StabilizerBasis
section
noncomputable section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField Matrix MeasureTheory
open scoped TensorProduct nonZeroDivisors ComplexOrder
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StepData GlobalTheory.StdFrames Formalism.L2.Host Formalism.L2.DIV ValuativeRel

namespace GlobalTheory.CompanionTheory.StabBasis

theorem exists_bc_eq_of_entries {R : Type} [CommRing R] (S : Subring R) {n : ℕ} (g : GL (Fin n) R)
    (h1 : ∀ i j, g.1 i j ∈ S) (h2 : ∀ i j, g⁻¹.1 i j ∈ S) :
    ∃ y : GL (Fin n) S, Formalism.UG.bc S.subtype y = g := by
  have hi : Function.Injective fun A : Matrix (Fin n) (Fin n) S => A.map S.subtype :=
    Matrix.map_injective Subtype.val_injective
  refine ⟨⟨Matrix.of fun i j => ⟨_, h1 i j⟩, Matrix.of fun i j => ⟨_, h2 i j⟩, hi ?_, hi ?_⟩, Units.ext rfl⟩
  · simp only [Matrix.map_mul, Matrix.map_one _ (map_zero _) (map_one _)]
    exact g.mul_inv
  · simp only [Matrix.map_mul, Matrix.map_one _ (map_zero _) (map_one _)]
    exact g.inv_mul

theorem mem_St_of_inBasis_mem_KO : ∀ {D : D7} {n : ℕ} (β x : GL (Fin n) (Lev.EAf D)),
    (∀ w : Pl D.host.E, inBasis rfl β w x ∈ KO (Kw w) (Fin n)) → x ∈ St β := by
  intro D n β x h
  have hent : ∀ (w : Pl D.host.E) (g : GL (Fin n) (Kw w)), g ∈ KO (Kw w) (Fin n) →
      ∀ i j, g.1 i j ∈ Formalism.UG.Ov D.host.E w := by
    intro w g hg i j
    rw [GlobalTheory.SmGL.SphCompletion.KO_completion w n] at hg
    obtain ⟨u, rfl⟩ := hg
    exact (u.1 i j).2
  have e2 : (β⁻¹ * x * β)⁻¹ = β⁻¹ * x⁻¹ * β := by group
  have a1 : ∀ i j, (β⁻¹ * x * β).1 i j ∈ Formalism.L2.Herm.intAf D.host.F D.host.E := fun i j =>
    (mem_OA_iff _).2 fun w => by
      have := hent w _ (h w) i j
      rwa [inBasis_apply] at this
  have a2 : ∀ i j, (β⁻¹ * x * β)⁻¹.1 i j ∈ Formalism.L2.Herm.intAf D.host.F D.host.E := fun i j =>
    (mem_OA_iff _).2 fun w => by
      have := hent w _ ((KO (Kw w) (Fin n)).inv_mem (h w)) i j
      rw [← map_inv, inBasis_apply] at this
      rwa [e2]
  obtain ⟨y, hy⟩ := exists_bc_eq_of_entries _ _ a1 a2
  refine ⟨y, ?_⟩
  have e : Formalism.L2.DIV.intGL D.host.F D.host.E n y = β⁻¹ * x * β := hy
  show β * Formalism.L2.DIV.intGL D.host.F D.host.E n y * β⁻¹ = x
  rw [e]; group

end GlobalTheory.CompanionTheory.StabBasis

end
end

end StabilizerBasis
section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField Matrix MeasureTheory
open scoped TensorProduct nonZeroDivisors ComplexOrder
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StepData GlobalTheory.StdFrames Formalism.L2.Host Formalism.L2.DIV ValuativeRel

alias _root_.GlobalTheory.Adopt.mem_latticeStabilizer_of_local_integral_inBasis := _root_.StabilizerBasis.GlobalTheory.CompanionTheory.StabBasis.mem_St_of_inBasis_mem_KO

end
end
