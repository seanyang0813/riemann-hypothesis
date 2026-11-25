module

public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IsometryCarriesCharacter
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCompatFiniteIsometry
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdempotentPreservesLatticeHat
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LevelHyperspecialTrivialCharacterSplitsOffPlaces
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelaf
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
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.IndefR.Lev Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.L2.DIV GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter
open scoped TensorProduct

namespace GlobalTheory.FinAdIdent

variable {D : D7}

def Good (N : ℕ) (f : Af D.host.F ⊗[D.host.F] D.host.E) : Prop :=
  f * f = f ∧ ∃ u : Formalism.L2.Herm.intAf D.host.F D.host.E, (u : EAf D) * (N : EAf D) = swapAE D f

theorem lamHat_good {V : HSp D} {β : GL (Fin V.rank) (EAf D)} {Λ : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E)} {N : ℕ}
    (hB : IsBaseFrame V β Λ N) {f : Af D.host.F ⊗[D.host.F] D.host.E} (hf : Good N f) :
    (∀ y ∈ Formalism.L2.NTheta.LamHat V, f • y ∈ Formalism.L2.NTheta.LamHat V) ∧
      ∀ y, f • y ∈ Formalism.L2.NTheta.LamHat V ↔ (fun a => swapAE D (f * y a)) ∈ Formalism.L2.Herm.hatL (F := D.host.F) Λ := by
  obtain ⟨-, -, -, h01, h10⟩ := hB
  obtain ⟨hff, u, hu⟩ := hf
  have key : ∀ z, z ∈ Formalism.L2.NTheta.LamHat V ↔
      (fun i => swapAE D (z i)) ∈ Formalism.L2.Herm.hatL (F := D.host.F) (GlobalTheory.LevSplit.L0sub V) :=
    fun z => GlobalTheory.LevSplit.latHat_iff (GlobalTheory.LevSplit.L0sub V) z
  have hε : swapAE D f * swapAE D f = swapAE D f := by rw [← RingHom.map_mul, hff]
  have hsw : ∀ y : Fin V.rank → Af D.host.F ⊗[D.host.F] D.host.E,
      (fun a => swapAE D (f * y a)) = fun a => swapAE D f * swapAE D (y a) := fun y => funext fun a => RingHom.map_mul _ _ _
  have a01 := GlobalTheory.LevSplit.hatL_smul (F := D.host.F) (GlobalTheory.LevSplit.L0sub V) Λ N h01
  have a10 := GlobalTheory.LevSplit.hatL_smul (F := D.host.F) Λ (GlobalTheory.LevSplit.L0sub V) N h10
  obtain ⟨φ, hφ⟩ : ∃ φ : Formalism.L2.Herm.intAf D.host.F D.host.E, (φ : EAf D) = swapAE D f := ⟨u * N, hu⟩
  refine ⟨fun y hy => (key _).2 ?_, fun y => (key _).trans ?_⟩
  · show (fun a => swapAE D (f * y a)) ∈ _
    rw [hsw, ← hφ]
    exact Submodule.smul_mem _ φ ((key y).1 hy)
  · show (fun a => swapAE D (f * y a)) ∈ _ ↔ _
    rw [hsw]
    exact ⟨GlobalTheory.LatLoc.loc_transfer _ _ N u _ hu hε a01 _, GlobalTheory.LatLoc.loc_transfer _ _ N u _ hu hε a10 _⟩

end GlobalTheory.FinAdIdent

end
