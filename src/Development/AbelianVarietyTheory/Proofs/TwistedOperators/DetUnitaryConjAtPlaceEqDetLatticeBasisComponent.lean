module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ValuationGdetKapAt
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsClasses

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix ValuativeRel GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.ExpansionInvariance GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.RootEx
open GlobalTheory.TopLevelInv

noncomputable section

namespace GlobalTheory.TopLevelInv

theorem det_val_conj_inv {R : Type} [CommRing R] {n : Type} [Fintype n] [DecidableEq n] (b Y : GL n R) :
    (b⁻¹ * Y * b⁻¹⁻¹).val.det = Y.val.det := by
  rw [Units.val_mul, Units.val_mul, det_mul, det_mul, mul_right_comm, ← det_mul, inv_inv, Units.inv_mul, det_one, one_mul]

theorem det_val_reGL {k : Type} [Field k] {a b : Type} [Fintype a] [DecidableEq a] [Fintype b] [DecidableEq b] (e : a ≃ b)
    (g : GL a k) : (GlobalTheory.StepData.reGL e g).val.det = g.val.det :=
  det_reindex_self e g.val

theorem val_loc {D : D7} (w : Pl D.host.E) {n : ℕ} (g : GL (Fin n) (Lev.EAf D)) :
    (GlobalTheory.StdFrames.loc w g).val = g.val.map (GlobalTheory.StdFrames.cpt w) := rfl

theorem val_finG {D : D7} (V : HSp D) (k : GfC V) :
    (finG V k).val = (Formalism.L2.Theta.mt V (k : GA D V)).map (toEAf D) := rfl

theorem det_mt_conj {D : D7} (V : HSp D) (k u : GfC V) :
    (Formalism.L2.Theta.mt V ((u⁻¹ * k * u : GfC V) : GA D V)).det = (Formalism.L2.Theta.mt V (k : GA D V)).det := by
  have h1 : Formalism.L2.Theta.mt V ((u⁻¹ * k * u : GfC V) : GA D V)
      = (matHom V (u : GA D V))⁻¹.val * Formalism.L2.Theta.mt V (k : GA D V) * (matHom V (u : GA D V)).val := by
    simp [Formalism.L2.Theta.mt, map_mul, map_inv]
  rw [h1, det_mul, det_mul, mul_right_comm, ← det_mul, Units.inv_mul, det_one, one_mul]

theorem det_mt_conj_eq_gdet_kapAt : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T} (S : GridChoice W U) (t : T) (j : ℕ) (hj : j + 1 < D.R.m) (k u : FinPt G (.top (j + 1))) (w : Pl D.host.E), ((Formalism.L2.Theta.mt (G.V (.top (j + 1))) ((u⁻¹ * k * u : FinPt G (.top (j + 1))) : GA D (G.V (.top (j + 1))))).map fun z => GlobalTheory.StdFrames.cpt w (toEAf D z)).det = ((gdet (kapAt S t j hj k w) : (Kw w)ˣ) : Kw w) := by
  intro D T L sc G W U S t j hj k u w
  have hfun : (fun z => GlobalTheory.StdFrames.cpt w (toEAf D z)) = ⇑((GlobalTheory.StdFrames.cpt w).comp (toEAf D)) := rfl
  rw [hfun, ← RingHom.mapMatrix_apply, ← RingHom.map_det, det_mt_conj, RingHom.comp_apply]
  rw [Matrix.GeneralLinearGroup.val_det_apply]
  rw [kapAt, GlobalTheory.FunObj.inBasis, MonoidHom.comp_apply, MonoidHom.comp_apply, MulEquiv.coe_toMonoidHom,
    MulEquiv.coe_toMonoidHom, MulAut.conj_apply, det_val_reGL, val_loc, ← RingHom.mapMatrix_apply, ← RingHom.map_det,
    det_val_conj_inv, val_finG, ← RingHom.mapMatrix_apply, ← RingHom.map_det]

end GlobalTheory.TopLevelInv

end
