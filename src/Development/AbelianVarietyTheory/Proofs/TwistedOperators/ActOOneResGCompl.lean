module

public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FinPartDetAtInvInt
public import Development.AbelianVarietyTheory.Definitions.Divisors.InvVolConjLevelOne
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.ActsLinOfSplitLin
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ValuationGdetKapAt

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix ValuativeRel GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.ExpansionInvariance GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.RootEx
open GlobalTheory.TopLevelInv
open Formalism.IndefR.Fin.LevelGroupLemmas (resG detAt resG_compl suppAt_resG isDetAt_detAt resG_one resG_mul actO_actO isHalf_actO)

noncomputable section

namespace GlobalTheory.TopLevelInv

abbrev conjPt {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T}
    (S : GridChoice W U) (j : ℕ) (k : FinPt G (.top (j + 1))) : GA D (G.V (.top (j + 1))) :=
  (((S.N.u (.top (j + 1)))⁻¹ * k * S.N.u (.top (j + 1)) : FinPt G (.top (j + 1))) : GA D (G.V (.top (j + 1))))




theorem detAt_resG_eq {D : D7} {V : HSp D} {e : AE D} {ε : AF D.host.F} (he2 : e * e = e) (hc : e * cA D e = 0)
    (hε : IsIdempotentElem ε) (halg : algebraMap (AF D.host.F) (AE D) ε = e + cA D e) (g : GA D V) :
    detAt e V (resG V ε g) = detAt e V g := by
  apply Units.ext
  rw [Formalism.IndefR.Fin.LevelGroupLemmas.detAt_val he2, Formalism.IndefR.Fin.LevelGroupLemmas.detAt_val he2, Formalism.IndefR.Fin.LevelGroupLemmas.mt_resG V hε, halg]
  congr 1
  set I : Ideal (AE D) := Ideal.span {1 - e}
  have h1 : Ideal.Quotient.mk I e = 1 := by
    rw [← (Ideal.Quotient.mk I).map_one, Ideal.Quotient.eq]
    have : e - 1 = (-1) * (1 - e) := by ring
    rw [this]
    exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)
  have h2 : Ideal.Quotient.mk I (cA D e) = 0 := by
    calc Ideal.Quotient.mk I (cA D e) = Ideal.Quotient.mk I (cA D e) * Ideal.Quotient.mk I e := by rw [h1, mul_one]
      _ = Ideal.Quotient.mk I (cA D e * e) := (map_mul _ _ _).symm
      _ = 0 := by rw [mul_comm, hc, map_zero]
  have key : (Formalism.IndefR.Fin.LevelGroupLemmas.resM (e + cA D e) (mt V g)).map (Ideal.Quotient.mk I) =
      (mt V g).map (Ideal.Quotient.mk I) := by
    ext i j
    simp only [Matrix.map_apply, Formalism.IndefR.Fin.LevelGroupLemmas.resM, Matrix.add_apply, Matrix.smul_apply,
      Matrix.sub_apply, smul_eq_mul, RingHom.map_add, RingHom.map_mul, RingHom.map_sub, h1, h2]
    ring
  have hd : Ideal.Quotient.mk I (Formalism.IndefR.Fin.LevelGroupLemmas.resM (e + cA D e) (mt V g)).det = Ideal.Quotient.mk I (mt V g).det := by
    rw [RingHom.map_det, RingHom.map_det]
    exact congrArg Matrix.det key
  rw [Ideal.Quotient.eq, Ideal.mem_span_singleton'] at hd
  obtain ⟨r, hr⟩ := hd
  linear_combination (-e) * hr + (-r) * he2

theorem detAt_one' {D : D7} {e : AE D} (he2 : e * e = e) (V : HSp D) : detAt e V 1 = 1 := by
  apply Units.ext
  rw [Formalism.IndefR.Fin.LevelGroupLemmas.detAt_val he2, Formalism.IndefR.Fin.LevelGroupLemmas.mt_one', Matrix.det_one, Units.val_one]
  ring

theorem actO_one_resG_compl {D : D7} {S T : HSp D} {e : AE D} (he2 : e * e = e) (hc : e * cA D e = 0) {ε : AF D.host.F}
    (hε : IsIdempotentElem ε) (halg : algebraMap (AF D.host.F) (AE D) ε = e + cA D e) (h : GA D T) (x : WO S T)
    (hx : IsHalf e x) : actO S T 1 (resG T (1 - ε) h) x = x := by
  have hann : ∀ i j, algebraMap (AF D.host.F) (AE D) (1 - ε) * x i j = 0 := by
    intro i j
    rw [map_sub, map_one, halg, ← hx i j]
    linear_combination (-(x i j)) * he2 + (-(x i j)) * hc
  rw [Formalism.IndefR.Fin.LevelGroupLemmas.actO_eq, inv_one, Formalism.IndefR.Fin.LevelGroupLemmas.mt_one', Matrix.mul_one,
    Formalism.IndefR.Fin.LevelGroupLemmas.mt_resG T hε.one_sub]
  unfold Formalism.IndefR.Fin.LevelGroupLemmas.resM
  rw [Matrix.add_mul, Matrix.one_mul, add_eq_left]
  ext i j
  simp only [Matrix.mul_apply, Matrix.smul_apply, smul_eq_mul, Matrix.zero_apply]
  refine Finset.sum_eq_zero fun l _ => ?_
  rw [mul_assoc, mul_left_comm, hann l j, mul_zero]

end GlobalTheory.TopLevelInv

end
