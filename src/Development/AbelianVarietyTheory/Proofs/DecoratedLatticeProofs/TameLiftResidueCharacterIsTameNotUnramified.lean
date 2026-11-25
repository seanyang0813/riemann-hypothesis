module

public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.HalfLinearCocycle
import Formalism.LocalToGlobal.Columns.StdLatUnimodular
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
import Mathlib.RingTheory.Valuation.Integral
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.VolumeFlatSection
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ChainParSucc
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsLevMeas
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsStepWeil
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CartFrSgn
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum
open scoped TensorProduct InnerProductSpace ComplexConjugate
open GlobalTheory.ChainOnto GlobalTheory.ChainTw
open GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting (SplitProj IsProjAt IsIdemOf LiftsChar rdA grpCo frCo gAt)
open GlobalTheory.IndefiniteRowSideFullHecke.VolumeFlatSection (Blocks parahoric datum)
open GlobalTheory.Chain GlobalTheory.ChainFr GlobalTheory.PairLift GlobalTheory.Chain.RealIt

noncomputable section

namespace GlobalTheory.TameLiftChar

open ValuativeRel

variable {D : D7} {v : HeightOneSpectrum (𝓞 D.host.F)}

theorem val_le_iff (x y : Fv D.host.F v) :
    valuation (Fv D.host.F v) x ≤ valuation (Fv D.host.F v) y ↔ Valued.v x ≤ Valued.v y := by
  haveI : (Valued.v : Valuation (Fv D.host.F v) (WithZero (Multiplicative ℤ))).Compatible :=
    Valuation.Compatible.ofValuation _
  rw [← Valuation.Compatible.vle_iff_le (v := valuation (Fv D.host.F v)),
    Valuation.Compatible.vle_iff_le (v := (Valued.v : Valuation (Fv D.host.F v) (WithZero (Multiplicative ℤ))))]

theorem val_lt_one_iff (x : Fv D.host.F v) :
    valuation (Fv D.host.F v) x < 1 ↔ Valued.v x < 1 := by
  have h := val_le_iff (D := D) (v := v) 1 x
  rw [map_one, map_one] at h
  rw [← not_le, ← not_le, h]

theorem val_eq_one_iff (x : Fv D.host.F v) :
    valuation (Fv D.host.F v) x = 1 ↔ Valued.v x = 1 := by
  have h1 := val_le_iff (D := D) (v := v) 1 x
  have h2 := val_le_iff (D := D) (v := v) x 1
  rw [map_one, map_one] at h1 h2
  rw [le_antisymm_iff, le_antisymm_iff, h1, h2]

theorem rdQ_one (φ : SplitProj D v) : GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting.rdQ φ (1 : D.host.E) = 1 := by
  show φ (1 ⊗ₜ 1) = 1
  rw [← Algebra.TensorProduct.one_def, map_one]

def rdQHom (φ : SplitProj D v) : D.host.E →+* Fv D.host.F v :=
  φ.toRingHom.comp (Algebra.TensorProduct.includeRight : D.host.E →ₐ[D.host.F] _).toRingHom

theorem rdQHom_apply (φ : SplitProj D v) (x : D.host.E) : rdQHom φ x = GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting.rdQ φ x := rfl

theorem val_rdQ_le_one (φ : SplitProj D v) (x : 𝓞 D.host.E) : Valued.v (GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting.rdQ φ (x : D.host.E)) ≤ 1 := by
  let w : Valuation (Fv D.host.F v) (WithZero (Multiplicative ℤ)) := Valued.v
  have hx : IsIntegral ℤ (x : D.host.E) := x.2
  obtain ⟨p, hm, hp⟩ := hx
  have hO : IsIntegral w.integer (GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting.rdQ φ (x : D.host.E)) := by
    refine ⟨p.map (Int.castRingHom w.integer), hm.map _, ?_⟩
    rw [Polynomial.eval₂_map, ← rdQHom_apply]
    have : (algebraMap w.integer (Fv D.host.F v)).comp (Int.castRingHom _) =
        (rdQHom φ).comp (algebraMap ℤ D.host.E) := RingHom.ext_int _ _
    rw [this, ← Polynomial.hom_eval₂, hp, map_zero]
  exact (Valuation.integer.integers w).mem_of_integral hO

end GlobalTheory.TameLiftChar

open GlobalTheory.TameLiftChar in
theorem GlobalTheory.tameLift_isTame_not_isUnram : ∀ (D : D7) (v : HeightOneSpectrum (𝓞 D.host.F)) (φ : SplitProj D v) (PP : Pl D.host.E) (ξ : (kP PP)ˣ →* ℂˣ), IsProjAt φ PP → ξ ≠ 1 → ∀ ξl : (Fv D.host.F v)ˣ →* ℂˣ, LiftsChar φ PP ξl ξ → GlobalTheory.SplitWeil.IsTame ξl ∧ ¬ GlobalTheory.SplitWeil.IsUnram ξl := by
  intro D v φ PP ξ hP hξ ξl hl
  refine ⟨?_, ?_⟩
  · intro x hx
    have hr : GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting.RedRel φ PP (x : Fv D.host.F v) ((1 : (kP PP)ˣ) : kP PP) := by
      refine ⟨1, by simp, ?_⟩
      simpa [rdQ_one] using (val_lt_one_iff _).1 hx
    rw [hl x 1 hr, map_one]
  · intro hun
    obtain ⟨k, hk⟩ : ∃ k, ξ k ≠ 1 := by
      by_contra h; push_neg at h; exact hξ (MonoidHom.ext h)
    obtain ⟨x0, hx0⟩ := Ideal.Quotient.mk_surjective (k : kP PP)
    have hnot : x0 ∉ PP.asIdeal := by
      intro hm
      have : ((k : kP PP)) = 0 := by rw [← hx0]; exact Ideal.Quotient.eq_zero_iff_mem.2 hm
      exact k.ne_zero this
    have hle := val_rdQ_le_one φ x0
    have hge : ¬ Valued.v (GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting.rdQ φ (x0 : D.host.E)) < 1 := fun h => hnot ((hP x0).2 h)
    have h1 : Valued.v (GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting.rdQ φ (x0 : D.host.E)) = 1 := le_antisymm hle (not_lt.1 hge)
    have hne : GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting.rdQ φ (x0 : D.host.E) ≠ 0 := by
      intro h0; rw [h0, map_zero] at h1; exact zero_ne_one h1
    let u : (Fv D.host.F v)ˣ := Units.mk0 _ hne
    have hr : GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting.RedRel φ PP (u : Fv D.host.F v) (k : kP PP) := ⟨x0, hx0, by simp [u]⟩
    exact hk ((hl u k hr).symm.trans (hun u ((val_eq_one_iff _).2 h1)))
