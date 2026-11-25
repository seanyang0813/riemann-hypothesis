module

public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LatticeHasSmallGenerators
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKsFormOfAlgebraicFormsIso
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LinearIndependentRowsMap
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

@[expose] public section



section
open GlobalTheory.BigTop GlobalTheory.BigOn GlobalTheory.BigOn.Exp
open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links
noncomputable section


namespace GlobalTheory.BigOn.Exp
theorem readInj_alt : _root_.GlobalTheory.BigOn.Exp.ReadInjAlt := by
  unfold _root_.GlobalTheory.BigOn.Exp.ReadInjAlt _root_.GlobalTheory.BigOn.Exp.TwistConditions _root_.GlobalTheory.BigOn.AtPtsAlt
  refine ⟨1, one_pos, fun _ _ _ => ⟨⟨0, fun _ => 0, fun _ => 0, fun _ => 0⟩, fun Fm CH _ _ =>
    ⟨0, fun x hx _ i p hr hm w _ j ρ hρ ν hν => ?_⟩⟩⟩
  obtain ⟨Z⟩ := hm.2.2.series
  have hU : p.R.toRealDat.LUnif := hr.prim.unif
  have hW : p.R.toRealDat.models_HW := p.charW.base.models.HW
  have hK : (p.Sx.A ((j : ℕ) + 1)).IsKsForm := GlobalTheory.isKsForm_of_formsIso _ _ (p.nexp.fi j) (p.fw.ks j)
  exact (GlobalTheory.SeriesTie.realRd_faithful _ _ _ _ _ _ _ p.R p.cG p.Sx p.nexp p.v₀ ρ hρ _ j _ ν hν hU hW (Z.vec j) hK).injective
end GlobalTheory.BigOn.Exp
end
end
