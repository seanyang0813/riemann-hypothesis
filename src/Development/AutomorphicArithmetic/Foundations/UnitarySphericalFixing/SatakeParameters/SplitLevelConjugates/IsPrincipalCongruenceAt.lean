module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenLocOfCenReal
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
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
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
open ReciprocityTheory.Aut Formalism.AUTREP
attribute [local instance] GlobalTheory.TypeRec.factG

namespace UpperTheory.One.M.B

def IsPrincipalCongruenceAt {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ} (s : SplitPlace L) (κ : GAf L n) : Prop :=
  ∀ i j, Valued.v (((s.loc n κ : GL (Fin n) (s.v.adicCompletion (maximalRealSubfield L))).val - 1) i j) < 1

def FixSph : Prop :=
  ∀ (L : Type) [Field L] [NumberField L] [IsCMField L] (n : ℕ) (a : NG.AlgWt L n) (S : Submodule ℂ (GAf L n → a.W)), NG.IsIrrRep a.ρ S →
    ∀ (s : SplitPlace L), ∀ f ∈ S, f ≠ 0 → (∀ κ ∈ Umax L n, TrivOutside {s.v} κ → NG.rt L n κ f = f) →
    ∀ σ, IsLocS S s σ → GlobalTheory.SmGL.IsSpherical σ.ρ

def FixOne : Prop :=
  ∀ (L : Type) [Field L] [NumberField L] [IsCMField L] (n : ℕ) (a : NG.AlgWt L n) (S : Submodule ℂ (GAf L n → a.W)), NG.IsIrrRep a.ρ S →
    ∀ (s : SplitPlace L), ∀ f ∈ S, f ≠ 0 → (∀ κ ∈ Umax L n, TrivOutside {s.v} κ → IsPrincipalCongruenceAt s κ → NG.rt L n κ f = f) →
    ∀ σ, IsLocS S s σ → GlobalTheory.PRep.fixed σ.ρ (GlobalTheory.SplitWeil.KOne (s.w.adicCompletion L) (Fin n)) ≠ ⊥

def LevSplit : Prop := OverRows fun _ _ _ _ w Z _ _ z _ Y => ∀ (i : Fin (w.st Z).toD7.R.m)
    (P : Formalism.IndefR.principalLevelFrame.RowPsi (Formalism.IndefR.Links.Vc (w.st Z).toD7 i) (w.st Z).toD7.R.nV), StdFrame Y.hF P →
    ∀ s : SplitPlace (w.st Z).toD7.host.E, ∀ κ ∈ Umax (w.st Z).toD7.host.E (w.st Z).toD7.R.nV, TrivOutside {s.v} κ →
      (s.v ∈ gPl (w.st Z).toD7 → IsPrincipalCongruenceAt s κ) →
      P.ψ κ ∈ Formalism.IndefR.Links.levS _ (z.R.toRealDat.βV i)
          (Formalism.IndefR.RecTie.datVP z.R.toRealDat i (Y.tupT (w.st Z).toD7.what₂.mu0) (z.R.toRealDat.levR z.F.lv2 false)) ∧
        Formalism.IndefR.Lev.levChi _ (z.R.toRealDat.βV i)
          (Formalism.IndefR.RecTie.datVP z.R.toRealDat i (Y.tupT (w.st Z).toD7.what₂.mu0) (z.R.toRealDat.levR z.F.lv2 false))
          (P.ψ κ) = 1

end UpperTheory.One.M.B
