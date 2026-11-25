module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatAtVAtStable
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousAtPlace
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EventuallyIntegralPointsIndicatorIsVacuum
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

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open Classical
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ alpha beta Num skewGram blk conjU)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model HasExp SplitsFully Chars)

open scoped GlobalTheory.VacAny

noncomputable section

namespace GlobalTheory.VacBridge

theorem rho_acts_locCo : ∀ {F : Type} [Field F] [NumberField F] {W : Type} [AddCommGroup W] [Module (AF F) W]
    {B : W → W → AF F} {κ : Type} [Fintype κ] (co : GlobalTheory.WeilM.Darboux B κ) (ψ : AddChar (AF F) ℂ)
    (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (γ : W), GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) γ →
    ∀ φ : (κ → Fv F v) → ℂ, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Acts (GlobalTheory.AdelicU.evFin F v) (co.rho ψ γ) φ
      (GlobalTheory.WeilM.schr (GlobalTheory.LatVac.psiAt ψ v) (GlobalTheory.LatVac.locCo co v γ) φ) := by
  intro F _ _ W _ _ B κ _ co ψ v γ hγ φ r hr
  funext x
  set w := co.e γ with hw
  have hcomp : ∀ u : AF F, GlobalTheory.AdelicU.evFin F v u = 0 → u • w = 0 := fun u hu => by
    rw [hw, ← LinearEquiv.map_smul, hγ u hu, map_zero]
  have ha1 : ∀ k, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) (w.1 k) := fun k u hu => by
    have := congrArg (fun z => z.1 k) (hcomp u hu)
    simpa using this
  have ha2 : ∀ k, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) (w.2 k) := fun k u hu => by
    have := congrArg (fun z => z.2 k) (hcomp u hu)
    simpa using this
  have at_pi : ∀ {z : κ → AF F}, (∀ i, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) (z i)) → GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) z :=
    fun h u hu => funext fun i => h i u hu
  have at_add : ∀ {a b : AF F}, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) a → GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) b → GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) (a + b) :=
    fun ha hb u hu => by rw [smul_add, ha u hu, hb u hu, add_zero]
  have at_mul_left : ∀ (a : AF F) {b : AF F}, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) b → GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) (a * b) :=
    by
      intro a b hb u hu
      rw [smul_eq_mul, mul_left_comm, show u * b = 0 from hb u hu, mul_zero]
  have at_sum : ∀ (s : Finset κ) {f : κ → AF F}, (∀ i ∈ s, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) (f i)) → GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) (∑ i ∈ s, f i) := by
    intro s f h
    induction s using Finset.induction_on with
    | empty => simp only [Finset.sum_empty]; exact fun u _ => smul_zero u
    | insert a s ha ih =>
      rw [Finset.sum_insert ha]
      exact at_add (h a (Finset.mem_insert_self a s)) (ih fun i hi => h i (Finset.mem_insert_of_mem hi))
  have evFin_invOf_two : GlobalTheory.AdelicU.evFin F v (⅟(2 : AF F)) = ⅟(2 : Fv F v) := by
    refine (invOf_eq_right_inv ?_).symm
    have h : GlobalTheory.AdelicU.evFin F v (2 * ⅟(2 : AF F)) = 1 := by rw [mul_invOf_self, map_one]
    rwa [map_mul, map_ofNat] at h
  have hshift : r (x + w.1) = r x := hr.1 x w.1 (at_pi ha1)
  simp only [GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.tens, GlobalTheory.WeilM.Darboux.rho, GlobalTheory.WeilM.schr, ← hw, hshift]
  have hat : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.At (GlobalTheory.AdelicU.evFin F v) (x ⬝ᵥ w.2 + ⅟(2 : AF F) * (w.1 ⬝ᵥ w.2)) :=
    at_add (at_sum _ fun k _ => at_mul_left _ (ha2 k))
      (at_mul_left _ (at_sum _ fun k _ => at_mul_left _ (ha2 k)))
  rw [GlobalTheory.StdVacuum.psi_eq_psiLoc ψ v _ hat, ← GlobalTheory.LatVac.psiAt_apply]
  have e1 : GlobalTheory.AdelicU.evFin F v (x ⬝ᵥ w.2 + ⅟(2 : AF F) * (w.1 ⬝ᵥ w.2)) =
      (fun i => GlobalTheory.AdelicU.evFin F v (x i)) ⬝ᵥ (GlobalTheory.LatVac.locCo co v γ).2 +
        ⅟(2 : Fv F v) * ((GlobalTheory.LatVac.locCo co v γ).1 ⬝ᵥ (GlobalTheory.LatVac.locCo co v γ).2) := by

    simp only [dotProduct, map_add (f := _), map_sum, map_mul, evFin_invOf_two, hw]
    rfl
  have e2 : (fun i => GlobalTheory.AdelicU.evFin F v ((x + w.1) i)) =
      (fun i => GlobalTheory.AdelicU.evFin F v (x i)) + (GlobalTheory.LatVac.locCo co v γ).1 := by
    funext i
    simp only [Pi.add_apply, map_add (f := _), hw]
    rfl
  rw [e1, e2, mul_assoc]

end GlobalTheory.VacBridge
