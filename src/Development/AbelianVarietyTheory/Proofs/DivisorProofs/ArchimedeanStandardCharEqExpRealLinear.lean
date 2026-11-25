module

public import Formalism.LocalToGlobal.BesselHermitianTheta.TiedWeil
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
import Mathlib.RingTheory.PiTensorProduct
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
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
public import Development.WeilBound.ThetaLifts.LeviDeterminants.GrowSplit

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta
open IsDedekindDomain NumberField MeasureTheory
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Matrix Formalism.IndefR.Datum
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chr incM)

open scoped Classical

noncomputable section

namespace GlobalTheory.PsiInfLinear

theorem continuous_ringEquiv_mixedSpace_symm (E : Type) [Field E] [NumberField E] :
    Continuous (InfiniteAdeleRing.ringEquiv_mixedSpace E).symm := by
  first
  | exact _root_.PositivityTheory.ThKF0.Split.continuous_ofMixed
  | (apply _root_.PositivityTheory.ThKF0.Split.continuous_ofMixed <;> assumption)

theorem psiInf_eq_exp_linear : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) →
    ∃ Λ : mixedEmbedding.mixedSpace D.host.F →L[ℝ] ℂ, ∀ x : InfiniteAdeleRing D.host.F,
      psiInf D.host.F ψ x = Complex.exp (Λ (InfiniteAdeleRing.ringEquiv_mixedSpace D.host.F x)) := by
  intro D ψ h
  obtain ⟨-, ⟨θ, hθ⟩, hall⟩ := h
  have hform := hall θ hθ
  set e := InfiniteAdeleRing.ringEquiv_mixedSpace D.host.F
  let c : ℂ := 2 * Real.pi * Complex.I * ((-1 : ℤ) : ℂ)
  let g : mixedEmbedding.mixedSpace D.host.F →+ ℂ :=
    { toFun := fun m => c * ∑ ρ, θ ρ (e.symm m ⊗ₜ[D.host.F] (1 : D.host.E))
      map_zero' := by simp
      map_add' := by
        intro a b
        simp [TensorProduct.add_tmul, Finset.sum_add_distrib, mul_add] }
  have hg : Continuous g := by
    show Continuous fun m => c * ∑ ρ, θ ρ (e.symm m ⊗ₜ[D.host.F] (1 : D.host.E))
    refine continuous_const.mul (continuous_finsetSum _ fun ρ _ => ?_)
    exact (hθ ρ).2.comp (continuous_ringEquiv_mixedSpace_symm D.host.F)
  refine ⟨AddMonoidHom.toRealLinearMap g hg, fun x => ?_⟩
  rw [hform x]
  congr 1
  show _ = c * ∑ ρ, θ ρ (e.symm (e x) ⊗ₜ[D.host.F] (1 : D.host.E))
  rw [e.symm_apply_apply]

end GlobalTheory.PsiInfLinear
