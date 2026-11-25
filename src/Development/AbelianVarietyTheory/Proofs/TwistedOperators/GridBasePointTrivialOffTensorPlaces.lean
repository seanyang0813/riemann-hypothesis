module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsRealFam
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlaceIdempotentActsOnSupportedAndOff
import Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RealLineOfPeriodsOnLine

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.RowUnf GlobalTheory.RowChain GlobalTheory.SeeSaw GlobalTheory.RowVal GlobalTheory.RowReal GlobalTheory.FinPl

noncomputable section

namespace GlobalTheory.RowVal

theorem placeIdem_eq_under_of_idemAt {D : D7} {P : HeightOneSpectrum (𝓞 D.host.E)} {e : Formalism.L2.Theta.AE D}
    (h : Formalism.L2.NTheta.IsIdemAt e P) {v' : HeightOneSpectrum (𝓞 D.host.F)} {ε : AF D.host.F} (hε : IsPlaceIdem D v' ε)
    (hs : e + cA D e = algebraMap (AF D.host.F) (Formalism.L2.Theta.AE D) ε) : v' = P.under (𝓞 D.host.F) := by
  obtain ⟨Φ, hΦ⟩ := GlobalTheory.IdemSupport.exists_comp D
  obtain ⟨h1, h2, -⟩ := h.1
  have hm : e * (e + cA D e) = e := by rw [mul_add, h1, h2, add_zero]
  by_contra hne
  have h0 := (GlobalTheory.IdemSupport.place_comp hΦ hε).2.2 P (fun e => hne e.symm)
  have h3 := GlobalTheory.IdemSupport.ev_mul (Φ := Φ) e (e + cA D e) P
  rw [hm, hs, h0, mul_zero, (GlobalTheory.IdemSupport.delta_of_isIdemAt hΦ h).2.1] at h3
  exact one_ne_zero h3

theorem base_mt_mulVec_off : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} (G : GridData L sc) (t : T) (B : Frames G) (b : Pts G), IsBase t B b → ∀ v : GlobalTheory.FinPl.Pl D, (∀ w ∈ locPl G t, w.under (𝓞 D.host.F) ≠ v) → ∀ y : Fin (G.V (.grid D.R.m 0)).rank → AE D, (∀ i, y i ∈ idAt D (· = v)) → Formalism.L2.Theta.mt _ (b 0) *ᵥ y = y := by
  intro D T L sc G t B b hb v hv y hy
  obtain ⟨e, ⟨⟨es, hes, rfl⟩, -⟩, hsupp, -⟩ := hb.1
  have hkill : ∀ PP ∈ locPl G t, ∀ a ∈ idAt D (· = v), (es PP + cA D (es PP)) * a = 0 := by
    intro PP hPP a ha
    obtain ⟨-, -, v', ε, hε, hs⟩ := (hes PP hPP).1
    have hv' : v' = (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP) := placeIdem_eq_under_of_idemAt (hes PP hPP) hε hs
    rw [hs]
    apply (GlobalTheory.FinPl.placeIdem_acts D v' ε hε).2
    rw [GlobalTheory.FinPl.mem_supportedOnPlacesIdeal_iff_components_zero_elsewhere] at ha ⊢
    refine ⟨ha.1, fun w hw => ha.2 w ?_⟩
    intro h
    apply hw
    intro hwv'
    exact hv PP hPP (hv'.symm.trans (hwv'.symm.trans h))
  have hz : ∀ i, ((Formalism.L2.Theta.mt _ (b 0) - 1) *ᵥ y) i ∈ idAt D (· = v) := fun i => by
    simp only [Matrix.mulVec, dotProduct]
    exact Ideal.sum_mem _ fun j _ => Ideal.mul_mem_left _ _ (hy j)
  have hE : ∀ i, ((Formalism.L2.Theta.mt _ (b 0) - 1) *ᵥ y) i =
      ((∑ PP ∈ locPl G t, es PP) + cA D (∑ PP ∈ locPl G t, es PP)) * ((Formalism.L2.Theta.mt _ (b 0) - 1) *ᵥ y) i := by
    intro i
    simp only [Matrix.mulVec, dotProduct, Finset.mul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [← mul_assoc, hsupp i j]
  have h0 : (Formalism.L2.Theta.mt _ (b 0) - 1) *ᵥ y = 0 := by
    funext i

    rw [hE i, map_sum, ← Finset.sum_add_distrib, Finset.sum_mul]
    exact Finset.sum_eq_zero fun PP hPP => hkill PP hPP _ (hz i)
  rw [Matrix.sub_mulVec, Matrix.one_mulVec, sub_eq_zero] at h0
  exact h0

end GlobalTheory.RowVal
