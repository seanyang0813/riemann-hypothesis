module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ECure
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
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.ColDict
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RowDict
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.ConcreteSettingExists

@[expose] public section

open scoped Classical
open MeasureTheory NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PackageTie2 Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.ColDict Formalism.L2.SG.RowDict Formalism.L2.Forms Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.ConcreteSettingExists GlobalTheory.Mem GlobalTheory.Mem.SRe

noncomputable section
namespace GlobalTheory.Mem.SRe

variable (D : D7) (Z : New D) (X : HidaSetting D) (Y : Full X) (u u' : D.what₂.Word) (t : RT Y u u')


private theorem choose_eq_of_iff {α : Type*} {p q : α → Prop} (hp : ∃ x, p x) (hq : ∃ x, q x)
    (h : ∀ x, p x ↔ q x) : hp.choose = hq.choose := by
  have hpq : p = q := funext fun x => propext (h x)
  subst hpq
  rfl

theorem re_termIsId : Formalism.L2.SG.FourParts.termIsId t ↔ Formalism.L2.SG.FourParts.termIsId (eRT Z Y u u' t) := by rfl


theorem re_termInS : Formalism.L2.SG.FourParts.termInS t ↔ Formalism.L2.SG.FourParts.termInS (eRT Z Y u u' t) := by rfl


theorem re_relevant : t.relevant ↔ (eRT Z Y u u' t).relevant := by rfl


theorem re_FeqF : t.FeqF ↔ (eRT Z Y u u' t).FeqF := by rfl


theorem re_generic : t.generic ↔ (eRT Z Y u u' t).generic := by rfl


theorem re_G : t.G = (eRT Z Y u u' t).G := (by with_unfolding_all exact (Eq.refl t.G :))


theorem re_termBBne : ∀ p, Formalism.L2.SG.Saturated.termBBne t p ↔ Formalism.L2.SG.Saturated.termBBne (eRT Z Y u u' t) p := fun _ => by rfl


private theorem re_atPt (w : Formalism.MainNotions.S.Point D.host.E (D.R.rS + 1)) :
    t.atPt w ↔ (eRT Z Y u u' t).atPt w := by rfl

theorem re_ptOf : Formalism.L2.SG.PairVal.ptOf t = Formalism.L2.SG.PairVal.ptOf (eRT Z Y u u' t) := by
  unfold Formalism.L2.SG.PairVal.ptOf
  have hiff : ∀ w, (t.atPt w ∧ t.relevant) ↔ ((eRT Z Y u u' t).atPt w ∧ (eRT Z Y u u' t).relevant) :=
    fun w => and_congr (re_atPt D Z X Y u u' t w) (re_relevant D Z X Y u u' t)
  exact dite_congr (propext (exists_congr hiff)) (fun h => choose_eq_of_iff _ h hiff) (fun _ => rfl)


theorem re_massTerm : Formalism.L2.SG.PairVal.massTerm t = Formalism.L2.SG.PairVal.massTerm (eRT Z Y u u' t) := by rfl


private theorem re_phaseAt (w : Formalism.MainNotions.S.Point D.host.E (D.R.rS + 1)) :
    Formalism.L2.SG.PairVal.phaseAt t w = Formalism.L2.SG.PairVal.phaseAt (eRT Z Y u u' t) w := by
  unfold Formalism.L2.SG.PairVal.phaseAt
  refine dite_congr (propext (exists_congr fun _ => by rfl)) (fun h => ?_) (fun _ => rfl)
  rw [choose_eq_of_iff _ h (fun _ => by rfl)]
  rfl

private theorem re_vRdef :
    Formalism.L2.SG.PairVal.vRdef D u u' (X.Fu u) (Y.what₂ u) Y.δ Y.M t =
      Formalism.L2.SG.PairVal.vRdef (reD D Z) (wd Z u) (wd Z u') ((reX Z X).Fu (wd Z u))
        ((reY Z Y).what₂ (wd Z u)) (reY Z Y).δ (reY Z Y).M (eRT Z Y u u' t) := by
  unfold Formalism.L2.SG.PairVal.vRdef
  refine dite_congr
    (propext (and_congr (re_relevant D Z X Y u u' t)
      (and_congr (re_generic D Z X Y u u' t) (exists_congr fun _ => by rfl))))
    (fun h => ?_) (fun _ => rfl)
  rw [choose_eq_of_iff _ h.2.2 (fun _ => by rfl)]
  rfl

theorem re_cTerm : Formalism.L2.SG.PairVal.cTerm (Formalism.L2.SG.PairVal.vRdef D u u' (X.Fu u) (Y.what₂ u) Y.δ Y.M) t = Formalism.L2.SG.PairVal.cTerm (Formalism.L2.SG.PairVal.vRdef (reD D Z) (wd Z u) (wd Z u') ((reX Z X).Fu (wd Z u)) ((reY Z Y).what₂ (wd Z u)) (reY Z Y).δ (reY Z Y).M) (eRT Z Y u u' t) := by
  unfold Formalism.L2.SG.PairVal.cTerm Formalism.L2.SG.PairVal.cAt
  exact dite_congr (propext (exists_congr (re_atPt D Z X Y u u' t)))
    (fun h => congrArg₂ (fun (a : ℂ) (b : ℝ) => a * (b : ℂ))
      ((congrArg (Formalism.L2.SG.PairVal.phaseAt t) (choose_eq_of_iff _ h (re_atPt D Z X Y u u' t))).trans
        (re_phaseAt D Z X Y u u' t _))
      (re_vRdef D Z X Y u u' t))
    (fun _ => rfl)

omit t in

theorem re_meanCount : ∀ w, Formalism.L2.SG.PairVal.meanCount D u u' (X.Fu u) (Y.what₂ u) w = Formalism.L2.SG.PairVal.meanCount (reD D Z) (wd Z u) (wd Z u') ((reX Z X).Fu (wd Z u)) ((reY Z Y).what₂ (wd Z u)) w := fun _ => by rfl


omit t in

theorem eRT_keeps_term_data : ∀ (D : D7) (Z : New D) (X : HidaSetting D) (Y : Full X) (u u' : D.what₂.Word), (∀ t : RT Y u u', (Formalism.L2.SG.FourParts.termIsId t ↔ Formalism.L2.SG.FourParts.termIsId (eRT Z Y u u' t)) ∧ (Formalism.L2.SG.FourParts.termInS t ↔ Formalism.L2.SG.FourParts.termInS (eRT Z Y u u' t)) ∧ (t.relevant ↔ (eRT Z Y u u' t).relevant) ∧ (t.FeqF ↔ (eRT Z Y u u' t).FeqF) ∧ (t.generic ↔ (eRT Z Y u u' t).generic) ∧ t.G = (eRT Z Y u u' t).G ∧ (∀ p, Formalism.L2.SG.Saturated.termBBne t p ↔ Formalism.L2.SG.Saturated.termBBne (eRT Z Y u u' t) p) ∧ Formalism.L2.SG.PairVal.ptOf t = Formalism.L2.SG.PairVal.ptOf (eRT Z Y u u' t) ∧ Formalism.L2.SG.PairVal.massTerm t = Formalism.L2.SG.PairVal.massTerm (eRT Z Y u u' t) ∧ Formalism.L2.SG.PairVal.cTerm (Formalism.L2.SG.PairVal.vRdef D u u' (X.Fu u) (Y.what₂ u) Y.δ Y.M) t = Formalism.L2.SG.PairVal.cTerm (Formalism.L2.SG.PairVal.vRdef (reD D Z) (wd Z u) (wd Z u') ((reX Z X).Fu (wd Z u)) ((reY Z Y).what₂ (wd Z u)) (reY Z Y).δ (reY Z Y).M) (eRT Z Y u u' t)) ∧ ∀ w, Formalism.L2.SG.PairVal.meanCount D u u' (X.Fu u) (Y.what₂ u) w = Formalism.L2.SG.PairVal.meanCount (reD D Z) (wd Z u) (wd Z u') ((reX Z X).Fu (wd Z u)) ((reY Z Y).what₂ (wd Z u)) w :=
  fun D Z X Y u u' => ⟨fun t => ⟨re_termIsId D Z X Y u u' t, re_termInS D Z X Y u u' t,
    re_relevant D Z X Y u u' t, re_FeqF D Z X Y u u' t, re_generic D Z X Y u u' t, re_G D Z X Y u u' t,
    re_termBBne D Z X Y u u' t, re_ptOf D Z X Y u u' t, re_massTerm D Z X Y u u' t,
    re_cTerm D Z X Y u u' t⟩, re_meanCount D Z X Y u u'⟩

end GlobalTheory.Mem.SRe
