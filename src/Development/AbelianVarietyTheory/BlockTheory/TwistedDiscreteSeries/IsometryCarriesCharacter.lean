module

public import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
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

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.IndefR.Lev Formalism.IndefR.Links Formalism.IndefR.Mult
open scoped TensorProduct

namespace GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter

variable {D : D7}

abbrev mmul {A : Type} [CommRing A] {l m n : ℕ} (x : Matrix (Fin l) (Fin m) A) (y : Matrix (Fin m) (Fin n) A) :
    Matrix (Fin l) (Fin n) A := x * y

def IsIsom (V V' : HSp D) (R : Type) [CommRing R] [Algebra D.host.F R]
    (j : Matrix (Fin V'.rank) (Fin V.rank) (D.host.E ⊗[D.host.F] R)) : Prop :=
  Function.Bijective j.mulVec ∧
    Formalism.UG.cT (Formalism.UG.sigR D.sp.cm.sig R) j * V'.gram.map (Formalism.UG.inclE (F := D.host.F) R) * j =
      V.gram.map (Formalism.UG.inclE (F := D.host.F) R)

def IsLocLatIsom (V V' : HSp D) (Λ : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E))
    (Λ' : Submodule (𝓞 D.host.E) (Fin V'.rank → D.host.E)) (v : HeightOneSpectrum (𝓞 D.host.F))
    (j : Matrix (Fin V'.rank) (Fin V.rank) (D.host.E ⊗[D.host.F] v.adicCompletion D.host.F)) : Prop :=
  IsIsom V V' (v.adicCompletion D.host.F) j ∧
    j.mulVec '' (Formalism.L2.Herm.locL v Λ : Set _) = (Formalism.L2.Herm.locL v Λ' : Set _)

def IsLatIsom (V V' : HSp D) (Λ : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E))
    (Λ' : Submodule (𝓞 D.host.E) (Fin V'.rank → D.host.E)) (j : Matrix (Fin V'.rank) (Fin V.rank) (EAf D)) : Prop :=
  IsIsom V V' (Formalism.L2.Herm.Af D.host.F) j ∧
    j.mulVec '' (Formalism.L2.Herm.hatL (F := D.host.F) Λ : Set _) = (Formalism.L2.Herm.hatL (F := D.host.F) Λ' : Set _)

def OnePlaceOver (T : Set (Formalism.L2.DIV.Pl D.host.E)) : Prop :=
  ∀ PP ∈ T, ∀ PP' ∈ T, ¬ IsConjPl PP PP'

def MatchesAt (V V' : HSp D) (β : GL (Fin V.rank) (EAf D)) (β' : GL (Fin V'.rank) (EAf D))
    (T : Set (Formalism.L2.DIV.Pl D.host.E)) (j : Matrix (Fin V'.rank) (Fin V.rank) (EAf D)) : Prop :=
  ∃ u : Matrix (Fin V'.rank) (Fin V.rank) (Formalism.L2.Herm.intAf D.host.F D.host.E),
    mmul β'.val (u.map (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype) = mmul j β.val ∧
      ∀ PP ∈ T, ∀ a b, Formalism.L2.DIV.resS D.host.F PP (u a b) = if a.val = b.val then 1 else 0

def IsConjBy (V V' : HSp D) (j : Matrix (Fin V'.rank) (Fin V.rank) (EAf D)) (φ : GfC V ≃ₜ* GfC V') : Prop :=
  ∀ g : GfC V, mmul (finE V' (φ g : GA D V')).val j = mmul j (finE V (g : GA D V)).val

def GlobalIsometry (D : D7) : Prop :=
  ∀ (V V' : HSp D), V.rank = V'.rank →
    ∀ (Λ : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E)) (Λ' : Submodule (𝓞 D.host.E) (Fin V'.rank → D.host.E))
      (β : GL (Fin V.rank) (EAf D)) (β' : GL (Fin V'.rank) (EAf D)) (N N' : ℕ),
      IsSDFrame V β Λ N → IsSDFrame V' β' Λ' N' →
      ∀ T : Set (Formalism.L2.DIV.Pl D.host.E), OnePlaceOver T →
        ∃ j, IsLatIsom V V' Λ Λ' j ∧ MatchesAt V V' β β' T j

end GlobalTheory.IndefiniteRowSideFullHecke.IsometryCarriesCharacter

end
