module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RangeSndRel
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

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.FlipRun

noncomputable section

namespace GlobalTheory.FlipRun

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil}

theorem pathConv_zip_fock (M : Vol G) (ρ : RealMatch W) (t : T) {e : AE D}
    (he : IsIdemSum e (locPl G t)) (hC : CuspStep W M ρ t) {X : Node} :
    ∀ {Y : Node} (p : Path T X Y), OnGrid D.R.m t p → ∀ (φ d : PureT G p), VecAll ρ e p φ d →
      ∀ (P' : PolT G p) (F : Fn G X), IsCuspListed W.θ X F →
      PathConv W M p (Path.Fam.zip (fun a (f : Sch G a) Q => W.fock a.pair f Q) d P') F ∧
      IsCuspListed W.θ Y (liftP W M p (Path.Fam.zip (fun a (f : Sch G a) Q => W.fock a.pair f Q) d P') F) := by
  intro Y p
  induction p with
  | nil =>
    intro _ _ _ _ _ _ hF
    exact ⟨trivial, hF⟩
  | snoc a p ih =>
    intro hg φ d hv P' F hF
    have hg' : OnGrid D.R.m t p := fun b hb => hg b (List.mem_append_left [a] hb)
    have ha : IsGridArrow D.R.m t a := hg a (List.mem_append_right p.arrows (List.mem_singleton_self a))
    obtain ⟨h1, h2⟩ := ih hg' φ.1 d.1 hv.1 P'.1 F hF
    obtain ⟨h3, h4⟩ := hC a ha e he φ.2 d.2 hv.2 P'.2 _ h2
    exact ⟨⟨h1, h3⟩, h4⟩

theorem mem_support_tensT {X Y : Node} {p : Path T X Y} (τi : PolT G p →₀ ℂ) (τf : TotT G p) (x : PureT G p)
    (hx : x ∈ (tensT W τi τf).support) :
    ∃ d ∈ τf.support, ∃ P' : PolT G p, x = Path.Fam.zip (fun a (f : Sch G a) Q => W.fock a.pair f Q) d P' := by
  classical
  unfold tensT at hx
  obtain ⟨P, -, hP⟩ := Finset.mem_biUnion.1 (Finsupp.support_sum hx)
  obtain ⟨d, hd, hx'⟩ := Finset.mem_biUnion.1 (Finsupp.support_sum hP)
  exact ⟨d, hd, P, Finset.mem_singleton.1 (Finsupp.support_single_subset hx')⟩

theorem totConv_tensE : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} (M : Vol G) (ρ : RealMatch W) (t : T) {e : AE D}, IsIdemSum e (locPl G t) → GlobalTheory.FlipRun.CuspStep W M ρ t → ∀ {X Y : Node} (p : Path T X Y), GlobalTheory.FlipRun.OnGrid D.R.m t p → ∀ (τ : TotT G p) (φ : PureT G p → PureT G p), (∀ d ∈ τ.support, GlobalTheory.FlipRun.VecAll ρ e p (φ d) d) → ∀ F : Fn G X, GlobalTheory.FlipRun.IsCuspListed W.θ X F → ∀ Q : GlobalTheory.FlipRun.PolE G →₀ ℂ, TotConv W M p (GlobalTheory.FlipRun.tensE W p Q τ) F := by
  intro D T L sc G W M ρ t e he hC X Y p hg τ φ hv F hF Q x hx
  obtain ⟨d, hd, P', rfl⟩ := mem_support_tensT _ τ x hx
  exact (pathConv_zip_fock M ρ t he hC p hg (φ d) d (hv d hd) P' F hF).1

end GlobalTheory.FlipRun
