module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
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

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV

open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open ValuativeRel
open scoped GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels

noncomputable section

namespace GlobalTheory.VacShape

open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels

variable {D : D7} {a a' : ℕ}

def coBar (Bs : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E) (Γ : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Geo D.sp.cm.sig a a')
    (u : Matrix (Fin a') (Fin (a + a')) (AE D.host.F D.host.E)) : Matrix (Fin a') (Fin (a + a')) (Fv D.host.F Bs.v₁) :=
  -((1 : GL (Fin a') (Fv D.host.F Bs.v₁)).1ᵀ * Γ.V'.J.map Bs.τ₁ * u.map (piW (Bs.τ₁.comp D.sp.cm.sig)) *
    (Γ.W.J.map Bs.τ₁)ᵀ * (1 : GL (Fin (a + a')) (Fv D.host.F Bs.v₁)).1)

theorem coBar_add (Bs : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E) (Γ : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Geo D.sp.cm.sig a a')
    (u u' : Matrix (Fin a') (Fin (a + a')) (AE D.host.F D.host.E)) :
    coBar Bs Γ (u + u') = coBar Bs Γ u + coBar Bs Γ u' := by
  unfold coBar
  rw [Matrix.map_add _ (map_add _)]
  simp only [Matrix.mul_add, Matrix.add_mul, neg_add]

theorem coBar_zero (Bs : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E) (Γ : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Geo D.sp.cm.sig a a') : coBar Bs Γ 0 = 0 := by
  unfold coBar
  rw [Matrix.map_zero _ (map_zero _)]
  simp

def Sa (Bs : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E) (Γ : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Geo D.sp.cm.sig a a') (L₁ : Submodule (𝓞 D.host.E) (Fin a' → D.host.E))
    (L₂ : Submodule (𝓞 D.host.E) (Fin (a + a') → D.host.E)) :
    AddSubgroup (Matrix (Fin a') (Fin (a + a')) (Fv D.host.F Bs.v₁)) where
  carrier := {Y | ∃ u ∈ latAtV {Γ.V' with L := L₁} {Γ.W with L := L₂} Bs.v₁, u.map (piW Bs.τ₁) = 0 ∧ coBar Bs Γ u = Y}
  zero_mem' := ⟨0, zero_mem _, Matrix.map_zero _ (map_zero _), coBar_zero Bs Γ⟩
  add_mem' := by
    rintro _ _ ⟨u, hu, hu0, rfl⟩ ⟨u', hu', hu0', rfl⟩
    exact ⟨u + u', add_mem hu hu', by rw [Matrix.map_add _ (map_add _), hu0, hu0', add_zero], coBar_add Bs Γ u u'⟩
  neg_mem' := by
    rintro _ ⟨u, hu, hu0, rfl⟩
    refine ⟨-u, neg_mem hu, by rw [Matrix.map_neg _ (map_neg _), hu0, neg_zero], ?_⟩
    have := coBar_add Bs Γ u (-u)
    rw [add_neg_cancel, coBar_zero] at this
    show coBar Bs Γ (-u) = -coBar Bs Γ u
    exact (neg_eq_of_add_eq_zero_right this.symm).symm

def Bd (Bs : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base D.host.F D.host.E) (Γ : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Geo D.sp.cm.sig a a') (L₁ : Submodule (𝓞 D.host.E) (Fin a' → D.host.E))
    (L₂ : Submodule (𝓞 D.host.E) (Fin (a + a') → D.host.E)) : Set (Matrix (Fin a') (Fin (a + a')) (Fv D.host.F Bs.v₁)) :=
  {Y | ∀ x : Matrix (Fin a') (Fin (a + a')) (AE D.host.F D.host.E), At (evFin D.host.F Bs.v₁) x →
    x.map (piW Bs.τ₁) = 0 → coBar Bs Γ x = Y → ∀ u ∈ latAtV {Γ.V' with L := L₁} {Γ.W with L := L₂} Bs.v₁,
      u.map (piW (Bs.τ₁.comp D.sp.cm.sig)) = 0 →
      Bs.ψ (symp (cA D.sp.cm.sig) (-1) (incM D.host.F Γ.V'.J) (incM D.host.F Γ.W.J) x u) = 1}

end GlobalTheory.VacShape

end
