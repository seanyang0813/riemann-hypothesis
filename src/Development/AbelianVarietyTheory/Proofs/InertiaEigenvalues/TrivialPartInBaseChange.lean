module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenLocOfCenReal
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.WeightRegularOfExt
import Formalism.LocalToGlobal.GlobalTheory.GL3.PLinkThU
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up

noncomputable section

namespace GlobalTheory.MuBlockLoc

theorem placesOver_finite (D : D7) (k : Fin 2) : (placesOver D.host.E (D.host.g k)).Finite := by
  have hne : Ideal.span {((D.host.g k : ℕ) : 𝓞 D.host.E)} ≠ ⊥ := by
    rw [Ne, Ideal.span_singleton_eq_bot]
    exact_mod_cast (D.host.g_prime k).ne_zero
  refine (Ideal.finite_factors hne).subset fun v hv => ?_
  exact Ideal.dvd_span_singleton.mpr hv

theorem mem_isoInf (D : D7) (Pa : List (Part D.naut.CG)) (p : Part D.naut.CG) (hp : p ∈ Pa) (hd : 1 ≤ p.d)
    (τ : D.host.E →+* ℂ) :
    (D.naut.infG p.π τ).map (· + (((p.d : ℂ) - 1) / 2 - (0 : ℂ))) ≤ isoInf D.nd D.naut Pa τ := by
  unfold isoInf
  refine le_trans ?_ (List.single_le_sum (by intro x _; exact Multiset.zero_le x) _ (List.mem_map.2 ⟨p, hp, rfl⟩))
  refine List.single_le_sum (by intro x _; exact Multiset.zero_le x) _ (List.mem_map.2 ⟨(0 : ℂ), ?_, rfl⟩)
  simp
  exact ⟨0, hd, by simp⟩

theorem mu_ralg (D : D7) (Rw : RowSide D) (j : ℕ) (σ : D.what₂.FT) (π : D.nbc.AU j) (μ : D.naut.CG 1)
    (hA : LiftAt D Rw j σ π μ) : D.naut.ralg μ := by
  obtain ⟨a, ha⟩ := GlobalTheory.LocalInv.r_odd D.R
  have hnV : (D.R.nV : ℂ) = 2 * (a : ℂ) + 1 + D.R.t := by
    show ((D.R.r + D.R.t : ℕ) : ℂ) = _
    rw [ha]; push_cast; ring
  have ht1 : 1 ≤ D.R.t := D.R.t_odd.pos
  have hq : ∀ (τ : D.host.E →+* ℂ) (s : ℂ), D.naut.infG D.naut.etaTinv τ = {s} →
      (∀ x ∈ isoInf D.nd D.naut [⟨1, D.naut.tw μ D.naut.etaTinv, D.R.t⟩] τ, ∃ k : ℤ, x = (k : ℂ) + ((D.R.nV : ℂ) - 1) / 2) →
      ∀ z ∈ D.naut.infG μ τ, ∃ k : ℤ, z + s + ((D.R.t : ℂ) - 1) / 2 = (k : ℂ) + ((D.R.nV : ℂ) - 1) / 2 := by
    intro τ s hs hx z hz
    have hle := mem_isoInf D [⟨1, D.naut.tw μ D.naut.etaTinv, D.R.t⟩] ⟨1, D.naut.tw μ D.naut.etaTinv, D.R.t⟩
      (List.mem_singleton_self _) ht1 τ
    dsimp only at hle
    rw [D.naut.infG_tw _ _ τ s hs, Multiset.map_map] at hle
    obtain ⟨k, hk⟩ := hx _ (Multiset.mem_of_le hle (Multiset.mem_map_of_mem _ hz))
    exact ⟨k, by rw [← hk]; simp⟩
  refine (D.naut.ralg_def _).2 fun φ => ?_
  obtain ⟨z0, hz0⟩ := Multiset.card_eq_one.mp (D.naut.infG_card μ φ)
  refine ⟨by rw [hz0]; exact Multiset.nodup_singleton z0, fun z hz => ?_⟩
  obtain ⟨τ, hτ | hτ⟩ := Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.FL.emb_cases D φ
  · have e : φ = GlobalTheory.IndefiniteRowSideFullHecke.CMTypeEmbeddings.embTau D τ := hτ
    subst e
    have hx : ∀ x ∈ isoInf D.nd D.naut [⟨1, D.naut.tw μ D.naut.etaTinv, D.R.t⟩] (GlobalTheory.IndefiniteRowSideFullHecke.CMTypeEmbeddings.embTau D τ),
        ∃ k : ℤ, x = (k : ℂ) + ((D.R.nV : ℂ) - 1) / 2 := fun x hx =>
      (D.nbc.infW_alg j (D.nbc.wtAU j π) _).2 x (by rw [(hA.inf τ).1]; exact Multiset.mem_add.2 (Or.inr hx))
    obtain ⟨k, hk⟩ := hq _ _ (hA.eta τ).1 hx z hz
    refine ⟨k + a + 1, ?_⟩
    rw [hnV] at hk
    push_cast
    linear_combination hk
  · have e : φ = GlobalTheory.IndefiniteRowSideFullHecke.CMTypeEmbeddings.embTauBar D τ := hτ
    subst e
    have hx : ∀ x ∈ isoInf D.nd D.naut [⟨1, D.naut.tw μ D.naut.etaTinv, D.R.t⟩] (GlobalTheory.IndefiniteRowSideFullHecke.CMTypeEmbeddings.embTauBar D τ),
        ∃ k : ℤ, x = (k : ℂ) + ((D.R.nV : ℂ) - 1) / 2 := fun x hx =>
      (D.nbc.infW_alg j (D.nbc.wtAU j π) _).2 x (by rw [(hA.inf τ).2]; exact Multiset.mem_add.2 (Or.inr hx))
    obtain ⟨k, hk⟩ := hq _ _ (hA.eta τ).2 hx z hz
    refine ⟨k + a, ?_⟩
    rw [hnV] at hk
    push_cast
    linear_combination hk

end GlobalTheory.MuBlockLoc

namespace GlobalTheory.MuBlockLoc

end GlobalTheory.MuBlockLoc
