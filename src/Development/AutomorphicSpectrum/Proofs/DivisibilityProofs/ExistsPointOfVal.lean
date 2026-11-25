module

public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation
import Mathlib.Tactic.Linter.HaveILetI
public import ReciprocityTheory.GaloisValuations.GlobalB
import Development.AbelianVarietyTheory.Definitions.Divisors.AevalEqZeroOfMemConeIdeal
import Development.AbelianVarietyTheory.Definitions.Divisors.FirstChernLeviEqConstant
import Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.SlopeTestRemainingChoices
import Development.AbelianVarietyTheory.Definitions.Foundations.IsProbabilityMeasureMuPart
import Formalism.LocalRingCardinality.DataTheta
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.OnbPerp

@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.BasicNotions.TH Formalism.L2.Theta ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.Mean4 GlobalTheory.Mean4O
open scoped ENNReal Classical

namespace GlobalTheory.CompanionTheory.SmallFin

theorem exists_prime_eq {L : Type} [Field L] [NumberField L] (O : ValuationSubring L)
    (x₀ : 𝓞 L) (h0 : x₀ ≠ 0) (hn : (x₀ : L) ∈ O.nonunits) :
    ∃ w : HeightOneSpectrum (𝓞 L), w.valuationSubringAtPrime L = O := by
  have hint : ∀ x : 𝓞 L, (x : L) ∈ O := fun x => ReciprocityTheory.Gal.mem_of_isIntegral_int O x.isIntegral_coe
  let b : 𝓞 L →+* O := (algebraMap (𝓞 L) L).codRestrict O hint
  have hb : ∀ x, ((b x : O) : L) = (x : L) := fun _ => rfl
  have hpm : x₀ ∈ (IsLocalRing.maximalIdeal O).comap b := by
    rw [Ideal.mem_comap]
    obtain ⟨h, hh⟩ := ValuationSubring.mem_nonunits_iff_exists_mem_maximalIdeal.1 hn
    exact hh
  let v : HeightOneSpectrum (𝓞 L) := ⟨(IsLocalRing.maximalIdeal O).comap b, inferInstance, fun h => by
    rw [h, Ideal.mem_bot] at hpm
    exact h0 hpm⟩
  refine ⟨v, ?_⟩
  haveI : IsLocalization v.asIdeal.primeCompl (v.valuationSubringAtPrime L) :=
    Localization.subalgebra.isLocalization_ofField L v.asIdeal.primeCompl v.asIdeal.primeCompl_le_nonZeroDivisors
  haveI : IsDiscreteValuationRing (v.valuationSubringAtPrime L) :=
    IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain (𝓞 L) v.ne_bot _
  refine ValuationSubring.eq_of_le_of_ne_top _ ?_ ?_
  · intro x hx
    obtain ⟨⟨a, s⟩, h⟩ := IsLocalization.surj v.asIdeal.primeCompl (⟨x, hx⟩ : v.valuationSubringAtPrime L)
    have hs : IsUnit (b s) := by
      by_contra h'
      exact s.2 h'
    obtain ⟨u, hu⟩ := hs.exists_right_inv
    have h1 : x * ((s : 𝓞 L) : L) = (a : L) := congrArg Subtype.val h
    have h2 : ((s : 𝓞 L) : L) * (u : L) = 1 := by
      rw [← hb]
      exact congrArg Subtype.val hu
    have : x = ((b a * u : O) : L) := by
      push_cast
      rw [hb, ← h1, mul_assoc, h2, mul_one]
    rw [this]
    exact (b a * u).2
  · intro h
    have hx0 : (x₀ : L) ≠ 0 := by exact_mod_cast h0
    have := ((ValuationSubring.mem_nonunits_iff_or O).1 hn).resolve_left hx0
    exact this (h ▸ ValuationSubring.mem_top _)


end GlobalTheory.CompanionTheory.SmallFin
