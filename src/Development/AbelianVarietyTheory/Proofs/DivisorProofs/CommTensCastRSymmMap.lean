module

public import Development.AbelianVarietyTheory.Definitions.Divisors.InstCMHostS
public import Formalism.LocalToGlobal.IndefiniteReal.ConjSubConjSub
public import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
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
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.HoweUnram
import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Polynomial
open Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx
open scoped TensorProduct InnerProductSpace
open GlobalTheory.Hk3 (Core Good IsSF SchurAll TwoSided FixAll EEc Wcc eH IsLab HoweUnram SphOp hyp)
open GlobalTheory.StdFrame (StdPsi)

noncomputable section

namespace GlobalTheory.ConjFrame

theorem comm_tensCastR_symm_map {E : Type} [Field E] [NumberField E] {F1 F2 : Subfield E} (h : F1 = F2)
    (σ : E →ₐ[F1] E) (τ : E →ₐ[F2] E) (hστ : ∀ x, σ x = τ x) (x : E ⊗[F2] FiniteAdeleRing (𝓞 F2) F2) :
    Algebra.TensorProduct.comm F1 (FiniteAdeleRing (𝓞 F1) F1) E
        ((GlobalTheory.StdFrame.tensCastR h).symm (Algebra.TensorProduct.map τ (AlgHom.id F2 (FiniteAdeleRing (𝓞 F2) F2)) x)) =
      Formalism.UG.sigR σ (FiniteAdeleRing (𝓞 F1) F1)
        (Algebra.TensorProduct.comm F1 (FiniteAdeleRing (𝓞 F1) F1) E ((GlobalTheory.StdFrame.tensCastR h).symm x)) := by
  subst h
  have hc : ∀ y, (GlobalTheory.StdFrame.tensCastR (rfl : F1 = F1)).symm y =
      (Algebra.TensorProduct.comm F1 (FiniteAdeleRing (𝓞 F1) F1) E).symm y := fun _ => rfl
  simp only [hc]
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => simp [Formalism.UG.sigR, Algebra.TensorProduct.map_tmul, hστ]
  | add a b ha hb => simp only [map_add (f := _), ha, hb]

theorem swapAE_conjAL : ∀ {D : D7} (hF : D.host.F = maximalRealSubfield D.host.E) (x : ReciprocityTheory.Aut.AL D.host.E), Formalism.IndefR.Lev.swapAE D ((GlobalTheory.StdFrame.tensCastR hF).symm (ReciprocityTheory.Aut.conjAL D.host.E x)) = Formalism.UG.sigR D.sp.cm.sig (Formalism.L2.Herm.Af D.host.F) (Formalism.IndefR.Lev.swapAE D ((GlobalTheory.StdFrame.tensCastR hF).symm x)) := by
  intro D hF x
  exact comm_tensCastR_symm_map hF D.sp.cm.sig ((IsCMField.complexConj D.host.E).toAlgHom) (fun _ => rfl) x

end GlobalTheory.ConjFrame

end
