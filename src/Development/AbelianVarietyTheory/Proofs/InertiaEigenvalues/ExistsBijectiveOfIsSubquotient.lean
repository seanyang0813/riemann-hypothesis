module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ParabolicProductTwoRepsEquivTwoBlockInduction
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ParabolicInductionTensorProductHasFiniteLength
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
import Mathlib.Tactic.Linter.HaveILetI
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

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.TypeRec GlobalTheory.GLq GlobalTheory.GLp GlobalTheory.SerSys
open GlobalTheory.PRep GlobalTheory.SmGL

noncomputable section
open scoped TensorProduct
namespace GlobalTheory.JacFactor

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem isIrreducible_comp_surj {G H V : Type} [Group G] [Group H] [AddCommGroup V] [Module ℂ V]
    (ρ : Representation ℂ H V) (f : G →* H) (hf : Function.Surjective f) (h : ρ.IsIrreducible) :
    Representation.IsIrreducible (ρ.comp f : Representation ℂ G V) := by
  let e : Subrepresentation (ρ.comp f : Representation ℂ G V) ≃o Subrepresentation ρ :=
    { toFun := fun S => ⟨S.toSubmodule, fun g v hv => by
        obtain ⟨x, rfl⟩ := hf g
        exact S.apply_mem_toSubmodule x hv⟩
      invFun := fun S => ⟨S.toSubmodule, fun g v hv => S.apply_mem_toSubmodule (f g) hv⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl
      map_rel_iff' := Iff.rfl }
  haveI : IsSimpleOrder (Subrepresentation ρ) := h
  exact e.isSimpleOrder

def piTensorBoolEquiv {R a b : Type} [CommRing R] [Fintype a] [DecidableEq a] [Fintype b] [DecidableEq b]
    {X : Bool → Type} [∀ j, AddCommGroup (X j)] [∀ j, Module ℂ (X j)]
    (F : ∀ j, Representation ℂ (GL (Two a b j) R) (X j)) :
    Representation.Equiv ((piTensor F).comp (leviTwo R a b).toMonoidHom :
      Representation ℂ (GL a R × GL b R) (⨂[ℂ] j, X j)) (extTensor (F false) (F true)) :=
  .mk (Exponents.boolTensorEquiv (X := X)) fun g => by
    refine PiTensorProduct.ext (MultilinearMap.ext fun x => ?_)
    show Exponents.boolTensorEquiv (X := X) (piTensor F (leviTwo R a b g) (PiTensorProduct.tprod ℂ x)) =
      extTensor (F false) (F true) g (Exponents.boolTensorEquiv (X := X) (PiTensorProduct.tprod ℂ x))
    rw [piTensor_tprod, Exponents.boolTensorEquiv_tprod, Exponents.boolTensorEquiv_tprod, extTensor_tmul]
    rfl

theorem isIrreducible_extTensor {R a b W W' : Type} [CommRing R] [Fintype a] [DecidableEq a] [Fintype b]
    [DecidableEq b] [AddCommGroup W] [Module ℂ W] [AddCommGroup W'] [Module ℂ W']
    (σ : Representation ℂ (GL a R) W) (ρ : Representation ℂ (GL b R) W')
    (hσ : σ.IsIrreducible) (hρ : ρ.IsIrreducible)
    (hSσ : ∀ φ : W →ₗ[ℂ] W, (∀ g x, φ (σ g x) = σ g (φ x)) → ∃ c : ℂ, φ = c • LinearMap.id)
    (hSρ : ∀ φ : W' →ₗ[ℂ] W', (∀ g x, φ (ρ g x) = ρ g (φ x)) → ∃ c : ℂ, φ = c • LinearMap.id) :
    (extTensor σ ρ).IsIrreducible := by
  have h1 : (piTensor (Exponents.twoRep σ ρ)).IsIrreducible :=
    GlobalTheory.ProdFiniteLength.piTensor_isIrreducible_of_schur _ (fun j => by cases j <;> assumption)
      (fun j => by cases j <;> assumption)
  have h2 := isIrreducible_comp_surj _ (leviTwo R a b).toMonoidHom (leviTwo R a b).surjective h1
  exact GlobalTheory.Parabolic.isIrreducible_of_equiv (piTensorBoolEquiv (Exponents.twoRep σ ρ)) h2

theorem nontrivial_of_isIrreducible {G Y : Type} [Group G] [AddCommGroup Y] [Module ℂ Y]
    {τ : Representation ℂ G Y} (hτ : τ.IsIrreducible) : Nontrivial Y := by
  haveI : IsSimpleOrder (Subrepresentation τ) := hτ
  by_contra h
  rw [not_nontrivial_iff_subsingleton] at h
  apply (bot_ne_top : (⊥ : Subrepresentation τ) ≠ ⊤)
  ext v
  exact ⟨fun _ => trivial, fun _ => Subsingleton.elim v 0⟩

end GlobalTheory.JacFactor
