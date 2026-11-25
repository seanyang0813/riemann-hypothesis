module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsNotRelZero
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGoodPlaceTranslateCombinationLatticeIndica
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
open scoped TensorProduct
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV

open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open ValuativeRel


theorem _root_.GlobalTheory.T.exists_goodPlace_translateCombination_latticeIndicator : ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    {σ : E →ₐ[F] E} {a a' : ℕ} (B : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base F E) (Γ : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Geo σ a a')
    (hM' : Γ.M'.IsGood B.ψ) (hlt : a' < a)
    (om' : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Rep σ Γ.V' Γ.W) {H : Type} (κ : H → GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.UA σ Γ.V'.J)
    (ν α : (Fv F B.v₁)ˣ →* ℂˣ) (hν : ∀ x, ‖(ν x : ℂ)‖ = 1)
    (ι : ((Fin a' × Fin (a + a') → Fv F B.v₁) → ℂ) →ₗ[ℂ] (Matrix (Fin a') (Fin (a + a')) (Fv F B.v₁) → ℂ))
    (hι : Γ.M'.IsLinBar B.ψ B.τ₁ 1 1 ι)
    (hact : ∀ g : GL (Fin a') (Fv F B.v₁), ∃ k : H, ∀ φ ∈ GlobalTheory.WeilM.SB _, ∀ r, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Rest (evFin F B.v₁) φ r →
      ∃ φ₁ ∈ GlobalTheory.WeilM.SB _, om' (κ k, 1) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.tens (evFin F B.v₁) φ r) = GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.tens (evFin F B.v₁) φ₁ r ∧
        ι φ₁ = omB ν α g 1 (ι φ))
    {m : ℕ} (f : Fin m → GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.SInf F (Fin a' × Fin (a + a')))
    (φ : Fin m → ∀ v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F), (Fin a' × Fin (a + a') → Fv F v) → ℂ)
    (φ₀ : (Fin a' × Fin (a + a') → Fv F B.v₁) → ℂ)
    (hSB : ∀ k v, φ k v ∈ GlobalTheory.WeilM.SB _) (hvac : ∀ k, ∀ᶠ v in Filter.cofinite, φ k v = Γ.M'.vac v) (h₀ : ∀ k, φ k B.v₁ = φ₀)
    (P : GL (Fin a') (Fv F B.v₁)) (Λ : Submodule 𝒪[Fv F B.v₁] (Fin (a + a') → Fv F B.v₁)) (c : ℂ)
    (hφ₀ : ∀ Y, ι φ₀ Y = c * (matLat (Fin a') Λ : Set _).indicator 1 (P.val * Y)),
    ∃ z : H →₀ ℂ, zdeg z ≠ 0 ∧
      (z.sum fun k c => c • om' (κ k, 1) (∑ k, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure (f k) (φ k))) ∈ Γ.M'.So B.ψ B.τ₁ := by
  first | exact @GlobalTheory.CombAtGood.exists_comb_translates_mem_So
