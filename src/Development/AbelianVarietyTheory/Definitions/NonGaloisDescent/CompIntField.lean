module

public import Formalism.LocalToGlobal.IndefiniteReal.DoubleCosetOperators.DisjointSplitLevelPlaces
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
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset
import Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector
public import Formalism.LocalToGlobal.ProjectiveLattices.CuspidalL2Subspace
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
public import Formalism.LocalToGlobal.ProjectiveLattices.FamilyUniformisationBasePointOrthogonalBis

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta IsDedekindDomain NumberField Formalism.IndefR.Datum Formalism.IndefR.Lev Formalism.IndefR.NX
open scoped TensorProduct
open Classical

namespace GlobalTheory.TowerCov

variable {D : D7}

def IsLevN (E : ExpSet D) (N : ℕ) : Prop :=
  N ≠ 0 ∧ (∀ p : ℕ, p.Prime → p ∣ N →
    p ≠ 2 ∧ Nat.Coprime p E.l ∧ (∀ a, p ≠ E.pde a) ∧ (∀ a, p ≠ E.gp a) ∧ D.host.cls p = .splitK ∧
      ¬ p ∣ Ideal.absNorm D.host.ccK) ∧ Squarefree N

def LevN (E : ExpSet D) : Type := {N : ℕ // IsLevN E N}

section Fields

variable (E : ExpSet D) {O : Type} [CommRing O] (C : CoefLat E O) (Base : Set (GA D E.W → ℂ))
  (LQ : LevN E → Subfield ℂ) (Rat : ∀ N : LevN E, Submodule (LQ N) (GA D E.W → ℂ))
  (Λ : Subring ℂ) (BaseInt : Submodule Λ (GA D E.W → ℂ)) (Int : LevN E → Submodule Λ (GA D E.W → ℂ))

variable {E C Base LQ Rat Λ BaseInt Int}

end Fields

section Covers

open Formalism.L2.Pj Formalism.IndefR.FWT GlobalTheory.CoverRead

variable {E : ExpSet D} {T : CoreJ D} {j : ℕ} {σ : T.Q.c.F →+* ℂ} (hV : T.V j σ = E.W)
  (a : (D.host.E →+* ℂ) × ℕ → ℕ) (n : ℕ) (z : ℂ)

def placesIn {L : Type} [Field L] [NumberField L] (ι : L →+* ℂ) (Λ : Subring ℂ) : Set (HeightOneSpectrum (𝓞 L)) :=
  {la | ∀ x : L, la.valuation L x ≤ 1 → ι x ∈ Λ}

end Covers

end GlobalTheory.TowerCov
