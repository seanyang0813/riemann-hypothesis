module

public import Development.AbelianVarietyTheory.Definitions.Divisors.KerDatTuple
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
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.KernelSpanOverClasses

@[expose] public section

noncomputable section

namespace GlobalTheory.OnCmp

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.Indef Formalism.L2.Indef.Tree
open Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.FWT Formalism.IndefR.Datum Formalism.IndefR.Lev
open GlobalTheory.FormTies GlobalTheory.OnTies GlobalTheory.TraceClassRank
open scoped TensorProduct Matrix

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (i : Fin D.R.m)

open Classical

theorem rank_W_le_V : (Wc D i).rank ≤ (Vc D i).rank :=
  (D.sp.W_rank _ (Nat.le_add_left _ _) i.2).le.trans (r_le_V i)

theorem readsOnly_omegaFree (Q : Finset (Pl D.host.E)) (ξR : ∀ PP : Pl D.host.E, (kP PP)ˣ →* ℂˣ)
    (y₀ : ∀ PP : Pl D.host.E, Matrix (Fin (Vc D i).rank) (Fin (Wc D i).rank) (kP PP)) :
    ReadsOnly (R.Pg ∪ Q) (omegaFree R i Q ξR y₀) := by
  intro y y' h
  have hg : ∀ PP ∈ R.Pg, y PP = y' PP := fun PP hp => h PP (Finset.mem_union_left _ hp)
  have hq : ∀ PP ∈ Q, y PP = y' PP := fun PP hp => h PP (Finset.mem_union_right _ hp)
  unfold omegaFree
  congr 1
  · exact if_congr ⟨fun H PP hp => (hg PP hp) ▸ H PP hp, fun H PP hp => (hg PP hp).symm ▸ H PP hp⟩ rfl rfl
  · by_cases H : ∀ PP ∈ Q, IsUnit (topL (Wc D i).rank (y PP)).det
    · have H' : ∀ PP ∈ Q, IsUnit (topL (Wc D i).rank (y' PP)).det := fun PP hp => (hq PP hp) ▸ H PP hp
      rw [dite_eq_left H, dite_eq_left H']
      refine Finset.prod_congr rfl fun PP _ => ?_
      have : (H PP.1 PP.2).unit = (H' PP.1 PP.2).unit := by
        ext; simp [hq PP.1 PP.2]
      rw [this]
    · have H' : ¬ ∀ PP ∈ Q, IsUnit (topL (Wc D i).rank (y' PP)).det := fun H' =>
        H fun PP hp => (hq PP hp).symm ▸ H' PP hp
      rw [dite_eq_right H, dite_eq_right H']

end GlobalTheory.OnCmp

end
