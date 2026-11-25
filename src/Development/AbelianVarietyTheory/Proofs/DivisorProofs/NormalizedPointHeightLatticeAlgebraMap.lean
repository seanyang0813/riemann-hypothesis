module

public import Development.AbelianVarietyTheory.Definitions.Divisors.PointHeight
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsHeightIffOfDegreeEq
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
public import Mathlib.NumberTheory.RamificationInertia.Inertia
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
public import Mathlib.RingTheory.RamificationInertia.Basic
import Mathlib.Tactic.Basify
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

noncomputable section

namespace GlobalTheory.Adelic.HeightExt

open NumberField IsDedekindDomain GlobalTheory.ChowHt GlobalTheory.Adelic

section Places

variable {K L : Type} [Field K] [NumberField K] [Field L] [NumberField L] [Algebra K L]

def locDeg (K : Type) [Field K] [NumberField K] [Algebra K L] (w : HeightOneSpectrum (𝓞 L)) : ℕ :=
  w.asIdeal.ramificationIdx (𝓞 K) * w.asIdeal.inertiaDeg (𝓞 K)

theorem finite_fiber (v : HeightOneSpectrum (𝓞 K)) :
    {w : HeightOneSpectrum (𝓞 L) | w.under (𝓞 K) = v}.Finite := by
  have h : (v.asIdeal.primesOver (𝓞 L)).Finite := Set.toFinite _
  refine (h.preimage (f := fun w : HeightOneSpectrum (𝓞 L) => w.asIdeal)
    (fun a _ b _ hab => HeightOneSpectrum.ext hab)).subset fun w hw => ?_
  exact ⟨w.isPrime, ⟨(congrArg HeightOneSpectrum.asIdeal hw).symm⟩⟩

theorem sum_locDeg (v : HeightOneSpectrum (𝓞 K)) :
    ∑ w ∈ (finite_fiber (L := L) v).toFinset, locDeg K w = Module.finrank K L := by
  classical
  have hsumN : ∑ q : v.asIdeal.primesOver (𝓞 L), q.1.ramificationIdx (𝓞 K) * q.1.inertiaDeg (𝓞 K) =
      Module.finrank K L := by
    rw [Ideal.sum_ramification_inertia_eq_finrank, IsFractionRing.finrank_eq (𝓞 K) K (𝓞 L) L]
  rw [← hsumN]
  refine Finset.sum_bij (fun w hw => ⟨w.asIdeal, w.isPrime,
    ⟨(congrArg HeightOneSpectrum.asIdeal (((finite_fiber (L := L) v).mem_toFinset).1 hw)).symm⟩⟩) (fun _ _ => Finset.mem_univ _)
    (fun a _ b _ h => HeightOneSpectrum.ext (congrArg Subtype.val h)) (fun q _ => ?_) fun _ _ => rfl
  refine ⟨⟨q.1, q.2.1, fun h0 => v.ne_bot ?_⟩, (Set.Finite.mem_toFinset _).2 (HeightOneSpectrum.ext q.2.2.over.symm),
    rfl⟩
  have h1 : v.asIdeal = q.1.comap (algebraMap (𝓞 K) (𝓞 L)) := q.2.2.over
  rw [h1, h0]
  exact Ideal.comap_bot_of_injective _ (FaithfulSMul.algebraMap_injective _ _)

end Places

theorem finite_support_log_iSup {K ι : Type} [Field K] [NumberField K] [Finite ι] {z : ι → K} (hz : z ≠ 0) :
    (Function.support fun v : FinitePlace K => Real.log (⨆ k, v (z k))).Finite := by
  obtain ⟨k₀, hk₀⟩ := Function.ne_iff.1 hz
  have : Nonempty ι := ⟨k₀⟩
  refine (Set.finite_iUnion fun k : {k // z k ≠ 0} => FinitePlace.hasFiniteMulSupport k.2).subset fun v hv => ?_
  by_contra h
  simp only [Set.mem_iUnion, Function.mem_mulSupport, not_exists, not_not] at h
  refine hv ?_
  have : ⨆ k, v (z k) = 1 := le_antisymm (ciSup_le fun k => by
      rcases eq_or_ne (z k) 0 with h0 | h0
      · rw [h0, map_zero]; exact zero_le_one
      · exact (h ⟨k, h0⟩).le)
    ((h ⟨k₀, hk₀⟩).ge.trans (le_ciSup (f := fun k => v (z k)) (Set.finite_range _).bddAbove k₀))
  simp only [this, Real.log_one]

end GlobalTheory.Adelic.HeightExt
