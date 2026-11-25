module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsSumOfMemMultSpan
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
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
open scoped TensorProduct
open Classical

noncomputable section

namespace GlobalTheory.KTypeProj

section Gen

variable {M ι : Type} [AddCommGroup M] [Module ℂ M]

def typeSpan (ρ : ι → M →ₗ[ℂ] M) (Y₀ G : Submodule ℂ M) : Submodule ℂ M :=
  ⨆ (T : M →ₗ[ℂ] M) (_ : Y₀.map T ≤ G ∧ ∀ i, ∀ w ∈ Y₀, T (ρ i w) = ρ i (T w)), Y₀.map T

theorem typeSpan_le (ρ : ι → M →ₗ[ℂ] M) (Y₀ G : Submodule ℂ M) : typeSpan ρ Y₀ G ≤ G :=
  iSup₂_le fun _ h => h.1

theorem le_typeSpan (ρ : ι → M →ₗ[ℂ] M) {Y₀ G : Submodule ℂ M} (h : Y₀ ≤ G) : Y₀ ≤ typeSpan ρ Y₀ G := by
  have h1 : Y₀.map LinearMap.id ≤ typeSpan ρ Y₀ G :=
    le_iSup₂_of_le (f := fun (T : M →ₗ[ℂ] M) (_ : Y₀.map T ≤ G ∧ ∀ i, ∀ w ∈ Y₀, T (ρ i w) = ρ i (T w)) => Y₀.map T)
      LinearMap.id ⟨by rwa [Submodule.map_id], fun _ _ _ => rfl⟩ le_rfl
  rwa [Submodule.map_id] at h1

theorem map_le_typeSpan (ρ : ι → M →ₗ[ℂ] M) {Y₀ G : Submodule ℂ M} (T : M →ₗ[ℂ] M) (hT : Y₀.map T ≤ G)
    (hc : ∀ i, ∀ w ∈ Y₀, T (ρ i w) = ρ i (T w)) : Y₀.map T ≤ typeSpan ρ Y₀ G :=
  le_iSup₂_of_le (f := fun (T : M →ₗ[ℂ] M) (_ : Y₀.map T ≤ G ∧ ∀ i, ∀ w ∈ Y₀, T (ρ i w) = ρ i (T w)) => Y₀.map T)
    T ⟨hT, hc⟩ le_rfl

end Gen

variable {D : D7} (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)) {V : HSp D} {S : D.what₂.Tau → SPar}
  (M : Formalism.IndefR.Mult.DSModel V S)

def rTrL (k : GA D V) : (GA D V → ℂ) →ₗ[ℂ] (GA D V → ℂ) where
  toFun := rTr V k
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

theorem rTrL_apply (k : GA D V) (f : GA D V → ℂ) : rTrL k f = rTr V k f := rfl

def KIdx : Type := {p : D.what₂.Tau × Matrix (Fin V.rank) (Fin V.rank) ℂ // GlobalTheory.CuspGK.InK M p.1 p.2}

def rhoK (i : KIdx M) : (GA D V → ℂ) →ₗ[ℂ] (GA D V → ℂ) := rTrL (atTau θ V i.1.1 i.1.2)

def KStable (Y : Submodule ℂ (GA D V → ℂ)) : Prop :=
  ∀ τ g, GlobalTheory.CuspGK.InK M τ g → ∀ f ∈ Y, rTr V (atTau θ V τ g) f ∈ Y

theorem kStable_iff (Y : Submodule ℂ (GA D V → ℂ)) : KStable θ M Y ↔ ∀ i, ∀ y ∈ Y, rhoK θ M i y ∈ Y :=
  ⟨fun h i y hy => h i.1.1 i.1.2 i.2 y hy, fun h τ g hg y hy => h ⟨(τ, g), hg⟩ y hy⟩

theorem kStable_inf {Y Y' : Submodule ℂ (GA D V → ℂ)} (h : KStable θ M Y) (h' : KStable θ M Y') :
    KStable θ M (Y ⊓ Y') :=
  fun τ g hg f hf => ⟨h τ g hg f hf.1, h' τ g hg f hf.2⟩

theorem kStable_gkGen (ψ : GA D V → ℂ) : KStable θ M (GlobalTheory.CuspGK.gkGen θ M ψ) :=
  (GlobalTheory.CuspGK.isGKSub_gkGen θ M ψ).k

theorem kStable_of_isGKSub {A : Submodule ℂ (GA D V → ℂ)} (h : GlobalTheory.CuspGK.IsGKSub θ M A) : KStable θ M A := h.k

end GlobalTheory.KTypeProj

end
